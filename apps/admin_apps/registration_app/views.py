from django.urls import reverse_lazy
from django.shortcuts import render,redirect
from django.http import JsonResponse
from django.views.generic import ListView, CreateView, DetailView, UpdateView, DeleteView, FormView
from .models import *
from .forms import *
from .utils import *
from .mixins import AdminRequiredMixin
from django.contrib import messages
from django.views import View
from django.contrib.auth.models import User
from apps.Accounts.models import Profile
from django.db import connection
from django.core.files.base import ContentFile
from io import BytesIO
from PIL import Image  # Requires Pillow package
from django.core.exceptions import ValidationError
from django.core.files.uploadedfile import InMemoryUploadedFile
import os
from django.conf import settings
from apps.admin_apps.app.models import *

def configuration(request):
    return render(request,'admin_apps/configuration.html')

class RegistrationView(AdminRequiredMixin,View):
    template_name = 'admin_apps/registration.html'
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name) 


class AttendnaceHomepageView(AdminRequiredMixin,View):
    template_name = 'admin_apps/attendance.html'
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name) 


class StudentListView(AdminRequiredMixin,ListView):
    model = StudentDetails
    template_name = 'admin_apps/registrations/student_list.html'
    context_object_name = 'students'
    ordering = ['name','class_name','section']


    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['filter_form'] = ClassSectionFilterForm(self.request.GET)
        return context

    def get_queryset(self):
        queryset = super().get_queryset()
        class_name = self.request.GET.get('class_name')
        section = self.request.GET.get('section')
        if not class_name:
            pass
        elif class_name and section:
            queryset = queryset.filter(class_name=class_name, section=section)
        elif class_name or section:
            queryset = queryset.filter(class_name=class_name)
        elif not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            messages.success(self.request,'Select valid section for selected class')
            queryset = None
        return queryset
        

class StudentCreateView(AdminRequiredMixin, CreateView):
    form_class = StudentDetailsForm
    template_name = 'admin_apps/registrations/student_form.html'
    success_url = reverse_lazy('student-list')

    def form_valid(self, form):
        student_id = form.cleaned_data['student_id']
        tag_id = form.cleaned_data['tag_id']
        roll_no = form.cleaned_data['roll_no']
        email = form.cleaned_data['email']
        name = form.cleaned_data['name']
        mob = form.cleaned_data['mobno']
        class_name = form.cleaned_data['class_name']
        section = form.cleaned_data['section']
        route_no = form.cleaned_data['route_no']
        stop_no = form.cleaned_data['stop_no']

        if TeacherDetails.objects.filter(tag_id=tag_id).exists() or StudentDetails.objects.filter(tag_id=tag_id, enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id, enabled=True).exists():
            form.add_error('tag_id', 'Tag ID already exists')
            return render(self.request, self.template_name, {'form': form})

        if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            form.add_error('section', 'Section does not exist for the selected class')
            return render(self.request, self.template_name, {'form': form})
        
        if roll_no:
            if StudentDetails.objects.filter(class_name=class_name, section=section, roll_no=roll_no).exists():
                form.add_error('roll_no', 'Roll Number already exists for selected Class and Section')
                return render(self.request, self.template_name, {'form': form})
        
        if route_no:
            if not Route.objects.using('second_db').filter(route_no=route_no).exists():
                form.add_error('route_no', 'Invalid route number')
                return render(self.request, self.template_name, {'form': form})

            if not RouteStop.objects.using('second_db').filter(route_no=route_no,stop_no=stop_no).exists():
                form.add_error('stop_no', 'Invalid stop number')
                return render(self.request, self.template_name, {'form': form})

        # Handle image upload
        image_file = form.cleaned_data['profile_image']

        if image_file:
            try:

                # Resize and save the image
                image = Image.open(image_file)
                image.thumbnail((300, 300))
                image_data = BytesIO()
                image.save(image_data, format='JPEG')

                # Create an InMemoryUploadedFile from the resized image
                image_name = f"{student_id}_profile.jpg"
                image_file = InMemoryUploadedFile(image_data, None, image_name, 'image/jpeg', image_data.tell(), None)

                # Save the image to the instance's profile_image field
                form.instance.profile_image = image_file
            except Exception as e:
                raise ValidationError(f"Failed to process the uploaded image: {e}")

        # Save the instance and create the user
        instance = form.save()
        create_student_Attendance_table(student_id)
        create_user(student_id, email, name, mob, 1)
        MobileDeviceIds.objects.create(student_id=student_id)
        messages.success(self.request, 'Student details created successfully')
        return super().form_valid(form)


class StudentUpdateView(AdminRequiredMixin, UpdateView):
    model = StudentDetails
    form_class = StudentDetailsForm
    template_name = 'admin_apps/registrations/student_form.html'
    success_url = reverse_lazy('student-list')

    def form_valid(self, form):
        tag_id = form.cleaned_data['tag_id']
        student_id = form.cleaned_data['student_id']
        class_name = form.cleaned_data['class_name']
        section = form.cleaned_data['section']
        roll_no = form.cleaned_data['roll_no']
        image_file = form.cleaned_data['profile_image']

        if tag_id != self.object.tag_id:
            if TeacherDetails.objects.filter(tag_id=tag_id, enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id, enabled=True).exists() or StudentDetails.objects.filter(tag_id=tag_id, enabled=True).exclude(student_id=student_id).exists():
                form.add_error('tag_id', 'Tag ID is already assigned to someone, please check it and update.')
                return render(self.request, self.template_name, {'form': form,})

        if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            form.add_error('section', 'Section does not exist for the selected class')
            return render(self.request, self.template_name, {'form': form})

        
        if StudentDetails.objects.filter(class_name=class_name, section=section, roll_no=roll_no).exclude(student_id=student_id).exists():
            form.add_error('roll_no', 'Roll Number already exists for the selected Class and Section')
            return render(self.request, self.template_name, {'form': form})

        # Handle image update
        student_id = self.get_object().student_id
        if not image_file == 'student_images/'+student_id+'_profile.jpg':
            try:
                # Delete the old image if it exists
                old_image = self.get_object().profile_image
                if old_image.name !='student_images/default_image.jpg':
                    if old_image:
                        if os.path.exists(old_image.path):
                            os.remove(old_image.path)

                # Resize and save the new image
                image = Image.open(image_file)
                image.thumbnail((300, 300))
                image_data = BytesIO()
                image.save(image_data, format='JPEG')

                # Create an InMemoryUploadedFile from the resized image
                image_name = f"{student_id}_profile.jpg"
                image_file = InMemoryUploadedFile(image_data, None, image_name, 'image/jpeg', image_data.tell(), None)

                # Save the new image to the instance's profile_image field
                self.object.profile_image = image_file
            except Exception as e:
                raise ValidationError(f"Failed to process the uploaded image: {e}")

        messages.success(self.request, 'Student details updated successfully!')
        return super().form_valid(form)



class StudentDetailView(AdminRequiredMixin,DetailView):
    model = StudentDetails
    template_name = 'admin_apps/registrations/student_detail.html'
    context_object_name = 'student'


class StudentDeleteView(AdminRequiredMixin, DeleteView):
    model = StudentDetails
    context_object_name = 'student'
    template_name = 'admin_apps/registrations/student_confirm_delete.html'
    success_url = reverse_lazy('student-list')

    def form_valid(self, form):
        try:
            student_id = self.get_object().student_id

            query1 = f"DROP TABLE IF EXISTS tblstudent_{student_id}"
            query2 = f"DROP TABLE IF EXISTS tblattendance_{student_id}"
            with connection.cursor() as cursor:
                cursor.execute(query1)
                cursor.execute(query2)
            MobileDeviceIds.objects.get(student_id=student_id).delete()
            image = self.get_object().profile_image
            if image.name !='student_images/default_image.jpg':
                if image:
                    if os.path.exists(image.path):
                        os.remove(image.path)
            messages.success(self.request, 'Student has been deleted successfully.')
            return super().form_valid(form)
        except self.model.DoesNotExist:
            messages.success(self.request, 'Student already has been deleted.')
            return redirect(self.success_url)


class DeleteAllStudentsView(AdminRequiredMixin, View):

    def get(self, request, *args, **kwargs):
        try:
            student_ids = StudentDetails.objects.values_list('student_id', flat=True)

            for student_id in student_ids:
                query1 = f"DROP TABLE IF EXISTS tblstudent_{student_id}"
                query2 = f"DROP TABLE IF EXISTS tblattendance_{student_id}"

                with connection.cursor() as cursor:
                    cursor.execute(query1)
                    cursor.execute(query2)

                MobileDeviceIds.objects.filter(student_id=student_id).delete()

            StudentDetails.objects.all().delete()

            return JsonResponse({'status': 'success'})
        except Exception as e:
           return JsonResponse({'status': str(e)})




# class StudentDeleteView(AdminRequiredMixin,DeleteView):
#     model = StudentDetails
#     context_object_name = 'student'
#     template_name = 'admin_apps/registrations/student_confirm_delete.html'
#     success_url = reverse_lazy('student-list')

#     def delete(self, request, *args, **kwargs):
#         try:
#             student_id = self.get_object().student_id
#         except:
#             messages.success(self.request, 'Student has been already deleted.')
#             return redirect(self.success_url)
#         query1 = "drop table if exists tblstudent_" + str(student_id)
#         query2 = "drop table if exists tblattendance_" + str(student_id)
#         cursor = connection.cursor()
#         cursor.execute(query1)
#         cursor.execute(query2)
#         cursor.close()
#         response = super().delete(request, *args, **kwargs)
#         messages.success(self.request, 'Student has been deleted successfully.')
#         return response



class TeacherListView(AdminRequiredMixin,ListView):
    model = TeacherDetails
    template_name = 'admin_apps/registrations/teacher_list.html'  # Your template for listing teachers
    context_object_name = 'teachers'
    ordering = ['name',]


class TeacherDetailView(AdminRequiredMixin,DetailView):
    model = TeacherDetails
    template_name = 'admin_apps/registrations/teacher_detail.html'  # Your template for displaying teacher details
    context_object_name = 'teacher'


class TeacherCreateView(AdminRequiredMixin,CreateView):
    model = TeacherDetails
    form_class = TeacherDetailsForm
    template_name = 'admin_apps/registrations/teacher_form.html'  # Your template for creating a teacher
    success_url = reverse_lazy('teacher-list')

    def form_valid(self, form):
        tag_id = form.cleaned_data['tag_id']
        teacher_id = form.cleaned_data['teacher_id']
        email = form.cleaned_data['email']
        name  = form.cleaned_data['name']
        mob   = form.cleaned_data['mobno']
        if TeacherDetails.objects.filter(tag_id=tag_id).exists() or OthersDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or StudentDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id,enabled=True).exists():
            form.add_error('tag_id', 'Tag ID already exists')
            return render(self.request, self.template_name, {'form': form,})
        messages.success(self.request, 'Teacher details created successfully!')
        if create_user(teacher_id,email,name,mob,2):
            return super().form_valid(form)
        messages.success(self.request, 'Teacher details not created!')
        return redirect('teacher-create')


class TeacherUpdateView(AdminRequiredMixin,UpdateView):
    model = TeacherDetails
    form_class = TeacherDetailsForm
    template_name = 'admin_apps/registrations/teacher_form.html'  # Your template for updating a teacher
    context_object_name = 'teacher'
    success_url = reverse_lazy('teacher-list')

    def form_valid(self, form):
        tag_id = form.cleaned_data['tag_id']
        teacher_id = form.cleaned_data['teacher_id']
        if StudentDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or TeacherDetails.objects.filter(tag_id=tag_id,enabled=True).exclude(teacher_id=teacher_id).exists():          
            form.add_error('tag_id', 'Tag ID already assign to someone please verify and update')
            return render(self.request, self.template_name, {'form': form,})
        messages.success(self.request, 'Teacher details updated successfully!')
        return super().form_valid(form)

class TeacherDeleteView(AdminRequiredMixin, DeleteView):
    model = TeacherDetails
    template_name = 'admin_apps/registrations/teacher_confirm_delete.html'
    context_object_name = 'teacher'
    success_url = reverse_lazy('teacher-list')

    def form_valid(self, form):
        try:
            # Your custom deletion logic here.
            teacher_id = self.get_object().teacher_id
            mob  = self.get_object().mobno

            # Drop the associated table
            query = "DROP TABLE IF EXISTS tblteacher_" + str(teacher_id)
            cursor = connection.cursor()
            cursor.execute(query)
            cursor.close()

            # Clear the teacher_id from Timetable instances
            Timetable.objects.filter(teacher_id=teacher_id).update(teacher_id='')
            user = User.objects.get(username = mob)
            user.delete()
            # Notify the user about successful deletion.
            messages.success(self.request, 'Teacher has been deleted successfully.')

            return super().form_valid(form)
        except self.model.DoesNotExist:
            messages.success(self.request, 'Teacher has already been deleted.')
            return redirect(self.success_url)

# class TeacherDeleteView(AdminRequiredMixin,DeleteView):
#     model = TeacherDetails
#     template_name = 'admin_apps/registrations/teacher_confirm_delete.html'  # Your template for confirming deletion
#     context_object_name = 'teacher'
#     success_url = reverse_lazy('teacher-list')

#     def delete(self, request, *args, **kwargs):
#         try:
#             teacher_id = self.get_object().teacher_id
#         except:
#             messages.success(self.request, 'Teacher has been already deleted.')
#             return redirect(self.success_url)
#         query = "drop table if exists tblteacher_" + str(teacher_id)
#         cursor = connection.cursor()
#         cursor.execute(query)
#         cursor.close()
#         obj = Timetable.objects.filter(teacher_id = teacher_id)
#         if obj:
#             for i in obj:
#                 i.teacher_id = ''
#                 i.save()
#         response = super().delete(request, *args, **kwargs)
#         messages.success(self.request, 'Teacher has been deleted successfully.')
#         return response


class OthersListView(AdminRequiredMixin,ListView):
    model = OthersDetails
    template_name = 'admin_apps/registrations/others_list.html'  # Your template for listing teachers
    context_object_name = 'others'

class OthersDetailView(AdminRequiredMixin,DetailView):
    model = OthersDetails
    template_name = 'admin_apps/registrations/others_detail.html'  # Your template for displaying teacher details
    context_object_name = 'others'

class OthersCreateView(AdminRequiredMixin,CreateView):
    model = OthersDetails
    form_class = OthersDetailsForm
    template_name = 'admin_apps/registrations/others_form.html'  # Your template for creating a teacher
    success_url = reverse_lazy('others-list')

    def form_valid(self, form):
        tag_id = form.cleaned_data['tag_id']
        staff_id = form.cleaned_data['staff_id']
        email = form.cleaned_data['email']
        name  = form.cleaned_data['name']
        mob   = form.cleaned_data['mobno']
        if TeacherDetails.objects.filter(tag_id=tag_id).exists() or StudentDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id,enabled=True).exists():
            form.add_error('tag_id', 'Tag ID already exists')
            return render(self.request, self.template_name, {'form': form,})
        if create_user(staff_id,email,name,mob,3):
            messages.success(self.request, 'Staff details created successfully!')
            return super().form_valid(form)
        messages.success(self.request, 'Staff details not created!')
        return redirect('others-create')


class OthersUpdateView(AdminRequiredMixin,UpdateView):
    model = OthersDetails
    form_class = OthersDetailsForm
    template_name = 'admin_apps/registrations/others_form.html'  # Your template for updating a teacher
    context_object_name = 'others'
    success_url = reverse_lazy('others-list')

    def form_valid(self, form):
        tag_id = form.cleaned_data['tag_id']
        staff_id = form.cleaned_data['staff_id']
        if TeacherDetails.objects.filter(tag_id=tag_id).exists() or StudentDetails.objects.filter(tag_id=tag_id,enabled=True).exists() or OthersDetails.objects.filter(tag_id=tag_id,enabled=True).exclude(staff_id=staff_id).exists():
            form.add_error('tag_id', 'Tag ID already assign to someone please verify and update')
            return render(self.request, self.template_name, {'form': form,})

        messages.success(self.request, 'Details updated successfully!')
        return super().form_valid(form)



class OthersDeleteView(AdminRequiredMixin, DeleteView):
    model = OthersDetails
    template_name = 'admin_apps/registrations/others_confirm_delete.html'
    context_object_name = 'others'
    success_url = reverse_lazy('others-list')

    def form_valid(self, form):
        try:
            staff_id = self.get_object().staff_id
            mob  = self.get_object().mobno
            query = "drop table if exists tblstaff_" + str(staff_id)
            cursor = connection.cursor()
            cursor.execute(query)
            cursor.close()
            user = User.objects.get(username = mob)
            user.delete()
            messages.success(self.request, 'Record has been deleted successfully.')
            return super().form_valid(form)
            
        except self.model.DoesNotExist:
            messages.success(self.request, 'Details have already been deleted.')
            return redirect(self.success_url)


class ClassSectionListView(AdminRequiredMixin,ListView):
    model = ClassSection
    template_name = 'admin_apps/configurations/class_section_list.html'
    context_object_name = 'class_sections'
    ordering = ['class_number','section']


class ClassSectionCreateView(AdminRequiredMixin, CreateView):
    model = ClassSection
    form_class = ClassSectionForm
    template_name = 'admin_apps/configurations/class_section_form.html'
    success_url = reverse_lazy('class-section-list')

    def form_valid(self, form):
        class_number = form.cleaned_data['class_number']
        section = form.cleaned_data['section']
        if ClassSection.objects.filter(class_number=class_number, section=section).exists():
            form.add_error('section', 'Class and sections  are already exists.')
            return self.form_invalid(form)
        tbl_name = 'tbl_classattendance_'+str(class_number)+str(section)
        query = 'CREATE TABLE IF NOT EXISTS '+tbl_name+ ''' (dates DATE NOT NULL,
                    p1 VARCHAR(45) DEFAULT null,
                    p2 VARCHAR(45) DEFAULT null,
                    p3 VARCHAR(45) DEFAULT null,
                    p4 VARCHAR(45) DEFAULT null,
                    p5 VARCHAR(45) DEFAULT null,
                    p6 VARCHAR(45) DEFAULT null
            )  ''' 
        with connection.cursor() as cursor:
            cursor.execute(query)

        return super().form_valid(form)


# class ClassSectionUpdateView(AdminRequiredMixin,UpdateView):
#     model = ClassSection
#     form_class = ClassSectionForm
#     template_name = 'admin_apps/configurations/class_section_form.html'
#     context_object_name = 'class_section'
#     success_url = reverse_lazy('class-section-list')

#     def form_valid(self, form):
#         class_number = form.cleaned_data['class_number']
#         section = form.cleaned_data['section']
#         if ClassSection.objects.filter(class_number=class_number, section=section).exclude(pk=self.object.pk).exists():
#             form.add_error('section', 'Class and sections  are already exists.')
#             return self.form_invalid(form)
#         return super().form_valid(form)

class ClassSectionDeleteView(AdminRequiredMixin, DeleteView):
    model = ClassSection
    template_name = 'admin_apps/configurations/class_section_confirm_delete.html'
    context_object_name = 'class_section'
    success_url = reverse_lazy('class-section-list')

    def form_valid(self, form):
        class_number = self.get_object().class_number
        section = self.get_object().section
        tbl_name = 'tbl_classattendance_'+str(class_number)+str(section)
        query = 'DROP TABLE IF EXISTS '+tbl_name
        with connection.cursor() as cursor:
            cursor.execute(query)
        messages.success(self.request, 'Class and Section have been deleted successfully.')
        return super().form_valid(form)


class PeriodTableListView(AdminRequiredMixin,ListView):
    model = PeriodTable
    template_name = 'admin_apps/configurations/list_periods.html'  # Create this template
    context_object_name = 'periods'

class PeriodTableUpdateView(AdminRequiredMixin,UpdateView):
    model = PeriodTable
    form_class = PeriodTableUpdateForm
    template_name = 'admin_apps/configurations/update_period_name.html'  
    success_url = reverse_lazy('list-periods')  

    def get_object(self, queryset=None): 
        period_id = self.kwargs['period_id']
        return PeriodTable.objects.get(period_id=period_id)


class TimetableListView(AdminRequiredMixin, ListView):
    model = Timetable
    template_name = 'admin_apps/configurations/timetable_list.html'
    context_object_name = 'timetables'
    ordering = ['day_of_week','period_name']

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        teacher_ids = [timetable.teacher_id for timetable in context['timetables']]
        teacher_details_map = {teacher.teacher_id: teacher.name for teacher in TeacherDetails.objects.filter(teacher_id__in=teacher_ids)}
        for timetable in context['timetables']:
            timetable.teacher_id = teacher_details_map.get(timetable.teacher_id, '')

        period_ids = [timetable.period_name for timetable in context['timetables']]
        period_details_map = {period.period_id: period.period_name for period in PeriodTable.objects.filter(period_id__in=period_ids)}

        context['filter_form'] = ClassSectionFilterForm(self.request.GET)
        for timetable in context['timetables']:
            timetable.period_name = period_details_map.get(timetable.period_name, '')
        return context

    def get_queryset(self):
        queryset = super().get_queryset()
        class_name = self.request.GET.get('class_name')
        section = self.request.GET.get('section')
        if not class_name:
            pass
        elif not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            messages.success(self.request,'Select valid section for selected class')
        elif class_name and section:
            queryset = queryset.filter(class_name=class_name, section=section)
        return queryset

class TimetableCreateView(AdminRequiredMixin, CreateView):
    model = Timetable
    form_class = TimetableForm
    template_name = 'admin_apps/configurations/timetable_form.html'
    success_url = reverse_lazy('timetable-list')
    success_message = "Timetable entry created successfully."
    def form_valid(self, form):
        # teacher_id = form.cleaned_data['teacher_id']
        day_of_week = form.cleaned_data['day_of_week']
        period_name = form.cleaned_data['period_name']
        class_name = form.cleaned_data['class_name']
        section = form.cleaned_data['section']

        if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            form.add_error('section','Select valid section for selected class')
            return self.form_invalid(form)

        if Timetable.objects.filter(day_of_week=day_of_week,period_name=period_name,class_name=class_name,section=section).exists():
            form.add_error('period_name', 'This period is already created for the seleted Day, Class and Section')
            return self.form_invalid(form)
        return super().form_valid(form)


class TimetableUpdateView(AdminRequiredMixin, UpdateView):
    model = Timetable
    form_class = TimetableForm
    template_name = 'admin_apps/configurations/timetable_form.html'
    success_url = reverse_lazy('timetable-list')
    success_message = "Timetable entry updated successfully."

    def form_valid(self, form):
        # teacher_id = form.cleaned_data['teacher_id']
        day_of_week = form.cleaned_data['day_of_week']
        period_name = form.cleaned_data['period_name']
        class_name = form.cleaned_data['class_name']
        section = form.cleaned_data['section']
        period = Timetable.objects.get(pk=self.object.pk).period_name
        if period_name != period:
            if Timetable.objects.filter(day_of_week=day_of_week,period_name=period_name,class_name=class_name,section=section).exclude(pk=self.object.pk).exists():
                form.add_error('period_name', 'This period is already created for the seleted Day, Class and Section')
                return self.form_invalid(form)

        if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
            form.add_error('section','Select valid section for selected class')
            return self.form_invalid(form)
        
        return super().form_valid(form)

class TimetableDeleteView(AdminRequiredMixin, DeleteView):
    model = Timetable
    template_name = 'admin_apps/configurations/timetable_confirm_delete.html'
    success_url = reverse_lazy('timetable-list')
    success_message = "Timetable entry deleted successfully."

class ClassTimetable(AdminRequiredMixin, View):
    template_name = 'admin_apps/configurations/class_timetable.html'

    def get(self, request):
        form = ClassTimetabelForm()
        return render(request, self.template_name, {'form': form})

    def post(self, request):
        form = ClassTimetabelForm(request.POST)
        if form.is_valid():
            class_name = int(form.cleaned_data['class_name'])
            section = form.cleaned_data['section']
            
            if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
                form.add_error('section', 'Section does not exist for the selected class')
                return render(request, self.template_name, {'form': form})
            
            days_of_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
            timetable_data = {}
            period1 = []
            p =[]
            period1 = [i for i in PeriodTable.objects.values_list('period_name', flat=True)]
            period_ids = [i for i in PeriodTable.objects.values_list('period_id', flat=True)]
            for day in days_of_week:
                lst = []
                for i in period_ids:
                    p = Timetable.objects.filter(day_of_week=day, class_name=class_name, section=section,period_name=i)
                    if p:
                        try:
                            lst.extend([f'{p[0].start_time} - {p[0].end_time} ({TeacherDetails.objects.get(teacher_id = p[0].teacher_id).name })'])
                        except:
                            lst.extend([f'{p[0].start_time} - {p[0].end_time}'])
                    else:
                        lst.extend([''])
                timetable_data[day] = [j for j in lst]
            return render(request, self.template_name, {'form': form, 'timetable_data': timetable_data,'period' : period1})

        return render(request, self.template_name, {'form': form})



class HolidayListView(AdminRequiredMixin, ListView):
    model = Holiday
    template_name = 'admin_apps/configurations/holiday_list.html'  # Update with your template path
    context_object_name = 'holidays'
    ordering = ['from_date']

class HolidayCreateView(AdminRequiredMixin, CreateView):
    model = Holiday
    form_class = HolidayForm
    template_name = 'admin_apps/configurations/holiday_form.html'  # Update with your template path
    success_url = reverse_lazy('holiday-list')

class HolidayUpdateView(AdminRequiredMixin, UpdateView):
    model = Holiday
    form_class = HolidayForm
    template_name = 'admin_apps/configurations/holiday_form.html'  # Update with your template path
    context_object_name = 'holiday'
    success_url = reverse_lazy('holiday-list')

class HolidayDeleteView(AdminRequiredMixin, DeleteView):
    model = Holiday
    template_name = 'admin_apps/configurations/holiday_confirm_delete.html'  # Update with your template path
    context_object_name = 'holiday'
    success_url = reverse_lazy('holiday-list')


class StudentExcelUploadView(AdminRequiredMixin, FormView):
    '''
    This class takes an excel file and creates a new student record for each detail 
    provided in the excel file by checking.
    '''
    template_name = 'admin_apps/registrations/student_excel_upload.html'
    form_class = ExcelUploadForm
    success_url = reverse_lazy('student-upload-excel')  # Redirect to student list after successful upload

    def form_valid(self, form):
        excel_file = form.cleaned_data['excel_file']
        if excel_file.name.endswith('.xlsx'):
            try:
                sl_nos = []
                df = pd.read_excel(excel_file)
                df.fillna(value='', inplace=True)  # Use an appropriate value to fill NaN, e.g., ''
                expected_columns = ['Name', 'Student ID', 'Roll No', 'Tag ID', 'DOB', 'Address',
                                     'Gender', 'Parent Name 1', 'Parent Relation 1', 'Parent Name 2',
                                     'Parent Relation 2', 'Mobile No', 'Email', 'Class Name', 'Section',
                                     'Date of Joining', 'Route Number', 'Stop Number']
                if not all(col in df.columns for col in expected_columns):
                    messages.error(self.request, 'Invalid header row in the Excel file.')
                    return redirect(self.get_success_url())
                for index, row in df.iterrows():
                    try:                     
                        row_data = student_verify_row(row)
                        tagid_hex = hex(int(row_data['Tag ID']))[2:]
                        student = StudentDetails(
                            name=row_data['Name'],
                            student_id=row_data['Student ID'],
                            roll_no=row_data['Roll No'],
                            tag_id=row_data['Tag ID'],
                            tag_id_hex=tagid_hex,
                            dob=row_data['DOB'],
                            address=row_data['Address'],
                            gender=row_data['Gender'],
                            parent_name1=row_data['Parent Name 1'],
                            parent_relation1=row_data['Parent Relation 1'],
                            parent_name2=row_data['Parent Name 2'],
                            parent_relation2=row_data['Parent Relation 2'],
                            mobno=row_data['Mobile No'],
                            email=row_data['Email'],
                            class_name=row_data['Class Name'],
                            section=row_data['Section'],
                            doj=row_data['Date of Joining'],
                            route_no=row_data['Route Number'],
                            stop_no=row_data['Stop Number'],
                            enabled=True
                        )
                        student.save()
                        # create a new parent user account for login
                        create_user(row_data['Student ID'], row_data['Email'], row_data['Name'], row_data['Mobile No'], 1)
                        # create a new table for the student to maintain each period attendance
                        create_student_attendance_table(row_data['Student ID'])
                        # reegister student for store mobile login device ids.
                        MobileDeviceIds.objects.create(student_id=str(row_data['Student ID']))

                    except Exception as e:
                        print(e)
                        sl_nos.append(index + 1)

                if len(sl_nos) > 0:
                    messages.success(self.request, f"Data imported Unsuccessful for Sl no's. - {str(sl_nos)} \n check these details and update again ")
                else:
                    messages.success(self.request, 'Data imported successfully.')
            except Exception as e:
                print(e)
                messages.error(self.request, f'Error importing data: {str(e)}')
        else:
            messages.error(self.request, 'Please upload a valid Excel file.')

        return redirect(self.get_success_url())



class TeacherExcelUploadView(AdminRequiredMixin, FormView):
    template_name = 'admin_apps/registrations/teacher_excel_upload.html'
    form_class = ExcelUploadForm
    success_url = reverse_lazy('teacher-upload-excel')  # Redirect after successful upload

    def form_valid(self, form):
        excel_file = form.cleaned_data['excel_file']
        if excel_file.name.endswith('.xlsx'):
            try:
                sl_nos = []
                df = pd.read_excel(excel_file)
                df.fillna('', inplace=True)    # Replace empty data
                expected_columns = ['Name', 'Teacher ID', 'Tag ID', 'Email', 'Mobile No', 'Gender']
                if not all(col in df.columns for col in expected_columns):
                    messages.error(self.request, 'Invalid header row in the Excel file.')
                    return redirect(self.get_success_url())

                for index, row in df.iterrows():
                    try:
                        row_data = teacher_verify_row(row)
                        tagid_hex = hex(int(row_data['Tag ID']))[2:]
                        teacher = TeacherDetails(
                            name        = row_data['Name'],
                            teacher_id  = row_data['Teacher ID'],
                            tag_id      = row_data['Tag ID'],
                            tag_id_hex  = tagid_hex,
                            email       = row_data['Email'],
                            mobno       = row_data['Mobile No'],
                            gender      = row_data['Gender'],
                            enabled     = True
                        )
                        teacher.save()
                        create_user(row_data['Teacher ID'],row_data['Email'],row_data['Name'],row_data['Mobile No'],2)
                    except Exception as e:
                        sl_nos.append(index+1)
                
                if len(sl_nos) > 0:
                    messages.success(self.request, f"Data imported Unsuccess for Sl no's. - {str(sl_nos)} \n check thease details and update again ")
                else:
                    messages.success(self.request, 'Data imported successfully.')

            except Exception as e:
                messages.error(self.request, f'Error importing data: {str(e)}')
                
        else:
            messages.error(self.request, 'Please upload a valid Excel file.')

        return redirect(self.get_success_url())


class SchoolTimingsListView(ListView):
    model = SchoolTimings
    template_name = 'admin_apps/configurations/school_timings_list.html'
    context_object_name = 'timings_list'


class SchoolTimingsUpdateView(UpdateView):
    model = SchoolTimings
    template_name = 'admin_apps/configurations/school_timings_form.html'
    fields = ['start_time', 'end_time']
    success_url = reverse_lazy('school-timings-list')

    def form_valid(self, form):
        print('update')
        start_time = form.cleaned_data.get('start_time')
        end_time = form.cleaned_data.get('end_time')

        # Check if end_time is less than or equal to start_time
        if end_time <= start_time:
            form.add_error('end_time', 'End time must be greater than start time.')
            return self.form_invalid(form)

        # Continue with the default behavior if validation passes
        return super().form_valid(form)


class SchoolSpecialTimingsCreateView(CreateView):
    model = SchoolSpecialTimings
    form_class = SchoolSpecialTimingsForm
    template_name = 'admin_apps/configurations/special_timings_form.html'
    success_url = reverse_lazy('school-special-timings-list')

class SchoolSpecialTimingsUpdateView(UpdateView):
    model = SchoolSpecialTimings
    form_class = SchoolSpecialTimingsForm
    template_name = 'admin_apps/configurations/special_timings_form.html'
    success_url = reverse_lazy('school-special-timings-list')

class SchoolSpecialTimingsListView(ListView):
    model = SchoolSpecialTimings
    template_name = 'admin_apps/configurations/special_timings_list.html'
    context_object_name = 'special_timings_list'

class SchoolSpecialTimingsDeleteView(DeleteView):
    model = SchoolSpecialTimings
    template_name = 'admin_apps/configurations/special_timings_confirm_delete.html'
    success_url = reverse_lazy('school-special-timings-list')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['date'] = self.object.date
        return context