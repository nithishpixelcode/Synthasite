from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin	
from django.conf import settings
from django.contrib.staticfiles.urls import staticfiles_urlpatterns	
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',

    url(r'^admin/', include(admin.site.urls)),
    url(r'^home/', 'synthasite.views.home', name='home'),
    url(r'^$', 'synthasite.views.home', name='home'),
    url(r'^messages/', include('synthasite.blog.urls')),
    url(r'^links/', 'synthasite.views.links', name='links'),
    url(r'^news/$', 'synthasite.views.news', name='news'),
    url(r'^news/(?P<slug>[-\w]+)/$','synthasite.views.top_news' ),
    url(r'^Testimonials/', 'synthasite.views.testimonials', name='testimonials'),
    url(r'^gallery/$', 'synthasite.gallery.views.index', name='gallery'),
    url(r'^gallery/(?P<slug>[-\w]+)/$','synthasite.gallery.views.gallery' ),
)

if settings.DEBUG:
    urlpatterns += patterns('',
    (r'^media/(?P<path>.*)$', 'django.views.static.serve',
    {'document_root': settings.MEDIA_ROOT}),
    )

