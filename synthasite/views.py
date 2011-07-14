from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from datetime import datetime
from synthasite.models import *
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse


def home(request):
    nav = Navigation.objects.all()
    news=News.objects.all()
    firstnews=news[0]
    context = { 'nav' : nav, 'firstnews':firstnews}
    return render_to_response ('home.html', context, context_instance = RequestContext(request))


def news(request):
    nav = Navigation.objects.all()
    news=News.objects.all()
    context = { 'news':news, 'nav' : nav}
    return render_to_response ('news.html', context, context_instance = RequestContext(request))


def links(request):
    nav = Navigation.objects.all()
    context = { 'nav' : nav}
    return render_to_response ('links.html', context, context_instance = RequestContext(request))

def testimonials(request):
    nav = Navigation.objects.all()
    testimonials=Testimonials.objects.all()
    context = {'testimonials':testimonials, 'nav' : nav}
    return render_to_response ('testimonials.html', context, context_instance = RequestContext(request))
