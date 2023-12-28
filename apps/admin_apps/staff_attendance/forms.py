from django import forms
from datetime import datetime

class MonthForm(forms.Form):
    month = forms.CharField(
        max_length=50,
        required=True,
        label='Month',
        widget=forms.TextInput(attrs={'type': 'month', 'max': datetime.now().strftime('%Y-%m')}),
    )