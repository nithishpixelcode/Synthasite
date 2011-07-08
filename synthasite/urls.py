from django.conf.urls.defaults import patterns, include, url
from django.contrib import admin	
from django.conf import settings
from django.contrib.staticfiles.urls import staticfiles_urlpatterns	
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'mysite.views.home', name='home'),
    # url(r'^mysite/', include('mysite.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^home/', 'synthasite.views.home', name='home'),
    url(r'^$', 'synthasite.views.home', name='home'),
    url(r'^gallery/$', 'synthasite.gallery.views.index', name='gallery'),
    url(r'^gallery/(?P<slug>[-\w]+)/$','synthasite.gallery.views.gallery' ),
)

if settings.DEBUG:
    urlpatterns += patterns('',
    (r'^media/(?P<path>.*)$', 'django.views.static.serve',
    {'document_root': settings.MEDIA_ROOT}),
    )

