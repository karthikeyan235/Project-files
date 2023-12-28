from django.shortcuts import render, redirect
from django.http import HttpResponse,JsonResponse
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt
from django.db import connection
import logging
import json
from datetime import datetime
from django.contrib import messages
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from .models import GateConfigMaster,RawData
from .forms import GateConfigForm
from apps.admin_apps.registration_app.mixins import AdminRequiredMixin
from django.views import View
from .thread import *
import time as t


# Create your views here.
@csrf_exempt
def collect_data(request):
    if request.method == 'POST':
        try:
            data            = json.loads(request.body.decode('utf-8'))
            ReaderId        = int(data['DeviceInfo']['ReaderId'])
            ReaderName      = str(data['DeviceInfo']['ReaderName'])
            Version         = float(data['DeviceInfo']['Version'])
            Time            = str(data['DeviceInfo']['Time'])
            SignalStrength  = int(data['ModemInfo']['SignalStrength'])
            Imei            = int(data['ModemInfo']['Imei'])
            Simno           = int(data['ModemInfo']['Simno'])
            Ipaddress       = str(data['WifiInfo']["Ipaddress"])
            SubnetMask      = str(data['WifiInfo']['SubnetMask'])
            DefaultGateway  = str(data['WifiInfo']['DefaultGateway'])
            Ssid            = str(data['WifiInfo']['Ssid'])
            Password        = str(data['WifiInfo']['Password'])
            Latitude        = float(data['Data']['Latitude'])
            Logitude        = float(data['Data']['Logitude'])
            Tagcount        = int(data['Data']['Tagcount'])
            TagData         = str(data['Data']['TagData'])

            td = TagData.split(",")
            tagid = [i for i in td[0::2]]
            time = [i for i in td[1::2]]                    
            args = [Time,Version,SignalStrength,Tagcount,ReaderId,Imei,ReaderName,Simno,Ipaddress,Ssid,SubnetMask,DefaultGateway,Password,Latitude,Logitude,TagData]
            
            with connection.cursor() as cursor:
                cursor.callproc('sproc_tblrawdataupdate',args)
                res = cursor.fetchall()[0]

            date_object = datetime.strptime(Time, "%Y-%m-%d %H:%M:%S")
            year_2023 = datetime(2023, 1, 1)  # January 1st, 2023, 00:00:00
            if not (date_object < year_2023):
                with connection.cursor() as cursor:
                    for i in range(Tagcount):
                        value = time[i]
                        time_string = str(value).zfill(6)
                        time_obj = datetime.strptime(time_string, "%H%M%S")
                        formatted_time = time_obj.strftime("%H:%M:%S")
                        cursor.callproc('sproc_attendanceupdate', (tagid[i], formatted_time, ReaderId))
                        
            NotificationThread(tagid).start()
            msg = "\r\n+TIMESTAMP:"+datetime.now().strftime("%Y-%m-%d %H:%M:%S")+"\r\n"
            
            return HttpResponse(msg, content_type='text/plain', status = 200)
        except Exception as e:
            logging.exception('Error During json update from Gate reader')
            return JsonResponse({'error': str(e)},status = 400)


class MapView(AdminRequiredMixin, View):
      def get(self, request):
          return render(self.request, 'admin_apps/map.html')


class GateConfigListView(AdminRequiredMixin, ListView):
    model = GateConfigMaster
    template_name = 'gate_config/gateconfig_list.html'
    context_object_name = 'gateconfigs'

class GateConfigCreateView(AdminRequiredMixin,CreateView):
    model = GateConfigMaster
    form_class = GateConfigForm
    template_name = 'gate_config/gateconfig_form.html'
    success_url = reverse_lazy('gateconfig-list')

class GateConfigUpdateView(AdminRequiredMixin, UpdateView):
    model = GateConfigMaster
    form_class = GateConfigForm
    template_name = 'gate_config/gateconfig_form.html'
    context_object_name = 'gateconfig'
    success_url = reverse_lazy('gateconfig-list')

class GateConfigDeleteView(AdminRequiredMixin, DeleteView):
    model = GateConfigMaster
    template_name = 'gate_config/gateconfig_confirm_delete.html'
    context_object_name = 'gateconfig'
    success_url = reverse_lazy('gateconfig-list')

    def delete(self, request, *args, **kwargs):
        gatereadr_id = self.get_object().gatereaderid
        reader = RawData.objects.filter(gatereaderid = gatereadr_id)
        if reader:
            reader.delete()
        response = super().delete(request, *args, **kwargs)
        messages.success(request, 'Reader details has been deleted successfully.')        
        return response

class GateConfigDetailView(AdminRequiredMixin, DetailView):
    model = GateConfigMaster
    template_name = 'gate_config/gateconfig_detail.html'
    context_object_name = 'gateconfig'

class GateConfigMapDetailView(AdminRequiredMixin, View):
    template_name = 'gate_config/gateconfig_detail.html'
    
    def get(self,request,*args,**kwargs):
        r_id = kwargs['r_id']
        res = GateConfigMaster.objects.get(gatereaderid = r_id)
        return render(request,self.template_name,{'gateconfig':res})


class SiteDataView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)

    def get(self, request):
        try:
            cursor = connection.cursor()
            cursor.callproc('sproc_sitedata')
            res = cursor.fetchall()
            cursor.close()
            lst = ["sitename", "siteid", "lat", "lng", "enable"]
            res_lst = []

            for i in res:
                res_dct = {lst[k]: i[k] for k in range(0, len(lst))}
                res_lst.append(res_dct)
            return JsonResponse(res_lst, safe=False)

        except Exception as e:
            logging.exception('Error During site data fetching')
            return JsonResponse({'error': str(e)}, status=400)