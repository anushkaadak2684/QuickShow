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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 18:14:21
