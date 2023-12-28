from django.shortcuts import render,redirect
from django.views import View
from .mixins import ParentRequiredMixin
from .forms import *
from django.contrib import messages
from django.db import connection
import calendar
from apps.admin_apps.registration_app.models import *
from django.http import JsonResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
import json

# Create your views here.

class ParentHomepageView(ParentRequiredMixin, View):
    template_name = 'parent_app/homepage.html'
    template_name1 = 'parent_app/student_select.html'

    def get(self, request, *args, **kwargs):
        id_no = request.user.profile.id_number
        ids = id_no.split(',')
        if len(ids) == 1:
            student_name = StudentDetails.objects.get(student_id=id_no).name
            response = render(request, self.template_name, {'name': student_name})
            response.set_cookie('my_cookie', id_no)
            return response
        else:
            res = []
            for i in ids:
                j = StudentDetails.objects.get(student_id=i).name
                res.append((i, j))
            return render(request, self.template_name1, {'res': res})


class SelectStudentView(ParentRequiredMixin, View):
    template_name = 'parent_app/homepage.html'

    def get(self, request, *args, **kwargs):
        student_name = StudentDetails.objects.get(student_id=kwargs['student_id']).name
        response = render(request, self.template_name, {'name': student_name})
        response.set_cookie('my_cookie', kwargs['student_id'])
        return response

		

class StudentMonthAttendanceView(ParentRequiredMixin, View):
    template_name = "parent_app/month_attendance.html"

    def get(self, request, *args, **kwargs):
        form = MonthForm()
        student_id = request.COOKIES.get('my_cookie')
        student_name = StudentDetails.objects.get(student_id=student_id).name
        return render(request, self.template_name, {'form': form,'name': student_name})

    def post(self, request, *args, **kwargs):
        try:
            form = MonthForm()
            data = request.POST
            month1 = data['month']
            month = int(month1.split('-')[1])  # Extract the month value
            year = int(month1.split('-')[0])  # Get the selected year from the form
            current_month = datetime.now().month
            student_id = request.COOKIES.get('my_cookie')

            if month == current_month:
                num_days = datetime.now().day
            else:
                num_days = calendar.monthrange(year, month)[1]
            cursor = connection.cursor()
            cursor.callproc('sproc_monthreport', (month, year, student_id,0))
            results = cursor.fetchall()
            cursor.close()
            if results[0][0] == 'TABLE NOT EXIST':
                messages.success(request, 'No records found.')
                return redirect('Student-month-attendance')

            res = []
            res1 = results[0][0].split(",")

            for i in range(0, len(res1) - 1, num_days):
                res.append(res1[i:i + (num_days)])

            student_name = StudentDetails.objects.get(student_id=student_id).name
            return render(request, self.template_name, {"result": res[0], "month": month, "year": year, 'form': form,'name': student_name})
        except Exception as e:
        	messages.success(request, 'Something went wrong, please try again later.')
        	return redirect('Student-month-attendance')




@method_decorator(csrf_exempt, name='dispatch')
class ApiStudentMonthAttendanceView(View):
    def post(self, request, *args, **kwargs):
        try:
            data = json.loads(request.body.decode('utf-8'))
            month = int(data['selected_month'])
            year = int(data['selected_year'])
            student_id = str(data['additional_text'])
            current_month = datetime.now().month

            if month == current_month:
                num_days = datetime.now().day
            else:
                num_days = calendar.monthrange(year, month)[1]
            dates = [datetime(year, month, day) for day in range(1, num_days + 1)]
            date_strings = [date.strftime('%Y-%m-%d') for date in dates]
            cursor = connection.cursor()
            cursor.callproc('sproc_monthreport', (month, year, student_id,0))
            results = cursor.fetchall()
            cursor.close()
            if results[0][0] == 'TABLE NOT EXIST':
                return JsonResponse({'result': 'Your Tag id is not detected'})

            res = []
            res1 = results[0][0].split(",")

            for i in range(0, len(res1) - 1, num_days):
                res.append(res1[i:i + (num_days)])
            result = []
            for i in range(len(res[0])):
                result.append(date_strings[i])
                if len(res[0][i]) > 3:
                     result.append('P')
                else:
                    result.append(res[0][i])
            return JsonResponse({'message': result})

        except Exception as e:
            return JsonResponse({'message': 'unsuccessfull'},status = 400)


@method_decorator(csrf_exempt, name='dispatch')
class ApiStudentTodayAttendanceView(View):
    def get(self,request):
        return JsonResponse({'message': 'get_result'})

    def post(self, request, *args, **kwargs):
        try:
            data = json.loads(request.body.decode('utf-8'))
            student_id = str(data['student_id'])
            cursor = connection.cursor()
            cursor.callproc('sproc_todayattendance', (student_id,))
            results = cursor.fetchall()
            cursor.close()
            return JsonResponse({'result': results[0]})
        except Exception as e:
            return JsonResponse({'message': 'unsuccessfull'},status = 400)


@method_decorator(csrf_exempt, name='dispatch')
class ApiStudentProfileView(View):
    def post(self, request, *args, **kwargs):
        try:
            data = json.loads(request.body.decode('utf-8'))
            student_id = str(data['student_id'])
            res = StudentDetails.objects.filter(student_id=student_id).values()  

            if res:
                student = StudentDetails.objects.get(student_id=student_id)
                image_url = request.build_absolute_uri(student.profile_image.url)
                student_dict = {'tagid':student.tag_id,'email':student.email,'class':student.class_name,'section':student.section,'mobile_number':student.mobno}
                student_values_list = [list(item.values()) for item in res]
                student_values_list[0][-1] = image_url
                return JsonResponse(student_dict)
            else:
                return JsonResponse({'result': 'not found'})
        except Exception as e:
            return JsonResponse({'message': 'unsuccessful'}, status=400)