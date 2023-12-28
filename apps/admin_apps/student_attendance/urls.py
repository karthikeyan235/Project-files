from django.urls import path
from . import views 

urlpatterns = [
    path('Student_Report/',views.StudentReportView.as_view(),name = 'Student-Report'),
    path('Student_Month_Report/',views.StudentMonthReportView.as_view(),name = 'Student-Month-Report'),
    path('student_attendance/',views.student_attendance,name = 'student_attendance'),
    path('period-attendance/',views.StudentPeriodAttendanceView.as_view(),name = 'Period-attendance'),
]

