from tkinter.messagebox import RETRY
from django.shortcuts import redirect, render
from elisaapp.models import Surat, Disposisi1, Disposisi2, Disposisi3, Luaran
from elisaapp.forms import *
from django.contrib.auth.decorators import login_required
from django.conf import settings

@login_required(login_url=settings.LOGIN_URL)
def input_surat(request):
    grup = request.user.groups.all().first()
    if grup.name != "adum":
        return redirect('/dashboard-admin/')
    
    if request.POST:
        form = formSurat(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            form = formSurat()
            pesan = 1

            konteks = {
                'form' : form,
                'pesan' : pesan,
            }

            return render(request, 'input_surat.html', konteks)
        else:
            form = formSurat()
            pesan = 0

            konteks = {
                'form' : form,
                'pesan' : pesan,
            }

            return render(request, 'input_surat.html', konteks)
    else:
        form = formSurat()

        konteks = {
            'form' : form,
        }

        return render(request,'input_surat.html', konteks)

def dashboard(request):
    surats = Surat.objects.filter(status=0)
    diss1 = Disposisi1.objects.filter(status=0)
    diss2 = Disposisi2.objects.filter(status=0)
    diss3 = Disposisi3.objects.filter(status=0)
    diss4 = Luaran.objects.all()

    konteks = {
        'surats' : surats,
        'diss1' : diss1,
        'diss2' : diss2,
        'diss3' : diss3,
        'diss4' : diss4,
    }

    return render(request, 'dashboard.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def dashAdmin(request):
    grup = request.user.groups.all().first()
    surats = Surat.objects.filter(status=0)
    diss1 = Disposisi1.objects.filter(status=0)
    diss2 = Disposisi2.objects.filter(status=0)
    diss3 = Disposisi3.objects.filter(status=0)
    diss4 = Luaran.objects.all()

    konteks = {
        'surats' : surats,
        'diss1' : diss1,
        'diss2' : diss2,
        'diss3' : diss3,
        'diss4' : diss4,
        'grup' : grup,
    }

    return render(request, 'dashboard_admin.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def arsip(request):
    grup = request.user.groups.all().first()
    if grup.name != "adum":
        return redirect('/dashboard-admin/')
    
    surats = Luaran.objects.all()

    konteks = {
        'surats' : surats,
    }

    return render(request, 'arsip.html', konteks)

# disposisi function
# @login_required(login_url=settings.LOGIN_URL)
# def rektor(request):
#     grup = request.user.groups.all().first()
#     if request.POST:
#         form = formDisposisi1(request.POST)
#         if form.is_valid():
#             surat = Surat.objects.get(id=request.POST.get("surat_id"))
#             surat.status = 1
#             surat.save()
#             form.save() 
#             form = formDisposisi1()
#             pesan = "Surat berhasil didisposisi"
#             surats = Surat.objects.filter(status=0)

#             konteks = {
#                 'form' : form,
#                 'pesan' : pesan,
#                 'surats' : surats,
#                 'grup' : grup,
#             }

#             return render(request, 'disposisi.html', konteks)
#     else:
#         surats = Surat.objects.filter(status=0)
#         form = formDisposisi1()

#         konteks = {
#             'form' : form,
#             'surats' : surats,
#             'grup' : grup,
#         }

#         return render(request, 'disposisi.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def wr(request):
    grup = request.user.groups.all().first()
    if request.POST:
        form = formDisposisi2(request.POST)
        if form.is_valid():
            surat = Disposisi1.objects.get(id=request.POST.get("surat_id"))
            surat.status = 1
            surat.save()
            form.save() 
            form = formDisposisi2()
            pesan = "Surat berhasil didisposisi"
            surats = Disposisi1.objects.filter(status=0)

            konteks = {
                'form' : form,
                'pesan' : pesan,
                'surats' : surats,
                'grup' : grup,
            }

            return render(request, 'disposisi.html', konteks)
    else:
        surats = Disposisi1.objects.filter(status=0)
        form = formDisposisi2()

        konteks = {
            'form' : form,
            'surats' : surats,
            'grup' : grup,
        }

        return render(request, 'disposisi.html', konteks)

def dekan(request):
    grup = request.user.groups.all().first()
    if request.POST:
        form = formDisposisi3(request.POST)
        if form.is_valid():
            surat = Disposisi2.objects.get(id=request.POST.get("surat_id"))
            surat.status = 1
            surat.save()
            form.save() 
            form = formDisposisi3()
            pesan = "Surat berhasil didisposisi"
            surats = Disposisi2.objects.filter(status=0)

            konteks = {
                'form' : form,
                'pesan' : pesan,
                'surats' : surats,
                'grup' : grup,
            }

            return render(request, 'disposisi.html', konteks)
    else:
        surats = Disposisi2.objects.filter(status=0)
        form = formDisposisi3()

        konteks = {
            'form' : form,
            'surats' : surats,
            'grup' : grup,
        }

        return render(request, 'disposisi.html', konteks)

@login_required(login_url=settings.LOGIN_URL)
def disposisi(request):
    grup = request.user.groups.all().first()

    if grup.name == 'rektor':
        return rektor(request)
    elif grup.name == 'wr':
        return wr(request)
    elif grup.name == 'dekan':
        return dekan(request)
    else:
        return redirect('/dashboard-admin/')

@login_required(login_url=settings.LOGIN_URL)
def output(request):
    grup = request.user.groups.all().first()
    if grup.name != 'adum':
        return redirect('/dashboard-admin/')

    if request.POST:
        form = formLuaran(request.POST, request.FILES)
        if form.is_valid():
            surat = Disposisi3.objects.get(id=request.POST.get("nomor_masuk"))
            surat.status = 1
            surat.save()
            form.save() 
            form = formLuaran()
            pesan = "Surat berhasil didisposisi"
            surats = Disposisi3.objects.filter(status=0)

            konteks = {
                'form' : form,
                'pesan' : pesan,
                'surats' : surats,
            }

            return render(request, 'output.html', konteks)
        
    else:
        surats = Disposisi3.objects.filter(status=0)
        form = formLuaran()

        konteks = {
            'form' : form,
            'surats' : surats,
        }

        return render(request, 'output.html', konteks)



# fungsi nyoba nyoba
@login_required(login_url=settings.LOGIN_URL)
def rektor(request):
    grup = request.user.groups.all().first()
    if request.POST:
        form = formDisposisi1(request.POST)
        if form.is_valid():                
            surat = Surat.objects.get(id=request.POST.get("surat_id"))
            surat.status = 1
            surat.save()
            form.save() 
            keterangan = request.POST.get("keterangan_id")
            if keterangan == 8:
                print(keterangan)
                # simpan ke disposisi2
                form = formDisposisi2(Disposisi1.objects.get(surat_id=request.POST.get("surat_id")))
                surat = Disposisi1.objects.get(surat_id=request.POST.get("Surat_id"))
                idDis1 = surat.id
                surat.status = 1
                surat.save()
                form.save()

                # simpan ke disposisi 3
                form = formDisposisi3(Disposisi2.objects.get(surat_id=idDis1))
                surat = Disposisi2.objects.get(surat_id=idDis1)
                surat.status = 1
                surat.save()
                form.save()
            
            form = formDisposisi1()
            pesan = "Surat berhasil didisposisi"
            surats = Surat.objects.filter(status=0)

            konteks = {
                'form' : form,
                'pesan' : pesan,
                'surats' : surats,
                'grup' : grup,
            }

            return render(request, 'disposisi.html', konteks)
    else:
        surats = Surat.objects.filter(status=0)
        form = formDisposisi1()

        konteks = {
            'form' : form,
            'surats' : surats,
            'grup' : grup,
        }

        return render(request, 'disposisi.html', konteks)

def coba(request):
    surats = Disposisi3.objects.filter(status=0)
    form = formLuaran()

    konteks = {
        'surats' : surats,
        'form' : form,
    }

    return render(request, 'coba.html', konteks)

def tes(request):
    grup = request.user.groups.all().first()
    yeah = grup.name
    konteks = {
        'grup' : yeah,
    }
    return render(request, 'tes.html', konteks)

    
    # if grup.name =='rektor':
    #     return render(request, 'tes.html')

    # else:
    #     return render(request, 'coba.html')

    # userLogin = request.user
    # groups = userLogin.groups.all()
    # for group in groups:
    #     grup = group
    
    # if grup.name == 'rektor':
    #     return render(request, 'disposisi.html')
    # elif grup.name == 'wr':
    #     return render(request, 'tes.html')
    # else:
    #     return render(request, 'coba.html')
