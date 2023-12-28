from django.urls import path
from . import views

urlpatterns = [
				path('homepage/', views.ParentHomepageView.as_view(), name='Parent-home'),
				path('Student_Attendance/', views.StudentMonthAttendanceView.as_view(), name='Student-month-attendance'),
				path('select/<str:student_id>/', views.SelectStudentView.as_view(), name='student_select'),
				path('studentattendance/', views.ApiStudentMonthAttendanceView.as_view()),
				path('todayattendance/', views.ApiStudentTodayAttendanceView.as_view()),
				path('profile/', views.ApiStudentProfileView.as_view()),
		]