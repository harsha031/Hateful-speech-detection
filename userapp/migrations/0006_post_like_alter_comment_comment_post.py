# Generated by Django 4.1.2 on 2022-10-17 06:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0005_comment'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='like',
            field=models.ManyToManyField(null=True, related_name='likes', to='userapp.usermodel'),
        ),
        migrations.AlterField(
            model_name='comment',
            name='comment_post',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='post_comment', to='userapp.post'),
        ),
    ]
