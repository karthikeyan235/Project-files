from django.urls import path
from . import views 

urlpatterns = [
    path('Teacher_Report/',views.TeacherReportView.as_view(),name = 'Teacher-Report'),
    path('Teacher_Month_Report/',views.TeacherMonthReportView.as_view(),name = 'Teacher-Month-Report'),
    path('teacher_attendance/',views.teacher_attendance,name = 'teacher_attendance'),
]

