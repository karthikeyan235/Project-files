from django.urls import path
from . import views

urlpatterns = [
		path('homepage/', views.StaffHomepageView.as_view(),name = 'Staff-homepage'),	
		path('Staff_Attendance/', views.StaffMonthAttendanceView.as_view(), name='Staff-month-attendance'),	
	]