-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cineclick
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `payment_id` int NOT NULL,
  `seat_id` int NOT NULL,
  `hall_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `showtimes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `showtimes_id` (`showtimes_id`),
  KEY `payment_id` (`payment_id`),
  KEY `seat_id` (`seat_id`),
  KEY `hall_id` (`hall_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`showtimes_id`) REFERENCES `showtimes` (`id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`),
  CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,450,'2025-11-17',2,3,1,5,3),(2,450,'2025-11-17',2,4,1,5,3),(3,450,'2025-11-17',2,5,1,5,3),(4,350,'2025-11-17',1,3,2,5,1),(5,350,'2025-11-17',1,4,2,5,1),(6,350,'2025-11-17',1,5,2,5,1),(7,350,'2025-11-17',1,6,2,5,1),(8,450,'2025-11-20',3,19,2,6,2),(9,450,'2025-11-20',3,20,2,6,2),(10,450,'2025-11-20',3,21,2,6,2),(11,350,'2025-11-20',4,5,3,3,7),(12,350,'2025-11-20',4,6,3,3,7),(13,350,'2025-11-20',5,6,5,1,1),(14,350,'2025-11-20',5,5,5,1,1),(15,350,'2025-11-20',6,29,2,5,7),(16,350,'2025-11-20',6,27,2,5,7),(17,350,'2025-11-20',6,30,2,5,7),(18,450,'2025-11-20',7,11,6,6,11),(19,450,'2025-11-20',7,12,6,6,11),(20,450,'2025-11-20',8,11,5,5,5),(21,450,'2025-11-20',8,12,5,5,5),(22,450,'2025-11-20',8,13,5,5,5),(23,450,'2025-11-20',8,14,5,5,5),(24,450,'2025-11-20',8,21,5,5,5),(25,450,'2025-11-20',8,22,5,5,5),(26,350,'2025-11-20',9,37,8,4,7),(27,350,'2025-11-20',9,38,8,4,7),(28,450,'2025-11-20',10,31,6,6,11),(29,450,'2025-11-20',10,32,6,6,11),(30,450,'2025-11-11',11,36,1,5,8),(31,450,'2025-11-11',11,35,1,5,8),(32,450,'2025-11-11',11,37,1,5,8),(33,450,'2025-11-11',11,38,1,5,8),(34,450,'2025-11-11',12,20,3,1,11),(35,450,'2025-11-11',12,21,3,1,11),(36,450,'2025-11-11',12,22,3,1,11),(37,350,'2025-11-12',13,35,2,5,7),(38,350,'2025-11-12',13,36,2,5,7),(39,350,'2025-11-12',13,38,2,5,7),(40,350,'2025-11-12',13,37,2,5,7),(41,350,'2025-11-12',14,19,4,4,10),(42,350,'2025-11-12',14,20,4,4,10),(43,350,'2025-11-12',14,22,4,4,10),(44,350,'2025-11-12',14,21,4,4,10);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 18:14:21
