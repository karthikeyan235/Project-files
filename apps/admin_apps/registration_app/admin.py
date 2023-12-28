from django.contrib import admin
from .models import *


class StudentDetailsAdmin(admin.ModelAdmin):
    list_display = ['name', 'student_id',  'tag_id',  'gender', 'mobno', 'email', 'class_name', 'section', 'route_no', 'stop_no','enabled']
    list_filter = ['class_name', 'section','enabled']
    search_fields = ['name', 'student_id', 'tag_id']
    # Add more customization options as needed

# Register the model and the admin class
admin.site.register(StudentDetails, StudentDetailsAdmin)
admin.site.register(TeacherDetails)
admin.site.register(OthersDetails)
admin.site.register(ClassSection)
admin.site.register(Timetable)
admin.site.register(Holiday)
admin.site.register(PeriodTable)
admin.site.register(MobileDeviceIds)
admin.site.register(SchoolTimings)

