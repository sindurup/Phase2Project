-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: academy
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (1,'Admin','admin123');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Class 1'),(2,'Class 2'),(3,'Class 3'),(4,'Class 4'),(5,'Class 5'),(6,'Class 6'),(7,'Class 7'),(8,'Class 8'),(9,'Class 9'),(10,'Class 10');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_subjects`
--

DROP TABLE IF EXISTS `class_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `sub_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId_idx` (`class_id`),
  KEY `subId1_idx` (`sub_id`),
  KEY `techId_idx` (`teacher_id`),
  CONSTRAINT `classId` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  CONSTRAINT `subId1` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`),
  CONSTRAINT `techId` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_subjects`
--

LOCK TABLES `class_subjects` WRITE;
/*!40000 ALTER TABLE `class_subjects` DISABLE KEYS */;
INSERT INTO `class_subjects` VALUES (1,1,1,NULL),(2,1,2,NULL),(3,1,4,NULL),(4,1,8,NULL),(5,1,9,NULL),(6,2,1,NULL),(7,2,2,NULL),(8,2,4,NULL),(9,2,5,NULL),(10,2,8,NULL),(11,2,9,NULL),(12,3,1,NULL),(13,3,2,NULL),(14,3,3,NULL),(15,3,4,NULL),(16,3,5,NULL),(17,3,8,NULL),(18,3,9,NULL),(19,4,1,NULL),(20,4,2,NULL),(21,4,3,NULL),(22,4,4,NULL),(23,4,5,NULL),(24,4,6,NULL),(25,4,8,NULL),(26,4,9,NULL),(27,5,1,NULL),(28,5,2,NULL),(29,5,3,NULL),(30,5,4,NULL),(31,5,5,NULL),(32,5,6,NULL),(33,5,8,NULL),(34,5,9,NULL),(35,6,1,NULL),(36,6,1,NULL),(37,6,2,NULL),(38,6,4,NULL),(39,6,5,NULL),(40,6,6,NULL),(41,6,8,NULL),(42,6,9,NULL),(43,6,7,NULL),(44,6,10,NULL),(45,6,11,NULL),(46,7,1,NULL),(47,7,2,NULL),(48,7,4,NULL),(49,7,5,NULL),(50,7,6,NULL),(51,7,7,NULL),(52,7,9,NULL),(53,7,10,NULL),(54,7,11,NULL),(56,8,1,NULL),(57,8,2,NULL),(58,8,3,NULL),(59,8,4,NULL),(60,8,12,NULL),(61,8,6,NULL),(62,8,7,NULL),(63,8,9,NULL),(64,8,10,NULL),(65,8,11,NULL),(66,9,1,NULL),(67,9,2,NULL),(68,9,3,NULL),(69,9,4,NULL),(70,9,6,NULL),(71,9,7,NULL),(72,9,9,NULL),(73,9,11,NULL),(74,9,12,NULL),(75,10,1,NULL),(76,10,2,NULL),(77,10,3,NULL),(78,10,4,NULL),(79,10,6,NULL),(80,10,7,NULL),(81,10,9,NULL),(82,10,11,NULL),(83,10,12,NULL),(84,7,3,NULL),(85,7,8,NULL);
/*!40000 ALTER TABLE `class_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teachers`
--

DROP TABLE IF EXISTS `class_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `sub_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classID1_idx` (`class_id`),
  KEY `subID2_idx` (`sub_id`),
  KEY `teacherID_idx` (`teacher_id`),
  CONSTRAINT `classID1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  CONSTRAINT `subID2` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`),
  CONSTRAINT `teacherID` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teachers`
--

LOCK TABLES `class_teachers` WRITE;
/*!40000 ALTER TABLE `class_teachers` DISABLE KEYS */;
INSERT INTO `class_teachers` VALUES (1,1,1,1),(2,1,2,2),(3,1,4,4),(4,1,8,8),(5,1,9,9),(6,2,1,1),(7,2,2,2),(8,2,4,4),(9,2,5,5),(10,2,8,8),(11,2,9,9),(12,3,1,1),(13,3,2,2),(14,3,3,3),(15,3,4,4),(16,3,5,5),(17,3,8,8),(18,3,9,9),(19,4,1,1),(20,4,2,2),(21,4,3,3),(22,4,4,4),(23,4,5,5),(24,4,6,6),(25,4,8,9),(26,4,9,9),(27,5,1,1),(28,5,2,2),(29,5,3,3),(30,5,4,4),(31,5,5,5),(32,5,6,6),(33,5,8,9),(34,5,9,9),(35,6,1,1),(36,6,2,2),(37,6,3,3),(38,6,4,4),(39,6,5,5),(40,6,6,6),(41,6,7,7),(42,6,8,8),(43,6,9,9),(44,6,10,10),(45,6,11,11),(46,7,1,1),(47,7,2,2),(48,7,3,3),(49,7,4,4),(50,7,5,5),(51,7,6,6),(52,7,7,7),(53,7,8,8),(54,7,9,9),(55,7,10,10),(56,7,11,11),(57,8,1,13),(58,8,2,14),(59,8,3,15),(60,8,4,16),(61,8,12,12),(62,8,6,19),(63,8,7,17),(64,8,8,8),(65,8,9,18),(66,8,10,10),(67,8,11,11),(68,9,1,13),(69,9,2,14),(70,9,3,15),(71,9,4,16),(72,9,12,12),(73,9,6,19),(74,9,7,17),(75,9,9,18),(76,9,11,11),(77,10,1,13),(78,10,2,14),(79,10,3,15),(80,10,4,16),(81,10,12,12),(82,10,6,19),(83,10,7,17),(84,10,9,18),(85,10,11,11);
/*!40000 ALTER TABLE `class_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classID2_idx` (`class_id`),
  CONSTRAINT `classID2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Aarav','Nara',1),(2,'Aarna','Indur',1),(3,'Biba','Singh',1),(4,'Aafra','Khan',1),(5,'Chetan','Kumar',1),(6,'Daniel','Peter',1),(7,'Kim','Peter',1),(8,'Mrinal','Kaur',1),(9,'Neha','Agarwal',1),(10,'Swetha','Kumar',1),(11,'Anoushka','Karan',2),(12,'Indu','Singh',2),(13,'Chirag','Sharma',2),(14,'Farah','Sajjad',2),(15,'Namrata','Kumar',2),(16,'Arjun','Ram',2),(17,'Kett','Peter',2),(18,'Aliya','Kaur',2),(19,'Nameesha','Agarwal',2),(20,'Srivani','Kumar',2),(21,'Aakash','Kunj',3),(22,'Radhika','Singh',3),(23,'Pavithra','Shukla',3),(24,'Ram','Naren',3),(25,'Anu','Pillai',3),(26,'Vaishnavi','Patel',3),(27,'Caterine','Paul',3),(28,'Naima','Sharma',3),(29,'Nain','Kumar',3),(30,'Mishika','Patel',3),(31,'Marry','Katt',3),(32,'Joseph','Paul',3),(33,'Minna','Agarwal',3),(34,'Pranav','Kumar',3),(35,'Aadhya','Kumar',4),(36,'Anil','Sharma',4),(37,'Madhusha','Pillai',4),(38,'Vaishnavi','Shukla',4),(39,'Andrew','Joseph',4),(40,'Margarita','Wilson',4),(41,'Shimmy','Kumar',4),(42,'Krishav','Patel',4),(43,'Anoushka','Kapoor',4),(44,'Shivani','Kumar',4),(45,'Rana','Agarwal',4),(46,'Deepthi','Kumar',4),(47,'Aaradhana','Kapoor',5),(48,'Aishwarya','Sharma',5),(49,'Aahan','Gupta',5),(50,'Varun','Shukla',5),(51,'Marry','Joseph',5),(52,'Margarita','Paul',5),(53,'Latha','Kumar',5),(54,'Isha','Singh',5),(55,'Bincy','Kapoor',5),(56,'Bindiya','Kumar',5),(57,'Deepal','Agarwal',5),(58,'Indrani','Sharma',5),(59,'Amitabh','Sharma',6),(60,'Shama','Shukla',6),(61,'Kajal','Gupta',6),(62,'Aarav','Shukla',6),(63,'Kett','Joseph',6),(64,'John','Paul',6),(65,'Lalitha','Singh',6),(66,'Mary','Robert',6),(67,'Sheela','Kapoor',6),(68,'Bindu','Kumar',6),(69,'Emily','Steven',6),(70,'Edward','George',6),(71,'Aadhya','Kaur',6),(72,'Sheetal','Kumar',6),(73,'Arnab','Sharma',7),(74,'Vinay','Shukla',7),(75,'Kevin','Carol',7),(76,'Kim','Robert',7),(77,'Kiran','Kumar',7),(78,'Sidharth','Singh',7),(79,'Manju','Singh',7),(80,'Aarav','Singh',7),(81,'Amitoj','Kapoor',7),(82,'Sharath','Kumar',7),(83,'Meena','Sharma',7),(84,'Kiranmai','Kaur',7),(85,'Aahana','Kapoor',7),(86,'Soni','Kumar',7),(87,'Vidhya','Solanki',7),(88,'Apoorva','Karan',8),(89,'Shravan','Shukla',8),(90,'Sandra','Mark',8),(91,'Betty','Robert',8),(92,'Anup','Kumar',8),(93,'Sehan','Singh',8),(94,'Ihan','Shah',8),(95,'Imran','Sheik',8),(96,'Rishi','Sharma',8),(97,'Shiv','Kumar',8),(98,'Naina','Sharma',8),(99,'Aashu','Kapoor',8),(100,'Aditi','Kapoor',8),(101,'Taruna','Kumar',8),(102,'Neeta','Singh',8),(103,'Ayushman','Karan',9),(104,'Ranveer','Shukla',9),(105,'Amy','Gary',9),(106,'AnnaStephen','Robert',9),(107,'Arnab','Kumar',9),(108,'Ashwith','Singh',9),(109,'Iman','Sajjad',9),(110,'Aarna','Nara',9),(111,'Priya','Sharma',9),(112,'Ramya','Kumar',9),(113,'Navin','Sharma',9),(114,'Kritharth','Kapoor',9),(115,'Raksha','Kapoor',9),(116,'Haritha','Kumar',9),(117,'Teena','Kumar',10),(118,'Neeta','Jain',10),(119,'Sohani','Kapoor',10),(120,'Larry','Robert',10),(121,'Brenda','Larry',10),(122,'Rahul','Singh',10),(123,'Parveen','Sajjad',10),(124,'Prathap','Singh',10),(125,'Priya','Nambiar',10),(126,'Keerthi','Kumar',10),(127,'Trisha','Sharma',10),(128,'Hana','Shah',10),(129,'Simran','Vanasi',10),(130,'Shamitha','Kumar',10);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `sub_id` int NOT NULL,
  `sub_name` varchar(45) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'English'),(2,'Mathematics'),(3,'Social'),(4,'Science'),(5,'DigitalLiteracy'),(6,'French'),(7,'Hindi'),(8,'PE'),(9,'Activity'),(10,'Dance'),(11,'Art'),(12,'Computers');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Raksha','Sinha'),(2,'Yash','Solanki'),(3,'Masuma','Sajjad'),(4,'Purvi','Kapoor'),(5,'Simran','Bhatt'),(6,'Naysha','Kumar'),(7,'Bhoomi','Patel'),(8,'Shivansh','Kumar'),(9,'Aditi','Kaur'),(10,'Marry','D\'Souja'),(11,'Archana','Pandey'),(12,'Peter','Mark'),(13,'Anna','Wilson'),(14,'Shamita','Kumar'),(15,'Ayan','Gupta'),(16,'Sehan','Khan'),(17,'Hana','Sheik'),(18,'Tejasvini','Kumar'),(19,'Daniel','Dupont');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'academy'
--
/*!50003 DROP PROCEDURE IF EXISTS `getStudentList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentList`(IN id INT)
BEGIN

set @a:=0;
select @a:=@a+1 sno,first_name,last_name from students  where class_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStudentList1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentList1`(IN id INT,OUT Class VARCHAR(45),OUT FirstName VARCHAR(45),OUT LastName VARCHAR(45),OUT Sub INT)
BEGIN
select class.class,students.first_name,students.last_name from class
 inner join  
 students  on class.id=students.class_id 
 
 where class.id=id;
 
 select class_subjects.sub_id from class_subjects
  
 where class.id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getsubjectsList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getsubjectsList`(IN id int)
BEGIN
set @a:=0;
select @a:=@a+1 sno,s.sub_name,t.first_name,t.last_name FROM  class_teachers cs
join subjects s
on cs.sub_id=s.sub_id
join teachers t
on cs.teacher_id=t.id

where cs.class_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
set @a:=0;
select @a:=@a+1 sno,s.first_name,s.last_name,cs.sub_id,cs.teacher_id

 from students s,class_teachers cs  where class_id=id;
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

-- Dump completed on 2021-10-02  5:46:24
