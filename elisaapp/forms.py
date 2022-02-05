from dataclasses import field
from django import forms
from django.forms import ModelForm
from django import forms
import phonenumbers
from elisaapp.models import Surat, Role

class FormSurat(ModelForm):
    class Meta:
        model = Surat
        fields = '__all__'

        widgets = {
            'tanggal_surat' : forms.DateTimeInput({'class':'form-control datepicker'}),
            'estimasi_deadline' : forms.TextInput({'class':'form-control datepicker'}),
            'nomor_surat' : forms.TextInput({'class':'form-control'}),
            'perihal' : forms.TextInput({'class':'form-control'}),
            'id_pic' : forms.TextInput({'class':'form-control'}),
            'nama_pic' : forms.TextInput({'class':'form-control'}),
            'kontak_pic' : forms.TextInput({'class':'form-control'}),
            'email_pic' : forms.TextInput({'class':'form-control'}),
            'instansi_asal' : forms.TextInput({'class':'form-control'}),
        }

class formRole(ModelForm):
    class Meta:
        model = Role
        fields = '__all__'

        widgets = {
            'nama_role' : forms.TextInput({'class':'form-control'}),
            'fase' : forms.NumberInput({'class':'form-control'}),
        }