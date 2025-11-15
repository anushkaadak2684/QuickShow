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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_path` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `language` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `synopsis` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `duration` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `top_cast` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Conjuring: Last Rites','/Images/movies/conjuringLastrites.webp','English','Paranormal investigators Ed and Lorraine Warren return to confront one of their most terrifying cases yet — an ancient evil that seeks to end their legacy once and for all.',8.3,'2h 12m','Patrick Wilson','2025-06-13'),(2,'Final Destination: Bloodlines','/Images/movies/finaldestinationbloodlines.webp','English','When a group of friends narrowly escapes a deadly bridge collapse, they soon realize that Death has a new plan — and this time, it runs in their blood.',7.5,'1h 52m','Katherine McNamara','2025-05-09'),(3,'Kantara: A Legend Chapter-1','/Images/movies/kantara.webp','Kannada','Set in the mythic lands of coastal Karnataka, the film explores the origins of the divine spirit Panjurli and the eternal conflict between man, nature, and belief.',9.1,'2h 34m','Rishab Shetty','2025-03-15'),(4,'Mission: Impossible - The Final Reckoning','/Images/movies/missionImpossible.webp','English','Ethan Hunt faces his last and most impossible mission yet — to dismantle a rogue AI that threatens global extinction, while confronting the ghosts of his past.',8.7,'2h 49m','Tom Cruise','2025-07-18'),(5,'The Lost Bus','/Images/movies/thelostbus.webp','English','A group of college students disappears during a road trip in the Western Ghats. Years later, an investigator unravels a chilling truth hidden in the wilderness.',7.8,'2h 10m','Matthew McConaughey','2025-04-25'),(6,'The Thursday Murder Club','/Images/movies/thursdaymurderclub.webp','English','Four quirky retirees in a peaceful retirement village meet weekly to discuss unsolved crimes — until they find themselves tangled in a real murder mystery.',7.9,'2h 2m','Helen Mirren','2025-08-22'),(7,'Kesari: Chapter 2','/Images/movies/kesarichapter2.webp','Hindi','Continuing the saga of courage, Kesari: Chapter 2 follows the legacy of the warriors who rose again to defend their motherland against invading forces.',8.6,'2h 28m','Akshay Kumar','2025-01-26'),(8,'Until Dawn','/Images/movies/untildawn.webp','English','A group of friends on a remote mountain getaway must survive the night as an unseen killer stalks them, blurring the line between nightmare and reality.',8.2,'2h 14m','Florence Pugh','2025-09-05');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 18:14:23
