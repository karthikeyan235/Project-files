from django import forms
from .models import GateConfigMaster

class GateConfigForm(forms.ModelForm):
    class Meta:
        model = GateConfigMaster
        fields = '__all__'
        widgets = {
            'gatereaderid': forms.TextInput(attrs={'type': 'number', 'min': 1}),
            'gatereadername': forms.TextInput(attrs={'placeholder': 'Enter gate reader name'}),
            'simno': forms.TextInput(attrs={'type': 'number', 'min': 1}),
            'ipaddress': forms.TextInput(attrs={'placeholder': 'Enter IP address'}),
            'ssid': forms.TextInput(attrs={'placeholder': 'Enter SSID'}),
            'subnetmask': forms.TextInput(attrs={'placeholder': 'Enter subnet mask'}),
            'defaultgateway': forms.TextInput(attrs={'placeholder': 'Enter default gateway'}),
            'routerpassword': forms.TextInput(attrs={'placeholder': 'Enter router password'}),
            'lat': forms.NumberInput(attrs={'step': 'any'}),
            'lang': forms.NumberInput(attrs={'step': 'any'}),
            'updatestatus': forms.CheckboxInput(),
        }

    
