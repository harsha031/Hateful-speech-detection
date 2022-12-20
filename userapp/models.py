from django.db import models


class UserModel(models.Model):
          
    user_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=100)
    user_display_name = models.CharField(max_length=100)
    
    user_email = models.EmailField(max_length=100)
    user_password = models.CharField(max_length=100)
    user_date_of_birth = models.DateField()
    user_contact = models.CharField(max_length=15)
    user_city = models.CharField(max_length=100)
    user_image = models.ImageField(upload_to='images/user')
    user_status = models.CharField(default='Pending', max_length=50)
    user_toxicity_status = models.CharField(default='Clean', max_length=50,null=True)
    

    class Meta:
        db_table = 'User_Details'

class I_Profile(models.Model):
    i_profile_id = models.AutoField(primary_key=True)
    i_profile_user = models.ForeignKey(UserModel, on_delete=models.CASCADE)
    i_hobbies = models.CharField(max_length=100,null=True)
    i_sports = models.CharField(max_length=100,null=True)
    i_food_taste = models.CharField(max_length=100,null=True)
    i_personality = models.CharField(max_length=100,null=True)
    i_Job_field = models.CharField(max_length=100,null=True)
    class Meta:
        db_table = 'i_profile_Details'

class Profile_Matching(models.Model):
    matching_id=models.AutoField(primary_key=True)
    matching_user=models.ForeignKey(UserModel, on_delete=models.CASCADE)
    matching_status=models.IntegerField(null=True)
    class Meta:
        db_table = 'profile_matching_Details'

class Friend_Request(models.Model):
    friend_request_id = models.AutoField(primary_key=True)
    sender = models.ForeignKey(UserModel,related_name='user_send_request', on_delete=models.CASCADE)
    reciver = models.ForeignKey(UserModel,related_name='user_recive_request', on_delete=models.CASCADE,null=True)
    
    friend_request_status = models.CharField (default='Sent', max_length=100)
        
class Feedback(models.Model):
    feed_desc = models.TextField()
    feed_rating = models.CharField(default='0', max_length=100)
    feedback_sentiment = models.CharField(max_length=50)
    feedback_date = models.DateField(auto_now_add=True)
    feedback_user = models.ForeignKey(UserModel, on_delete=models.CASCADE, related_name='user_feedbacks')

    class Meta:
        db_table = 'feedback_details'
        
class Post(models.Model):
    post_id = models.AutoField(primary_key=True)
    post_image = models.ImageField(upload_to='images/post', null=True)
    post_audio = models.FileField(upload_to='audio/post', null=True)
    post_video = models.FileField(upload_to='video/post', null=True) 
    converted_text = models.TextField(null=True)
    toxic_status = models.CharField(max_length=50,null=True)
    post_desc = models.TextField()
    post_date = models.DateField(auto_now_add=True)
    post_user = models.ForeignKey(UserModel, on_delete=models.CASCADE, related_name='user_post',null=True)
    liked = models.ManyToManyField(UserModel,  related_name ='likes') 
    
    class Meta:
        db_table = 'post_details'
    
    @property
    def num_likes(self):
        return self.liked.all().count()
 
LIKE_CHOICES = (
    ('Like','Like'),
    ('Unlike','Unlike'),
)
 
class audio_converstion(models.Model):
    audio_id = models.AutoField(primary_key=True)
    audio = models.FileField(upload_to='audio/converstion')
    
    class Meta:
        db_table = 'audio_converstion' 
            
class Like(models.Model):
    user=models.ForeignKey(UserModel, on_delete=models.CASCADE)
    post=models.ForeignKey(Post, on_delete=models.CASCADE)
    value=models.CharField(choices=LIKE_CHOICES, default='Like',max_length=10)
    
    def __str__(self):
        return str(self.post)


        
class Comment(models.Model):
    comment_id = models.AutoField(primary_key=True)
    comment = models.TextField()
    comment_date = models.DateField(auto_now_add=True)
    comment_user = models.ForeignKey(UserModel, on_delete=models.CASCADE, related_name='user_comment')
    comment_post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='post_comment')
    
    class Meta:
        db_table = 'comment_details'
       
                  
class Audio_Detection(models.Model):
    comment_id = models.AutoField(primary_key=True)
    converted_text = models.TextField()
    uploaded_user = models.ForeignKey(UserModel, on_delete=models.CASCADE, related_name='uploaded_user')
    toxic_status=models.CharField(max_length=10)

    
    class Meta:
        db_table = 'audio_detection_details'                  