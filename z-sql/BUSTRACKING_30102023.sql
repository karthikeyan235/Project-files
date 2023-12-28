-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bustracking
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'app','0001_initial','2023-10-27 12:09:19.902125'),(2,'app','0002_routestop','2023-10-27 12:09:20.855100');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
-- Table structure for table `route_table`
--

DROP TABLE IF EXISTS `route_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `route_no` varchar(50) NOT NULL,
  `route_name` varchar(50) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `vts_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `route_no` (`route_no`),
  UNIQUE KEY `vehicle_no` (`vehicle_no`),
  UNIQUE KEY `vts_id` (`vts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_table`
--

LOCK TABLES `route_table` WRITE;
/*!40000 ALTER TABLE `route_table` DISABLE KEYS */;
INSERT INTO `route_table` VALUES (1,'2','Singasandra','KA01SS1008','1008');
/*!40000 ALTER TABLE `route_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackdata`
--

DROP TABLE IF EXISTS `trackdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VtsId` smallint DEFAULT NULL,
  `IMEInumber` varchar(15) DEFAULT NULL,
  `SignalStrength` tinyint DEFAULT NULL,
  `SWversion` decimal(2,1) DEFAULT NULL,
  `TRACK_Date` date DEFAULT NULL,
  `TRACK_Time` time DEFAULT NULL,
  `PacketType` varchar(20) DEFAULT NULL,
  `Latitude` decimal(11,8) DEFAULT NULL,
  `Longitude` decimal(11,8) DEFAULT NULL,
  `LatDirection` char(1) DEFAULT NULL,
  `LongDirection` char(1) DEFAULT NULL,
  `Speed` decimal(5,2) DEFAULT NULL,
  `RFIDtagCount` int DEFAULT NULL,
  `RFIDtagIDs` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackdata`
--

LOCK TABLES `trackdata` WRITE;
/*!40000 ALTER TABLE `trackdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bustracking'
--

--
-- Dumping routines for database 'bustracking'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetRouteData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRouteData`(IN p_route_no INT, IN p_date DATE)
BEGIN
    DECLARE v_vts_id INT;
    DECLARE v_table_name VARCHAR(255);
    
    SELECT vts_id INTO v_vts_id
    FROM route_table 
    WHERE route_no = p_route_no;
    
    SET v_table_name = CONCAT('TABLE_', v_vts_id, '_', DATE_FORMAT(p_date, '%Y%m%d'));
    
    SET @sql = CONCAT('SELECT * FROM ', v_table_name);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `route_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `route_Location`(IN p_route_no INT)
BEGIN
DECLARE v_vts_id INT;
DECLARE message VARCHAR(100);

-- SELECT * FROM route_stop WHERE route_no = p_route_no ORDER BY stop_no ASC ;--

SELECT vts_id INTO v_vts_id FROM route_table WHERE route_no = p_route_no;
  IF v_vts_id IS NOT NULL THEN
        SET message = 'Route number found in route_table';
    ELSE
        SET message = 'Route number not found in route_table';
    END IF;

    
SELECT VtsId,Latitude,Longitude,Speed FROM trackdata WHERE VtsId = v_vts_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sproc_vts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_vts`(

t_id varchar(45),
t_time varchar(45),
t_vtsid varchar(20),
t_Latitude float,
t_longitude float
)
BEGIN
DECLARE tbl_name VARCHAR(100);
DECLARE details VARCHAR(100);
DECLARE date1 VARCHAR(50);
DECLARE date2 VARCHAR(50);
DECLARE dt_count int;
DECLARE id varchar(45);
DECLARE evnt tinyint(1);

	IF EXISTS(SELECT * FROM school.tbl_studentdetails WHERE tag_id = t_id and enabled = 1) THEN
		SELECT student_id INTO id FROM school.tbl_studentdetails WHERE tag_id = t_id and enabled = 1;
		
        SET date1 = CONCAT(CURDATE(), " ",t_time);
		SET tbl_name = CONCAT('vts_student_', id);
	
        

		SET @sql = CONCAT('CREATE TABLE IF NOT EXISTS ', tbl_name, ' (
        id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        ts timestamp NOT NULL,
        vts_id varchar(20) not null,
        latitude float not null,
        longitude float not null);');
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

       
		SET @sql = CONCAT('insert into ', tbl_name, " (ts,vts_id,latitude,longitude) values ('",date1,"',",t_vtsid,",",t_Latitude,",",t_longitude,")");
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
/*!50003 DROP PROCEDURE IF EXISTS `sproc_vts-std-tag_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_vts-std-tag_id`(

t_id varchar(45),
t_time varchar(45),
t_vtsid varchar(20),
t_Latitude float,
t_longitude float
)
BEGIN
DECLARE tbl_name VARCHAR(100);
DECLARE details VARCHAR(100);
DECLARE date1 VARCHAR(50);
DECLARE date2 VARCHAR(50);
DECLARE dt_count int;
DECLARE id varchar(45);
DECLARE evnt tinyint(1);

	IF EXISTS(SELECT * FROM school.tbl_studentdetails WHERE tag_id = t_id and enabled = 1) THEN
		SELECT student_id INTO id FROM school.tbl_studentdetails WHERE tag_id = t_id and enabled = 1;
		
        SET date1 = CONCAT(CURDATE(), " ",t_time);
		SET tbl_name = CONCAT('vts_student_', id);
	
        

		SET @sql = CONCAT('CREATE TABLE IF NOT EXISTS ', tbl_name, ' (
        id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        ts timestamp NOT NULL,
        vts_id varchar(20) not null,
        latitude float not null,
        longitude float not null);');
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

       
		SET @sql = CONCAT('insert into ', tbl_name, " (ts,vts_id,latitude,longitude) values ('",date1,"',",t_vtsid,",",t_Latitude,",",t_longitude,")");
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
/*!50003 DROP PROCEDURE IF EXISTS `Track_live_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Track_live_data`(
    IN p_vtsid SMALLINT,
    IN p_imeinumber VARCHAR(15),
    IN p_signalstrength TINYINT,
    IN p_swversion DECIMAL(2,1),
    IN p_date DATE,
    IN p_time TIME,
    IN p_packettype VARCHAR(20),
    IN p_latitude DECIMAL(11,8),
    IN p_longitude DECIMAL(11,8),
    IN p_latdirection CHAR(1),
    IN p_longdirection CHAR(1),
    IN p_speed DECIMAL(5,2),
    IN p_rfidtagcount INT,
    IN p_rfidtagids TEXT
)
BEGIN
    DECLARE message VARCHAR(100);
    DECLARE table_1 VARCHAR(50);
    DECLARE existing_data INT;
    DECLARE check_table_stmt CURSOR FOR
    -- change the table_schema to the actual databasename--  table_schema = 'bustracking'
	SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'bustracking' AND table_name = @table_1;

   -- SET @table_1 = CONCAT('table_', p_vtsid);--
	SET @table_1 = CONCAT('table_', p_vtsid, '_', DATE_FORMAT(p_date, '%Y%m%d'));

    -- Check if the table exists
    OPEN check_table_stmt;
    FETCH check_table_stmt INTO existing_data;
    CLOSE check_table_stmt;

    -- Create the table if it doesn't exist
    IF existing_data = 0 THEN
        SET @create_data = CONCAT('CREATE TABLE IF NOT EXISTS ', @table_1, ' (
            id INT AUTO_INCREMENT PRIMARY KEY,
            vtsid SMALLINT ,
            imeinumber VARCHAR(15),
            signalstrength TINYINT,
            swversion DECIMAL(2,1),
            date DATE,
            time TIME,
            packettype VARCHAR(20),
            latitude DECIMAL(11,8),
            longitude DECIMAL(11,8),
            latdirection CHAR(1),
            longdirection CHAR(1),
            speed DECIMAL(5,2),
            rfidtagcount INT,
            rfidtagids TEXT
        )');
        PREPARE create_data_stmt FROM @create_data;
        EXECUTE create_data_stmt;
        DEALLOCATE PREPARE create_data_stmt;
    END IF;

    -- Dynamically construct and execute the INSERT statement
    SET @data_insert = CONCAT('INSERT INTO ', @table_1, ' (
        vtsid,
        imeinumber,
        signalstrength,
        swversion,
        date,
        time,
        packettype,
        latitude,
        longitude,
        latdirection,
        longdirection,
        speed,
        rfidtagcount,
        rfidtagids
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');
    
    SET @vtsid = p_vtsid;
    SET @imeinumber = p_imeinumber;
    SET @signalstrength = p_signalstrength;
    SET @swversion = p_swversion;
    SET @date = p_date;
    SET @time = p_time;
    SET @packettype = p_packettype;
    SET @latitude = p_latitude;
    SET @longitude = p_longitude;
    SET @latdirection = p_latdirection;
    SET @longdirection = p_longdirection;
    SET @speed = p_speed;
    SET @rfidtagcount = p_rfidtagcount;
    SET @rfidtagids = p_rfidtagids;
    
    PREPARE data_insert_stmt FROM @data_insert;
    EXECUTE data_insert_stmt USING @vtsid, @imeinumber, @signalstrength, @swversion, @date, @time, @packettype, @latitude, @longitude, @latdirection, @longdirection, @speed, @rfidtagcount, @rfidtagids;
    DEALLOCATE PREPARE data_insert_stmt;

    SET message = CONCAT('New table created/updated: ', table_1, ' and data inserted.');
    SELECT message;

    -- Check if the data already exists in the trackdata table
    IF EXISTS (SELECT * FROM trackdata WHERE VtsId = p_vtsid) THEN
        UPDATE trackdata 
        SET Latitude = p_latitude,
            Longitude = p_longitude,
            TRACK_Date = p_date,
            TRACK_Time = p_time,
            Speed = p_speed,
            LatDirection = p_latdirection,
            LongDirection = p_longdirection,
            RFIDtagCount = p_rfidtagcount,
            RFIDtagIDs = p_rfidtagids
        WHERE VtsId = p_vtsid;

        SET message = CONCAT('Track data updated successfully');
        SELECT message;
    ELSE 
        INSERT INTO trackdata (VtsId, IMEInumber, SignalStrength, SWversion, TRACK_Date, TRACK_Time, PacketType, Latitude, Longitude, LatDirection, LongDirection, Speed, RFIDtagCount, RFIDtagIDs)
        VALUES (p_vtsid, p_imeinumber, p_signalstrength, p_swversion, p_date, p_time, p_packettype, p_latitude, p_longitude, p_latdirection, p_longdirection, p_speed, p_rfidtagcount, p_rfidtagids);

        SET message = CONCAT('Track data inserted successfully');
        SELECT message;
    END IF;
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

-- Dump completed on 2023-10-30 11:26:50
