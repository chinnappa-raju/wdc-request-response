
from django.urls import path

from . import views

app_name = 'sample_app'
urlpatterns = [
    path('', views.index),
    path('request-info', views.request_info, name='request_info'),
    path('info', views.old_request, name='old_request_info'),
    path('protected', views.protected, name='protected'),
]
