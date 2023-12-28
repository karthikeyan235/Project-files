from django import forms
from apps.admin_apps.registration_app.models import *
from datetime import datetime

class MonthForm(forms.Form):
    class_name = forms.CharField(max_length=2, required=True, label='Class')
    section = forms.CharField(max_length=5, required=True, label='Section')
    month = forms.CharField(
        max_length=50,
        required=True,
        label='Month',
        widget=forms.TextInput(attrs={'type': 'month', 'max': datetime.now().strftime('%Y-%m')}),
    )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        class_name_choices = [(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()]
        section_choices = [(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()]

        self.fields['class_name'] = forms.ChoiceField(
            choices=class_name_choices,
            initial=None,  # Set initial value to None
        )

        self.fields['section'] = forms.ChoiceField(
            choices=section_choices,
            initial=None,  # Set initial value to None
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
    # period_list = forms.ChoiceField(
    #     choices=[(None, "Select a Period")] + [(str(period.period_id), period.period_name) for period in PeriodTable.objects.all()],
    #     required=True,
    #     label='Section'
    # )
    
    date = forms.DateField(
        required=True,
        label='Select date',
        widget=forms.DateInput(attrs={'type': 'date', 'max': datetime.now().strftime('%Y-%m-%d')}),
    )
