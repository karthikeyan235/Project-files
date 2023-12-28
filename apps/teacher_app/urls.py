from django.urls import path
from . import views

urlpatterns = [
    path('homepage/',views.TeacherHomepageView.as_view(),name = 'Teacher-homepage'),
    path('student-attendence-mark/',views.StudentAttendanceMarkView.as_view(),name = 'Student-attendance-mark'),
    path('student-attendence-confirm/',views.StudentAttendancConfirmView.as_view(),name = 'Student-attendance-confirm'),
    path('period-attendance-edit/',views.StudentPeriodAttendanceEditView.as_view(),name = 'Period-attendance-edit'),
    path('period-attendance-edit-confirm/',views.StudentPeriodAttendanceEditConfirmView.as_view(),name = 'Period-attendance-edit-confirm'),
    path('month-attendance/',views.TeacherMonthAttendanceView.as_view(),name = 'Teacher-month-attendance'),
    path('time-table/',views.TeacherTimetableView.as_view(),name = 'Teacher-Timetable'),
    path('teacher_profile/', views.ApiTeacherProfileView.as_view()),
    ]