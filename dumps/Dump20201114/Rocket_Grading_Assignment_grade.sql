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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 21:11:49
