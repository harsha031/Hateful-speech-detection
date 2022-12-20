# Generated by Django 4.0.1 on 2022-11-03 05:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0017_audio_detection'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='post_audio',
            field=models.FileField(null=True, upload_to='audio/post'),
        ),
        migrations.AlterField(
            model_name='post',
            name='post_image',
            field=models.ImageField(null=True, upload_to='images/post'),
        ),
    ]
