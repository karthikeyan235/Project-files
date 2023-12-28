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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_profile`
--

LOCK TABLES `accounts_profile` WRITE;
/*!40000 ALTER TABLE `accounts_profile` DISABLE KEYS */;
INSERT INTO `accounts_profile` VALUES (1,'7090312972','admin','1',1),(2,'7777777777','parent','1',2),(3,'2222222222','teacher','123',3),(4,'1111111111','parent','2',4),(5,'6436363464','others','23234',5),(6,'9864096222','parent','255,314',6),(7,'9819286215','parent','276',7),(8,'9864013262','parent','287',8),(9,'6003346321','parent','321,359',9),(10,'7099212717','parent','337,272',10),(11,'9706284892','parent','357',11),(12,'9435046859','parent','361',12),(13,'7002553540','parent','393',13),(14,'9954041810','parent','401',14),(15,'9394273393','parent','410,387',15),(16,'8723847267','parent','413',16),(17,'9954241085','parent','415,372',17),(18,'9435540567','parent','417',18),(19,'9101440773','parent','262',19),(20,'7002208171','parent','264,377',20),(21,'9707333500','parent','267',21),(22,'9854055243','parent','288',22),(23,'8617031147','parent','298',23),(24,'863851909','parent','300',24),(25,'7002999566','parent','317',25),(26,'7002894263','parent','324',26),(27,'9101008833','parent','344',27),(28,'7002761237','parent','371,382',28),(29,'9706061910','parent','376',29),(30,'9352728062','parent','233',30),(31,'8638610534','parent','278',31),(32,'7812726001','parent','235',32),(33,'9401277777','parent','346',33),(34,'9101447846','parent','356',34),(35,'9085033000','parent','366',35),(36,'7086462083','parent','368',36),(37,'9508026001','parent','389',37),(38,'9435088070','parent','411',38),(39,'9864071855','parent','251',39),(40,'9401391014','parent','290',40),(41,'7014249966','parent','295',41),(42,'7399074888','parent','305',42),(43,'6900627366','parent','309',43),(44,'9540877778','parent','349',44),(45,'6350300925','parent','390',45),(46,'8721832360','parent','214',46),(47,'9864024001','parent','218',47),(48,'9508262346','parent','222',48),(49,'7002925500','parent','225',49),(50,'9435103508','parent','242',50),(51,'8876062409','parent','281',51),(52,'8638786730','parent','283',52),(53,'9401221000','parent','216',53),(54,'9365759092','parent','240',54),(55,'9435257799','parent','265',55),(56,'9864030591','parent','270',56),(57,'9435140904','parent','332,408',57),(58,'9508522202','parent','358',58),(59,'9085032826','parent','363',59),(60,'9435330362','parent','365',60),(61,'9365192851','parent','370',61),(62,'9435552400','parent','424',62),(63,'8905434651','parent','250',63),(64,'9864029291','parent','252',64),(65,'7086058631','parent','253',65),(66,'9706009341','parent','254',66),(67,'9435559668','parent','256',67),(68,'9864140349','parent','258',68),(69,'9435140380','parent','386',69),(70,'9864187044','parent','213',70),(71,'9864017870','parent','217',71),(72,'9864503750','parent','234',72),(73,'7099779476','parent','244',73),(74,'9149342081','parent','245',74),(75,'9039012318','parent','221',75),(76,'8486015579','parent','246',76),(77,'789606200','parent','282',77),(78,'7002704700','parent','296,422',78),(79,'8638449174','parent','404,352',79),(80,'9859305283','parent','407',80),(81,'6001215550','parent','414',81),(82,'9365373558','parent','439',82),(83,'8011929738','parent','302',83),(84,'8638574528','parent','303',84),(85,'9864305628','parent','316',85),(86,'8638022077','parent','318',86),(87,'7002419865','parent','353',87),(88,'9181777777','parent','373',88),(89,'8876557892','parent','228',89),(90,'8473004361','parent','247',90),(91,'7086044164','parent','433',91),(92,'9864529295','parent','436',92),(93,'9854089621','parent','429',93),(94,'9957568610','parent','430',94),(95,'9864279991','parent','341',95),(96,'8486432191','parent','381',96),(97,'9508667096','parent','279',97),(98,'7733887567','parent','362',98),(99,'9435838705','parent','391',99),(100,'8255099991','parent','392',100),(101,'9864021644','parent','394',101),(102,'9435347585','parent','409',102),(103,'7399011101','parent','249,343',103),(104,'8822100013','parent','268',104),(105,'7896025540','parent','275',105),(106,'9717936913','parent','313',106),(107,'8638286989','parent','320',107),(108,'9101583771','parent','350',108),(109,'9864787677','parent','351',109),(110,'8486054812','parent','219',110),(111,'9957539233','parent','230',111),(112,'9435554030','parent','232',112),(113,'9435550167','parent','239',113),(114,'7002554002','parent','243',114),(115,'7896621580','parent','419',115),(116,'9706058928','parent','423',116),(117,'9401594880','parent','432',117),(118,'9864723314','parent','259',118),(119,'9706171238','parent','297',119),(120,'7973556589','parent','299,238',120),(121,'8135049995','parent','334',121),(122,'9864505656','parent','223',122),(123,'7002053856','parent','241',123),(124,'9678320964','parent','355',124),(125,'7002455578','parent','421',125),(126,'7002384261','parent','342',126),(127,'8472979486','parent','236',127),(128,'7002036903','parent','293',128),(129,'8761918143','parent','327',129),(130,'8638175902','parent','395',130),(131,'8011739264','parent','311',131),(132,'9957949336','parent','329',132),(133,'9101309887','parent','335',133),(134,'9954687343','parent','383',134),(135,'8723890515','parent','237',135),(136,'9101060745','parent','280',136),(137,'8638489237','parent','227',137),(138,'9864203666','parent','260',138),(139,'9678335633','parent','380,263',139),(140,'8510993222','parent','385',140),(141,'7002928411','parent','400',141),(142,'7002627082','parent','405',142),(143,'8486182211','parent','428',143),(144,'8011404032','parent','269',144),(145,'9101122313','parent','301',145),(146,'7048987364','parent','374,248',146),(147,'9401251004','parent','378',147),(148,'6002919773','parent','231',148),(149,'7002148688','parent','396',149),(150,'7002905576','parent','406',150),(151,'8471847244','parent','416',151),(152,'8638843929','parent','420,291',152),(153,'9957491949','parent','257',153),(154,'9101767401','parent','289',154),(155,'9678558019','parent','306',155),(156,'9101467182','parent','224',156),(157,'9954104538','parent','226',157);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add gate config master',8,'add_gateconfigmaster'),(30,'Can change gate config master',8,'change_gateconfigmaster'),(31,'Can delete gate config master',8,'delete_gateconfigmaster'),(32,'Can view gate config master',8,'view_gateconfigmaster'),(33,'Can add raw data',9,'add_rawdata'),(34,'Can change raw data',9,'change_rawdata'),(35,'Can delete raw data',9,'delete_rawdata'),(36,'Can view raw data',9,'view_rawdata'),(37,'Can add route',10,'add_route'),(38,'Can change route',10,'change_route'),(39,'Can delete route',10,'delete_route'),(40,'Can view route',10,'view_route'),(41,'Can add route stop',11,'add_routestop'),(42,'Can change route stop',11,'change_routestop'),(43,'Can delete route stop',11,'delete_routestop'),(44,'Can view route stop',11,'view_routestop'),(45,'Can add class section',12,'add_classsection'),(46,'Can change class section',12,'change_classsection'),(47,'Can delete class section',12,'delete_classsection'),(48,'Can view class section',12,'view_classsection'),(49,'Can add holiday',13,'add_holiday'),(50,'Can change holiday',13,'change_holiday'),(51,'Can delete holiday',13,'delete_holiday'),(52,'Can view holiday',13,'view_holiday'),(53,'Can add others details',14,'add_othersdetails'),(54,'Can change others details',14,'change_othersdetails'),(55,'Can delete others details',14,'delete_othersdetails'),(56,'Can view others details',14,'view_othersdetails'),(57,'Can add period table',15,'add_periodtable'),(58,'Can change period table',15,'change_periodtable'),(59,'Can delete period table',15,'delete_periodtable'),(60,'Can view period table',15,'view_periodtable'),(61,'Can add student details',16,'add_studentdetails'),(62,'Can change student details',16,'change_studentdetails'),(63,'Can delete student details',16,'delete_studentdetails'),(64,'Can view student details',16,'view_studentdetails'),(65,'Can add teacher details',17,'add_teacherdetails'),(66,'Can change teacher details',17,'change_teacherdetails'),(67,'Can delete teacher details',17,'delete_teacherdetails'),(68,'Can view teacher details',17,'view_teacherdetails'),(69,'Can add timetable',18,'add_timetable'),(70,'Can change timetable',18,'change_timetable'),(71,'Can delete timetable',18,'delete_timetable'),(72,'Can view timetable',18,'view_timetable'),(73,'Can add site info',19,'add_siteinfo'),(74,'Can change site info',19,'change_siteinfo'),(75,'Can delete site info',19,'delete_siteinfo'),(76,'Can view site info',19,'view_siteinfo'),(77,'Can add mobile device ids',20,'add_mobiledeviceids'),(78,'Can change mobile device ids',20,'change_mobiledeviceids'),(79,'Can delete mobile device ids',20,'delete_mobiledeviceids'),(80,'Can view mobile device ids',20,'view_mobiledeviceids');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$61ZwXLTl2zbUT5YdeeC4XX$o1S8/tRd/Pf9OIOUuxSL+KJx9vpFLJcDNXXSfrzOLCU=','2023-11-07 05:38:24.302731',1,'sachin','sachin','n','sachinn11121998@gmail.com',1,1,'2023-10-27 07:35:17.000000'),(2,'pbkdf2_sha256$600000$yR3hYvKdxI4hXv6HN3Pcgs$kXCuK3Hozj4v0Ue4KdyYewDJQATIDY5xg3woIDvDrRc=','2023-10-27 10:05:25.572117',0,'7777777777','ROBERRT','','sachin@gmail.com',0,1,'2023-10-27 10:04:44.013832'),(3,'pbkdf2_sha256$600000$KU4A2VAdVaFU8bnUtsHQ4H$YLaM4Mm61zFbbNNuXrrS35uI1SxV7/TCAJqoAx7T0Ig=','2023-11-07 05:39:06.799269',0,'2222222222','ANIL','','sachin@gmail.com',0,1,'2023-10-27 10:30:07.711770'),(4,'pbkdf2_sha256$600000$vPFC3KCmO1eudGtVmSvd8b$zGB6dc/r4zefe9begVy4HomAWUSMe4tWjuy0Ma/3hZQ=','2023-11-04 05:09:11.179931',0,'1111111111','RAVI SHANKARA','','sachin@gmail.com',0,1,'2023-10-27 11:43:27.905181'),(5,'pbkdf2_sha256$600000$yloh5JqU8DN42jjrcPn8e0$jy0FQDk0L7KDU/PUVUwYLfuguAsAFJkr3Mmrqf9f56c=',NULL,0,'6436363464','ROBERRT','','sachin@gmail.com',0,1,'2023-11-03 09:08:48.926085'),(6,'pbkdf2_sha256$600000$V48QrlKg3NtKjuBOyxQ6vj$xuOK0P6RUk+FmAIfzRqfB+n+1o6iUjDG54JqsyQ3yd0=',NULL,0,'9864096222','NIRVAN SIOTIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:06.174782'),(7,'pbkdf2_sha256$600000$RBuiZqFAKotOLdoiAZugMF$zlbzGPx1HHVSCecGT9l3KxkJ+huasAPu9j2oPedfBhM=',NULL,0,'9819286215','ZOHA SHOEB SHAIKH','','tracko@gmail.com',0,1,'2023-11-04 10:15:06.488020'),(8,'pbkdf2_sha256$600000$gC50CH4DMvNaw0x7kCitts$C4AJ6RoiGlN53GFhY7zkSpB5J2QwWEkOuoF30F4/Cp0=',NULL,0,'9864013262','AASHIRYA DUTTA','','tracko@gmail.com',0,1,'2023-11-04 10:15:06.796507'),(9,'pbkdf2_sha256$600000$GdflwcZDT674mcVEFOukkp$j+vr+VEjUwCrgqxNT3FmzQk2Qd34rsK1KaxDxiKGE14=',NULL,0,'6003346321','BHAVYANSH AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:07.108883'),(10,'pbkdf2_sha256$600000$ypTxG69h7V7UB8rTkD8Qa7$NbPr7qLODwJH9xwdJDvh/Yz9hJK196kA40jIbLtzNeU=',NULL,0,'7099212717','SANVI BAISHYA','','tracko@gmail.com',0,1,'2023-11-04 10:15:07.407182'),(11,'pbkdf2_sha256$600000$5lpBNmMw7GUyi49lCMgCbf$ovNgy9ALndW+ZrHNJ4tY7gkHgzKMIJnNHlOxC1gfTac=',NULL,0,'9706284892','GATIK BOTHRA','','tracko@gmail.com',0,1,'2023-11-04 10:15:07.714365'),(12,'pbkdf2_sha256$600000$X9mqpKEyKMc2FNQdDjfufX$pyhgQnQPJ0Itr0CjVXZ40yTt3sENoie5fxOG/1CmG/0=',NULL,0,'9435046859','JAISHNAVEE GOUTAM','','tracko@gmail.com',0,1,'2023-11-04 10:15:08.014932'),(13,'pbkdf2_sha256$600000$ylbd7K9KoyEn3u92y42Vft$3tyAyynybao5msPn1GFlk5BkiEnYw1YoaUKUqTdtfOE=',NULL,0,'7002553540','ANOM REEHA MAZID','','tracko@gmail.com',0,1,'2023-11-04 10:15:08.322870'),(14,'pbkdf2_sha256$600000$o5aCpRljUaLNfWsTqML0uq$zSZrPywlW01ovJ3dSTWCGUZSWg49ErpHOYtaDxh4sxI=',NULL,0,'9954041810','NIVAAN SARAWGI','','tracko@gmail.com',0,1,'2023-11-04 10:15:08.625731'),(15,'pbkdf2_sha256$600000$gu5CiluMg93Pw4aOmeyaxp$h+9IKURNQYduKcMFrSBDONTWHHLAUluutViXxuSaV3Q=',NULL,0,'9394273393','ABHILAKH BAISHYA','','tracko@gmail.com',0,1,'2023-11-04 10:15:08.929548'),(16,'pbkdf2_sha256$600000$HL164NwMmn2qKTTRrlZrh9$7ZN8MCCo7UEIpRwFlcZrSpTyd8YtXfMgoK8G1XlcD+o=',NULL,0,'8723847267','DIVYAM KUMAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:09.234387'),(17,'pbkdf2_sha256$600000$7ii9YghJURp0L9bo32RYSw$Yl/UBhqMypQiBK+7d4oClAzlUFozFRy1uVQWmvMTIO0=',NULL,0,'9954241085','KUNAL KALITA','','tracko@gmail.com',0,1,'2023-11-04 10:15:09.532674'),(18,'pbkdf2_sha256$600000$PG51j4PFs0evt0d970IzXV$PdbpEoW98dGm/S6b1IrcKeXmY0upK7/OczQZ3QchlyU=',NULL,0,'9435540567','NISHANT DAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:09.839979'),(19,'pbkdf2_sha256$600000$PHPajQJbxIaSFHC1bJ1sGd$6syTJrz+Xpxyig2kfGhK8M2uiGGDOL0T+RTXCzqSXuA=',NULL,0,'9101440773','ADVIK SHARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:10.143247'),(20,'pbkdf2_sha256$600000$JmBYiU2KmjnU2nlEyOU3f9$dBVzZRa0s0msRykvp1mq62Tv9Dx4MCL5KvgY7l8gKW8=',NULL,0,'7002208171','HARSHIKA KASHYAP BHARALI','','tracko@gmail.com',0,1,'2023-11-04 10:15:10.449614'),(21,'pbkdf2_sha256$600000$FODHgFVuAr4jxRx6MZT4Jy$0GNJB25Wevjbh3k9/iV37K2Xhz1LlYBak7hrXlBvR6M=',NULL,0,'9707333500','NAMRA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:10.751251'),(22,'pbkdf2_sha256$600000$kI0WtfADMwafCQEuaqdatI$97xlvtdNx2alTikjD/8iA5sfHmceH0PHM+1YX2QnsSk=',NULL,0,'9854055243','ANISHA BARMAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:11.067458'),(23,'pbkdf2_sha256$600000$JubVTsR5uRVGL7MvPW7F0B$iFW7we8XGP2RwKlbXQBhxi7r1nGFNSoWT4j9AGGmcaE=',NULL,0,'8617031147','SRESHTHA CHAKRABARTI','','tracko@gmail.com',0,1,'2023-11-04 10:15:11.371901'),(24,'pbkdf2_sha256$600000$5q75Aq2lHaRJImj7GmjNuQ$rvlo+5kkwbq5iwuzaqrEmWjagZPWSLqv0XbDWlMD5TQ=',NULL,0,'863851909','VARUN KASHYAP','','tracko@gmail.com',0,1,'2023-11-04 10:15:11.674450'),(25,'pbkdf2_sha256$600000$pLQo5530sFC2XQAxHPXtkY$cAiMobADjvDLl3oguaFQew/jEYepRtCSOtKCSEFmEFg=',NULL,0,'7002999566','THAISA DEVI','','tracko@gmail.com',0,1,'2023-11-04 10:15:11.980535'),(26,'pbkdf2_sha256$600000$zMM0lbNckMdy80hw3hmsdF$3W6rt58KYwlS+s3rxFUCylDfyKz2U4pj5srmJ+v9u10=',NULL,0,'7002894263','SYEDA SAIMA SIREEN','','tracko@gmail.com',0,1,'2023-11-04 10:15:12.278650'),(27,'pbkdf2_sha256$600000$k4GTpxSLCs2WV6WB7noZro$ohYlsrBWSf9/IFTBS5pqhMbFREGRGQFGDm+J1f5LXVA=',NULL,0,'9101008833','SARAAH ROB','','tracko@gmail.com',0,1,'2023-11-04 10:15:12.591939'),(28,'pbkdf2_sha256$600000$ZsldqukdMoxla7eBJqeVGA$FR15RKmFfT43UiKJ9a/tyHf93CO25VZauifiK65/MSI=',NULL,0,'7002761237','NAITIK KUMAR MITTAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:12.896704'),(29,'pbkdf2_sha256$600000$VhgPuP9EUlj0LOoUGpWbhJ$bxpi8fgtR61AOMH61dUCOjLl7axc2EEINMsnz7TrUgo=',NULL,0,'9706061910','AARIYAN DAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:13.220359'),(30,'pbkdf2_sha256$600000$WT0sjug2Zvsr2V9zKD51cv$OdCOp80gOM4BDPxDcbyHp+EQNS2u84II5COLQBinrdA=',NULL,0,'9352728062','PIYUSH TAILOR','','tracko@gmail.com',0,1,'2023-11-04 10:15:13.563959'),(31,'pbkdf2_sha256$600000$0RZJPqF0mDbNR2NIb94gns$uxEwuNlg52IpkMoEbjoo3A+Ep0LFM42xVBZ3S5Wzahg=',NULL,0,'8638610534','ATIF ASLAM','','tracko@gmail.com',0,1,'2023-11-04 10:15:13.870283'),(32,'pbkdf2_sha256$600000$OrfxJrrbbJj4GgQvzRk3r3$HbRISOx8BNQQ10s2l0e21rXlCkexvKYqPiCjVyqfidc=',NULL,0,'7812726001','TAHMID BAKHTIAR DEWAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:14.183663'),(33,'pbkdf2_sha256$600000$g5QAOcod3O5SY48dUEd6qV$5tqDY7HCLaBLcZGVXxsf+s6cvxjSOBahT/y/sl01IGI=',NULL,0,'9401277777','PRATYAKSH AGARWALA','','tracko@gmail.com',0,1,'2023-11-04 10:15:14.498183'),(34,'pbkdf2_sha256$600000$DcnVFLgNED4hXNTGENzKif$nacKd9YXKJCnkbs2TUpVfEYcMM7Y0XYX7BgxyYwxD2A=',NULL,0,'9101447846','SMRITI JOSHI','','tracko@gmail.com',0,1,'2023-11-04 10:15:14.798043'),(35,'pbkdf2_sha256$600000$e5ZcewsbGAxDf2eP8DXzNd$l028kY+GwhyhQrO8qeHfIIyw5V+lX71QxOKbOMuj348=',NULL,0,'9085033000','LUVYANSH MALOO','','tracko@gmail.com',0,1,'2023-11-04 10:15:15.109901'),(36,'pbkdf2_sha256$600000$xKb8WoU3ZLz0iJyNso9tfX$vw/nJGuk/K2Rz5Utyqr+X3rwoA6GdAPpXMGDe8RJMvA=',NULL,0,'7086462083','SAMARTH DHIRASARIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:15.405172'),(37,'pbkdf2_sha256$600000$P8B60aPgBZorFvzb7lKDL1$0bvLS667fPZYdcFUAP4/1GqO9T7BD3v5GU+YEdnZJ7c=',NULL,0,'9508026001','SAARANSH GUPTA','','tracko@gmail.com',0,1,'2023-11-04 10:15:15.716460'),(38,'pbkdf2_sha256$600000$sDoCXdXHha9DBL3MVjhfP9$ehi8ediNel74QcPxlHx7JLg52zfzb5N8h74JvqW6Pvc=',NULL,0,'9435088070','ADITI NAWLAKHA','','tracko@gmail.com',0,1,'2023-11-04 10:15:16.023002'),(39,'pbkdf2_sha256$600000$lFN6GqtfFYZONhjUJ7muEB$atQp0iLxVoTd5BaKJf6naFwbgrnW+XtmEIvgW3/D+Xo=',NULL,0,'9864071855','YUVEER JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:16.339336'),(40,'pbkdf2_sha256$600000$UbhlAAYiHNqJsf6cCWtrmS$RpGtT+EuPhn8PfndAD9dFSjtVKWL1o8K2MeVD88i0N4=',NULL,0,'9401391014','KARISHMITA MITRA','','tracko@gmail.com',0,1,'2023-11-04 10:15:16.648865'),(41,'pbkdf2_sha256$600000$aX9HRCdnyCCJrkq3yi9yAP$SwSgR5kDWuRna+TnV1z5ZwHbG8pj8lNMI3H/CTzNsX8=',NULL,0,'7014249966','SHOURYA BAID','','tracko@gmail.com',0,1,'2023-11-04 10:15:16.957237'),(42,'pbkdf2_sha256$600000$QvDTQquTj2YsMBTh5mK8vJ$DrJSbYtWHJkWsM2UqOuzgHczI8Mb8IZJlSBIOka1sys=',NULL,0,'7399074888','MYRA KUCHERIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:17.266219'),(43,'pbkdf2_sha256$600000$QTyFhHlNnvUUL8Em2fCtyd$m0UBXnBpd8kvGeCWAhnn0dKNSY8MAVEXKX7MDnv+uuo=',NULL,0,'6900627366','VIVAAN GUPTA','','tracko@gmail.com',0,1,'2023-11-04 10:15:17.575079'),(44,'pbkdf2_sha256$600000$IKm33FFpBQsRh54hxkYVy2$SML+7Ri3611o7K6pVo5dKXf3celdr6pdWmq2vqSqUkw=',NULL,0,'9540877778','PAARTH GOYAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:17.881030'),(45,'pbkdf2_sha256$600000$eH50mFZUsEoQhVNNIN8NEk$sHbyiYk6hk/L5BgkcM5P4MhnY7duVKMKRvH/pWfC/74=',NULL,0,'6350300925','SAKSHI PARIK','','tracko@gmail.com',0,1,'2023-11-04 10:15:18.189643'),(46,'pbkdf2_sha256$600000$j73TmIILqMLUEBIXxIQaCK$09wKq0mrYTU9E82kR1bSSRR8+IV+bOmfbeBdwJCTKAo=',NULL,0,'8721832360','PRISHA AGARWALLA','','tracko@gmail.com',0,1,'2023-11-04 10:15:18.492181'),(47,'pbkdf2_sha256$600000$PJNRMZ1JdrXXM3yxPv1htW$CRACZ7gkUnO3kW2X2dc4C29+IwzzAfDoiMDZuTrNerQ=',NULL,0,'9864024001','RUTVI AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:18.801060'),(48,'pbkdf2_sha256$600000$aZecXxR4eBTgPHKVWQDYnp$6b7LR+GWJGaT2Jaqv/uSuZ/sa/sGq2g+rvcX+FhOdKU=',NULL,0,'9508262346','VAANI HAWELIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:19.111010'),(49,'pbkdf2_sha256$600000$5BQcdLpUX74fYYzSPXNnnb$qcrxbeaS3tyvcizcyoGQyq2yrHEyZXD2QWco6nVf/0I=',NULL,0,'7002925500','DHYARA BAJAJ','','tracko@gmail.com',0,1,'2023-11-04 10:15:19.478941'),(50,'pbkdf2_sha256$600000$saLhUDJJX5lsJ1QRjsooIw$RMFiZKedZMMGKXmTvy5mCU1bVTj1CmiO/XqVkiWgGxU=',NULL,0,'9435103508','RUHI AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:19.792915'),(51,'pbkdf2_sha256$600000$SDEoGd4ZUsB9owKwi2sEDo$PLJLSJnq095jqojWHw4tbIKkI4QUz1ZfhG6rFgTd9vA=',NULL,0,'8876062409','NISAN KASHYAP','','tracko@gmail.com',0,1,'2023-11-04 10:15:20.093790'),(52,'pbkdf2_sha256$600000$gthbWyZ5sbGxomYUIq7Zhd$zlQpDD/rmh1euoCY5z8tbYhnSnsi/or6vpw5H2RuNwk=',NULL,0,'8638786730','SIDDHIRAJ PAUL','','tracko@gmail.com',0,1,'2023-11-04 10:15:20.409690'),(53,'pbkdf2_sha256$600000$fQAXafL30a02KyZuRxg724$sSNOW8XxeHb36VOPOt/tBt2qV0UmYwS3qe0l9eQYI6k=',NULL,0,'9401221000','PARSHVII AGARWALAA','','tracko@gmail.com',0,1,'2023-11-04 10:15:20.715452'),(54,'pbkdf2_sha256$600000$xTVnJys5SpKRFx4CikzW5D$kFTPX1aF2DP8WwOwAlH/Cbks1xOUdEKVLzbP9KJZPMI=',NULL,0,'9365759092','DIVISHA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:21.010705'),(55,'pbkdf2_sha256$600000$m86PwZqRPJHbqdYOMpMgqb$ZOfP1bnmR8B81FVsQazaJpYPSoO6NN9gRc+DnVZ6j/M=',NULL,0,'9435257799','HEYANSH PATWARI','','tracko@gmail.com',0,1,'2023-11-04 10:15:21.323425'),(56,'pbkdf2_sha256$600000$RWM5oJWVq7Fwi8adkmruPn$5pyRkHJUd81i/tVtDxa49GCLFJ8wwDB4r9T4ilvFf5c=',NULL,0,'9864030591','OJASVI JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:21.628681'),(57,'pbkdf2_sha256$600000$ZPTKFTj09hhbLyV4umZM5f$HIILILDnWeiZDyZ/gUJX9bJ1tF84TVBQjlkI56EoOTw=',NULL,0,'9435140904','SHREYASHI SHARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:21.935622'),(58,'pbkdf2_sha256$600000$bHlHw9ueljVqyOfualFNlb$xw4tPbzA/vZs4wr1uPG3BKs+oaGJMPAMdFehRAIY9hw=',NULL,0,'9508522202','MUKUND BOTHRA','','tracko@gmail.com',0,1,'2023-11-04 10:15:22.239442'),(59,'pbkdf2_sha256$600000$gx1sJIrcCYEzJwHxteVOg7$tPHMoPhPCmueaigLg/r7FwVkT+RQwR51IBgpMKwUDIo=',NULL,0,'9085032826','KASHIKA PATWARY','','tracko@gmail.com',0,1,'2023-11-04 10:15:22.542132'),(60,'pbkdf2_sha256$600000$eZrSftG7Qiv47B0mxVQRNT$zCaIX4eDnLF3EdnJpZbPeBy9fAO7Cid/TpheIgcobTs=',NULL,0,'9435330362','RYHA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:22.847390'),(61,'pbkdf2_sha256$600000$oc6SXjBpvxpKZp2yEWmRnb$4ZsgwKG0uvG9O+lCmRfYMOee2Yy2AMvgargf5l0kfpI=',NULL,0,'9365192851','IVAAN BAGARIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:23.146216'),(62,'pbkdf2_sha256$600000$2da2F49cwdXKrPsvkDRVA9$ATId1nJDNYubp45eGgVrB2CBHys56PCxNKj4R4qW/5U=',NULL,0,'9435552400','VANSHIKA AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:23.467415'),(63,'pbkdf2_sha256$600000$0aKT8TcSigX0e6qVPt4TtK$ynsdXgba6m+m7maRU1eMqjFt+0NqyuyzfSGNYua0LKE=',NULL,0,'8905434651','RIYANSH JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:23.774137'),(64,'pbkdf2_sha256$600000$BxTFgIcvNcOArwjxCwiMzL$31pqSnYWT61BXlZOYvZqagGUU2bC1ZME0xIKiielCGk=',NULL,0,'9864029291','AIRAV AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:24.079064'),(65,'pbkdf2_sha256$600000$F21o3MuNCqzxyWddEW0xvd$AmZQmDA+2ZHU8PYukkYe8KA8jqbOQkbWoJlzLuKDjoA=',NULL,0,'7086058631','DHAIRYA JHABAK','','tracko@gmail.com',0,1,'2023-11-04 10:15:24.381840'),(66,'pbkdf2_sha256$600000$fJskRVcmdXyZDBjytYL2eI$h5CLHv1gZtC8uJuH0v/Al3hSFBynAq4/t/gbYqzESn0=',NULL,0,'9706009341','REYANSH SHARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:24.691104'),(67,'pbkdf2_sha256$600000$lCV527t2cMOYndFQi4R5Xz$goym69Ciu+vbdO4t64Z96QNsotmV4X7Gh5F53AXpDz0=',NULL,0,'9435559668','SHAURYA VEER HARLALKA','','tracko@gmail.com',0,1,'2023-11-04 10:15:24.994353'),(68,'pbkdf2_sha256$600000$W7riVbJI0ekFuvWN8FDvG3$Ec/l5lA7hivtChyAdVATg+/2oQ0XPsFnRVobFEisfS0=',NULL,0,'9864140349','KARTHIKEY BOTHRA','','tracko@gmail.com',0,1,'2023-11-04 10:15:25.291735'),(69,'pbkdf2_sha256$600000$bT1COd5WOsUH9dBFpLKCJ7$Eu171/uauwYw0svMokdrIUi1DqEAmq3sTQ6g8GN3+4M=',NULL,0,'9435140380','PRASHASTA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:25.614748'),(70,'pbkdf2_sha256$600000$bgU9ueuvXnOkw0Cq0beCxJ$YwUvMFMok2EvBDvjz7hxwDNYt7hIG2p3yCmZadr/Dh4=',NULL,0,'9864187044','NAINIKA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:25.926650'),(71,'pbkdf2_sha256$600000$AYwbc8bT1UQbBByzHA1tLc$U7mdOlAhfJ4i6qVb4Sb59cWiAP8f15y2JhHDIpsk8zE=',NULL,0,'9864017870','KYSHA SINGHANIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:26.233162'),(72,'pbkdf2_sha256$600000$GjRLOqtuJSJsdv8Yi8Xp1E$ecqD8ZNwqSYLJaztmyj21nHVvlrAikhfqP5Hg4bvXo4=',NULL,0,'9864503750','YUVAAN PATWARI','','tracko@gmail.com',0,1,'2023-11-04 10:15:26.540094'),(73,'pbkdf2_sha256$600000$hDyQCLhnb7NHLmj7iR6rzL$4faPnspOOaNsgvgLyJcJ3g4DrBcmKolgNlxY1pfAadQ=',NULL,0,'7099779476','AAZMIN ULLAH','','tracko@gmail.com',0,1,'2023-11-04 10:15:26.850066'),(74,'pbkdf2_sha256$600000$nvdwrYGsfCgtOnW2rv0yA6$iaa3GrDs4NRwdOZTBJrRBjEwVgODo4Cw8jrl/Jeeixk=',NULL,0,'9149342081','TANU BAFNA','','tracko@gmail.com',0,1,'2023-11-04 10:15:27.150623'),(75,'pbkdf2_sha256$600000$D5IKVm0ABAsQViukSlyYTN$1N3dkVVuqtS6LSbDcM7zGbuyBO2suB6xfW1PzFwH8YI=',NULL,0,'9039012318','YASHVI KANKARIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:27.493839'),(76,'pbkdf2_sha256$600000$A4LZE5xPni1TTafMimxzKk$MPUDm9ag12ts807ucxzVB6YMcyvzez5S3W1PadR59xA=',NULL,0,'8486015579','DRIJA SHANDILYA','','tracko@gmail.com',0,1,'2023-11-04 10:15:27.803069'),(77,'pbkdf2_sha256$600000$sZC6nwZC7j0x1MMAMtcHt3$F5H0fVL5n4FanU429s6OGAEnIYE7xGO+uLI4K/N5M8c=',NULL,0,'789606200','PRASURJYA THAKURIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:28.101767'),(78,'pbkdf2_sha256$600000$gne0lcM8fL6tCRo9s1lVpd$9TPDYjWe+s2ac3VpTATv/9a7dCcP6k1DAE8aa9SvtwQ=',NULL,0,'7002704700','SHUZANA RIFFAT HUSSAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:28.418142'),(79,'pbkdf2_sha256$600000$BwjLOUNSSalcwlYXyqxVXY$UNo+2Zz38L9mwA1fjqPZity5VpbqWUlEo37ILbn6lKA=',NULL,0,'8638449174','RAMMYA KALITA','','tracko@gmail.com',0,1,'2023-11-04 10:15:28.721508'),(80,'pbkdf2_sha256$600000$Ey4SkQAippcAzSn5fAydFc$pM0/3US17Y9eMcmqn0VdIX5oqOAnvZb0MxnzUrrCrdI=',NULL,0,'9859305283','SUWAGJYOTI DEKA','','tracko@gmail.com',0,1,'2023-11-04 10:15:29.028700'),(81,'pbkdf2_sha256$600000$90ZMZQ6V2BicUvGKkPX5LJ$gfDgFWZEPhwX3hE1AncdwKccpIjjCsbYrj9hfrfgDKU=',NULL,0,'6001215550','JIGYASMAN GOSWAMI','','tracko@gmail.com',0,1,'2023-11-04 10:15:29.338828'),(82,'pbkdf2_sha256$600000$B6ynRyMEHg2mPeoJhoeM5s$arPUcvUkuvzi7FGJeL/m3U9d8Mf21ajgvG62oxaoxYY=',NULL,0,'9365373558','MAYANKDIP BARMAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:29.653794'),(83,'pbkdf2_sha256$600000$GGPl6jufkCHUvc8pXHQsRk$TdnKVBuoSgew1FZ4EY0a86gQ6hVUkMstVPoabBnNPsY=',NULL,0,'8011929738','YASH RANJANI DAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:29.953277'),(84,'pbkdf2_sha256$600000$nO15APo1MEVJhBTtGi0f7i$YEV+hY0aEOateeAI7r1l4Lizjn5FlTf1kvptMEF8rfI=',NULL,0,'8638574528','SHRUTI SARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:30.267321'),(85,'pbkdf2_sha256$600000$PQQ2QNfSg4hFKTKRBYTOWG$OheGIejHm9QQBSPtmqFGoqzi7OgtDJdQaQmct2ago/8=',NULL,0,'9864305628','NAMASYA SAIKIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:30.578077'),(86,'pbkdf2_sha256$600000$SECuQIp0DERr8Hb9a7Ag1v$zlgycyh37DM6Q/w8ulm2tUp8fKra+a+vE9US6C1KrQM=',NULL,0,'8638022077','MRIGAKSHI KASHYAP','','tracko@gmail.com',0,1,'2023-11-04 10:15:30.887264'),(87,'pbkdf2_sha256$600000$5IiiiklfdkndFZ8EE9r7ZV$laAWOKPJKyPa6Jje5IGzbJHdh7WWxsSVtAhoyZcOr1c=',NULL,0,'7002419865','KAAVYAN KAUSHIK SONOWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:31.201610'),(88,'pbkdf2_sha256$600000$GB1TcGJQyfz9Ol6gZF5lFl$8QbsdrYI9FZjFHVG3LQGW1SC691G4H/agha/GBUeoxU=',NULL,0,'9181777777','VIVAN BAGLA','','tracko@gmail.com',0,1,'2023-11-04 10:15:31.505300'),(89,'pbkdf2_sha256$600000$3n7tme48fJyyhEGF1kAjDp$18UFEj3yLVY1jDDbOKiAhvEv/TBZp8lcABGKAkn++x0=',NULL,0,'8876557892','DHEER PARASRAMKA','','tracko@gmail.com',0,1,'2023-11-04 10:15:31.809041'),(90,'pbkdf2_sha256$600000$0iLOoFWUHjP8at82GBklVu$q7y7EteJraqoTQpnWD49kZ7M53H2WGUWMyyd6w7sH80=',NULL,0,'8473004361','AARIKA SONI','','tracko@gmail.com',0,1,'2023-11-04 10:15:32.105788'),(91,'pbkdf2_sha256$600000$5eGmh7miR1yfOzsT87ZAOq$dhAQBGFtxSjPApHN21tFFXrUs4O/Ox4Dek9ccgiAtw8=',NULL,0,'7086044164','AYUSH LONGKHO','','tracko@gmail.com',0,1,'2023-11-04 10:15:32.470508'),(92,'pbkdf2_sha256$600000$0uqG4mYtSVVd6KHHQL4ffB$XsWS3ku9l2f1qxoJLJYYf/nnS3pbsv04Q0eV7mTZbaA=',NULL,0,'9864529295','AADVIK BISWAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:32.773151'),(93,'pbkdf2_sha256$600000$ZohvBZQ1aR5VJm7CSDiLn0$2girEsEdC7yW8ei4aBwv/gW4YdLB3MSVxVQbuAmmLiQ=',NULL,0,'9854089621','TUHINE MAZUMDER','','tracko@gmail.com',0,1,'2023-11-04 10:15:33.076992'),(94,'pbkdf2_sha256$600000$wu8WN2PMV1CPQt4xmtuoft$KhZFcb2Y9Isif4dWOS7rOAUAZFB5ojwnxas7Wj3Wfio=',NULL,0,'9957568610','SWARANSH MAHESHWARI','','tracko@gmail.com',0,1,'2023-11-04 10:15:33.373869'),(95,'pbkdf2_sha256$600000$rqoM25JmPj19ZcBl3LxAs8$eENDiJZEYDcz7Y4bO5ruPzVZJ3QDZxJaZZF8MzNjym8=',NULL,0,'9864279991','TWISHAA SWAMI','','tracko@gmail.com',0,1,'2023-11-04 10:15:33.684604'),(96,'pbkdf2_sha256$600000$pObtOK6tAd5Dbt8uS4oamp$upOjeo13RdU6Ob3wlgAZz2CkfaCX5g6zfdhUN97OHYU=',NULL,0,'8486432191','DIYONAA DUTTA','','tracko@gmail.com',0,1,'2023-11-04 10:15:33.984304'),(97,'pbkdf2_sha256$600000$UKSEQbHXYnaxGoUswIsBIf$6kH9EgSIQ6MJ9hgyIPfX6VImYNIjiuvCjhC0NX+TTmA=',NULL,0,'9508667096','DAVIS BORA','','tracko@gmail.com',0,1,'2023-11-04 10:15:34.290660'),(98,'pbkdf2_sha256$600000$Zd6HwqwDDPUeDuutxNumTO$hnnl7zblCAgpHpenhz4mg2jN9MwqB6rT187x1YnVaFU=',NULL,0,'7733887567','SAANVI SIROHIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:34.594009'),(99,'pbkdf2_sha256$600000$PInE8huNO1jcIj9X8mr9Ny$fxXE0cXjD5eOJGUW0x0ZTfxq0PX8J+bGSSle3v1yCOc=',NULL,0,'9435838705','SHABDITA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:34.891234'),(100,'pbkdf2_sha256$600000$m9cQSdVCz9MYZM3uadO55d$zucJvA6aESB4ASKAAPT5c6vbHJrqTWv6Neu9tJSw4b4=',NULL,0,'8255099991','VANSH GHORAWAT','','tracko@gmail.com',0,1,'2023-11-04 10:15:35.198597'),(101,'pbkdf2_sha256$600000$ofliiRhoN6vkphtmb9Jtyi$uU9Ig4vChvjuNZTwyf28opFilKkYmVcFxbSwAPm4Enc=',NULL,0,'9864021644','ATHARV JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:35.491807'),(102,'pbkdf2_sha256$600000$Snyt9QtprrgXLchhISpJrF$q+2Bdgnoh8/Nq1WiDxV/jTfG6aicdSUlGc2yG3bqSzQ=',NULL,0,'9435347585','TISHYA LAHKAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:35.804193'),(103,'pbkdf2_sha256$600000$7KesfzAFnhsiOEJLOx2k4E$Yg9J3Oe868nB7t2R0iLg67CZBZ3dgJjZpK5RpO9Bi+g=',NULL,0,'7399011101','DISHANI MITTAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:36.103666'),(104,'pbkdf2_sha256$600000$32qWgH7WmxlwwDYsCW2u9q$ocfATzZVex7twUsZBiP5X/ZhEt9GXWEGmwghv4ed3P0=',NULL,0,'8822100013','NAVAM AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:36.407046'),(105,'pbkdf2_sha256$600000$gWX5maKx6d4cCf1pGwxH8b$1/iNuk19DvUu0hw9jaNPiYtinSSjRuEXj4s12FoRffw=',NULL,0,'7896025540','TANAY PERIWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:36.710377'),(106,'pbkdf2_sha256$600000$K9MeWvUOwpGYhg2mW3r1O6$6v/6xfr42oqvYifl4CUtijuhdpmp5xeXfsNJ1Ukmue0=',NULL,0,'9717936913','HIYANSH AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:37.014297'),(107,'pbkdf2_sha256$600000$fDedQ8NJlkFpeIUE1ieBVt$L7qoOuV7nLA0VBPqyyuel+kyAd7xDazOrQVaXs507Xw=',NULL,0,'8638286989','VIRAJ SINGHI','','tracko@gmail.com',0,1,'2023-11-04 10:15:37.311194'),(108,'pbkdf2_sha256$600000$8WzvmW0CAwXUF3QvmV0FMJ$wGMGELme5EZl8PYKM8+0w6mqNWe1hbfwnO3J/fJJe/E=',NULL,0,'9101583771','AADISH JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:37.637399'),(109,'pbkdf2_sha256$600000$ARvZkoLulCVMHIirOY84eN$wVreNOxmbDbibvuxkspckoKICeBBWJ89AFnVWUftnrU=',NULL,0,'9864787677','KAASHVI BAGARIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:37.943778'),(110,'pbkdf2_sha256$600000$iNB8hBNLVbuEraGL8mJ7fv$6vwQB5NjThu10XSRQGXEUPkB/fffxVjSZI2up/pXa5A=',NULL,0,'8486054812','SATVIKA CHACHAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:38.245251'),(111,'pbkdf2_sha256$600000$NsqIO4AislfjnQiLPERFIf$Ozwbxm9iLforqBauB4Qj/W1uq1NpmrBbULoobeIXzjI=',NULL,0,'9957539233','REYANSH AGARWALA','','tracko@gmail.com',0,1,'2023-11-04 10:15:38.555173'),(112,'pbkdf2_sha256$600000$cvH4YyFttDLpnStUhef1r2$1Ey9DCt9hW/m294mgyfmic6+gc8UQvqnndSf9TAMztU=',NULL,0,'9435554030','AYANSH JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:38.863952'),(113,'pbkdf2_sha256$600000$0gOgpnz5yTrDmmNUPyueQN$8HWKL1OA3uRY0KaIvLSo2Y49ARp1jRCpWDM0ZqnVDJQ=',NULL,0,'9435550167','VANYA JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:39.162204'),(114,'pbkdf2_sha256$600000$0hCZCKrYX3oXq8LD5UjRI8$K+MZQ0TiQp5KMtp2hl1Vir1gYj4bqWicNpSIboPkkUY=',NULL,0,'7002554002','PRISHA AGARWAL','','tracko@gmail.com',0,1,'2023-11-04 10:15:39.472539'),(115,'pbkdf2_sha256$600000$ZEQts0FRin3GOCw4FbmKTR$IKvjag9vUWM1/JoR1H8o6jv2cqre9x+KCl0s4dW0CHg=',NULL,0,'7896621580','PRAGYAN RK DEKA','','tracko@gmail.com',0,1,'2023-11-04 10:15:39.772801'),(116,'pbkdf2_sha256$600000$zqlgGhieqvXtlYZ6P6keFq$FghDdThDpGHM4waS+pYfaALSZLg6K+JxD/5GgiBbHeA=',NULL,0,'9706058928','SURJYA SAWANT SARKAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:40.084018'),(117,'pbkdf2_sha256$600000$NSaCHz7hiHOYI6Z0DzoVFa$gOv7mmQo4zQJolUEO4kiKfisbkd/R8eURexi/2+ccaY=',NULL,0,'9401594880','SHAYAN HUSSAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:40.380734'),(118,'pbkdf2_sha256$600000$NzE65lmOHXfAMEO3qnuQak$k59HWiRFO9zjMsVJ7IzBFT+vI1H3UVWGq3QHmqMGuRo=',NULL,0,'9864723314','AARDRANIL GOGOI','','tracko@gmail.com',0,1,'2023-11-04 10:15:40.697029'),(119,'pbkdf2_sha256$600000$P3W20FfhKIZlIo8zFGKMIP$IZ+5kSIVQw+RYQMkP0J5lqB/3qI8svYHrNpa32L1+jQ=',NULL,0,'9706171238','SIVAM ROY CHOUDHURY','','tracko@gmail.com',0,1,'2023-11-04 10:15:41.000395'),(120,'pbkdf2_sha256$600000$cdnqRXrO69uJGzolh7Kikh$j9zaSLPTgUg/uRV2TvIXEhCaQUlEBNaMIe6w9vvkZvY=',NULL,0,'7973556589','SUKHMEET KAUR','','tracko@gmail.com',0,1,'2023-11-04 10:15:41.297633'),(121,'pbkdf2_sha256$600000$fgOsANkSAAdaEgkTt4fjXR$UEeO1NagnlOVtkzdgqicZNT1Z5RlmytUYc8VVzDa3UA=',NULL,0,'8135049995','SARA REGMI','','tracko@gmail.com',0,1,'2023-11-04 10:15:41.607020'),(122,'pbkdf2_sha256$600000$2dfttJBL69KBA5HC8peH3w$iygo1KRWo0ddcVfWM681gwbq6j2Os4veud0VCmjbM7U=',NULL,0,'9864505656','KHUSHI JAIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:41.908284'),(123,'pbkdf2_sha256$600000$JjZcvUKPXNjgpOOymNbKeA$6riFo82cvzM/UUhHPHrCTb/XakkSduHdDqkGbSkWy+s=',NULL,0,'7002053856','ALVINA RUHEE','','tracko@gmail.com',0,1,'2023-11-04 10:15:42.229479'),(124,'pbkdf2_sha256$600000$TL2SAHtJzNEcC72qQdjR0B$eKG9cYX7wj7J0j0cUYWKED31zNMJTVJHOSj1IpPEFEw=',NULL,0,'9678320964','NABHASWATEE DAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:42.532273'),(125,'pbkdf2_sha256$600000$iaN6FXhkZW4O5OBE4iAZGd$VJU6cVckc5c3Tjs41sGq22WHPVzRK7lHMlikwx4UY2I=',NULL,0,'7002455578','RIYAN ARYA BHARALI','','tracko@gmail.com',0,1,'2023-11-04 10:15:42.842584'),(126,'pbkdf2_sha256$600000$XVXgmXyk2XwmsjELEtUlKd$uCUgEBmDf1CMmmuBMFVo+PbAQVTrsTbEeO8CfIgBAVg=',NULL,0,'7002384261','SOUMILI SAMANTA','','tracko@gmail.com',0,1,'2023-11-04 10:15:43.155766'),(127,'pbkdf2_sha256$600000$uGsawEH5DvhEroNzHvG77G$yTxMvHLt57tT8Xikd3snpFCH0YdoG7fiQpHJkXlvYDI=',NULL,0,'8472979486','DIKSHIT ALOY BORO','','tracko@gmail.com',0,1,'2023-11-04 10:15:43.460481'),(128,'pbkdf2_sha256$600000$yhWfmXrTjzo1GhLt1K4Dse$jl+vLVCl22pqEcBnHwHdtHzaew+4vIk5lXENXNzLKHs=',NULL,0,'7002036903','PRINCE AMAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:43.766782'),(129,'pbkdf2_sha256$600000$KhFdA5bC3WYwVbX4tzBNnA$/nIISeZh7yzKXb0mwly/AA0gPCGuv972i3ArpuVwaTI=',NULL,0,'8761918143','ARHAM ZAYAN HAQUE','','tracko@gmail.com',0,1,'2023-11-04 10:15:44.076222'),(130,'pbkdf2_sha256$600000$PlUlEW3hbwUUDvzOLmOhmw$Wj4icZFsYfhWzuLVVkNmvuyhW3BFuMjSaweyK+Cb9sg=',NULL,0,'8638175902','DICHANG BARMAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:44.377410'),(131,'pbkdf2_sha256$600000$pwxEYSOzKT6eM9z71pkfNH$GpPH6hcuKljDSx/xXS8K1jeujtw6baSbA/ayDkSwCJs=',NULL,0,'8011739264','NIYOR NATH','','tracko@gmail.com',0,1,'2023-11-04 10:15:44.681713'),(132,'pbkdf2_sha256$600000$oIIZIbkdyHO0NMgxkOrpVN$EPLjeLKds92TvRpHVfIr/rh2ReODqnD5FZzGq5LSMEg=',NULL,0,'9957949336','YASIKA SWARGIARY','','tracko@gmail.com',0,1,'2023-11-04 10:15:44.984932'),(133,'pbkdf2_sha256$600000$aArqT4rUJTF2UGZJfGGPgK$G7IjPQzQmDUYdYasMvQb3eN8vuXqaNnUzublNFJ/7UE=',NULL,0,'9101309887','BHARGAVI LAHKAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:45.289232'),(134,'pbkdf2_sha256$600000$mEVqcMcwz7hUlfVkUoiVEu$+a1bI8H3zcc/L412BTYuI8tlAyCyvQNhp62MelLrab4=',NULL,0,'9954687343','KEFRINA RAHMAN','','tracko@gmail.com',0,1,'2023-11-04 10:15:45.585812'),(135,'pbkdf2_sha256$600000$jQMAf8AOEXWzNeJIxYScX3$uLOWiLUyT3IwIKkiTV3skWXwUoKB9bsSOuFCE5nhFxU=',NULL,0,'8723890515','KASHYAPI KOUL SACHIN','','tracko@gmail.com',0,1,'2023-11-04 10:15:45.898798'),(136,'pbkdf2_sha256$600000$y6r94JNJpJKBMg4JfIvkdp$eFJqiqbtl//8m7WmtjW5UkydLHdXLXqqMFi5YLErx3U=',NULL,0,'9101060745','LAVANYA SHARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:46.204610'),(137,'pbkdf2_sha256$600000$l4Yf2hXMFzt8fNPVUvXTmV$FyWn2Ey6VoXUOR2blWZVXl9PQSVXGgyYNiqMF80TQ7c=',NULL,0,'8638489237','SHLOK PODDAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:46.503142'),(138,'pbkdf2_sha256$600000$pYClz0HObjpHy4e1gttqw1$NChl8GsQUJEDSVSnrU4+zpdKdxpyMrCVYK02Khvu8b4=',NULL,0,'9864203666','SHIVAY PODDAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:46.821966'),(139,'pbkdf2_sha256$600000$iUPNEk3IGC6HEre5fC1KRE$RzXF97L5J6vFZ1MLpkYwJo/IoO/SZlgzSIl3bHzKpQU=',NULL,0,'9678335633','DEBRAJ DEKA','','tracko@gmail.com',0,1,'2023-11-04 10:15:47.120843'),(140,'pbkdf2_sha256$600000$SL9qqIvWdIuKC7qftrUdFi$Z0aduOwmVGwAmb688URiGw62/HoHj4YYYnC2SRZBZcY=',NULL,0,'8510993222','PRAPTI NATH','','tracko@gmail.com',0,1,'2023-11-04 10:15:47.437663'),(141,'pbkdf2_sha256$600000$Aj3Ym2HyDCU5IfxYqChpuK$ytSGpowdm/CmFQOzBRdmIZyPg0DZ7c0uUyE8lwN3xtc=',NULL,0,'7002928411','NAMASSYAH PARASSAR','','tracko@gmail.com',0,1,'2023-11-04 10:15:47.746489'),(142,'pbkdf2_sha256$600000$q9TqxnSRWtBXWaYOgub85R$T35x92Vfq35eCzPMfpgfzc33g74q/OyaLHSI0/hrNpA=',NULL,0,'7002627082','RAYYAN KALITA','','tracko@gmail.com',0,1,'2023-11-04 10:15:48.047863'),(143,'pbkdf2_sha256$600000$LhyJbEbXdh7gjNNCfA9m99$tDooPhdGOyUImsH2M1MJHJlmftWYwNZTIXFs1DheLD8=',NULL,0,'8486182211','KAVYANNSH PARASRAMPURIA','','tracko@gmail.com',0,1,'2023-11-04 10:15:48.355948'),(144,'pbkdf2_sha256$600000$lyaYwoNe7yJmZCqpey7Egz$UlLZWCw+rbmuZX696EIn3az70DN+/pDqcGPiCyR1A0g=',NULL,0,'8011404032','NIVRITI SARMAH','','tracko@gmail.com',0,1,'2023-11-04 10:15:48.665624'),(145,'pbkdf2_sha256$600000$DN53K4TNK3Co3gRWSHehLe$01CIM+HMuyUXTg1PvgSRs4B4KiSatF+M+TmIbuuLt8o=',NULL,0,'9101122313','YAMAN ALI','','tracko@gmail.com',0,1,'2023-11-04 10:15:48.972007'),(146,'pbkdf2_sha256$600000$1cM0eETRBF9M0hyhaJeuwV$ggw/+kIS4YSVg7T2UUM6uwaXDctv0tQvaWQ91qAhMLs=',NULL,0,'7048987364','ARAV KUMAR JHA','','tracko@gmail.com',0,1,'2023-11-04 10:15:49.278375'),(147,'pbkdf2_sha256$600000$ayRmUgx319ND1RLnn4kbQ9$9fsJaqWHyn5KkkSuML/IQFFRHMgpqM7Wd+XBsOKqDRo=',NULL,0,'9401251004','ALAINA THOMAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:49.572586'),(148,'pbkdf2_sha256$600000$aG3hIFaOYv8QVu9Y4yEZeq$W9NE0HQWdk2yWd9MunWVPXOiKUcVDzBZS+gbYc9sr54=',NULL,0,'6002919773','HARDIK KASHYAP','','tracko@gmail.com',0,1,'2023-11-04 10:15:49.896852'),(149,'pbkdf2_sha256$600000$iVdiCnGNtvRfxoct3MISWO$mTwffuPFFtqXY8+dHXZrIKzAcvyJd4m4dGWTjRrOYjc=',NULL,0,'7002148688','HRISHIKESH SARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:50.190506'),(150,'pbkdf2_sha256$600000$G4VcsGkm84BHcrqMZ0zsyL$lNamIBMy8+3kF7w6lJTCzBV7/uFaA2c19pEQK5IedWE=',NULL,0,'7002905576','SHRUTI BORAH','','tracko@gmail.com',0,1,'2023-11-04 10:15:50.502458'),(151,'pbkdf2_sha256$600000$zyN07sHVpbcTw7YZ0l9sZK$pGMQPOr23je1JBau9QgTO0xNG5usql7vydpwsUrJRGU=',NULL,0,'8471847244','NAMRATA CHOUDHURY','','tracko@gmail.com',0,1,'2023-11-04 10:15:50.801196'),(152,'pbkdf2_sha256$600000$PbR0f0pwI2TUBNXOBprr6s$BmTfOwpmKxVzMdMD03H77qJ1ju0maI4V/AWA/2qLYPs=',NULL,0,'8638843929','PRIYANKA SARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:51.107445'),(153,'pbkdf2_sha256$600000$tzdg0MmxnWaMYB9MZ2ohPW$GQ4ZDvbB38AFeYBbF1wLTMV1za3b6ug0gcMvKdtPUV4=',NULL,0,'9957491949','JONAK JIWAN DAS','','tracko@gmail.com',0,1,'2023-11-04 10:15:51.411938'),(154,'pbkdf2_sha256$600000$shmXfUqcaZt5GZWcRTTJR2$Vyfv18uP3DjGAnson0Xt393e4FPnwC7GWBER8QaQNAU=',NULL,0,'9101767401','JYOTISHMAN SARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:51.708591'),(155,'pbkdf2_sha256$600000$2016cTR4kp2KWgESuMub10$NKhhAsngnceLxgJiKDclKhrfOCd6yZVRAddHmGmodiE=',NULL,0,'9678558019','REYNARD J HASDA','','tracko@gmail.com',0,1,'2023-11-04 10:15:52.041639'),(156,'pbkdf2_sha256$600000$7NajbBPVKzQRctnLqXBwLp$ll0SgI5CjHT1b23RcE990/mFP7gd1CmJx1sUfSlcOFo=',NULL,0,'9101467182','UDITA SARMA','','tracko@gmail.com',0,1,'2023-11-04 10:15:52.345117'),(157,'pbkdf2_sha256$600000$pcaqGlj3zIcfNA6tm9jV1s$oTYg/VOLf5l1yOf/fNTDgvWz5VzJGoLd2sYQ0K+Ws9c=',NULL,0,'9954104538','RASHNI SINGH','','tracko@gmail.com',0,1,'2023-11-04 10:15:52.642309');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'Accounts','profile'),(1,'admin','logentry'),(10,'app','route'),(11,'app','routestop'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'gate_config','gateconfigmaster'),(9,'gate_config','rawdata'),(19,'gate_config','siteinfo'),(12,'registration_app','classsection'),(13,'registration_app','holiday'),(20,'registration_app','mobiledeviceids'),(14,'registration_app','othersdetails'),(15,'registration_app','periodtable'),(16,'registration_app','studentdetails'),(17,'registration_app','teacherdetails'),(18,'registration_app','timetable'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 07:33:08.152167'),(2,'auth','0001_initial','2023-10-27 07:33:08.336701'),(3,'Accounts','0001_initial','2023-10-27 07:33:08.365598'),(4,'admin','0001_initial','2023-10-27 07:33:08.417752'),(5,'admin','0002_logentry_remove_auto_add','2023-10-27 07:33:08.424230'),(6,'admin','0003_logentry_add_action_flag_choices','2023-10-27 07:33:08.447689'),(7,'app','0001_initial','2023-10-27 07:33:08.468779'),(8,'contenttypes','0002_remove_content_type_name','2023-10-27 07:33:08.503814'),(9,'auth','0002_alter_permission_name_max_length','2023-10-27 07:33:08.528769'),(10,'auth','0003_alter_user_email_max_length','2023-10-27 07:33:08.545730'),(11,'auth','0004_alter_user_username_opts','2023-10-27 07:33:08.551710'),(12,'auth','0005_alter_user_last_login_null','2023-10-27 07:33:08.576644'),(13,'auth','0006_require_contenttypes_0002','2023-10-27 07:33:08.578644'),(14,'auth','0007_alter_validators_add_error_messages','2023-10-27 07:33:08.585623'),(15,'auth','0008_alter_user_username_max_length','2023-10-27 07:33:08.613520'),(16,'auth','0009_alter_user_last_name_max_length','2023-10-27 07:33:08.639451'),(17,'auth','0010_alter_group_name_max_length','2023-10-27 07:33:08.652442'),(18,'auth','0011_update_proxy_permissions','2023-10-27 07:33:08.659398'),(19,'auth','0012_alter_user_first_name_max_length','2023-10-27 07:33:08.692311'),(20,'gate_config','0001_initial','2023-10-27 07:33:08.714252'),(21,'registration_app','0001_initial','2023-10-27 07:33:08.783679'),(22,'sessions','0001_initial','2023-10-27 07:33:08.804648'),(23,'Accounts','0002_alter_profile_phone_number','2023-10-31 05:06:42.876800'),(24,'Accounts','0003_alter_profile_user_type','2023-10-31 05:06:42.886800'),(25,'Accounts','0004_alter_profile_id_number','2023-10-31 05:06:42.916800'),(26,'Accounts','0005_alter_profile_user_type','2023-10-31 05:06:42.926799'),(27,'app','0002_routestop','2023-11-03 11:43:39.134081'),(28,'gate_config','0002_siteinfo','2023-11-03 11:43:39.144076'),(29,'registration_app','0002_mobiledeviceids','2023-11-07 05:20:03.718216');
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
INSERT INTO `django_session` VALUES ('2pzxvmx3nunajfqx0kyspg4epmwntin3','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxPgP:EqZl7ANBVaSwZA77EskmH2h-Mp0Z_7M13i97wZwzsd0','2023-11-13 10:39:45.394396'),('383z6s3vrafh2pq4oufxjab9ujxq08g2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqxQ:0QJObKtx3IhV4OvoPZul9X_QoCQ7mcFPvs1jhgrXsoo','2023-11-17 09:59:16.612537'),('4d186km0857snk79zu75hgifglorv1ak','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqB0:nkgl-giI9H_z3J5yiuz4Lg9XhIFWNSYihmeZLm19-B8','2023-11-17 09:09:14.287967'),('4imhtsvybl25ykyvdeysy4j1qbq7zw6e','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwHNM:tmf2gYXwSRcfwjp55jmxgvX-7OjVQd0gNKFOWxmT21k','2023-11-10 07:35:24.181612'),('8a9op4ygqrmtry908dzjjm8if4yfe9x6','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qz8uF:SCnuQdLSFfefiwJGCz8Lk6Om-xMyc_bOsI6-6LFF85g','2023-11-18 05:09:11.189932'),('an24tw7xr6xla3flffqot25687h9wkoq','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qzrvn:fanG2SVc-L-8JCqPUYX2QxcFfe5cCQQngkl3VcNuIQ0','2023-11-20 05:13:47.326464'),('h8h1i19hfvmxa8w8di36sryx4chw9hnh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyU5W:jK21BrTBIiO0t9BJXyAlCwqBjtQMg4en_fyTf8j54EQ','2023-11-16 09:34:06.327923'),('hpo2orvtgltj2tu9e6jsaul2w0l0rdxu','.eJxVjEEOwiAQRe_C2hBgWhhcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WDkGDSQOM2QBaVXx2WJznASMzGkLHiS1op8B6pDEqUkZbxFKy5yjeH8AfN2Y:1qyt1F:4j6zT2qq2gClysm8b9u0Wn5KGfaEDz0vn6Y0kchVnvY','2023-11-17 12:11:21.935550'),('hrwc35stuau0k3c343me3exy9goplqij','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqet:m13plReG_bT-8S1quELhjCzQO6o1buOB2lMR2eUiSTw','2023-11-17 09:40:07.771000'),('lv4kxgu6zvv6hh5zsrzoqf0i2j9pi29m','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyrII:JOmIft5Ce1pNWcxgMRYt5t5BPhhjfzZwOn7hFgCAbGw','2023-11-17 10:20:50.099218'),('nnmocpf35k9ewjko457g9qgdcp7y5yoz','.eJxVjEEOwiAQRe_C2hBgWhhcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WDkGDSQOM2QBaVXx2WJznASMzGkLHiS1op8B6pDEqUkZbxFKy5yjeH8AfN2Y:1r0Enq:5t_A-cjshDkanz2tEaRCJjH9-lIZgVzmZnjHUE8jqKY','2023-11-21 05:39:06.801264'),('o51oce8qavfmuhibnwocwtqwu0wb8z7b','.eJxVjEEOwiAQRe_C2hCgFDou3fcMZAamUjWQlHZlvLtt0oVu33v_v0XAbc1ha7yEOYmrsOLyywjjk8sh0gPLvcpYy7rMJI9EnrbJsSZ-3c727yBjy_ua2DtnjYreuIREU--HAXsdCbRB7Lwhp5g7CztzUYG2rIEBklWTwyQ-X-K8N9Q:1qynYH:MjP06Go0PCpnrg78H4GIXpBNj4hYPjSKfFKJWdsZgR8','2023-11-17 06:21:05.014065'),('s4r7ozn728dlocw9gvgsyzq44ssynisc','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwLAe:7j15JMaaE18NWKVn5TVf_VurtrzHFa-g--DpvEWDOFs','2023-11-10 11:38:32.573149'),('sxh3h7nshot31w0p2o7e7u002txrpfu1','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qyqze:5xb_z99wLCn5np0mt0s6P292zaGEQIaSLrllZeiN7uU','2023-11-17 10:01:34.640038'),('vu0wehui937tyygv8u8s6xcpzj9eu7nh','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwL6v:vlww1iGF9B1TZUrASOMaW2l8v2zAOBnXikr_2Satx9k','2023-11-10 11:34:41.507899'),('xtsggv0fywrknh6rahk6eq596orrkoa5','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qwbq7:G8YipH0YKBSJersxC3imDpoffp1eBanS5__2w0ix7FM','2023-11-11 05:26:27.578289'),('z616lqztuzn43h9oalnbkrplo3bqhxc2','.eJxVjEEOwiAQRe_C2hARhmlduu8ZmoEZpGogKe3KeHfbpAvdvvf-f6uR1iWPa5N5nFhdlVGnXxYoPqXsgh9U7lXHWpZ5CnpP9GGbHirL63a0fweZWt7WQhzp7JwAd9Zh7625ADGglRDJECQnySP0SJ2kYJO3HoAQ7UYYWX2-9k44SA:1qxMJd:ovvmXmCuzcyN0HPkC2662TqWvKf7x4QuD78siDG1b5w','2023-11-13 07:04:01.361479');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_app_mobiledeviceids`
--

DROP TABLE IF EXISTS `registration_app_mobiledeviceids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_app_mobiledeviceids` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) NOT NULL,
  `device_id` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_app_mobiledeviceids`
--

LOCK TABLES `registration_app_mobiledeviceids` WRITE;
/*!40000 ALTER TABLE `registration_app_mobiledeviceids` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_app_mobiledeviceids` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_studentdetails`
--

LOCK TABLES `tbl_studentdetails` WRITE;
/*!40000 ALTER TABLE `tbl_studentdetails` DISABLE KEYS */;
INSERT INTO `tbl_studentdetails` VALUES (3,'NIRVAN SIOTIA','255',1,1940514994,'73a9e8b2',NULL,'','M','MADHUSUDAN SIOTIA','G','','','9864096222','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(4,'ZOHA SHOEB SHAIKH','276',2,1940475186,'73a94d32',NULL,'','F','MOHAMED SHOEB SHAIKH','G','','','9819286215','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(5,'AASHIRYA DUTTA','287',3,1941679746,'73bbae82',NULL,'','F','RANA DUTTA','G','','','9864013262','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(6,'BHAVYANSH AGARWAL','321',4,1945277554,'73f29472',NULL,'','M','GAUTAM AGARWAL','G','','','6003346321','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(7,'SANVI BAISHYA','337',5,1940515170,'73a9e962',NULL,'','F','DIMBESWAR BAISHYA','G','','','7099212717','tracko@gmail.com','1','A',NULL,'1',1,1,'student_images/default_image.jpg'),(8,'GATIK BOTHRA','357',6,1940538994,'73aa4672',NULL,'','M','RAJIV BOTHRA','G','','','9706284892','tracko@gmail.com','2','B',NULL,'1',1,1,'student_images/default_image.jpg'),(9,'JAISHNAVEE GOUTAM','361',7,1942070354,'73c1a452',NULL,'','F','DHRUBA JYOTI GUOTAM','G','','','9435046859','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(10,'ANOM REEHA MAZID','393',8,1941673266,'73bb9532',NULL,'','F','ABDUL MAZID','G','','','7002553540','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(11,'NIVAAN SARAWGI','401',9,1941574738,'73ba1452',NULL,'','M','PANKAJ SARAWGI','G','','','9954041810','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(12,'ABHILAKH BAISHYA','410',10,1941575522,'73ba1762',NULL,'','M','BANAMALI BAISHYA','G','','','9394273393','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(13,'DIVYAM KUMAR','413',11,1941680338,'73bbb0d2',NULL,'','M','RAJ KISHORE KUMAR','G','','','8723847267','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(14,'KUNAL KALITA','415',12,1944299330,'73e3a742',NULL,'','M','RAJEEB KALITA','G','','','9954241085','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(15,'NISHANT DAS','417',13,1941572898,'73ba0d22',NULL,'','M','PULAK CHANDRA DAS','G','','','9435540567','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(16,'ADVIK SHARMA','262',14,1942219746,'73c3ebe2',NULL,'','M','DR PRERIT SHARMA','G','','','9101440773','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(17,'HARSHIKA KASHYAP BHARALI','264',15,1942019426,'73c0dd62',NULL,'','F','LAKHYADHAR BHARALI','G','','','7002208171','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(18,'NAMRA JAIN','267',16,1944459010,'73e61702',NULL,'','M','PAWAN JAIN','G','','','9707333500','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(19,'PRAGYAN PRIT BAISHYA','272',17,3515521413,'d18a9985',NULL,'','M','DIMBESWAR BAISHYA','G','','','7099212717','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(20,'ANISHA BARMAN','288',18,1941629714,'73baeb12',NULL,'','F','DHURBA JYOTI BARMAN','G','','','9854055243','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(21,'SRESHTHA CHAKRABARTI','298',19,1940490914,'73a98aa2',NULL,'','F','DR INDRANIL CHAKRABARTI','G','','','8617031147','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(22,'VARUN KASHYAP','300',20,1942066898,'73c196d2',NULL,'','M','JUGAL DAS','G','','','863851909','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(23,'THAISA DEVI','317',21,1944512514,'73e6e802',NULL,'','F','MANASH PRATIM NATH','G','','','7002999566','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(24,'SYEDA SAIMA SIREEN','324',22,1941573314,'73ba0ec2',NULL,'','F','SYED HELIMUDDIN AHMED','G','','','7002894263','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(25,'SARAAH ROB','344',23,1941674498,'73bb9a02',NULL,'','F','ABDUL ROB','G','','','9101008833','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(26,'NAITIK KUMAR MITTAL','371',24,1941634402,'73bafd62',NULL,'','M','VIKASH KUMAR MITTAL','G','','','7002761237','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(27,'RUPAL KALITA','372',25,3514869157,'d180a5a5',NULL,'','M','RAJEEB KALITA','G','','','9954241085','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(28,'AARIYAN DAS','376',26,1941575442,'73ba1712',NULL,'','M','MANJIT DAS','G','','','9706061910','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(29,'ABHIGYAN KASHYAP BHARALI','377',27,1941576194,'73ba1a02',NULL,'','M','LAKHYADHAR BHARALI','G','','','7002208171','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(30,'EKTA MITTAL','382',28,1942228338,'73c40d72',NULL,'','F','VIKASH KUMAR MITTAL','G','','','7002761237','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(31,'RAJVEER BAISHYA','387',29,1941681314,'73bbb4a2',NULL,'','M','BANAMALI BAISHYA','G','','','9394273393','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(32,'PIYUSH TAILOR','233',30,1940470738,'73a93bd2',NULL,'','M','SANJAY TAILOR','G','','','9352728062','tracko@gmail.com','1','B',NULL,'1',1,1,'student_images/default_image.jpg'),(33,'ATIF ASLAM','278',31,1944460978,'73e61eb2',NULL,'','M','ABDUR REKIB','G','','','8638610534','tracko@gmail.com','2','A',NULL,'1',1,1,'student_images/default_image.jpg'),(34,'TAHMID BAKHTIAR DEWAN','235',32,1941676642,'73bba262',NULL,'','M','DR DEWAN MAHAMMAD IMRUL','G','','','7812726001','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(35,'PRATYAKSH AGARWALA','346',33,1940494626,'73a99922',NULL,'','M','PAWAN KUMAR AGARWALA','G','','','9401277777','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(36,'SMRITI JOSHI','356',34,1944457266,'73e61032',NULL,'','F','GOPAL KRISHNA JOSHI','G','','','9101447846','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(37,'LUVYANSH MALOO','366',35,1941673682,'73bb96d2',NULL,'','M','KARAN MALOO','G','','','9085033000','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(38,'SAMARTH DHIRASARIA','368',36,1944455298,'73e60882',NULL,'','M','RANA DHIRASARIA','G','','','7086462083','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(39,'SAARANSH GUPTA','389',37,1941575362,'73ba16c2',NULL,'','M','SUSHIL GUPTA','G','','','9508026001','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(40,'ADITI NAWLAKHA','411',38,1945279938,'73f29dc2',NULL,'','F','SONU NAWLAKHA','G','','','9435088070','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(41,'YUVEER JAIN','251',39,1944283330,'73e368c2',NULL,'','M','RONIT JAIN','G','','','9864071855','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(42,'KARISHMITA MITRA','290',40,1942182434,'73c35a22',NULL,'','F','RAJIB MITRA','G','','','9401391014','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(43,'SHOURYA BAID','295',41,1941636402,'73bb0532',NULL,'','M','MAYANK BAID','G','','','7014249966','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(44,'MYRA KUCHERIA','305',42,1941574978,'73ba1542',NULL,'','F','PRATIK KUCHERIA','G','','','7399074888','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(45,'VIVAAN GUPTA','309',43,1942005074,'73c0a552',NULL,'','M','KUNAL GUPTA','G','','','6900627366','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(46,'PAARTH GOYAL','349',44,1940538754,'73aa4582',NULL,'','M','KAMAL GOYAL','G','','','9540877778','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(47,'SAKSHI PARIK','390',45,1941575746,'73ba1842',NULL,'','F','BHAWANI SHANKAR PARIK','G','','','6350300925','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(48,'PRISHA AGARWALLA','214',46,1944298850,'73e3a562',NULL,'','F','ANUJ KUMAR AGARWALLA','G','','','8721832360','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(49,'RUTVI AGARWAL','218',47,1940538674,'73aa4532',NULL,'','F','DR RANJIT KUMAR AGARWALA','G','','','9864024001','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(50,'VAANI HAWELIA','222',48,1942022626,'73c0e9e2',NULL,'','F','AKHIL HAWELIA','G','','','9508262346','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(51,'DHYARA BAJAJ','225',49,1940541090,'73aa4ea2',NULL,'','F','AMAR KUMAR BAJAJ','G','','','7002925500','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(52,'RUHI AGARWAL','242',50,1941674898,'73bb9b92',NULL,'','F','DR RANJIT KUMAR AGARWALA','G','','','9435103508','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(53,'NISAN KASHYAP','281',51,1940538834,'73aa45d2',NULL,'','M','NIKHIL KR DAS','G','','','8876062409','tracko@gmail.com','2','A',NULL,'2',1,1,'student_images/default_image.jpg'),(54,'SIDDHIRAJ PAUL','283',52,1940494242,'73a997a2',NULL,'','M','PRAGYAN PAUL','G','','','8638786730','tracko@gmail.com','1','B',NULL,'2',1,1,'student_images/default_image.jpg'),(55,'PARSHVII AGARWALAA','216',53,1944349426,'73e46af2',NULL,'','F','MANNOJ AGARWALAA','G','','','9401221000','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(56,'DIVISHA JAIN','240',54,1942223218,'73c3f972',NULL,'','F','SAURAV KUMAR JAIN','G','','','9365759092','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(57,'HEYANSH PATWARI','265',55,1941678354,'73bba912',NULL,'','M','RAMESH PATWARI','G','','','9435257799','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(58,'OJASVI JAIN','270',56,1944458722,'73e615e2',NULL,'','F','AMIT KUMAR JAIN','G','','','9864030591','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(59,'SHREYASHI SHARMA','332',57,1945280354,'73f29f62',NULL,'','F','SATISH SHARMA','G','','','9435140904','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(60,'MUKUND BOTHRA','358',58,1941677842,'73bba712',NULL,'','M','BINIT BOTHRA','G','','','9508522202','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(61,'KASHIKA PATWARY','363',59,3442761909,'cd3460b5',NULL,'','F','VIVEK PATWARY','G','','','9085032826','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(62,'RYHA JAIN','365',60,1941673426,'73bb95d2',NULL,'','F','RAHUL JAIN','G','','','9435330362','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(63,'IVAAN BAGARIA','370',61,1944555042,'73e78e22',NULL,'','M','AMIT KUMAR BAGARIA','G','','','9365192851','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(64,'SWESHA SHARMA','408',62,1941679010,'73bbaba2',NULL,'','F','SATISH SHARMA','G','','','9435140904','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(65,'VANSHIKA AGARWAL','424',63,1941575682,'73ba1802',NULL,'','F','NAVEEN KUMAR AGARWAL','G','','','9435552400','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(66,'RIYANSH JAIN','250',64,1941633890,'73bafb62',NULL,'','M','MANOJ JAIN','G','','','8905434651','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(67,'AIRAV AGARWAL','252',65,1942275890,'73c4c732',NULL,'','M','PRATIK AGARWAL','G','','','9864029291','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(68,'DHAIRYA JHABAK','253',66,1945280322,'73f29f42',NULL,'','M','VIKASH JHABAK','G','','','7086058631','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(69,'REYANSH SHARMA','254',67,1942219506,'73c3eaf2',NULL,'','M','LOKESH SHARMA','G','','','9706009341','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(70,'SHAURYA VEER HARLALKA','256',68,1941679586,'73bbade2',NULL,'','M','GOVIND HARLALKA','G','','','9435559668','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(71,'KARTHIKEY BOTHRA','258',69,1942217810,'73c3e452',NULL,'','M','BAJRANG BOTHRA','G','','','9864140349','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(72,'PRASHASTA JAIN','386',70,1941679170,'73bbac42',NULL,'','M','NABIN JAIN','G','','','9435140380','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(73,'NAINIKA JAIN','213',71,3662884729,'da532f79',NULL,'','F','ANKIT JAIN','G','','','9864187044','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(74,'KYSHA SINGHANIA','217',72,3671707433,'dad9cf29',NULL,'','F','MRINAL SINGHANIA','G','','','9864017870','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(75,'YUVAAN PATWARI','234',73,1942017266,'73c0d4f2',NULL,'','M','PUNIT PATWARI','G','','','9864503750','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(76,'AAZMIN ULLAH','244',74,1944349570,'73e46b82',NULL,'','F','AMAN ULLAH','G','','','7099779476','tracko@gmail.com','1','B',NULL,'3',1,1,'student_images/default_image.jpg'),(77,'TANU BAFNA','245',75,1941673218,'73bb9502',NULL,'','F','ANAND BAFNA','G','','','9149342081','tracko@gmail.com','2','A',NULL,'3',1,1,'student_images/default_image.jpg'),(78,'YASHVI KANKARIA','221',76,3442820117,'cd354415',NULL,'','F','PANKAJ KANKARIA','G','','','9039012318','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(79,'DRIJA SHANDILYA','246',77,1944295314,'73e39792',NULL,'','F','DEBORSHI KAR','G','','','8486015579','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(80,'PRASURJYA THAKURIA','282',78,1944333762,'73e42dc2',NULL,'','M','JYOTI THAKURIA','G','','','789606200','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(81,'SHUZANA RIFFAT HUSSAIN','296',79,1942028706,'73c101a2',NULL,'','F','MD SHARIQUE IMDAD HUSSAIN','G','','','7002704700','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(82,'RAMMYA KALITA','404',80,1942015026,'73c0cc32',NULL,'','M','RAJIB KALITA','G','','','8638449174','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(83,'SUWAGJYOTI DEKA','407',81,1941674338,'73bb9962',NULL,'','M','NILAMANI DEKA','G','','','9859305283','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(84,'JIGYASMAN GOSWAMI','414',82,1941639090,'73bb0fb2',NULL,'','M','BAIJAYANTA GOSWAMI','G','','','6001215550','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(85,'SHAZAIB RAIF HUSSAIN','422',83,1941575602,'73ba17b2',NULL,'','M','MD SHARIQUE IMDAD HUSSAIN','G','','','7002704700','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(86,'MAYANKDIP BARMAN','439',84,3442561589,'cd315235',NULL,'','M','MD SHARIQUE IMDAD HUSSAIN','G','','','9365373558','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(87,'YASH RANJANI DAS','302',85,1942018930,'73c0db72',NULL,'','F','SUPRADIP DAS','G','','','8011929738','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(88,'SHRUTI SARMA','303',86,1940495922,'73a99e32',NULL,'','F','KUMUD SARMA','G','','','8638574528','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(89,'PRANAVI SIOTIA','314',87,1940512866,'73a9e062',NULL,'','F','MADHUSUDAN SIOTIA','G','','','9864096222','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(90,'NAMASYA SAIKIA','316',88,1941679410,'73bbad32',NULL,'','F','KRISHNA KAMAL SAIKIA','G','','','9864305628','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(91,'MRIGAKSHI KASHYAP','318',89,2081481995,'7c10e50b',NULL,'','F','NIRMAL SHARMA','G','','','8638022077','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(92,'RIHAN KALITA','352',90,1944557650,'73e79852',NULL,'','M','RAJIB KALITA','G','','','8638449174','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(93,'KAAVYAN KAUSHIK SONOWAL','353',91,3443187301,'cd3ade65',NULL,'','M','ACHAJYA SONOWAL','G','','','7002419865','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(94,'VIVAN BAGLA','373',92,1941626786,'73badfa2',NULL,'','M','ANIRUDH BAGLA','G','','','9181777777','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(95,'DHEER PARASRAMKA','228',93,1941575138,'73ba15e2',NULL,'','M','GIRISH PARASHRAMKA','G','','','8876557892','tracko@gmail.com','2','A',NULL,'4',1,1,'student_images/default_image.jpg'),(96,'AARIKA SONI','247',94,1941573138,'73ba0e12',NULL,'','F','ANKIT SONI','G','','','8473004361','tracko@gmail.com','1','B',NULL,'4',1,1,'student_images/default_image.jpg'),(97,'JIA AGARWAL','359',95,1941573634,'73ba1002',NULL,'','F','GAUTAM AGARWAL','G','','','6003346321','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(98,'AYUSH LONGKHO','433',96,3672052537,'dadf1339',NULL,'','M','AGARWAL','G','','','7086044164','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(99,'AADVIK BISWAS','436',97,2080687051,'7c04c3cb',NULL,'','M','AJIT ','G','','','9864529295','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(100,'TUHINE MAZUMDER','429',98,1941601890,'73ba7e62',NULL,'','M','AJIT MAZUMDAR','G','','','9854089621','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(101,'SWARANSH MAHESHWARI','430',99,1940540850,'73aa4db2',NULL,'','M','DR SAURAV MAHESHWARI','G','','','9957568610','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(102,'TWISHAA SWAMI','341',100,1941573554,'73ba0fb2',NULL,'','F','RAJAT SWAMI','G','','','9864279991','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(103,'DIYONAA DUTTA','381',101,1941677282,'73bba4e2',NULL,'','F','BIMAL DUTTA','G','','','8486432191','tracko@gmail.com','2','A',NULL,'5',1,1,'student_images/default_image.jpg'),(104,'DAVIS BORA','279',102,1944357154,'73e48922',NULL,'','M','SUMON BORA','G','','','9508667096','tracko@gmail.com','1','B',NULL,'5',1,1,'student_images/default_image.jpg'),(105,'SAANVI SIROHIA','362',103,1944301634,'73e3b042',NULL,'','F','DEEOESH SIROHIA','G','','','7733887567','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(106,'SHABDITA JAIN','391',104,1942227698,'73c40af2',NULL,'','F','KAMAL KUMAR JAIN','G','','','9435838705','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(107,'VANSH GHORAWAT','392',105,1941679506,'73bbad92',NULL,'','M','VINEET GHORAWAT','G','','','8255099991','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(108,'ATHARV JAIN','394',106,1941640866,'73bb16a2',NULL,'','M','NIKHIL JAIN','G','','','9864021644','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(109,'TISHYA LAHKAR','409',107,1942241906,'73c44272',NULL,'','F','DIGJYOTI LAHKAR','G','','','9435347585','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(110,'DISHANI MITTAL','249',108,1941572978,'73ba0d72',NULL,'','F','SANKEET MITTAL','G','','','7399011101','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(111,'NAVAM AGARWAL','268',109,1945277634,'73f294c2',NULL,'','M','GAURAB AGARWAL','G','','','8822100013','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(112,'TANAY PERIWAL','275',110,1940491346,'73a98c52',NULL,'','M','MADHU SUDAN PERIWAL','G','','','7896025540','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(113,'HIYANSH AGARWAL','313',111,1942025650,'73c0f5b2',NULL,'','M','ANKIT AGARWAL','G','','','9717936913','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(114,'VIRAJ SINGHI','320',112,3442918885,'cd36c5e5',NULL,'','M','VIKASH SINGHI','G','','','8638286989','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(115,'RIVAAN MITTAL','343',113,1942226034,'73c40472',NULL,'','M','SANKEET MITTAL','G','','','7399011101','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(116,'AADISH JAIN','350',114,2080884347,'7c07c67b',NULL,'','M','PANKAJ JAIN','G','','','9101583771','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(117,'KAASHVI BAGARIA','351',115,1944504178,'73e6c772',NULL,'','F','GAURAV BAGARIA','G','','','9864787677','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(118,'SATVIKA CHACHAN','219',116,1940514834,'73a9e812',NULL,'','F','BIKASH CHACHAN','G','','','8486054812','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(119,'REYANSH AGARWALA','230',117,2081374859,'7c0f428b',NULL,'','M','SANDEEP AGARWALA','G','','','9957539233','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(120,'AYANSH JAIN','232',118,1941681154,'73bbb402',NULL,'','M','PUNIT JAIN','G','','','9435554030','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(121,'VANYA JAIN','239',119,1942219346,'73c3ea52',NULL,'','F','MANISH JAIN','G','','','9435550167','tracko@gmail.com','1','A',NULL,'6',1,1,'student_images/default_image.jpg'),(122,'PRISHA AGARWAL','243',120,3671456409,'dad5fa99',NULL,'','F','AMIT AGARWAL','G','','','7002554002','tracko@gmail.com','2','B',NULL,'6',1,1,'student_images/default_image.jpg'),(123,'PRAGYAN RK DEKA','419',121,3671985449,'dade0d29',NULL,'','M','RANJIT DEKA','G','','','7896621580','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(124,'SURJYA SAWANT SARKAR','423',122,1941674594,'73bb9a62',NULL,'','M','DR SHEKHAR KANTI SARKAR','G','','','9706058928','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(125,'SHAYAN HUSSAIN','432',123,1942239394,'73c438a2',NULL,'','M','MANZAR HUSSAIN','G','','','9401594880','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(126,'AARDRANIL GOGOI','259',124,1941677442,'73bba582',NULL,'','M','DR DIPANJAL GOGOI','G','','','9864723314','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(127,'SIVAM ROY CHOUDHURY','297',125,1941681410,'73bbb502',NULL,'','M','SIMANTA ROY CHOUDHURY','G','','','9706171238','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(128,'SUKHMEET KAUR','299',126,1940496850,'73a9a1d2',NULL,'','F','MANMEET SINGH GILL','G','','','7973556589','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(129,'SARA REGMI','334',127,1942235906,'73c42b02',NULL,'','F','KUL BAHADUR REGMI','G','','','8135049995','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(130,'KHUSHI JAIN','223',128,1944355650,'73e48342',NULL,'','F','JACKY JAIN','G','','','9864505656','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(131,'GURKIRAN SINGH KAUR','238',129,1941675698,'73bb9eb2',NULL,'','F','MANMEET SINGH GILL','G','','','7973556589','tracko@gmail.com','1','A',NULL,'7',1,1,'student_images/default_image.jpg'),(132,'ALVINA RUHEE','241',130,1941677682,'73bba672',NULL,'','F','MD SAMSUL HAQUE','G','','','7002053856','tracko@gmail.com','2','B',NULL,'7',1,1,'student_images/default_image.jpg'),(133,'NABHASWATEE DAS','355',131,1941639266,'73bb1062',NULL,'','F','SANJAY KUMAR DAS','G','','','9678320964','tracko@gmail.com','1','A',NULL,'8',1,1,'student_images/default_image.jpg'),(134,'RIYAN ARYA BHARALI','421',132,1941634242,'73bafcc2',NULL,'','M','BISWAJIT BHARALI','G','','','7002455578','tracko@gmail.com','2','B',NULL,'8',1,1,'student_images/default_image.jpg'),(135,'SOUMILI SAMANTA','342',133,1560552544,'5d042460',NULL,'','F','SAPTARSHI SAMANTA','G','','','7002384261','tracko@gmail.com','1','A',NULL,'8',1,1,'student_images/default_image.jpg'),(136,'DIKSHIT ALOY BORO','236',134,1944295186,'73e39712',NULL,'','M','DHIRAJ BORO','G','','','8472979486','tracko@gmail.com','2','B',NULL,'8',1,1,'student_images/default_image.jpg'),(137,'PRINCE AMAN','293',135,1940494194,'73a99772',NULL,'','M','NEKIBUR RAHMAN','G','','','7002036903','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(138,'ARHAM ZAYAN HAQUE','327',136,1942069186,'73c19fc2',NULL,'','M','AYAZUL HAQUE','G','','','8761918143','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(139,'DICHANG BARMAN','395',137,1941678930,'73bbab52',NULL,'','M','BIPUL BARMAN','G','','','8638175902','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(140,'NIYOR NATH','311',138,1940513362,'73a9e252',NULL,'','M','GOLAP NATH','G','','','8011739264','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(141,'YASIKA SWARGIARY','329',139,1942224802,'73c3ffa2',NULL,'','F','JANAK LAL SWARGIARY','G','','','9957949336','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(142,'BHARGAVI LAHKAR','335',140,1941573730,'73ba1062',NULL,'','F','RAHUL LAHKAR','G','','','9101309887','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(143,'KEFRINA RAHMAN','383',141,1942224018,'73c3fc92',NULL,'','F','MATIUR RAHMAN','G','','','9954687343','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(144,'KASHYAPI KOUL SACHIN','237',142,1941573474,'73ba0f62',NULL,'','F','DR SACHIN KUMAR','G','','','8723890515','tracko@gmail.com','2','B',NULL,'9',1,1,'student_images/default_image.jpg'),(145,'LAVANYA SHARMA','280',143,3481434820,'cf827ac4',NULL,'','F','DR HRISHIKESH SHARMA','G','','','9101060745','tracko@gmail.com','1','A',NULL,'9',1,1,'student_images/default_image.jpg'),(146,'SHLOK PODDAR','227',144,3984280199,'ed7b4a87',NULL,'','','PRITAM PODDAR','G','','','8638489237','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(147,'SHIVAY PODDAR','260',145,1941680914,'73bbb312',NULL,'','','KETAN PODDAR','G','','','9864203666','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(148,'DEBRAJ DEKA','380',146,1941629618,'73baeab2',NULL,'','','NITUL DEKA','G','','','9678335633','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(149,'PRAPTI NATH','385',147,1941573218,'73ba0e62',NULL,'','','PRANAB KUMAR NATH','G','','','8510993222','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(150,'NAMASSYAH PARASSAR','400',148,1941672210,'73bb9112',NULL,'','','AMARENDRA BHATTACHARYYA','G','','','7002928411','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(151,'RAYYAN KALITA','405',149,1944355570,'73e482f2',NULL,'','','JAYANTA KALITA','G','','','7002627082','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(152,'KAVYANNSH PARASRAMPURIA','428',150,3443009461,'cd3827b5',NULL,'','','CHANDRAKANT PARASRAMPURIA','G','','','8486182211','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(153,'DHIMAN DEKA','263',151,1941576114,'73ba19b2',NULL,'','','NITUK DEKA','G','','','9678335633','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(154,'NIVRITI SARMAH','269',152,1940514594,'73a9e722',NULL,'','','BADAL SHARMA','G','','','8011404032','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(155,'YAMAN ALI','301',153,1791811925,'6acce155',NULL,'','','YUNUS ALI','G','','','9101122313','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(156,'ARAV KUMAR JHA','374',154,1940539074,'73aa46c2',NULL,'','','RAHUL KUMAR JHA','G','','','7048987364','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(157,'ALAINA THOMAS','378',155,1941573394,'73ba0f12',NULL,'','','THOMAS MATHEW','G','','','9401251004','tracko@gmail.com','1','A',NULL,'10',1,1,'student_images/default_image.jpg'),(158,'NANDINI JHA','248',156,1944463458,'73e62862',NULL,'','','RAHUL KUMAR JHA','G','','','7048987364','tracko@gmail.com','2','B',NULL,'10',1,1,'student_images/default_image.jpg'),(159,'HARDIK KASHYAP','231',157,1945280434,'73f29fb2',NULL,'','','HITEN SHARMA','G','','','6002919773','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(160,'HRISHIKESH SARMA','396',158,1941674418,'73bb99b2',NULL,'','','BISWA PRAKASH SARMA','G','','','7002148688','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(161,'SHRUTI BORAH','406',159,1942008498,'73c0b2b2',NULL,'','','BIJIT BORAH','G','','','7002905576','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(162,'NAMRATA CHOUDHURY','416',160,1941676722,'73bba2b2',NULL,'','','DIGANTA KR CHOUDHURY','G','','','8471847244','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(163,'PRIYANKA SARMA','420',161,1941673346,'73bb9582',NULL,'','','DEBA KR SARMA','G','','','8638843929','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(164,'JONAK JIWAN DAS','257',162,1942882034,'73ce06f2',NULL,'','','GIRINDRA CHANDRA DAS','G','','','9957491949','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(165,'JYOTISHMAN SARMA','289',163,1941677618,'73bba632',NULL,'','','ANJAN SARMA','G','','','9101767401','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(166,'MURCHANA SARMA','291',164,1940538914,'73aa4622',NULL,'','','DEBA KUMAR SARMA','G','','','8638843929','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(167,'REYNARD J HASDA','306',165,1944463218,'73e62772',NULL,'','','WILSON HASDA','G','','','9678558019','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg'),(168,'UDITA SARMA','224',166,2080876779,'7c07a8eb',NULL,'','','RATUL SHARMA','G','','','9101467182','tracko@gmail.com','2','B',NULL,'11',1,1,'student_images/default_image.jpg'),(169,'RASHNI SINGH','226',167,1942004914,'73c0a4b2',NULL,'','','SHANKAR SINGH','G','','','9954104538','tracko@gmail.com','1','A',NULL,'11',1,1,'student_images/default_image.jpg');
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
INSERT INTO `tbl_timetable` VALUES (1,'Monday','P1','16:25:00.000000','17:26:00.000000','123','1','A'),(2,'Monday','P2','15:05:00.000000','16:05:00.000000','123','1','A'),(3,'Friday','P1','17:25:00.000000','18:25:00.000000','123','1','A'),(4,'Tuesday','P1','11:08:00.000000','12:08:00.000000','123','1','A');
/*!40000 ALTER TABLE `tbl_timetable` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_218`
--

DROP TABLE IF EXISTS `tblattendance_218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_218` (
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
-- Dumping data for table `tblattendance_218`
--

LOCK TABLES `tblattendance_218` WRITE;
/*!40000 ALTER TABLE `tblattendance_218` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_218` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_235`
--

DROP TABLE IF EXISTS `tblattendance_235`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_235` (
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
-- Dumping data for table `tblattendance_235`
--

LOCK TABLES `tblattendance_235` WRITE;
/*!40000 ALTER TABLE `tblattendance_235` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_235` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_237`
--

DROP TABLE IF EXISTS `tblattendance_237`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_237` (
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
-- Dumping data for table `tblattendance_237`
--

LOCK TABLES `tblattendance_237` WRITE;
/*!40000 ALTER TABLE `tblattendance_237` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_237` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_242`
--

DROP TABLE IF EXISTS `tblattendance_242`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_242` (
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
-- Dumping data for table `tblattendance_242`
--

LOCK TABLES `tblattendance_242` WRITE;
/*!40000 ALTER TABLE `tblattendance_242` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_242` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_259`
--

DROP TABLE IF EXISTS `tblattendance_259`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_259` (
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
-- Dumping data for table `tblattendance_259`
--

LOCK TABLES `tblattendance_259` WRITE;
/*!40000 ALTER TABLE `tblattendance_259` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_259` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_262`
--

DROP TABLE IF EXISTS `tblattendance_262`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_262` (
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
-- Dumping data for table `tblattendance_262`
--

LOCK TABLES `tblattendance_262` WRITE;
/*!40000 ALTER TABLE `tblattendance_262` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_262` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_280`
--

DROP TABLE IF EXISTS `tblattendance_280`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_280` (
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
-- Dumping data for table `tblattendance_280`
--

LOCK TABLES `tblattendance_280` WRITE;
/*!40000 ALTER TABLE `tblattendance_280` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_280` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_282`
--

DROP TABLE IF EXISTS `tblattendance_282`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_282` (
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
-- Dumping data for table `tblattendance_282`
--

LOCK TABLES `tblattendance_282` WRITE;
/*!40000 ALTER TABLE `tblattendance_282` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_282` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_296`
--

DROP TABLE IF EXISTS `tblattendance_296`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_296` (
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
-- Dumping data for table `tblattendance_296`
--

LOCK TABLES `tblattendance_296` WRITE;
/*!40000 ALTER TABLE `tblattendance_296` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_296` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_298`
--

DROP TABLE IF EXISTS `tblattendance_298`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_298` (
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
-- Dumping data for table `tblattendance_298`
--

LOCK TABLES `tblattendance_298` WRITE;
/*!40000 ALTER TABLE `tblattendance_298` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_298` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_300`
--

DROP TABLE IF EXISTS `tblattendance_300`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_300` (
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
-- Dumping data for table `tblattendance_300`
--

LOCK TABLES `tblattendance_300` WRITE;
/*!40000 ALTER TABLE `tblattendance_300` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_300` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_416`
--

DROP TABLE IF EXISTS `tblattendance_416`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_416` (
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
-- Dumping data for table `tblattendance_416`
--

LOCK TABLES `tblattendance_416` WRITE;
/*!40000 ALTER TABLE `tblattendance_416` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_416` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_420`
--

DROP TABLE IF EXISTS `tblattendance_420`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_420` (
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
-- Dumping data for table `tblattendance_420`
--

LOCK TABLES `tblattendance_420` WRITE;
/*!40000 ALTER TABLE `tblattendance_420` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_420` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_423`
--

DROP TABLE IF EXISTS `tblattendance_423`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_423` (
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
-- Dumping data for table `tblattendance_423`
--

LOCK TABLES `tblattendance_423` WRITE;
/*!40000 ALTER TABLE `tblattendance_423` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_423` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
-- Table structure for table `tblattendance_430`
--

DROP TABLE IF EXISTS `tblattendance_430`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblattendance_430` (
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
-- Dumping data for table `tblattendance_430`
--

LOCK TABLES `tblattendance_430` WRITE;
/*!40000 ALTER TABLE `tblattendance_430` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblattendance_430` ENABLE KEYS */;
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
  `p6` tinyint DEFAULT NULL
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
INSERT INTO `tblgateconfigmaster` VALUES (1,1513,867106031377,'Trackpworld',123456789987,'192.168.0.112','ACT102640921626','192.168.0.113','127.0.0.1','6764567',12.183999061584473,78.54566955566406,0,'2023-11-06 15:58:56.000000'),(2,1006,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:02.000000'),(3,1002,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(4,1005,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:56.000000'),(5,1004,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:55:18.000000'),(6,1003,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000'),(7,1001,12345678901234,'singasandra',98765432101232,'192.168.0.1','78946546484654','127.0.0.1','0.0.0.0','1234',12.183999061584473,78.55567169189453,0,'2023-11-02 15:53:40.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff_23234`
--

LOCK TABLES `tblstaff_23234` WRITE;
/*!40000 ALTER TABLE `tblstaff_23234` DISABLE KEYS */;
INSERT INTO `tblstaff_23234` VALUES (1,'2023-11-03 04:54:58',0,'1513'),(2,'2023-11-06 04:54:58',0,'1513'),(3,'2023-11-06 04:54:58',1,'1513');
/*!40000 ALTER TABLE `tblstaff_23234` ENABLE KEYS */;
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

-- Dump completed on 2023-11-07 11:19:31
