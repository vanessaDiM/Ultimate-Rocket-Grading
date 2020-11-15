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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 21:11:49
