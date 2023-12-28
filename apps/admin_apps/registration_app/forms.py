from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Div, Field, Submit
from .models import *
from django.core.validators import RegexValidator, EmailValidator
from datetime import date


class SchoolSpecialTimingsForm(forms.ModelForm):
    class Meta:
        model = SchoolSpecialTimings
        fields = ['date', 'start_time', 'end_time']
        widgets = {
            'date': forms.DateInput(attrs={'type': 'date'}),           
        }


class PeriodTableUpdateForm(forms.ModelForm):
    class Meta:
        model = PeriodTable
        fields = ['period_name']
        

class ClassTimetabelForm(forms.Form):
    class_name = forms.CharField(max_length=2, required=True, label='Class')
    section = forms.CharField(max_length=5, required=True, label='Section')

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        class_name_choices = [(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()]
        section_choices = [(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()]
        self.fields['class_name'] = forms.ChoiceField(
            label='Class',
            choices=class_name_choices,
            initial=None,  # Set initial value to None
        )
        self.fields['section'] = forms.ChoiceField(
            choices=section_choices,
            required=False,
            initial=None,  # Set initial value to None
        )


class ExcelUploadForm(forms.Form):
    excel_file = forms.FileField(label='Upload Excel File')


class HolidayForm(forms.ModelForm):
    holiday_code = forms.CharField(max_length=3)
    class Meta:
        model = Holiday
        fields = [ 'holiday_name', 'holiday_code','from_date', 'to_date']
        labels = {
            'from_date': 'From Date',
            'to_date': 'To Date',
            'holiday_name': 'Holiday Name',
            'holiday_code': 'Holiday Code'
        }
        widgets = {
            'from_date': forms.DateInput(attrs={'type': 'date'}),
            'to_date': forms.DateInput(attrs={'type': 'date'}),
        }

    def clean(self):
        cleaned_data = super().clean()
        from_date = cleaned_data.get('from_date')
        to_date = cleaned_data.get('to_date')
        holiday_code = cleaned_data.get('holiday_code')

        if from_date and to_date and from_date > to_date:
            self.add_error('to_date', 'To date should be later than from date.')
        if Holiday.objects.filter(from_date=from_date,to_date=to_date).exists():
            self.add_error('from_date', 'For this date alredy holiday is created.')

    def save(self, commit=True):
        instance = super().save(commit=False)
        instance.holiday_code = instance.holiday_code.upper()
        instance.holiday_name = instance.holiday_name.upper()

        if commit:
            instance.save()
        return instance


class ClassSectionFilterForm(forms.Form):
    class Meta:
        fields = ['class_name','section']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        class_name_choices = [(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()]
        section_choices = [(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()]
        self.fields['class_name'] = forms.ChoiceField(
            label='Class',
            choices=class_name_choices,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )
        self.fields['section'] = forms.ChoiceField(
            choices=section_choices,
            required=False,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )

        def clean(self):
            cleaned_data = super().clean()
            class_name = cleaned_data.get('class_name')
            section = cleaned_data.get('section')
            if not ClassSection.objects.filter(class_number=class_name, section=section).exists():
                self.add_error('section', 'Section does not exist for the selected class')
        

class TimetableForm(forms.ModelForm):
    class Meta:
        model = Timetable
        fields = ['day_of_week', 'period_name', 'start_time', 'end_time', 'teacher_id', 'class_name', 'section']
        labels = {
            'day_of_week': 'Day of Week',
            'period_name': 'Period Name',
            'start_time': 'Start Time',
            'end_time': 'End Time',
            'class_name': 'Class',
            'section': 'Section',
        }
        widgets = {
            'start_time': forms.TimeInput(attrs={'type': 'time'}),
            'end_time': forms.TimeInput(attrs={'type': 'time'}),
        }

    def clean(self):
        cleaned_data = super().clean()
        start_time = cleaned_data.get('start_time')
        end_time = cleaned_data.get('end_time')
        if start_time and end_time and start_time >= end_time:
            self.add_error('end_time', 'End time must be after start time')

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        class_name_choices = [(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()]
        section_choices = [(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()]
        period_choices = [(None, "Select a Period")] + [(period.period_id, period.period_name) for period in PeriodTable.objects.all()]
        self.fields['class_name'] = forms.ChoiceField(
            label='Class',
            choices=class_name_choices,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )
        self.fields['section'] = forms.ChoiceField(
            choices=section_choices,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )
        teacher_choices = [(None, "Select a Teacher")] + [(teacher.teacher_id, f"{teacher.name} - {teacher.teacher_id}") for teacher in TeacherDetails.objects.all()]
        self.fields['teacher_id'] = forms.ChoiceField(
            label='Teacher',
            required=False,
            choices=teacher_choices,
            initial=None,
        )
        self.fields['period_name'] = forms.ChoiceField(
            label='Period Name',
            choices=period_choices,
            initial=None,
        )


class ClassSectionForm(forms.ModelForm):
    class UpperCase(forms.CharField):
        def to_python(self,value):
            return value.upper()

    class_number = forms.CharField(
            label='Class',
            max_length=20,
            widget=forms.TextInput(attrs={'placeholder': 'Enter the Staff Id'})
        )

    section = UpperCase(max_length=1, validators=[
        RegexValidator(
            regex=r'^[A-Za-z]$',
            message='Section should be a single letter.',
            code='invalid_section'
        )
    ])

    class Meta:
        model = ClassSection
        fields = ['class_number', 'section']

    def clean(self):
        cleaned_data = super().clean()
        class_number = cleaned_data.get('class_number')
        section = cleaned_data.get('section')
        if ClassSection.objects.filter(class_number=class_number, section=section).exists():
            self.add_error('section', 'Class and section combination already exists.')


class OthersDetailsForm(forms.ModelForm):
    class UpperCase(forms.CharField):
        def to_python(self,value):
            return value.upper()

    name = UpperCase(
        label = 'Full Name',
        max_length=50, validators=[
        RegexValidator(
            regex=r'^[A-Za-z\s]+$',
            message='Name should only contain letters and spaces.',
            code='invalid_name'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Name'})
        )
    staff_id = forms.CharField(
        label = 'Staff Id',
        max_length=20,
        widget=forms.TextInput(attrs={'placeholder':'Enter the Staff Id'})
        )
    tag_id = forms.CharField(
        max_length = 10,
        min_length = 10,
        validators=[
        RegexValidator(
            regex=r'^\d{10}$',
            message='Tag ID should be 10 digits and entirly numeric.',
            code='invalid_tag_id'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Tag Id'})
        )
    mobno = forms.CharField(
        label = 'Mobile Number',
        max_length = 10,
        min_length = 10,
        required = True,
        validators=[
            RegexValidator(
                regex=r'^\d{10}$',  # Exactly 10 digits
                message='Mobile number should be 10 digits.',
                code='invalid_mob_no'
        )],
        widget=forms.TextInput(attrs={'max_length':10,'min_length':10,'placeholder':'Enter the mobile number'})
        )

    email = forms.EmailField(
        required = False,
        validators=[EmailValidator()],
        widget=forms.EmailInput(attrs={'placeholder': 'Enter the Mail'})
    )

    class Meta:
        model = OthersDetails
        exclude = ['tag_id_hex']

    def save(self, commit=True):
        instance = super().save(commit=False)
        instance.tag_id_hex = hex(instance.tag_id)[2:]  # Convert tag_id to hexadecimal and remove '0x' prefix
        if commit:
            instance.save()
        return instance


class TeacherDetailsForm(forms.ModelForm):
    class UpperCase(forms.CharField):
        def to_python(self,value):
            return value.upper()

    name = UpperCase(
        label = 'Full Name',
        max_length=50, validators=[
        RegexValidator(
            regex=r'^[A-Za-z\s]+$',
            message='Name should only contain letters and spaces.',
            code='invalid_name'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Name'})
        )
    teacher_id = forms.CharField(
        label = 'Teacher Id',
        max_length=20,
        widget=forms.TextInput(attrs={'placeholder':'Enter the Teacher Id'})
        )
    tag_id = forms.CharField(
        max_length = 10,
        min_length = 10,
        validators=[
        RegexValidator(
            regex=r'^\d{10}$',
            message='Tag ID should be 10 digits and entirly numeric.',
            code='invalid_tag_id'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Tag Id'})
        )
    mobno = forms.CharField(
        label = 'Mobile Number',
        max_length = 10,
        min_length = 10,
        required = True,
        validators=[
            RegexValidator(
                regex=r'^\d{10}$',  # Exactly 10 digits
                message='Mobile number should be 10 digits.',
                code='invalid_mob_no'
        )],
        widget=forms.TextInput(attrs={'max_length':10,'min_length':10,'placeholder':'Enter the mobile number'})
        )

    email = forms.EmailField(
        required = True,
        validators=[EmailValidator()],
        widget=forms.EmailInput(attrs={'placeholder': 'Enter the Mail'})
    )

    class Meta:
        model = TeacherDetails
        exclude = ['tag_id_hex']

    def save(self, commit=True):
        instance = super().save(commit=False)
        instance.tag_id_hex = hex(instance.tag_id)[2:]  # Convert tag_id to hexadecimal and remove '0x' prefix
        if commit:
            instance.save()
        return instance


class StudentDetailsForm(forms.ModelForm):
    class UpperCase(forms.CharField):
        def to_python(self,value):
            return value.upper()

    name = UpperCase(
        label='Full Name',
        max_length=50,
        validators=[RegexValidator(
            regex=r'^[A-Za-z\s]+$',
            message='Name should only contain letters and spaces.',
            code='invalid_name'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Name'})
        )

    student_id = forms.CharField(
        max_length=20,
        widget=forms.TextInput(attrs={'placeholder':'Enter Student Id'})
        )

    tag_id = forms.CharField(
        max_length = 10,
        min_length = 10,
        validators=[
        RegexValidator(
            regex=r'^\d{10}$',
            message='Tag ID should be 10 digits and entirly numeric.',
            code='invalid_tag_id'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Tag Id'})
        )

    mobno = forms.CharField(
        max_length = 10,
        min_length = 10,
        validators=[
            RegexValidator(
                regex=r'^\d{10}$',  # Exactly 10 digits
                message='Mobile number should be exactly 10 digits and only Numbers.',
                code='invalid_mob_no'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Mobile Number'})
        )

    roll_no = forms.CharField(
        max_length = 3,
        required = False,
        validators=[
        RegexValidator(
            regex=r'^\d+$',
            message='Roll number should only contain digits.',
            code='invalid_roll_number'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Mobile Number'})
        )

    parent_name1 = forms.CharField(
        label = 'Parent Name',
        max_length=50, validators=[
        RegexValidator(
            regex=r'^[A-Za-z\s]+$',
            message='Name should only contain letters and spaces.',
            code='invalid_name'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Parent Name'})
        )

    parent_name2 = forms.CharField(
        label = 'Parent Name',
        max_length=50,required = False,
        validators=[
            RegexValidator(
                regex=r'^[A-Za-z\s]+$',
                message='Name should only contain letters and spaces.',
                code='invalid_name'
        )],
        widget=forms.TextInput(attrs={'placeholder':'Enter the Parent Name'})
        )
    
    email = forms.EmailField(
            validators=[EmailValidator()],
            widget=forms.EmailInput(attrs={'placeholder': 'Enter the Email'})
        )

    route_no = forms.CharField(
        required=False,
        label = 'Route Number',
        widget=forms.TextInput(attrs={'placeholder':'Enter the route number'})
        )

    stop_no = forms.IntegerField(
        required = False,
        label = 'Stop Number',
        widget=forms.TextInput(attrs={'placeholder':'Enter the stop number'})
        )

    profile_image = forms.ImageField(
        required=False,
        widget=forms.ClearableFileInput(attrs={'accept': 'image/*'}),
        label='Student Photo'
    )


    class Meta:
        model = StudentDetails                 
        exclude = ['tag_id_hex']

        labels = {
        'parent_relation1':'Relation',
        'parent_relation2':'Relation', 
        'class_name':'Class' ,
        'enabled':'Enable Status',
        'dob':'Date Of Birth',
        'doj':'Date Of Admission'  
        }

        widgets = {
        'dob': forms.DateInput(attrs={'type': 'date', 'max': date.today().strftime('%Y-%m-%d')}),
        'doj': forms.DateInput(attrs={'type': 'date', 'max': date.today().strftime('%Y-%m-%d')}),
        'address': forms.Textarea(attrs={'rows': 1,'max_length':500,'placeholder':'Enter student Address.'}),
        }  

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        class_name_choices = [(None, "Select a Class")] + [(choice, choice) for choice in ClassSection.objects.values_list('class_number', flat=True).distinct()]
        section_choices = [(None, "Select a Section")] + [(choice, choice) for choice in ClassSection.objects.values_list('section', flat=True).distinct()]

        self.fields['class_name'] = forms.ChoiceField(
            label='Class',
            choices=class_name_choices,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )

        self.fields['section'] = forms.ChoiceField(
            choices=section_choices,
            initial=None,  # Set initial value to None
            # required=False  # Allow None (empty) option
        )

    def save(self, commit=True):
        instance = super().save(commit=False)
        instance.tag_id_hex = hex(int(instance.tag_id))[2:]
        if instance.roll_no == '':
            instance.roll_no = None

        if commit:
            instance.save()
        return instance

 