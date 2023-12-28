from django.shortcuts import render,redirect
from django.views import View
from .mixins import StaffRequiredMixin
from .forms import MonthForm
from apps.admin_apps.registration_app.models import *
from django.contrib import messages
from datetime import datetime
from django.db import connection
import calendar

# Create your views here.
class StaffHomepageView(StaffRequiredMixin, View):
    template_name = 'staff_app/homepage.html'

    def get(self,request):
    	staff_id = request.user.profile.id_number
    	staff_name = OthersDetails.objects.get(staff_id=staff_id).name
    	return render(request,self.template_name,{'name': staff_name})


class StaffMonthAttendanceView(StaffRequiredMixin, View):
    template_name = "staff_app/month_attendance.html"

    def get(self, request, *args, **kwargs):
        form = MonthForm()
        staff_id = request.user.profile.id_number
        staff_name = OthersDetails.objects.get(staff_id=staff_id).name
        return render(request, self.template_name, {'form': form,'name': staff_name})

    def post(self, request, *args, **kwargs):
        try:
            form = MonthForm()
            data = request.POST
            month1 = data['month']
            month = int(month1.split('-')[1])  # Extract the month value
            year = int(month1.split('-')[0])  # Get the selected year from the form
            current_month = datetime.now().month
            staff_id = request.user.profile.id_number

            if month == current_month:
                num_days = datetime.now().day
            else:
                num_days = calendar.monthrange(year, month)[1]
            cursor = connection.cursor()
            cursor.callproc('sproc_monthreport', (month, year, staff_id,2))
            results = cursor.fetchall()
            cursor.close()
            if results[0][0] == 'TABLE NOT EXIST':
                messages.success(request, 'No records found.')
                return redirect('Staff-month-attendance')

            res = []
            res1 = results[0][0].split(",")

            for i in range(0, len(res1) - 1, num_days):
                res.append(res1[i:i + (num_days)])

            staff_id = request.user.profile.id_number
            staff_name = OthersDetails.objects.get(staff_id=staff_id).name
            return render(request, self.template_name, {"result": res[0], "month": month, "year": year, 'form': form,'name': staff_name})
        except Exception as e:
        	messages.success(request, 'Something went wrong, please try again later.')
        	return redirect('Staff-month-attendance')
