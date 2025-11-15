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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_path` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theatre_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theatre_id` (`theatre_id`),
  CONSTRAINT `features_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Unparalleled Cinematic Experience','Immerse yourself in stunning visuals and crystal-clear sound, as our state-of-the-art IMAX technology transports you directly into the heart of the action. With a screen that stretches beyond your peripheral vision every frame comes alive with unparalleled brilliance.','/Images/features/imax.webp',1),(2,'Delight in Dolby Atmos','Experience sound like never before with Dolby Atmos, the epitome audio technology that takes you on an immersive sonic journey.With sound objects moving seamlessly around the theatre, you\'ll be transported into the heart of every scene, making you an integral part of the story.','/Images/features/sound.webp',1),(3,'Tantalizing Treats','At our movie theatre, we take your movie-watching experience beyond the screen by offering a delectable array of food items at our concession stand. From freshly buttered popcorn, crispy nachos with zesty cheese dips, to gourmet hotdogs and a variety of refreshing beverages, our concession stand is a culinary paradise for movie enthusiasts.','/Images/features/food.webp',1),(4,'Luxurious Escape','Step into a world of opulence and relaxation, designed to cater to your every need before and after the main event. Our Premium Lounge welcomes you with plush leather seating, elegant décor, and a refined ambiance that sets the stage for an unforgettable cinematic journey.','/Images/features/lounge.webp',1),(6,'Unparalleled Cinematic Experience','Immerse yourself in stunning visuals and crystal-clear sound, as our state-of-the-art IMAX technology transports you directly into the heart of the action. With a screen that stretches beyond your peripheral vision every frame comes alive with unparalleled brilliance.','/Images/features/imax.webp',2),(7,'Delight in Dolby Atmos','Experience sound like never before with Dolby Atmos, the epitome audio technology that takes you on an immersive sonic journey.With sound objects moving seamlessly around the theatre, you\'ll be transported into the heart of every scene, making you an integral part of the story.','/Images/features/sound.webp',2),(8,'Tantalizing Treats','At our movie theatre, we take your movie-watching experience beyond the screen by offering a delectable array of food items at our concession stand. From freshly buttered popcorn, crispy nachos with zesty cheese dips, to gourmet hotdogs and a variety of refreshing beverages, our concession stand is a culinary paradise for movie enthusiasts.','/Images/features/food.webp',2),(9,'Luxurious Escape','Step into a world of opulence and relaxation, designed to cater to your every need before and after the main event. Our Premium Lounge welcomes you with plush leather seating, elegant décor, and a refined ambiance that sets the stage for an unforgettable cinematic journey.','/Images/features/lounge.webp',2);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
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
