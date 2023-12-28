from django.urls import path, include
from . import views 

urlpatterns = [
    path('registration/',views.RegistrationView.as_view(),name = 'registration'),
    path('attendance/',views.AttendnaceHomepageView.as_view(),name = 'attendance'),
    path('adminconfig_homepage/',views.configuration,name = 'adminconfig_homepage'),


    path('students_attendance/',include('apps.admin_apps.student_attendance.urls')),
    path('teachers_attendance/',include('apps.admin_apps.teacher_attendance.urls')),
    path('staff_attendance/',include('apps.admin_apps.staff_attendance.urls')),

    path('students/', views.StudentListView.as_view(), name='student-list'),
    path('students/create/', views.StudentCreateView.as_view(), name='student-create'),
    path('students/<int:pk>/', views.StudentDetailView.as_view(), name='student-detail'),
    path('students/<int:pk>/update/', views.StudentUpdateView.as_view(), name='student-update'),
    path('students/<int:pk>/delete/', views.StudentDeleteView.as_view(), name='student-delete'),
    path('delete_all/', views.DeleteAllStudentsView.as_view(), name='delete-all-students'),

    path('teachers/', views.TeacherListView.as_view(), name='teacher-list'),
    path('teachers/<int:pk>/', views.TeacherDetailView.as_view(), name='teacher-detail'),
    path('teachers/create/', views.TeacherCreateView.as_view(), name='teacher-create'),
    path('teachers/<int:pk>/update/', views.TeacherUpdateView.as_view(), name='teacher-update'),
    path('teachers/<int:pk>/delete/', views.TeacherDeleteView.as_view(), name='teacher-delete'),

    path('staff/', views.OthersListView.as_view(), name='others-list'),
    path('staff/<int:pk>/', views.OthersDetailView.as_view(), name='others-detail'),
    path('staff/create/', views.OthersCreateView.as_view(), name='others-create'),
    path('staff/<int:pk>/update/', views.OthersUpdateView.as_view(), name='others-update'),
    path('staff/<int:pk>/delete/', views.OthersDeleteView.as_view(), name='others-delete'),

    path('class-sections/', views.ClassSectionListView.as_view(), name='class-section-list'),
    path('class-sections/create/', views.ClassSectionCreateView.as_view(), name='class-section-create'),
    # path('class-sections/<int:pk>/update/', views.ClassSectionUpdateView.as_view(), name='class-section-update'),
    path('class-sections/<int:pk>/delete/', views.ClassSectionDeleteView.as_view(), name='class-section-delete'),

    path('list/', views.TimetableListView.as_view(), name='timetable-list'),
    path('create/', views.TimetableCreateView.as_view(), name='timetable-create'),
    path('<int:pk>/', views.TimetableUpdateView.as_view(), name='timetable-update'),
    path('<int:pk>/delete/', views.TimetableDeleteView.as_view(), name='timetable-delete'),
    path('Class-Timetable/', views.ClassTimetable.as_view(), name='Class-Timetable'),

    path('holidays/', views.HolidayListView.as_view(), name='holiday-list'),
    path('holidays/create/', views.HolidayCreateView.as_view(), name='holiday-create'),
    path('holidays/<int:pk>/update/', views.HolidayUpdateView.as_view(), name='holiday-update'),
    path('holidays/<int:pk>/delete/', views.HolidayDeleteView.as_view(), name='holiday-delete'),

    path('student-upload-excel/', views.StudentExcelUploadView.as_view(), name='student-upload-excel'),
    path('teacher-upload-excel/', views.TeacherExcelUploadView.as_view(), name='teacher-upload-excel'),

    path('period/list/', views.PeriodTableListView.as_view(), name='list-periods'),
    path('period/update/<str:period_id>/', views.PeriodTableUpdateView.as_view(), name='update-period-name'),

    path('school-timings/', views.SchoolTimingsListView.as_view(), name='school-timings-list'),
    path('school-timings/<int:pk>/update/', views.SchoolTimingsUpdateView.as_view(), name='school-timings-update'),

    path('special-timings/create/', views.SchoolSpecialTimingsCreateView.as_view(), name='school-special-timings-create'),
    path('special-timings/<int:pk>/update/', views.SchoolSpecialTimingsUpdateView.as_view(), name='school-special-timings-update'),
    path('special-timings/list/', views.SchoolSpecialTimingsListView.as_view(), name='school-special-timings-list'),
    path('special-timings/<int:pk>/delete/', views.SchoolSpecialTimingsDeleteView.as_view(), name='school-special-timings-delete'),
   
    # path('timetable/create/', views.timetable_create_view, name='timetable-create'),
    
    # path('teacher/create/', views.create_teacher, name='create-teacher'),
]

 