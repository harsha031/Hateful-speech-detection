from django.shortcuts import render,redirect,get_object_or_404
from django.contrib import messages
from adminapp.models import Toxicwords
from userapp.models import *
from adminapp.models import *

from django.core.paginator import Paginator
from django.db.models import Q


def admin_login(req):
    if req.method == "POST":
        username=req.POST.get("username")
        password=req.POST.get("password")
        if username == "admin" and password == "admin":
            messages.success(req,'Successfully Login')
            return redirect('admin_dashboard')
        else:
            messages.warning(req,'invalid login')
            return redirect("admin_login")

    return render(req,'main/home-admin-login.html')

def admin_dashboard(req):
    user = UserModel.objects.all().count()
    post = Post.objects.all().count()
    feedback = Feedback.objects.all().count()
    pending_users = UserModel.objects.filter(user_status='Pending').count()
    accepted_users = UserModel.objects.filter(user_status='Accepted').count()
    rejected_users = UserModel.objects.filter(user_status='Rejected').count()
    restricted_users = UserModel.objects.filter(user_status='Restricted').count()
    context = { 'i':user,'j': post, 'k':feedback,'accept':accepted_users,'pending':pending_users,'reject':rejected_users,'restrict':restricted_users}
    return render(req,'admin/admin-dashboard.html',context)


def admin_pending_users(req):
          
          
    restrict=UserModel.objects.filter(user_status='Pending').order_by('-user_id')
    print(len(restrict))
    paginator = Paginator(restrict, 5)
    page_number = req.GET.get('page')
    post = paginator.get_page(page_number)
    return render(req,'admin/admin-pending-users.html',{'restrict':post})

def accept_users(req,user_id):
    accept = get_object_or_404(UserModel,user_id=user_id)
    accept.user_status ="Accepted"
    accept.save(update_fields=["user_status"])
    accept.save()
    messages.success(req,'User Accepted')
#     messages.success(req,'Successfully Approved')
    return redirect('admin_pending_users')



def reject_users(req,user_id):
    reject = get_object_or_404(UserModel,user_id=user_id)
    reject.user_status ="Rejected"
    reject.save(update_fields=["user_status"])
    reject.save()
    messages.error(req,'User Rejected')
#     messages.success(req,'Successfully Approved')
    return redirect('admin_pending_users')

def admin_all_users(req):
    restrict=UserModel.objects.all().order_by('-user_id').exclude(user_status='Pending')
    # fPosts=Post.objects.order_by("-post_id")
    paginator = Paginator(restrict, 5)
    page_number = req.GET.get('page')
    post = paginator.get_page(page_number)
          
          
        

        
        

    return render(req,'admin/admin-all-users.html',{'restrict':post})

def change_status_users(req,user_id):
    change_status = get_object_or_404(UserModel,user_id=user_id)
    if change_status.user_status == 'Accepted':
        change_status.user_status ="Restricted"
        messages.warning(req,'User Restricted')
    else:
        change_status.user_status ="Accepted"
        messages.success(req,'User Approved')
          
    change_status.save(update_fields=["user_status"])
    change_status.save()
#     messages.success(req,'Successfully Approved')
    return redirect('admin_all_users')

def remove_users(req,user_id):
    remove = get_object_or_404(UserModel,user_id=user_id)
    remove.delete()
    messages.error(req,'User Terminated')
#     messages.success(req,'Successfully Approved')
    return redirect('admin_all_users')

def warn_users(req,user_id,post_id):
    warn_user = get_object_or_404(UserModel,user_id=user_id)
    warn_u = Post.objects.get(post_id=post_id)
    
    warn_mssg = 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked'
    print(warn_user,warn_mssg)
    warn.objects.create(warn_user=warn_user,warn_mssg=warn_mssg,warn_for=warn_u)
    warn_u.toxic_status ="warned"
    warn_u.save(update_fields=["toxic_status"])
    warn_u.save()
    messages.warning(req,'User Warned')
    return redirect('admin_toxic_users')


def block_users(req,user_id):
    change_status = get_object_or_404(UserModel,user_id=user_id)
    change_status.user_toxicity_status ="Blocked"
    change_status.save(update_fields=["user_toxicity_status"])
    change_status.save()
    messages.warning(req,'User Blocked')
    return redirect('admin_toxic_users')

def unblock_users(req,user_id):
    change_status = get_object_or_404(UserModel,user_id=user_id)
    change_status.user_toxicity_status ="Clean"
    messages.warning(req,'User Unblocked')
    change_status.save(update_fields=["user_toxicity_status"])
    change_status.save()
    return redirect('admin_block_toxic_users')


def admin_user_profile(req):
    
    restrict=UserModel.objects.filter(user_status='Accepted').order_by('-user_id')
 
    
   
    paginator = Paginator(restrict, 5)
    page_number = req.GET.get('page')
    post = paginator.get_page(page_number)
    
    return render(req,'admin/admin-user-profile.html',{'user':post})

def admin_user_profile_view(req,user_id):
    user=I_Profile.objects.get(i_profile_user=user_id)
    
    return render(req,'admin/admin-user-profile-view.html',{'i':user})



def admin_add_toxic_words(req):
    if req.method == 'POST':
        categorey = req.POST.get('categorey')
        words = req.POST.get('words')
        word = str(words).lower()
        print(categorey,word)
        Toxicwords.objects.create(Toxic_categorey=categorey,Toxic_word=word)
    return render(req,'admin/admin-user-add-toxic-words.html')

def admin_manage_toxic_words_categorey(req):
    return render(req,'admin/admin-manage-toxic-words-categorey.html')

def admin_manage_toxic_words_list(req,cat_id):
    toxic_words = Toxicwords.objects.filter(Toxic_categorey=cat_id)
    return render(req,'admin/admin-manage-toxic-words-list.html',{'toxicwords':toxic_words,'cat_id':cat_id})
    
def remove_words(req,id,cat_id):
    remove = Toxicwords.objects.get(word_id=id)
    remove.delete()
    messages.warning(req,'Word Removed')
    return redirect('admin_manage_toxic_words_list',cat_id=cat_id)
    
    
def admin_toxic_users(req):
    toxic_users = Post.objects.filter(toxic_status='Toxic').filter(post_user__user_toxicity_status='Clean').order_by('-post_id')
    
    context = {'toxicusers':toxic_users}
    return render(req,'admin/admin-toxic-users.html',context)


def admin_blocked_toxic_users(req):
    toxic_users = Post.objects.filter(toxic_status='Toxic').filter(post_user__user_toxicity_status='Blocked')
    context = {'toxicusers':toxic_users}
    
    return render(req,'admin/admin-block-toxic-users.html',context)







def sentiment_analysis(req):
    restrict= Feedback.objects.all().order_by('-id')
    
   
    paginator = Paginator(restrict, 5)
    page_number = req.GET.get('page')
    post = paginator.get_page(page_number)
          
    return render (req,'admin/admin-feedback-sentiment-analysis.html',{'feedback':post})

def feedback_graph(req):
    very_positive = Feedback.objects.filter(feedback_sentiment='Very Positive').count()
    positive = Feedback.objects.filter(feedback_sentiment='Positive').count()
    neutral = Feedback.objects.filter(feedback_sentiment='Neutral').count()
    negative = Feedback.objects.filter(feedback_sentiment='Negative').count()
    very_negative = Feedback.objects.filter(feedback_sentiment='Very Negative').count()
    
    return render(req,'admin/admin-feedback-graph.html',{
              'i':very_positive,
              'j':positive,
              'k':neutral,
              'l':negative,
              'm':very_negative,
              
          })

def admin_toxic_users_graph(req):
    warned_users = warn.objects.all().count()
    Blocked_users = UserModel.objects.filter(user_toxicity_status='Blocked').count()
    clean_post_user = Post.objects.filter(toxic_status='Clean').count()
    toxic_post_user = Post.objects.filter(toxic_status='Toxic').count()
    context = {
        'w':warned_users,
        'b':Blocked_users,
        'c':clean_post_user,
        't':toxic_post_user
    }
    
    return render(req,'admin/admin-toxic-users-graph.html',context) 

def admin_toxic_words_graph(req):
    cat1 = Toxicwords.objects.filter(Toxic_categorey='Cyberbullying').count()
    cat2 = Toxicwords.objects.filter(Toxic_categorey='Emotional abuse').count()
    cat3 = Toxicwords.objects.filter(Toxic_categorey='Grooming').count()
    cat4 = Toxicwords.objects.filter(Toxic_categorey='Sexting').count()
    cat5 = Toxicwords.objects.filter(Toxic_categorey='Sexual abuse').count()
    cat6 = Toxicwords.objects.filter(Toxic_categorey='Sexual exploitation').count()
    cat7 = Toxicwords.objects.filter(Toxic_categorey='Cyberstalking').count()
    cat8 = Toxicwords.objects.filter(Toxic_categorey='Harassment').count()
    cat9 = Toxicwords.objects.filter(Toxic_categorey='Reveng porn').count()
    cat10 = Toxicwords.objects.filter(Toxic_categorey='Coorporate attacks').count()
    context = {
        'cat1':cat1, 
        'cat2':cat2, 
        'cat3':cat3, 
        'cat4':cat4, 
        'cat5':cat5, 
        'cat6':cat6, 
        'cat7':cat7, 
        'cat8':cat8, 
        'cat9':cat9, 
        'cat10':cat10 
    } 
    
    return render(req,'admin/admin-toxic-words-graph.html',context) 
    
    
    

def change_password(req):
          return render(req,'admin/admin-change-password.html')