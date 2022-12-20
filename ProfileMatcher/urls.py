"""ProfileMatcher URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from django.conf.urls.static import static
from django.conf import settings
from mainapp import views as home_views
from adminapp import views as admin_views
from userapp import views as user_views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',home_views.home_index,name='home_index'),
    path('about',home_views.home_about,name='home_about'),
    path('contact',home_views.home_contact,name='home_contact'),
    path('admin-login',admin_views.admin_login,name='admin_login'),
    path('admin-dashboard',admin_views.admin_dashboard,name='admin_dashboard'),
    path('admin-pending-users',admin_views.admin_pending_users,name='admin_pending_users'),
    path('accept-user/<int:user_id>/',admin_views.accept_users,name="accept_user"),
    path('reject-user/<int:user_id>/',admin_views.reject_users,name="reject_user"),
    
    path('admin-all-users',admin_views.admin_all_users,name='admin_all_users'),
    path('change-status-user/<int:user_id>/',admin_views.change_status_users,name="change_status_user"),
    path('remove-user/<int:user_id>/',admin_views.remove_users,name="remove_user"),
    
    path('admin-user-profile',admin_views.admin_user_profile,name='admin_user_profile'),
    path('admin-user-profile-view/<int:user_id>/',admin_views.admin_user_profile_view,name='admin_user_profile_view'),
    path('admin-add-toxic-words',admin_views.admin_add_toxic_words,name='admin_add_toxic_words'),
    path('admin-manage-toxic-words-categorey',admin_views.admin_manage_toxic_words_categorey,name='admin_manage_toxic_words_categorey'),
    path('admin-manage-toxic-words-list/<str:cat_id>/',admin_views.admin_manage_toxic_words_list,name='admin_manage_toxic_words_list'),
    path('remove-words/<int:id>/<str:cat_id>/',admin_views.remove_words,name='remove_words'),
  
    path('admin-toxic-users',admin_views.admin_toxic_users,name='admin_toxic_users'),
    path('block-users/<int:user_id>/',admin_views.block_users,name='block_users'),
    path('warn-users/<int:user_id>/<int:post_id>/',admin_views.warn_users,name='warn_users'),
    
    path('unblock-users/<int:user_id>/',admin_views.unblock_users,name='unblock_users'),
    
    
    path('admin-blocked-toxic-users',admin_views.admin_blocked_toxic_users,name='admin_block_toxic_users'),
    path('admin-sentiment-analysis',admin_views.sentiment_analysis,name='admin_sentiment_analysis'),
    path('admin-toxic-users-graph',admin_views.admin_toxic_users_graph,name='admin_toxic_users_graph'),
    path('admin-toxic-words-graph',admin_views.admin_toxic_words_graph,name='admin_toxic_words_graph'),
    path('admin-feedback-graph',admin_views.feedback_graph,name='admin_feedback_graph'),
    path('admin-change-password',admin_views.change_password,name='admin_change_password'),
    path('user-login',user_views.user_login,name='user_login'),
    path('user-register',user_views.user_register,name='user_register'),
    path('user-post',user_views.user_post,name='user_post'),
    path('user-notifications',user_views.user_notifications,name='user_notifications'),
    path('mark-as-read/<int:id>/',user_views.mark_as_read,name='mark_as_read'),
    
    path('user-send-friend-request-view/<int:id>/',user_views.user_send_friend_request_view,name='user_send_friend_request_view'),
    path('send-request/<int:user_id>/',user_views.send_request,name='send_request'),
    path('like-post',user_views.like_post,name='like_post'),
    
    
    
    path('comment/<int:post_id>/',user_views.comment,name='comment'),
    # path('audio-to-txt',user_views.audio_to_txt,name='audio_to_txt'),
    
    
    path('user-myprofile',user_views.user_myprofile,name='user_myprofile'),
    path('i-profile',user_views.i_profile,name='i_profile'),
    
    path('user-find',user_views.user_find,name='user_find'),
    path('user-friend-request',user_views.user_friend_request,name='user_friend_request'),
    path('user-friend-request-view/<int:id>/',user_views.user_friend_request_view,name='user_friend_request_view'),
    path('accept-request-user/<int:id>',user_views.accept_request_users,name="accept_request_users"),
    path('reject-request-user/<int:id>/',user_views.reject_request_users,name="reject_request_users"),
    path('remove-request-user/<int:id>/',user_views.remove_request_users,name="remove_request_users"),
    
    path('user-friend-response',user_views.user_friend_response,name='user_friend_response'),
    path('user-myfriends-list',user_views.user_myfriends_list,name='user_myfriends_list'),
    path('user-myfriends-list-view/<int:id>/',user_views.user_myfriends_list_view,name='user_myfriends_list_view'),
    
    path('user-feedback',user_views.user_feedback,name='user_feedback'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
