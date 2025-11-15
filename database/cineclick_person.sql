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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-15 18:14:22
