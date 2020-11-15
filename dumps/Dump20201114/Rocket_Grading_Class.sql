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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 21:11:50
