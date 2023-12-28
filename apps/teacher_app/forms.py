from django import forms
from apps.admin_apps.registration_app.models import *
from datetime import datetime

class PeriodAttendanceEditForm(forms.Form):
    class_name = forms.ChoiceField(
        choices=[(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()],
        required=True,
        label='Class'
    )
    section = forms.ChoiceField(
        choices=[(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()],
        required=True,
        label='Section'
    )
    period_list = forms.ChoiceField(
        choices=[(None, "Select a Period")] + [(str(period.period_id), period.period_name) for period in PeriodTable.objects.all()],
        required=True,
        label='Period'
    )
    
    date = forms.DateField(
        required=True,
        label='Select date',
        widget=forms.TextInput(attrs={'type': 'date', 'max': datetime.now().strftime('%Y-%m-%d')}),
    )


class PeriodAttendanceForm(forms.Form):
    class_name = forms.ChoiceField(
        choices=[(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()],
        required=True,
        label='Class'
    )
    section = forms.ChoiceField(
        choices=[(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()],
        required=True,
        label='Section'
    )
    period_list = forms.ChoiceField(
        choices=[(None, "Select a Period")] + [(str(period.period_id), period.period_name) for period in PeriodTable.objects.all()],
        required=True,
        label='Period'
    )


class MonthForm(forms.Form):
    month_date = forms.DateField(
        required=True,
        label='Select month',
        widget=forms.TextInput(attrs={'type': 'month', 'max': datetime.now().strftime('%Y-%m')}),
    )