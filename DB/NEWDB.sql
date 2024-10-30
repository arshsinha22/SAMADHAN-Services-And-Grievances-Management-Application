-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.34

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


/* Create the database */
CREATE DATABASE  IF NOT EXISTS dbms_project;

/* Switch to the dbms_project database */
USE dbms_project;

--
-- Table structure for table `citizen_grievances`
--

DROP TABLE IF EXISTS `citizen_grievances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen_grievances` (
  `sqid` varchar(10) NOT NULL,
  `services` varchar(255) DEFAULT NULL,
  `Query` text,
  `phone_number` varchar(20) DEFAULT NULL,
  `Query_date` date DEFAULT NULL,
  `status` enum('Completed','Pending','Process') DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sqid`),
  KEY `gmail` (`gmail`),
  CONSTRAINT `citizen_grievances_ibfk_1` FOREIGN KEY (`gmail`) REFERENCES `citizen_info` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_grievances`
--

LOCK TABLES `citizen_grievances` WRITE;
/*!40000 ALTER TABLE `citizen_grievances` DISABLE KEYS */;
INSERT INTO `citizen_grievances` VALUES ('sqid1','Service A','This is a sample grievance for Service A.','123-456-7890','2023-11-05','Pending','example1@example.com'),('sqid2','Service B','A complaint related to Service B.','987-654-3210','2023-11-06','Process','example2@example.com'),('sqid3','Service C','A request regarding Service C.','555-555-5555','2023-11-07','Completed','example3@example.com'),('sqid4','Service A','This is a sample grievance for Service A.','123-456-7890','2023-11-05','Pending','example1@example.com'),('sqid5','Service B','A complaint related to Service B.','987-654-3210','2023-11-06','Process','example2@example.com'),('sqid6','Service C','A request regarding Service C.','555-555-5555','2023-11-07','Completed','example3@example.com');
/*!40000 ALTER TABLE `citizen_grievances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen_info`
--

DROP TABLE IF EXISTS `citizen_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen_info` (
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `AadharNumber` varchar(12) DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`Email`),
  UNIQUE KEY `ContactNo` (`ContactNo`),
  UNIQUE KEY `AadharNumber` (`AadharNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_info`
--

LOCK TABLES `citizen_info` WRITE;
/*!40000 ALTER TABLE `citizen_info` DISABLE KEYS */;
INSERT INTO `citizen_info` VALUES ('John Doe','example1@example.com','password123','123-456-7890','123456789012','Male','City1','12345','1990-01-01','Address1'),('Jane Smith','example2@example.com','mypassword','987-654-3210','987654321098','Female','City2','56789','1985-05-15','Address2'),('Alice Johnson','example3@example.com','securepass','555-555-5555','555555555533','Other','City3','98765','1995-12-10','Address3');
/*!40000 ALTER TABLE `citizen_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen_taxes`
--

DROP TABLE IF EXISTS `citizen_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen_taxes` (
  `department` varchar(255) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_taxes`
--

LOCK TABLES `citizen_taxes` WRITE;
/*!40000 ALTER TABLE `citizen_taxes` DISABLE KEYS */;
INSERT INTO `citizen_taxes` VALUES ('Cleanliness',125.00),('Electricity',100.00),('Property',200.00),('Sewage',135.00),('Water',150.00);
/*!40000 ALTER TABLE `citizen_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctax_status`
--

DROP TABLE IF EXISTS `ctax_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctax_status` (
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` enum('YES','NO') DEFAULT 'NO',
  PRIMARY KEY (`email`,`department`),
  CONSTRAINT `ctax_status_ibfk_1` FOREIGN KEY (`email`) REFERENCES `citizen_info` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctax_status`
--

LOCK TABLES `ctax_status` WRITE;
/*!40000 ALTER TABLE `ctax_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctax_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe_grievances`
--

DROP TABLE IF EXISTS `employe_grievances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employe_grievances` (
  `Eqid` varchar(10) NOT NULL,
  `services` varchar(255) DEFAULT NULL,
  `Query` text,
  `phone_number` varchar(20) DEFAULT NULL,
  `Query_date` date DEFAULT NULL,
  `status` enum('Completed','Pending','Process') DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Eqid`),
  KEY `gmail` (`gmail`),
  CONSTRAINT `employe_grievances_ibfk_1` FOREIGN KEY (`gmail`) REFERENCES `employe_info` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe_grievances`
--

LOCK TABLES `employe_grievances` WRITE;
/*!40000 ALTER TABLE `employe_grievances` DISABLE KEYS */;
INSERT INTO `employe_grievances` VALUES ('Eqid1','Service A','This is a sample grievance for Service A.','123-456-7890','2023-11-05','Pending','22bcs124@samadhan.in'),('Eqid2','Service B','A complaint related to Service B.','987-654-3210','2023-11-06','Process','22bcs047@samadhan.in'),('Eqid3','Service C','A request regarding Service C.','555-555-5555','2023-11-07','Completed','22bcs045@samadhan.in'),('Eqid4','Service A','This is a sample grievance for Service A.','123-456-7890','2023-11-05','Pending','22bcs124@samadhan.in'),('Eqid5','Service B','A complaint related to Service B.','987-654-3210','2023-11-06','Process','22bcs047@samadhan.in'),('Eqid6','Service C','A request regarding Service C.','555-555-5555','2023-11-07','Completed','22bcs045@samadhan.in');
/*!40000 ALTER TABLE `employe_grievances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe_info`
--

DROP TABLE IF EXISTS `employe_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employe_info` (
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `AadharNumber` varchar(12) DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` text,
  `Edepartment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Email`),
  UNIQUE KEY `ContactNo` (`ContactNo`),
  UNIQUE KEY `AadharNumber` (`AadharNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe_info`
--

LOCK TABLES `employe_info` WRITE;
/*!40000 ALTER TABLE `employe_info` DISABLE KEYS */;
INSERT INTO `employe_info` VALUES ('Aditya Patel','22bcs013@samadhan.in','password013','5678901234','567890123456','Male','City5','56789','2004-05-05','Address5','Sewage and Water'),('Arsh Sinha','22bcs045@samadhan.in','password045','4567890123','456789012345','Male','City4','45678','2003-04-04','Address4','Property'),('Ashish Bhoi','22bcs047@samadhan.in','password047','3456789012','345678901234','Male','City3','34567','2002-03-03','Address3','Cleanliness'),('Kaif Gowani','22bcs123@samadhan.in','password123','2345678901','234567890123','Male','City2','23456','2001-02-02','Address2','Transportation'),('Harsh K','22bcs124@samadhan.in','password124','1234567890','123456789012','Male','City1','12345','2000-01-01','Address1','Electricity');
/*!40000 ALTER TABLE `employe_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07  3:20:11
