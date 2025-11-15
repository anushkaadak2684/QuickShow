-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cineclick
-- ------------------------------------------------------
-- Server version	8.0.42

USE railway;

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

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  `theatre_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theatre_id` (`theatre_id`),
  CONSTRAINT `hall_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall`
--

LOCK TABLES `hall` WRITE;
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT INTO `hall` VALUES (1,'Hall 1',48,1),(2,'Hall 2',48,1),(3,'Hall 3',48,1),(4,'Hall 4',48,1),(5,'Hall 1',48,2),(6,'Hall 2',48,2),(7,'Hall 3',48,2),(8,'Hall 4',48,2);
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hallwise_seat`
--

DROP TABLE IF EXISTS `hallwise_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hallwise_seat` (
  `hall_id` int NOT NULL,
  `seat_id` int NOT NULL,
  PRIMARY KEY (`hall_id`,`seat_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `hallwise_seat_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hallwise_seat_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallwise_seat`
--

LOCK TABLES `hallwise_seat` WRITE;
/*!40000 ALTER TABLE `hallwise_seat` DISABLE KEYS */;
INSERT INTO `hallwise_seat` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(8,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(8,21),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(8,24),(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(1,29),(2,29),(3,29),(4,29),(5,29),(6,29),(7,29),(8,29),(1,30),(2,30),(3,30),(4,30),(5,30),(6,30),(7,30),(8,30),(1,31),(2,31),(3,31),(4,31),(5,31),(6,31),(7,31),(8,31),(1,32),(2,32),(3,32),(4,32),(5,32),(6,32),(7,32),(8,32),(1,33),(2,33),(3,33),(4,33),(5,33),(6,33),(7,33),(8,33),(1,34),(2,34),(3,34),(4,34),(5,34),(6,34),(7,34),(8,34),(1,35),(2,35),(3,35),(4,35),(5,35),(6,35),(7,35),(8,35),(1,36),(2,36),(3,36),(4,36),(5,36),(6,36),(7,36),(8,36),(1,37),(2,37),(3,37),(4,37),(5,37),(6,37),(7,37),(8,37),(1,38),(2,38),(3,38),(4,38),(5,38),(6,38),(7,38),(8,38),(1,39),(2,39),(3,39),(4,39),(5,39),(6,39),(7,39),(8,39),(1,40),(2,40),(3,40),(4,40),(5,40),(6,40),(7,40),(8,40),(1,41),(2,41),(3,41),(4,41),(5,41),(6,41),(7,41),(8,41),(1,42),(2,42),(3,42),(4,42),(5,42),(6,42),(7,42),(8,42),(1,43),(2,43),(3,43),(4,43),(5,43),(6,43),(7,43),(8,43),(1,44),(2,44),(3,44),(4,44),(5,44),(6,44),(7,44),(8,44),(1,45),(2,45),(3,45),(4,45),(5,45),(6,45),(7,45),(8,45),(1,46),(2,46),(3,46),(4,46),(5,46),(6,46),(7,46),(8,46),(1,47),(2,47),(3,47),(4,47),(5,47),(6,47),(7,47),(8,47),(1,48),(2,48),(3,48),(4,48),(5,48),(6,48),(7,48),(8,48);
/*!40000 ALTER TABLE `hallwise_seat` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_directors` (
  `movie_id` int NOT NULL,
  `director` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`movie_id`,`director`),
  CONSTRAINT `movie_directors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
INSERT INTO `movie_directors` VALUES (1,'Michael Chaves'),(2,'Zach Lipovsky'),(3,'Rishab Shetty'),(4,'Christopher McQuarrie'),(5,'Paul Greengrass'),(6,'Chris Columbus'),(7,'Anurag Singh'),(8,'David F. Sandberg');
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genre` (
  `movie_id` int NOT NULL,
  `genre` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`movie_id`,`genre`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,'Horror'),(1,'Mystery'),(1,'Thriller'),(2,'Horror'),(2,'Supernatural'),(2,'Thriller'),(3,'Action'),(3,'Drama'),(3,'Fantasy'),(4,'Action'),(4,'Adventure'),(4,'Thriller'),(5,'Drama'),(5,'Mystery'),(5,'Thriller'),(6,'Comedy'),(6,'Crime'),(6,'Mystery'),(7,'Action'),(7,'Drama'),(7,'War'),(8,' Mystery'),(8,' Thriller'),(8,'Horror');
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` int DEFAULT NULL,
  `method` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_email` (`customer_email`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_email`) REFERENCES `person` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2025-11-16 14:11:37',1400,'UPI','rahul.sharma@gmail.com'),(2,'2025-11-16 14:13:03',1350,'UPI','neha.verma@yahoo.com'),(3,'2025-11-20 05:02:06',1350,'Netbanking','arjun.mehta@gmail.com'),(4,'2025-11-20 05:14:19',700,'Credit Card','arjun.mehta@gmail.com'),(5,'2025-11-20 06:54:02',700,'Debit Card','arjun.mehta@gmail.com'),(6,'2025-11-20 07:10:15',1050,'UPI','aisha.khan@gmail.com'),(7,'2025-11-20 07:11:00',900,'Netbanking','aisha.khan@gmail.com'),(8,'2025-11-20 09:06:08',2700,'Credit Card','ravi.patel@gmail.com'),(9,'2025-11-20 10:43:23',700,'Debit Card','arjun.mehta@gmail.com'),(10,'2025-11-20 12:26:07',900,'UPI','sneha.nair@gmail.com'),(11,'2025-11-11 18:22:02',1800,'UPI','arpitaadakmou@gmail.com'),(12,'2025-11-11 18:25:25',1350,'Netbanking','arpitaadakmou@gmail.com'),(13,'2025-11-12 07:54:11',1400,'UPI','arpitaadakmou@gmail.com'),(14,'2025-11-12 09:37:40',1400,'UPI','arpitaadakmou@gmail.com');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` char(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_balance` int DEFAULT NULL,
  `person_type` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('aisha.khan@gmail.com','Aisha','Khan','aisha123','9823415678',100000,'Customer'),('ananya.sen@gmail.com','Ananya','Sen','ananya123','9834567123',100000,'Customer'),('anushkaadakofficial@gmail.com','Anushka','Adak','Anushka@2684','9830811787',100000,'Admin'),('arjun.mehta@gmail.com','Arjun','Mehta','arjun123','9876501234',100000,'Customer'),('arpitaadakmou@gmail.com','Arpita','Adak','mou@1108','9830811787',NULL,'Customer'),('farhan.shaikh@gmail.com','Farhan','Shaikh','farhan123','9988776655',100000,'Customer'),('neha.verma@yahoo.com','Neha','Verma','neha123','9123456789',1000000,'Customer'),('rahul.sharma@gmail.com','Rahul','Sharma','rahul123','9876543210',100000,'Customer'),('ravi.patel@gmail.com','Ravi','Patel','ravi123','9822098765',100000,'Customer'),('riya.patel@gmail.com','Riya','Patel','riya123','9865321478',100000,'Customer'),('rohan.das@gmail.com','Rohan','Das','rohan123','9845671230',100000,'Customer'),('sneha.nair@gmail.com','Sneha','Nair','sneha123','9890011223',100000,'Customer'),('vikram.nair@gmail.com','Vikram','Nair','vikram123','9811122233',10000,'Customer');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,'A1'),(2,'A2'),(3,'A3'),(4,'A4'),(5,'A5'),(6,'A6'),(7,'A7'),(8,'A8'),(9,'B1'),(10,'B2'),(11,'B3'),(12,'B4'),(13,'B5'),(14,'B6'),(15,'B7'),(16,'B8'),(17,'C1'),(18,'C2'),(19,'C3'),(20,'C4'),(21,'C5'),(22,'C6'),(23,'C7'),(24,'C8'),(25,'D1'),(26,'D2'),(27,'D3'),(28,'D4'),(29,'D5'),(30,'D6'),(31,'D7'),(32,'D8'),(33,'E1'),(34,'E2'),(35,'E3'),(36,'E4'),(37,'E5'),(38,'E6'),(39,'E7'),(40,'E8'),(41,'F1'),(42,'F2'),(43,'F3'),(44,'F4'),(45,'F5'),(46,'F6'),(47,'F7'),(48,'F8');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `showtimes`
--

DROP TABLE IF EXISTS `showtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showtimes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_start_time` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_type` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `showtime_date` date DEFAULT NULL,
  `price_per_seat` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtimes`
--

LOCK TABLES `showtimes` WRITE;
/*!40000 ALTER TABLE `showtimes` DISABLE KEYS */;
INSERT INTO `showtimes` VALUES (1,'11:00 am','2D','2025-11-19',350),(2,'2:30 pm','3D','2025-11-19',450),(3,'6:00 pm','3D','2025-11-19',450),(4,'11:00 am','2D','2025-11-20',350),(5,'2:30 pm','3D','2025-11-20',450),(6,'6:00 pm','3D','2025-11-20',450),(7,'11:00 am','2D','2025-11-21',350),(8,'2:30 pm','3D','2025-11-21',450),(9,'6:00 pm','3D','2025-11-21',450),(10,'11:00 am','2D','2025-11-22',350),(11,'2:30 pm','3D','2025-11-22',450),(12,'6:00 pm','3D','2025-11-22',450),(13,'11:00 am','2D','2025-11-25',350),(14,'2:30 pm','3D','2025-11-25',450),(15,'6:00 pm','3D','2025-11-25',450);
/*!40000 ALTER TABLE `showtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location_details` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'South City Mall','Prince Anwar Shah Road','INOX South City Mall, 375 Prince Anwar Shah Road, Jadavpur, Kolkata, West Bengal 700068'),(2,'Quest Mall','Park Circus','PVR Cinemas, Quest Mall, 33 Syed Amir Ali Avenue, Park Circus, Kolkata, West Bengal 700017'),(3,'Acropolis Mall','Kasba','INOX Acropolis Mall, 1858/1 Rajdanga Main Road, Kasba, Kolkata, West Bengal 700107'),(4,'City Centre 1','Salt Lake','INOX City Centre, DC Block, Sector 1, Salt Lake City, Kolkata, West Bengal 700064'),(5,'Mani Square Mall','EM Bypass','PVR Cinemas, Mani Square Mall, 164/1 Maniktala Main Road, EM Bypass, Kolkata, West Bengal 700054');
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping routines for database 'cineclick'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 16:40:57
