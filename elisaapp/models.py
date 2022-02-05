from pyexpat import model
from statistics import mode
from unittest.util import _MAX_LENGTH
from django.db import models
<<<<<<< HEAD

# Library buat phone number
from phonenumber_field.modelfields import PhoneNumberField

=======

# Library buat phone number
from phonenumber_field.modelfields import PhoneNumberField

>>>>>>> 96f546e (login dan input surat)

#ROLE
class Role(models.Model):
    nama_role = models.CharField(max_length=50)
    fase = models.IntegerField(null=True)

    def __str__(self):
        return self.nama_role

#KETERANGAN
class Keterangan(models.Model):
    keterangan = models.CharField(max_length=50)

    def __str__(self):
        return self.keterangan

#SURAT
class Surat(models.Model):
<<<<<<< HEAD
    id_pic = models.CharField(max_length=16, null=True)
    nama_pic = models.CharField(max_length=50, null=True)
    instansi_asal = models.CharField(max_length=50, null=True)
    kontak_pic = PhoneNumberField(null=True)
    email_pic = models.EmailField(null=True)
    nomor_surat = models.CharField(max_length=50, null=True)
=======
>>>>>>> 96f546e (login dan input surat)
    tanggal_surat = models.DateField()
    tanggal_masuk = models.DateTimeField(auto_now_add=True, null=True)
    estimasi_deadline = models.DateField()
    nomor_surat = models.CharField(max_length=50, null=True)
    perihal = models.CharField(max_length=50)
<<<<<<< HEAD
    file_surat = models.FileField(upload_to='media/', null=True)
=======
    id_pic = models.CharField(max_length=16, null=True)
    nama_pic = models.CharField(max_length=50, null=True)
    kontak_pic = PhoneNumberField(null=True)
    email_pic = models.EmailField(null=True)
    instansi_asal = models.CharField(max_length=50, null=True)
    file_surat = models.FileField(upload_to='surat/', null=True)
>>>>>>> 96f546e (login dan input surat)

    def __str__(self):
        return self.perihal

#USER
class User(models.Model):
    nama_user = models.CharField(max_length=100)
    password_user = models.CharField(max_length=25)
    role_id = models.ForeignKey(Role, on_delete=models.CASCADE)

    def __str__(self):
        return self.nama_user

#PEJABAT
class Jabatan(models.Model):
    nama_jabatan = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_jabatan

#DISPOSISI1
class Disposisi1(models.Model):
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)

    def __str__(self):
        return self.keterangan_id

#DISPOSISI2
class Disposisi2(models.Model):
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()
<<<<<<< HEAD
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)

    def __str__(self):
        return self.keterangan_id

#DISPOSISI3
class Disposisi3(models.Model):
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()
=======
>>>>>>> 96f546e (login dan input surat)
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)

    def __str__(self):
        return self.keterangan_id

<<<<<<< HEAD
#DISPOSISI4
class Disposisi4(models.Model):
=======
#DISPOSISI3
class Disposisi3(models.Model):
>>>>>>> 96f546e (login dan input surat)
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)
<<<<<<< HEAD
=======

    def __str__(self):
        return self.keterangan_id

#DISPOSISI4
class Disposisi4(models.Model):
    surat_id = models.ForeignKey(Surat, on_delete=models.CASCADE)
    tanggal_disposisi = models.DateField()
    keterangan_id = models.ForeignKey(Keterangan, on_delete=models.CASCADE)
    catatan = models.CharField(max_length=100)
    tujuan = models.ForeignKey(Jabatan, on_delete=models.CASCADE)
>>>>>>> 96f546e (login dan input surat)

    def __str__(self):
        return self.keterangan_id
