from django.shortcuts import render, redirect
from .mixins import TeacherRequiredMixin
from django.views import View
from django.views.generic import ListView, CreateView, DetailView, UpdateView, DeleteView, FormView
from django.contrib import messages
from django.db import connection
from apps.admin_apps.registration_app.models import *
from .forms import *
from datetime import datetime
import calendar
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

class TeacherHomepageView(TeacherRequiredMixin, View):
    template_name = "teacher_app/teacher_homepage.html"
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name )



class StudentAttendanceMarkView(TeacherRequiredMixin, View):
    template_name = "teacher_app/student_attendance.html"
    template_name1 = "teacher_app/student_attendance_mark.html"
    def get(self, request, *args, **kwargs):
        form = PeriodAttendanceForm()
        return render(request, self.template_name,{'form':form})

    def post(self, request, *args, **kwargs):
        form = PeriodAttendanceForm(request.POST)
        if form.is_valid():
            teacher_id = request.user.profile.id_number
            class_name = form.cleaned_data['class_name']
            section = form.cleaned_data['section']
            period = form.cleaned_data['period_list']
            today = datetime.now()
            day_name = today.strftime("%A")

            if not ClassSection.objects.filter(class_number = class_name, section = section).exists():
                form.add_error('section', 'Section does not exist for the selected class')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name).exists():
                form.add_error('class_name', 'you are not allocated for selected class')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name, section = section).exists():
                form.add_error('section', 'you are not allocated for selected section')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name, section = section,period_name=period).exists():
                form.add_error('period_list', 'you are not allocated for selected period')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,day_of_week = day_name,class_name = class_name, section = section,period_name=period).exists():
                form.add_error('class_name', 'you are not allocated for today or selected period')
                return render(request, self.template_name, {'form': form})

            with connection.cursor() as cursor:
                cursor.callproc('sproc_checkattendance',(class_name,section,period,datetime.now().strftime("%Y-%m-%d")))
                result = cursor.fetchone()[0]
                if (result != None and result !=0):
                    messages.success(self.request,'Attendance already taken.')
                    return redirect('Student-attendance-mark')

            cursor = connection.cursor()
            cursor.callproc('sproc_period_attendance_list',(class_name,section,datetime.now().strftime('%Y-%m-%d')))
            res = cursor.fetchall()
            cursor.close()

            if len(res[0][0]):
                res1 = res[0][0].split(',')
                result = []
                for i in range(0,len(res1)-1,4):
                    result.append(tuple(res1[i:i+4]))
                return render(request, self.template_name1,{'res':sorted(result),'cls':class_name,'sec':section,'prd':period})
            else:
                messages.success(self.request,'No records found')
                return redirect('Student-attendance-mark')



class StudentAttendancConfirmView(TeacherRequiredMixin, View):
    def post(self, request, *args, **kwargs):
        data = dict(request.POST)
        try:
            class_name = request.POST.get('cls')
            section    = request.POST.get('sec')
            period     = request.POST.get('prd')
            ids        = data['attendance']
            id_list = ''
            for i in ids:
                id_list += i + ','
            cursor = connection.cursor() 
            cursor.callproc('sproc_period_attendance_mark',(class_name,section,period,id_list))
            cursor.close()
        except Exception as e:
            messages.success(self.request,'Can not absent all students.')
            return redirect('Student-attendance-mark')

        messages.success(self.request,'Attendance submitted')
        return redirect('Student-attendance-mark')



class StudentPeriodAttendanceEditView(TeacherRequiredMixin, View):
    template_name = "teacher_app/student_period_attendance_edit.html"
    template_name1 = "teacher_app/student_period_attendance_edit_mark.html"

    def get(self, request, *args, **kwargs):
        form = PeriodAttendanceEditForm()
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        teacher_id = request.user.profile.id_number
        form = PeriodAttendanceEditForm(request.POST)
        if form.is_valid():
            date = form.cleaned_data['date']
            class_name = form.cleaned_data['class_name']
            section = form.cleaned_data['section']
            period = form.cleaned_data['period_list']
            day_name = date.strftime("%A")
            
            if not ClassSection.objects.filter(class_number = class_name, section = section).exists():
                form.add_error('section', 'Section does not exist for the selected class')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name).exists():
                form.add_error('class_name', 'you are not allocated for selected class')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name, section = section).exists():
                form.add_error('section', 'you are not allocated for selected section')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,class_name = class_name, section = section,period_name=period).exists():
                form.add_error('period_list', 'you are not allocated for selected period')
                return render(request, self.template_name, {'form': form})
            elif not Timetable.objects.filter(teacher_id = teacher_id,day_of_week = day_name,class_name = class_name, section = section,period_name=period).exists():
                form.add_error('date', 'you are not allocated for selected date or selected period')
                return render(request, self.template_name, {'form': form})

            with connection.cursor() as cursor:
                cursor.callproc('sproc_checkattendance',(class_name,section,period,date))
                result = cursor.fetchone()[0]
                if not (result != None and result !=0):
                    if date == datetime.now().date():
                        messages.success(self.request,'Attendance not taken.')
                        return render(request, self.template_name, {'form': form})

            cursor = connection.cursor() 
            cursor.callproc('sproc_period_attendance_view',(class_name,section,period,date,0))
            res = cursor.fetchall()
            cursor.close()

            if len(res):
                res1 = res[0][0].split(',')
                result = []
                for i in range(0,len(res1)-1,4):
                    result.append(tuple(res1[i:i+4]))   
                     
                period1 = PeriodTable.objects.get(period_id=period)  
                context =  {'form': form,'res':result,'cls':class_name,'sec':section,'date': date.strftime('%Y-%m-%d'),'prd':period,'period':period1.period_name}
                return render(request, self.template_name1, context)
            else:
                messages.success(self.request,'No records found')
                return render(request, self.template_name, {'form': form})
                
        return render(request, self.template_name, {'form': form})



class StudentPeriodAttendanceEditConfirmView(TeacherRequiredMixin, View):
    template_name = "teacher_app/student_period_attendance_edit.html"
    def post(self, request, *args, **kwargs):
        data = dict(request.POST)
        try:
            class_name = request.POST.get('cls')
            section    = request.POST.get('sec')
            period     = request.POST.get('prd')
            date     = request.POST.get('dt')
            ids        = data['attendance']

            id_list = ''
            for i in ids:
                id_list += i + ','

            cursor = connection.cursor() 
            cursor.callproc('sproc_period_attendance_edit_mark',(class_name,section,period,id_list,date))
            cursor.close()
        except Exception as e:
            messages.success(self.request,'Can not absent all students.')
            return redirect('Period-attendance-edit')
                
        messages.success(self.request,'Attendance changes submitted')
        return redirect('Period-attendance-edit')



class TeacherMonthAttendanceView(TeacherRequiredMixin,View):
    template_name = "teacher_app/month_attendance.html"
    def get(self, request, *args, **kwargs):
        form = MonthForm()
        return render(request,self.template_name,{'form':form})

    def post(self, request, *args, **kwargs):
        try:
            form = MonthForm()
            data = request.POST
            month1 = data['month_date']
            month = int(month1.split('-')[1])  # Extract the month value
            year = int(month1.split('-')[0])  # Get the selected year from the form
            current_month = datetime.now().month

            if month == current_month:
                num_days = datetime.now().day
            else:
                num_days = calendar.monthrange(year, month)[1]
            cursor = connection.cursor()
            cursor.callproc('sproc_monthreport', (month, year, request.user.profile.id_number,1,))
            results = cursor.fetchall()
            cursor.close()
            if results[0][0] == 'TABLE NOT EXIST':
                messages.success(request,'No records found.')
                return redirect('Teacher-month-attendance')

            res =[]
            res1 = results[0][0].split(",")

            for i in range(0,len(res1)-1,num_days):
                res.append(res1[i:i+(num_days)])
            return render(request, self.template_name, {"result": res[0],"month":month,"year":year,'form':form})
        except:
            messages.success(request,'Somthing went wrong please try after some time.')
            return redirect('Teacher-month-attendance')



class TeacherTimetableView(TeacherRequiredMixin,View):
    template_name = 'teacher_app/timetable.html'
    def get(self,request,*args,**kwargs):
        teacher_id = request.user.profile.id_number
        results = Timetable.objects.filter(teacher_id=teacher_id)
        res = [(i.day_of_week,i.class_name,i.section,PeriodTable.objects.get(period_id=i.period_name).period_name,i.start_time,i.end_time) for i in results]
        return render(request,self.template_name,{'res':res})



@method_decorator(csrf_exempt, name='dispatch')
class ApiTeacherProfileView(TeacherRequiredMixin,View):
    def post(self,request,*args,**kwargs):
        try:
            data = json.loads(request.body.decode('utf-8'))
            teacher_id = str(data['teacher_id'])
            res = TeacherDetails.objects.filter(teacher_id=teacher_id).values()  

            if res:
                teacher = TeacherDetails.objects.get(teacher_id=teacher_id)
                student_dict = {'tagid':teacher.tag_id,'email':teacher.email,'mobile_number':teacher.mobno,'gender':teacher.gender}
                return JsonResponse(student_dict)
            else:
                return JsonResponse({'result': 'not found'})
        except Exception as e:
            return JsonResponse({'message': 'unsuccessful'}, status=400)