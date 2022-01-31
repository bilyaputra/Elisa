# Generated by Django 4.0 on 2022-01-21 08:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('elisaapp', '0003_keterangan_role'),
    ]

    operations = [
        migrations.CreateModel(
            name='Surat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tanggalSurat', models.DateField()),
                ('tanggalMasuk', models.DateField()),
                ('estimasiDeadline', models.DateField()),
                ('perihal', models.CharField(max_length=50)),
                ('pic_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='elisaapp.pic')),
            ],
        ),
    ]
