# Generated by Django 4.0 on 2022-01-21 07:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('elisaapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pic',
            name='kontak_pic',
            field=models.IntegerField(null=True),
        ),
    ]
