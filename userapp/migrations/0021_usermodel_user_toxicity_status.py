# Generated by Django 4.0.1 on 2022-11-03 07:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0020_alter_post_converted_text'),
    ]

    operations = [
        migrations.AddField(
            model_name='usermodel',
            name='user_toxicity_status',
            field=models.CharField(default='Clean', max_length=50, null=True),
        ),
    ]