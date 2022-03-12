from dataclasses import field
from django import forms
from django.forms import ModelForm
from django import forms
import phonenumbers
from elisaapp.models import Surat, Disposisi1, Disposisi2, Disposisi3

class formSurat(ModelForm):
    class Meta:
        model = Surat
        exclude = ['status']

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

class formDisposisi1(ModelForm):
    class Meta:
        model = Disposisi1
        exclude = ['status']

        widgets = {
            'surat_id' : forms.Select({'class':'form-control'}),
            'keterangan_id' : forms.Select({'class':'form-control'}),
            'catatan' : forms.TextInput({'class':'form-control'}),
            'tujuan' : forms.Select({'class':'form-control'}),
        }

class formDisposisi2(ModelForm):
    class Meta:
        model = Disposisi2
        exclude = ['status']

        widgets = {
            'surat_id' : forms.Select({'class':'form-control'}),
            'keterangan_id' : forms.Select({'class':'form-control'}),
            'catatan' : forms.TextInput({'class':'form-control'}),
            'tujuan' : forms.Select({'class':'form-control'}),
        }

class formDisposisi3(ModelForm):
    class Meta:
        model = Disposisi3
        exclude = ['status']

        widgets = {
            'surat_id' : forms.Select({'class':'form-control'}),
            'keterangan_id' : forms.Select({'class':'form-control'}),
            'catatan' : forms.TextInput({'class':'form-control'}),
            'tujuan' : forms.Select({'class':'form-control'}),
        }