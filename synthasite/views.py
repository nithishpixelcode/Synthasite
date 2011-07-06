from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from datetime import datetime
from synthasite.models import *
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse


def home(request):
    nav = Navigation.objects.all()
    context = { 'nav' : nav}
    return render_to_response ('home.html', context, context_instance = RequestContext(request))
