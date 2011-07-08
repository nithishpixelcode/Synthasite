-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: synthasite
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add navigation',10,'add_navigation'),(29,'Can change navigation',10,'change_navigation'),(30,'Can delete navigation',10,'delete_navigation'),(31,'Can add news',11,'add_news'),(32,'Can change news',11,'change_news'),(33,'Can delete news',11,'delete_news'),(34,'Can add link',12,'add_link'),(35,'Can change link',12,'change_link'),(36,'Can delete link',12,'delete_link'),(37,'Can add testimonials',13,'add_testimonials'),(38,'Can change testimonials',13,'change_testimonials'),(39,'Can delete testimonials',13,'delete_testimonials'),(40,'Can add category',14,'add_category'),(41,'Can change category',14,'change_category'),(42,'Can delete category',14,'delete_category'),(43,'Can add category image',15,'add_categoryimage'),(44,'Can change category image',15,'change_categoryimage'),(45,'Can delete category image',15,'delete_categoryimage'),(46,'Can add user profile',16,'add_userprofile'),(47,'Can change user profile',16,'change_userprofile'),(48,'Can delete user profile',16,'delete_userprofile'),(49,'Can add category',17,'add_category'),(50,'Can change category',17,'change_category'),(51,'Can delete category',17,'delete_category'),(52,'Can add post',18,'add_post'),(53,'Can change post',18,'change_post'),(54,'Can delete post',18,'delete_post'),(55,'Can add comment',19,'add_comment'),(56,'Can change comment',19,'change_comment'),(57,'Can delete comment',19,'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@admin.com','sha1$83911$fe9b7af5a3c647cbb9d0f612014e241c40dfc893',1,1,1,'2011-07-08 04:49:04','2011-07-08 00:19:31');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_cc846901` (`author_id`),
  KEY `blog_comment_699ae8ca` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `publish_date` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `blog_post_cc846901` (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_categories`
--

DROP TABLE IF EXISTS `blog_post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`,`category_id`),
  KEY `blog_post_categories_699ae8ca` (`post_id`),
  KEY `blog_post_categories_42dc49bc` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_categories`
--

LOCK TABLES `blog_post_categories` WRITE;
/*!40000 ALTER TABLE `blog_post_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_userprofile`
--

DROP TABLE IF EXISTS `blog_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_userprofile`
--

LOCK TABLES `blog_userprofile` WRITE;
/*!40000 ALTER TABLE `blog_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-07-08 00:20:35',1,14,'1','2010-09-26 JBRC Worship Service & Fellowship',1,''),(2,'2011-07-08 00:21:32',1,14,'2','2009-06-29 JBRC Camping & Water Baptism 2009',1,''),(3,'2011-07-08 00:22:07',1,14,'3','2009-05-10  JBRC 2nd Anniversary',1,''),(4,'2011-07-08 00:22:39',1,14,'4','2009-04-12  JBRC Worship Service ',1,''),(5,'2011-07-08 00:23:00',1,14,'5','2009-03-31  JBRC Elders attends Tyndale President\'',1,''),(6,'2011-07-08 00:23:39',1,14,'6','2008-12-30  Joshua Revolution 2008   ',1,''),(7,'2011-07-08 00:24:43',1,14,'7','2008-08-04  JBRC Camping & Water Baptism 2008',1,''),(8,'2011-07-08 00:26:47',1,14,'8','2008-06-26  JBRC-Davao Anniversary ',1,''),(9,'2011-07-08 00:27:28',1,14,'9','2008-04-20  JBRC Families',1,''),(10,'2011-07-08 00:27:48',1,14,'10','2008-04-17  Tolsa - Quiane Nuptial',1,''),(11,'2011-07-08 00:28:08',1,14,'11','2008-02-11  JBRC Toboganning',1,''),(12,'2011-07-08 00:28:28',1,14,'12','2008-05-01  JBRC-Davao Daily Vacation Bible School',1,''),(13,'2011-07-08 02:00:57',1,10,'1','Home',1,''),(14,'2011-07-08 02:01:24',1,10,'2','News',1,''),(15,'2011-07-08 02:01:39',1,10,'3','Gallery',1,''),(16,'2011-07-08 02:02:02',1,10,'4','Links',1,''),(17,'2011-07-08 02:02:31',1,10,'5','Testimonial',1,''),(18,'2011-07-08 02:03:00',1,10,'6','Message',1,''),(19,'2011-07-08 02:03:50',1,10,'5','Testimonials',2,'Changed title.'),(20,'2011-07-08 02:03:58',1,10,'6','Messages',2,'Changed title.'),(21,'2011-07-08 02:03:59',1,10,'6','Messages',2,'No fields changed.'),(22,'2011-07-08 02:07:18',1,15,'1','image1',1,''),(23,'2011-07-08 02:08:37',1,15,'2','image2',1,''),(24,'2011-07-08 02:09:01',1,15,'3','image3',1,''),(25,'2011-07-08 02:09:16',1,15,'4','image4',1,''),(26,'2011-07-08 02:09:42',1,15,'5','image5',1,''),(27,'2011-07-08 02:09:52',1,15,'6','image6',1,''),(28,'2011-07-08 02:10:03',1,15,'7','image7',1,''),(29,'2011-07-08 02:10:14',1,15,'8','image8',1,''),(30,'2011-07-08 02:10:33',1,15,'9','image9',1,''),(31,'2011-07-08 02:10:47',1,15,'10','image10',1,''),(32,'2011-07-08 02:11:06',1,15,'11','image11',1,''),(33,'2011-07-08 02:11:28',1,15,'12','image12',1,''),(34,'2011-07-08 02:11:53',1,15,'13','image13',1,''),(35,'2011-07-08 02:12:07',1,15,'14','image14',1,''),(36,'2011-07-08 02:12:20',1,15,'15','image15',1,''),(37,'2011-07-08 02:12:31',1,15,'16','image16',1,''),(38,'2011-07-08 02:12:41',1,15,'17','image17',1,''),(39,'2011-07-08 02:12:51',1,15,'18','image18',1,''),(40,'2011-07-08 02:13:00',1,15,'19','image19',1,''),(41,'2011-07-08 02:13:12',1,15,'20','image20',1,''),(42,'2011-07-08 02:13:22',1,15,'21','image21',1,''),(43,'2011-07-08 02:13:33',1,15,'22','image22',1,''),(44,'2011-07-08 02:14:08',1,15,'23','image23',1,''),(45,'2011-07-08 02:14:26',1,15,'24','image24',1,''),(46,'2011-07-08 02:14:41',1,15,'25','image25',1,''),(47,'2011-07-08 02:14:56',1,15,'26','image26',1,''),(48,'2011-07-08 02:15:10',1,15,'27','image27',1,''),(49,'2011-07-08 02:15:20',1,15,'28','image28',1,''),(50,'2011-07-08 02:15:30',1,15,'29','image29',1,''),(51,'2011-07-08 02:15:43',1,15,'30','image30',1,''),(52,'2011-07-08 02:15:57',1,15,'31','image31',1,''),(53,'2011-07-08 02:16:09',1,15,'32','image32',1,''),(54,'2011-07-08 02:16:34',1,15,'33','image33',1,''),(55,'2011-07-08 02:16:51',1,15,'34','image34',1,''),(56,'2011-07-08 02:17:06',1,15,'35','image35',1,''),(57,'2011-07-08 02:17:21',1,15,'36','image36',1,''),(58,'2011-07-08 02:17:40',1,15,'37','image37',1,''),(59,'2011-07-08 02:18:07',1,15,'38','image38',1,''),(60,'2011-07-08 02:18:21',1,15,'39','image39',1,''),(61,'2011-07-08 02:18:35',1,15,'40','image40',1,''),(62,'2011-07-08 04:49:29',1,14,'1','2010-09-26 JBRC Worship Service & Fellowship',2,'No fields changed.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'navigation','synthasite','navigation'),(11,'news','synthasite','news'),(12,'link','synthasite','link'),(13,'testimonials','synthasite','testimonials'),(14,'category','gallery','category'),(15,'category image','gallery','categoryimage'),(16,'user profile','blog','userprofile'),(17,'category','blog','category'),(18,'post','blog','post'),(19,'comment','blog','comment');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('43cc123a8547aaf9ca0e02f14659dcfa','MzEzMmUwZGE5ZjA4ZjJiNDJkZmY5NTA4OWVkODlmMWM3ZDQzMDQ5YTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2011-07-22 04:49:04'),('190917ce45822bc7c3a33c3a710fb0a3','NTMyOTliYTQzYTM2NGZiNGZkNjE5YjU4MzBmZTU2NTM5OWJmNmI5NDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2011-07-22 04:01:43');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_category`
--

DROP TABLE IF EXISTS `gallery_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_category`
--

LOCK TABLES `gallery_category` WRITE;
/*!40000 ALTER TABLE `gallery_category` DISABLE KEYS */;
INSERT INTO `gallery_category` VALUES (1,'2011-07-08 00:20:35','2010-09-26 JBRC Worship Service & Fellowship','2010-09-26-jbrc-worship-service-fellowship','2010-09-26 JBRC Worship Service & Fellowship',1),(2,'2011-07-08 00:21:32','2009-06-29 JBRC Camping & Water Baptism 2009','2009-06-29-jbrc-camping-water-baptism-2009','2009-06-29 JBRC Camping & Water Baptism 2009',1),(3,'2011-07-08 00:22:07','2009-05-10  JBRC 2nd Anniversary','2009-05-10-jbrc-2nd-anniversary','2009-05-10  JBRC 2nd Anniversary',1),(4,'2011-07-08 00:22:39','2009-04-12  JBRC Worship Service ','2009-04-12-jbrc-worship-service','2009-04-12  JBRC Worship Service ',1),(5,'2011-07-08 00:23:00','2009-03-31  JBRC Elders attends Tyndale President\'','2009-03-31-jbrc-elders-attends-tyndale-president','2009-03-31  JBRC Elders attends Tyndale President\'',1),(6,'2011-07-08 00:23:39','2008-12-30  Joshua Revolution 2008   ','2008-12-30-joshua-revolution-2008','2008-12-30  Joshua Revolution 2008   ',1),(7,'2011-07-08 00:24:43','2008-08-04  JBRC Camping & Water Baptism 2008','2008-08-04-jbrc-camping-water-baptism-2008','2008-08-04  JBRC Camping & Water Baptism 2008',1),(8,'2011-07-08 00:26:47','2008-06-26  JBRC-Davao Anniversary ','2008-06-26-jbrc-davao-anniversary','2008-06-26  JBRC-Davao Anniversary ',1),(9,'2011-07-08 00:27:28','2008-04-20  JBRC Families','2008-04-20-jbrc-families','2008-04-20  JBRC Families',1),(10,'2011-07-08 00:27:48','2008-04-17  Tolsa - Quiane Nuptial','2008-04-17-tolsa-quiane-nuptial','2008-04-17  Tolsa - Quiane Nuptial',1),(11,'2011-07-08 00:28:08','2008-02-11  JBRC Toboganning','2008-02-11-jbrc-toboganning','2008-02-11  JBRC Toboganning',1),(12,'2011-07-08 00:28:28','2008-05-01  JBRC-Davao Daily Vacation Bible School','2008-05-01-jbrc-davao-daily-vacation-bible-school','2008-05-01  JBRC-Davao Daily Vacation Bible School',1);
/*!40000 ALTER TABLE `gallery_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_categoryimage`
--

DROP TABLE IF EXISTS `gallery_categoryimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_categoryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `image_category_id` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `gallery_categoryimage_94f3c2bc` (`image_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_categoryimage`
--

LOCK TABLES `gallery_categoryimage` WRITE;
/*!40000 ALTER TABLE `gallery_categoryimage` DISABLE KEYS */;
INSERT INTO `gallery_categoryimage` VALUES (1,'image1','image1',1,'2011-07-08 02:07:18','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_1.jpg',1),(2,'image2','image2',2,'2011-07-08 02:08:37','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_2.jpg',1),(3,'image3','image3',3,'2011-07-08 02:09:01','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_3.jpg',1),(4,'image4','image4',4,'2011-07-08 02:09:16','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_4.jpg',1),(5,'image5','image5',5,'2011-07-08 02:09:42','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_5.jpg',1),(6,'image6','image6',6,'2011-07-08 02:09:52','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_6.jpg',1),(7,'image7','image7',7,'2011-07-08 02:10:03','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_7.jpg',1),(8,'image8','image8',8,'2011-07-08 02:10:14','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_8.jpg',1),(9,'image9','image9',9,'2011-07-08 02:10:33','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_9.jpg',1),(10,'image10','image10',10,'2011-07-08 02:10:47','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_10.jpg',1),(11,'image11','image11',11,'2011-07-08 02:11:06','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_11.jpg',1),(12,'image12','image12',12,'2011-07-08 02:11:28','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_12.jpg',1),(13,'image13','image13',13,'2011-07-08 02:11:53','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_13.jpg',1),(14,'image14','image14',14,'2011-07-08 02:12:07','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_14.jpg',1),(15,'image15','image15',15,'2011-07-08 02:12:20','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_15.jpg',1),(16,'image16','image16',16,'2011-07-08 02:12:31','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_16.jpg',1),(17,'image17','image17',17,'2011-07-08 02:12:41','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_17.jpg',1),(18,'image18','image18',18,'2011-07-08 02:12:51','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_18.jpg',1),(19,'image19','image19',19,'2011-07-08 02:13:00','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_19.jpg',1),(20,'image20','image20',20,'2011-07-08 02:13:12','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_20.jpg',1),(21,'image21','image21',21,'2011-07-08 02:13:22','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_21.jpg',1),(22,'image22','image22',22,'2011-07-08 02:13:33','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_22.jpg',1),(23,'image23','image23',23,'2011-07-08 02:14:08','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_23.jpg',1),(24,'image24','image24',24,'2011-07-08 02:14:26','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_24.jpg',1),(25,'image25','image25',25,'2011-07-08 02:14:41','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_25.jpg',1),(26,'image26','image26',26,'2011-07-08 02:14:56','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_26.jpg',1),(27,'image27','image27',27,'2011-07-08 02:15:10','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_27.jpg',1),(28,'image28','image28',28,'2011-07-08 02:15:20','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_28.jpg',1),(29,'image29','image29',29,'2011-07-08 02:15:30','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_29.jpg',1),(30,'image30','image30',30,'2011-07-08 02:15:43','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_30.jpg',1),(31,'image31','image31',31,'2011-07-08 02:15:57','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_31.jpg',1),(32,'image32','image32',32,'2011-07-08 02:16:09','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_32.jpg',1),(33,'image33','image33',33,'2011-07-08 02:16:34','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_33.jpg',1),(34,'image34','image34',34,'2011-07-08 02:16:51','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_34.jpg',1),(35,'image35','image35',35,'2011-07-08 02:17:06','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_35.jpg',1),(36,'image36','image36',36,'2011-07-08 02:17:21','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_36.jpg',1),(37,'image37','image37',37,'2011-07-08 02:17:40','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_37.jpg',1),(38,'image38','image38',38,'2011-07-08 02:18:07','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_38.jpg',1),(39,'image39','image39',39,'2011-07-08 02:18:21','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_39.jpg',1),(40,'image40','image40',40,'2011-07-08 02:18:35','2010-09-26 JBRC Worship Service & Fellowship','images/upload/s_40.jpg',1);
/*!40000 ALTER TABLE `gallery_categoryimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synthasite_link`
--

DROP TABLE IF EXISTS `synthasite_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synthasite_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synthasite_link`
--

LOCK TABLES `synthasite_link` WRITE;
/*!40000 ALTER TABLE `synthasite_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `synthasite_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synthasite_navigation`
--

DROP TABLE IF EXISTS `synthasite_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synthasite_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `content` longtext,
  `publish` tinyint(1) NOT NULL,
  `publish_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synthasite_navigation`
--

LOCK TABLES `synthasite_navigation` WRITE;
/*!40000 ALTER TABLE `synthasite_navigation` DISABLE KEYS */;
INSERT INTO `synthasite_navigation` VALUES (1,'Home','home',1,'',1,'2011-07-08 01:43:55'),(2,'News','news',2,'',1,'2011-07-08 01:43:55'),(3,'Gallery','gallery',3,'',1,'2011-07-08 01:43:55'),(4,'Links','links',4,'',1,'2011-07-08 01:43:55'),(5,'Testimonials','Testimonials',5,'',1,'2011-07-08 01:43:55'),(6,'Messages','messages',6,'',1,'2011-07-08 01:43:55');
/*!40000 ALTER TABLE `synthasite_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synthasite_news`
--

DROP TABLE IF EXISTS `synthasite_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synthasite_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `publish_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synthasite_news`
--

LOCK TABLES `synthasite_news` WRITE;
/*!40000 ALTER TABLE `synthasite_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `synthasite_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synthasite_testimonials`
--

DROP TABLE IF EXISTS `synthasite_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synthasite_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromname` varchar(200) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synthasite_testimonials`
--

LOCK TABLES `synthasite_testimonials` WRITE;
/*!40000 ALTER TABLE `synthasite_testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `synthasite_testimonials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-08 18:42:11
