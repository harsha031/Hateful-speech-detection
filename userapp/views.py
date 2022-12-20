from email import message
from django.contrib import messages
from urllib.request import Request
from django.dispatch import receiver
from django.shortcuts import get_object_or_404, redirect, render
from userapp.models import *
from adminapp.models import *
from textblob import TextBlob
from django.core.paginator import Paginator
import speech_recognition as sr
from pydub import AudioSegment
from pydub.playback import play
import moviepy.editor
from tkinter.filedialog import *


def user_login(req):
          if req.method == 'POST':
                    email=req.POST.get('email')
                    password=req.POST.get('password')
                    try:
                            user = UserModel.objects.get(user_email=email, user_password=password)
                            
                            if user.user_status == 'Accepted' and user.user_toxicity_status =='Clean':
                                    req.session['user_id'] = user.user_id
                                    messages.success(req,'Successfully Login')
                                    return redirect('user_post')
                            elif user.user_status == 'Accepted' and user.user_toxicity_status == 'Blocked':
                                    messages.warning(req, 'Admin has Blocked You, so you cannot login')               
                            elif user.user_status == 'Pending' and user.user_toxicity_status =='Clean':
                                    messages.info(req, 'Your request is in pending, please wait for Admin Approval')
                            elif user.user_status == 'Restricted' or user.user_toxicity_status =='Clean':
                                    messages.warning(req, 'Your request is Restricted, so you cannot login')
                
                    except:
                            messages.error(req, 'Invalid Credentials')
                            return redirect('user_login')
          
          return render (req,'main/home-user-login.html')
                              




            

def user_register(req):
       
          if req.method == 'POST' and req.FILES["image"]:
                    
                    fullname = req.POST.get('fullname')
                    displayname = req.POST.get('displayname')
                    email = req.POST.get('email')
                    password = req.POST.get('password')
                    contact = req.POST.get('contact')
                    date_of_birth = req.POST.get('date')
                    city = req.POST.get('city')
                    image = req.FILES['image']
                    
                    print(fullname,displayname,email,password,contact,date_of_birth,city,image)
                    user_i= UserModel(user_name=fullname, user_display_name=displayname, user_email=email, user_password=password, user_contact=contact, user_date_of_birth=date_of_birth, user_city=city, user_image=image)
                    user_i.save()
                    I_Profile.objects.create(i_profile_user=user_i)
                    messages.success(req,'Registration Successfully. Wait For Approval')
                    
          
          return render (req,'main/home-user-register.html')
                    
   

def user_post(req):
        print('khbckbdbc')
        
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        print('postttttttttt')
        
        if req.method == 'POST':
                print('posttttt22222222222')
                
                post_desc=req.POST.get('desc')
                print('postttt333333333333')
                
                if len(req.FILES) != 0:
                        print('postttt44444444444')
                        
                        file=req.FILES['file']
                        print('postttt44444444444')
                        
                        filename = file.name
                        
                        print('postttt44444444444')
                        if filename and filename.rsplit('.',1)[1].lower() in ['mp4',]:
                                video = audio_converstion.objects.create(audio=file)
                                print(type(file))
                                file=str(video.audio)
                                print(file,type(file),filename,type(filename))
                                video=moviepy.editor.VideoFileClip('./media/'+file)
                                audio=video.audio
                                audio.write_audiofile('testingvideo.wav')
                                r = sr.Recognizer()
                                with sr.AudioFile('testingvideo.wav') as source:
                                        audio_text = r.listen(source)
                                        try:
                                                print('converting')
                                                text = r.recognize_google(audio_text)
                                                converted_text = str(text).lower()
                                                print('Working on...')
                                                print(converted_text,'tesxtttttt')
                                                print(text,'tesing video')
                                                toxic_words = Toxicwords.objects.all()
                                                print(toxic_words,'testongggggggggg')
                                                toxic_status = 'Clean'
                                                message = "Post Uploaded Successfully"
                                                for i in toxic_words:
                                                        print(i,'heyyyyyyyyyyyy')
                                                        if i.Toxic_word in converted_text:
                                                                print(i,'toxic')
                                                                toxic_status = 'Toxic'
                                                                message = 'You Post contains offensive content. Your Upload is Declined'
                                                Post.objects.create(post_user=user,post_desc=post_desc,post_video=file,converted_text=converted_text,toxic_status=toxic_status)
                                                messages.info(req, message)
                                                return redirect('user_post')
                                        except:
                                                print('Not working...')
                               
                        
if filename and filename.rsplit('.',1)[1].lower() in ['wav','aac','mp3','pcm','aiff','aac']:
                                print('postttt44444444444')
                               
                                r = sr.Recognizer()
                                with sr.AudioFile(file) as source:
                                        audio_text = r.listen(source)
                                        try:
                                                print('converting')
                                                text = r.recognize_google(audio_text)
                                                converted_text = str(text).lower()
                                                
                                                print('Working on...')
                                                print(text,'tesxtttttt')
                                                toxic_words = Toxicwords.objects.all()
                                                print(toxic_words,'testongggggggggg')
                                                toxic_status = 'Clean'
                                                message = "Post Uploaded Successfully"
                                                for i in toxic_words:
                                                        print(i,'heyyyyyyyyyyyy')
                                                        if i.Toxic_word in converted_text:
                                                                print(i,'toxic')
                                                                toxic_status = 'Toxic'
                                                                message = 'You Post contains offensive content. Your Upload is Declined'
                                                Post.objects.create(post_user=user,post_desc=post_desc,post_audio=file,converted_text=text,toxic_status=toxic_status)
                                                messages.info(req, message)
                                                return redirect('user_post')
                                        except:
                                                print('Not working...')     
                                                                
                        if filename and filename.rsplit('.',1)[1].lower() in ['jfif','jpg','jpeg','png','gif']:
                                Post.objects.create(post_user=user,post_desc=post_desc,post_image=file,toxic_status='Clean')
                else:
                        Post.objects.create(post_user=user,post_desc=post_desc,toxic_status='Clean')     
                        messages.success(req,'Successfully Posted')
                        return redirect('user_post')
        
                
        # post_like=Like.objects.filter(value='Like').count()
        # print(post_like)
        popular_post=Post.objects.filter(post_user_id=user).filter(toxic_status='Clean').order_by("-post_id")[0:3]
        comment=Comment.objects.all()
        
        fPosts=Post.objects.filter(toxic_status='Clean').order_by("-post_id")
        
        paginator = Paginator(fPosts,4)

        page_number = req.GET.get('page')
        post = paginator.get_page(page_number)
        notifications = warn.objects.filter(warn_user=user_id).filter(user_status='unseen').order_by("-warn_id")[0:1]
        print(notifications)


      
        return render (req,'user/user-post.html',{'k':user,'comment':comment,'post':post,'popular':popular_post,'notify':notifications})

# def audio_to_txt(req):
#         user_id = req.session['user_id']
#         user = UserModel.objects.get(user_id=user_id)
#         if req.method == 'POST' and req.FILES["audio"]:
#                 print('posttttt22222222222')
                
#                 audio=req.FILES['audio']
#         print(type(audio))
        
#         r = sr.Recognizer()
       
#         with sr.AudioFile(audio) as source:
#                 print('fetchinf ile')
#                 audio_text = r.listen(source)
#                 try:
                        
#                         print('converting')
#                         text = r.recognize_google(audio_text)

#                         print('Working on...')
#                         print(text)
#                 except:
#                         print('Not working...')     
                          
#         toxic_words = Toxicwords.objects.all()
       
#         for i in toxic_words:
#                 print(text,i,toxic_words,'hiiiiiiiii') 
#                 print(i.Toxic_word in text) 
#                 if i.Toxic_word in text:
#                         toxic_status='Toxic'
#                         audio_detection =Audio_Detection.objects.create(uploaded_user=user,converted_text=text,toxic_status=toxic_status)
#                         print(toxic_status)
#                         return redirect('user_post')
                        
                
#         toxic_status='Clean'        
#         audio_detection =Audio_Detection.objects.create(uploaded_user=user,converted_text=text,toxic_status=toxic_status)
#         return redirect('user_post')


def user_notifications(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        notifications = warn.objects.filter(warn_user=user_id).filter(user_status='unseen')
        print(notifications)
        return render (req, 'user/user-notifications.html',{'k':user,'notify':notifications})
        
def mark_as_read(req,id):
        mssg =warn.objects.get(warn_id=id)
        
        mssg.user_status ="mark as read"
        mssg.save(update_fields=["user_status"])
        mssg.save()
      
        #     messages.success(req,'Successfully Approved')
        return redirect('user_notifications')




def like_post(req):
        
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        if req.method == 'POST':
                post_id = req.POST.get('post_id')
                post_obj = Post.objects.get(post_id=post_id)
                
                if user in post_obj.liked.all():
                        post_obj.liked.remove(user)
                else:
                        post_obj.liked.add(user)
                                
                like,created = Like.objects.get_or_create(user=user,post_id=post_id)
                if not created:
                        if like.value == 'Like':
                                like.value = 'Unlike'
                        else:
                                like.value = 'Like'
                                
                like.save()        
        return redirect('user_post')
        

def comment(req,post_id):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        post=Post.objects.get(post_id=post_id)
        if req.method == 'POST':
                comment = req.POST.get('comment')
                Comment.objects.create(comment_user=user ,comment=comment,comment_post=post)
                
        
                
        return redirect('user_post')
def user_myprofile(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        i_profile = I_Profile.objects.get(i_profile_user=user_id)
        if req.method == 'POST':
                fullname = req.POST.get('fullname')
                email = req.POST.get('email')
                password = req.POST.get('password')
                contact = req.POST.get('contact')
                date_of_birth = req.POST.get('date')
                city = req.POST.get('city')
                if len(req.FILES) != 0:
                              image = req.FILES["image"]
                              user.user_name = fullname
                              user.user_email = email
                              user.user_password = password
                              user.user_date_of_birth = date_of_birth
                              user.user_contact = contact
                              user.user_city = city
                              user.user_image = image
                              user.save()
                else:
                              user.user_name = fullname
                              user.user_email = email
                              user.user_password = password
                              user.user_date_of_birth = date_of_birth
                              user.user_contact = contact
                              user.user_city = city
                              user.save()
                              
                messages.success(req,'Updated Successfully')
                              
                return redirect('user_myprofile')
        
                
        
        
        return render (req,'user/user-myprofile.html',{'i':user,'j':i_profile})

def i_profile(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        i_profile = I_Profile.objects.get(i_profile_user=user_id)
        if req.method == 'POST':
                i_hobbies=req.POST.get('i_hobbies')
                i_sports=req.POST.get('i_sports')
                i_food_taste=req.POST.get('i_food_taste')
                i_personality=req.POST.get('i_personality')
                i_Job_field=req.POST.get('i_Job_field')
             
                i_profile.i_hobbies = i_hobbies
                i_profile.i_sports = i_sports
                i_profile.i_food_taste = i_food_taste
                i_profile.i_personality = i_personality
                i_profile.i_Job_field = i_Job_field
                i_profile.save()
                
              
                
                                
                                        
                return redirect('user_myprofile')

def matching_logic(user,other_user):
        current_user=I_Profile.objects.get(i_profile_user=user)
        # other_user=I_Profile.objects.filter(i_profile_user=other_user).exclude(i_profile_user=user)
        
        matching_status = 0
        
        for i in other_user:
                if current_user.i_hobbies == i.i_hobbies:
                        matching_status += 20   
                if current_user.i_sports == i.i_sports:
                        matching_status += 20                
                if current_user.i_food_taste == i.i_food_taste:
                        matching_status += 20                
                if current_user.i_personality == i.i_personality:
                        matching_status += 20                   
                if current_user.i_Job_field == i.i_Job_field:
                        matching_status += 20
                                                
                # print(current_user,other_user,matching_status)
                i.match_percent = matching_status
                matching_status = 0
        
        return(other_user)        


def user_find(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
       
        search = req.GET.get('search')
        print(search)
        if search:
                person = I_Profile.objects.filter(i_profile_user__user_name__icontains=search).exclude(i_profile_user=user_id)
                
                other_user = I_Profile.objects.filter(i_profile_user__user_status='Accepted').exclude(i_profile_user=user_id)
                match_user = matching_logic(user,other_user)
                return render (req,'user/user-find.html',{'k':user,'match':match_user,'person':person})
                
        else:
                # messages.info(req,"User Dosent Exist with the name {}".format(search))
                other_user = I_Profile.objects.filter(i_profile_user__user_status='Accepted').exclude(i_profile_user=user_id)
                match_user = matching_logic(user,other_user)
                return render (req,'user/user-find.html',{'k':user,'match':match_user})
                
                
        

def send_request(req,user_id):
        id = req.session['user_id']
        user = UserModel.objects.get(user_id=id)
        other_user = UserModel.objects.get(user_id=user_id)
        print(user,other_user)
        Friend_Request.objects.create(sender=user,reciver=other_user)
        messages.success(req,'Request Sent')
        
        # messages.warning( req, 'Request Sent Successfully')
        
        return redirect('user_send_friend_request_view',user_id)


def user_friend_request(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        reciver = Friend_Request.objects.filter(reciver=user_id).filter(friend_request_status='Sent').exclude(sender=user)
        other_user = I_Profile.objects.filter(i_profile_user__user_status='Accepted').exclude(i_profile_user=user_id).order_by('-i_profile_user_id')[0:3]
        match_user = matching_logic(user,other_user)
        return render (req,'user/user-friend-request.html',{'k':user,'reciver':reciver,'match':match_user})

def user_friend_request_view(req,id):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        other_user = I_Profile.objects.filter(i_profile_user=id)
        match_user = matching_logic(user,other_user)
        req_user = Friend_Request.objects.get(sender=id,reciver=user_id)
   
        return render (req,'user/user-friend-reqeuest-view.html',{'k':user,'req_user':req_user, 'other':other_user,'match':match_user})

def accept_request_users(req,id):
        accept =Friend_Request.objects.get(friend_request_id=id)
        
        accept.friend_request_status ="Accepted"
        accept.save(update_fields=["friend_request_status"])
        accept.save()
        messages.success(req,'Accepted Request')
        #     messages.success(req,'Successfully Approved')
        return redirect('user_friend_request')

def reject_request_users(req,id):
    reject = Friend_Request.objects.get(friend_request_id=id)
    reject.friend_request_status ="Rejected"
    reject.save(update_fields=["friend_request_status"])
    reject.save()
    messages.error(req,'Rejected Request')
#     messages.success(req,'Successfully Approved')
    return redirect('user_friend_request')

def remove_request_users(req,id):
    remove = Friend_Request.objects.get(friend_request_id=id)
    remove.friend_request_status ="Rejected"
    remove.save(update_fields=["friend_request_status"])
    remove.save()
    messages.error(req,'Removed Form Friend List')
#     messages.success(req,'Successfully Approved')
    return redirect('user_myfriends_list')



def user_friend_response(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        response = Friend_Request.objects.filter(sender=user_id).filter(friend_request_status='Sent')
        other_user = I_Profile.objects.filter(i_profile_user__user_status='Accepted').exclude(i_profile_user=user_id).order_by('-i_profile_user_id')[0:3]
        match_user = matching_logic(user,other_user)
      
        return render (req,'user/user-friend-response.html',{'k':user,'response':response,'match':match_user})

def user_myfriends_list(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        reciver = Friend_Request.objects.filter(reciver=user_id).filter(friend_request_status='Accepted').exclude(sender=user) 
        print(reciver)
        other_user = I_Profile.objects.filter(i_profile_user__user_status='Accepted').exclude(i_profile_user=user_id).order_by('-i_profile_user_id')[0:3]
        match_user = matching_logic(user,other_user)
        return render (req,'user/user-my-friends-list.html',{'k':user,'reciver':reciver,'match':match_user})
        
def user_send_friend_request_view(req,id):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        other_user = I_Profile.objects.filter(i_profile_user=id)
        match_user = matching_logic(user,other_user)
        matched_user = match_user.first()
        try:
                request = Friend_Request.objects.get(sender=user_id,reciver__user_id=matched_user.i_profile_user.user_id)
                print('yes')
                sent = 'sent'
        except:
                print('no')
                sent = 'not_sent'
                
        return render (req,'user/user-send-friend-reqeuest-view.html',{'k':user, 'other':other_user,'match':match_user, 'sent':sent})


def user_myfriends_list_view(req,id):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        other_user = I_Profile.objects.filter(i_profile_user=id)
        match_user = matching_logic(user,other_user)
        request = Friend_Request.objects.filter(sender=user_id)
        req_user = Friend_Request.objects.get(sender=id,reciver=user_id)
        
        
        return render (req,'user/user-my-friend-list-view.html',{'k':user,'req_user':req_user, 'other':other_user,'request': request,'match':match_user})


def user_feedback(req):
        user_id = req.session['user_id']
        user = UserModel.objects.get(user_id=user_id)
        if req.method == 'POST' :
                desc = req.POST.get("feedback")
                rating = req.POST.get("rating")
                print(desc, rating)
                user_id = req.session['user_id']
                user = UserModel.objects.get(pk=user_id)
                if not rating:
                        messages.info(req, 'Please Give rating')            
                        return redirect('user_feedback')
                analysis = TextBlob(desc)
                senti = ''
                if analysis.polarity >= 0.5:
                        senti = 'Very Positive'
                elif analysis.polarity > 0 and analysis.polarity < 0.5:
                        senti = 'Positive'
                elif analysis.polarity < 0 and analysis.polarity >= -0.5:
                        senti = 'Negative'
                elif analysis.polarity < -0.5:
                        senti = 'Very Negative'
                else:
                        senti = 'Neutral'
                print(senti, 'sentiment')
                Feedback.objects.create(feed_desc=desc, feed_rating=rating,feedback_sentiment=senti,feedback_user=user)
                messages.success(req,'Feedback Submitted')                 
        return render (req,'user/user-feedback.html',{'k':user})
 























