from django.shortcuts import render,redirect
# from django.http import HttpResponse,HttpResponseRedirect,JsonResponse
from django.contrib.auth.decorators import login_required
from django.db import connection
from datetime import date, timedelta
from django.contrib import messages
from datetime import datetime
import logging
import json
import calendar
from .forms import MonthForm
# from .utils import date_format

from django.contrib.auth.mixins import LoginRequiredMixin
from apps.admin_apps.registration_app.mixins import AdminRequiredMixin
from django.views import View


def teacher_attendance(request):
    return render(request,'admin_apps/teacher_attendance/teacher_attendance.html')



class TeacherReportView(AdminRequiredMixin,View):
    template_name = 'admin_apps/teacher_attendance/teacher_report.html'

    def post(self, request, *args, **kwargs):
        try:
            data = request.POST
            teacher_id = str(data['teacher_id'])
            from_date = datetime.strptime(data['from_date'], '%Y-%m-%d').date()
            to_date = datetime.strptime(data['to_date'], '%Y-%m-%d').date()
            if from_date > to_date:
                messages.success(request, "'From Date' should be less than or equal to 'To Date'.")
                return render(request, self.template_name)

            args = [teacher_id, from_date, to_date,2]

            cursor = connection.cursor()
            cursor.callproc('sproc_attendance_report', args)
            results = cursor.fetchall()
            cursor.close()

            args1 = (teacher_id, request.POST.get('from_date'), request.POST.get('to_date'))
            if len(results) == 0:
                messages.success(request, "No records found on this dates.")
                return render(request, self.template_name, {"res": args1})

            if results[0][0] == "no records found":
                messages.success(request, "No records found. Provide Correct date range.")
                return render(request, self.template_name, {"res": args1})

            if results[0][0] == 'NOT FOUND':
                messages.success(request, "Invalid teacher id")
                return render(request, self.template_name, {"res": args1})

            return render(request, self.template_name, {'results': results, "res": args1})

        except Exception as e:
            logging.exception('Error During fetching individual teacher report')
            messages.success(request, "Something went wrong, please try again later.")
            return render(request, self.template_name)

    def get(self, request, *args, **kwargs):
            return render(request, self.template_name)


class TeacherMonthReportView(AdminRequiredMixin,View):
    template_name = 'admin_apps/teacher_attendance/month_report.html'

    def get(self, request):
        form = MonthForm()
        return render(request, self.template_name, {'form': form})
        

    def post(self, request):
        form = MonthForm(request.POST)
        if form.is_valid():
            try:
                month = int(form.cleaned_data['month'].split('-')[1])
                year = int(form.cleaned_data['month'].split('-')[0])

                current_month = datetime.now().month
                if month == current_month:
                    num_days = datetime.now().day
                else:
                    num_days = calendar.monthrange(year, month)[1]
                dates = [datetime(year, month, day) for day in range(1, num_days + 1)]
                date_strings = [date.strftime('%d-%m-%Y') for date in dates]

                cursor = connection.cursor()
                cursor.callproc('sproc_teacher_monthreport', (month, year,1))
                results = cursor.fetchall()
                cursor.close()
                res = []
                res1 = results[0][0].split(",")
                for i in range(0, len(res1) - 1, num_days + 3):
                    res.append(tuple(res1[i:i + (num_days + 3)]))
                return render(request, self.template_name, {'dates': date_strings, "results": res, 'form': form})
            except Exception as e:
                return render(request, self.template_name, {'form': form})