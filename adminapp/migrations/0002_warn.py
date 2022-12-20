# Generated by Django 4.0.1 on 2022-11-03 09:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0021_usermodel_user_toxicity_status'),
        ('adminapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='warn',
            fields=[
                ('warn_id', models.AutoField(primary_key=True, serialize=False)),
                ('warned_by', models.CharField(default='Admin', max_length=100)),
                ('warn_mssg', models.CharField(max_length=100)),
                ('warned_date', models.DateField(auto_now_add=True)),
                ('warn_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='userapp.usermodel')),
            ],
            options={
                'db_table': 'warn_Details',
            },
        ),
    ]