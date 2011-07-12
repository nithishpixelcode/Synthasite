from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.template import RequestContext
from synthasite.gallery.models import *
from synthasite.models import *
from django.utils import simplejson
from forms import *
#from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.contrib import admin
admin.autodiscover()


def index(request):
    category_list   = Category.objects.all()
    nav = Navigation.objects.all()
    context         ={'category':category_list,'nav':nav}
    return render_to_response ('gt.html', context, context_instance = RequestContext(request))
   
def gallery(request,slug):
    nav = Navigation.objects.all()
    g=Category.objects.get(slug=slug)
    name=g.category_name 
    images =CategoryImage.objects.filter(image_category=name) 
    firstimage = images[0]
    context         ={'imageslist':images,'nav':nav, 'firstimage' : firstimage}
    return render_to_response ('gallery.html',context,context_instance=RequestContext(request))



