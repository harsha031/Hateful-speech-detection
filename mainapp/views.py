from django.shortcuts import render

def home_index(req):
          return render(req,'main/home-index.html')

def home_about(req):
          return render(req,'main/home-about.html')

def home_contact(req):
          return render(req,'main/home-contact.html')