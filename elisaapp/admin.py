from re import search
from django.contrib import admin
from elisaapp.models import Surat
from elisaapp.models import Keterangan
from elisaapp.models import Jabatan


class SuratAdmin(admin.ModelAdmin):
    list_display = ['nama_pic', 'instansi_asal', 'tanggal_surat', 'nomor_surat', 'perihal', 'tanggal_masuk', 'estimasi_deadline']
    search_fields = ['nomor_surat']
    # list_filter = ['perihal']
    list_per_page = 10


# Register your models here.
admin.site.register(Surat, SuratAdmin)
admin.site.register(Keterangan)
admin.site.register(Jabatan)
