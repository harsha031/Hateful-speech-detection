# Generated by Django 4.1.2 on 2022-10-21 10:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0014_rename_friend_request_other_user_friend_request_reciver_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='liked',
            field=models.ManyToManyField(related_name='likes', to='userapp.usermodel'),
        ),
    ]