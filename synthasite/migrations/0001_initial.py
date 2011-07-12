# encoding: utf-8
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models

class Migration(SchemaMigration):

    def forwards(self, orm):
        
        # Adding model 'Navigation'
        db.create_table('synthasite_navigation', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=50, db_index=True)),
            ('order', self.gf('django.db.models.fields.IntegerField')(unique=True, null=True, blank=True)),
            ('content', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('publish', self.gf('django.db.models.fields.BooleanField')(default=True, blank=True)),
            ('publish_date', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime(2011, 7, 12, 3, 6, 6, 191454))),
        ))
        db.send_create_signal('synthasite', ['Navigation'])

        # Adding model 'News'
        db.create_table('synthasite_news', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('slug', self.gf('django.db.models.fields.SlugField')(unique=True, max_length=50, db_index=True)),
            ('content', self.gf('django.db.models.fields.TextField')()),
            ('publish', self.gf('django.db.models.fields.BooleanField')(default=False, blank=True)),
            ('publish_date', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime(2011, 7, 12, 3, 6, 6, 192036))),
        ))
        db.send_create_signal('synthasite', ['News'])

        # Adding model 'Link'
        db.create_table('synthasite_link', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('url', self.gf('django.db.models.fields.CharField')(max_length=2000)),
        ))
        db.send_create_signal('synthasite', ['Link'])

        # Adding model 'Testimonials'
        db.create_table('synthasite_testimonials', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('fromname', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('message', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('synthasite', ['Testimonials'])


    def backwards(self, orm):
        
        # Deleting model 'Navigation'
        db.delete_table('synthasite_navigation')

        # Deleting model 'News'
        db.delete_table('synthasite_news')

        # Deleting model 'Link'
        db.delete_table('synthasite_link')

        # Deleting model 'Testimonials'
        db.delete_table('synthasite_testimonials')


    models = {
        'synthasite.link': {
            'Meta': {'object_name': 'Link'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '2000'})
        },
        'synthasite.navigation': {
            'Meta': {'object_name': 'Navigation'},
            'content': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'order': ('django.db.models.fields.IntegerField', [], {'unique': 'True', 'null': 'True', 'blank': 'True'}),
            'publish': ('django.db.models.fields.BooleanField', [], {'default': 'True', 'blank': 'True'}),
            'publish_date': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2011, 7, 12, 3, 6, 6, 191454)'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '50', 'db_index': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'synthasite.news': {
            'Meta': {'object_name': 'News'},
            'content': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'publish': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'blank': 'True'}),
            'publish_date': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2011, 7, 12, 3, 6, 6, 192036)'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '50', 'db_index': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'synthasite.testimonials': {
            'Meta': {'object_name': 'Testimonials'},
            'fromname': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'message': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['synthasite']
