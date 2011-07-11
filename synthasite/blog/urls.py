from django.conf.urls.defaults import patterns, include, handler500, url
from django.conf import settings
from django.contrib import admin
admin.autodiscover()

handler500 # Pyflakes

urlpatterns = patterns('synthasite.blog.views',
    url(r'^$', 'index',name="index"),
    url(r'^(?P<category>[-\w]+)/$', 'category_posts', name="category_posts"),
    url(r'^(?P<category>[-\w]+)/(?P<post>[-\w]+)/$', 'post', name="blog_post"),
)
