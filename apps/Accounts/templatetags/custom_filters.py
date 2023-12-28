from django import template
from apps.admin_apps.registration_app.models import StudentDetails, TeacherDetails, OthersDetails

register = template.Library()

@register.filter(name='split')
def split(value, delimiter):
    return value.split(delimiter)


@register.filter(name='get_student_name')
def get_student_name(student_id):
    try:
        student_details = StudentDetails.objects.get(student_id=student_id)
        return student_details.name
    except StudentDetails.DoesNotExist:
        return ""

@register.filter(name='get_teacher_name')
def get_student_name(teacher_id):
    try:
        Teacher_Details = TeacherDetails.objects.filter(teacher_id=teacher_id)
        if Teacher_Details:
            return Teacher_Details[0].name
        else:
            return ''
    except StudentDetails.DoesNotExist:
        return ""

@register.filter(name='get_staff_name')
def get_student_name(staff_id):
    try:
        Staff_Details = OthersDetails.objects.filter(staff_id=staff_id)
        if Staff_Details:
            return Staff_Details[0].name
        else:
            return ''
    except StudentDetails.DoesNotExist:
        return ""