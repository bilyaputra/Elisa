from django.shortcuts import render
from elisaapp.models import Surat

def login(request):
    return render(request,'login.html')

def input(request):
    noSurat = "Masukkan Nomor Surat"
    pic = "orang"
    noHP = "0812345678"
    tanggalSurat = "01-01-2022"
    tanggalMasuk = "02-01-2022"
    tanggalDeadline = "03-01-2022"
    perihal = "Undangan Wisuda"

    idSurat = {
        'noSurat' : noSurat,
        'pic' : pic,
        'tanggalSurat' : tanggalSurat,
        'tanggalMasuk' : tanggalMasuk,
        'tanggalDeadline' : tanggalDeadline,
        'perihal' : perihal

    }
    return render(request, 'input.html', idSurat)

def surat (request):
    surats = Surat.objects.all()
    konteks = {
        'surat' : surat
    }
    return render (request, 'surat.html', konteks)


def input_surat(request):
    return render(request,'input_surat.html')

def dashboard(request):
    return render(request,'dashboard.html')