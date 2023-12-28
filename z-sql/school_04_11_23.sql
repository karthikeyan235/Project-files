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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (1,'7090312972','admin','1',1),(2,'7777777777','parent','1',2),(3,'2222222222','teacher','123',3),(4,'1111111111','parent','2',4),(5,'6436363464','others','23234',5);
/*!40000 ALTER TABLE `accounts_profile` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add gate config master',8,'add_gateconfigmaster'),(30,'Can change gate config master',8,'change_gateconfigmaster'),(31,'Can delete gate config master',8,'delete_gateconfigmaster'),(32,'Can view gate config master',8,'view_gateconfigmaster'),(33,'Can add raw data',9,'add_rawdata'),(34,'Can change raw data',9,'change_rawdata'),(35,'Can delete raw data',9,'delete_rawdata'),(36,'Can view raw data',9,'view_rawdata'),(37,'Can add route',10,'add_route'),(38,'Can change route',10,'change_route'),(39,'Can delete route',10,'delete_route'),(40,'Can view route',10,'view_route'),(41,'Can add route stop',11,'add_routestop'),(42,'Can change route stop',11,'change_routestop'),(43,'Can delete route stop',11,'delete_routestop'),(44,'Can view route stop',11,'view_routestop'),(45,'Can add class section',12,'add_classsection'),(46,'Can change class section',12,'change_classsection'),(47,'Can delete class section',12,'delete_classsection'),(48,'Can view class section',12,'view_classsection'),(49,'Can add holiday',13,'add_holiday'),(50,'Can change holiday',13,'change_holiday'),(51,'Can delete holiday',13,'delete_holiday'),(52,'Can view holiday',13,'view_holiday'),(53,'Can add others details',14,'add_othersdetails'),(54,'Can change others details',14,'change_othersdetails'),(55,'Can delete others details',14,'delete_othersdetails'),(56,'Can view others details',14,'view_othersdetails'),(57,'Can add period table',15,'add_periodtable'),(58,'Can change period table',15,'change_periodtable'),(59,'Can delete period table',15,'delete_periodtable'),(60,'Can view period table',15,'view_periodtable'),(61,'Can add student details',16,'add_studentdetails'),(62,'Can change student details',16,'change_studentdetails'),(63,'Can delete student details',16,'delete_studentdetails'),(64,'Can view student details',16,'view_studentdetails'),(65,'Can add teacher details',17,'add_teacherdetails'),(66,'Can change teacher details',17,'change_teacherdetails'),(67,'Can delete teacher details',17,'delete_teacherdetails'),(68,'Can view teacher details',17,'view_teacherdetails'),(69,'Can add timetable',18,'add_timetable'),(70,'Can change timetable',18,'change_timetable'),(71,'Can delete timetable',18,'delete_timetable'),(72,'Can view timetable',18,'view_timetable'),(73,'Can add site info',19,'add_siteinfo'),(74,'Can change site info',19,'change_siteinfo'),(75,'Can delete site info',19,'delete_siteinfo'),(76,'Can view site info',19,'view_siteinfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$61ZwXLTl2zbUT5YdeeC4XX$o1S8/tRd/Pf9OIOUuxSL+KJx9vpFLJcDNXXSfrzOLCU=','2023-11-03 12:11:01.605304',1,'sachin','sachin','n','sachinn11121998@gmail.com',1,1,'2023-10-27 07:35:17.000000'),(2,'pbkdf2_sha256$600000$yR3hYvKdxI4hXv6HN3Pcgs$kXCuK3Hozj4v0Ue4KdyYewDJQATIDY5xg3woIDvDrRc=','2023-10-27 10:05:25.572117',0,'7777777777','ROBERRT','','sachin@gmail.com',0,1,'2023-10-27 10:04:44.013832'),(3,'pbkdf2_sha256$600000$KU4A2VAdVaFU8bnUtsHQ4H$YLaM4Mm61zFbbNNuXrrS35uI1SxV7/TCAJqoAx7T0Ig=','2023-11-03 12:11:21.933559',0,'2222222222','ANIL','','sachin@gmail.com',0,1,'2023-10-27 10:30:07.711770'),(4,'pbkdf2_sha256$600000$vPFC3KCmO1eudGtVmSvd8b$zGB6dc/r4zefe9begVy4HomAWUSMe4tWjuy0Ma/3hZQ=','2023-11-04 05:09:11.179931',0,'1111111111','RAVI SHANKARA','','sachin@gmail.com',0,1,'2023-10-27 11:43:27.905181'),(5,'pbkdf2_sha256$600000$yloh5JqU8DN42jjrcPn8e0$jy0FQDk0L7KDU/PUVUwYLfuguAsAFJkr3Mmrqf9f56c=',NULL,0,'6436363464','ROBERRT','','sachin@gmail.com',0,1,'2023-11-03 09:08:48.926085');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-10-27 07:36:02.314612','1','sachin',1,'[{\"added\": {}}]',7,1),(2,'2023-10-27 07:36:22.489457','1','sachin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(3,'2023-10-27 07:36:38.445512','1','sachin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(4,'2023-10-27 10:33:26.825464','1','P1-PERIOD 1',1,'[{\"added\": {}}]',15,1),(5,'2023-10-27 10:33:38.604530','2','P2-PERIOD 2',1,'[{\"added\": {}}]',15,1),(6,'2023-10-27 10:33:51.699219','3','P3-PERIOD 3',1,'[{\"added\": {}}]',15,1),(7,'2023-10-27 10:34:05.609257','4','P4-PERIOD 4',1,'[{\"added\": {}}]',15,1),(8,'2023-10-27 10:34:19.763038','5','P5-PERIOD 5',1,'[{\"added\": {}}]',15,1),(9,'2023-10-27 10:34:32.011132','6','P6-PERIOD 6',1,'[{\"added\": {}}]',15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'Accounts','profile'),(1,'admin','logentry'),(10,'app','route'),(11,'app','routestop'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'gate_config','gateconfigmaster'),(9,'gate_config','rawdata'),(19,'gate_config','siteinfo'),(12,'registration_app','classsection'),(13,'registration_app','holiday'),(14,'registration_app','othersdetails'),(15,'registration_app','periodtable'),(16,'registration_app','studentdetails'),(17,'registration_app','teacherdetails'),(18,'registration_app','timetable'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 07:33:08.152167'),(2,'auth','0001_initial','2023-10-27 07:33:08.336701'),(3,'Accounts','0001_initial','2023-10-27 07:33:08.365598'),(4,'admin','0001_initial','2023-10-27 07:33:08.417752'),(5,'admin','0002_logentry_remove_auto_add','2023-10-27 07:33:08.424230'),(6,'admin','0003_logentry_add_action_flag_choices','2023-10-27 07:33:08.447689'),(7,'app','0001_initial','2023-10-27 07:33:08.468779'),(8,'contenttypes','0002_remove_content_type_name','2023-10-27 07:33:08.503814'),(9,'auth','0002_alter_permission_name_max_length','2023-10-27 07:33:08.528769'),(10,'auth','0003_alter_user_email_max_length','2023-10-27 07:33:08.545730'),(11,'auth','0004_alter_user_username_opts','2023-10-27 07:33:08.551710'),(12,'auth','0005_alter_user_last_login_null','2023-10-27 07:33:08.576644'),(13,'auth','0006_require_contenttypes_0002','2023-10-27 07:33:08.578644'),(14,'auth','0007_alter_validators_add_error_messages','2023-10-27 07:33:08.585623'),(15,'auth','0008_alter_user_username_max_length','2023-10-27 07:33:08.613520'),(16,'auth','0009_alter_user_last_name_max_length','2023-10-27 07:33:08.639451'),(17,'auth','0010_alter_group_name_max_length','2023-10-27 07:33:08.652442'),(18,'auth','0011_update_proxy_permissions','2023-10-27 07:33:08.659398'),(19,'auth','0012_alter_user_first_name_max_length','2023-10-27 07:33:08.692311'),(20,'gate_config','0001_initial','2023-10-27 07:33:08.714252'),(21,'registration_app','0001_initial','2023-10-27 07:33:08.783679'),(22,'sessions','0001_initial','2023-10-27 07:33:08.804648'),(23,'Accounts','0002_alter_profile_phone_number','2023-10-31 05:06:42.876800'),(24,'Accounts','0003_alter_profile_user_type','2023-10-31 05:06:42.886800'),(25,'Accounts','0004_alter_profile_id_number','2023-10-31 05:06:42.916800'),(26,'Accounts','0005_alter_profile_user_type','2023-10-31 05:06:42.926799'),(27,'app','0002_routestop','2023-11-03 11:43:39.134081'),(28,'gate_config','0002_siteinfo','2023-11-03 11:43:39.144076');
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
INSERT INTO `django_session` VALUES ('2pzxvmx3nunajfqx0kyspg4epmwntin3','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxPgP:EqZl7ANBVaSwZA77EskmH2h-Mp0Z_7M13i97wZwzsd0','2023-11-13 10:39:45.394396'),('383z6s3vrafh2pq4oufxjab9ujxq08g2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqxQ:0QJObKtx3IhV4OvoPZul9X_QoCQ7mcFPvs1jhgrXsoo','2023-11-17 09:59:16.612537'),('4d186km0857snk79zu75hgifglorv1ak','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqB0:nkgl-giI9H_z3J5yiuz4Lg9XhIFWNSYihmeZLm19-B8','2023-11-17 09:09:14.287967'),('4imhtsvybl25ykyvdeysy4j1qbq7zw6e','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwHNM:tmf2gYXwSRcfwjp55jmxgvX-7OjVQd0gNKFOWxmT21k','2023-11-10 07:35:24.181612'),('8a9op4ygqrmtry908dzjjm8if4yfe9x6','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qz8uF:SCnuQdLSFfefiwJGCz8Lk6Om-xMyc_bOsI6-6LFF85g','2023-11-18 05:09:11.189932'),('h8h1i19hfvmxa8w8di36sryx4chw9hnh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyU5W:jK21BrTBIiO0t9BJXyAlCwqBjtQMg4en_fyTf8j54EQ','2023-11-16 09:34:06.327923'),('hpo2orvtgltj2tu9e6jsaul2w0l0rdxu','.eJxVjEEOwiAQRe_C2hBgWhhcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WDkGDSQOM2QBaVXx2WJznASMzGkLHiS1op8B6pDEqUkZbxFKy5yjeH8AfN2Y:1qyt1F:4j6zT2qq2gClysm8b9u0Wn5KGfaEDz0vn6Y0kchVnvY','2023-11-17 12:11:21.935550'),('hrwc35stuau0k3c343me3exy9goplqij','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqet:m13plReG_bT-8S1quELhjCzQO6o1buOB2lMR2eUiSTw','2023-11-17 09:40:07.771000'),('lv4kxgu6zvv6hh5zsrzoqf0i2j9pi29m','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyrII:JOmIft5Ce1pNWcxgMRYt5t5BPhhjfzZwOn7hFgCAbGw','2023-11-17 10:20:50.099218'),('o51oce8qavfmuhibnwocwtqwu0wb8z7b','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qynYH:MjP06Go0PCpnrg78H4GIXpBNj4hYPjSKfFKJWdsZgR8','2023-11-17 06:21:05.014065'),('s4r7ozn728dlocw9gvgsyzq44ssynisc','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwLAe:7j15JMaaE18NWKVn5TVf_VurtrzHFa-g--DpvEWDOFs','2023-11-10 11:38:32.573149'),('sxh3h7nshot31w0p2o7e7u002txrpfu1','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqze:5xb_z99wLCn5np0mt0s6P292zaGEQIaSLrllZeiN7uU','2023-11-17 10:01:34.640038'),('vu0wehui937tyygv8u8s6xcpzj9eu7nh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwL6v:vlww1iGF9B1TZUrASOMaW2l8v2zAOBnXikr_2Satx9k','2023-11-10 11:34:41.507899'),('xtsggv0fywrknh6rahk6eq596orrkoa5','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwbq7:G8YipH0YKBSJersxC3imDpoffp1eBanS5__2w0ix7FM','2023-11-11 05:26:27.578289'),('z616lqztuzn43h9oalnbkrplo3bqhxc2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxMJd:ovvmXmCuzcyN0HPkC2662TqWvKf7x4QuD78siDG1b5w','2023-11-13 07:04:01.361479');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_stop`
--

DROP TABLE IF EXISTS `route_stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_stop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `route_no` varchar(50) DEFAULT NULL,
  `stop_no` int DEFAULT NULL,
  `stop_name` varchar(100) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_stop`
--

LOCK TABLES `route_stop` WRITE;
/*!40000 ALTER TABLE `route_stop` DISABLE KEYS */;
/*!40000 ALTER TABLE `route_stop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classattendance_1a`
--

DROP TABLE IF EXISTS `tbl_classattendance_1a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classattendance_1a` (
  `dates` date NOT NULL,
  `p1` varchar(45) DEFAULT NULL,
  `p2` varchar(45) DEFAULT NULL,
  `p3` varchar(45) DEFAULT NULL,
  `p4` varchar(45) DEFAULT NULL,
  `p5` varchar(45) DEFAULT NULL,
  `p6` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classattendance_1a`
--

LOCK TABLES `tbl_classattendance_1a` WRITE;
/*!40000 ALTER TABLE `tbl_classattendance_1a` DISABLE KEYS */;
INSERT INTO `tbl_classattendance_1a` VALUES ('2023-10-27','16:27:24',NULL,NULL,NULL,NULL,NULL),('2023-11-03','17:28:00',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_classattendance_1a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classattendance_1b`
--

DROP TABLE IF EXISTS `tbl_classattendance_1b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classattendance_1b` (
  `dates` date NOT NULL,
  `p1` varchar(45) DEFAULT NULL,
  `p2` varchar(45) DEFAULT NULL,
  `p3` varchar(45) DEFAULT NULL,
  `p4` varchar(45) DEFAULT NULL,
  `p5` varchar(45) DEFAULT NULL,
  `p6` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classattendance_1b`
--

LOCK TABLES `tbl_classattendance_1b` WRITE;
/*!40000 ALTER TABLE `tbl_classattendance_1b` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_classattendance_1b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classattendance_2a`
--

DROP TABLE IF EXISTS `tbl_classattendance_2a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classattendance_2a` (
  `dates` date NOT NULL,
  `p1` varchar(45) DEFAULT NULL,
  `p2` varchar(45) DEFAULT NULL,
  `p3` varchar(45) DEFAULT NULL,
  `p4` varchar(45) DEFAULT NULL,
  `p5` varchar(45) DEFAULT NULL,
  `p6` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classattendance_2a`
--

LOCK TABLES `tbl_classattendance_2a` WRITE;
/*!40000 ALTER TABLE `tbl_classattendance_2a` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_classattendance_2a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classattendance_2b`
--

DROP TABLE IF EXISTS `tbl_classattendance_2b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classattendance_2b` (
  `dates` date NOT NULL,
  `p1` varchar(45) DEFAULT NULL,
  `p2` varchar(45) DEFAULT NULL,
  `p3` varchar(45) DEFAULT NULL,
  `p4` varchar(45) DEFAULT NULL,
  `p5` varchar(45) DEFAULT NULL,
  `p6` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classattendance_2b`
--

LOCK TABLES `tbl_classattendance_2b` WRITE;
/*!40000 ALTER TABLE `tbl_classattendance_2b` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_classattendance_2b` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classsections`
--

LOCK TABLES `tbl_classsections` WRITE;
/*!40000 ALTER TABLE `tbl_classsections` DISABLE KEYS */;
INSERT INTO `tbl_classsections` VALUES (1,1,'A'),(2,1,'B'),(3,2,'A'),(4,2,'B');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holidays`
--

LOCK TABLES `tbl_holidays` WRITE;
/*!40000 ALTER TABLE `tbl_holidays` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_staffdetails`
--

LOCK TABLES `tbl_staffdetails` WRITE;
/*!40000 ALTER TABLE `tbl_staffdetails` DISABLE KEYS */;
INSERT INTO `tbl_staffdetails` VALUES (1,'ROBERRT','23234',2343424242,'8badd0f2','sachin@gmail.com','6436363464','M',1);
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
  `roll_no` smallint DEFAULT NULL,
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
  `stop_no` int DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studentdetails`
--

LOCK TABLES `tbl_studentdetails` WRITE;
/*!40000 ALTER TABLE `tbl_studentdetails` DISABLE KEYS */;
INSERT INTO `tbl_studentdetails` VALUES (1,'ROBERRT','1',1,4233545453,'fc56c6ed',NULL,'',NULL,'arun','F','',NULL,'7777777777','sachin@gmail.com','1','A',NULL,'',NULL,1,'student_images/default_image.jpg'),(2,'RAVI SHANKARA','2',2,4233545335,'fc56c677',NULL,'',NULL,'ewrwe','G','',NULL,'1111111111','sachin@gmail.com','1','A',NULL,'1',1,1,'student_images/2_profile.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_teacherdetails`
--

LOCK TABLES `tbl_teacherdetails` WRITE;
/*!40000 ALTER TABLE `tbl_teacherdetails` DISABLE KEYS */;
INSERT INTO `tbl_teacherdetails` VALUES (1,'ANIL','123',4233545333,'fc56c675','sachin@gmail.com','2222222222','M',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timetable`
--

LOCK TABLES `tbl_timetable` WRITE;
/*!40000 ALTER TABLE `tbl_timetable` DISABLE KEYS */;
INSERT INTO `tbl_timetable` VALUES (1,'Monday','P1','16:25:00.000000','17:26:00.000000','123','1','A'),(2,'Monday','P2','15:05:00.000000','16:05:00.000000','123','1','A'),(3,'Friday','P1','17:25:00.000000','18:25:00.000000','123','1','A');
/*!40000 ALTER TABLE `tbl_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_1`
--

DROP TABLE IF EXISTS `tblattendance_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_1` (
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
-- Dumping data for table `tblattendance_1`
--

LOCK TABLES `tblattendance_1` WRITE;
/*!40000 ALTER TABLE `tblattendance_1` DISABLE KEYS */;
INSERT INTO `tblattendance_1` VALUES ('2023-10-27',1,NULL,NULL,NULL,NULL,NULL),('2023-11-03',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_2`
--

DROP TABLE IF EXISTS `tblattendance_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_2` (
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
-- Dumping data for table `tblattendance_2`
--

LOCK TABLES `tblattendance_2` WRITE;
/*!40000 ALTER TABLE `tblattendance_2` DISABLE KEYS */;
INSERT INTO `tblattendance_2` VALUES ('2023-11-03',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblattendance_2` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgateconfigmaster`
--

LOCK TABLES `tblgateconfigmaster` WRITE;
/*!40000 ALTER TABLE `tblgateconfigmaster` DISABLE KEYS */;
INSERT INTO `tblgateconfigmaster` VALUES (1,1513,867106031377,'Trackpworld',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183999061584473,78.54566955566406,0,'2023-11-03 15:01:49.000000'),(2,1006,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:02.000000'),(3,1002,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(4,1005,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(5,1004,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:18.000000'),(6,1003,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000'),(7,1001,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrawdata`
--

LOCK TABLES `tblrawdata` WRITE;
/*!40000 ALTER TABLE `tblrawdata` DISABLE KEYS */;
INSERT INTO `tblrawdata` VALUES (1,'2023-07-05 16:10:00.000000',1.2000000476837158,100,3,1513,867106031377,'Trackpworld',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183999061584473,78.54566955566406,'fc56c6ed,102458,fc56c677,102458,8badd0f2,102458'),(2,'2023-11-02 15:55:02.000000',1,25,0,1006,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,''),(3,'2023-11-02 15:55:17.000000',1,25,0,1002,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,''),(4,'2023-11-02 15:55:17.000000',1,25,0,1005,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,''),(5,'2023-11-02 15:55:17.000000',1,25,1,1004,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,'6ac229b5,155517'),(6,'2023-11-02 15:53:39.000000',1,25,0,1003,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,''),(7,'2023-11-02 15:53:39.000000',1,25,1,1001,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,'73c3fc42,155339');
/*!40000 ALTER TABLE `tblrawdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsiteinfo`
--

DROP TABLE IF EXISTS `tblsiteinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsiteinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sitename` varchar(45) NOT NULL,
  `siteid` varchar(45) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsiteinfo`
--

LOCK TABLES `tblsiteinfo` WRITE;
/*!40000 ALTER TABLE `tblsiteinfo` DISABLE KEYS */;
INSERT INTO `tblsiteinfo` VALUES (1,'Trackpworld','1513',12.183999061584473,78.54566955566406,0),(2,'singasandra','1006',12.183999061584473,78.55567169189453,0),(3,'singasandra','1002',12.183999061584473,78.55567169189453,0),(4,'singasandra','1005',12.183999061584473,78.55567169189453,0),(5,'singasandra','1004',12.183999061584473,78.55567169189453,0),(6,'singasandra','1003',12.183999061584473,78.55567169189453,0),(7,'singasandra','1001',12.183999061584473,78.55567169189453,0);
/*!40000 ALTER TABLE `tblsiteinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff_23234`
--

DROP TABLE IF EXISTS `tblstaff_23234`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstaff_23234` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff_23234`
--

LOCK TABLES `tblstaff_23234` WRITE;
/*!40000 ALTER TABLE `tblstaff_23234` DISABLE KEYS */;
INSERT INTO `tblstaff_23234` VALUES (1,'2023-11-03 04:54:58',0,'1513');
/*!40000 ALTER TABLE `tblstaff_23234` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent_1`
--

DROP TABLE IF EXISTS `tblstudent_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent_1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_1`
--

LOCK TABLES `tblstudent_1` WRITE;
/*!40000 ALTER TABLE `tblstudent_1` DISABLE KEYS */;
INSERT INTO `tblstudent_1` VALUES (1,'2023-10-27 10:54:58',0,'1513'),(2,'2023-11-03 10:54:58',0,'1513'),(3,'2023-11-03 04:54:58',1,'1513'),(4,'2023-11-03 04:54:58',1,'1513');
/*!40000 ALTER TABLE `tblstudent_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudent_2`
--

DROP TABLE IF EXISTS `tblstudent_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudent_2` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL,
  `event` tinyint(1) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_2`
--

LOCK TABLES `tblstudent_2` WRITE;
/*!40000 ALTER TABLE `tblstudent_2` DISABLE KEYS */;
INSERT INTO `tblstudent_2` VALUES (1,'2023-11-03 10:54:58',0,'1513'),(2,'2023-11-03 04:54:58',1,'1513'),(3,'2023-11-03 04:54:58',1,'1513');
/*!40000 ALTER TABLE `tblstudent_2` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblteacher_123`
--

LOCK TABLES `tblteacher_123` WRITE;
/*!40000 ALTER TABLE `tblteacher_123` DISABLE KEYS */;
INSERT INTO `tblteacher_123` VALUES (1,'2023-11-03 04:54:58',0,'1513');
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
	IF tbl_name is not null THEN
		SET date1 = CONCAT(CURDATE(), " ",t_time);
        SET date2 = CONCAT(CURDATE(), " 00:00:00");
		SET detail = CONVERT(r_id,CHAR);
		SET @sql = CONCAT('CREATE TABLE IF NOT EXISTS ', tbl_name, ' (id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, ts TIMESTAMP NOT NULL, event TINYINT(1) NOT NULL, details VARCHAR(255) NOT NULL);');
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
/*!50003 DROP PROCEDURE IF EXISTS `sproc_checkattendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_checkattendance`(cls int,sec varchar(45),prd varchar(45),dt varchar(45))
BEGIN
declare tbl_name varchar(100);

set tbl_name = concat('tbl_classattendance_',convert(cls,char),sec);
SET @sql = CONCAT('select count(*) from ', tbl_name, ' where  dates ="', dt,'" into @res');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
if @res then
	SET @sql = CONCAT('select ',prd,' from ', tbl_name, ' where  dates ="', dt,'" into @res');
    PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	select  @res;
else
	select  @res;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
        ELSE
		    SET @count = 0;
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
    set tbl_name = concat('tbl_classattendance_',convert(cls,char),sec);
    SET @sql = CONCAT('select count(*) from ', tbl_name, ' where  dates ="', curdate(),'" into @res');
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
    IF @res THEN
		 SET @sql = CONCAT('UPDATE ', tbl_name,' SET ',prd, '= "',CURRENT_TIME(),'" where  dates ="', curdate(),'"');
    ELSE
		 SET @sql = CONCAT('INSERT INTO ', tbl_name,' (dates,',prd, ') VALUES("', curdate(),'","',CURRENT_TIME(),'")');
    END IF;
    PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
	INSERT tblsiteinfo (sitename, siteid, lat, lng, enabled) values(s_name,s_id,lt,lg,en);
  ELSE
	UPDATE tblsiteinfo
	SET sitename = s_name, siteid = s_id, lat = lt, lng = lg, enabled = en
	where siteid = s_id;
  END IF;
  SET i = i + 1;
END WHILE;
SELECT sitename, siteid, lat, lng, enabled FROM tblsiteinfo ORDER BY sitename;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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

-- Dump completed on 2023-11-04 10:48:00
