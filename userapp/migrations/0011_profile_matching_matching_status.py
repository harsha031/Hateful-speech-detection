# Generated by Django 4.1.2 on 2022-10-20 05:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0010_profile_matching'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile_matching',
            name='matching_status',
            field=models.IntegerField(null=True),
        ),
    ]