# Generated by Django 4.0.1 on 2022-11-03 09:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0002_warn'),
    ]

    operations = [
        migrations.AlterField(
            model_name='warn',
            name='warn_mssg',
            field=models.TextField(max_length=100),
        ),
    ]
