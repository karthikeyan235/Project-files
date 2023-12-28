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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (1,'7090312972','admin','1',1),(2,'7777777777','parent','1',2),(3,'2222222222','teacher','123',3),(4,'1111111111','parent','1',4),(5,'6436363464','others','23234',5),(6,'9864096222','parent','255,314',6),(7,'9819286215','parent','276',7),(8,'9864013262','parent','287',8),(9,'6003346321','parent','321,359',9),(10,'7099212717','parent','337,272',10),(11,'9706284892','parent','357',11),(12,'9435046859','parent','361',12),(13,'7002553540','parent','393',13),(14,'9954041810','parent','401',14),(15,'9394273393','parent','410,387',15),(16,'8723847267','parent','413',16),(17,'9954241085','parent','415,372',17),(18,'9435540567','parent','417',18),(19,'7002208171','parent','264,377',19),(20,'9707333500','parent','267',20),(21,'9854055243','parent','288',21),(22,'7002999566','parent','317',22),(23,'7002894263','parent','324',23),(24,'9101008833','parent','344',24),(25,'7002761237','parent','371,382',25),(26,'9706061910','parent','376',26),(27,'9352728062','parent','233',27),(28,'8638610534','parent','278',28),(29,'9401277777','parent','346',29),(30,'9101447846','parent','356',30),(31,'9085033000','parent','366',31),(32,'7086462083','parent','368',32),(33,'9508026001','parent','389',33),(34,'9435088070','parent','411',34),(35,'9864071855','parent','251',35),(36,'9401391014','parent','290',36),(37,'7014249966','parent','295',37),(38,'7399074888','parent','305',38),(39,'6900627366','parent','309',39),(40,'9540877778','parent','349',40),(41,'6350300925','parent','390',41),(42,'8721832360','parent','214',42),(43,'9508262346','parent','222',43),(44,'7002925500','parent','225',44),(45,'8876062409','parent','281',45),(46,'8638786730','parent','283',46),(47,'9401221000','parent','216',47),(48,'9365759092','parent','240',48),(49,'9435257799','parent','265',49),(50,'9864030591','parent','270',50),(51,'9435140904','parent','332,408',51),(52,'9508522202','parent','358',52),(53,'9085032826','parent','363',53),(54,'9435330362','parent','365',54),(55,'9365192851','parent','370',55),(56,'9435552400','parent','424',56),(57,'8905434651','parent','250',57),(58,'9864029291','parent','252',58),(59,'7086058631','parent','253',59),(60,'9706009341','parent','254',60),(61,'9435559668','parent','256',61),(62,'9864140349','parent','258',62),(63,'9435140380','parent','386',63),(64,'9864187044','parent','213',64),(65,'9864017870','parent','217',65),(66,'9864503750','parent','234',66),(67,'7099779476','parent','244',67),(68,'9149342081','parent','245',68),(69,'9039012318','parent','221',69),(70,'8486015579','parent','246',70),(71,'8638449174','parent','404,352',71),(72,'9859305283','parent','407',72),(73,'6001215550','parent','414',73),(74,'7002704700','parent','422',74),(75,'9365373558','parent','439',75),(76,'8011929738','parent','302',76),(77,'8638574528','parent','303',77),(78,'9864305628','parent','316',78),(79,'8638022077','parent','318',79),(80,'7002419865','parent','353',80),(81,'9181777777','parent','373',81),(82,'8876557892','parent','228',82),(83,'8473004361','parent','247',83),(84,'7086044164','parent','433',84),(85,'9864529295','parent','436',85),(86,'9854089621','parent','429',86),(87,'9864279991','parent','341',87),(88,'8486432191','parent','381',88),(89,'9508667096','parent','279',89),(90,'7733887567','parent','362',90),(91,'9435838705','parent','391',91),(92,'8255099991','parent','392',92),(93,'9864021644','parent','394',93),(94,'9435347585','parent','409',94),(95,'7399011101','parent','249,343',95),(96,'8822100013','parent','268',96),(97,'7896025540','parent','275',97),(98,'9717936913','parent','313',98),(99,'8638286989','parent','320',99),(100,'9101583771','parent','350',100),(101,'9864787677','parent','351',101),(102,'8486054812','parent','219',102),(103,'9957539233','parent','230',103),(104,'9435554030','parent','232',104),(105,'9435550167','parent','239',105),(106,'7002554002','parent','243',106),(107,'7896621580','parent','419',107),(108,'9401594880','parent','432',108),(109,'9706171238','parent','297',109),(110,'7973556589','parent','299,238',110),(111,'8135049995','parent','334',111),(112,'9864505656','parent','223',112),(113,'7002053856','parent','241',113),(114,'9678320964','parent','355',114),(115,'7002455578','parent','421',115),(116,'7002384261','parent','342',116),(117,'8472979486','parent','236',117),(118,'7002036903','parent','293',118),(119,'8761918143','parent','327',119),(120,'8638175902','parent','395',120),(121,'8011739264','parent','311',121),(122,'9957949336','parent','329',122),(123,'9101309887','parent','335',123),(124,'9954687343','parent','383',124),(125,'8638489237','parent','227',125),(126,'9864203666','parent','260',126),(127,'9678335633','parent','380,263',127),(128,'8510993222','parent','385',128),(129,'7002928411','parent','400',129),(130,'7002627082','parent','405',130),(131,'8486182211','parent','428',131),(132,'8011404032','parent','269',132),(133,'9101122313','parent','301',133),(134,'7048987364','parent','374,248',134),(135,'9401251004','parent','378',135),(136,'6002919773','parent','231',136),(137,'7002148688','parent','396',137),(138,'7002905576','parent','406',138),(139,'9957491949','parent','257',139),(140,'9101767401','parent','289',140),(141,'8638843929','parent','291',141),(142,'9678558019','parent','306',142),(143,'9101467182','parent','224',143),(144,'9954104538','parent','226',144),(145,'1232121313','parent','1111,1111,1111',145);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add gate config master',8,'add_gateconfigmaster'),(30,'Can change gate config master',8,'change_gateconfigmaster'),(31,'Can delete gate config master',8,'delete_gateconfigmaster'),(32,'Can view gate config master',8,'view_gateconfigmaster'),(33,'Can add raw data',9,'add_rawdata'),(34,'Can change raw data',9,'change_rawdata'),(35,'Can delete raw data',9,'delete_rawdata'),(36,'Can view raw data',9,'view_rawdata'),(37,'Can add route',10,'add_route'),(38,'Can change route',10,'change_route'),(39,'Can delete route',10,'delete_route'),(40,'Can view route',10,'view_route'),(41,'Can add route stop',11,'add_routestop'),(42,'Can change route stop',11,'change_routestop'),(43,'Can delete route stop',11,'delete_routestop'),(44,'Can view route stop',11,'view_routestop'),(45,'Can add class section',12,'add_classsection'),(46,'Can change class section',12,'change_classsection'),(47,'Can delete class section',12,'delete_classsection'),(48,'Can view class section',12,'view_classsection'),(49,'Can add holiday',13,'add_holiday'),(50,'Can change holiday',13,'change_holiday'),(51,'Can delete holiday',13,'delete_holiday'),(52,'Can view holiday',13,'view_holiday'),(53,'Can add others details',14,'add_othersdetails'),(54,'Can change others details',14,'change_othersdetails'),(55,'Can delete others details',14,'delete_othersdetails'),(56,'Can view others details',14,'view_othersdetails'),(57,'Can add period table',15,'add_periodtable'),(58,'Can change period table',15,'change_periodtable'),(59,'Can delete period table',15,'delete_periodtable'),(60,'Can view period table',15,'view_periodtable'),(61,'Can add student details',16,'add_studentdetails'),(62,'Can change student details',16,'change_studentdetails'),(63,'Can delete student details',16,'delete_studentdetails'),(64,'Can view student details',16,'view_studentdetails'),(65,'Can add teacher details',17,'add_teacherdetails'),(66,'Can change teacher details',17,'change_teacherdetails'),(67,'Can delete teacher details',17,'delete_teacherdetails'),(68,'Can view teacher details',17,'view_teacherdetails'),(69,'Can add timetable',18,'add_timetable'),(70,'Can change timetable',18,'change_timetable'),(71,'Can delete timetable',18,'delete_timetable'),(72,'Can view timetable',18,'view_timetable'),(73,'Can add site info',19,'add_siteinfo'),(74,'Can change site info',19,'change_siteinfo'),(75,'Can delete site info',19,'delete_siteinfo'),(76,'Can view site info',19,'view_siteinfo'),(77,'Can add mobile device ids',20,'add_mobiledeviceids'),(78,'Can change mobile device ids',20,'change_mobiledeviceids'),(79,'Can delete mobile device ids',20,'delete_mobiledeviceids'),(80,'Can view mobile device ids',20,'view_mobiledeviceids'),(81,'Can add school timings',21,'add_schooltimings'),(82,'Can change school timings',21,'change_schooltimings'),(83,'Can delete school timings',21,'delete_schooltimings'),(84,'Can view school timings',21,'view_schooltimings'),(85,'Can add school special timings',22,'add_schoolspecialtimings'),(86,'Can change school special timings',22,'change_schoolspecialtimings'),(87,'Can delete school special timings',22,'delete_schoolspecialtimings'),(88,'Can view school special timings',22,'view_schoolspecialtimings');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$61ZwXLTl2zbUT5YdeeC4XX$o1S8/tRd/Pf9OIOUuxSL+KJx9vpFLJcDNXXSfrzOLCU=','2023-11-22 09:49:09.483598',1,'sachin','sachin','n','sachinn11121998@gmail.com',1,1,'2023-10-27 07:35:17.000000'),(2,'pbkdf2_sha256$600000$yR3hYvKdxI4hXv6HN3Pcgs$kXCuK3Hozj4v0Ue4KdyYewDJQATIDY5xg3woIDvDrRc=','2023-10-27 10:05:25.572117',0,'7777777777','ROBERRT','','sachin@gmail.com',0,1,'2023-10-27 10:04:44.013832'),(3,'pbkdf2_sha256$600000$KU4A2VAdVaFU8bnUtsHQ4H$YLaM4Mm61zFbbNNuXrrS35uI1SxV7/TCAJqoAx7T0Ig=','2023-11-07 06:43:52.716431',0,'2222222222','ANIL','','sachin@gmail.com',0,1,'2023-10-27 10:30:07.711770'),(4,'pbkdf2_sha256$600000$vPFC3KCmO1eudGtVmSvd8b$zGB6dc/r4zefe9begVy4HomAWUSMe4tWjuy0Ma/3hZQ=','2023-11-04 05:09:11.179931',0,'1111111111','RAVI SHANKARA','','sachin@gmail.com',0,1,'2023-10-27 11:43:27.905181'),(5,'pbkdf2_sha256$600000$yloh5JqU8DN42jjrcPn8e0$jy0FQDk0L7KDU/PUVUwYLfuguAsAFJkr3Mmrqf9f56c=',NULL,0,'6436363464','ROBERRT','','sachin@gmail.com',0,1,'2023-11-03 09:08:48.926085'),(6,'pbkdf2_sha256$600000$MIvWVY9t5jfapRK2Cd6Cb4$J/PC8WhuZN2TRHfcf6Jj0Ke1BC8Pw+uM80EyNYhfTpg=',NULL,0,'9864096222','NIRVAN SIOTIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:41.645546'),(7,'pbkdf2_sha256$600000$MQ2juGs5us0WRak7NXGad1$WymQS/fm8k1MA3FNGCvu0A/YCRzc0WOgezR5p7VZg0o=',NULL,0,'9819286215','ZOHA SHOEB SHAIKH','','tracko@gmail.com',0,1,'2023-11-09 06:22:41.967713'),(8,'pbkdf2_sha256$600000$1fo4nbfrvcnIO22NyrO5Pc$fjHi39+kiyM4escFZ/RY2B22wE/0OHbj7pXLqafx08Q=',NULL,0,'9864013262','AASHIRYA DUTTA','','tracko@gmail.com',0,1,'2023-11-09 06:22:42.279499'),(9,'pbkdf2_sha256$600000$opehJGhSPhyA2IJpZgjmp8$YIEnxbp0OgZnF3hAzi2NIeXt/dMnhprXPD5vmaQzc1Q=',NULL,0,'6003346321','BHAVYANSH AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:22:42.583691'),(10,'pbkdf2_sha256$600000$CjZeVFbBqfdDAis6PCqici$Pt5atYRIuflvenHkuQX+rndcvO+HIM1CPHN5lbSywe8=',NULL,0,'7099212717','SANVI BAISHYA','','tracko@gmail.com',0,1,'2023-11-09 06:22:42.891446'),(11,'pbkdf2_sha256$600000$KtqAhRs4gvNgkP5qgPdZgW$xjHJO949a8EnU6nXKYLLIDPXp5jCEATeEvjRBt8AF1w=',NULL,0,'9706284892','GATIK BOTHRA','','tracko@gmail.com',0,1,'2023-11-09 06:22:43.197744'),(12,'pbkdf2_sha256$600000$ZGgcMnasDu5X7zQ8NZaWCS$/4Vp1wSjYiWA0+SR7M1Jc+h4VJhv5IdNlCdcqOqfOmM=',NULL,0,'9435046859','JAISHNAVEE GOUTAM','','tracko@gmail.com',0,1,'2023-11-09 06:22:43.516323'),(13,'pbkdf2_sha256$600000$X2Cr23qJTahmsjGYAeoTi5$fOCiXDIs8icLty0rmi25TL3+NcrVOXUM58G1SyZPKS0=',NULL,0,'7002553540','ANOM REEHA MAZID','','tracko@gmail.com',0,1,'2023-11-09 06:22:43.824408'),(14,'pbkdf2_sha256$600000$dpFroFCRE6f6qVCGsMR8oo$UdDkEqfZ+Lb6xVrn6MkFUfk5frHRCPO9/KwexdLUqQA=',NULL,0,'9954041810','NIVAAN SARAWGI','','tracko@gmail.com',0,1,'2023-11-09 06:22:44.124727'),(15,'pbkdf2_sha256$600000$0ORGemJDE5E8UDoMJ4ATeV$s18I5aXo4hwJisDiedsr1afmqp/avyXaKdQviO8+b98=',NULL,0,'9394273393','ABHILAKH BAISHYA','','tracko@gmail.com',0,1,'2023-11-09 06:22:44.432881'),(16,'pbkdf2_sha256$600000$H4pIdMzsBG8RFAuJrj1eqL$NXM3X5y4cxbByGEldPANW2R90d2Zp64pnYkJVCER0lI=',NULL,0,'8723847267','DIVYAM KUMAR','','tracko@gmail.com',0,1,'2023-11-09 06:22:44.732745'),(17,'pbkdf2_sha256$600000$XPwiyuaY7DKoWdeYOnn1Q8$ZVIoj75CBkasQ/OufmM47vLIKBYmujxRQzdrIFOEgPI=',NULL,0,'9954241085','KUNAL KALITA','','tracko@gmail.com',0,1,'2023-11-09 06:22:45.041477'),(18,'pbkdf2_sha256$600000$2TvgzQdvVhd5yOr2z7SUvF$LFpvNjMETpC0+wbau5kXDqHliH+u//30/zd4ObqAkLg=',NULL,0,'9435540567','NISHANT DAS','','tracko@gmail.com',0,1,'2023-11-09 06:22:45.343235'),(19,'pbkdf2_sha256$600000$iWWXgtv7ysZBUiq7iq970n$hSiDj8URl6muHwdhv0y7FiCQco4TfTpqyFlDyPW4W5w=',NULL,0,'7002208171','HARSHIKA KASHYAP BHARALI','','tracko@gmail.com',0,1,'2023-11-09 06:22:45.649528'),(20,'pbkdf2_sha256$600000$aNHf54JB5L6M4DF2OrbEpz$5Eq1fISEh1z9TARfLZ9td69xJ0YnMx3CtEb7XJj4Bag=',NULL,0,'9707333500','NAMRA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:45.958884'),(21,'pbkdf2_sha256$600000$F1xWy8ezBW3W91an7MaxOD$btsyPvV9235Mnf8oEltKmIDi83zOS/BhFu3s5wIlyQ8=',NULL,0,'9854055243','ANISHA BARMAN','','tracko@gmail.com',0,1,'2023-11-09 06:22:46.267479'),(22,'pbkdf2_sha256$600000$a5SGM0KMVPPhZYL5vMqL0O$Iz0+hu9r4XUY1Xy5NKK0TwLza1X42plpycyzc5wmBak=',NULL,0,'7002999566','THAISA DEVI','','tracko@gmail.com',0,1,'2023-11-09 06:22:46.583822'),(23,'pbkdf2_sha256$600000$1CsPsfni4IDmd9eVxP7vIv$JDH7Tu6jO3xsex7Ilh7geC/h+Ezcp5a1bec+Ye/RAm8=',NULL,0,'7002894263','SYEDA SAIMA SIREEN','','tracko@gmail.com',0,1,'2023-11-09 06:22:46.895107'),(24,'pbkdf2_sha256$600000$qfZZPHY4g0jxzW6uNb90yk$2TLoheih8aZw8A10wPp7wFmxruwNswt/NnTBwMUi3Jw=',NULL,0,'9101008833','SARAAH ROB','','tracko@gmail.com',0,1,'2023-11-09 06:22:47.194413'),(25,'pbkdf2_sha256$600000$mBlryKOm3PlJjVq8dF5K9Q$9/ZW5DgNMvduQazckA98PX2yo8siBz3P7U2LlG+N1H8=',NULL,0,'7002761237','NAITIK KUMAR MITTAL','','tracko@gmail.com',0,1,'2023-11-09 06:22:47.502600'),(26,'pbkdf2_sha256$600000$7BQBH96Tt4G6SXUku30AJ6$pLS4ZPqqTIna986eOzabgapVv8Q0FS8ZwYqUh2T23jg=',NULL,0,'9706061910','AARIYAN DAS','','tracko@gmail.com',0,1,'2023-11-09 06:22:47.822503'),(27,'pbkdf2_sha256$600000$Ot9Fae4vxmoxu7beZmEDZd$xkFHAKeadXgGbwTpS0o9fXoI5V1gj4+oBXrJm+03sYU=',NULL,0,'9352728062','PIYUSH TAILOR','','tracko@gmail.com',0,1,'2023-11-09 06:22:48.168899'),(28,'pbkdf2_sha256$600000$Sd0dgvuzG3vXqf4L2mY0G2$ttGz/JkVWWLNBiFKhak3PMntirKPWk7DNS9V5T0zGN0=',NULL,0,'8638610534','ATIF ASLAM','','tracko@gmail.com',0,1,'2023-11-09 06:22:48.469716'),(29,'pbkdf2_sha256$600000$hoeaZKWIMKE1E93ifaWQzu$lBLeS+bmwS4m4LAiwh11ZvbgkRBvt2QCajVn31goxXM=',NULL,0,'9401277777','PRATYAKSH AGARWALA','','tracko@gmail.com',0,1,'2023-11-09 06:22:48.780476'),(30,'pbkdf2_sha256$600000$G2iFIyLcZHd9ZGHaZGL6W1$A6F/BBDaiqKMEIs6RokPI0QyDzmk7/d3r+16gEojZio=',NULL,0,'9101447846','SMRITI JOSHI','','tracko@gmail.com',0,1,'2023-11-09 06:22:49.080402'),(31,'pbkdf2_sha256$600000$I00aewdxXVyCSHNhcUdihU$5EyFwXZ3on1kAIX+DEvMcKRkal8xFZvs66+SRC5Af/g=',NULL,0,'9085033000','LUVYANSH MALOO','','tracko@gmail.com',0,1,'2023-11-09 06:22:49.396606'),(32,'pbkdf2_sha256$600000$uJIFMl13uNu0GHS5Uyy0vT$ecPX8+IJQDyUiIqRpYjjCVZzi44VWQeHr8Xi6YV+BzM=',NULL,0,'7086462083','SAMARTH DHIRASARIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:49.708803'),(33,'pbkdf2_sha256$600000$xjl7nCgfF6m2b5INOXwMHU$izcMVj6PFegJ0/IhzU0728vAcDbB+gzPTv7ip9QZwRk=',NULL,0,'9508026001','SAARANSH GUPTA','','tracko@gmail.com',0,1,'2023-11-09 06:22:50.004537'),(34,'pbkdf2_sha256$600000$eNsLKMmbQgSZF5U7ODeXni$jgq3SRq68JChr7lVbfWnWThmJ48IViiwC+ZisGHV4nI=',NULL,0,'9435088070','ADITI NAWLAKHA','','tracko@gmail.com',0,1,'2023-11-09 06:22:50.316362'),(35,'pbkdf2_sha256$600000$S5O0j4QnAa2gVVjGnXsezs$YjVL4UqeiVyq6yo+3uwXcBug695jXcDY5ZkBGtAT1Ts=',NULL,0,'9864071855','YUVEER JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:50.615184'),(36,'pbkdf2_sha256$600000$SXen21Jfo5VEwDDXGUhsgq$wHLyRNPAfNdGc7J+r9HfDemSAzjUCtTqDjpj9lbDhhk=',NULL,0,'9401391014','KARISHMITA MITRA','','tracko@gmail.com',0,1,'2023-11-09 06:22:50.921449'),(37,'pbkdf2_sha256$600000$UA1rBp7zCcgXDNd2JutesY$OHStMcCdUe0Bnwm4Ho/fDqrN2MfgtyMd3LRrCuus73A=',NULL,0,'7014249966','SHOURYA BAID','','tracko@gmail.com',0,1,'2023-11-09 06:22:51.233760'),(38,'pbkdf2_sha256$600000$tmeHCMBB48zYdH1LCSX5Ou$5vo0nyXQcrQvIea5/+GxRN8MFGxhJuQOmAGCzkX5wgQ=',NULL,0,'7399074888','MYRA KUCHERIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:51.532107'),(39,'pbkdf2_sha256$600000$C82MsH4HQmVow4QHQ8NELU$M1898YLF48vJYk/hWzYoL3E3m9byXbJQ5Ah60akn0CA=',NULL,0,'6900627366','VIVAAN GUPTA','','tracko@gmail.com',0,1,'2023-11-09 06:22:51.841369'),(40,'pbkdf2_sha256$600000$xyc2n8lTFrERsx5uPObEsx$NQ6nM4Oofo0ZsjdtxuVLcVBPKBpC+7qNiA9R91rRsyM=',NULL,0,'9540877778','PAARTH GOYAL','','tracko@gmail.com',0,1,'2023-11-09 06:22:52.139994'),(41,'pbkdf2_sha256$600000$Dij6Fo1EDQAy9QABXrTSIU$tbgN/qBVzhJuRpOhH98LedcF3p5EgLTWlP9rMB5KIwE=',NULL,0,'6350300925','SAKSHI PARIK','','tracko@gmail.com',0,1,'2023-11-09 06:22:52.448916'),(42,'pbkdf2_sha256$600000$ZVmrc1UqPAyKdMN95cXTo5$JjwG+/vN1xN/gFiHNItINc0lhMPnNthIvjS4a2K+c98=',NULL,0,'8721832360','PRISHA AGARWALLA','','tracko@gmail.com',0,1,'2023-11-09 06:22:52.750563'),(43,'pbkdf2_sha256$600000$SzZEqszCcYwGTqoPxCdWZj$Uh/ksL53ninHO0QkZpjujnh2opnC58M/LhzUrMeKoHM=',NULL,0,'9508262346','VAANI HAWELIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:53.056918'),(44,'pbkdf2_sha256$600000$jBrCJ86mZmTxbiav1RAm0T$l6+Jho0qqufqkjH0Up8FYpC9yKqk/wrWa+zGQRhbqdw=',NULL,0,'7002925500','DHYARA BAJAJ','','tracko@gmail.com',0,1,'2023-11-09 06:22:53.363264'),(45,'pbkdf2_sha256$600000$TRaD1ds4H4Eac2jn5lX4IT$mg1g0j7uT9jmSJSuJm4K2RNRlh8hFu8vf3LYRdYZRbM=',NULL,0,'8876062409','NISAN KASHYAP','','tracko@gmail.com',0,1,'2023-11-09 06:22:53.667545'),(46,'pbkdf2_sha256$600000$MfhKqwrxZSlghektdQww33$Gzt9G6pN/yAdSX5iP/npLzX2nek0seW7wVExMpsxchQ=',NULL,0,'8638786730','SIDDHIRAJ PAUL','','tracko@gmail.com',0,1,'2023-11-09 06:22:53.972857'),(47,'pbkdf2_sha256$600000$WOV6rLzSX56056iwJsvSOi$k9Q9nbyKlIqGRQRkiAkdZZK1QcQwxHcK3w/tLPERk10=',NULL,0,'9401221000','PARSHVII AGARWALAA','','tracko@gmail.com',0,1,'2023-11-09 06:22:54.275549'),(48,'pbkdf2_sha256$600000$AiwYzpchk9RdL5eDyDV6RT$b/VkBbvtF5Isjq9DqMLOdIj0lkPwYgfYusTn6TEmYjI=',NULL,0,'9365759092','DIVISHA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:54.583441'),(49,'pbkdf2_sha256$600000$Alngaof9PeJejXas3asGMl$PuY2Wu1r1cNpXIuH+rrY5cfGQ0d3hUgqkZmoYP0ZGEw=',NULL,0,'9435257799','HEYANSH PATWARI','','tracko@gmail.com',0,1,'2023-11-09 06:22:54.886137'),(50,'pbkdf2_sha256$600000$xamoFGqNHgOHN1HAabeJgg$clLEuJFvaxykFgOWnGQ7hYN9mrXFBR7mAt7tVl7Oiqk=',NULL,0,'9864030591','OJASVI JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:55.190940'),(51,'pbkdf2_sha256$600000$Z2WXvU1sw07ztnEnznyyqH$vLuRMiKorSpd9642ijYwNKZ26vd2Wcd1tKRcDEYVyeo=',NULL,0,'9435140904','SHREYASHI SHARMA','','tracko@gmail.com',0,1,'2023-11-09 06:22:55.495770'),(52,'pbkdf2_sha256$600000$khLtUuOlHqPh3fTu19fStF$3R9p4SRPAxzNYYvSlAN9CaGpAcGBUMYMb4Jkq3IG8Uk=',NULL,0,'9508522202','MUKUND BOTHRA','','tracko@gmail.com',0,1,'2023-11-09 06:22:55.800844'),(53,'pbkdf2_sha256$600000$dIINXjCmhMPIDfyOBuaAgG$SHaE1yHIk6T9iDm/yU5VRGw26Vbyf8gbcjyrO45+xMg=',NULL,0,'9085032826','KASHIKA PATWARY','','tracko@gmail.com',0,1,'2023-11-09 06:22:56.105311'),(54,'pbkdf2_sha256$600000$Hcb1JYbAgrblX05JfxOdrh$mfkav9J5Y4wIIIFlyzARd/IHeaPx1fED3KR/ywl2n8Q=',NULL,0,'9435330362','RYHA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:56.403605'),(55,'pbkdf2_sha256$600000$NgxGCsqqX35GW9ZFltMwuj$lCd3LiQMYQWAgUe6J58TSZSYRSCJKMLOCmxi2bD/70I=',NULL,0,'9365192851','IVAAN BAGARIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:56.712804'),(56,'pbkdf2_sha256$600000$JsLUzHZ7eInxLd66H7xC5u$7Ubl4sVU68IBIYxv7M0Xp0q7eZHCmpdauAz1LqUkwhU=',NULL,0,'9435552400','VANSHIKA AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:22:57.032593'),(57,'pbkdf2_sha256$600000$xealH7QtFQB9SzOTKJQWjh$1Qotnak86C3cMa1djfa5tpN8kEh9xuYOgCxkxGGC0RU=',NULL,0,'8905434651','RIYANSH JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:57.337894'),(58,'pbkdf2_sha256$600000$xhyQzSqtlPJCopXYE9YssJ$6Xlf7YCedKinG+EJCYtApWbGRi3fbLrabjME+bDz37c=',NULL,0,'9864029291','AIRAV AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:22:57.643181'),(59,'pbkdf2_sha256$600000$uezZsib347ZzyxtgJDJhz2$sCnwMp5KccJ/Jgzn0I4etROezxReT5kmDp0pEjUAIFg=',NULL,0,'7086058631','DHAIRYA JHABAK','','tracko@gmail.com',0,1,'2023-11-09 06:22:57.945704'),(60,'pbkdf2_sha256$600000$aJjEX6SrOatFt8eaUB8LoU$xbjFmOQ0BuQ0QZn+xviIxaiuvq5qBCoe6zYHHky6nx8=',NULL,0,'9706009341','REYANSH SHARMA','','tracko@gmail.com',0,1,'2023-11-09 06:22:58.253762'),(61,'pbkdf2_sha256$600000$nzoksuVHRKS9l3rgp5gDlV$RUsvV8YRZdFQa6p1zfQ/2BWNvz8OmL7uoaN26awJVUw=',NULL,0,'9435559668','SHAURYA VEER HARLALKA','','tracko@gmail.com',0,1,'2023-11-09 06:22:58.556336'),(62,'pbkdf2_sha256$600000$yCjlGQs6xWGs7uFAtNdPiN$NCiBlIHzq85A4DPhoDpYSCs8RP71RVCp+Oft//EZhUc=',NULL,0,'9864140349','KARTHIKEY BOTHRA','','tracko@gmail.com',0,1,'2023-11-09 06:22:58.860311'),(63,'pbkdf2_sha256$600000$0Mz8e6YvykuJiFa2mInv0Q$sCtWPHqcJhN4cocqHaaNXw/0lpJlG/Wib9m86kcSARo=',NULL,0,'9435140380','PRASHASTA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:59.165059'),(64,'pbkdf2_sha256$600000$6Obmu0YyPGmcJwK0S2Rmzn$G3TBNgz8TOSXlqw0jyLatBvp+4mOQlZTx8velHHDMwY=',NULL,0,'9864187044','NAINIKA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:22:59.463341'),(65,'pbkdf2_sha256$600000$RDMq7JOGLF1e9lR3bn5mSm$1eMRBclTE3FZXFm6Tu5fsLNyacnT2GH9s2SorU67tvA=',NULL,0,'9864017870','KYSHA SINGHANIA','','tracko@gmail.com',0,1,'2023-11-09 06:22:59.774663'),(66,'pbkdf2_sha256$600000$sEElfeZ5iAfsop7RV4G1kt$rofwqArpF2kXchOmBoKYLA5iwTsgwPzbbFW4TJ5P6IQ=',NULL,0,'9864503750','YUVAAN PATWARI','','tracko@gmail.com',0,1,'2023-11-09 06:23:00.073979'),(67,'pbkdf2_sha256$600000$uYHEOEPiz6cfVsuUxFOeuZ$9X5iGvo8UOHo8l4x1ySghQ2+iHYt9LBDmJFITIOu5A0=',NULL,0,'7099779476','AAZMIN ULLAH','','tracko@gmail.com',0,1,'2023-11-09 06:23:00.384146'),(68,'pbkdf2_sha256$600000$uDCsJpRw0rhSZGZEcXtYl1$nkwwpxAhoyBPGIZHrdeT+U+gT7ewSUyy3lGvls6Fz7Y=',NULL,0,'9149342081','TANU BAFNA','','tracko@gmail.com',0,1,'2023-11-09 06:23:00.681982'),(69,'pbkdf2_sha256$600000$5hLROHvcK79je3jidz79qb$bzMtvYP5Rx+v38/MO89rt7bg6OW6MmdKWzZvIa09v38=',NULL,0,'9039012318','YASHVI KANKARIA','','tracko@gmail.com',0,1,'2023-11-09 06:23:00.991752'),(70,'pbkdf2_sha256$600000$tX76lXSosUvI0xaDFxHKHy$FjdWq1QQxoNc1LqbpkzJDR+pFRPeSLAREDf3vEpfMQI=',NULL,0,'8486015579','DRIJA SHANDILYA','','tracko@gmail.com',0,1,'2023-11-09 06:23:01.292588'),(71,'pbkdf2_sha256$600000$NRkQMKrs0M9w9Xwz9TcbNB$051AFly8B7PFJ37nxsjbq9vnHNnJlg1t+g6aAwOooz4=',NULL,0,'8638449174','RAMMYA KALITA','','tracko@gmail.com',0,1,'2023-11-09 06:23:01.598799'),(72,'pbkdf2_sha256$600000$ByzyETG97IIYMl7520Gtpo$9n4xc/mTBuWqkK/lMsGRhkGopdzTkkRwXnfouPf2eEM=',NULL,0,'9859305283','SUWAGJYOTI DEKA','','tracko@gmail.com',0,1,'2023-11-09 06:23:01.908116'),(73,'pbkdf2_sha256$600000$icz0Er5iPlO5aK3lLaPwOL$mwM7bAdGlFDVxDbzXlN9tJN5bL7/JR4alvOBM8k3p3g=',NULL,0,'6001215550','JIGYASMAN GOSWAMI','','tracko@gmail.com',0,1,'2023-11-09 06:23:02.209462'),(74,'pbkdf2_sha256$600000$TuiTU6T6rp9mx5RsT5FVXp$wqmJALji987Ra8UND5GC+Qt7UBmnoQg3eyGMMbFkF1s=',NULL,0,'7002704700','SHAZAIB RAIF HUSSAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:02.517665'),(75,'pbkdf2_sha256$600000$eCYxZZ6Tw9N3J3F11mO3vv$olSiUEW2tf504VRMGKXqeO8KxXmJP1nDA7cTHGrhJVE=',NULL,0,'9365373558','MAYANKDIP BARMAN','','tracko@gmail.com',0,1,'2023-11-09 06:23:02.817369'),(76,'pbkdf2_sha256$600000$pYc8OivsFJ44krLBWcLSj3$/q4Ll1DBBu3AB4VtBdc5TNlo1eZmqUmUUn0SNP+R4v0=',NULL,0,'8011929738','YASH RANJANI DAS','','tracko@gmail.com',0,1,'2023-11-09 06:23:03.129153'),(77,'pbkdf2_sha256$600000$aI8PKflQlaOcjknKmwncxp$ZCxA9YQUnwSnUb8255OPdawlRPbdxo6SzbBLBcx43ls=',NULL,0,'8638574528','SHRUTI SARMA','','tracko@gmail.com',0,1,'2023-11-09 06:23:03.427950'),(78,'pbkdf2_sha256$600000$tAfZjMe7ZofUk54EMQHgO4$niuDWRDv0Wkn6UFkNbJTNriFMGUIqcDNz+8LQVd5JwE=',NULL,0,'9864305628','NAMASYA SAIKIA','','tracko@gmail.com',0,1,'2023-11-09 06:23:03.744201'),(79,'pbkdf2_sha256$600000$TyelVkiynQs9InSP8UcZYz$qV0RsAescDiPFKvNZA0fsVO71w42S24B1J5ZKK3a61A=',NULL,0,'8638022077','MRIGAKSHI KASHYAP','','tracko@gmail.com',0,1,'2023-11-09 06:23:04.052459'),(80,'pbkdf2_sha256$600000$CYLESbHQm2OVkCPnlo0lV9$1gx/MQhJtpMjSR+ZUxkr/k5+wdU/eWSF6Key5RWhPzk=',NULL,0,'7002419865','KAAVYAN KAUSHIK SONOWAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:04.368211'),(81,'pbkdf2_sha256$600000$KBFL3zs1uL7onp4pIQ6PPf$pZVOC/AK/+9Wvrfuwa8iE1M/CXuA5B0U9y8/5ztdCMw=',NULL,0,'9181777777','VIVAN BAGLA','','tracko@gmail.com',0,1,'2023-11-09 06:23:04.668505'),(82,'pbkdf2_sha256$600000$fU93De562zehtJ55Oc6IlX$66Ad6/gYaa6Mm5umHcIi4xZRgzFy5TyLYcqSfOaJaxM=',NULL,0,'8876557892','DHEER PARASRAMKA','','tracko@gmail.com',0,1,'2023-11-09 06:23:04.978800'),(83,'pbkdf2_sha256$600000$OVuCazNlkfH8o4LTjTM1tz$E7D+ZVu7lpuo5ncPi/hTJlaIKlEFi3b+CdT8oRxSWgI=',NULL,0,'8473004361','AARIKA SONI','','tracko@gmail.com',0,1,'2023-11-09 06:23:05.279148'),(84,'pbkdf2_sha256$600000$rNiB07IysDXoPv5OLjZx1Y$LQhjKOLc1And201yOUyya6LSLxvO2KQa7RELLf1rN9s=',NULL,0,'7086044164','AYUSH LONGKHO','','tracko@gmail.com',0,1,'2023-11-09 06:23:05.598249'),(85,'pbkdf2_sha256$600000$urIjoYpYjzxjO0VjIsipT7$xgFs51jAaQFHSi8ZIs/A5xnQAYB3tBxJ4jjo4+aD+RM=',NULL,0,'9864529295','AADVIK BISWAS','','tracko@gmail.com',0,1,'2023-11-09 06:23:05.903113'),(86,'pbkdf2_sha256$600000$OctZaKPDS4241e9OnYhi5M$/eoLovx6YY5qlX+6p9sIyia9hKPFmLmcjznMYS/cSOQ=',NULL,0,'9854089621','TUHINE MAZUMDER','','tracko@gmail.com',0,1,'2023-11-09 06:23:06.203342'),(87,'pbkdf2_sha256$600000$iftnCf0eaDCGkfSUe8zTHW$TyV/MT5jJ4rrNJteySbIjnheU45yzfdZAT2Dmk+iGbk=',NULL,0,'9864279991','TWISHAA SWAMI','','tracko@gmail.com',0,1,'2023-11-09 06:23:06.512757'),(88,'pbkdf2_sha256$600000$ywqEvM4ny3ofVLup8HJ6XC$vtBhm6kH27YSjqwT6+mfZf3dttmdl5nER/NOwlevNLE=',NULL,0,'8486432191','DIYONAA DUTTA','','tracko@gmail.com',0,1,'2023-11-09 06:23:06.813942'),(89,'pbkdf2_sha256$600000$meQ20XqhHWlVakbhbkmU0N$xCdjXWWM+ikz/bQQWKPfPTMB9jagh/EwMT+G7C/rH0M=',NULL,0,'9508667096','DAVIS BORA','','tracko@gmail.com',0,1,'2023-11-09 06:23:07.119339'),(90,'pbkdf2_sha256$600000$LPUYeuwWnK4050EvX7cgLq$UI88lE1mryQSHCEJNeo+zm3VCTkUMOdWi23QgvSg2j4=',NULL,0,'7733887567','SAANVI SIROHIA','','tracko@gmail.com',0,1,'2023-11-09 06:23:07.421886'),(91,'pbkdf2_sha256$600000$lXODHjIkn0pCLFU7NLaOZM$Z/qE4JSyiB7hpxQkBAYxPPfK3csBMa7efh+xD6nXSis=',NULL,0,'9435838705','SHABDITA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:07.728708'),(92,'pbkdf2_sha256$600000$9YkZxT3LhEc1TTaDhYYNrY$wdp6yJt26wgWqT66CxDUU3aAs9NoBUg+vYGKSnq9Mgk=',NULL,0,'8255099991','VANSH GHORAWAT','','tracko@gmail.com',0,1,'2023-11-09 06:23:08.032641'),(93,'pbkdf2_sha256$600000$jGin4xv0aGlEjKHci02fs6$ctExZa7Qhcn2G69KPVFvGu8874v9oR89V2aiQ6yv6fU=',NULL,0,'9864021644','ATHARV JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:08.337433'),(94,'pbkdf2_sha256$600000$90yZ51oxfRz2fTNHuxzQBA$1jK49HVvS0ktLGTZ3QhDX7UDQEHV5iwEwvlJXsm4c9k=',NULL,0,'9435347585','TISHYA LAHKAR','','tracko@gmail.com',0,1,'2023-11-09 06:23:08.642237'),(95,'pbkdf2_sha256$600000$Gvmxc5P3QhYvFRfxs5Kdoh$muk4VWUgoIhsCoCjRl2pSKHj2LqxhTrxJxfFBOht4oo=',NULL,0,'7399011101','DISHANI MITTAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:08.939965'),(96,'pbkdf2_sha256$600000$9C9fCvtRxFnygfIYYWT58y$ZXX+3AxVuXmS9FBHyC8jDRofhpJZsqOKKJdJDkPRN+8=',NULL,0,'8822100013','NAVAM AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:09.249770'),(97,'pbkdf2_sha256$600000$276DR2NL2Nj3rbwJQuifyh$1qUXzrwfdSN/f6Qoa/DE8yyOKSzkQczR7i8I2o4oflQ=',NULL,0,'7896025540','TANAY PERIWAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:09.550074'),(98,'pbkdf2_sha256$600000$XKsO8Mf3gZfMYVdUJvpFqh$xBkFibXck7LDMBGJTWX4mgxkMrdyFss/5MyW1MYaX8Q=',NULL,0,'9717936913','HIYANSH AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:09.858317'),(99,'pbkdf2_sha256$600000$4OyQdHCaaLsq0pS6FXAXJR$pUzolaKAGsDcjeiUILxrtcRb1S7Lo7lJltlv2N9cdB0=',NULL,0,'8638286989','VIRAJ SINGHI','','tracko@gmail.com',0,1,'2023-11-09 06:23:10.157953'),(100,'pbkdf2_sha256$600000$kQUmMl5qugjXFQZGHUi1cv$95c+TK76k7mAnKQWTMbsUVXMGPvmISgBYW1MO8yF8uk=',NULL,0,'9101583771','AADISH JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:10.474291'),(101,'pbkdf2_sha256$600000$BVcDdjBP2u1PfLdjoAWOmd$g2OASi6Rrp8+t79rshvi/AABubIzJ8SBxC2qXGejywU=',NULL,0,'9864787677','KAASHVI BAGARIA','','tracko@gmail.com',0,1,'2023-11-09 06:23:10.787605'),(102,'pbkdf2_sha256$600000$WxCmvJcFg6LwRl4LKQPVpj$Ss2njalhpPkaQmP2J4Uea35u78XftLnZemJfE9AE3Bo=',NULL,0,'8486054812','SATVIKA CHACHAN','','tracko@gmail.com',0,1,'2023-11-09 06:23:11.092343'),(103,'pbkdf2_sha256$600000$tarn8PcPTzAzq7mxQ34Fzd$q1QSyQJelV4fcswmXsNeAGUB2Yp7vuoAxTSjniWsPfo=',NULL,0,'9957539233','REYANSH AGARWALA','','tracko@gmail.com',0,1,'2023-11-09 06:23:11.396147'),(104,'pbkdf2_sha256$600000$tFrDa0z22hY9DijkrlWOlJ$eRXQYFtXaJOoGfsLfqOPnqnMQXszFgdNQz2DCrPa9Po=',NULL,0,'9435554030','AYANSH JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:11.692909'),(105,'pbkdf2_sha256$600000$PKZfCWtE6pomxwaCF6Q6Xj$0C4ehOaFoH38ENxgN9M9q8UtiRIiQsEdDOo6MMXt6dc=',NULL,0,'9435550167','VANYA JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:12.006653'),(106,'pbkdf2_sha256$600000$j1YtzbTLvw4Y2jlYVrOIwr$MuRv8oVK6siRNbvYC+gnnLO3+3+W9u0xld2f7OCtMo4=',NULL,0,'7002554002','PRISHA AGARWAL','','tracko@gmail.com',0,1,'2023-11-09 06:23:12.311504'),(107,'pbkdf2_sha256$600000$UQyDBy6JexFo443MQYDxFj$fOAyqXxjoyQfYYyHihVd+aXjG/q/2QAm84FPF86AhWk=',NULL,0,'7896621580','PRAGYAN RK DEKA','','tracko@gmail.com',0,1,'2023-11-09 06:23:12.609741'),(108,'pbkdf2_sha256$600000$Y6QpwLhrBqh8aEcNMv1Kxo$PW1T4wSs3XoHA+4pLI6rtXWPEBPBgjVH+sWHW7t94XQ=',NULL,0,'9401594880','SHAYAN HUSSAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:12.921105'),(109,'pbkdf2_sha256$600000$0IpElfqqmVkJ3VTKG0NiWg$wiuzFz9mvxbX5+HWqL7it/jIVjn9DhKMY0Al9Wxjm7Q=',NULL,0,'9706171238','SIVAM ROY CHOUDHURY','','tracko@gmail.com',0,1,'2023-11-09 06:23:13.227673'),(110,'pbkdf2_sha256$600000$lCeZDgYxGrPmUghZGZ6vIh$r1tS/wMnyyZWH8+nXv9mGBZRF/h5A3BvnmNInytJgBQ=',NULL,0,'7973556589','SUKHMEET KAUR','','tracko@gmail.com',0,1,'2023-11-09 06:23:13.532570'),(111,'pbkdf2_sha256$600000$K25VDYT8nG5dvRx6hrme97$DDegmN6zy03LCTzZDai41zPyuGn8lBFLH+duYRPNpdo=',NULL,0,'8135049995','SARA REGMI','','tracko@gmail.com',0,1,'2023-11-09 06:23:13.828351'),(112,'pbkdf2_sha256$600000$Hy2KDM7KTP0IjmMvG4qHtL$Evpb7rzPlIv48/X+OtpB8fEYX5aED/j0MlUHLJQmyrY=',NULL,0,'9864505656','KHUSHI JAIN','','tracko@gmail.com',0,1,'2023-11-09 06:23:14.139265'),(113,'pbkdf2_sha256$600000$gZUsooQslYjTXAcKA9BGVX$71/YGdZ+jHoaiQMolhr2gozj1Vjc+R+TawQ6MoX03Ms=',NULL,0,'7002053856','ALVINA RUHEE','','tracko@gmail.com',0,1,'2023-11-09 06:23:14.457958'),(114,'pbkdf2_sha256$600000$brpGvJmhj0w9AgfbZvoTwB$1VQi/KiosLuFtPZp/cTeRBt5FN0+3P2gYaO1qwJcKQ4=',NULL,0,'9678320964','NABHASWATEE DAS','','tracko@gmail.com',0,1,'2023-11-09 06:23:14.755229'),(115,'pbkdf2_sha256$600000$q2hqB3yO8zWS1SKzuBDnpt$OeHd+IVb2ubsSW+rfiQe6DPkDl86hrHi4FGoArvgg4I=',NULL,0,'7002455578','RIYAN ARYA BHARALI','','tracko@gmail.com',0,1,'2023-11-09 06:23:15.063499'),(116,'pbkdf2_sha256$600000$45CO8R8IB8zjXiPNvuDk1J$iD7vNZE18TPYZLt6VjRJNGekus/XY+hsUHkQ9hO9lS0=',NULL,0,'7002384261','SOUMILI SAMANTA','','tracko@gmail.com',0,1,'2023-11-09 06:23:15.363305'),(117,'pbkdf2_sha256$600000$3gQR7wl7PWqTaFZilO9nAs$8rowgHHgFTSCdTW8XKnYmdCwwQx4nmywmhjtBNN1bDE=',NULL,0,'8472979486','DIKSHIT ALOY BORO','','tracko@gmail.com',0,1,'2023-11-09 06:23:15.674062'),(118,'pbkdf2_sha256$600000$5PeiLbzYL33FUbWJ6rjtXU$xmSMMkp0br2efMDjdPbqJpW5KpKINPztFY7xOQP8Sxk=',NULL,0,'7002036903','PRINCE AMAN','','tracko@gmail.com',0,1,'2023-11-09 06:23:15.979870'),(119,'pbkdf2_sha256$600000$3zwc7u4KeRNI26vvCLSN1A$rt8NoFnkB0+oag/dR2Rtr9cgd6MiA+LCRV7JPGKki9E=',NULL,0,'8761918143','ARHAM ZAYAN HAQUE','','tracko@gmail.com',0,1,'2023-11-09 06:23:16.286993'),(120,'pbkdf2_sha256$600000$U4K9TBiNWTXmF33iWqMHNO$c5VifPqobmFoghKATe//I1bFDOuzqCfac4jAEByvS6Q=',NULL,0,'8638175902','DICHANG BARMAN','','tracko@gmail.com',0,1,'2023-11-09 06:23:16.590373'),(121,'pbkdf2_sha256$600000$ZLxCEfXdJHAFtmM4aj13MO$PlUcG1ajxnMQyX7wgiqSVBWjLq8a3vwpnP/Vx8qpSr8=',NULL,0,'8011739264','NIYOR NATH','','tracko@gmail.com',0,1,'2023-11-09 06:23:16.890712'),(122,'pbkdf2_sha256$600000$RcikwEdSB7JUGtBlqnphei$YgWWuiw1v6zmh9f2xbbW64XP7bHfP+xcKewONOudXvU=',NULL,0,'9957949336','YASIKA SWARGIARY','','tracko@gmail.com',0,1,'2023-11-09 06:23:17.200983'),(123,'pbkdf2_sha256$600000$q5TWB7xK7M3hkzEwC62Lzi$ZNunB9AzRQ3NQTYdA+60H6XqWfbOVL/duuEy8iavsK4=',NULL,0,'9101309887','BHARGAVI LAHKAR','','tracko@gmail.com',0,1,'2023-11-09 06:23:17.498686'),(124,'pbkdf2_sha256$600000$r1qwDNsDYdSAQyJiCIaWPK$HshB3ylIE18lQ745SLIUqTr1apVKfmf9DMGV9U2DXRk=',NULL,0,'9954687343','KEFRINA RAHMAN','','tracko@gmail.com',0,1,'2023-11-09 06:23:17.814968'),(125,'pbkdf2_sha256$600000$PKETMaFcqhfXOXce73DRze$/N4A8rND7ctaY4idVRHFgJu4OPDnUu4KEvubydNSBs0=',NULL,0,'8638489237','SHLOK PODDAR','','tracko@gmail.com',0,1,'2023-11-09 06:23:18.127293'),(126,'pbkdf2_sha256$600000$59NX8vItaj0xSbUVmXdEll$Kh74vsu5G5eE9VJNEHhwyx5f9kSJm2zsq3ExekdwJek=',NULL,0,'9864203666','SHIVAY PODDAR','','tracko@gmail.com',0,1,'2023-11-09 06:23:18.433065'),(127,'pbkdf2_sha256$600000$51W4USBXhqbOrXLe8hQE5o$EW8niDbCMiznKqq6zDN34fdZT7rVLGEWPvuZWfCR+kE=',NULL,0,'9678335633','DEBRAJ DEKA','','tracko@gmail.com',0,1,'2023-11-09 06:23:18.736845'),(128,'pbkdf2_sha256$600000$YFhlaguP5uxUEgvlqC9K2E$o9UD0adyWiIlO121MbrUO+mYby/HcLbGrxb4knTuYwY=',NULL,0,'8510993222','PRAPTI NATH','','tracko@gmail.com',0,1,'2023-11-09 06:23:19.033551'),(129,'pbkdf2_sha256$600000$LSYJLCnY7CE1M1K5xMkJRa$yW02dbYk04T3odItKuEbx1dzd7nqvdrGMnDns4hCc3g=',NULL,0,'7002928411','NAMASSYAH PARASSAR','','tracko@gmail.com',0,1,'2023-11-09 06:23:19.347367'),(130,'pbkdf2_sha256$600000$kF8QmUoKkcnRkPdoBJjgWM$zE+zpxWs+n3aFRl/6RRrUKoau9WqOxNa48ke7NWPSn4=',NULL,0,'7002627082','RAYYAN KALITA','','tracko@gmail.com',0,1,'2023-11-09 06:23:19.652185'),(131,'pbkdf2_sha256$600000$9otPoNSFfxqQA4bDNYGrqr$WjVeJUrtlOmmVXyydYo2bpIdwOAy+tOKo40P45Ery94=',NULL,0,'8486182211','KAVYANNSH PARASRAMPURIA','','tracko@gmail.com',0,1,'2023-11-09 06:23:19.950370'),(132,'pbkdf2_sha256$600000$sXPslt7xcF0vssPycONwpv$V4yZK1siLaeh1Seeg3AN7plFqtxDBmAcu5BSVAzD1+Y=',NULL,0,'8011404032','NIVRITI SARMAH','','tracko@gmail.com',0,1,'2023-11-09 06:23:20.280554'),(133,'pbkdf2_sha256$600000$Co9yHT9eFNXcBSnOhLykyV$0evdZrVq2W82DhxJNIWIC97kbR1cza2bTA59pj6GSIE=',NULL,0,'9101122313','YAMAN ALI','','tracko@gmail.com',0,1,'2023-11-09 06:23:20.584393'),(134,'pbkdf2_sha256$600000$OkoPNpY0eREuDzqaU6OCmO$60kOkM+DZgJyfWChurIhlLvDAi79OYZM9hIvSdrmQbc=',NULL,0,'7048987364','ARAV KUMAR JHA','','tracko@gmail.com',0,1,'2023-11-09 06:23:20.894640'),(135,'pbkdf2_sha256$600000$EJeeMmPTVUCJgWJ2YobkaC$JsBgZCG/k4c8R3wTVjoSwgsYSSuYNBJl6nes7EH88/g=',NULL,0,'9401251004','ALAINA THOMAS','','tracko@gmail.com',0,1,'2023-11-09 06:23:21.196156'),(136,'pbkdf2_sha256$600000$q2tcJu3iXtkRX4dKknjLHU$oyqTXEznEMJDHotf3LsTu+/FBRWRkCBG1L5voLnQSP0=',NULL,0,'6002919773','HARDIK KASHYAP','','tracko@gmail.com',0,1,'2023-11-09 06:23:21.519690'),(137,'pbkdf2_sha256$600000$vSgB5grc2L6ONZ3j3o5h6F$v2dNm6Tpz5sBcEd9Wt22I3KQir62LSbeMvn+t74uHAM=',NULL,0,'7002148688','HRISHIKESH SARMA','','tracko@gmail.com',0,1,'2023-11-09 06:23:21.818949'),(138,'pbkdf2_sha256$600000$xsYwdOKMVwKJJfaWiGwk78$TKsLAwi0pjw2CaaNSo5/CgW0fvkiAunQrKpOQV6jlSQ=',NULL,0,'7002905576','SHRUTI BORAH','','tracko@gmail.com',0,1,'2023-11-09 06:23:22.131319'),(139,'pbkdf2_sha256$600000$hMZ83EvqYtlwcwm8AasoRg$PQ/Xi1FqHF7vdL6tyxD/ZNKb6hD7v14XaldDHi4MGUU=',NULL,0,'9957491949','JONAK JIWAN DAS','','tracko@gmail.com',0,1,'2023-11-09 06:23:22.436875'),(140,'pbkdf2_sha256$600000$xblg7AIGYspz97pYo12ePv$KqtZsBkE6/3iQbzYUskNR/sxIDLd4XGd5kKJJP/3jeE=',NULL,0,'9101767401','JYOTISHMAN SARMA','','tracko@gmail.com',0,1,'2023-11-09 06:23:22.743762'),(141,'pbkdf2_sha256$600000$uli95tanh1saLyrAnfqdmu$3+HroOh1LYuehYhpSNMuSQTarDiveVNVqsq7MbTH3Pw=',NULL,0,'8638843929','MURCHANA SARMA','','tracko@gmail.com',0,1,'2023-11-09 06:23:23.047472'),(142,'pbkdf2_sha256$600000$OVahYJnFBcPQVv5bgWyWoe$bZxCU/RR4vaX4pR8MQJbxlTjwKiYYgCJRUrkgGsYkMQ=',NULL,0,'9678558019','REYNARD J HASDA','','tracko@gmail.com',0,1,'2023-11-09 06:23:23.351238'),(143,'pbkdf2_sha256$600000$VsHftgGU5rf7JOmjAoQuZs$hLSNkfVGzDp83KXtbhoQQozzm03HbCdHdBQ7gWhr4bw=',NULL,0,'9101467182','UDITA SARMA','','tracko@gmail.com',0,1,'2023-11-09 06:23:23.662177'),(144,'pbkdf2_sha256$600000$qUnGpHenwmiCQFCS1kW7PL$xMqi1stbQ8Ck0WqF/+RpXoHCzIRzJpfkyjvMUL+PqUw=',NULL,0,'9954104538','RASHNI SINGH','','tracko@gmail.com',0,1,'2023-11-09 06:23:23.971644'),(145,'pbkdf2_sha256$600000$YEMAITTm3Wqe8s9Lgigs9u$XlwtMmO5QvZs49vBwbn9SnsSSAFGcspb8U45U6JskIE=',NULL,0,'1232121313','AA','','sachin@gmail.com',0,1,'2023-11-16 06:29:55.170362');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-10-27 07:36:02.314612','1','sachin',1,'[{\"added\": {}}]',7,1),(2,'2023-10-27 07:36:22.489457','1','sachin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(3,'2023-10-27 07:36:38.445512','1','sachin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(4,'2023-10-27 10:33:26.825464','1','P1-PERIOD 1',1,'[{\"added\": {}}]',15,1),(5,'2023-10-27 10:33:38.604530','2','P2-PERIOD 2',1,'[{\"added\": {}}]',15,1),(6,'2023-10-27 10:33:51.699219','3','P3-PERIOD 3',1,'[{\"added\": {}}]',15,1),(7,'2023-10-27 10:34:05.609257','4','P4-PERIOD 4',1,'[{\"added\": {}}]',15,1),(8,'2023-10-27 10:34:19.763038','5','P5-PERIOD 5',1,'[{\"added\": {}}]',15,1),(9,'2023-10-27 10:34:32.011132','6','P6-PERIOD 6',1,'[{\"added\": {}}]',15,1),(10,'2023-11-07 06:03:55.721480','1','1',3,'',20,1),(11,'2023-11-07 06:58:28.972504','4','1111111111',2,'[{\"changed\": {\"fields\": [\"Id number\"]}}]',7,1),(12,'2023-11-07 06:58:48.075850','4','1111111111',2,'[]',7,1),(13,'2023-11-08 09:27:50.876520','1','SchoolTimings object (1)',1,'[{\"added\": {}}]',21,1),(14,'2023-11-08 09:29:35.513336','2','Tuesday',1,'[{\"added\": {}}]',21,1),(15,'2023-11-08 09:29:49.381275','3','Wednesday',1,'[{\"added\": {}}]',21,1),(16,'2023-11-08 09:30:01.717737','4','Thursday',1,'[{\"added\": {}}]',21,1),(17,'2023-11-08 09:30:12.119783','1','Thursday',2,'[{\"changed\": {\"fields\": [\"Day of week\"]}}]',21,1),(18,'2023-11-08 09:30:21.910613','1','Monday',2,'[{\"changed\": {\"fields\": [\"Day of week\"]}}]',21,1),(19,'2023-11-08 09:30:39.212637','5','Friday',1,'[{\"added\": {}}]',21,1),(20,'2023-11-08 09:31:00.904732','6','Saturday',1,'[{\"added\": {}}]',21,1),(21,'2023-11-10 06:53:06.054232','5','Friday',2,'[{\"changed\": {\"fields\": [\"Start time\"]}}]',21,1),(22,'2023-11-10 06:53:08.931922','5','Friday',2,'[]',21,1),(23,'2023-11-10 09:56:00.636937','3','1',2,'[{\"changed\": {\"fields\": [\"Device id\"]}}]',20,1),(24,'2023-11-11 05:16:20.168118','6','Saturday',2,'[{\"changed\": {\"fields\": [\"Start time\", \"End time\"]}}]',21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'Accounts','profile'),(1,'admin','logentry'),(10,'app','route'),(11,'app','routestop'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'gate_config','gateconfigmaster'),(9,'gate_config','rawdata'),(19,'gate_config','siteinfo'),(12,'registration_app','classsection'),(13,'registration_app','holiday'),(20,'registration_app','mobiledeviceids'),(14,'registration_app','othersdetails'),(15,'registration_app','periodtable'),(22,'registration_app','schoolspecialtimings'),(21,'registration_app','schooltimings'),(16,'registration_app','studentdetails'),(17,'registration_app','teacherdetails'),(18,'registration_app','timetable'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 07:33:08.152167'),(2,'auth','0001_initial','2023-10-27 07:33:08.336701'),(3,'Accounts','0001_initial','2023-10-27 07:33:08.365598'),(4,'admin','0001_initial','2023-10-27 07:33:08.417752'),(5,'admin','0002_logentry_remove_auto_add','2023-10-27 07:33:08.424230'),(6,'admin','0003_logentry_add_action_flag_choices','2023-10-27 07:33:08.447689'),(7,'app','0001_initial','2023-10-27 07:33:08.468779'),(8,'contenttypes','0002_remove_content_type_name','2023-10-27 07:33:08.503814'),(9,'auth','0002_alter_permission_name_max_length','2023-10-27 07:33:08.528769'),(10,'auth','0003_alter_user_email_max_length','2023-10-27 07:33:08.545730'),(11,'auth','0004_alter_user_username_opts','2023-10-27 07:33:08.551710'),(12,'auth','0005_alter_user_last_login_null','2023-10-27 07:33:08.576644'),(13,'auth','0006_require_contenttypes_0002','2023-10-27 07:33:08.578644'),(14,'auth','0007_alter_validators_add_error_messages','2023-10-27 07:33:08.585623'),(15,'auth','0008_alter_user_username_max_length','2023-10-27 07:33:08.613520'),(16,'auth','0009_alter_user_last_name_max_length','2023-10-27 07:33:08.639451'),(17,'auth','0010_alter_group_name_max_length','2023-10-27 07:33:08.652442'),(18,'auth','0011_update_proxy_permissions','2023-10-27 07:33:08.659398'),(19,'auth','0012_alter_user_first_name_max_length','2023-10-27 07:33:08.692311'),(20,'gate_config','0001_initial','2023-10-27 07:33:08.714252'),(21,'registration_app','0001_initial','2023-10-27 07:33:08.783679'),(22,'sessions','0001_initial','2023-10-27 07:33:08.804648'),(23,'Accounts','0002_alter_profile_phone_number','2023-10-31 05:06:42.876800'),(24,'Accounts','0003_alter_profile_user_type','2023-10-31 05:06:42.886800'),(25,'Accounts','0004_alter_profile_id_number','2023-10-31 05:06:42.916800'),(26,'Accounts','0005_alter_profile_user_type','2023-10-31 05:06:42.926799'),(27,'app','0002_routestop','2023-11-03 11:43:39.134081'),(28,'gate_config','0002_siteinfo','2023-11-03 11:43:39.144076'),(29,'registration_app','0002_mobiledeviceids','2023-11-07 05:51:22.529132'),(30,'registration_app','0003_alter_mobiledeviceids_table','2023-11-07 06:02:32.969049'),(31,'registration_app','0004_schooltimings','2023-11-08 05:33:51.380223'),(32,'registration_app','0005_alter_schooltimings_table','2023-11-08 09:29:10.501750'),(33,'registration_app','0006_schoolspecialtimings','2023-11-20 09:15:56.875914');
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
INSERT INTO `django_session` VALUES ('1qd4aw8tjzusf0u9al5jyyc5rwv6j8ap','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r1O1q:tq3B-PVPvDUy0Hqm_-ynS_R-w4yxFxMPHOSO6zsKUDg','2023-11-24 09:42:18.008148'),('2pzxvmx3nunajfqx0kyspg4epmwntin3','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxPgP:EqZl7ANBVaSwZA77EskmH2h-Mp0Z_7M13i97wZwzsd0','2023-11-13 10:39:45.394396'),('383z6s3vrafh2pq4oufxjab9ujxq08g2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqxQ:0QJObKtx3IhV4OvoPZul9X_QoCQ7mcFPvs1jhgrXsoo','2023-11-17 09:59:16.612537'),('4d186km0857snk79zu75hgifglorv1ak','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqB0:nkgl-giI9H_z3J5yiuz4Lg9XhIFWNSYihmeZLm19-B8','2023-11-17 09:09:14.287967'),('4imhtsvybl25ykyvdeysy4j1qbq7zw6e','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwHNM:tmf2gYXwSRcfwjp55jmxgvX-7OjVQd0gNKFOWxmT21k','2023-11-10 07:35:24.181612'),('864moomjk42xjphrcmnceu7o9t6x4krw','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r3ViS:ogABUDeSVv-UDnRQJcoWF_pTAweYoHrfN-IIaBRClvs','2023-11-30 06:19:04.784262'),('8a9op4ygqrmtry908dzjjm8if4yfe9x6','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qz8uF:SCnuQdLSFfefiwJGCz8Lk6Om-xMyc_bOsI6-6LFF85g','2023-11-18 05:09:11.189932'),('97umai7yn9ts6kowxi7huam1j5qo75dd','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r1LNi:g29IetE9jXaL3WTOqdXP6w6rqEzP1G2PecYqV6ndXLE','2023-11-24 06:52:42.469586'),('9vico5q7afxnw0zeq5ridd78962zeado','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r0JTU:VRM2GokG9pe-Nkane-IFDM16vWjH8nWeWhYBgC-F_00','2023-11-21 10:38:24.804695'),('c53glp738a3jj5au78ysdkpnt7zxmgcc','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r0yTU:Q0NSoGufutRy6_Vc0sdd1TrJVAoIqE31b3d5PR52NU4','2023-11-23 06:25:08.739020'),('f0581k3wg99qcqd0s91hl9nhvuxkx49p','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r1gSP:hA70hU5LfNmosinYjrIUcBCDW-0hsQLTPT5nVcyWFdU','2023-11-25 05:22:57.736742'),('fy7lfqggxxltsj0g1ejcx3jakcoko7rn','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r5J6i:KzZMPyVSvQ6z5wBHqocsBd8fM4kjc6aZvaXBB7WnW80','2023-12-05 05:15:32.562879'),('h8h1i19hfvmxa8w8di36sryx4chw9hnh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyU5W:jK21BrTBIiO0t9BJXyAlCwqBjtQMg4en_fyTf8j54EQ','2023-11-16 09:34:06.327923'),('hpo2orvtgltj2tu9e6jsaul2w0l0rdxu','.eJxVjEEOwiAQRe_C2hBgWhhcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WDkGDSQOM2QBaVXx2WJznASMzGkLHiS1op8B6pDEqUkZbxFKy5yjeH8AfN2Y:1qyt1F:4j6zT2qq2gClysm8b9u0Wn5KGfaEDz0vn6Y0kchVnvY','2023-11-17 12:11:21.935550'),('hrwc35stuau0k3c343me3exy9goplqij','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqet:m13plReG_bT-8S1quELhjCzQO6o1buOB2lMR2eUiSTw','2023-11-17 09:40:07.771000'),('lv4kxgu6zvv6hh5zsrzoqf0i2j9pi29m','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyrII:JOmIft5Ce1pNWcxgMRYt5t5BPhhjfzZwOn7hFgCAbGw','2023-11-17 10:20:50.099218'),('nva763o29y722dwckohtu71z2um60dkt','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r3xLj:WYpnkhzZybHDLplKHuf1n5RPBs53rMLlgpv8Xj-2hR8','2023-12-01 11:49:27.982077'),('o51oce8qavfmuhibnwocwtqwu0wb8z7b','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qynYH:MjP06Go0PCpnrg78H4GIXpBNj4hYPjSKfFKJWdsZgR8','2023-11-17 06:21:05.014065'),('ocdtl16oliy3oxfm1hp7abllvp2d1ft6','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r0Fon:sFiaJjoTdNJffENM66ho3UmhJazX88nYhzzV_524GTQ','2023-11-21 06:44:09.082094'),('pmufmyli166y6ncub5jw9ke2vnrjxrhn','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r0bpS:iHNaAbaDdr1RKpCdnKxl5sDKQu7bD_rOXyNLZmEPohM','2023-11-22 06:14:18.675554'),('s4r7ozn728dlocw9gvgsyzq44ssynisc','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwLAe:7j15JMaaE18NWKVn5TVf_VurtrzHFa-g--DpvEWDOFs','2023-11-10 11:38:32.573149'),('sxh3h7nshot31w0p2o7e7u002txrpfu1','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqze:5xb_z99wLCn5np0mt0s6P292zaGEQIaSLrllZeiN7uU','2023-11-17 10:01:34.640038'),('v7oeuc871z2xbqizkx4arkp4xdgv3g7p','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r0F02:SyLyt9JvTq3Ks1yinpXyGthHRhRvsHZmISw3tc4hoQs','2023-11-21 05:51:42.529498'),('vic3pb4x1hfb19whuqslxk94d7wacz5s','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r4DmI:6I02mPvP1XksH2MwR6btJ2fOGXW964GHAYzNUZsGCv8','2023-12-02 05:21:58.386850'),('vu0wehui937tyygv8u8s6xcpzj9eu7nh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwL6v:vlww1iGF9B1TZUrASOMaW2l8v2zAOBnXikr_2Satx9k','2023-11-10 11:34:41.507899'),('w1pu96ttkeu1j8vki4uzabrxrojovdr9','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r5jr3:66dojy57XI2GPwz0fL_vs_TTNiDMBuGfsIVWQ7wOG8I','2023-12-06 09:49:09.488097'),('wx3kmz1zm94733304er0mt3m4oa0pzqi','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r4xMT:eqp5S6y6ia1RG4rA23MMHVa3KSeJm1_NwN77X8JxFXo','2023-12-04 06:02:21.408182'),('xtsggv0fywrknh6rahk6eq596orrkoa5','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwbq7:G8YipH0YKBSJersxC3imDpoffp1eBanS5__2w0ix7FM','2023-11-11 05:26:27.578289'),('xvdgy3wdo2qcs9rhb27f89ozdb8yd8fs','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1r3YrM:WSLogqkIvHcQpdg-KHF3o9Z-1DkztFjoDmXX2sLp5Wk','2023-11-30 09:40:28.703434'),('z616lqztuzn43h9oalnbkrplo3bqhxc2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxMJd:ovvmXmCuzcyN0HPkC2662TqWvKf7x4QuD78siDG1b5w','2023-11-13 07:04:01.361479');
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
-- Table structure for table `tbl_deviceids`
--

DROP TABLE IF EXISTS `tbl_deviceids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_deviceids` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) NOT NULL,
  `device_id` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deviceids`
--

LOCK TABLES `tbl_deviceids` WRITE;
/*!40000 ALTER TABLE `tbl_deviceids` DISABLE KEYS */;
INSERT INTO `tbl_deviceids` VALUES (3,'1','cBc8QsE5Q3m2y7aZLMEdvV:APA91bGJtwN2GykL7YM0k1Mg4eeDvwUSi2Ava8s4p7MkRaYibKzoww_1cjzrE3f2uc8C9phkzbOYwon9SC7Un0kCVV6pPz15rKLHN6mi_0cctCmqJuRsQnPbFkczk6pegZx5_rK29wrH');
/*!40000 ALTER TABLE `tbl_deviceids` ENABLE KEYS */;
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
-- Table structure for table `tbl_schoolspecialtimings`
--

DROP TABLE IF EXISTS `tbl_schoolspecialtimings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_schoolspecialtimings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schoolspecialtimings`
--

LOCK TABLES `tbl_schoolspecialtimings` WRITE;
/*!40000 ALTER TABLE `tbl_schoolspecialtimings` DISABLE KEYS */;
INSERT INTO `tbl_schoolspecialtimings` VALUES (1,'2023-11-20','09:00:00.000000','16:30:00.000000'),(2,'2023-11-25','11:00:00.000000','17:03:00.000000');
/*!40000 ALTER TABLE `tbl_schoolspecialtimings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_schooltimings`
--

DROP TABLE IF EXISTS `tbl_schooltimings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_schooltimings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(10) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schooltimings`
--

LOCK TABLES `tbl_schooltimings` WRITE;
/*!40000 ALTER TABLE `tbl_schooltimings` DISABLE KEYS */;
INSERT INTO `tbl_schooltimings` VALUES (1,'Monday','10:00:00.000000','16:00:00.000000'),(2,'Tuesday','10:00:00.000000','16:00:00.000000'),(3,'Wednesday','10:00:00.000000','16:00:00.000000'),(4,'Thursday','10:00:00.000000','16:00:00.000000'),(5,'Friday','10:00:00.000000','16:00:00.000000'),(6,'Saturday','08:00:00.000000','12:00:00.000000');
/*!40000 ALTER TABLE `tbl_schooltimings` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studentdetails`
--

LOCK TABLES `tbl_studentdetails` WRITE;
/*!40000 ALTER TABLE `tbl_studentdetails` DISABLE KEYS */;
INSERT INTO `tbl_studentdetails` VALUES (6,'KIRAN','1',1,4233545453,'fc56c6ed',NULL,'',NULL,'aa','G','',NULL,'1111111111','rajaniravi04@gmail.com','1','A',NULL,'',NULL,1,'student_images/1_profile.jpg'),(7,'NIRVAN SIOTIA','255',1,1940514994,'73a9e8b2',NULL,'','M','MADHUSUDAN SIOTIA','G','','','9864096222','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(8,'ZOHA SHOEB SHAIKH','276',2,1940475186,'73a94d32',NULL,'','F','MOHAMED SHOEB SHAIKH','G','','','9819286215','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(9,'AASHIRYA DUTTA','287',3,1941679746,'73bbae82',NULL,'','F','RANA DUTTA','G','','','9864013262','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(10,'BHAVYANSH AGARWAL','321',4,1945277554,'73f29472',NULL,'','M','GAUTAM AGARWAL','G','','','6003346321','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(11,'SANVI BAISHYA','337',5,1940515170,'73a9e962',NULL,'','F','DIMBESWAR BAISHYA','G','','','7099212717','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(12,'GATIK BOTHRA','357',6,1940538994,'73aa4672',NULL,'','M','RAJIV BOTHRA','G','','','9706284892','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(13,'JAISHNAVEE GOUTAM','361',7,1942070354,'73c1a452',NULL,'','F','DHRUBA JYOTI GUOTAM','G','','','9435046859','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(14,'ANOM REEHA MAZID','393',8,1941673266,'73bb9532',NULL,'','F','ABDUL MAZID','G','','','7002553540','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(15,'NIVAAN SARAWGI','401',9,1941574738,'73ba1452',NULL,'','M','PANKAJ SARAWGI','G','','','9954041810','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(16,'ABHILAKH BAISHYA','410',10,1941575522,'73ba1762',NULL,'','M','BANAMALI BAISHYA','G','','','9394273393','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(17,'DIVYAM KUMAR','413',11,1941680338,'73bbb0d2',NULL,'','M','RAJ KISHORE KUMAR','G','','','8723847267','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(18,'KUNAL KALITA','415',12,1944299330,'73e3a742',NULL,'','M','RAJEEB KALITA','G','','','9954241085','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(19,'NISHANT DAS','417',13,1941572898,'73ba0d22',NULL,'','M','PULAK CHANDRA DAS','G','','','9435540567','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(20,'HARSHIKA KASHYAP BHARALI','264',15,1942019426,'73c0dd62',NULL,'','F','LAKHYADHAR BHARALI','G','','','7002208171','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(21,'NAMRA JAIN','267',16,1944459010,'73e61702',NULL,'','M','PAWAN JAIN','G','','','9707333500','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(22,'PRAGYAN PRIT BAISHYA','272',17,3515521413,'d18a9985',NULL,'','M','DIMBESWAR BAISHYA','G','','','7099212717','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(23,'ANISHA BARMAN','288',18,1941629714,'73baeb12',NULL,'','F','DHURBA JYOTI BARMAN','G','','','9854055243','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(24,'THAISA DEVI','317',21,1944512514,'73e6e802',NULL,'','F','MANASH PRATIM NATH','G','','','7002999566','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(25,'SYEDA SAIMA SIREEN','324',22,1941573314,'73ba0ec2',NULL,'','F','SYED HELIMUDDIN AHMED','G','','','7002894263','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(26,'SARAAH ROB','344',23,1941674498,'73bb9a02',NULL,'','F','ABDUL ROB','G','','','9101008833','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(27,'NAITIK KUMAR MITTAL','371',24,1941634402,'73bafd62',NULL,'','M','VIKASH KUMAR MITTAL','G','','','7002761237','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(28,'RUPAL KALITA','372',25,3514869157,'d180a5a5',NULL,'','M','RAJEEB KALITA','G','','','9954241085','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(29,'AARIYAN DAS','376',26,1941575442,'73ba1712',NULL,'','M','MANJIT DAS','G','','','9706061910','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(30,'ABHIGYAN KASHYAP BHARALI','377',27,1941576194,'73ba1a02',NULL,'','M','LAKHYADHAR BHARALI','G','','','7002208171','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(31,'EKTA MITTAL','382',28,1942228338,'73c40d72',NULL,'','F','VIKASH KUMAR MITTAL','G','','','7002761237','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(32,'RAJVEER BAISHYA','387',29,1941681314,'73bbb4a2',NULL,'','M','BANAMALI BAISHYA','G','','','9394273393','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(33,'PIYUSH TAILOR','233',30,1940470738,'73a93bd2',NULL,'','M','SANJAY TAILOR','G','','','9352728062','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(34,'ATIF ASLAM','278',31,1944460978,'73e61eb2',NULL,'','M','ABDUR REKIB','G','','','8638610534','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(35,'PRATYAKSH AGARWALA','346',33,1940494626,'73a99922',NULL,'','M','PAWAN KUMAR AGARWALA','G','','','9401277777','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(36,'SMRITI JOSHI','356',34,1944457266,'73e61032',NULL,'','F','GOPAL KRISHNA JOSHI','G','','','9101447846','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(37,'LUVYANSH MALOO','366',35,1941673682,'73bb96d2',NULL,'','M','KARAN MALOO','G','','','9085033000','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(38,'SAMARTH DHIRASARIA','368',36,1944455298,'73e60882',NULL,'','M','RANA DHIRASARIA','G','','','7086462083','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(39,'SAARANSH GUPTA','389',37,1941575362,'73ba16c2',NULL,'','M','SUSHIL GUPTA','G','','','9508026001','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(40,'ADITI NAWLAKHA','411',38,1945279938,'73f29dc2',NULL,'','F','SONU NAWLAKHA','G','','','9435088070','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(41,'YUVEER JAIN','251',39,1944283330,'73e368c2',NULL,'','M','RONIT JAIN','G','','','9864071855','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(42,'KARISHMITA MITRA','290',40,1942182434,'73c35a22',NULL,'','F','RAJIB MITRA','G','','','9401391014','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(43,'SHOURYA BAID','295',41,1941636402,'73bb0532',NULL,'','M','MAYANK BAID','G','','','7014249966','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(44,'MYRA KUCHERIA','305',42,1941574978,'73ba1542',NULL,'','F','PRATIK KUCHERIA','G','','','7399074888','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(45,'VIVAAN GUPTA','309',43,1942005074,'73c0a552',NULL,'','M','KUNAL GUPTA','G','','','6900627366','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(46,'PAARTH GOYAL','349',44,1940538754,'73aa4582',NULL,'','M','KAMAL GOYAL','G','','','9540877778','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(47,'SAKSHI PARIK','390',45,1941575746,'73ba1842',NULL,'','F','BHAWANI SHANKAR PARIK','G','','','6350300925','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(48,'PRISHA AGARWALLA','214',46,1944298850,'73e3a562',NULL,'','F','ANUJ KUMAR AGARWALLA','G','','','8721832360','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(49,'VAANI HAWELIA','222',48,1942022626,'73c0e9e2',NULL,'','F','AKHIL HAWELIA','G','','','9508262346','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(50,'DHYARA BAJAJ','225',49,1940541090,'73aa4ea2',NULL,'','F','AMAR KUMAR BAJAJ','G','','','7002925500','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(51,'NISAN KASHYAP','281',51,1940538834,'73aa45d2',NULL,'','M','NIKHIL KR DAS','G','','','8876062409','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(52,'SIDDHIRAJ PAUL','283',52,1940494242,'73a997a2',NULL,'','M','PRAGYAN PAUL','G','','','8638786730','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(53,'PARSHVII AGARWALAA','216',53,1944349426,'73e46af2',NULL,'','F','MANNOJ AGARWALAA','G','','','9401221000','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(54,'DIVISHA JAIN','240',54,1942223218,'73c3f972',NULL,'','F','SAURAV KUMAR JAIN','G','','','9365759092','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(55,'HEYANSH PATWARI','265',55,1941678354,'73bba912',NULL,'','M','RAMESH PATWARI','G','','','9435257799','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(56,'OJASVI JAIN','270',56,1944458722,'73e615e2',NULL,'','F','AMIT KUMAR JAIN','G','','','9864030591','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(57,'SHREYASHI SHARMA','332',57,1945280354,'73f29f62',NULL,'','F','SATISH SHARMA','G','','','9435140904','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(58,'MUKUND BOTHRA','358',58,1941677842,'73bba712',NULL,'','M','BINIT BOTHRA','G','','','9508522202','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(59,'KASHIKA PATWARY','363',59,3442761909,'cd3460b5',NULL,'','F','VIVEK PATWARY','G','','','9085032826','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(60,'RYHA JAIN','365',60,1941673426,'73bb95d2',NULL,'','F','RAHUL JAIN','G','','','9435330362','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(61,'IVAAN BAGARIA','370',61,1944555042,'73e78e22',NULL,'','M','AMIT KUMAR BAGARIA','G','','','9365192851','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(62,'SWESHA SHARMA','408',62,1941679010,'73bbaba2',NULL,'','F','SATISH SHARMA','G','','','9435140904','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(63,'VANSHIKA AGARWAL','424',63,1941575682,'73ba1802',NULL,'','F','NAVEEN KUMAR AGARWAL','G','','','9435552400','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(64,'RIYANSH JAIN','250',64,1941633890,'73bafb62',NULL,'','M','MANOJ JAIN','G','','','8905434651','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(65,'AIRAV AGARWAL','252',65,1942275890,'73c4c732',NULL,'','M','PRATIK AGARWAL','G','','','9864029291','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(66,'DHAIRYA JHABAK','253',66,1945280322,'73f29f42',NULL,'','M','VIKASH JHABAK','G','','','7086058631','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(67,'REYANSH SHARMA','254',67,1942219506,'73c3eaf2',NULL,'','M','LOKESH SHARMA','G','','','9706009341','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(68,'SHAURYA VEER HARLALKA','256',68,1941679586,'73bbade2',NULL,'','M','GOVIND HARLALKA','G','','','9435559668','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(69,'KARTHIKEY BOTHRA','258',69,1942217810,'73c3e452',NULL,'','M','BAJRANG BOTHRA','G','','','9864140349','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(70,'PRASHASTA JAIN','386',70,1941679170,'73bbac42',NULL,'','M','NABIN JAIN','G','','','9435140380','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(71,'NAINIKA JAIN','213',71,3662884729,'da532f79',NULL,'','F','ANKIT JAIN','G','','','9864187044','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(72,'KYSHA SINGHANIA','217',72,3671707433,'dad9cf29',NULL,'','F','MRINAL SINGHANIA','G','','','9864017870','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(73,'YUVAAN PATWARI','234',73,1942017266,'73c0d4f2',NULL,'','M','PUNIT PATWARI','G','','','9864503750','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(74,'AAZMIN ULLAH','244',74,1944349570,'73e46b82',NULL,'','F','AMAN ULLAH','G','','','7099779476','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(75,'TANU BAFNA','245',75,1941673218,'73bb9502',NULL,'','F','ANAND BAFNA','G','','','9149342081','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(76,'YASHVI KANKARIA','221',76,3442820117,'cd354415',NULL,'','F','PANKAJ KANKARIA','G','','','9039012318','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(77,'DRIJA SHANDILYA','246',77,1944295314,'73e39792',NULL,'','F','DEBORSHI KAR','G','','','8486015579','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(78,'RAMMYA KALITA','404',80,1942015026,'73c0cc32',NULL,'','M','RAJIB KALITA','G','','','8638449174','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(79,'SUWAGJYOTI DEKA','407',81,1941674338,'73bb9962',NULL,'','M','NILAMANI DEKA','G','','','9859305283','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(80,'JIGYASMAN GOSWAMI','414',82,1941639090,'73bb0fb2',NULL,'','M','BAIJAYANTA GOSWAMI','G','','','6001215550','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(81,'SHAZAIB RAIF HUSSAIN','422',83,1941575602,'73ba17b2',NULL,'','M','MD SHARIQUE IMDAD HUSSAIN','G','','','7002704700','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(82,'MAYANKDIP BARMAN','439',84,3442561589,'cd315235',NULL,'','M','MD SHARIQUE IMDAD HUSSAIN','G','','','9365373558','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(83,'YASH RANJANI DAS','302',85,1942018930,'73c0db72',NULL,'','F','SUPRADIP DAS','G','','','8011929738','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(84,'SHRUTI SARMA','303',86,1940495922,'73a99e32',NULL,'','F','KUMUD SARMA','G','','','8638574528','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(85,'PRANAVI SIOTIA','314',87,1940512866,'73a9e062',NULL,'','F','MADHUSUDAN SIOTIA','G','','','9864096222','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(86,'NAMASYA SAIKIA','316',88,1941679410,'73bbad32',NULL,'','F','KRISHNA KAMAL SAIKIA','G','','','9864305628','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(87,'MRIGAKSHI KASHYAP','318',89,2081481995,'7c10e50b',NULL,'','F','NIRMAL SHARMA','G','','','8638022077','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(88,'RIHAN KALITA','352',90,1944557650,'73e79852',NULL,'','M','RAJIB KALITA','G','','','8638449174','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(89,'KAAVYAN KAUSHIK SONOWAL','353',91,3443187301,'cd3ade65',NULL,'','M','ACHAJYA SONOWAL','G','','','7002419865','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(90,'VIVAN BAGLA','373',92,1941626786,'73badfa2',NULL,'','M','ANIRUDH BAGLA','G','','','9181777777','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(91,'DHEER PARASRAMKA','228',93,1941575138,'73ba15e2',NULL,'','M','GIRISH PARASHRAMKA','G','','','8876557892','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(92,'AARIKA SONI','247',94,1941573138,'73ba0e12',NULL,'','F','ANKIT SONI','G','',NULL,'8473004361','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/247_profile.jpg'),(93,'JIA AGARWAL','359',95,1941573634,'73ba1002',NULL,'','F','GAUTAM AGARWAL','G','','','6003346321','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(94,'AYUSH LONGKHO','433',96,3672052537,'dadf1339',NULL,'','M','AGARWAL','G','','','7086044164','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(95,'AADVIK BISWAS','436',97,2080687051,'7c04c3cb',NULL,'','M','AJIT','G','',NULL,'9864529295','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/436_profile.jpg'),(96,'TUHINE MAZUMDER','429',98,1941601890,'73ba7e62',NULL,'','M','AJIT MAZUMDAR','G','','','9854089621','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(97,'TWISHAA SWAMI','341',100,1941573554,'73ba0fb2',NULL,'','F','RAJAT SWAMI','G','','','9864279991','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(98,'DIYONAA DUTTA','381',101,1941677282,'73bba4e2',NULL,'','F','BIMAL DUTTA','G','','','8486432191','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(99,'DAVIS BORA','279',102,1944357154,'73e48922',NULL,'','M','SUMON BORA','G','','','9508667096','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(100,'SAANVI SIROHIA','362',103,1944301634,'73e3b042',NULL,'','F','DEEOESH SIROHIA','G','','','7733887567','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(101,'SHABDITA JAIN','391',104,1942227698,'73c40af2',NULL,'','F','KAMAL KUMAR JAIN','G','','','9435838705','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(102,'VANSH GHORAWAT','392',105,1941679506,'73bbad92',NULL,'','M','VINEET GHORAWAT','G','','','8255099991','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(103,'ATHARV JAIN','394',106,1941640866,'73bb16a2',NULL,'','M','NIKHIL JAIN','G','','','9864021644','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(104,'TISHYA LAHKAR','409',107,1942241906,'73c44272',NULL,'','F','DIGJYOTI LAHKAR','G','','','9435347585','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(105,'DISHANI MITTAL','249',108,1941572978,'73ba0d72',NULL,'','F','SANKEET MITTAL','G','','','7399011101','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(106,'NAVAM AGARWAL','268',109,1945277634,'73f294c2',NULL,'','M','GAURAB AGARWAL','G','','','8822100013','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(107,'TANAY PERIWAL','275',110,1940491346,'73a98c52',NULL,'','M','MADHU SUDAN PERIWAL','G','','','7896025540','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(108,'HIYANSH AGARWAL','313',111,1942025650,'73c0f5b2',NULL,'','M','ANKIT AGARWAL','G','','','9717936913','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(109,'VIRAJ SINGHI','320',112,3442918885,'cd36c5e5',NULL,'','M','VIKASH SINGHI','G','','','8638286989','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(110,'RIVAAN MITTAL','343',113,1942226034,'73c40472',NULL,'','M','SANKEET MITTAL','G','','','7399011101','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(111,'AADISH JAIN','350',114,2080884347,'7c07c67b',NULL,'','M','PANKAJ JAIN','G','',NULL,'9101583771','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/350_profile.jpg'),(112,'KAASHVI BAGARIA','351',115,1944504178,'73e6c772',NULL,'','F','GAURAV BAGARIA','G','','','9864787677','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(113,'SATVIKA CHACHAN','219',116,1940514834,'73a9e812',NULL,'','F','BIKASH CHACHAN','G','','','8486054812','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(114,'REYANSH AGARWALA','230',117,2081374859,'7c0f428b',NULL,'','M','SANDEEP AGARWALA','G','','','9957539233','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(115,'AYANSH JAIN','232',118,1941681154,'73bbb402',NULL,'','M','PUNIT JAIN','G','','','9435554030','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(116,'VANYA JAIN','239',119,1942219346,'73c3ea52',NULL,'','F','MANISH JAIN','G','','','9435550167','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(117,'PRISHA AGARWAL','243',120,3671456409,'dad5fa99',NULL,'','F','AMIT AGARWAL','G','','','7002554002','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(118,'PRAGYAN RK DEKA','419',121,3671985449,'dade0d29',NULL,'','M','RANJIT DEKA','G','','','7896621580','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(119,'SHAYAN HUSSAIN','432',123,1942239394,'73c438a2',NULL,'','M','MANZAR HUSSAIN','G','','','9401594880','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(120,'SIVAM ROY CHOUDHURY','297',125,1941681410,'73bbb502',NULL,'','M','SIMANTA ROY CHOUDHURY','G','','','9706171238','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(121,'SUKHMEET KAUR','299',126,1940496850,'73a9a1d2',NULL,'','F','MANMEET SINGH GILL','G','','','7973556589','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(122,'SARA REGMI','334',127,1942235906,'73c42b02',NULL,'','F','KUL BAHADUR REGMI','G','','','8135049995','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(123,'KHUSHI JAIN','223',128,1944355650,'73e48342',NULL,'','F','JACKY JAIN','G','','','9864505656','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(124,'GURKIRAN SINGH KAUR','238',129,1941675698,'73bb9eb2',NULL,'','F','MANMEET SINGH GILL','G','','','7973556589','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(125,'ALVINA RUHEE','241',130,1941677682,'73bba672',NULL,'','F','MD SAMSUL HAQUE','G','','','7002053856','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(126,'NABHASWATEE DAS','355',131,1941639266,'73bb1062',NULL,'','F','SANJAY KUMAR DAS','G','','','9678320964','tracko@gmail.com','1','A',NULL,'8',1,1,'student_images/default_image.jpg'),(127,'RIYAN ARYA BHARALI','421',132,1941634242,'73bafcc2',NULL,'','M','BISWAJIT BHARALI','G','','','7002455578','tracko@gmail.com','2','B',NULL,'8',1,1,'student_images/default_image.jpg'),(128,'SOUMILI SAMANTA','342',133,1560552544,'5d042460',NULL,'','F','SAPTARSHI SAMANTA','G','','','7002384261','tracko@gmail.com','1','A',NULL,'8',1,1,'student_images/default_image.jpg'),(129,'DIKSHIT ALOY BORO','236',134,1944295186,'73e39712',NULL,'','M','DHIRAJ BORO','G','','','8472979486','tracko@gmail.com','2','B',NULL,'8',1,1,'student_images/default_image.jpg'),(130,'PRINCE AMAN','293',135,1940494194,'73a99772',NULL,'','M','NEKIBUR RAHMAN','G','','','7002036903','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(131,'ARHAM ZAYAN HAQUE','327',136,1942069186,'73c19fc2',NULL,'','M','AYAZUL HAQUE','G','','','8761918143','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(132,'DICHANG BARMAN','395',137,1941678930,'73bbab52',NULL,'','M','BIPUL BARMAN','G','','','8638175902','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(133,'NIYOR NATH','311',138,1940513362,'73a9e252',NULL,'','M','GOLAP NATH','G','','','8011739264','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(134,'YASIKA SWARGIARY','329',139,1942224802,'73c3ffa2',NULL,'','F','JANAK LAL SWARGIARY','G','','','9957949336','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(135,'BHARGAVI LAHKAR','335',140,1941573730,'73ba1062',NULL,'','F','RAHUL LAHKAR','G','','','9101309887','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(136,'KEFRINA RAHMAN','383',141,1942224018,'73c3fc92',NULL,'','F','MATIUR RAHMAN','G','','','9954687343','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(137,'SHLOK PODDAR','227',144,3984280199,'ed7b4a87',NULL,'','','PRITAM PODDAR','G','','','8638489237','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(138,'SHIVAY PODDAR','260',145,1941680914,'73bbb312',NULL,'','','KETAN PODDAR','G','','','9864203666','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(139,'DEBRAJ DEKA','380',146,1941629618,'73baeab2',NULL,'','','NITUL DEKA','G','','','9678335633','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(140,'PRAPTI NATH','385',147,1941573218,'73ba0e62',NULL,'','','PRANAB KUMAR NATH','G','','','8510993222','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(141,'NAMASSYAH PARASSAR','400',148,1941672210,'73bb9112',NULL,'','','AMARENDRA BHATTACHARYYA','G','','','7002928411','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(142,'RAYYAN KALITA','405',149,1944355570,'73e482f2',NULL,'','','JAYANTA KALITA','G','','','7002627082','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(143,'KAVYANNSH PARASRAMPURIA','428',150,3443009461,'cd3827b5',NULL,'','','CHANDRAKANT PARASRAMPURIA','G','','','8486182211','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(144,'DHIMAN DEKA','263',151,1941576114,'73ba19b2',NULL,'','','NITUK DEKA','G','','','9678335633','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(145,'NIVRITI SARMAH','269',152,1940514594,'73a9e722',NULL,'','','BADAL SHARMA','G','','','8011404032','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(146,'YAMAN ALI','301',153,1791811925,'6acce155',NULL,'','','YUNUS ALI','G','','','9101122313','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(147,'ARAV KUMAR JHA','374',154,1940539074,'73aa46c2',NULL,'','','RAHUL KUMAR JHA','G','','','7048987364','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(148,'ALAINA THOMAS','378',155,1941573394,'73ba0f12',NULL,'','','THOMAS MATHEW','G','','','9401251004','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(149,'NANDINI JHA','248',156,1944463458,'73e62862',NULL,'','','RAHUL KUMAR JHA','G','','','7048987364','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(150,'HARDIK KASHYAP','231',157,1945280434,'73f29fb2',NULL,'','','HITEN SHARMA','G','','','6002919773','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(151,'HRISHIKESH SARMA','396',158,1941674418,'73bb99b2',NULL,'','','BISWA PRAKASH SARMA','G','','','7002148688','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(152,'SHRUTI BORAH','406',159,1942008498,'73c0b2b2',NULL,'','','BIJIT BORAH','G','','','7002905576','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(153,'JONAK JIWAN DAS','257',162,1942882034,'73ce06f2',NULL,'','','GIRINDRA CHANDRA DAS','G','','','9957491949','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(154,'JYOTISHMAN SARMA','289',163,1941677618,'73bba632',NULL,'','','ANJAN SARMA','G','','','9101767401','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(155,'MURCHANA SARMA','291',164,1940538914,'73aa4622',NULL,'','','DEBA KUMAR SARMA','G','','','8638843929','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(156,'REYNARD J HASDA','306',165,1944463218,'73e62772',NULL,'','','WILSON HASDA','G','','','9678558019','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(157,'UDITA SARMA','224',166,2080876779,'7c07a8eb',NULL,'','','RATUL SHARMA','G','','','9101467182','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(158,'RASHNI SINGH','226',167,1942004914,'73c0a4b2',NULL,'','','SHANKAR SINGH','G','','','9954104538','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timetable`
--

LOCK TABLES `tbl_timetable` WRITE;
/*!40000 ALTER TABLE `tbl_timetable` DISABLE KEYS */;
INSERT INTO `tbl_timetable` VALUES (1,'Monday','P1','16:25:00.000000','17:26:00.000000','123','1','A'),(2,'Monday','P2','15:05:00.000000','16:05:00.000000','123','1','A'),(3,'Friday','P1','17:25:00.000000','18:25:00.000000','123','1','A'),(4,'Tuesday','P1','12:14:00.000000','13:14:00.000000','123','1','A');
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
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_1`
--

LOCK TABLES `tblattendance_1` WRITE;
/*!40000 ALTER TABLE `tblattendance_1` DISABLE KEYS */;
INSERT INTO `tblattendance_1` VALUES ('2023-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tblattendance_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_213`
--

DROP TABLE IF EXISTS `tblattendance_213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_213` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_213`
--

LOCK TABLES `tblattendance_213` WRITE;
/*!40000 ALTER TABLE `tblattendance_213` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_213` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_214`
--

DROP TABLE IF EXISTS `tblattendance_214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_214` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_214`
--

LOCK TABLES `tblattendance_214` WRITE;
/*!40000 ALTER TABLE `tblattendance_214` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_214` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_216`
--

DROP TABLE IF EXISTS `tblattendance_216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_216` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_216`
--

LOCK TABLES `tblattendance_216` WRITE;
/*!40000 ALTER TABLE `tblattendance_216` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_216` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_217`
--

DROP TABLE IF EXISTS `tblattendance_217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_217` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_217`
--

LOCK TABLES `tblattendance_217` WRITE;
/*!40000 ALTER TABLE `tblattendance_217` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_217` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_219`
--

DROP TABLE IF EXISTS `tblattendance_219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_219` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_219`
--

LOCK TABLES `tblattendance_219` WRITE;
/*!40000 ALTER TABLE `tblattendance_219` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_219` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_221`
--

DROP TABLE IF EXISTS `tblattendance_221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_221` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_221`
--

LOCK TABLES `tblattendance_221` WRITE;
/*!40000 ALTER TABLE `tblattendance_221` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_221` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_222`
--

DROP TABLE IF EXISTS `tblattendance_222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_222` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_222`
--

LOCK TABLES `tblattendance_222` WRITE;
/*!40000 ALTER TABLE `tblattendance_222` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_222` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_223`
--

DROP TABLE IF EXISTS `tblattendance_223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_223` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_223`
--

LOCK TABLES `tblattendance_223` WRITE;
/*!40000 ALTER TABLE `tblattendance_223` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_223` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_224`
--

DROP TABLE IF EXISTS `tblattendance_224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_224` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_224`
--

LOCK TABLES `tblattendance_224` WRITE;
/*!40000 ALTER TABLE `tblattendance_224` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_224` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_225`
--

DROP TABLE IF EXISTS `tblattendance_225`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_225` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_225`
--

LOCK TABLES `tblattendance_225` WRITE;
/*!40000 ALTER TABLE `tblattendance_225` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_225` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_226`
--

DROP TABLE IF EXISTS `tblattendance_226`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_226` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_226`
--

LOCK TABLES `tblattendance_226` WRITE;
/*!40000 ALTER TABLE `tblattendance_226` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_226` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_227`
--

DROP TABLE IF EXISTS `tblattendance_227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_227` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_227`
--

LOCK TABLES `tblattendance_227` WRITE;
/*!40000 ALTER TABLE `tblattendance_227` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_227` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_228`
--

DROP TABLE IF EXISTS `tblattendance_228`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_228` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_228`
--

LOCK TABLES `tblattendance_228` WRITE;
/*!40000 ALTER TABLE `tblattendance_228` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_228` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_230`
--

DROP TABLE IF EXISTS `tblattendance_230`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_230` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_230`
--

LOCK TABLES `tblattendance_230` WRITE;
/*!40000 ALTER TABLE `tblattendance_230` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_230` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_231`
--

DROP TABLE IF EXISTS `tblattendance_231`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_231` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_231`
--

LOCK TABLES `tblattendance_231` WRITE;
/*!40000 ALTER TABLE `tblattendance_231` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_231` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_232`
--

DROP TABLE IF EXISTS `tblattendance_232`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_232` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_232`
--

LOCK TABLES `tblattendance_232` WRITE;
/*!40000 ALTER TABLE `tblattendance_232` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_232` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_233`
--

DROP TABLE IF EXISTS `tblattendance_233`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_233` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_233`
--

LOCK TABLES `tblattendance_233` WRITE;
/*!40000 ALTER TABLE `tblattendance_233` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_233` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_234`
--

DROP TABLE IF EXISTS `tblattendance_234`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_234` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_234`
--

LOCK TABLES `tblattendance_234` WRITE;
/*!40000 ALTER TABLE `tblattendance_234` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_234` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_236`
--

DROP TABLE IF EXISTS `tblattendance_236`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_236` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_236`
--

LOCK TABLES `tblattendance_236` WRITE;
/*!40000 ALTER TABLE `tblattendance_236` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_236` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_238`
--

DROP TABLE IF EXISTS `tblattendance_238`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_238` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_238`
--

LOCK TABLES `tblattendance_238` WRITE;
/*!40000 ALTER TABLE `tblattendance_238` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_238` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_239`
--

DROP TABLE IF EXISTS `tblattendance_239`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_239` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_239`
--

LOCK TABLES `tblattendance_239` WRITE;
/*!40000 ALTER TABLE `tblattendance_239` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_239` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_240`
--

DROP TABLE IF EXISTS `tblattendance_240`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_240` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_240`
--

LOCK TABLES `tblattendance_240` WRITE;
/*!40000 ALTER TABLE `tblattendance_240` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_240` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_241`
--

DROP TABLE IF EXISTS `tblattendance_241`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_241` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_241`
--

LOCK TABLES `tblattendance_241` WRITE;
/*!40000 ALTER TABLE `tblattendance_241` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_241` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_243`
--

DROP TABLE IF EXISTS `tblattendance_243`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_243` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_243`
--

LOCK TABLES `tblattendance_243` WRITE;
/*!40000 ALTER TABLE `tblattendance_243` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_243` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_244`
--

DROP TABLE IF EXISTS `tblattendance_244`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_244` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_244`
--

LOCK TABLES `tblattendance_244` WRITE;
/*!40000 ALTER TABLE `tblattendance_244` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_244` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_245`
--

DROP TABLE IF EXISTS `tblattendance_245`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_245` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_246`
--

DROP TABLE IF EXISTS `tblattendance_246`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_246` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_246`
--

LOCK TABLES `tblattendance_246` WRITE;
/*!40000 ALTER TABLE `tblattendance_246` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_246` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_247`
--

DROP TABLE IF EXISTS `tblattendance_247`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_247` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_247`
--

LOCK TABLES `tblattendance_247` WRITE;
/*!40000 ALTER TABLE `tblattendance_247` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_247` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_248`
--

DROP TABLE IF EXISTS `tblattendance_248`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_248` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_248`
--

LOCK TABLES `tblattendance_248` WRITE;
/*!40000 ALTER TABLE `tblattendance_248` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_248` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_249`
--

DROP TABLE IF EXISTS `tblattendance_249`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_249` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_249`
--

LOCK TABLES `tblattendance_249` WRITE;
/*!40000 ALTER TABLE `tblattendance_249` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_249` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_250`
--

DROP TABLE IF EXISTS `tblattendance_250`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_250` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_250`
--

LOCK TABLES `tblattendance_250` WRITE;
/*!40000 ALTER TABLE `tblattendance_250` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_250` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_251`
--

DROP TABLE IF EXISTS `tblattendance_251`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_251` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_251`
--

LOCK TABLES `tblattendance_251` WRITE;
/*!40000 ALTER TABLE `tblattendance_251` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_251` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_252`
--

DROP TABLE IF EXISTS `tblattendance_252`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_252` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_252`
--

LOCK TABLES `tblattendance_252` WRITE;
/*!40000 ALTER TABLE `tblattendance_252` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_252` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_253`
--

DROP TABLE IF EXISTS `tblattendance_253`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_253` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_253`
--

LOCK TABLES `tblattendance_253` WRITE;
/*!40000 ALTER TABLE `tblattendance_253` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_253` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_254`
--

DROP TABLE IF EXISTS `tblattendance_254`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_254` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_254`
--

LOCK TABLES `tblattendance_254` WRITE;
/*!40000 ALTER TABLE `tblattendance_254` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_254` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_255`
--

DROP TABLE IF EXISTS `tblattendance_255`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_255` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_255`
--

LOCK TABLES `tblattendance_255` WRITE;
/*!40000 ALTER TABLE `tblattendance_255` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_255` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_256`
--

DROP TABLE IF EXISTS `tblattendance_256`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_256` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_256`
--

LOCK TABLES `tblattendance_256` WRITE;
/*!40000 ALTER TABLE `tblattendance_256` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_256` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_257`
--

DROP TABLE IF EXISTS `tblattendance_257`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_257` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_257`
--

LOCK TABLES `tblattendance_257` WRITE;
/*!40000 ALTER TABLE `tblattendance_257` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_257` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_258`
--

DROP TABLE IF EXISTS `tblattendance_258`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_258` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_258`
--

LOCK TABLES `tblattendance_258` WRITE;
/*!40000 ALTER TABLE `tblattendance_258` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_258` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_260`
--

DROP TABLE IF EXISTS `tblattendance_260`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_260` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_260`
--

LOCK TABLES `tblattendance_260` WRITE;
/*!40000 ALTER TABLE `tblattendance_260` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_260` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_263`
--

DROP TABLE IF EXISTS `tblattendance_263`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_263` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_263`
--

LOCK TABLES `tblattendance_263` WRITE;
/*!40000 ALTER TABLE `tblattendance_263` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_263` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_264`
--

DROP TABLE IF EXISTS `tblattendance_264`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_264` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_264`
--

LOCK TABLES `tblattendance_264` WRITE;
/*!40000 ALTER TABLE `tblattendance_264` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_264` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_265`
--

DROP TABLE IF EXISTS `tblattendance_265`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_265` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_265`
--

LOCK TABLES `tblattendance_265` WRITE;
/*!40000 ALTER TABLE `tblattendance_265` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_265` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_267`
--

DROP TABLE IF EXISTS `tblattendance_267`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_267` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_267`
--

LOCK TABLES `tblattendance_267` WRITE;
/*!40000 ALTER TABLE `tblattendance_267` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_267` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_268`
--

DROP TABLE IF EXISTS `tblattendance_268`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_268` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_268`
--

LOCK TABLES `tblattendance_268` WRITE;
/*!40000 ALTER TABLE `tblattendance_268` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_268` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_269`
--

DROP TABLE IF EXISTS `tblattendance_269`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_269` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_269`
--

LOCK TABLES `tblattendance_269` WRITE;
/*!40000 ALTER TABLE `tblattendance_269` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_269` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_270`
--

DROP TABLE IF EXISTS `tblattendance_270`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_270` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_270`
--

LOCK TABLES `tblattendance_270` WRITE;
/*!40000 ALTER TABLE `tblattendance_270` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_270` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_272`
--

DROP TABLE IF EXISTS `tblattendance_272`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_272` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_272`
--

LOCK TABLES `tblattendance_272` WRITE;
/*!40000 ALTER TABLE `tblattendance_272` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_272` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_275`
--

DROP TABLE IF EXISTS `tblattendance_275`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_275` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_275`
--

LOCK TABLES `tblattendance_275` WRITE;
/*!40000 ALTER TABLE `tblattendance_275` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_275` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_276`
--

DROP TABLE IF EXISTS `tblattendance_276`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_276` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_276`
--

LOCK TABLES `tblattendance_276` WRITE;
/*!40000 ALTER TABLE `tblattendance_276` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_276` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_278`
--

DROP TABLE IF EXISTS `tblattendance_278`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_278` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_278`
--

LOCK TABLES `tblattendance_278` WRITE;
/*!40000 ALTER TABLE `tblattendance_278` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_278` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_279`
--

DROP TABLE IF EXISTS `tblattendance_279`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_279` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_279`
--

LOCK TABLES `tblattendance_279` WRITE;
/*!40000 ALTER TABLE `tblattendance_279` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_279` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_281`
--

DROP TABLE IF EXISTS `tblattendance_281`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_281` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_281`
--

LOCK TABLES `tblattendance_281` WRITE;
/*!40000 ALTER TABLE `tblattendance_281` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_281` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_283`
--

DROP TABLE IF EXISTS `tblattendance_283`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_283` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_283`
--

LOCK TABLES `tblattendance_283` WRITE;
/*!40000 ALTER TABLE `tblattendance_283` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_283` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_287`
--

DROP TABLE IF EXISTS `tblattendance_287`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_287` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_287`
--

LOCK TABLES `tblattendance_287` WRITE;
/*!40000 ALTER TABLE `tblattendance_287` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_287` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_288`
--

DROP TABLE IF EXISTS `tblattendance_288`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_288` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_288`
--

LOCK TABLES `tblattendance_288` WRITE;
/*!40000 ALTER TABLE `tblattendance_288` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_288` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_289`
--

DROP TABLE IF EXISTS `tblattendance_289`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_289` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_289`
--

LOCK TABLES `tblattendance_289` WRITE;
/*!40000 ALTER TABLE `tblattendance_289` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_289` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_290`
--

DROP TABLE IF EXISTS `tblattendance_290`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_290` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_290`
--

LOCK TABLES `tblattendance_290` WRITE;
/*!40000 ALTER TABLE `tblattendance_290` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_290` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_291`
--

DROP TABLE IF EXISTS `tblattendance_291`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_291` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_291`
--

LOCK TABLES `tblattendance_291` WRITE;
/*!40000 ALTER TABLE `tblattendance_291` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_291` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_293`
--

DROP TABLE IF EXISTS `tblattendance_293`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_293` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_293`
--

LOCK TABLES `tblattendance_293` WRITE;
/*!40000 ALTER TABLE `tblattendance_293` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_293` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_295`
--

DROP TABLE IF EXISTS `tblattendance_295`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_295` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_295`
--

LOCK TABLES `tblattendance_295` WRITE;
/*!40000 ALTER TABLE `tblattendance_295` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_295` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_297`
--

DROP TABLE IF EXISTS `tblattendance_297`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_297` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_297`
--

LOCK TABLES `tblattendance_297` WRITE;
/*!40000 ALTER TABLE `tblattendance_297` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_297` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_299`
--

DROP TABLE IF EXISTS `tblattendance_299`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_299` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_299`
--

LOCK TABLES `tblattendance_299` WRITE;
/*!40000 ALTER TABLE `tblattendance_299` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_299` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_301`
--

DROP TABLE IF EXISTS `tblattendance_301`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_301` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_301`
--

LOCK TABLES `tblattendance_301` WRITE;
/*!40000 ALTER TABLE `tblattendance_301` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_301` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_302`
--

DROP TABLE IF EXISTS `tblattendance_302`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_302` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_302`
--

LOCK TABLES `tblattendance_302` WRITE;
/*!40000 ALTER TABLE `tblattendance_302` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_302` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_303`
--

DROP TABLE IF EXISTS `tblattendance_303`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_303` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_303`
--

LOCK TABLES `tblattendance_303` WRITE;
/*!40000 ALTER TABLE `tblattendance_303` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_303` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_305`
--

DROP TABLE IF EXISTS `tblattendance_305`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_305` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_305`
--

LOCK TABLES `tblattendance_305` WRITE;
/*!40000 ALTER TABLE `tblattendance_305` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_305` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_306`
--

DROP TABLE IF EXISTS `tblattendance_306`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_306` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_306`
--

LOCK TABLES `tblattendance_306` WRITE;
/*!40000 ALTER TABLE `tblattendance_306` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_306` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_309`
--

DROP TABLE IF EXISTS `tblattendance_309`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_309` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_309`
--

LOCK TABLES `tblattendance_309` WRITE;
/*!40000 ALTER TABLE `tblattendance_309` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_309` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_311`
--

DROP TABLE IF EXISTS `tblattendance_311`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_311` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_311`
--

LOCK TABLES `tblattendance_311` WRITE;
/*!40000 ALTER TABLE `tblattendance_311` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_311` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_313`
--

DROP TABLE IF EXISTS `tblattendance_313`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_313` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_313`
--

LOCK TABLES `tblattendance_313` WRITE;
/*!40000 ALTER TABLE `tblattendance_313` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_313` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_314`
--

DROP TABLE IF EXISTS `tblattendance_314`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_314` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_314`
--

LOCK TABLES `tblattendance_314` WRITE;
/*!40000 ALTER TABLE `tblattendance_314` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_314` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_316`
--

DROP TABLE IF EXISTS `tblattendance_316`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_316` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_316`
--

LOCK TABLES `tblattendance_316` WRITE;
/*!40000 ALTER TABLE `tblattendance_316` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_316` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_317`
--

DROP TABLE IF EXISTS `tblattendance_317`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_317` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_317`
--

LOCK TABLES `tblattendance_317` WRITE;
/*!40000 ALTER TABLE `tblattendance_317` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_317` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_318`
--

DROP TABLE IF EXISTS `tblattendance_318`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_318` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_318`
--

LOCK TABLES `tblattendance_318` WRITE;
/*!40000 ALTER TABLE `tblattendance_318` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_318` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_320`
--

DROP TABLE IF EXISTS `tblattendance_320`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_320` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_320`
--

LOCK TABLES `tblattendance_320` WRITE;
/*!40000 ALTER TABLE `tblattendance_320` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_320` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_321`
--

DROP TABLE IF EXISTS `tblattendance_321`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_321` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_321`
--

LOCK TABLES `tblattendance_321` WRITE;
/*!40000 ALTER TABLE `tblattendance_321` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_321` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_324`
--

DROP TABLE IF EXISTS `tblattendance_324`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_324` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_324`
--

LOCK TABLES `tblattendance_324` WRITE;
/*!40000 ALTER TABLE `tblattendance_324` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_324` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_327`
--

DROP TABLE IF EXISTS `tblattendance_327`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_327` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_327`
--

LOCK TABLES `tblattendance_327` WRITE;
/*!40000 ALTER TABLE `tblattendance_327` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_327` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_329`
--

DROP TABLE IF EXISTS `tblattendance_329`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_329` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_329`
--

LOCK TABLES `tblattendance_329` WRITE;
/*!40000 ALTER TABLE `tblattendance_329` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_329` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_332`
--

DROP TABLE IF EXISTS `tblattendance_332`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_332` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_332`
--

LOCK TABLES `tblattendance_332` WRITE;
/*!40000 ALTER TABLE `tblattendance_332` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_332` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_334`
--

DROP TABLE IF EXISTS `tblattendance_334`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_334` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_334`
--

LOCK TABLES `tblattendance_334` WRITE;
/*!40000 ALTER TABLE `tblattendance_334` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_334` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_335`
--

DROP TABLE IF EXISTS `tblattendance_335`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_335` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_335`
--

LOCK TABLES `tblattendance_335` WRITE;
/*!40000 ALTER TABLE `tblattendance_335` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_335` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_337`
--

DROP TABLE IF EXISTS `tblattendance_337`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_337` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_337`
--

LOCK TABLES `tblattendance_337` WRITE;
/*!40000 ALTER TABLE `tblattendance_337` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_337` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_341`
--

DROP TABLE IF EXISTS `tblattendance_341`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_341` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_341`
--

LOCK TABLES `tblattendance_341` WRITE;
/*!40000 ALTER TABLE `tblattendance_341` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_341` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_342`
--

DROP TABLE IF EXISTS `tblattendance_342`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_342` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_342`
--

LOCK TABLES `tblattendance_342` WRITE;
/*!40000 ALTER TABLE `tblattendance_342` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_342` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_343`
--

DROP TABLE IF EXISTS `tblattendance_343`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_343` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_343`
--

LOCK TABLES `tblattendance_343` WRITE;
/*!40000 ALTER TABLE `tblattendance_343` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_343` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_344`
--

DROP TABLE IF EXISTS `tblattendance_344`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_344` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_344`
--

LOCK TABLES `tblattendance_344` WRITE;
/*!40000 ALTER TABLE `tblattendance_344` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_344` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_346`
--

DROP TABLE IF EXISTS `tblattendance_346`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_346` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_346`
--

LOCK TABLES `tblattendance_346` WRITE;
/*!40000 ALTER TABLE `tblattendance_346` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_346` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_349`
--

DROP TABLE IF EXISTS `tblattendance_349`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_349` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_349`
--

LOCK TABLES `tblattendance_349` WRITE;
/*!40000 ALTER TABLE `tblattendance_349` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_349` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_350`
--

DROP TABLE IF EXISTS `tblattendance_350`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_350` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_350`
--

LOCK TABLES `tblattendance_350` WRITE;
/*!40000 ALTER TABLE `tblattendance_350` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_350` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_351`
--

DROP TABLE IF EXISTS `tblattendance_351`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_351` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_351`
--

LOCK TABLES `tblattendance_351` WRITE;
/*!40000 ALTER TABLE `tblattendance_351` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_351` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_352`
--

DROP TABLE IF EXISTS `tblattendance_352`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_352` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_352`
--

LOCK TABLES `tblattendance_352` WRITE;
/*!40000 ALTER TABLE `tblattendance_352` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_352` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_353`
--

DROP TABLE IF EXISTS `tblattendance_353`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_353` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_353`
--

LOCK TABLES `tblattendance_353` WRITE;
/*!40000 ALTER TABLE `tblattendance_353` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_353` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_355`
--

DROP TABLE IF EXISTS `tblattendance_355`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_355` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_355`
--

LOCK TABLES `tblattendance_355` WRITE;
/*!40000 ALTER TABLE `tblattendance_355` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_355` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_356`
--

DROP TABLE IF EXISTS `tblattendance_356`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_356` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_356`
--

LOCK TABLES `tblattendance_356` WRITE;
/*!40000 ALTER TABLE `tblattendance_356` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_356` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_357`
--

DROP TABLE IF EXISTS `tblattendance_357`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_357` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_357`
--

LOCK TABLES `tblattendance_357` WRITE;
/*!40000 ALTER TABLE `tblattendance_357` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_357` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_358`
--

DROP TABLE IF EXISTS `tblattendance_358`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_358` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_358`
--

LOCK TABLES `tblattendance_358` WRITE;
/*!40000 ALTER TABLE `tblattendance_358` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_358` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_359`
--

DROP TABLE IF EXISTS `tblattendance_359`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_359` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_359`
--

LOCK TABLES `tblattendance_359` WRITE;
/*!40000 ALTER TABLE `tblattendance_359` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_359` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_361`
--

DROP TABLE IF EXISTS `tblattendance_361`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_361` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_361`
--

LOCK TABLES `tblattendance_361` WRITE;
/*!40000 ALTER TABLE `tblattendance_361` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_361` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_362`
--

DROP TABLE IF EXISTS `tblattendance_362`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_362` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_362`
--

LOCK TABLES `tblattendance_362` WRITE;
/*!40000 ALTER TABLE `tblattendance_362` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_362` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_363`
--

DROP TABLE IF EXISTS `tblattendance_363`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_363` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_363`
--

LOCK TABLES `tblattendance_363` WRITE;
/*!40000 ALTER TABLE `tblattendance_363` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_363` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_365`
--

DROP TABLE IF EXISTS `tblattendance_365`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_365` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_365`
--

LOCK TABLES `tblattendance_365` WRITE;
/*!40000 ALTER TABLE `tblattendance_365` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_365` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_366`
--

DROP TABLE IF EXISTS `tblattendance_366`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_366` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_366`
--

LOCK TABLES `tblattendance_366` WRITE;
/*!40000 ALTER TABLE `tblattendance_366` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_366` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_368`
--

DROP TABLE IF EXISTS `tblattendance_368`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_368` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_368`
--

LOCK TABLES `tblattendance_368` WRITE;
/*!40000 ALTER TABLE `tblattendance_368` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_368` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_370`
--

DROP TABLE IF EXISTS `tblattendance_370`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_370` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_370`
--

LOCK TABLES `tblattendance_370` WRITE;
/*!40000 ALTER TABLE `tblattendance_370` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_370` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_371`
--

DROP TABLE IF EXISTS `tblattendance_371`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_371` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_371`
--

LOCK TABLES `tblattendance_371` WRITE;
/*!40000 ALTER TABLE `tblattendance_371` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_371` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_372`
--

DROP TABLE IF EXISTS `tblattendance_372`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_372` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_372`
--

LOCK TABLES `tblattendance_372` WRITE;
/*!40000 ALTER TABLE `tblattendance_372` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_372` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_373`
--

DROP TABLE IF EXISTS `tblattendance_373`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_373` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_373`
--

LOCK TABLES `tblattendance_373` WRITE;
/*!40000 ALTER TABLE `tblattendance_373` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_373` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_374`
--

DROP TABLE IF EXISTS `tblattendance_374`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_374` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_374`
--

LOCK TABLES `tblattendance_374` WRITE;
/*!40000 ALTER TABLE `tblattendance_374` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_374` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_376`
--

DROP TABLE IF EXISTS `tblattendance_376`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_376` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_376`
--

LOCK TABLES `tblattendance_376` WRITE;
/*!40000 ALTER TABLE `tblattendance_376` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_376` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_377`
--

DROP TABLE IF EXISTS `tblattendance_377`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_377` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_377`
--

LOCK TABLES `tblattendance_377` WRITE;
/*!40000 ALTER TABLE `tblattendance_377` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_377` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_378`
--

DROP TABLE IF EXISTS `tblattendance_378`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_378` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_378`
--

LOCK TABLES `tblattendance_378` WRITE;
/*!40000 ALTER TABLE `tblattendance_378` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_378` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_380`
--

DROP TABLE IF EXISTS `tblattendance_380`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_380` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_380`
--

LOCK TABLES `tblattendance_380` WRITE;
/*!40000 ALTER TABLE `tblattendance_380` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_380` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_381`
--

DROP TABLE IF EXISTS `tblattendance_381`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_381` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_381`
--

LOCK TABLES `tblattendance_381` WRITE;
/*!40000 ALTER TABLE `tblattendance_381` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_381` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_382`
--

DROP TABLE IF EXISTS `tblattendance_382`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_382` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_382`
--

LOCK TABLES `tblattendance_382` WRITE;
/*!40000 ALTER TABLE `tblattendance_382` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_382` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_383`
--

DROP TABLE IF EXISTS `tblattendance_383`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_383` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_383`
--

LOCK TABLES `tblattendance_383` WRITE;
/*!40000 ALTER TABLE `tblattendance_383` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_383` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_385`
--

DROP TABLE IF EXISTS `tblattendance_385`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_385` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_385`
--

LOCK TABLES `tblattendance_385` WRITE;
/*!40000 ALTER TABLE `tblattendance_385` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_385` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_386`
--

DROP TABLE IF EXISTS `tblattendance_386`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_386` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_386`
--

LOCK TABLES `tblattendance_386` WRITE;
/*!40000 ALTER TABLE `tblattendance_386` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_386` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_387`
--

DROP TABLE IF EXISTS `tblattendance_387`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_387` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_387`
--

LOCK TABLES `tblattendance_387` WRITE;
/*!40000 ALTER TABLE `tblattendance_387` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_387` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_389`
--

DROP TABLE IF EXISTS `tblattendance_389`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_389` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_389`
--

LOCK TABLES `tblattendance_389` WRITE;
/*!40000 ALTER TABLE `tblattendance_389` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_389` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_390`
--

DROP TABLE IF EXISTS `tblattendance_390`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_390` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_390`
--

LOCK TABLES `tblattendance_390` WRITE;
/*!40000 ALTER TABLE `tblattendance_390` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_390` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_391`
--

DROP TABLE IF EXISTS `tblattendance_391`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_391` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_391`
--

LOCK TABLES `tblattendance_391` WRITE;
/*!40000 ALTER TABLE `tblattendance_391` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_391` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_392`
--

DROP TABLE IF EXISTS `tblattendance_392`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_392` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_392`
--

LOCK TABLES `tblattendance_392` WRITE;
/*!40000 ALTER TABLE `tblattendance_392` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_392` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_393`
--

DROP TABLE IF EXISTS `tblattendance_393`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_393` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_393`
--

LOCK TABLES `tblattendance_393` WRITE;
/*!40000 ALTER TABLE `tblattendance_393` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_393` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_394`
--

DROP TABLE IF EXISTS `tblattendance_394`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_394` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_394`
--

LOCK TABLES `tblattendance_394` WRITE;
/*!40000 ALTER TABLE `tblattendance_394` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_394` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_395`
--

DROP TABLE IF EXISTS `tblattendance_395`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_395` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_395`
--

LOCK TABLES `tblattendance_395` WRITE;
/*!40000 ALTER TABLE `tblattendance_395` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_395` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_396`
--

DROP TABLE IF EXISTS `tblattendance_396`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_396` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_396`
--

LOCK TABLES `tblattendance_396` WRITE;
/*!40000 ALTER TABLE `tblattendance_396` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_396` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_400`
--

DROP TABLE IF EXISTS `tblattendance_400`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_400` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_400`
--

LOCK TABLES `tblattendance_400` WRITE;
/*!40000 ALTER TABLE `tblattendance_400` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_400` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_401`
--

DROP TABLE IF EXISTS `tblattendance_401`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_401` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_401`
--

LOCK TABLES `tblattendance_401` WRITE;
/*!40000 ALTER TABLE `tblattendance_401` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_401` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_404`
--

DROP TABLE IF EXISTS `tblattendance_404`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_404` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_404`
--

LOCK TABLES `tblattendance_404` WRITE;
/*!40000 ALTER TABLE `tblattendance_404` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_404` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_405`
--

DROP TABLE IF EXISTS `tblattendance_405`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_405` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_405`
--

LOCK TABLES `tblattendance_405` WRITE;
/*!40000 ALTER TABLE `tblattendance_405` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_405` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_406`
--

DROP TABLE IF EXISTS `tblattendance_406`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_406` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_406`
--

LOCK TABLES `tblattendance_406` WRITE;
/*!40000 ALTER TABLE `tblattendance_406` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_406` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_407`
--

DROP TABLE IF EXISTS `tblattendance_407`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_407` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_407`
--

LOCK TABLES `tblattendance_407` WRITE;
/*!40000 ALTER TABLE `tblattendance_407` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_407` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_408`
--

DROP TABLE IF EXISTS `tblattendance_408`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_408` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_408`
--

LOCK TABLES `tblattendance_408` WRITE;
/*!40000 ALTER TABLE `tblattendance_408` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_408` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_409`
--

DROP TABLE IF EXISTS `tblattendance_409`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_409` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_409`
--

LOCK TABLES `tblattendance_409` WRITE;
/*!40000 ALTER TABLE `tblattendance_409` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_409` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_410`
--

DROP TABLE IF EXISTS `tblattendance_410`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_410` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_410`
--

LOCK TABLES `tblattendance_410` WRITE;
/*!40000 ALTER TABLE `tblattendance_410` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_410` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_411`
--

DROP TABLE IF EXISTS `tblattendance_411`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_411` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_411`
--

LOCK TABLES `tblattendance_411` WRITE;
/*!40000 ALTER TABLE `tblattendance_411` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_411` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_413`
--

DROP TABLE IF EXISTS `tblattendance_413`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_413` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_413`
--

LOCK TABLES `tblattendance_413` WRITE;
/*!40000 ALTER TABLE `tblattendance_413` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_413` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_414`
--

DROP TABLE IF EXISTS `tblattendance_414`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_414` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_414`
--

LOCK TABLES `tblattendance_414` WRITE;
/*!40000 ALTER TABLE `tblattendance_414` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_414` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_415`
--

DROP TABLE IF EXISTS `tblattendance_415`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_415` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_415`
--

LOCK TABLES `tblattendance_415` WRITE;
/*!40000 ALTER TABLE `tblattendance_415` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_415` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_417`
--

DROP TABLE IF EXISTS `tblattendance_417`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_417` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_417`
--

LOCK TABLES `tblattendance_417` WRITE;
/*!40000 ALTER TABLE `tblattendance_417` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_417` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_419`
--

DROP TABLE IF EXISTS `tblattendance_419`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_419` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_419`
--

LOCK TABLES `tblattendance_419` WRITE;
/*!40000 ALTER TABLE `tblattendance_419` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_419` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_421`
--

DROP TABLE IF EXISTS `tblattendance_421`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_421` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_421`
--

LOCK TABLES `tblattendance_421` WRITE;
/*!40000 ALTER TABLE `tblattendance_421` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_421` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_422`
--

DROP TABLE IF EXISTS `tblattendance_422`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_422` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_422`
--

LOCK TABLES `tblattendance_422` WRITE;
/*!40000 ALTER TABLE `tblattendance_422` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_422` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_424`
--

DROP TABLE IF EXISTS `tblattendance_424`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_424` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_424`
--

LOCK TABLES `tblattendance_424` WRITE;
/*!40000 ALTER TABLE `tblattendance_424` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_424` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_428`
--

DROP TABLE IF EXISTS `tblattendance_428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_428` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_428`
--

LOCK TABLES `tblattendance_428` WRITE;
/*!40000 ALTER TABLE `tblattendance_428` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_428` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_429`
--

DROP TABLE IF EXISTS `tblattendance_429`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_429` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_429`
--

LOCK TABLES `tblattendance_429` WRITE;
/*!40000 ALTER TABLE `tblattendance_429` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_429` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_432`
--

DROP TABLE IF EXISTS `tblattendance_432`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_432` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_432`
--

LOCK TABLES `tblattendance_432` WRITE;
/*!40000 ALTER TABLE `tblattendance_432` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_432` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_433`
--

DROP TABLE IF EXISTS `tblattendance_433`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_433` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_433`
--

LOCK TABLES `tblattendance_433` WRITE;
/*!40000 ALTER TABLE `tblattendance_433` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_433` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_436`
--

DROP TABLE IF EXISTS `tblattendance_436`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_436` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_436`
--

LOCK TABLES `tblattendance_436` WRITE;
/*!40000 ALTER TABLE `tblattendance_436` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_436` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattendance_439`
--

DROP TABLE IF EXISTS `tblattendance_439`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_439` (
  `dates` date NOT NULL,
  `p1` tinyint DEFAULT NULL,
  `p2` tinyint DEFAULT NULL,
  `p3` tinyint DEFAULT NULL,
  `p4` tinyint DEFAULT NULL,
  `p5` tinyint DEFAULT NULL,
  `p6` tinyint DEFAULT NULL,
  `ip` tinyint DEFAULT NULL,
  `op` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattendance_439`
--

LOCK TABLES `tblattendance_439` WRITE;
/*!40000 ALTER TABLE `tblattendance_439` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_439` ENABLE KEYS */;
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
INSERT INTO `tblgateconfigmaster` VALUES (1,1513,867106031377,'Trackpworld',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183999061584473,78.54566955566406,0,'2023-11-11 10:43:52.000000'),(2,1006,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:02.000000'),(3,1002,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(4,1005,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(5,1004,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:18.000000'),(6,1003,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000'),(7,1001,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff_23234`
--

LOCK TABLES `tblstaff_23234` WRITE;
/*!40000 ALTER TABLE `tblstaff_23234` DISABLE KEYS */;
INSERT INTO `tblstaff_23234` VALUES (1,'2023-11-03 04:54:58',0,'1513'),(2,'2023-11-07 04:54:58',0,'1513'),(3,'2023-11-07 04:54:58',1,'1513'),(4,'2023-11-07 04:54:58',1,'1513'),(5,'2023-11-07 04:54:58',0,'1513'),(6,'2023-11-07 04:54:58',1,'1513'),(7,'2023-11-07 05:41:11',0,'111'),(8,'2023-11-07 05:41:11',1,'111'),(9,'2023-11-07 05:41:11',1,'111'),(10,'2023-11-07 04:54:58',1,'1513'),(11,'2023-11-07 04:54:58',1,'1513'),(12,'2023-11-07 04:54:58',1,'1513'),(13,'2023-11-07 04:54:58',1,'1513'),(14,'2023-11-07 05:41:11',1,'111'),(15,'2023-11-07 04:54:58',1,'1513'),(16,'2023-11-07 05:41:11',1,'111'),(17,'2023-11-07 05:41:11',1,'111'),(18,'2023-11-07 04:54:58',1,'1513'),(19,'2023-11-08 05:41:11',0,'111'),(20,'2023-11-08 04:54:58',1,'1513'),(21,'2023-11-08 04:54:58',1,'1513'),(22,'2023-11-08 04:54:58',1,'1513'),(23,'2023-11-08 04:54:58',1,'1513'),(24,'2023-11-08 04:54:58',1,'1513'),(25,'2023-11-08 04:54:58',1,'1513'),(26,'2023-11-08 04:54:58',1,'1513'),(27,'2023-11-08 04:54:58',1,'1513'),(28,'2023-11-08 04:54:58',1,'1513'),(29,'2023-11-08 04:54:58',1,'1513'),(30,'2023-11-08 04:54:58',1,'1513'),(31,'2023-11-08 04:54:58',1,'1513'),(32,'2023-11-08 04:54:58',1,'1513'),(33,'2023-11-08 04:54:58',1,'1513'),(34,'2023-11-08 04:54:58',1,'1513'),(35,'2023-11-08 04:54:58',1,'1513'),(36,'2023-11-08 04:54:58',1,'1513'),(37,'2023-11-08 04:54:58',1,'1513'),(38,'2023-11-08 04:54:58',1,'1513'),(39,'2023-11-08 04:54:58',1,'1513'),(40,'2023-11-08 04:54:58',1,'1513'),(41,'2023-11-08 04:54:58',1,'1513'),(42,'2023-11-08 04:54:58',1,'1513'),(43,'2023-11-08 04:54:58',1,'1513'),(44,'2023-11-08 04:54:58',1,'1513'),(45,'2023-11-08 04:54:58',1,'1513'),(46,'2023-11-08 04:54:58',1,'1513'),(47,'2023-11-08 04:54:58',1,'1513'),(48,'2023-11-08 04:54:58',1,'1513'),(49,'2023-11-08 04:54:58',1,'1513'),(50,'2023-11-08 04:54:58',1,'1513'),(51,'2023-11-08 04:54:58',1,'1513'),(52,'2023-11-08 04:54:58',1,'1513'),(53,'2023-11-08 04:54:58',1,'1513'),(54,'2023-11-08 04:54:58',1,'1513'),(55,'2023-11-08 04:54:58',1,'1513'),(56,'2023-11-08 04:54:58',1,'1513'),(57,'2023-11-08 04:54:58',1,'1513'),(58,'2023-11-09 04:54:58',0,'1513'),(59,'2023-11-09 04:54:58',1,'1513'),(60,'2023-11-09 04:54:58',1,'1513'),(61,'2023-11-09 04:54:58',1,'1513'),(62,'2023-11-10 04:54:58',0,'1513'),(63,'2023-11-10 04:54:58',1,'1513'),(64,'2023-11-10 04:54:58',0,'1513'),(65,'2023-11-10 04:54:58',1,'1513'),(66,'2023-11-10 04:54:58',0,'1513'),(67,'2023-11-10 04:54:58',1,'1513'),(68,'2023-11-10 04:54:58',0,'1513'),(69,'2023-11-10 04:54:58',1,'1513'),(70,'2023-11-10 04:54:58',0,'1513'),(71,'2023-11-10 04:54:58',1,'1513'),(72,'2023-11-10 04:54:58',0,'1513'),(73,'2023-11-10 04:54:58',1,'1513'),(74,'2023-11-10 04:54:58',0,'1513'),(75,'2023-11-10 04:54:58',1,'1513'),(76,'2023-11-10 04:54:58',0,'1513'),(77,'2023-11-10 04:54:58',1,'1513'),(78,'2023-11-10 04:54:58',0,'1513'),(79,'2023-11-10 04:54:58',1,'1513'),(80,'2023-11-10 04:54:58',0,'1513'),(81,'2023-11-10 04:54:58',1,'1513'),(82,'2023-11-10 04:54:58',0,'1513'),(83,'2023-11-10 04:54:58',1,'1513'),(84,'2023-11-10 04:54:58',0,'1513'),(85,'2023-11-10 04:54:58',1,'1513'),(86,'2023-11-10 04:54:58',0,'1513'),(87,'2023-11-10 04:54:58',1,'1513'),(88,'2023-11-10 04:54:58',0,'1513'),(89,'2023-11-10 04:54:58',1,'1513'),(90,'2023-11-10 04:54:58',0,'1513'),(91,'2023-11-10 04:54:58',1,'1513'),(92,'2023-11-10 04:54:58',0,'1513'),(93,'2023-11-10 04:54:58',1,'1513'),(94,'2023-11-11 04:54:58',0,'1513');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudent_1`
--

LOCK TABLES `tblstudent_1` WRITE;
/*!40000 ALTER TABLE `tblstudent_1` DISABLE KEYS */;
INSERT INTO `tblstudent_1` VALUES (1,'2023-11-07 04:54:58',0,'1513'),(2,'2023-11-07 04:54:58',1,'1513'),(3,'2023-11-07 04:54:58',1,'1513'),(4,'2023-11-07 04:54:58',1,'1513'),(5,'2023-11-07 04:54:58',1,'1513'),(6,'2023-11-07 04:54:58',1,'1513'),(7,'2023-11-07 05:41:11',1,'111'),(8,'2023-11-07 04:54:58',0,'1513'),(9,'2023-11-07 04:54:58',0,'1513'),(10,'2023-11-07 04:54:58',0,'1513'),(11,'2023-11-07 04:54:58',0,'1513'),(12,'2023-11-07 04:54:58',0,'1513'),(13,'2023-11-07 04:54:58',0,'1513'),(14,'2023-11-07 04:54:58',0,'1513'),(15,'2023-11-07 04:54:58',0,'1513'),(16,'2023-11-07 04:54:58',0,'1513'),(17,'2023-11-07 04:54:58',0,'1513'),(18,'2023-11-07 04:54:58',0,'1513'),(19,'2023-11-07 04:54:58',0,'1513'),(20,'2023-11-07 04:54:58',0,'1513'),(21,'2023-11-07 04:54:58',0,'1513'),(22,'2023-11-07 04:54:58',0,'1513'),(23,'2023-11-07 04:54:58',0,'1513'),(24,'2023-11-07 04:54:58',0,'1513'),(25,'2023-11-07 04:54:58',0,'1513'),(26,'2023-11-07 04:54:58',0,'1513'),(27,'2023-11-08 04:54:58',0,'1513'),(28,'2023-11-08 04:54:58',1,'1513'),(29,'2023-11-08 04:54:58',1,'1513'),(30,'2023-11-08 04:54:58',1,'1513'),(31,'2023-11-08 04:54:58',1,'1513'),(32,'2023-11-08 04:54:58',1,'1513'),(33,'2023-11-08 04:54:58',1,'1513'),(34,'2023-11-08 04:54:58',1,'1513'),(35,'2023-11-08 04:54:58',1,'1513'),(36,'2023-11-08 04:54:58',1,'1513'),(37,'2023-11-08 04:54:58',1,'1513'),(38,'2023-11-08 04:54:58',1,'1513'),(39,'2023-11-08 04:54:58',1,'1513'),(40,'2023-11-08 04:54:58',1,'1513'),(41,'2023-11-08 04:54:58',1,'1513'),(42,'2023-11-08 04:54:58',1,'1513'),(43,'2023-11-08 04:54:58',1,'1513'),(44,'2023-11-08 04:54:58',1,'1513'),(45,'2023-11-08 04:54:58',1,'1513'),(46,'2023-11-08 04:54:58',1,'1513'),(47,'2023-11-08 04:54:58',1,'1513'),(48,'2023-11-08 04:54:58',1,'1513'),(49,'2023-11-08 04:54:58',1,'1513'),(50,'2023-11-08 04:54:58',1,'1513'),(51,'2023-11-08 04:54:58',1,'1513'),(52,'2023-11-08 04:54:58',1,'1513'),(53,'2023-11-08 04:54:58',1,'1513'),(54,'2023-11-08 04:54:58',1,'1513'),(55,'2023-11-08 04:54:58',1,'1513'),(56,'2023-11-08 04:54:58',1,'1513'),(57,'2023-11-08 04:54:58',1,'1513'),(58,'2023-11-08 04:54:58',1,'1513'),(59,'2023-11-08 04:54:58',1,'1513'),(60,'2023-11-08 04:54:58',1,'1513'),(61,'2023-11-08 04:54:58',1,'1513'),(62,'2023-11-08 04:54:58',1,'1513'),(63,'2023-11-08 04:54:58',1,'1513'),(64,'2023-11-08 04:54:58',1,'1513'),(65,'2023-11-08 04:54:58',1,'1513'),(66,'2023-11-08 04:54:58',1,'1513'),(67,'2023-11-08 04:54:58',1,'1513'),(68,'2023-11-09 04:54:58',0,'1513'),(69,'2023-11-09 04:54:58',1,'1513'),(70,'2023-11-09 04:54:58',0,'1513'),(71,'2023-11-09 04:54:58',1,'1513'),(72,'2023-11-10 04:54:58',0,'1513'),(73,'2023-11-10 04:54:58',1,'1513'),(74,'2023-11-10 04:54:58',1,'1513'),(75,'2023-11-10 04:54:58',1,'1513'),(76,'2023-11-10 04:54:58',1,'1513'),(77,'2023-11-10 04:54:58',1,'1513'),(78,'2023-11-10 04:54:58',1,'1513'),(79,'2023-11-10 04:54:58',1,'1513'),(80,'2023-11-10 04:54:58',1,'1513'),(81,'2023-11-10 04:54:58',1,'1513'),(82,'2023-11-10 04:54:58',1,'1513'),(83,'2023-11-10 04:54:58',1,'1513'),(84,'2023-11-10 04:54:58',1,'1513'),(85,'2023-11-10 04:54:58',1,'1513'),(86,'2023-11-10 04:54:58',1,'1513'),(87,'2023-11-10 04:54:58',1,'1513'),(88,'2023-11-10 04:54:58',1,'1513'),(89,'2023-11-10 04:54:58',1,'1513'),(90,'2023-11-10 04:54:58',1,'1513'),(91,'2023-11-10 04:54:58',1,'1513'),(92,'2023-11-10 04:54:58',1,'1513'),(93,'2023-11-10 04:54:58',1,'1513'),(94,'2023-11-10 04:54:58',1,'1513'),(95,'2023-11-10 04:54:58',1,'1513'),(96,'2023-11-10 09:54:58',1,'1513'),(97,'2023-11-10 09:54:58',0,'1513'),(98,'2023-11-10 09:54:58',1,'1513'),(99,'2023-11-10 09:54:58',0,'1513'),(100,'2023-11-10 09:54:58',1,'1513'),(101,'2023-11-10 09:54:58',0,'1513'),(102,'2023-11-10 09:54:58',1,'1513'),(103,'2023-11-10 09:54:58',0,'1513'),(104,'2023-11-11 04:54:58',0,'1513');
/*!40000 ALTER TABLE `tblstudent_1` ENABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure1`(id_string varchar(5000),start_time varchar(50), end_time varchar(50),opt int)
BEGIN
	DECLARE std_id VARCHAR(45);
    DECLARE tbl_name VARCHAR(100);
    DECLARE tbl_name1 VARCHAR(100);
    DECLARE id_list VARCHAR(5000);
    DECLARE comma_position INT;
    DECLARE string_length INT;
    DECLARE id_found INT DEFAULT 0;
    DECLARE current_id VARCHAR(500);
    DECLARE res TEXT;
    
    SET res = '';
    SET comma_position = 1;
	SET id_list = id_string;
	id_loop: WHILE comma_position > 0 AND LENGTH(id_list) > 0 DO
				SET comma_position = LOCATE(',', id_list);
				IF comma_position > 0 THEN
					SET current_id = CAST(SUBSTRING(id_list, 1, comma_position - 1) AS CHAR);
					SET id_list = SUBSTRING(id_list, comma_position + 1);
				ELSE
					SET current_id = CAST(TRIM(id_list) AS CHAR);
				END IF;
                IF EXISTS(SELECT * FROM tbl_studentdetails WHERE tag_id_hex = current_id) THEN
					SELECT student_id FROM tbl_studentdetails WHERE tag_id_hex = current_id INTO std_id;
                    SET tbl_name = CONCAT('tblstudent_',std_id);
                    SET tbl_name1 = CONCAT('tblattendance_',std_id);
                    
					SET @sql = CONCAT('SELECT device_id FROM tbl_deviceids WHERE student_id = "',std_id,'" INTO @device_id');
					PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
                    
                    if @device_id is not null then
						SET @sql = CONCAT('SELECT COUNT(*) FROM ',tbl_name,' WHERE ts >= "',CONCAT(current_date(),' ',start_time),'" AND ts<= "',CONCAT(current_date(),' ',end_time),'" INTO @count');
						PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
					   
						IF @count THEN
							set @ip = null;
                            set @op = @ip;
							SET @sql = CONCAT('SELECT ip,op FROM ',tbl_name1,' WHERE dates = "',current_date(),'" INTO @ip,@op');                            
							PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
                            
                            SET @sql = CONCAT('SELECT COUNT(*) FROM ',tbl_name1,' WHERE dates = "',current_date(),'" INTO @att_count');
							PREPARE stmt FROM @sql;EXECUTE stmt;DEALLOCATE PREPARE stmt;
                            
							IF opt THEN
								IF @att_count THEN									
									IF @ip IS NULL THEN						
										SET res = CONCAT(res,std_id,',');                                    
										SET @sql = CONCAT('UPDATE ',tbl_name1,' SET ip = 1 WHERE dates = "',current_date(),'"');
                                        PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
																		
									END IF;		
								ELSE
									SET res = CONCAT(res,std_id,',');
									SET @sql = CONCAT('INSERT INTO ',tbl_name1,' (dates,ip) VALUES("',current_date(),'",1)');
									PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
									
								END IF;
							ELSE
								IF @att_count THEN									
									IF @op IS NULL THEN						
										SET res = CONCAT(res,std_id,',');                                    
										SET @sql = CONCAT('UPDATE ',tbl_name1,' SET op = 1 WHERE dates = "',current_date(),'"');
                                        PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
																		
									END IF;		
								ELSE
									SET res = CONCAT(res,std_id,',');
									SET @sql = CONCAT('INSERT INTO ',tbl_name1,' (dates,op) VALUES("',current_date(),'",1)');
									PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
									
								END IF;
							END IF;                        
						END IF;
					END IF;
                END IF;
			END WHILE id_loop;
    SELECT res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
    DECLARE current_id VARCHAR(500);
    
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
								SET current_id = CAST(SUBSTRING(id_list, 1, comma_position - 1) AS CHAR);
								SET id_list = SUBSTRING(id_list, comma_position + 1);
							ELSE
								SET current_id = CAST(TRIM(id_list) AS CHAR);
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
    DECLARE current_id VARCHAR(500);
    
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
								SET current_id = CAST(SUBSTRING(id_list, 1, comma_position - 1) AS CHAR);
								SET id_list = SUBSTRING(id_list, comma_position + 1);
							ELSE
								SET current_id = CAST(TRIM(id_list) AS CHAR);
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

-- Dump completed on 2023-11-23 14:45:34
