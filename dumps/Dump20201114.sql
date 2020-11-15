CREATE DATABASE  IF NOT EXISTS `Rocket_Grading` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Rocket_Grading`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Rocket_Grading
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Assignment`
--

DROP TABLE IF EXISTS `Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assignment` (
  `Assignment_Id` int NOT NULL AUTO_INCREMENT,
  `Assignment_Name` varchar(45) NOT NULL,
  `Assignment_Type` varchar(45) NOT NULL,
  `Assignment_Description` varchar(45) NOT NULL,
  `Assignment_Weight` int DEFAULT NULL,
  `Class_Id` int NOT NULL,
  PRIMARY KEY (`Assignment_Id`),
  UNIQUE KEY `Assignment_Id_UNIQUE` (`Assignment_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignment`
--

LOCK TABLES `Assignment` WRITE;
/*!40000 ALTER TABLE `Assignment` DISABLE KEYS */;
INSERT INTO `Assignment` VALUES (1,'test','test','test',14,0),(2,'test','test','test',30,0),(3,'test','test','test',30,0),(4,'test2','test2','test2',30,0),(5,'test3','test3','test3',12,0),(6,'test 4','test 4','test 4',12,0),(7,'test ','Tests','test 1',100,0),(8,'exam','Test','final exam',15,0),(9,'exam1','Test','final exam',15,0),(10,'math','Test','math test',5,0),(11,'dsc','Presentation','dc',1,0),(12,'sdfw','Assignment','werf',1,0),(13,'reg','Assignment','rg',1,0),(14,'fdcv','Assignment','dc',1,0),(15,'water','Presentation','df',1,0),(16,'assignment id','Assignment','id',1,0),(17,'Physics test','Test','reletivity theory test ',2,0),(18,'English Presentation','Presentation','What do you know about Gatsby?',4,0),(19,'whatever','Assignment','write whatever',2,0),(20,'kjbk','Test','kbk',11,0),(21,'chemistry exam ','Test','sdc',15,0),(22,'vleknd','Test','dev',3,0),(23,'foods','Test','nutritions',10,0),(24,'foods','Assignment','make bread',3,0),(25,'nutrition','Assignment','make pasta',1,0),(26,'spelling bee','Test','correctly and fast',10,24),(27,'spell contest','Test','sfdv',1,31),(28,'Another example','Assignment','exmaple',2,31),(29,'AI Assignment','Assignment','ai Assignment',4,32),(30,'test ','Test','test 1',2,33),(31,'test1','Test','[lz work',1,34),(32,'present','Presentation','ksdnv',12,34),(33,'why does test not work','Test','sdv',1,34),(34,'newAssignment','Assignment','new',2,24),(35,'magic spelling bee','Assignment','who can spell the fastest ',50,35),(36,'sample','Presentation','shakespeare',2,35),(37,'test ','Assignment','test ',10,37),(38,'magic show','Presentation','introduce your magic ',1,37),(39,'assiignment 1','Assignment','assignment ',1,38),(40,'Presentation','Presentation','wdvcefdcv',10,38),(41,'3K run','Assignment','who can run fast?',15,40),(42,'health and wellbeing ','Presentation','health and wellbeing ',5,40),(43,'3K run','Presentation','dsv',1,31),(44,'10k run','Assignment','run 10k',10,41),(45,'assignment 1223','Assignment','dsf',10,42),(46,'presentation 1234','Presentation','sdkjnckjsbd',10,42),(47,'dsvjs','Presentation','wdfw',1,42),(48,'pppp','Presentation','pppp',1,42),(49,'new presentation 1','Presentation','sfdvetget',12,42),(50,'sdvef','Presentation','dfvefv',12,41),(51,'sing','Assignment','dsvfgd',10,24),(52,'present1','Presentation','dfvd',10,24),(53,'presentation 2','Presentation','uhsdbvpew',20,24);
/*!40000 ALTER TABLE `Assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assignment_expectation`
--

DROP TABLE IF EXISTS `Assignment_expectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assignment_expectation` (
  `Expectation_id` int NOT NULL AUTO_INCREMENT,
  `Assignment_grade_id` int DEFAULT NULL,
  `Expectation_grade` varchar(45) DEFAULT NULL,
  `Expectation_name` varchar(45) DEFAULT NULL,
  `Expectation_description` varchar(45) DEFAULT NULL,
  `Assignment_id` int NOT NULL,
  PRIMARY KEY (`Expectation_id`),
  UNIQUE KEY `assignment_grade_id_UNIQUE` (`Expectation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignment_expectation`
--

LOCK TABLES `Assignment_expectation` WRITE;
/*!40000 ALTER TABLE `Assignment_expectation` DISABLE KEYS */;
INSERT INTO `Assignment_expectation` VALUES (1,2,NULL,'test','test',0),(2,NULL,NULL,'test2.1','test2.1',0),(3,NULL,NULL,'test2.2','test2.2',0),(4,NULL,NULL,'test 4','',0),(5,1,'5+','id','1',16),(6,10,'3','clear description','',17),(7,10,'8','correct knowledge','',17),(8,NULL,NULL,'oral','',18),(9,NULL,NULL,'content','',18),(10,NULL,NULL,'grammer','',19),(11,NULL,NULL,'flow','',19),(12,NULL,NULL,'wdc','',20),(13,NULL,NULL,'we','',20),(14,NULL,NULL,'unit 1','',21),(15,NULL,NULL,'unit 2','',21),(16,NULL,NULL,'wscd','',22),(17,NULL,NULL,'wdvf','',22),(18,18,NULL,'taste','',24),(19,19,NULL,'taste','',24),(20,18,NULL,'smell','',24),(21,19,NULL,'smell','',24),(22,20,'1','taste1','',25),(23,21,'3+','taste1','',25),(24,20,'4','smell','',25),(25,21,'1+','smell','',25),(26,22,'4++','speed','how fast ',26),(27,23,'2+','speed','how fast ',26),(28,24,'2+','speed','how fast ',26),(29,25,NULL,'speed','how fast ',26),(30,22,'4++','correctness','how right',26),(31,23,'2+','correctness','how right',26),(32,24,'4+','correctness','how right',26),(33,25,NULL,'correctness','how right',26),(34,26,'2+','efv','',27),(35,27,'3+','efv','',27),(36,28,NULL,'efv','',27),(37,26,'2+','er','',27),(38,27,'2/2+','er','',27),(39,28,NULL,'er','',27),(40,29,'4/4-','sample','sample1',28),(41,30,'2-','sample','sample1',28),(42,29,'3','sample2','sample2',28),(43,30,'1','sample2','sample2',28),(44,31,'2+','good content','',29),(45,32,NULL,'good content','',29),(46,33,NULL,'good content','',29),(47,31,'1','good layout','',29),(48,32,NULL,'good layout','',29),(49,33,NULL,'good layout','',29),(50,34,NULL,'tt','',30),(51,35,NULL,'tt','',30),(52,36,NULL,'tt','',30),(53,37,NULL,'tt','',30),(54,38,'2','sample','',31),(55,39,'2+','sample','',31),(56,38,'2','sample2','',31),(57,39,'4','sample2','',31),(58,38,NULL,'wdv','',32),(59,39,NULL,'wdv','',32),(60,40,'2+','wdv','',32),(61,41,'2+','wdv','',32),(62,38,NULL,'sd','dc',33),(63,39,NULL,'sd','dc',33),(64,40,NULL,'sd','dc',33),(65,41,NULL,'sd','dc',33),(66,42,NULL,'sd','dc',33),(67,43,NULL,'sd','dc',33),(68,44,'2','1','',34),(69,45,'4+','1','',34),(70,46,'4++','1','',34),(71,47,NULL,'1','',34),(72,44,'3','2','',34),(73,45,'4+','2','',34),(74,46,'2+','2','',34),(75,47,NULL,'2','',34),(76,48,'2','ex1','',35),(77,49,NULL,'ex1','',35),(78,50,NULL,'ex1','',35),(79,48,'3','ex2','sample',35),(80,49,NULL,'ex2','sample',35),(81,50,NULL,'ex2','sample',35),(82,48,NULL,'listening','',36),(83,49,NULL,'listening','',36),(84,50,NULL,'listening','',36),(85,51,'2','listening','',36),(86,52,'3','listening','',36),(87,53,NULL,'listening','',36),(88,48,NULL,'reading','',36),(89,49,NULL,'reading','',36),(90,50,NULL,'reading','',36),(91,51,'2','reading','',36),(92,52,'3','reading','',36),(93,53,NULL,'reading','',36),(94,54,'2+','c1','',37),(95,55,'2+','c1','',37),(96,56,NULL,'c1','',37),(97,54,'1+','c2','c2',37),(98,55,'4+','c2','c2',37),(99,56,NULL,'c2','c2',37),(100,54,NULL,'f1','',38),(101,55,NULL,'f1','',38),(102,56,NULL,'f1','',38),(103,57,'2','f1','',38),(104,58,NULL,'f1','',38),(105,59,NULL,'f1','',38),(106,54,NULL,'f2','',38),(107,55,NULL,'f2','',38),(108,56,NULL,'f2','',38),(109,57,'3','f2','',38),(110,58,NULL,'f2','',38),(111,59,NULL,'f2','',38),(112,60,'2','c1','',39),(113,61,'4+','c1','',39),(114,62,NULL,'c1','',39),(115,63,NULL,'c1','',39),(116,60,'3','c2 ','optional',39),(117,61,'4++','c2 ','optional',39),(118,62,NULL,'c2 ','optional',39),(119,63,NULL,'c2 ','optional',39),(120,60,NULL,'sdc','dc',40),(121,61,NULL,'sdc','dc',40),(122,62,NULL,'sdc','dc',40),(123,63,NULL,'sdc','dc',40),(124,64,'1','sdc','dc',40),(125,65,NULL,'sdc','dc',40),(126,66,NULL,'sdc','dc',40),(127,67,NULL,'sdc','dc',40),(128,68,'2','speed','',41),(129,69,'4+','speed','',41),(130,70,NULL,'speed','',41),(131,68,'3','sportsmanship ','',41),(132,69,'2','sportsmanship ','',41),(133,70,NULL,'sportsmanship ','',41),(134,68,NULL,'c1','content',42),(135,69,NULL,'c1','content',42),(136,70,NULL,'c1','content',42),(137,71,'2+','c1','content',42),(138,72,NULL,'c1','content',42),(139,73,NULL,'c1','content',42),(140,68,NULL,'c2','layout',42),(141,69,NULL,'c2','layout',42),(142,70,NULL,'c2','layout',42),(143,71,'2+','c2','layout',42),(144,72,NULL,'c2','layout',42),(145,73,NULL,'c2','layout',42),(146,74,NULL,'sdv','',43),(147,75,NULL,'sdv','',43),(148,74,NULL,'','',43),(149,75,NULL,'','',43),(150,76,'2+','c1','speed',44),(151,77,NULL,'c1','speed',44),(152,76,'3+','c2','',44),(153,77,NULL,'c2','',44),(154,78,'4+','c1','expectatin',45),(155,79,'3+','c1','expectatin',45),(156,80,'1+','c1','expectatin',45),(157,78,'3+','c2','',45),(158,79,'2+/3-','c2','',45),(159,80,'R','c2','',45),(160,81,'2+','c1','sjhdbcskj',46),(161,82,NULL,'c1','sjhdbcskj',46),(162,81,'3+','c2','skljcwp[d',46),(163,82,NULL,'c2','skljcwp[d',46),(164,81,NULL,'we','',47),(165,82,NULL,'we','',47),(166,83,'1','we','',47),(167,84,NULL,'we','',47),(168,81,NULL,'are','',47),(169,82,NULL,'are','',47),(170,83,'2','are','',47),(171,84,NULL,'are','',47),(172,81,NULL,'good','',47),(173,82,NULL,'good','',47),(174,83,'3','good','',47),(175,84,NULL,'good','',47),(176,85,'3+','A1','',48),(177,86,NULL,'A1','',48),(178,85,'3+','B3','',48),(179,86,NULL,'B3','',48),(180,87,'4','E1','',49),(181,88,NULL,'E1','',49),(182,87,'4','E2','with content',49),(183,88,NULL,'E2','with content',49),(184,89,'2+','b1','',50),(185,90,NULL,'b1','',50),(186,89,'4','b2','',50),(187,90,NULL,'b2','',50),(188,91,'2+','voice','',51),(189,92,NULL,'voice','',51),(190,93,NULL,'voice','',51),(191,94,NULL,'voice','',51),(192,91,'3+','skill','',51),(193,92,NULL,'skill','',51),(194,93,NULL,'skill','',51),(195,94,NULL,'skill','',51),(196,95,'2+','fdve1','',52),(197,96,NULL,'fdve1','',52),(198,97,NULL,'fdve1','',52),(199,98,NULL,'fdve1','',52),(200,95,'3+','cwrev2','',52),(201,96,NULL,'cwrev2','',52),(202,97,NULL,'cwrev2','',52),(203,98,NULL,'cwrev2','',52),(204,99,'1+','Content ','',53),(205,100,NULL,'Content ','',53),(206,101,NULL,'Content ','',53),(207,102,NULL,'Content ','',53),(208,99,'3','Oral','',53),(209,100,NULL,'Oral','',53),(210,101,NULL,'Oral','',53),(211,102,NULL,'Oral','',53);
/*!40000 ALTER TABLE `Assignment_expectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assignment_grade`
--

DROP TABLE IF EXISTS `Assignment_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assignment_grade` (
  `Assignment_grade_id` int NOT NULL AUTO_INCREMENT,
  `Assignment_id` int NOT NULL,
  `Student_id` int NOT NULL,
  `Assignment_grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Assignment_grade_id`),
  UNIQUE KEY `Assignment_grade_id_UNIQUE` (`Assignment_grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignment_grade`
--

LOCK TABLES `Assignment_grade` WRITE;
/*!40000 ALTER TABLE `Assignment_grade` DISABLE KEYS */;
INSERT INTO `Assignment_grade` VALUES (1,16,1,'2'),(2,16,1,'4+'),(3,4,1,NULL),(4,10,1,NULL),(5,14,1,NULL),(6,9,1,NULL),(7,14,1,NULL),(8,16,1,NULL),(9,8,1,NULL),(10,17,1,'6'),(11,17,3,NULL),(12,21,1,NULL),(13,21,3,NULL),(14,22,1,NULL),(15,22,3,NULL),(16,23,1,NULL),(17,23,3,NULL),(18,24,1,NULL),(19,24,3,NULL),(20,25,1,'3'),(21,25,3,'3'),(22,26,1,'4++'),(23,26,6,'2+'),(24,26,14,'3+/4-'),(25,26,13,NULL),(26,27,1,'2+'),(27,27,3,'3+'),(28,27,6,NULL),(29,28,1,'3'),(30,28,3,'2'),(31,29,6,'2'),(32,29,14,NULL),(33,29,13,NULL),(34,30,1,NULL),(35,30,6,NULL),(36,30,13,NULL),(37,30,14,NULL),(38,31,1,'2'),(39,31,6,'3+'),(40,32,1,'2+'),(41,32,6,'2+'),(42,33,1,NULL),(43,33,6,NULL),(44,34,1,'2+'),(45,34,6,'4+'),(46,34,14,'3+'),(47,34,13,NULL),(48,35,2,NULL),(49,35,3,NULL),(50,35,6,NULL),(51,36,2,'2'),(52,36,3,'3'),(53,36,6,NULL),(54,37,1,'2'),(55,37,6,'3+'),(56,37,14,NULL),(57,38,1,'2+'),(58,38,6,NULL),(59,38,14,NULL),(60,39,1,'2+'),(61,39,6,'4++'),(62,39,14,NULL),(63,39,13,NULL),(64,40,1,'1'),(65,40,6,NULL),(66,40,14,NULL),(67,40,13,NULL),(68,41,1,'2+'),(69,41,13,'3+'),(70,41,14,NULL),(71,42,1,'2+'),(72,42,13,NULL),(73,42,14,NULL),(74,43,1,NULL),(75,43,3,NULL),(76,44,1,'4+'),(77,44,14,'4+'),(78,45,1,'4'),(79,45,13,'4/4+'),(80,45,14,'R'),(81,46,13,'3-'),(82,46,14,NULL),(83,47,13,'2'),(84,47,14,NULL),(85,48,13,'4'),(86,48,14,NULL),(87,49,13,'4+'),(88,49,14,NULL),(89,50,1,'3+'),(90,50,14,NULL),(91,51,1,'3'),(92,51,6,NULL),(93,51,14,NULL),(94,51,13,NULL),(95,52,1,'3'),(96,52,6,NULL),(97,52,14,NULL),(98,52,13,NULL),(99,53,1,'2+'),(100,53,6,NULL),(101,53,14,NULL),(102,53,13,NULL);
/*!40000 ALTER TABLE `Assignment_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Class` (
  `Class_Id` int NOT NULL AUTO_INCREMENT,
  `Class_Name` varchar(45) NOT NULL,
  `User_Id` int NOT NULL,
  `Class_code` varchar(45) NOT NULL,
  PRIMARY KEY (`Class_Id`),
  UNIQUE KEY `Class_Id_UNIQUE` (`Class_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES (1,'computer science 101',0,'cs101'),(2,'computer science 101',0,'cs101'),(3,'computer science 101',0,'cs101'),(4,'computer science 101',0,'cs101'),(5,'computer science 101',0,'cs101'),(6,'computer science 101',0,'cs101'),(7,'computer science 101',0,'cs101'),(8,'computer science 101',0,'cs101'),(9,'math',0,'ldksnc'),(10,'math',0,'ksjfnv'),(11,'math',0,'ksjfnv'),(12,'math',12,'maf-4u'),(13,'Physcis',0,'SPH4UR-01'),(14,'physics',0,'SPH4U'),(15,'physics',0,'SPH4U'),(16,'physcis',0,'sph4U-02'),(17,'calculus',0,'MCV4U'),(18,'english',0,'abcde'),(19,'English',12,'ENG4U'),(20,'Chemistry',12,'SCH4U'),(21,'Chemistry ',12,'SCH4U'),(22,'Test',12,'test1'),(23,'magic',17,'magic101'),(24,'Spell',17,'spell101'),(25,'Science',17,'Science 234'),(26,'plz work',17,'please work'),(27,'enginnering',17,'ldsnc'),(28,'class',17,'new class 2020'),(29,'vevadsv',12,'dcvds'),(30,'new class',17,'new class 2021'),(31,'sdcsdsdc',17,'kedcvn'),(32,'comp eng',19,'computer engineering 101'),(33,'comp eng',20,'comp eng'),(34,'class',21,'class1'),(35,'Magic',22,'Magic 101'),(36,'magic',21,'magic 101'),(37,'sdvdv',21,'sdvs'),(38,'english class',22,'english class'),(39,'Magic',23,'magic 101'),(40,'gym class',23,'gym '),(41,'computer science',17,'ics4U-101'),(42,'classsssss',17,'classsssss');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enrollment`
--

DROP TABLE IF EXISTS `Enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Enrollment` (
  `Enroll_id` int NOT NULL AUTO_INCREMENT,
  `Class_id` int NOT NULL,
  `Student_id` int NOT NULL,
  PRIMARY KEY (`Enroll_id`),
  UNIQUE KEY `Enroll_id_UNIQUE` (`Enroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enrollment`
--

LOCK TABLES `Enrollment` WRITE;
/*!40000 ALTER TABLE `Enrollment` DISABLE KEYS */;
INSERT INTO `Enrollment` VALUES (1,12,6),(5,0,3),(7,20,3),(9,21,2),(10,19,1),(11,19,10),(12,22,13),(13,22,14),(14,23,1),(15,23,2),(17,24,1),(18,24,6),(19,24,14),(21,26,1),(22,26,2),(23,26,3),(24,26,4),(25,26,5),(26,26,6),(27,26,7),(28,26,8),(29,26,9),(30,26,10),(31,26,11),(32,26,12),(33,26,13),(34,26,14),(35,26,2),(36,26,5),(37,26,8),(38,26,14),(39,27,1),(40,27,2),(41,27,14),(42,27,13),(43,28,1),(44,28,14),(45,28,13),(46,29,1),(47,29,3),(48,29,6),(49,30,1),(50,30,14),(51,30,13),(52,31,1),(53,31,3),(55,32,6),(56,32,14),(57,32,13),(58,33,1),(59,33,6),(60,33,13),(61,33,14),(62,34,1),(63,34,6),(65,35,2),(66,35,3),(67,35,6),(68,35,1),(69,35,6),(70,35,14),(71,37,1),(72,37,6),(73,37,14),(75,38,6),(76,38,14),(77,38,13),(78,35,1),(79,35,2),(80,35,6),(81,40,1),(82,40,13),(83,40,14),(84,41,1),(85,41,14),(87,42,13),(88,42,14);
/*!40000 ALTER TABLE `Enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_info`
--

DROP TABLE IF EXISTS `Student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_info` (
  `Student_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(45) NOT NULL,
  `Last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Student_id`),
  UNIQUE KEY `Student_id_UNIQUE` (`Student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_info`
--

LOCK TABLES `Student_info` WRITE;
/*!40000 ALTER TABLE `Student_info` DISABLE KEYS */;
INSERT INTO `Student_info` VALUES (1,'Dent','Stu'),(2,'Pu','Lucy'),(3,'Pu','Cook'),(4,'Pu','Cook'),(5,'Pu','cook'),(6,'Ian','Wang'),(7,'Dent','Stu'),(8,'Pu','Cook '),(9,'Dent','Stu'),(10,'Stu','Dent'),(11,'Dent','Stu'),(12,'Dent','Stu'),(13,'Sun','Dereck'),(14,'Lady','Gaga');
/*!40000 ALTER TABLE `Student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (9,'stu','dent','1'),(12,'lele','zhao','1'),(15,'charli','z','2'),(16,'luke','luke@gmail.com','1234'),(17,'cutie','cutie@hotmail.com','12'),(18,'app','app.com','12'),(19,'new2020','2020@gmail','12'),(20,'new 2020','dc','12'),(21,'prep','12','12'),(22,'demo','demo@gmail','12'),(23,'demo2','demo2@gmail.com','12');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Table`
--

DROP TABLE IF EXISTS `User_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Table` (
  `UserId` int NOT NULL DEFAULT '0',
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Table`
--

LOCK TABLES `User_Table` WRITE;
/*!40000 ALTER TABLE `User_Table` DISABLE KEYS */;
INSERT INTO `User_Table` VALUES (15,'charli'),(12,'lele'),(16,'luke'),(9,'stu');
/*!40000 ALTER TABLE `User_Table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 21:11:16
