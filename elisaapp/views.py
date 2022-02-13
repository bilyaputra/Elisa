from django.shortcuts import render
from elisaapp.models import Surat
from elisaapp.forms import FormSurat
from django.contrib.auth.decorators import login_required
from django.conf import settings

# tes
# def input(request):
#     noSurat = "Masukkan Nomor Surat"
#     pic = "orang"
#     noHP = "0812345678"
#     tanggalSurat = "01-01-2022"
#     tanggalMasuk = "02-01-2022"
#     tanggalDeadline = "03-01-2022"
#     perihal = "Undangan Wisuda"

#     idSurat = {
#         'noSurat' : noSurat,
#         'pic' : pic,
#         'tanggalSurat' : tanggalSurat,
#         'tanggalMasuk' : tanggalMasuk,
#         'tanggalDeadline' : tanggalDeadline,
#         'perihal' : perihal

#     }
#     return render(request, 'input.html', idSurat)

# def surat (request):
#     surats = Surat.objects.all()
#     konteks = {
#         'surat' : surat
#     }
#     return render (request, 'surat.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def input_surat(request):
    if request.POST:
        form = FormSurat(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            form = FormSurat()
            pesan = "Data berhasil disimpan"

            konteks = {
                'form' : form,
                'pesan' : pesan,
            }

            return render(request, 'input_surat.html', konteks)
    else:
        form = FormSurat()

        konteks = {
            'form' : form,
        }

    return render(request,'input_surat.html', konteks)

def dashboard(request):
    surats = Surat.objects.all()

    konteks = {
        'surats' : surats,
    }

    return render(request, 'dashboard.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def arsip(request):
    surats = Surat.objects.all()

    konteks = {
        'surats' : surats,
    }

    return render(request, 'arsip.html', konteks)
