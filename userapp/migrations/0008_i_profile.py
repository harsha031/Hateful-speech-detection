# Generated by Django 4.1.2 on 2022-10-18 11:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0007_rename_like_post_liked_like'),
    ]

    operations = [
        migrations.CreateModel(
            name='I_Profile',
            fields=[
                ('i_profile_id', models.AutoField(primary_key=True, serialize=False)),
                ('i_hobbies', models.CharField(max_length=100)),
                ('i_sports', models.CharField(max_length=100)),
                ('i_food_taste', models.CharField(max_length=100)),
                ('i_personality', models.CharField(max_length=100)),
                ('i_Job_field', models.CharField(max_length=100)),
                ('i_profile_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='userapp.usermodel')),
            ],
            options={
                'db_table': 'i_profile_Details',
            },
        ),
    ]
