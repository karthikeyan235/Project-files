-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.35

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
/*!50003 DROP PROCEDURE IF EXISTS `sproc_gate_notification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sproc_gate_notification`(id_string varchar(5000),start_time varchar(50), end_time varchar(50),opt int)
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
                    CALL sys.table_exists('school', tbl_name, @exists);
                    IF @exists = 'BASE TABLE' THEN 
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
                END IF;
			END WHILE id_loop;
    SELECT res;
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
		SET result = CONCAT(result, ifnull(r_no,'-'), ",", std_name, ",");
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
		SET result = CONCAT(result, ifnull(r_no,'-'), ",", std_name, ",", std_id, ",");
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
		SET result = CONCAT(result, IFNULL(r_no,'-'), ",", std_name, ",", std_id, ",");
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

-- Dump completed on 2023-12-25 15:16:04
