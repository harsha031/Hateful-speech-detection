# Generated by Django 4.0.1 on 2022-11-03 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0003_alter_warn_warn_mssg'),
    ]

    operations = [
        migrations.AlterField(
            model_name='warn',
            name='warned_date',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
