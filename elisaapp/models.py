from pyexpat import model
from statistics import mode
from unittest.util import _MAX_LENGTH
from django.db import models

# Library buat phone number
from phonenumber_field.modelfields import PhoneNumberField

#KETERANGAN
class Keterangan(models.Model):
    keterangan = models.CharField(max_length=50)

    def __str__(self):
        return self.keterangan

#SURAT
class Surat(models.Model):
    tanggal_surat = models.DateField()
    tanggal_masuk = models.DateTimeField(auto_now_add=True, null=True)
    estimasi_deadline = models.DateField()
    nomor_surat = models.CharField(max_length=50, null=True)
    perihal = models.CharField(max_length=50)
    nama_pic = models.CharField(max_length=50, null=True)
    kontak_pic = PhoneNumberField(null=True)
    email_pic = models.EmailField(null=True)
    instansi_asal = models.CharField(max_length=50, null=True)
    file_surat = models.FileField(upload_to='surat/', null=True)
    status = models.IntegerField(default=0)

    def __str__(self):
        return self.perihal

#PEJABAT
class Jabatan(models.Model):
    nama_jabatan = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_jabatan

#DISPOSISI1
class Disposisi1(models.Model):
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateTimeField(auto_now_add=True, null=True)
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100, null=True, blank=True)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)
    status = models.IntegerField(default=0)

    def __str__(self):
        return self.keterangan_id

#DISPOSISI2
class Disposisi2(models.Model):
    surat_id = models.ForeignKey(Disposisi1, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateTimeField(auto_now_add=True, null=True)
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100, null=True, blank=True)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)
    status = models.IntegerField(default=0)

    def __str__(self):
        return self.keterangan_id

#DISPOSISI3
class Disposisi3(models.Model):
    surat_id = models.ForeignKey(Disposisi2, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateTimeField(auto_now_add=True, null=True)
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100, null=True, blank=True)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)
    status = models.IntegerField(default=0)

    def __str__(self):
        return self.keterangan_id

#Luaran
class Luaran(models.Model):
    nomor_masuk = models.ForeignKey(Disposisi3, on_delete=models.CASCADE)
    nomor_keluar = models.CharField(max_length=50)
    upload_luaran = models.FileField(upload_to='luaran/', null=True, blank=True)

    def __str__(self):
        return self.nomor_keluar
