from django.shortcuts import render,redirect
from django.db import connection
from datetime import date, timedelta, datetime
from django.contrib import messages
import logging
import calendar
from .forms import *
# from .utils import date_formatn
from apps.admin_apps.registration_app.mixins import AdminRequiredMixin
from django.views import View
from apps.admin_apps.registration_app.models import ClassSection, Holiday

def student_attendance(request):
    return render(request,'admin_apps/student_attendance/student_attendance.html')


class StudentReportView(AdminRequiredMixin,View):
    template_name = 'admin_apps/student_attendance/student_report.html'
    
    def post(self, request, *args, **kwargs):
        try:
            data = request.POST
            student_id = str(data['student_id'])
            from_date = datetime.strptime(data['from_date'], '%Y-%m-%d').date()
            to_date = datetime.strptime(data['to_date'], '%Y-%m-%d').date()
            if from_date > to_date:
                messages.success(request, "'From Date' should be less than or equal to 'To Date'.")
                return render(request, self.template_name)

            args = [student_id, from_date, to_date,1]
            cursor = connection.cursor()
            cursor.callproc('sproc_attendance_report', args)
            results = cursor.fetchall()
            cursor.close()

            args1 = (student_id, request.POST.get('from_date'), request.POST.get('to_date'))
            if len(results) == 0:
                messages.success(request, "No records found on this date.")
                return render(request, self.template_name, {"res": args1})

            if results[0][0] == "no records found":
                messages.success(request, "No records found. Provide Correct date range.")
                return render(request, self.template_name, {"res": args1})

            if results[0][0] == 'NOT FOUND':
                messages.success(request, "Invalid student Number")
                return render(request, self.template_name, {"res": args1})

            return render(request, self.template_name, {'results': results, "res": args1})

        except Exception as e:
            logging.exception('Error During fetching individual student report')
            messages.success(request, "Something went wrong, please try again later.")
            return render(request, self.template_name)

    def get(self, request, *args, **kwargs):
            return render(request, self.template_name)


class StudentMonthReportView(AdminRequiredMixin,View):
    template_name = 'admin_apps/student_attendance/month_report.html'

    def get(self, request):
        form = MonthForm()
        return render(request, self.template_name, {'form': form})
        

    def post(self, request):
        form = MonthForm(request.POST)
        if form.is_valid():
            try:
                month = int(form.cleaned_data['month'].split('-')[1])
                year = int(form.cleaned_data['month'].split('-')[0])
                class_name = int(form.cleaned_data['class_name'])
                section = form.cleaned_data['section']
                if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
                    form.add_error('section', 'Section does not exist for the selected class')
                    return self.form_invalid(form)
                current_month = datetime.now().month
                if month == current_month:
                    num_days = datetime.now().day
                else:
                    num_days = calendar.monthrange(year, month)[1]
                dates = [datetime(year, month, day) for day in range(1, num_days + 1)]
                date_strings = [date.strftime('%d-%m-%Y') for date in dates]
                cursor = connection.cursor()
                cursor.callproc('sproc_student_monthreport', (month, year, class_name,section))
                results = cursor.fetchall()
                cursor.close()
                res = []
                if not results[0][0]:
                    messages.success(request,'No data found')
                    return render(request, self.template_name, {'form': form})
                res1 = results[0][0].split(",")
                for i in range(0, len(res1) - 1, num_days + 4):
                    res.append(tuple(res1[i:i + (num_days + 4)]))

                holi_days = [f'{i.holiday_code} - {i.holiday_name}' for i in Holiday.objects.filter()]
                return render(request, self.template_name, {'dates': date_strings, "results": res, 'form': form,'holidays':holi_days})
            except Exception as e:
                return render(request, self.template_name, {'form': form})


            # return render(request, self.template_name, {'form': form})

class StudentPeriodAttendanceView(AdminRequiredMixin, View):
    template_name = "admin_apps/student_attendance/student_period_attendance.html"

    def get(self, request, *args, **kwargs):
        form = PeriodAttendanceForm()
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = PeriodAttendanceForm(request.POST)
        if form.is_valid():
            date = form.cleaned_data['date']
            class_name = form.cleaned_data['class_name']
            section = form.cleaned_data['section']
            if not ClassSection.objects.filter(class_number = class_name, section = section).exists():
                form.add_error('section', 'Section does not exist for the selected class')
                return render(request, self.template_name, {'form': form})

            cursor = connection.cursor() 
            cursor.callproc('sproc_period_attendance_view',(int(class_name),section,'p1',date,1))
            res = cursor.fetchall()
            cursor.close()


            if len(res):
                res1 = res[0][0].split(',')
                result = []
                for i in range(0,len(res1)-1,9):
                    result.append(tuple(res1[i:i+9]))   
                    

                if not result:
                    messages.success(self.request,'No records found')
                    return render(request, self.template_name, {'form': form})
                period1 = [i for i in PeriodTable.objects.values_list('period_name', flat=True)]      
                return render(request, self.template_name, {'form': form,'res':result,'period':period1})
            else:
                messages.success(self.request,'No records found')
                return render(request, self.template_name, {'form': form})
        

