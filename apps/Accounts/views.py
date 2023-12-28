from django.shortcuts import render, redirect
from django.http import JsonResponse
from django.views import View
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import authenticate,logout, login as authlogin  
from django.contrib.auth.mixins import LoginRequiredMixin
import logging
from django.urls import reverse_lazy
from django.contrib.auth.views import PasswordChangeView
from django.contrib import messages
import json
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from apps.admin_apps.registration_app.models import *  
from apps.admin_apps.registration_app.mixins import AdminRequiredMixin
from django.shortcuts import get_object_or_404

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login 
import os

# Create your views here.

logging.basicConfig(
    level=logging.ERROR,
    format='\n\n%(asctime)s [%(levelname)s] %(message)s',
    filename='logs/error.log',
    filemode='a'
)


@method_decorator(csrf_exempt, name='dispatch')
class ChangePasswordView(APIView):
    def post(self, request):
        std_id = request.data.get('user_name')
        try:
            username = StudentDetails.objects.get(student_id=std_id).mobno
        except:
            username = ''
        old_password = request.data.get('old_password')
        new_password = request.data.get('new_password')
        confirm_password = request.data.get('confirm_password')
        user = authenticate(username=username, password=old_password)
        if user is not None:
            if new_password == confirm_password:
                user.set_password(new_password)
                user.save()
                return JsonResponse({'message': 'successfull'})
            else:
                return JsonResponse({'error': 'not match'}, status=400)
        else:
            return JsonResponse({'error': 'Invalid old password'}, status=400)



@method_decorator(csrf_exempt, name='dispatch')
class ApiLoginView(View):
    def post(self, request, *args, **kwargs):
        try:
            data = json.loads(request.body.decode('utf-8'))
            username = data.get('username', '')
            password = data.get('password', '')
            device_id = data.get('deviceid', '')
            user = authenticate(request, username=username, password=password)
            if user:
                user = User.objects.get(username=username)
                res = []
                if user.profile.user_type == 'parent':
                    student_ids = user.profile.id_number.split(',')
                    for i in student_ids:
                        try:
                            if MobileDeviceIds.objects.filter(student_id=i, enable=True).exists():
                                student = MobileDeviceIds.objects.get(student_id=i)
                                mobile_id = student.device_id if student.device_id else ''
                                d_ids = mobile_id.split(',')
                                if mobile_id:
                                    if device_id and device_id not in d_ids:
                                        d_ids.append(device_id)
                                        mobile_id = ','.join(d_ids)
                                        student.device_id = mobile_id
                                        student.save()
                                else:
                                    student.device_id = device_id
                                    student.save()
            
                                student = StudentDetails.objects.get(student_id=i)
                                name = student.name
                                image_url = request.build_absolute_uri(student.profile_image.url)
                                res.append(i)
                                res.append(name)
                                res.append(image_url)
                        except:
                            return JsonResponse({'message': 'unsuccess'}, status=400)
                elif user.profile.user_type == 'teacher':
                    try:
                        teacher_id = user.profile.id_number
                        teacher = TeacherDetails.objects.get(teacher_id = teacher_id)
                        m_id = MobileDeviceIds.objects.get(student_id=teacher_id)
                        mobile_id = m_id.device_id if m_id.device_id else ''
                        d_ids = mobile_id.split(',')
                        if mobile_id:
                            if device_id and device_id not in d_ids:
                                d_ids.append(device_id)
                                mobile_id = ','.join(d_ids)
                                m_id.device_id = mobile_id
                                m_id.save()
                        else:
                            m_id.device_id = device_id
                            m_id.save()
                        res = [teacher_id,teacher.name]
                    except:
                        return JsonResponse({'message': 'unsuccess'}, status=400)
                        
                return JsonResponse({'id': res}, status=200)
            else:
                return JsonResponse({'message': 'unsuccess'}, status=400)
        except Exception as e:
            return JsonResponse({'message': 'unsuccess'}, status=400)


# class SignUpView(LoginRequiredMixin, View):
#     template_name = 'registration/signup.html'
#     form_class = SignupForm

#     def get(self, request):
#         if is_admin(request):
#             form = self.form_class()
#             return render(request, self.template_name, {'form': form})
#         else:
#             return redirect('login')

#     def post(self, request):
#         if is_admin(request):
#             try:
#                 user_name = request.POST.get("username")
#                 if User.objects.filter(username=user_name).exists():
#                     messages.success(request, 'Username Already exists')
#                     return redirect("signup")

#                 form = self.form_class(request.POST)
#                 if form.is_valid():
#                     user = form.save()
#                     user.set_password(user.password)
#                     user.save()
#                     profile = Profile.objects.create(
#                         user=user,
#                         phone_number=request.POST['phone_number'],
#                         user_type=request.POST['user_type'],
#                         emp_id=request.POST['emp_id']
#                     )
#                     profile.save()

#                 messages.success(request, 'New Account created successfully.')
#                 return redirect("signup")

#             except Exception as e:
#                 logging.exception('Error During Signup')
#                 messages.success(request, 'Something went wrong. Please try again later.')
#                 return render(request, self.template_name, {'form': form})
#         else:
#             return redirect('login')

            
class LoginView(View):
    def get(self, request):
        form = AuthenticationForm()  # Create an instance of AuthenticationForm
        return render(request, 'registration/login.html', {'form': form})
    
    def post(self, request):
        form = AuthenticationForm(data=request.POST)  # Create form instance with POST data
        if form.is_valid():  # Validate the form
            user = form.get_user()  # Get the authenticated user object
            authlogin(request, user)  # Log the user i
            if user.profile.user_type == 'admin':
                return redirect("home")
            else:
                return redirect("home")
        else:
            messages.error(request, 'Incorrect username or password')
            return render(request, 'registration/login.html', {'form': form})

class CustomPasswordChangeView(LoginRequiredMixin, PasswordChangeView):
    template_name = 'registration/change_password.html'
    success_url = reverse_lazy('login')  # Specify the URL to redirect after successful password change


class HomepageView(View):
    template_name = 'registration/homepage.html'
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name) 
    

class LogoutView(LoginRequiredMixin, View):  
    def get(self, request, *args, **kwargs):
        logout(request)
        return redirect('login')
    

class HomeView(LoginRequiredMixin,View):
    def get(self, request, *args, **kwargs):
        if request.user.profile.user_type == 'admin':
            return render(request,"admin_apps/home.html")
        elif request.user.profile.user_type == 'parent':
            return redirect('Parent-home')
        elif request.user.profile.user_type == 'teacher':
            return redirect('Teacher-homepage')
        elif request.user.profile.user_type == 'others':
            return redirect('Staff-homepage')


from django.contrib.auth.models import User

class LoginAccountsListView(AdminRequiredMixin, View):
    template_name = 'admin_apps/configurations/login_accounts.html'

    def get(self, request, *args, **kwargs):
        # Get all user accounts
        user_accounts = User.objects.all()

        # Render the template with the user accounts
        return render(request, self.template_name, {'user_accounts': user_accounts})


class LoginAccountDeleteView(AdminRequiredMixin, View):

    def get(self, request, usr, *args, **kwargs):
        user = get_object_or_404(User, username=usr)
        
        try:
            print(usr)
            # user.delete()
            messages.success(request, f'User "{usr}" Deleted successfully')
        except Exception as e:
            messages.error(request, f'User account already deleted.')

        return redirect('login-accounts-list')


class LoginAccountEditView(AdminRequiredMixin, View):

    def get(self, request, usr, *args, **kwargs):
        user = get_object_or_404(User, username=usr)
        
        try:
            print(usr)
            # user.delete()
            messages.success(request, f'User "{usr}" Deleted successfully')
        except Exception as e:
            messages.error(request, f'User account already deleted.')

        return redirect('login-accounts-list')