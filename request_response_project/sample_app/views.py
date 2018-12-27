from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect, HttpResponseForbidden
from django.urls import reverse


def index(request):
    return render(request, 'index.html')


def request_info(request):
    return render(request, 'request_info.html')


def protected(request):
    return HttpResponse("This endpoint is private", status='403')
    # return HttpResponseForbidden("This endpoint is private")


def old_request(request):
    # return HttpResponseRedirect(reverse('sample_app:request_info'))
    return redirect(reverse('sample_app:request_info'))
