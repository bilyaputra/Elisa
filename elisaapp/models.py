from pyexpat import model
from statistics import mode
from unittest.util import _MAX_LENGTH
from django.db import models
# Tambahan library buat phone number
from phonenumber_field.modelfields import PhoneNumberField

# Create your models here.
#PIC
class Pic(models.Model):
    nama_pic = models.CharField(max_length=50, null=True)
    instansi_asal = models.CharField(max_length=50)
    kontak_pic = PhoneNumberField(null=True)

    def __str__(self):
        return self.nama_pic

#ROLE
class Role(models.Model):
    nama_role = models.CharField(max_length=20)
    fase = models.IntegerField(null=True)

    def __str__(self):
        return self.nama_role

#KETERANGAN
class Keterangan(models.Model):
    keterangan = models.CharField(max_length=25)

    def __str__(self):
        return self.keterangan

#SURAT
class Surat(models.Model):
    pic_id = models.ForeignKey(Pic, on_delete=models.CASCADE)
    nomor_surat = models.CharField(max_length=50, null=True)
    tanggal_surat = models.DateField()
    tanggal_masuk = models.DateField()
    estimasi_deadline = models.DateField()
    perihal = models.CharField(max_length=50)

    def __str__(self):
        return self.perihal

#USER
class User(models.Model):
    nama_user = models.CharField(max_length=50)
    password_user = models.CharField(max_length=25)
    role_id = models.ForeignKey(Role, on_delete=models.CASCADE)

    def __str__(self):
        return self.nama_user

#DISPOSISI
class Disposisi(models.Model):
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()

    def __str__(self):
        return self.tanggal_disposisi