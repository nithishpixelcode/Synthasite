from django.db import models
from django import forms
from synthasite.widgets import RemovableImageField
from datetime import datetime
from south.modelsinspector import add_introspection_rules
add_introspection_rules([], ["^synthasite\.widgets\.RemovableImageField"])

class Category(models.Model):
    
    date_created = models.DateTimeField(auto_now_add=True)
    title  = models.CharField(max_length=20, unique=True)
    slug = models.SlugField(unique=True)
    category_description =models.TextField(null=False)
    category_name = models.CharField(max_length=30,  unique=True)
    category_image = RemovableImageField(upload_to='images/upload/catimg', null=True, blank=True)
    is_publish = models.BooleanField(default=True)
    
    class Meta:
        ordering = ['id',]
	verbose_name_plural = 'Categories'
        
    def __unicode__(self):
      
        return self.category_name
        
    def get_absolute_url(self):
        return '%s/' % (self.slug)
    def save(self, force_insert=False, force_update=False):
         super(Category, self).save(force_insert, force_update)
         try:
             ping_google()
         except Exception:
             # Bare 'except' because we could get a variety
             # of HTTP-related exceptions.
             pass

class CategoryImage(models.Model):
   
    title  = models.CharField(max_length=20, unique=True)
    slug= models.SlugField(unique=True)
    order = models.IntegerField(null=True, blank=True)
    date_created= models.DateTimeField(auto_now_add=True)
    image_category= models.ForeignKey('Category', to_field='category_name')  
    image = RemovableImageField(upload_to='images/upload', null=True, blank=True)
    image_description =models.TextField(null=True)
    is_publish = models.BooleanField(default=True)
    
    class Meta:
        ordering = ['order',]
	
        
    def __unicode__(self):
       
        return self.title;
        
    def get_absolute_url(self):
        return '%s/' % (self.slug)

    def save(self, force_insert=False, force_update=False):
         super(CategoryImage, self).save(force_insert, force_update)
         try:
             ping_google()
         except Exception:
             # Bare 'except' because we could get a variety
             # of HTTP-related exceptions.
             pass

   
	


