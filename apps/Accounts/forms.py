from django import forms
from django.contrib.auth.models import User
from .models import Profile

class SignupForm(forms.ModelForm):
    phone_number = forms.CharField(max_length=10)
    user_type = forms.ChoiceField(choices=Profile.USER_TYPE_CHOICES)
    id_number = forms.IntegerField()

    class Meta:
        model = User
        fields = ('first_name', 'username', 'password', 'email', 'phone_number', 'user_type','id_number')



class LoginAccountForm(forms.ModelForm):
    username = forms.CharField(max_length=100)
    email = forms.CharField(max_length=100)
    mob_no = forms.IntegerField(max_length=10)

