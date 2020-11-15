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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 21:11:49
