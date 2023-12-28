-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_profile`
--

DROP TABLE IF EXISTS `accounts_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(10) DEFAULT NULL,
  `user_type` varchar(10) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Accounts_profile_user_id_da5e21e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (1,NULL,'admin','1',1),(2,'3454345348','parent','111',2),(3,NULL,'parent','2',3),(4,NULL,'teacher','123',4),(5,'3456789345','parent','123456,2345,245',5),(6,'9876543213','parent','333',6),(8,'6436363464','others','123',8),(9,'7899218162','teacher','123',9);
/*!40000 ALTER TABLE `accounts_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_route`
--

DROP TABLE IF EXISTS `app_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_route` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `route_no` varchar(50) NOT NULL,
  `route_name` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `vts_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `route_no` (`route_no`),
  UNIQUE KEY `vehicle_no` (`vehicle_no`),
  UNIQUE KEY `vts_id` (`vts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_route`
--

LOCK TABLES `app_route` WRITE;
/*!40000 ALTER TABLE `app_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add gate config master',8,'add_gateconfigmaster'),(30,'Can change gate config master',8,'change_gateconfigmaster'),(31,'Can delete gate config master',8,'delete_gateconfigmaster'),(32,'Can view gate config master',8,'view_gateconfigmaster'),(33,'Can add raw data',9,'add_rawdata'),(34,'Can change raw data',9,'change_rawdata'),(35,'Can delete raw data',9,'delete_rawdata'),(36,'Can view raw data',9,'view_rawdata'),(37,'Can add class section',10,'add_classsection'),(38,'Can change class section',10,'change_classsection'),(39,'Can delete class section',10,'delete_classsection'),(40,'Can view class section',10,'view_classsection'),(41,'Can add holiday',11,'add_holiday'),(42,'Can change holiday',11,'change_holiday'),(43,'Can delete holiday',11,'delete_holiday'),(44,'Can view holiday',11,'view_holiday'),(45,'Can add period table',12,'add_periodtable'),(46,'Can change period table',12,'change_periodtable'),(47,'Can delete period table',12,'delete_periodtable'),(48,'Can view period table',12,'view_periodtable'),(49,'Can add student details',13,'add_studentdetails'),(50,'Can change student details',13,'change_studentdetails'),(51,'Can delete student details',13,'delete_studentdetails'),(52,'Can view student details',13,'view_studentdetails'),(53,'Can add teacher details',14,'add_teacherdetails'),(54,'Can change teacher details',14,'change_teacherdetails'),(55,'Can delete teacher details',14,'delete_teacherdetails'),(56,'Can view teacher details',14,'view_teacherdetails'),(57,'Can add timetable',15,'add_timetable'),(58,'Can change timetable',15,'change_timetable'),(59,'Can delete timetable',15,'delete_timetable'),(60,'Can view timetable',15,'view_timetable'),(61,'Can add others details',16,'add_othersdetails'),(62,'Can change others details',16,'change_othersdetails'),(63,'Can delete others details',16,'delete_othersdetails'),(64,'Can view others details',16,'view_othersdetails');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$ylnqk11kg3jRYyyQVFq2E1$5XhLMnhdngT30szMtoafeHppqpqWQ9QOzlqIoY4pv1w=','2023-10-11 05:31:37.405131',1,'sachin','','','',1,1,'2023-09-06 12:16:05.829487'),(2,'pbkdf2_sha256$260000$3lEU17Vlq8ozRpGAkcXQ8U$nDL89D4KTpz06st3wFbbbpJWPmVqg/oYfg8YiMgf/Qw=','2023-09-22 05:20:37.045772',0,'3454345348','SACHIN','','sa@dd.com',0,1,'2023-09-06 12:51:41.810345'),(3,'pbkdf2_sha256$600000$nWrEJWTtYx0MUBgFmCpqvc$jwuRsBrKjTXji0ush/jujF6UqBZ2eHjXMSzp0xn28dA=','2023-09-25 05:50:52.444276',0,'sai','','','',1,1,'2023-09-07 06:01:22.000000'),(4,'pbkdf2_sha256$260000$q0gRpN708toyweCQrPKm6U$/A9VAsAJ98gq2QkX5OTex8Qyw7A59XXnYy0kuoDFz1A=','2023-09-25 05:37:15.648894',0,'giri','','','',0,1,'2023-09-07 07:05:12.000000'),(5,'pbkdf2_sha256$600000$3laLd8UW1Q0XPnnX0TAH3Z$U1ipIcHaObbmBk1ptaIRbFr9IEGwHUr0QpMDpIjvpKc=','2023-09-22 10:34:17.307246',0,'3456789345','SANJAY','','sa@dd.com',0,1,'2023-09-07 10:54:53.404649'),(6,'pbkdf2_sha256$260000$VRoSIgtXmWu29M25s4glsu$L6wJmSTTOhh2VkRUDUPM5IBnSi2jGkERe6fWpZ3JSrQ=','2023-09-21 06:53:50.187918',0,'9876543213','SHASHI','','sa@dd.com',0,1,'2023-09-13 05:13:46.518928'),(8,'pbkdf2_sha256$600000$IsQObGHttIWURrlMXAtmF7$RIVkNIuWDOuOWfpHN+Wqn1guGhFxxXGBnNQ7ov48D4s=','2023-10-06 07:52:30.247422',0,'6436363464','SACHIN','','sachin@gmail.com',0,1,'2023-10-06 05:59:09.326838'),(9,'pbkdf2_sha256$600000$YsUo0k8JNu0YdlExIzkOZX$ox+36Esn8z/YvF3igcdrtTkJeAQqNlqSIgELNHCZSvU=','2023-10-06 10:03:33.113032',0,'7899218162','SACHIN','','sachin@gmail.com',0,1,'2023-10-06 09:34:33.835067');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-06 12:16:40.384855','1','sachin',1,'[{\"added\": {}}]',7,1),(2,'2023-09-07 05:14:02.642491','1','P1-PERIOD 1',1,'[{\"added\": {}}]',12,1),(3,'2023-09-07 05:14:26.444118','2','P2-PERIOD 2',1,'[{\"added\": {}}]',12,1),(4,'2023-09-07 05:14:33.642466','3','P3-PERIOD 3',1,'[{\"added\": {}}]',12,1),(5,'2023-09-07 05:14:41.157132','4','P4-PERIOD 4',1,'[{\"added\": {}}]',12,1),(6,'2023-09-07 05:14:50.875249','5','P5-PERIOD 5',1,'[{\"added\": {}}]',12,1),(7,'2023-09-07 05:15:25.875818','6','P6-PERIOD 6',1,'[{\"added\": {}}]',12,1),(8,'2023-09-07 06:01:57.667127','3','sai',1,'[{\"added\": {}}]',7,1),(9,'2023-09-07 06:02:54.448110','3','sai',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(10,'2023-09-07 06:04:41.786527','3','sai',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(11,'2023-09-07 06:30:14.595084','3','sai',2,'[{\"changed\": {\"fields\": [\"User type\"]}}]',7,1),(12,'2023-09-07 07:05:35.048863','4','giri',1,'[{\"added\": {}}]',7,1),(13,'2023-09-07 07:18:47.033192','4','giri',2,'[{\"changed\": {\"fields\": [\"Id number\"]}}]',7,4),(14,'2023-09-07 09:25:15.273506','4','Class 2, Section B',1,'[{\"added\": {}}]',10,4),(15,'2023-09-12 05:38:33.479442','3','sai',2,'[{\"changed\": {\"fields\": [\"User type\"]}}]',7,4),(16,'2023-09-13 05:11:43.297320','4','giri',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(17,'2023-09-14 06:18:04.044970','3','sai',2,'[{\"changed\": {\"fields\": [\"User type\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'Accounts','profile'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'gate_config','gateconfigmaster'),(9,'gate_config','rawdata'),(10,'registration_app','classsection'),(11,'registration_app','holiday'),(16,'registration_app','othersdetails'),(12,'registration_app','periodtable'),(13,'registration_app','studentdetails'),(14,'registration_app','teacherdetails'),(15,'registration_app','timetable'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-06 11:43:11.176241'),(2,'auth','0001_initial','2023-09-06 11:43:11.814358'),(3,'Accounts','0001_initial','2023-09-06 11:43:11.910578'),(4,'Accounts','0002_alter_profile_phone_number','2023-09-06 11:43:11.922545'),(5,'Accounts','0003_alter_profile_user_type','2023-09-06 11:43:11.934959'),(6,'Accounts','0004_alter_profile_id_number','2023-09-06 11:43:12.054169'),(7,'admin','0001_initial','2023-09-06 11:43:12.279313'),(8,'admin','0002_logentry_remove_auto_add','2023-09-06 11:43:12.291684'),(9,'admin','0003_logentry_add_action_flag_choices','2023-09-06 11:43:12.303888'),(10,'contenttypes','0002_remove_content_type_name','2023-09-06 11:43:12.402172'),(11,'auth','0002_alter_permission_name_max_length','2023-09-06 11:43:12.455613'),(12,'auth','0003_alter_user_email_max_length','2023-09-06 11:43:12.491390'),(13,'auth','0004_alter_user_username_opts','2023-09-06 11:43:12.504582'),(14,'auth','0005_alter_user_last_login_null','2023-09-06 11:43:12.557449'),(15,'auth','0006_require_contenttypes_0002','2023-09-06 11:43:12.563386'),(16,'auth','0007_alter_validators_add_error_messages','2023-09-06 11:43:12.574350'),(17,'auth','0008_alter_user_username_max_length','2023-09-06 11:43:12.632178'),(18,'auth','0009_alter_user_last_name_max_length','2023-09-06 11:43:12.681116'),(19,'auth','0010_alter_group_name_max_length','2023-09-06 11:43:12.703995'),(20,'auth','0011_update_proxy_permissions','2023-09-06 11:43:12.718973'),(21,'auth','0012_alter_user_first_name_max_length','2023-09-06 11:43:12.776748'),(22,'gate_config','0001_initial','2023-09-06 11:43:12.829939'),(23,'gate_config','0002_rawdata','2023-09-06 11:43:12.878976'),(24,'registration_app','0001_initial','2023-09-06 11:43:13.067775'),(25,'sessions','0001_initial','2023-09-06 11:43:13.111866'),(26,'registration_app','0002_othersdetails','2023-10-04 05:53:00.487827'),(27,'registration_app','0003_alter_othersdetails_email','2023-10-04 06:41:19.801157'),(28,'Accounts','0005_alter_profile_user_type','2023-10-06 05:29:26.814114'),(29,'app','0001_initial','2023-10-09 05:52:04.319084'),(30,'app','0002_alter_ultimate_gstin_number_and_more','2023-10-09 05:52:04.349076'),(31,'app','0003_alter_ultimate_contact_number_and_more','2023-10-09 05:52:04.366065'),(32,'app','0004_delete_ultimate','2023-10-09 05:52:04.371119'),(33,'app','0005_initial','2023-10-09 05:52:04.384631'),(34,'app','0006_routedata','2023-10-09 05:52:04.387256'),(35,'app','0007_managedroutedata_alter_routedata_table','2023-10-09 05:52:04.390420'),(36,'app','0008_alter_routedata_table','2023-10-09 05:52:04.394367'),(37,'app','0009_alter_routedata_table','2023-10-09 05:52:04.397736'),(38,'app','0010_delete_managedroutedata_alter_routedata_options','2023-10-09 05:52:04.400092');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0a1obqle9xf5wd6x5oar87i1fon8idzm','.eJxVjEEOwiAQRe_C2pAClRlcuu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERSpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-aGYesjbPKuAwjQMoIOkQLIzt7RhdMYI0AYBKZZHIccUClNKFDQiXeH81PNxI:1qeqgq:XkqUjj4l31DaJuAjHyIyKKFTIu7lC3rp8_E0mmX2LYc','2023-09-23 05:39:28.054555'),('1w50wy3o4vpb6czhcibkboj4lwnp5jbg','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qeaVB:NjcYri3IasOuQOEQuzQP17XZUexTZkrg4ol07rDSwKU','2023-09-22 12:22:21.357346'),('3o08fy08zgmfwjmpsjy7fkmr2ig11v2h','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qeVct:leNskSrVh9Ya2-Vx7Zr6Jp94ogxPSY_9iVsM4IzezQk','2023-09-22 07:09:59.775950'),('3v7qppss1qj99vqfrbxawllvg7b89jf9','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qe8XY:jrOa-BkyQwP-hFL6ImoXJSFM_W2l2BTochMTNbnQ7Og','2023-09-21 06:30:56.762962'),('48smd0lbmmrjp519ygax7tfcre1wqwka','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qgLug:ahCAFDMZM2CyjPueVanb_dvv96YCLrD0yUJKrK1k3Rs','2023-09-27 09:11:58.746943'),('52d8b048l333kcu5znxx7mixxbiyewm8','.eJxVjEEOwiAQRe_C2pAyDKAu3XuGBmYGqRpISrsy3l2bdKHb_977LzXGdSnj2mUeJ1Znherwu6VID6kb4Hust6ap1WWekt4UvdOur43ledndv4MSe_nWln0wwVlIPmdyxjKAd4MFwYE8RZeZBNNJEBxjMD44xGMAI5GyAKr3B83GN3A:1qfwLh:MA4uOr-hK9iAS7LyvU3eK-tQNrY8pUQvEX8W5HHHdOM','2023-09-26 05:54:09.515996'),('5qt64bfnqs5pin6vkiqk6y1nfcobwu2d','.eJxVjMEOwiAQRP-FsyHQpdT16N1vIAu7laqhSWlPxn-3JD3ocd68mbcKtK05bFWWMLG6KKdOvyxSekppBT-o3Ged5rIuU9RN0Udb9W1meV0P9-8gU8372hg3OPFdB0gsnnq0AokRMSKMeyY2aPDMDmwavB0ZpLfoBWJDUX2-z1A3fw:1qgM9b:us_2FJilq0Ss2CXPs4A0ORWP59EldjmbVEcBwInJmlA','2023-09-27 09:27:23.774832'),('69zy3jv89n5qw86vjc2lum1ilk2k15cj','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qohD6:QbC9sRvysSDFUaYN_MfPTtmHb-vMKB79Id9p906hAOw','2023-10-20 09:33:28.427913'),('6fvvs969mg6kfyj0jq20b4jq92lcsqvc','.eJxVjDsOwyAQBe9CHaEVf1KmzxkQy0JwEoFk7MrK3WNLLpL2zczbWIjrUsM68hwmYlem2OV3w5heuR2AnrE9Ok-9LfOE_FD4SQe_d8rv2-n-HdQ46l5bUgItSWuyEjpJjxajy9oZ1MKDN5qsBA9FAYARhmIBBOWKRtwJsc8XyTo3SA:1qkeHT:5RPLjbEmvlPgR-iryQmgjpBMVHLVvdtJuLHoWquSgq0','2023-10-09 05:37:15.659863'),('6ptl9eoxwtn01kvr9u509h085n7yu4vq','.eJxVjEsOAiEQBe_C2hDAHqBduvcMpBtaGTWQzGdlvLtOMgvdvqp6L5VoXWpaZ5nSWNRJgTr8bkz5IW0D5U7t1nXubZlG1puidzrrSy_yPO_u30GluX7rK5bAEtiVaIN3TvCIxANDNg7QGOclACDFnAHtAGSEjQ8e_eCN2KjeH9fwNvI:1qgga1:VIjMrC5gpJbIJTltC8mWiia1EaLjmY0A90KSzmvSSjg','2023-09-28 07:16:01.469533'),('7kx277kswfojcqzcnvq9t82v1y58t6aq','.eJxVjEEOwiAQRe_C2hBamMK4dO8ZyAwMtmpoUtqV8e7apAvd_vfef6lI2zrGrckSp6zOqlOn340pPaTuIN-p3mad5rouE-td0Qdt-jpneV4O9-9gpDZ-awzIHYgHg2K84T54Am-tOOCUUyBXerJZDABZ47gIMvaAA3IIQyH1_gDQyze4:1qeCc1:97G5l81AFdMv7BPlnHb5BEhKtiksreUgxqWNaFi0xpM','2023-09-21 10:51:49.103875'),('7mifazahbdcb8cu4hsoyswc9a5tsc2v1','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qeY5E:b3WfwwGbXHTs4uHorq7tWOW__iM6zXHcToIyvXWkvbA','2023-09-22 09:47:24.933894'),('8a7n8vl890g9h2hhiy6hdrx7wlu9naxg','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qfd4n:4WrBXEA-jUPvlbUYlscQgss1fVoGlwg8m6kaOkOiKgU','2023-09-25 09:19:25.513611'),('a5q33s4lbzoabp3wzvfn4102my8xe61j','.eJxVjMsOwiAQRf-FtSHA8Oi4dO83EMoMUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxJnocXpdxtTfnDbAd1Tu80yz21dplHuijxol9eZ-Hk53L-Dmnr91gDZuWLQD8XoYigzWdTeclDBemSFKhAmm8ANrJXypJkQCjgGdEaL9wfIwzbz:1qjvV8:G1orO17bVUOaidQXtZHVWgZZHkUqsclZP9WWsCMcNME','2023-10-07 05:48:22.499728'),('co78nyzsh39lpwpk8htz5cxno9a6ivcq','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qh1pk:tTEZjJWeI-pcFtsq9z6neEq9to02vm66hseVlT4gdR0','2023-09-29 05:57:40.577759'),('curdpmcd0aq46nd66kp2vir057fqm8r7','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qq9S4:-rbITtd-3nIbiwkecP6pQ9zTIh8_GjpX0lKghTntoHw','2023-10-24 09:54:56.008541'),('cwh9wd8qpa2gfo2t0yp12niqf8rdipg9','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qjG1N:AB5ri0-AerpwBoK-xQ8xgeYUM6nL1Ke1Jtyi9MRJAGU','2023-10-05 09:30:53.339833'),('dckml53r2fy9l0tu8rufy28kphr1bwmy','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qgIhw:PkurlzVC9OgmDKUPMQxr4hUhJ0-DGhj3Rbi1gIPp9Hw','2023-09-27 05:46:36.100603'),('dszlb25g05xa1d4du4nibh8qix3bkmol','.eJxVjDsOwyAQBe9CHSH-sCnT-wxoYXFwEmHJ2FWUu0dILpL2zcx7s4jHXuPRyxYXYlcm2eV3S5ifpQ1AD2z3lee17duS-FD4STufViqv2-n-HVTsddRBkhRCgfc66WIdGTCueEEZMswURPZaWPConFPgREFpTZqlckGhRvb5Ar_JNuc:1qjDgj:QxHJMK3twC8Bew8aTHuCiweEGHc91WxVLfOs5gm4wh4','2023-10-05 07:01:25.580460'),('e2v1ltx4zkgf2ctcar8lbqag977digfs','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qpiho:REq692DyQj6NtAY8Oemglj_5P-M3Q_Sb_R1tq5qYZjc','2023-10-23 05:21:24.241825'),('flp130vj2n2z537iow87f56zx0aiunbg','.eJxVjDsOwjAQBe_iGlne-E9JzxmsXX9wANlSnFSIu0OkFNC-mXkvFnBba9hGXsKc2JlN7PS7EcZHbjtId2y3zmNv6zIT3xV-0MGvPeXn5XD_DiqO-q29yloXQ8bqKJL0RIiTlWBJQfFGCHCOrLBgoQhABZk0QpLRxUzFFPb-ANBoN8Y:1qjG4e:yBk1Ur-dvesvuBqDEbylQG0aJpJ2e2J8BIMfBs0AAoE','2023-10-05 09:34:16.918511'),('g5bcpvmt7pxeoml0vp33309jsouglr8n','.eJxVjEsOwjAMBe-SNYocbLcOS_Y9Q-WkCS2gROpnhbg7VOoCtm9m3sv0uq1jvy1p7qfBXIwzp98taHyksoPhruVWbaxlnadgd8UedLFdHdLzerh_B6Mu47cORAwZEnplEGJUD0iKLSrG7OQskJM0kSEIMAmJa8Uhc6bGJw_m_QGwaTYp:1qewkf:NOZbTHVzbfM0iUxwCAthVwgITGb-WnASdSjVKU-Va2E','2023-09-23 12:07:49.982900'),('ixcjle92017kauao9qjsrnq6bjuggavz','.eJxVjMsOwiAQRf-FtSE8CoJL9_2GZoYZpGogKe3K-O_apAvd3nPOfYkJtrVMW-dlmklchBan3w0hPbjugO5Qb02mVtdlRrkr8qBdjo34eT3cv4MCvXxrH3TgjGAQoldEQWdlsjNJo3dDiNpmVJ48B2YEFS0RW0YX8qAtn714fwD0Cjho:1qjzyb:emfe7UCy60OIqdWzgQ81LNYIoM0mYMpK9j7DrtAKNQY','2023-10-07 10:35:05.801487'),('kf0wf1hn9hpl0cngfv1m0bn135ungryw','.eJxVjMEOwiAQRP-FsyHsdsHo0bvfQBZYpGogKe2p8d9tkx50jvPezKo8L3PxS5fJj0ldFajTbxc4vqTuID25PpqOrc7TGPSu6IN2fW9J3rfD_Tso3Mu2xixnEOCLcWKdoYTZIhA4AgSTsx0GEY7IEAw5kEDRQNiSMQ6OSX2-zvE3yQ:1qfZes:HawIb52hjjiDXq9hfa8kw1xJDk3M1p3YBU2h8sjTaUM','2023-09-25 05:40:26.328585'),('km1rkg4uxd6hw5ayl582rs1jf3y968m9','.eJxVjMsOwiAQRf-FtSHDY7C4dN9vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhYXMYjT7xYpPXLbAd-p3WaZ5rYuU5S7Ig_a5Thzfl4P9--gUq_f2nqPxTmIyTpmwxFZnxM6MojFkHYqaeOzxaIAsic_JFMigCWtEIHF-wPchTds:1qofdO:xF90JRkTCqRsmmRaSTn4_GHVSDwQZqAZ5M0vOaThc4M','2023-10-20 07:52:30.249416'),('ktfga0fbwdsmakpkjmj4oygh8g968nsy','.eJxVjMEOwiAQRP-FsyGwQBGP3v0GsruAVA1NSnsy_rtt0oMeZ96beYuI61Lj2vMcxyQuQovTb0fIz9x2kB7Y7pPkqS3zSHJX5EG7vE0pv66H-3dQsddtXSwyERh1huK8MQzDlr1BBUWjgcFxCaSLUpo8m-BAWaaMFMATWis-X-rIOAY:1qjvTS:78SYqRuDN9VuYOZT-6I69ksgHS0vMBHRtXanxfeLLIw','2023-10-07 05:46:38.484220'),('l48t5vzxn4e0zxpph5i19u0gq1epvm99','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qh2zW:n4E_zL5sucu53edl_apz2Fc6ImorKvX1G75XCWquvYY','2023-09-29 07:11:50.486588'),('m730nonjq0wkdd94tdq901pvz0c71t43','.eJxVjMsOwiAQRf-FtSHDozxcuvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMNDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rK0CkmCQYAU558BrUZIqJTroildPCWe9tAUjSxymiLqkQaCpaCSRk7w-k6DcK:1qgOkT:7R8aufK8YYmLG5dJ1eOImC1Rc06n0dfEV3fg_mHyXzI','2023-09-27 12:13:37.921163'),('mchu0h0xdigor9gk9dmog2utawkk58xi','.eJxVjDsOwjAQBe_iGllxnFXWlPScwdqfSQA5Uj4V4u4QKQW0b2bey2Xa1iFvi815VHd20Z1-NyZ5WN2B3qneJi9TXeeR_a74gy7-Oqk9L4f7dzDQMnzrhpgiYIyd9olBSwgJtGuRI4hgjwGscIEgIsYNhg5DNGpSsRbBwL0_5Hc4Bg:1qfdiA:9W9WsKqA6HllAyvdryCKnS7TIg8gdUo9OH8pW8dpKcs','2023-09-25 10:00:06.853088'),('migkadzldzvvcj7fwyvpibm8p05e0fv6','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qok3c:WMSp8z-cnJPzbPLqAOU5dWVOSutvCCeYyVwYG_zXQCQ','2023-10-20 12:35:52.465987'),('nlo6xggr2c13a4b1nb5i5n3yybij9fqu','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qh5E4:U9mChfGsu1kGW-Ih1rpR9a9K_RufhazlBAyBEkQn2mI','2023-09-29 09:35:00.542474'),('nss7fyq095ipw4z1er3aclmiiek74k62','.eJxVjEEOwiAQRe_C2hBamMK4dO8ZyAwMtmpoUtqV8e7apAvd_vfef6lI2zrGrckSp6zOqlOn340pPaTuIN-p3mad5rouE-td0Qdt-jpneV4O9-9gpDZ-awzIHYgHg2K84T54Am-tOOCUUyBXerJZDABZ47gIMvaAA3IIQyH1_gDQyze4:1qdrSO:2EHQI32SIh0333h6TjpdeRKBkAq7qpHDF7lVC2W9Eek','2023-09-20 12:16:28.635422'),('nymcoemum7nj4ml60gn6gs7z9o9an2x2','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qjCEJ:4C9YB7ytHMMsOp69sK2J1f8IfVFbOJl4HVTItFvuXZ0','2023-10-05 05:27:59.726524'),('o6lzoy39og4zwvg9ibez9q4qgpkeo8c0','.eJxVjDkOwjAUBe_iGlnxhm1Kes5g_U04gBwpTirE3UmkFNC-mXlvVWBdalm7zGVkdVFenX43BHpK2wE_oN0nTVNb5hH1ruiDdn2bWF7Xw_07qNDrVhskQhNdJnRMLOcQGKwdSGLMmAgpD-JdkLR5PkvgHHJ0CBaMxWTV5wsSUjjB:1qfZ6v:T7b3TKbM1DxFt6gCRgnCAutYc2GxfNZWSM4rVpd5Y30','2023-09-25 05:05:21.653973'),('o7zrnoyd9qq3pzn7hindg81l4i0tgxe0','.eJxVjEEOwiAQRe_C2hBamMK4dO8ZyAwMtmpoUtqV8e7apAvd_vfef6lI2zrGrckSp6zOqlOn340pPaTuIN-p3mad5rouE-td0Qdt-jpneV4O9-9gpDZ-awzIHYgHg2K84T54Am-tOOCUUyBXerJZDABZ47gIMvaAA3IIQyH1_gDQyze4:1qe7JI:0yZOpxYJHinzMGbkzPYgaNrWo6pbBRwIWJ0X4jIB0vY','2023-09-21 05:12:08.556217'),('pa7pxthovx96krmpmz2zrq571qta80d6','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qnvix:oe5jYJCd6LzCKl4UKBgREaFs4BYmbyoeisNeWyBL7mw','2023-10-18 06:51:11.790548'),('pd62hk3tmp0xmsttqzd6zl64i934onkd','.eJxVjMEOwiAQRP-FsyHsdsHo0bvfQBZYpGogKe2p8d9tkx50jvPezKo8L3PxS5fJj0ldFajTbxc4vqTuID25PpqOrc7TGPSu6IN2fW9J3rfD_Tso3Mu2xixnEOCLcWKdoYTZIhA4AgSTsx0GEY7IEAw5kEDRQNiSMQ6OSX2-zvE3yQ:1qfZ6G:fNRrs7DOvoK8PmI8EJaTwh5fyBQ2MftKlIkQv9RFd8w','2023-09-25 05:04:40.496802'),('pelz18mle64wob6mi9y2e14qh7cl1hfp','.eJxVjEEOwiAQRe_C2pAyDKAu3XuGBmYGqRpISrsy3l2bdKHb_977LzXGdSnj2mUeJ1Znherwu6VID6kb4Hust6ap1WWekt4UvdOur43ledndv4MSe_nWln0wwVlIPmdyxjKAd4MFwYE8RZeZBNNJEBxjMD44xGMAI5GyAKr3B83GN3A:1qgIHC:PqDPIRwIPhDwDlPE5MyRCA3CVYEBNo-nn19jCMKxt04','2023-09-27 05:18:58.265146'),('pxg59kvs86hnzuuyezc65z6e3vudvs2l','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qqRon:a3-A4RkrKEAeoD6rKBmCEabDxA2D-prM6lmUpr1D4A8','2023-10-25 05:31:37.408123'),('pynpkqjzjfmhh5wif5fh6svnqm4pdrcs','.eJxVjDkOwjAUBe_iGlnxhm1Kes5g_U04gBwpTirE3UmkFNC-mXlvVWBdalm7zGVkdVFenX43BHpK2wE_oN0nTVNb5hH1ruiDdn2bWF7Xw_07qNDrVhskQhNdJnRMLOcQGKwdSGLMmAgpD-JdkLR5PkvgHHJ0CBaMxWTV5wsSUjjB:1qeUyw:0fbbrdNGWtnxUUVfxWuvVY-x7S-P5kvwo0a7fyKst0s','2023-09-22 06:28:42.663583'),('rgev07se1e0subvacgsmzo0nzrqiymzo','.eJxVjEEOwiAQRe_C2hCgDAWX7j0DYWaoVA0kpV0Z765NutDtf-_9l4hpW0vcel7izOIstDj9bpjokesO-J7qrUlqdV1mlLsiD9rltXF-Xg7376CkXr41AaXgQYMmsKNnrVxQhB5xGoBc9uCdYR41sKLkTBiQbGZrCElNmsT7A9wnOCo:1qjZuU:0Le4XmB9vbPayTQo9U9-isK7_518m0WTuINzv-KjmPY','2023-10-06 06:45:06.619615'),('t4g82hszjocwyeuvlcszxyt8lufu1726','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qohkN:Ff4v49XCcDMtu8I_OnkWEc8DZurwtvE_dXmte-MXf1o','2023-10-20 10:07:51.051481'),('tduud5ygkn9xy0rhrfkz840jddcws04r','.eJxVjMEOwiAQRP-FsyHsdsHo0bvfQBZYpGogKe2p8d9tkx50jvPezKo8L3PxS5fJj0ldFajTbxc4vqTuID25PpqOrc7TGPSu6IN2fW9J3rfD_Tso3Mu2xixnEOCLcWKdoYTZIhA4AgSTsx0GEY7IEAw5kEDRQNiSMQ6OSX2-zvE3yQ:1qfZbi:-C7snt-GXKDw_sPgNLVQiNCCV2HqlkAE_dfkePyahP8','2023-09-25 05:37:10.501505'),('tehayboi2gepqbl1v8z7osg4xlrnf3q8','.eJxVjEEOwiAQRe_C2pApDGBduu8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnERKE6_WwzpwXUHdA_11mRqdV3mKHdFHrTLqRE_r4f7d1BCL9_a2lEZwuyCO-vBcMLRAESrNMTEacjJKmTnWBNHMJDRABJRRA3aWiPeH9DCN2s:1qgN1m:PdZM8ZrpoBTzSud5K8E7ER4xudrO3ctQnfD3eyOKnHk','2023-09-27 10:23:22.399776'),('tg9g2fm8mucb8kef03pq06ewzrqaaz8d','.eJxVjDsOAiEUAO9CbQh_eJb2e4bNAx6yaiDZT2W8uyHZQtuZybzZjMde52OjdV4yuzLHLr8sYnpSGyI_sN07T73t6xL5SPhpNz71TK_b2f4NKm51bCVKk2RRWsgcXKBQsgHjrZcgdJFWk0Ljo4-2BHAeolAWKYJ3pAA0-3wBvcA20w:1qhU5E:_2neZ6EAQt28FPizwA0LwrNpbP8xB5wIO8uXTiO9gZg','2023-09-30 12:07:32.621577'),('tutwlqxp9iyleqp5ve3yix7j4ysujr76','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qh1cL:YEJ3yhDDYDqCWQPIXNJWJELpX298D2SOBWVj7h151gw','2023-09-29 05:43:49.029475'),('u9lw1ezgf7gdmhv8jw9r3fahrttogpd8','.eJxVjDsOwjAQBe_iGlnZ-Icp6TmDtV6vcQDZUpxUiLuTSCmgfTPz3iLgupSwdp7DlMRFgDj9bhHpyXUH6YH13iS1usxTlLsiD9rlrSV-XQ_376BgL1vtvcs2EZ6BFTsNxiC6lJwdmEcNGpVjMANtaCTvtc4crYoKECE7MuLzBeGHN9E:1qfwXg:TPY8Bp1WPitVCrd6wALH8wouxZFGzhG9xmbC6HyVqfQ','2023-09-26 06:06:32.239272'),('uigsurp4ptupm1ln898qlnpad9t211rj','.eJxVjMEOwiAQRP-FsyFlCwU8evcbyC5spWogKe3J-O9K0oNe5jDvzbxEwH3LYW-8hiWJszDi9NsRxgeXDtIdy63KWMu2LiS7Ig_a5LUmfl4O9-8gY8vftdXaxWkerOI0IkYYPLEmUDGS8gTW90RiGo3V4EbtwfnkJqA0G8Pi_QHnAzfY:1qjdGt:sP-c8tVUo-OCsxXrDY__bYYT-dX5Rby4vnzfFKi5vEw','2023-10-06 10:20:27.980188'),('v5o5p128sesgso9kuvpg6mw5gxiwvcyj','.eJxVjDsOwjAQBe_iGlnZ-Icp6TmDtV6vcQDZUpxUiLuTSCmgfTPz3iLgupSwdp7DlMRFgDj9bhHpyXUH6YH13iS1usxTlLsiD9rlrSV-XQ_376BgL1vtvcs2EZ6BFTsNxiC6lJwdmEcNGpVjMANtaCTvtc4crYoKECE7MuLzBeGHN9E:1qfxhx:9vlkjMa4-89JWNTNd2OdY0gV8NEjOmsGpt7Uf8Impk8','2023-09-26 07:21:13.645231'),('vgxgb50wslogb31umm3c3bgoox36duuc','.eJxVjMEOwiAQRP-FsyFlCwU8evcbyC5spWogKe3J-O9K0oNe5jDvzbxEwH3LYW-8hiWJszDi9NsRxgeXDtIdy63KWMu2LiS7Ig_a5LUmfl4O9-8gY8vftdXaxWkerOI0IkYYPLEmUDGS8gTW90RiGo3V4EbtwfnkJqA0G8Pi_QHnAzfY:1qjdUI:Rrh7z76byWjTEAeaezLKrScLaK8WS11-fT18UmOZYA0','2023-10-06 10:34:18.126874'),('x17cb5saufqvn1dfdphrdb33hq5wmbsv','.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3Zmkp1-t4jpQW0H-Y7t1nnqbV3myHeFH3Twa8_0vBzu30HFUb91zFKCyEAipqwBJmOl1oRGKY_KRIt-smSLjmCL8whFaqeNI2GTA_Ts_QHVuTdW:1qp4TN:h24IXq3PYX8F_PLwWK_PrOpysakc5EWMVzksOL-2KKo','2023-10-21 10:23:49.689474'),('zrb7spi2pg3lrqix6k7dc74tt6gj6lpo','.eJxVjEEOwiAQRe_C2hAKFMGl-56BzDCDVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gIK06_G0J6cN0B3aHemkytrsuMclfkQbucGvHzerh_BwV6-dYABp3OQCE5zRRCIGP5nDXyEEYkhchaGTQcgLNLyXrwqDzqUeFAIN4fGhM5Rg:1qh1bS:XESj_3MX8bKEKAWLyp1fPtBH4HhtBFGNp2wq4ysEZ6I','2023-09-29 05:42:54.083660'),('ztglydqna9hc4v16rcwkrmdl5igalgmg','.eJxVjMsOwiAUBf-FtSElvMSle7-BXDi3UjWQlHZl_HdD0oVuz8yct4i0byXunde4QFyEEqffLVF-ch0AD6r3JnOr27okORR50C5vDfy6Hu7fQaFeRg3kMKvZI3AGrE_JWnaOggr5DK01YAx7Z5WbmLSZFMO7wB5Dg_h8ARgTOLI:1qgfdL:hc_VFsg24ZVdl6qa46oIvjFKw_lNGEAXrQh6d1jccIk','2023-09-28 06:15:23.512754');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classsections`
--

DROP TABLE IF EXISTS `tbl_classsections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classsections` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_number` int unsigned NOT NULL,
  `section` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tbl_classsections_chk_1` CHECK ((`class_number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classsections`
--

LOCK TABLES `tbl_classsections` WRITE;
/*!40000 ALTER TABLE `tbl_classsections` DISABLE KEYS */;
INSERT INTO `tbl_classsections` VALUES (1,1,'A'),(2,2,'A'),(3,3,'B'),(4,2,'B'),(5,1,'B'),(6,1,'E');
/*!40000 ALTER TABLE `tbl_classsections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holidays`
--

DROP TABLE IF EXISTS `tbl_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holidays` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `holiday_name` varchar(100) NOT NULL,
  `holiday_code` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `holiday_code` (`holiday_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holidays`
--

LOCK TABLES `tbl_holidays` WRITE;
/*!40000 ALTER TABLE `tbl_holidays` DISABLE KEYS */;
INSERT INTO `tbl_holidays` VALUES (1,'2023-08-15','2023-08-15','INDEPENDENCE DAY','IND');
/*!40000 ALTER TABLE `tbl_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_period`
--

DROP TABLE IF EXISTS `tbl_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_period` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `period_id` varchar(2) NOT NULL,
  `period_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `period_id` (`period_id`),
  UNIQUE KEY `period_name` (`period_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_period`
--

LOCK TABLES `tbl_period` WRITE;
/*!40000 ALTER TABLE `tbl_period` DISABLE KEYS */;
INSERT INTO `tbl_period` VALUES (1,'P1','PERIOD 1'),(2,'P2','PERIOD 2'),(3,'P3','PERIOD 3'),(4,'P4','PERIOD 4'),(5,'P5','PERIOD 5'),(6,'P6','PERIOD 6');
/*!40000 ALTER TABLE `tbl_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_staffdetails`
--

DROP TABLE IF EXISTS `tbl_staffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_staffdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `tag_id` bigint NOT NULL,
  `tag_id_hex` varchar(20) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobno` varchar(15) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_staffdetails`
--

LOCK TABLES `tbl_staffdetails` WRITE;
/*!40000 ALTER TABLE `tbl_staffdetails` DISABLE KEYS */;
INSERT INTO `tbl_staffdetails` VALUES (8,'SACHIN','123',4233545459,'fc56c6f3','sachin@gmail.com','6436363464','M',1);
/*!40000 ALTER TABLE `tbl_staffdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_studentdetails`
--

DROP TABLE IF EXISTS `tbl_studentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_studentdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `roll_no` smallint NOT NULL,
  `tag_id` bigint NOT NULL,
  `tag_id_hex` varchar(20) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` longtext,
  `gender` varchar(1) DEFAULT NULL,
  `parent_name1` varchar(100) NOT NULL,
  `parent_relation1` varchar(1) NOT NULL,
  `parent_name2` varchar(100) DEFAULT NULL,
  `parent_relation2` varchar(1) DEFAULT NULL,
  `mobno` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `class_name` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `doj` date DEFAULT NULL,
  `route_no` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studentdetails`
--

LOCK TABLES `tbl_studentdetails` WRITE;
/*!40000 ALTER TABLE `tbl_studentdetails` DISABLE KEYS */;
INSERT INTO `tbl_studentdetails` VALUES (1,'SACHIN','111',1,9876543212,'24cb016ec',NULL,'',NULL,'aaaaaaaa','F','',NULL,'3454345348','sa@dd.com','1','A',NULL,'233',1),(2,'SANJAY','123456',3,8765432134,'20a75e146',NULL,'',NULL,'sqfads','F','',NULL,'3456789345','sa@dd.com','1','A',NULL,'234',1),(3,'BABU','2345',2,8765432344,'20a75e218',NULL,'',NULL,'sqfads','G','',NULL,'3456789345','sa@dd.com','1','A',NULL,'234',1),(4,'SHASHI','333',4,4456784363,'109a521eb',NULL,'',NULL,'aaaaaaaa','G','',NULL,'9876543213','sa@dd.com','1','A',NULL,'234',1),(5,'SAI','245',2,4521782154,'10d84eb8a',NULL,'',NULL,'sachin','G','',NULL,'3456789345','sai@gmail.com','3','B',NULL,'2',1);
/*!40000 ALTER TABLE `tbl_studentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_teacherdetails`
--

DROP TABLE IF EXISTS `tbl_teacherdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_teacherdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `tag_id` bigint NOT NULL,
  `tag_id_hex` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_teacherdetails`
--

LOCK TABLES `tbl_teacherdetails` WRITE;
/*!40000 ALTER TABLE `tbl_teacherdetails` DISABLE KEYS */;
INSERT INTO `tbl_teacherdetails` VALUES (6,'SACHIN','123',4233545453,'fc56c6ed','sachin@gmail.com','7899218162','M',1);
/*!40000 ALTER TABLE `tbl_teacherdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timetable`
--

DROP TABLE IF EXISTS `tbl_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_timetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(10) NOT NULL,
  `period_name` varchar(10) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `teacher_id` varchar(20) DEFAULT NULL,
  `class_name` varchar(10) NOT NULL,
  `section` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timetable`
--

LOCK TABLES `tbl_timetable` WRITE;
/*!40000 ALTER TABLE `tbl_timetable` DISABLE KEYS */;
INSERT INTO `tbl_timetable` VALUES (1,'Monday','P1','12:53:00.000000','13:53:00.000000','123','1','A'),(4,'Thursday','P5','13:56:00.000000','14:56:00.000000','123','1','A'),(5,'Monday','P2','15:42:00.000000','16:42:00.000000','123','3','B'),(6,'Monday','P3','15:55:00.000000','17:55:00.000000','123','2','B');
/*!40000 ALTER TABLE `tbl_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_111`
--

DROP TABLE IF EXISTS `tblattendance_111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_111` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_111`
--

LOCK TABLES `tblattendance_111` WRITE;
/*!40000 ALTER TABLE `tblattendance_111` DISABLE KEYS */;
INSERT INTO `tblattendance_111` VALUES ('2023-09-13',1,NULL,NULL,NULL,NULL,NULL),('2023-09-14',1,NULL,NULL,NULL,NULL,NULL),('2023-09-23',1,NULL,NULL,NULL,NULL,NULL),('2023-10-06',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_123456`
--

DROP TABLE IF EXISTS `tblattendance_123456`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_123456` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_123456`
--

LOCK TABLES `tblattendance_123456` WRITE;
/*!40000 ALTER TABLE `tblattendance_123456` DISABLE KEYS */;
INSERT INTO `tblattendance_123456` VALUES ('2023-09-13',1,NULL,NULL,NULL,NULL,NULL),('2023-09-14',0,NULL,NULL,NULL,NULL,NULL),('2023-09-23',0,NULL,NULL,NULL,NULL,NULL),('2023-10-06',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_123456` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_2345`
--

DROP TABLE IF EXISTS `tblattendance_2345`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_2345` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_2345`
--

LOCK TABLES `tblattendance_2345` WRITE;
/*!40000 ALTER TABLE `tblattendance_2345` DISABLE KEYS */;
INSERT INTO `tblattendance_2345` VALUES ('2023-09-13',1,NULL,NULL,NULL,NULL,NULL),('2023-09-14',0,NULL,NULL,NULL,NULL,NULL),('2023-09-23',1,NULL,NULL,NULL,NULL,NULL),('2023-10-06',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_2345` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_245`
--

DROP TABLE IF EXISTS `tblattendance_245`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_245` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT '0',
  `p2` tinyint DEFAULT '0',
  `p3` tinyint DEFAULT '0',
  `p4` tinyint DEFAULT '0',
  `p5` tinyint DEFAULT '0',
  `p6` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_245`
--

LOCK TABLES `tblattendance_245` WRITE;
/*!40000 ALTER TABLE `tblattendance_245` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_245` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_333`
--

DROP TABLE IF EXISTS `tblattendance_333`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_333` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_333`
--

LOCK TABLES `tblattendance_333` WRITE;
/*!40000 ALTER TABLE `tblattendance_333` DISABLE KEYS */;
INSERT INTO `tblattendance_333` VALUES ('2023-09-13',0,NULL,NULL,NULL,NULL,NULL),('2023-09-14',1,NULL,NULL,NULL,NULL,NULL),('2023-09-23',1,NULL,NULL,NULL,NULL,NULL),('2023-10-06',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_333` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgateconfigmaster`
--

DROP TABLE IF EXISTS `tblgateconfigmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgateconfigmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gatereaderid` int NOT NULL,
  `imei` bigint NOT NULL,
  `gatereadername` varchar(45) DEFAULT NULL,
  `simno` bigint NOT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  `ssid` varchar(45) DEFAULT NULL,
  `subnetmask` varchar(45) DEFAULT NULL,
  `defaultgateway` varchar(45) DEFAULT NULL,
  `routerpassword` varchar(45) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lang` double DEFAULT NULL,
  `updatestatus` tinyint(1) DEFAULT NULL,
  `updatedts` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gatereaderid` (`gatereaderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgateconfigmaster`
--

LOCK TABLES `tblgateconfigmaster` WRITE;
/*!40000 ALTER TABLE `tblgateconfigmaster` DISABLE KEYS */;
INSERT INTO `tblgateconfigmaster` VALUES (1,1512,867106031377,'Singasandra',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183161735534668,78.54525756835938,0,'2023-10-07 17:23:54.000000');
/*!40000 ALTER TABLE `tblgateconfigmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrawdata`
--

DROP TABLE IF EXISTS `tblrawdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrawdata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ts` datetime(6) NOT NULL,
  `version` double NOT NULL,
  `signalstength` int NOT NULL,
  `tagcount` int NOT NULL,
  `gatereaderid` int NOT NULL,
  `imei` bigint NOT NULL,
  `gatereadername` varchar(100) DEFAULT NULL,
  `simno` bigint DEFAULT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  `ssid` varchar(45) DEFAULT NULL,
  `subnetmask` varchar(45) DEFAULT NULL,
  `defaultgateway` varchar(45) DEFAULT NULL,
  `routerpassword` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `tagdata` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrawdata`
--

LOCK TABLES `tblrawdata` WRITE;
/*!40000 ALTER TABLE `tblrawdata` DISABLE KEYS */;
INSERT INTO `tblrawdata` VALUES (1,'2023-07-05 16:10:00.000000',1.2000000476837158,100,140,1512,867106031377,'Singasandra',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183161735534668,78.54525756835938,'6ACD1D45,132758,5D3FB180,132341,FED2B5B0,132535,ACBEA95E,132807,FDFF3550,132759,AA22DEEA,132806,6ACA7AA5,132802,AA2CDF3A,132807,DAD87DE9,132806,FED28A10,132342,F60F5FE3,132802,B3ABD77E,132807,AA370E6A,132806,6AC295A5,132804,DADF7839,132806,73C4CB82,132439,E166B5E2,132524,6AC04795,132807,73F1F5E2,132802,6ABE5E45,132802,DA521879,132556,6ACF1245,132806,DADA6F59,132758,6ABAA375,132800,CD371B75,132805,D6A7DB02,132806,D4A1E814,132600,5D4E7E90,132808,DA587969,132739,AA24F75A,132604,73BD5BA2,132801,5D480C20,132807,5D42EC10,132807,E1612B02,132807,6AD60375,132650,6AD334A5,132410,6ABA5585,132806,AA3A05BA,132802,73C4DCD2,132719,6AD33495,132803,5D4ACEE0,132738,6AC97925,132552,6AC934D5,132800,6ABF0E65,132348,7C2C4CDB,132349,ED657C37,132758,73AA3942,132552,5D467630,132801,CD33D545,132807,5D476820,132806,5D45D2A0,132352,B9CCC45C,132522,DADE11A9,132503,AA3A596A,132804,ED7C5D87,132610,E15E1732,132546,6AC81DA5,132354,DADF7399,132657,7C098A4B,132355,6AD23575,132801,6AC0FCC5,132643,E15DF022,132720,DAD6ECB9,132356,6AD33AC5,132709,6AC7DFC5,132807,B9C4961C,132645,CD383F55,132401,ACBF340E,132803,6ACB3C85,132402,5D45E9A0,132803,AA301ADA,132807,ECC38F47,132553,DADB9E09,132726,6ABCFAC5,132413,6ABF16A5,132736,7C03C09B,132525,6AC7B7E5,132407,CD363495,132756,5D4E99A0,132502,73BA1082,132650,DFD5A6ED,132410,AA3A498A,132802,B3ABFC1E,132800,73ABA362,132414,5D3CA0C0,132517,73ABB722,132414,6AC759E5,132806,FED4B1D0,132606,ED7502F7,132700,B3BB2E8E,132806,7C2246BB,132418,E160D1D2,132713,6AC13DC5,132517,73F0B5C2,132421,7C04A11B,132421,F6002493,132505,6AC6A385,132514,E15DEF72,132536,F6150563,132805,5D3FD5E0,132427,DFD566CD,132427,B3ACC51E,132805,73C10222,132430,73C32702,132526,CF883CF4,132433,73BE3EA2,132743,ACBEFD7E,132436,73E43472,132438,6AB97F65,132438,7C042E7B,132751,73BBF412,132439,DFD59DCD,132647,5D4BA5B0,132440,7C0B4BAB,132606,6AC31E15,132444,73C29672,132446,CD30DF45,132443,ED5F4DE7,132444,73C01EB2,132445,6ABE3195,132656,DAD65F19,132729,FED41650,132646,6ABF5565,132509,AA34A2DA,132449,7C0B481B,132450,73C27E82,132522,AA20CE3A,132452,5D4CAAE0,132453,73E503B2,132713,5D3EAB20,132454,5D41A1C0,132705,5D4D3010,132727,7C263F4B,132500,AA301C6A,132501,73F1A692,132501,6ABAF6B5,132642,73C0A372,132607,fc56c6f3,142514,24cb016ec,165000,fc56c6ed,171005');
/*!40000 ALTER TABLE `tblrawdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsiteinfo`
--

DROP TABLE IF EXISTS `tblsiteinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsiteinfo` (
  `sitename` varchar(100) NOT NULL,
  `siteid` varchar(45) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `enabled` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsiteinfo`
--

LOCK TABLES `tblsiteinfo` WRITE;
/*!40000 ALTER TABLE `tblsiteinfo` DISABLE KEYS */;
INSERT INTO `tblsiteinfo` VALUES ('Singasandra','1512',12.1832,78.5453,0);
/*!40000 ALTER TABLE `tblsiteinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff_123`
--

DROP TABLE IF EXISTS `tblstaff_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstaff_123` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff_123`
--

LOCK TABLES `tblstaff_123` WRITE;
/*!40000 ALTER TABLE `tblstaff_123` DISABLE KEYS */;
INSERT INTO `tblstaff_123` VALUES (1,'2023-10-06 07:55:14',0,'1512'),(2,'2023-10-06 08:55:14',1,'1512'),(3,'2023-10-07 08:55:14',0,'1512'),(4,'2023-10-07 08:55:14',1,'1512'),(5,'2023-10-07 08:55:14',1,'1512'),(6,'2023-10-07 08:55:14',1,'1512');
/*!40000 ALTER TABLE `tblstaff_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent_111`
--

DROP TABLE IF EXISTS `tblstudent_111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent_111` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_111`
--

LOCK TABLES `tblstudent_111` WRITE;
/*!40000 ALTER TABLE `tblstudent_111` DISABLE KEYS */;
INSERT INTO `tblstudent_111` VALUES (1,'2023-09-06 12:17:08',0,'1512'),(2,'2023-09-08 07:55:14',0,'1512'),(3,'2023-09-08 12:17:08',1,'1512'),(4,'2023-09-08 12:17:08',0,'1512'),(5,'2023-09-13 12:17:08',0,'1512'),(6,'2023-09-13 12:17:08',1,'1512'),(7,'2023-09-13 13:17:08',0,'1512'),(8,'2023-10-05 07:57:08',0,'1512'),(9,'2023-10-06 07:57:08',0,'1512'),(10,'2023-10-06 07:57:08',1,'1512'),(15,'2023-10-07 11:20:00',0,'1512');
/*!40000 ALTER TABLE `tblstudent_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent_123456`
--

DROP TABLE IF EXISTS `tblstudent_123456`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent_123456` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_123456`
--

LOCK TABLES `tblstudent_123456` WRITE;
/*!40000 ALTER TABLE `tblstudent_123456` DISABLE KEYS */;
INSERT INTO `tblstudent_123456` VALUES (2,'2023-09-13 07:55:14',0,'1512'),(3,'2023-09-13 07:55:14',1,'1512');
/*!40000 ALTER TABLE `tblstudent_123456` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent_2345`
--

DROP TABLE IF EXISTS `tblstudent_2345`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent_2345` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_2345`
--

LOCK TABLES `tblstudent_2345` WRITE;
/*!40000 ALTER TABLE `tblstudent_2345` DISABLE KEYS */;
INSERT INTO `tblstudent_2345` VALUES (1,'2023-09-08 13:50:00',0,'1512'),(2,'2023-09-08 13:50:00',1,'1512'),(3,'2023-09-13 13:50:00',0,'1512'),(4,'2023-09-13 13:50:00',1,'1512');
/*!40000 ALTER TABLE `tblstudent_2345` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblteacher_123`
--

DROP TABLE IF EXISTS `tblteacher_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblteacher_123` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblteacher_123`
--

LOCK TABLES `tblteacher_123` WRITE;
/*!40000 ALTER TABLE `tblteacher_123` DISABLE KEYS */;
INSERT INTO `tblteacher_123` VALUES (1,'2023-10-07 11:40:05',0,'1512'),(2,'2023-10-07 11:40:05',1,'1512'),(3,'2023-10-07 11:40:05',1,'1512'),(4,'2023-10-07 11:40:05',1,'1512');
/*!40000 ALTER TABLE `tblteacher_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'school'
--
/*!50003 DROP PROCEDURE IF EXISTS `sproc_attendanceupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_attendanceupdate`(t_id varchar(45),t_time varchar(45),r_id int)
BEGIN
DECLARE tbl_name VARCHAR(100);
DECLARE detail VARCHAR(100);
DECLARE date1 VARCHAR(50);
DECLARE date2 VARCHAR(50);
DECLARE dt_count int;
DECLARE id varchar(45);
DECLARE evnt tinyint(1);

	IF EXISTS(SELECT * FROM tbl_studentdetails WHERE tag_id_hex = t_id and enabled = 1) THEN
		SELECT student_id INTO id FROM tbl_studentdetails WHERE tag_id_hex = t_id and enabled = 1;
        SET tbl_name = CONCAT('tblstudent_', id);
        
    ELSEIF EXISTS(SELECT * FROM tbl_teacherdetails WHERE tag_id_hex = t_id and enabled = 1) THEN
		SELECT teacher_id INTO id FROM tbl_teacherdetails WHERE tag_id_hex = t_id and enabled = 1;    
        SET tbl_name = CONCAT('tblteacher_', id);
        
	ELSEIF EXISTS(SELECT * FROM tbl_staffdetails WHERE tag_id_hex = t_id and enabled = 1) THEN
		SELECT staff_id INTO id FROM tbl_staffdetails WHERE tag_id_hex = t_id and enabled = 1; 
        select id;
        SET tbl_name = CONCAT('tblstaff_', id);
        
	END IF;
    select tbl_name;
	IF tbl_name is not null THEN
		select tbl_name;
		SET date1 = CONCAT(CURDATE(), " ",t_time);
        SET date2 = CONCAT(CURDATE(), " 00:00:00");
		SET detail = CONVERT(r_id,CHAR);
		SELECT detail;
		SET @sql = CONCAT('CREATE TABLE IF NOT EXISTS ', tbl_name, ' (id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, ts TIMESTAMP NOT NULL, event TINYINT(1) NOT NULL, details VARCHAR(255) NOT NULL);');
		SELECT @sql;
        PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

		SET @sql = (CONCAT("select count(event) into @dt_count from ",tbl_name," where ts >= '",date2,"'"));
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

        SET @sql = (CONCAT("select event into @evnt from ",tbl_name," ORDER BY ts DESC LIMIT 1"));
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
		
		IF (@dt_count = 0) THEN
			SET evnt = 0;
		ELSEIF @evnt = 0 THEN  
			SET evnt = 1;
		ELSE  
			SET evnt = 0;
		END IF;
       
		SET @sql = CONCAT('insert into ', tbl_name, " (ts,event,details) values ('",date1,"',",evnt,",",detail,")");
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_attendance_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_attendance_report`(id varchar(45),from_date varchar(45),to_date varchar(45),opt int)
BEGIN
declare t_id bigint;
declare tbl_name varchar(100);
declare f_date varchar(45);
declare t_date varchar(45);
set f_date = concat(from_date," 00:00:00");
set t_date = concat(to_date," 23:59:59");

if opt = 1 then
	if not exists(select * from tbl_studentdetails where  student_id= id)then
		set @result = "NOT FOUND";
		select @result;
	else 
		SET tbl_name = CONCAT('tblstudent_', id);
		CALL sys.table_exists('school', tbl_name, @exists);
		if @exists = 'BASE TABLE' then
			SET @sql = CONCAT('select convert(DATE_FORMAT(date(ts),"%d-%m-%Y"),char) as dt,convert(time(ts),char) as tm,event,details from ', tbl_name, ' where  ts >="', f_date,'" and ts <= "',t_date,'"');
			PREPARE stmt FROM @sql;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
		else
			set @result = "no records found";
			select @result;
		end if;
        
	end if;
elseif opt = 2 then
	if not exists(select * from tbl_teacherdetails where  teacher_id= id)then
		set @result = "NOT FOUND";
		select @result;
	else 
		SET tbl_name = CONCAT('tblteacher_', id);
		CALL sys.table_exists('school', tbl_name, @exists);
		if @exists = 'BASE TABLE' then
			SET @sql = CONCAT('select convert(DATE_FORMAT(date(ts),"%d-%m-%Y"),char) as dt,convert(time(ts),char) as tm,event,details from ', tbl_name, ' where  ts >="', f_date,'" and ts <= "',t_date,'"');
			PREPARE stmt FROM @sql;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
		else
			set @result = "no records found";
			select @result;
		end if;
    end if;
else
	if not exists(select * from tbl_staffdetails where  staff_id= id)then
		set @result = "NOT FOUND";
		select @result;
	else 
		SET tbl_name = CONCAT('tblstaff_', id);
		CALL sys.table_exists('school', tbl_name, @exists);
		if @exists = 'BASE TABLE' then
			SET @sql = CONCAT('select convert(DATE_FORMAT(date(ts),"%d-%m-%Y"),char) as dt,convert(time(ts),char) as tm,event,details from ', tbl_name, ' where  ts >="', f_date,'" and ts <= "',t_date,'"');
			PREPARE stmt FROM @sql;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
		else
			set @result = "no records found";
			select @result;
		end if;
    end if;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_monthreport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_monthreport`(month INT, year INT , id varchar(45),opt int)
BEGIN
    DECLARE doj VARCHAR(45);
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE cur_date DATE;
    DECLARE result TEXT;
    DECLARE tbl_name VARCHAR(100);
    
    SET result = "";
    if opt = 1 then
		SET tbl_name = CONCAT('tblteacher_', id);
	elseif opt = 0 then
		SET tbl_name = CONCAT('tblstudent_', id);
	elseif opt = 2 then
		SET tbl_name = CONCAT('tblstaff_', id);
    end if;
    SET start_date = CONCAT(year, '-', LPAD(month, 2, '0'), '-01');
    SET end_date = IF(year = YEAR(CURDATE()) AND month = MONTH(CURDATE()), CURDATE(), LAST_DAY(start_date));
    SET cur_date = start_date;
    CALL sys.table_exists('school', tbl_name, @exists);
    
    IF @exists = 'BASE TABLE' THEN
          WHILE cur_date <= end_date DO
            
                SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @count');
                PREPARE stmt FROM @sql;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;
                
                IF @count = 0 THEN
                    IF DAYOFWEEK(cur_date) = 1 THEN
                        SET result = CONCAT(result, "WO,");
                    ELSE
                        SET result = CONCAT(result, "A,");
                    END IF;
                ELSE
                    SET @sql = CONCAT('SELECT TIME_FORMAT(MIN(ts), "%H:%i"), TIME_FORMAT(MAX(ts), "%H:%i") FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @tm1, @tm2');
                    PREPARE stmt FROM @sql;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    
                    IF @tm1 = @tm2 THEN
                        SET result = CONCAT(result, @tm1, ",");
                    ELSE
                        SET result = CONCAT(result, @tm1, " - ", @tm2, ",");
                    END IF;
                END IF;
           
            
            SET cur_date = DATE_ADD(cur_date, INTERVAL 1 DAY);
        END WHILE;
    ELSE
        SET result = "TABLE NOT EXIST";
    END IF;
    SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_period_attendance_editlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_period_attendance_editlist`(cls int,sec varchar(45),prd varchar(45),dt varchar(45))
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE r_no INT;
	DECLARE std_id VARCHAR(45);
    DECLARE std_name VARCHAR(100);
    DECLARE tbl_name VARCHAR(100);
    DECLARE result TEXT;
    
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;
    SET i = 0;
    SET result = '';
    
	WHILE i < n DO
		SELECT student_id, name,roll_no FROM tbl_studentdetails where class_name = cls and section = sec order by roll_no LIMIT i, 1  INTO std_id, std_name,r_no;
		SET result = CONCAT(result, r_no, ",", std_name, ",");
        SET tbl_name = CONCAT('tblattendance_', std_id);
        CALL sys.table_exists('school', tbl_name, @exists);
		IF @exists = 'BASE TABLE' THEN
			SET @sql = CONCAT('SELECT ',prd,' FROM ', tbl_name, ' WHERE dates = "',dt, '" INTO @p');
            PREPARE stmt FROM @sql;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
            SET result = CONCAT(result,	IFNULL(CONVERT(@p, CHAR), ''), ',');
		END IF;
		SET i = i+1;
    END WHILE;
	SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_period_attendance_edit_mark` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_period_attendance_edit_mark`(cls int,sec varchar(45),prd varchar(45),id_string varchar(5000),dt varchar(45))
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
	DECLARE std_id VARCHAR(45);
    DECLARE tbl_name VARCHAR(100);
    DECLARE id_list VARCHAR(5000);
    DECLARE comma_position INT;
    DECLARE string_length INT;
    DECLARE id_found INT DEFAULT 0;
    DECLARE current_id INT;
    
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;

    WHILE i < n DO
		SELECT student_id FROM tbl_studentdetails where class_name = cls and section = sec LIMIT i, 1 INTO std_id;
        SET tbl_name = CONCAT('tblattendance_', std_id);
        CALL sys.table_exists('school', tbl_name, @exists);
		IF @exists = 'BASE TABLE' THEN
			SET comma_position = 1;
            SET id_list = id_string;
			id_loop: WHILE comma_position > 0 AND LENGTH(id_list) > 0 DO
							SET comma_position = LOCATE(',', id_list);
							IF comma_position > 0 THEN
								SET current_id = CAST(SUBSTRING(id_list, 1, comma_position - 1) AS SIGNED);
								SET id_list = SUBSTRING(id_list, comma_position + 1);
							ELSE
								SET current_id = CAST(TRIM(id_list) AS SIGNED);
							END IF;
                            
							IF current_id = std_id THEN
								SET id_found = 1;
								LEAVE id_loop;
							END IF;
					  END WHILE id_loop;
                      
			SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE dates = "',dt, '" INTO @count');
            PREPARE stmt FROM @sql;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
        
			IF @count > 0 THEN
				if id_found then 
					set id_found = 0;
					SET @sql = CONCAT('UPDATE ', tbl_name, ' SET ',prd,'= 1 WHERE dates = "',dt, '"');
                    PREPARE stmt FROM @sql;
					EXECUTE stmt;
					DEALLOCATE PREPARE stmt;
				else
					SET @sql = CONCAT('UPDATE ', tbl_name, ' SET ',prd,'= 0 WHERE dates = "',dt, '"');
                    PREPARE stmt FROM @sql;
					EXECUTE stmt;
					DEALLOCATE PREPARE stmt;
                end if;
			ELSE
				if id_found then 
					set id_found = 0;
					SET @sql = CONCAT('INSERT INTO ', tbl_name, ' (dates,',prd,') values("',dt, '",1)');
                    PREPARE stmt FROM @sql;
					EXECUTE stmt;
					DEALLOCATE PREPARE stmt;
				else
					SET @sql = CONCAT('INSERT INTO ', tbl_name, ' (dates) values("',dt, '")');
                    PREPARE stmt FROM @sql;
					EXECUTE stmt;
					DEALLOCATE PREPARE stmt;
                end if;
			END IF;
		END IF;
		SET i = i+1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_period_attendance_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_period_attendance_list`(cls int,sec varchar(45),dt varchar(45))
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE r_no INT;
	DECLARE std_id VARCHAR(45);
    DECLARE std_name VARCHAR(100);
    DECLARE tbl_name VARCHAR(100);
    DECLARE result TEXT;
    
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;
    SET i = 0;
    SET result = '';
    
    WHILE i < n DO
		SELECT student_id, name,roll_no FROM tbl_studentdetails where class_name = cls and section = sec LIMIT i, 1 INTO std_id, std_name,r_no;
		SET result = CONCAT(result, r_no, ",", std_name, ",", std_id, ",");
        SET tbl_name = CONCAT('tblstudent_', std_id);
        CALL sys.table_exists('school', tbl_name, @exists);
		IF @exists = 'BASE TABLE' THEN
			SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE ts >= "',dt, '  00:00:00" AND ts <= "', dt, ' 23:59:59" INTO @count');
            PREPARE stmt FROM @sql;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
        END IF;
        IF @count = 0 THEN
			SET result = CONCAT(result, "0,");
        ELSE
			SET result = CONCAT(result, "1,");
        END IF;
		SET i = i+1;
    END WHILE;
	SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_period_attendance_mark` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_period_attendance_mark`(cls int,sec varchar(45),prd varchar(45),id_string varchar(5000))
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
	DECLARE std_id VARCHAR(45);
    DECLARE tbl_name VARCHAR(100);
    DECLARE id_list VARCHAR(5000);
    DECLARE comma_position INT;
    DECLARE string_length INT;
    DECLARE id_found INT DEFAULT 0;
    DECLARE current_id INT;
    
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;

    WHILE i < n DO
		SELECT student_id FROM tbl_studentdetails where class_name = cls and section = sec LIMIT i, 1 INTO std_id;
        SET tbl_name = CONCAT('tblattendance_', std_id);
        CALL sys.table_exists('school', tbl_name, @exists);
		IF @exists = 'BASE TABLE' THEN
			SET comma_position = 1;
            SET id_list = id_string;
			id_loop: WHILE comma_position > 0 AND LENGTH(id_list) > 0 DO
							SET comma_position = LOCATE(',', id_list);
							IF comma_position > 0 THEN
								SET current_id = CAST(SUBSTRING(id_list, 1, comma_position - 1) AS SIGNED);
								SET id_list = SUBSTRING(id_list, comma_position + 1);
							ELSE
								SET current_id = CAST(TRIM(id_list) AS SIGNED);
							END IF;
                            
							IF current_id = std_id THEN
								SET id_found = 1;
								LEAVE id_loop;
							END IF;
					  END WHILE id_loop;
               
			SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE dates = "',date(now()), '" INTO @count');
            PREPARE stmt FROM @sql;
            EXECUTE stmt;
            DEALLOCATE PREPARE stmt;
        
			IF @count > 0 THEN
				if id_found then 
					set id_found = 0;
					SET @sql = CONCAT('UPDATE ', tbl_name, ' SET ',prd,'= 1 WHERE dates = "',date(now()), '"');
				else
					SET @sql = CONCAT('UPDATE ', tbl_name, ' SET ',prd,'= 0 WHERE dates = "',date(now()), '"');
                end if;
                PREPARE stmt FROM @sql;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
                
			ELSE
				if id_found then 
					set id_found = 0;
					SET @sql = CONCAT('INSERT INTO ', tbl_name, ' (dates,',prd,') values("',date(now()), '",1)');                    
				else
					SET @sql = CONCAT('INSERT INTO ', tbl_name, ' (dates) values("',date(now()), '")');                    
                end if;
                PREPARE stmt FROM @sql;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
			END IF;
		END IF;
		SET i = i+1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_period_attendance_view` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_period_attendance_view`(cls int,sec varchar(45),prd varchar(45),dt varchar(45),opt int)
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE r_no INT;
	DECLARE std_id VARCHAR(45);
    DECLARE std_name VARCHAR(100);
    DECLARE tbl_name VARCHAR(100);
    DECLARE result TEXT;
    
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;
    SET i = 0;
    SET result = '';
    
	WHILE i < n DO
		SELECT student_id, name,roll_no FROM tbl_studentdetails where class_name = cls and section = sec order by roll_no LIMIT i, 1  INTO std_id, std_name,r_no;
		SET result = CONCAT(result, r_no, ",", std_name, ",", std_id, ",");
        SET tbl_name = CONCAT('tblattendance_', std_id);
        CALL sys.table_exists('school', tbl_name, @exists);
        
		IF @exists = 'BASE TABLE' THEN
            if opt then
				SET @sql = CONCAT('SELECT p1,p2,p3,p4,p5,p6 FROM ', tbl_name, ' WHERE dates = "',dt, '" INTO @p1,@p2,@p3,@p4,@p5,@p6');
				PREPARE stmt FROM @sql;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
				SET result = CONCAT(result,
									IFNULL(CONVERT(@p1, CHAR), ''), ',',
									IFNULL(CONVERT(@p2, CHAR), ''), ',',
									IFNULL(CONVERT(@p3, CHAR), ''), ',',
									IFNULL(CONVERT(@p4, CHAR), ''), ',',
									IFNULL(CONVERT(@p5, CHAR), ''), ',',
									IFNULL(CONVERT(@p6, CHAR), ''), ','
								);
			else
				SET @sql = CONCAT('SELECT ',prd,' FROM ', tbl_name, ' WHERE dates = "',dt, '" INTO @p');
				PREPARE stmt FROM @sql;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
				SET result = CONCAT(result,	IFNULL(CONVERT(@p, CHAR), ''), ',');
			end if;
		ELSE
			SET result = CONCAT(result,	 ',,,,,,');
		END IF;
        
		SET i = i+1;
    END WHILE;
	SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_sitedata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_sitedata`()
BEGIN
DECLARE n INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
DECLARE t varchar(45);
DECLARE s_name varchar(100);
DECLARE s_id INT DEFAULT 0;
DECLARE lt FLOAT; 
DECLARE lg FLOAT;
DECLARE dt varchar(45);
DECLARE dt1 varchar(45);
DECLARE en boolean;

SELECT COUNT(*) FROM tblrawdata INTO n;
SET i=0;
WHILE i<n DO 
  SELECT ts,gatereaderid,gatereadername,latitude,longitude FROM tblrawdata ehre LIMIT i,1  INTO dt,s_id,s_name,lt,lg;
  set dt1 = TIMESTAMPDIFF(minute, dt, now());
  if dt1 >= 15 then
  set en = false;
  else
  set en = true;
  end if;
  IF NOT exists(select * from tblsiteinfo where siteid = s_id)THEN
  INSERT tblsiteinfo values(s_name,s_id,lt,lg,en);
  ELSE
  UPDATE tblsiteinfo
  SET sitename = s_name, siteid = s_id, lat = lt, lng = lg, enabled = en
  where siteid = s_id;
  SET i = i + 1;
  END IF;
  END WHILE;
  SELECT * FROM tblsiteinfo ORDER BY sitename;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_student_monthreport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_student_monthreport`(month INT, year INT,cls int,sec varchar(45))
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE std_id VARCHAR(45);
    DECLARE std_name VARCHAR(100);
    DECLARE tbl_name VARCHAR(100);
    DECLARE hl_done INT default 0;
    DECLARE tm1 VARCHAR(45);
    DECLARE tm2 VARCHAR(45);
    DECLARE doj1 VARCHAR(45);
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE cur_date DATE;
    DECLARE result TEXT;
    DECLARE intime VARCHAR(45);
    DECLARE outtime VARCHAR(45);
    DECLARE done INT DEFAULT 0;
    DECLARE from_dt VARCHAR(45);
    DECLARE to_dt VARCHAR(45);
    DECLARE holiday_code1 VARCHAR(255);
    DECLARE cur CURSOR FOR SELECT from_date, to_date, holiday_code FROM tbl_holidays;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	
    SELECT COUNT(*) INTO n FROM tbl_studentdetails where class_name = cls and section = sec;
    SET i = 0;
    SET result = '';
    WHILE i < n DO
        SELECT student_id, name,doj FROM tbl_studentdetails where class_name = cls and section = sec LIMIT i, 1 INTO std_id, std_name, doj1;
        SET tbl_name = CONCAT('tblstudent_', std_id);
        SET start_date = CONCAT(year, '-', LPAD(month, 2, '0'), '-01');
        SET end_date = IF(year = YEAR(CURDATE()) AND month = MONTH(CURDATE()), CURDATE(), LAST_DAY(start_date));
        SET cur_date = start_date;
		CALL sys.table_exists('school', tbl_name, @exists);
		IF @exists = 'BASE TABLE' THEN
			SET result = CONCAT(result, std_name, ",", std_id, ",", convert(cls,char), ",",sec, ",");
			WHILE cur_date <= end_date DO
					SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @count');
                    PREPARE stmt FROM @sql;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    IF @count = 0 THEN
                        IF DAYOFWEEK(cur_date) = 1 THEN
							SET result = CONCAT(result, "WO,");
						ELSE
							OPEN cur;
							holiday_loop: LOOP
								FETCH NEXT FROM cur INTO from_dt,to_dt, holiday_code1;
                                IF cur_date >= from_dt AND cur_date <= to_dt THEN
                                    SET result = CONCAT(result,holiday_code1 ,",");
                                    SET hl_done = 1;
                                    set done = 1;
								end if;
                                
								IF done = 1 THEN
									 LEAVE holiday_loop;
								END IF;
							END LOOP holiday_loop;
							CLOSE cur;
							IF hl_done THEN
								SET hl_done = 0;
							ELSE
								SET result = CONCAT(result, "A,");
							END IF;
                        END IF;
                    ELSE
					    SET @sql = CONCAT('SELECT TIME_FORMAT(MIN(ts), "%H:%i"), TIME_FORMAT(MAX(ts), "%H:%i") FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @tm1, @tm2');	
                        PREPARE stmt FROM @sql;
						EXECUTE stmt;
						DEALLOCATE PREPARE stmt;
                        
							IF @tm1 = @tm2 THEN
								SET result = CONCAT(result, @tm1, ",");
							ELSE
								SET result = CONCAT(result, @tm1, " - ", @tm2, ",");
							END IF;
                    END IF;
				SET cur_date = DATE_ADD(cur_date, INTERVAL 1 DAY);
			END WHILE;
		END IF;
        SET i = i+1;
    END WHILE;
 SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_tblrawdataupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_tblrawdataupdate`(dt varchar(45), vr float, sig_strength int, tagcnt int, readerid int, imei1 bigint, readername varchar(100), sim_no bigint, ipadd varchar(45),
ssid1 varchar(45), sn_mask varchar(45), d_gateway varchar(45), rout_pass varchar(45), lt float,lg float, t_data varchar(5000))
BEGIN

IF NOT EXISTS(SELECT gatereaderid FROM tblrawdata WHERE gatereaderid = readerid)THEN
		insert into tblrawdata (ts, version, signalstength, tagcount, gatereaderid, imei, gatereadername, simno, ipaddress, ssid, subnetmask, defaultgateway, routerpassword, latitude, longitude, tagdata) values(dt,vr,sig_strength,tagcnt,readerid,imei1,readername,sim_no,ipadd,ssid1,sn_mask,d_gateway,rout_pass,lt,lg,t_data);
ELSE
		UPDATE tblrawdata SET ts = dt,
				version 		= vr,
				signalstength   = sig_strength,
				tagcount 		= tagcnt,
				gatereaderid    = readerid,
				imei 			= imei1,
				gatereadername  = readername,
				simno 			= sim_no,
				ipaddress 		= ipadd,
				ssid 			= ssid1,
				subnetmask 		= sn_mask,
				defaultgateway 	= d_gateway,
				routerpassword 	= rout_pass,
				latitude  		= lt,
				longitude 		= lg,
				tagdata 		= t_data
				WHERE gatereaderid = readerid;
END IF;                

SET @dcount = (SELECT count(*) FROM tblgateconfigmaster WHERE gatereaderid = readerid);
IF (@dcount = 0) THEN
	INSERT INTO tblgateconfigmaster (gatereaderid, imei, gatereadername, simno, ipaddress, ssid, subnetmask, defaultgateway, routerpassword, lat, lang, updatestatus, updatedts) VALUES(readerid,imei1,readername,sim_no,ipadd,ssid1,sn_mask,d_gateway,rout_pass,lt,lg,0,now());
	SELECT *  FROM tblgateconfigmaster  WHERE gatereaderid = readerid;
ELSE
	UPDATE tblgateconfigmaster SET gatereaderid = readerid, imei = imei1, gatereadername = readername, simno = sim_no, ipaddress = ipadd, ssid = ssid1,
			subnetmask = sn_mask, defaultgateway = d_gateway, routerpassword = rout_pass, lat = lt, lang = lg, updatestatus = 0, updatedts = now() WHERE gatereaderid = readerid;
	SELECT *  FROM tblgateconfigmaster  WHERE gatereaderid = readerid;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_teacher_monthreport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_teacher_monthreport`(month INT, year INT,opt int)
BEGIN
    DECLARE n INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE tchr_id VARCHAR(45);
    DECLARE tchr_name VARCHAR(100);
    DECLARE t_id VARCHAR(45);
    DECLARE tbl_name VARCHAR(100);
    DECLARE count_value INT;
    DECLARE tm1 VARCHAR(45);
    DECLARE tm2 VARCHAR(45);
    DECLARE doj VARCHAR(45);
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE cur_date DATE;
    DECLARE result TEXT;
    DECLARE from_dt VARCHAR(45);
    DECLARE to_dt VARCHAR(45);
    DECLARE holiday_code1 VARCHAR(255);
    DECLARE done INT DEFAULT 0;
    DECLARE hl_done INT default 0;
    
    DECLARE cur CURSOR FOR SELECT from_date, to_date, holiday_code FROM tbl_holidays;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    IF opt = 1  then
		SELECT COUNT(*) INTO n FROM tbl_teacherdetails;
	ELSE
		SELECT COUNT(*) INTO n FROM tbl_staffdetails;
	END IF;
    SET i = 0;
    SET result = '';

    WHILE i < n DO
        IF opt = 1  then
			SELECT teacher_id, name, tag_id FROM tbl_teacherdetails LIMIT i, 1 INTO tchr_id, tchr_name,t_id;
			SET tbl_name = CONCAT('tblteacher_', tchr_id);
        ELSE
			SELECT staff_id, name, tag_id FROM tbl_staffdetails LIMIT i, 1 INTO tchr_id, tchr_name,t_id;
			SET tbl_name = CONCAT('tblstaff_', tchr_id);
        END IF;
        SET result = CONCAT(result, tchr_name, ",", tchr_id, ",", t_id, ",");
        SET start_date = CONCAT(year, '-', LPAD(month, 2, '0'), '-01');
        SET end_date = IF(year = YEAR(CURDATE()) AND month = MONTH(CURDATE()), CURDATE(), LAST_DAY(start_date));
        SET cur_date = start_date;
        WHILE cur_date <= end_date DO
            CALL sys.table_exists('school', tbl_name, @exists);
            
            IF @exists = 'BASE TABLE' THEN
                    SET @sql = CONCAT('SELECT COUNT(*) FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @count');
                    PREPARE stmt FROM @sql;
                    EXECUTE stmt;
                    DEALLOCATE PREPARE stmt;
                    IF @count = 0 THEN
                        IF DAYOFWEEK(cur_date) = 1 THEN
							SET result = CONCAT(result, "WO,");
                        ELSE
							OPEN cur;
							holiday_loop: LOOP
								FETCH NEXT FROM cur INTO from_dt,to_dt, holiday_code1;
                                IF cur_date >= from_dt AND cur_date <= to_dt THEN
                                    SET result = CONCAT(result,holiday_code1 ,",");
                                    SET hl_done = 1;
                                    set done = 1;
								end if;
                                
								IF done = 1 THEN
									 LEAVE holiday_loop;
								END IF;
							END LOOP holiday_loop;
							CLOSE cur;
							IF hl_done THEN
								SET hl_done = 0;
							ELSE
								SET result = CONCAT(result, "A,");
							END IF;
                        END IF;
                    ELSE
                        SET @sql = CONCAT('SELECT TIME_FORMAT(MIN(ts), "%H:%i"), TIME_FORMAT(MAX(ts), "%H:%i") FROM ', tbl_name, ' WHERE ts >= CONCAT(', QUOTE(cur_date), ', " 00:00:00") AND ts <= CONCAT(', QUOTE(cur_date), ', " 23:59:59") INTO @tm1, @tm2');
                        PREPARE stmt FROM @sql;
                        EXECUTE stmt;
                        DEALLOCATE PREPARE stmt;
							
						IF @tm1 = @tm2 THEN
							SET result = CONCAT(result, @tm1, ",");
						ELSE
							SET result = CONCAT(result, @tm1, " - ", @tm2, ",");
						END IF;
                    END IF;
            ELSE
                SET result = CONCAT(result, "-,");
            END IF;
            SET cur_date = DATE_ADD(cur_date, INTERVAL 1 DAY);
        END WHILE;
        SET i = i + 1;
    END WHILE;

    SELECT result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_todayattendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_todayattendance`(id varchar(100))
BEGIN
declare tbl_name varchar(100);
declare res varchar(500);
set res = "";
set tbl_name = concat('tblstudent_',id);
CALL sys.table_exists('school', tbl_name, @exists);
if @exists = 'BASE TABLE' then
	SET @sql = CONCAT('SELECT TIME_FORMAT(MIN(ts), "%H:%i"), TIME_FORMAT(MAX(ts), "%H:%i") FROM ', tbl_name, ' where  ts >="', CONCAT(CURDATE(),' 00:00:00'),'" and ts <= "',CONCAT(CURDATE(),' 23:59:59'),'" INTO @mintime,@maxtime');
    PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
    
    if @mintime is not null then
		set res = concat(res,@mintime);
	else
		select "";
	end if;
    if @maxtime is not null then
		set res = concat(res,'-',@mintime);
	end if;
    select res;
else
	select '';
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 11:53:15
