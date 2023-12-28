from django.urls import path
from . import views 

urlpatterns = [
    path('Staff_Report/',views.StaffReportView.as_view(),name = 'Staff-Report'),
    path('Staff_Month_Report/',views.StaffMonthReportView.as_view(),name = 'Staff-Month-Report'),
    path('staff_attendance/',views.StaffAttendanceView.as_view(),name = 'staff_attendance'),

    # path('student_attendance/',views.student_attendance,name = 'student_attendance'),
    # path('period-attendance/',views.StudentPeriodAttendanceView.as_view(),name = 'Period-attendance'),
]
