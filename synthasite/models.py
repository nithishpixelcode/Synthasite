from django.db import models
from django.db import models
from synthasite.widgets import RemovableImageField
from datetime import datetime
from django.core.urlresolvers import reverse
from django.db.models.query import QuerySet
from south.modelsinspector import add_introspection_rules
from sorl.thumbnail import ImageField

class Navigation(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(unique=True)
    order = models.IntegerField(null=True, blank=True, unique=True)
    content = models.TextField(null=True, blank=True)
    publish = models.BooleanField(default=True)
    publish_date = models.DateTimeField(default=datetime.now())

     
    class Meta:
        ordering = ['order',]
    
    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return '%s/' % (self.slug)

class News(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(unique=True)
    content = models.TextField()
    publish = models.BooleanField()
    publish_date = models.DateTimeField(default=datetime.now())
    
    class Meta:
        ordering = ['-publish_date',]
        
    def __unicode__(self):
        return self.title
    
    def get_absolute_url(self):
        return 'news/%s/' % (self.slug)

class Link(models.Model):
    url =  models.CharField(max_length=2000) 


class Testimonials(models.Model):
    fromname = models.CharField(max_length=200, null=True, blank=True)
    message = models.CharField(max_length=2000, null=True, blank=True)  

 
