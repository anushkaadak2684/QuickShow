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
-- Table structure for table `shown_in`
--

DROP TABLE IF EXISTS `shown_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shown_in` (
  `movie_id` int NOT NULL,
  `showtime_id` int NOT NULL,
  `hall_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`showtime_id`,`hall_id`),
  KEY `showtime_id` (`showtime_id`),
  KEY `hall_id` (`hall_id`),
  CONSTRAINT `shown_in_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shown_in_ibfk_2` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shown_in_ibfk_3` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shown_in`
--

LOCK TABLES `shown_in` WRITE;
/*!40000 ALTER TABLE `shown_in` DISABLE KEYS */;
INSERT INTO `shown_in` VALUES (1,1,1),(1,1,5),(3,1,3),(3,1,7),(4,1,4),(4,1,8),(5,1,2),(5,1,6),(1,2,3),(1,2,7),(2,2,4),(2,2,8),(5,2,1),(5,2,5),(6,2,2),(6,2,6),(1,3,3),(1,3,7),(2,3,4),(2,3,8),(4,3,5),(5,3,1),(6,3,2),(6,3,6),(1,4,1),(1,4,5),(3,4,3),(3,4,7),(4,4,4),(4,4,8),(5,4,2),(5,4,6),(1,5,3),(1,5,7),(2,5,4),(2,5,8),(5,5,1),(5,5,5),(6,5,2),(6,5,6),(1,6,3),(1,6,7),(2,6,4),(2,6,8),(4,6,5),(5,6,1),(6,6,2),(6,6,6),(1,7,1),(1,7,5),(3,7,3),(3,7,7),(4,7,4),(4,7,8),(5,7,2),(5,7,6),(1,8,3),(1,8,7),(2,8,4),(2,8,8),(5,8,1),(5,8,5),(6,8,2),(6,8,6),(1,9,3),(1,9,7),(2,9,4),(2,9,8),(4,9,5),(5,9,1),(6,9,2),(6,9,6),(1,10,1),(1,10,5),(3,10,3),(3,10,7),(4,10,4),(4,10,8),(5,10,2),(5,10,6),(1,11,3),(1,11,7),(2,11,4),(2,11,8),(5,11,1),(5,11,5),(6,11,2),(6,11,6),(1,12,3),(1,12,7),(2,12,4),(2,12,8),(4,12,5),(5,12,1),(6,12,2),(6,12,6),(1,13,1),(1,13,5),(3,13,3),(3,13,7),(4,13,4),(4,13,8),(5,13,2),(5,13,6),(1,14,3),(1,14,7),(2,14,4),(2,14,8),(6,14,2),(6,14,6),(8,14,1),(8,14,5),(1,15,3),(1,15,7),(2,15,4),(2,15,8),(4,15,5),(5,15,1),(6,15,2),(6,15,6);
/*!40000 ALTER TABLE `shown_in` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 18:14:22
