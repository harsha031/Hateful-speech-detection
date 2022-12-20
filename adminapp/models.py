from email.policy import default
from django.db import models
from userapp.models import *
# Create your models here.
class Toxicwords(models.Model):
          
    word_id = models.AutoField(primary_key=True)
    Toxic_categorey = models.CharField(max_length=100)
    Toxic_word = models.CharField(max_length=100)
    Toxic_word_added_date = models.DateField(auto_now_add=True)
    
    

    class Meta:
        db_table = 'Toxic_words_Details'
        
        
class warn(models.Model):
          
    warn_id = models.AutoField(primary_key=True)
    warned_by = models.CharField(default='Admin', max_length=100)
    warn_user =  models.ForeignKey(UserModel, on_delete=models.CASCADE)
    warn_for =  models.ForeignKey(Post, on_delete=models.CASCADE,null=True)
    warn_mssg = models.TextField(max_length=100)
    warned_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(default='warned', max_length=100,null=True)
    user_status = models.CharField(default='unseen', max_length=100,null=True)
    

    class Meta:
        db_table = 'warn_Details'        