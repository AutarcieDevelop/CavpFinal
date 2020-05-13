from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from rest_framework import routers
from djangocrud.api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('upload', views.upload),
    path('', views.goHome),
#    url(r'', views.goHome, name='register'),
]

#if settings.DEBUG:
 #   urlpatterns == static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)