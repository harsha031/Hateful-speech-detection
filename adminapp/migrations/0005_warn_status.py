# Generated by Django 4.0.1 on 2022-11-03 10:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminapp', '0004_alter_warn_warned_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='warn',
            name='status',
            field=models.CharField(default='warned', max_length=100, null=True),
        ),
    ]
