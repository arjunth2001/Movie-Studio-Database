-- MySQL dump 10.13  Distrib 5.7.29, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: MOVIE_STUDIO
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Actor`
--
DROP DATABASE IF EXISTS MOVIE_STUDIO;
CREATE SCHEMA MOVIE_STUDIO;
USE MOVIE_STUDIO;


DROP TABLE IF EXISTS `Actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor` (
  `Aadhar_ID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Contact` varchar(30) NOT NULL,
  `Remuneration` float NOT NULL,
  `Leadflag` tinyint(1) NOT NULL,
  `Filmography` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Aadhar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor`
--

LOCK TABLES `Actor` WRITE;
/*!40000 ALTER TABLE `Actor` DISABLE KEYS */;
INSERT INTO `Actor` VALUES (900001,'Martin Freeman','1971-08-08','8909299219',20,1,25),(900002,'Emma Watson','1990-04-15','9876537891',16,1,13),(900003,'Benedict Cumberbatch','1976-07-19','987678907',40,1,22),(900004,'Aidan Turner','1983-06-19','897656781',8,0,5),(900005,'Daniel Radcliffe','1989-06-23','7896789101',30,1,15),(900006,'Rupert Grinte','1988-08-24','6789067891',13,1,13),(900007,'John Hurt','1940-01-22','7890654123',9,0,8);
/*!40000 ALTER TABLE `Actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Actor_Accolades`
--

DROP TABLE IF EXISTS `Actor_Accolades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor_Accolades` (
  `Aadhar_ID` int DEFAULT NULL,
  `Name_of_Accolade` varchar(30) DEFAULT NULL,
  KEY `Aadhar_ID` (`Aadhar_ID`),
  CONSTRAINT `Actor_Accolades_ibfk_1` FOREIGN KEY (`Aadhar_ID`) REFERENCES `Actor` (`Aadhar_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor_Accolades`
--

LOCK TABLES `Actor_Accolades` WRITE;
/*!40000 ALTER TABLE `Actor_Accolades` DISABLE KEYS */;
INSERT INTO `Actor_Accolades` VALUES (900001,'Oscar'),(900001,'BAFTA'),(900001,'Sundance'),(900002,'BAFTA'),(900002,'Sundance'),(900003,'Golden Globe'),(900004,'Golden Globe'),(900003,'Film Fare'),(900003,'Australian Film Awards'),(900005,'Golden Globe'),(900004,'BAFTA'),(900006,'BAFTA'),(900007,'Australian Film Awards');
/*!40000 ALTER TABLE `Actor_Accolades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Actor_Address_City`
--

DROP TABLE IF EXISTS `Actor_Address_City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor_Address_City` (
  `Aadhar_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  KEY `Aadhar_ID` (`Aadhar_ID`),
  CONSTRAINT `Actor_Address_City_ibfk_1` FOREIGN KEY (`Aadhar_ID`) REFERENCES `Actor` (`Aadhar_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor_Address_City`
--

LOCK TABLES `Actor_Address_City` WRITE;
/*!40000 ALTER TABLE `Actor_Address_City` DISABLE KEYS */;
INSERT INTO `Actor_Address_City` VALUES (900001,'Auckland'),(900001,'Los Angeles'),(900002,'Sydney'),(900002,'Auckland'),(900004,'Los Angeles'),(900003,'Albany'),(900003,'London'),(900003,'Sydney'),(900005,'Auckland'),(900006,'Auckland'),(900007,'Auckland');
/*!40000 ALTER TABLE `Actor_Address_City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Actor_Address_Country`
--

DROP TABLE IF EXISTS `Actor_Address_Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor_Address_Country` (
  `Aadhar_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  KEY `Actor_Address_Country_ibfk_1` (`Aadhar_ID`),
  CONSTRAINT `Actor_Address_Country_ibfk_1` FOREIGN KEY (`Aadhar_ID`) REFERENCES `Actor` (`Aadhar_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor_Address_Country`
--

LOCK TABLES `Actor_Address_Country` WRITE;
/*!40000 ALTER TABLE `Actor_Address_Country` DISABLE KEYS */;
INSERT INTO `Actor_Address_Country` VALUES (900001,'Auckland','New Zealand'),(900001,'Los Angeles','USA'),(900002,'Sydney','Australia'),(900002,'Auckland','New Zealand'),(900004,'Los Angeles','USA'),(900003,'Albany','USA'),(900003,'London','UK'),(900003,'Sydney','Australia'),(900005,'Auckland','New Zealand'),(900006,'Auckland','New Zealand'),(900007,'Auckland','New Zealand');
/*!40000 ALTER TABLE `Actor_Address_Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Actor_Address_State`
--

DROP TABLE IF EXISTS `Actor_Address_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor_Address_State` (
  `Aadhar_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  KEY `Actor_Address_State_ibfk_1` (`Aadhar_ID`),
  CONSTRAINT `Actor_Address_State_ibfk_1` FOREIGN KEY (`Aadhar_ID`) REFERENCES `Actor` (`Aadhar_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor_Address_State`
--

LOCK TABLES `Actor_Address_State` WRITE;
/*!40000 ALTER TABLE `Actor_Address_State` DISABLE KEYS */;
INSERT INTO `Actor_Address_State` VALUES (900001,'Auckland','North Island'),(900001,'Los Angeles','California'),(900002,'Sydney','New South Wales'),(900002,'Auckland','North Island'),(900004,'Los Angeles','California'),(900003,'Albany','New York'),(900003,'London','England'),(900003,'Sydney','New South Wales'),(900005,'Auckland','North Island'),(900006,'Auckland','North Island'),(900007,'Auckland','North Island');
/*!40000 ALTER TABLE `Actor_Address_State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COORDINATES_WITH`
--

DROP TABLE IF EXISTS `COORDINATES_WITH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COORDINATES_WITH` (
  `Director_ID` int NOT NULL,
  `Movie_ID` int NOT NULL,
  UNIQUE KEY `Director_ID_2` (`Director_ID`,`Movie_ID`),
  KEY `Director_ID` (`Director_ID`),
  KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `COORDINATES_WITH_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE,
  CONSTRAINT `COORDINATES_WITH_ibfk_2` FOREIGN KEY (`Movie_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COORDINATES_WITH`
--

LOCK TABLES `COORDINATES_WITH` WRITE;
/*!40000 ALTER TABLE `COORDINATES_WITH` DISABLE KEYS */;
INSERT INTO `COORDINATES_WITH` VALUES (1000,101),(1000,102),(1000,103),(1002,104),(1002,107),(1003,105),(1003,106),(1003,108);
/*!40000 ALTER TABLE `COORDINATES_WITH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director` (
  `Director_ID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Filmography` int NOT NULL,
  `Mainflag` tinyint(1) NOT NULL,
  `MainID` int DEFAULT NULL,
  PRIMARY KEY (`Director_ID`),
  KEY `MainID` (`MainID`),
  CONSTRAINT `Director_ibfk_1` FOREIGN KEY (`MainID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (1000,'Peter Jackson','1961-10-31',20,1,NULL),(1001,'Andy Serkis','1964-04-20',6,0,1000),(1002,'Anthony Russo','1970-02-03',23,1,NULL),(1003,'David Yates','1963-10-08',30,1,NULL),(1004,'Andrew Lesnie','1956-01-01',17,0,1000),(1005,'Michael Seresin','1942-05-17',13,0,1003);
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director_Accolades`
--

DROP TABLE IF EXISTS `Director_Accolades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director_Accolades` (
  `Director_ID` int NOT NULL,
  `Name_of_Accolade` varchar(30) DEFAULT NULL,
  KEY `Director_ID` (`Director_ID`),
  CONSTRAINT `Director_Accolades_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director_Accolades`
--

LOCK TABLES `Director_Accolades` WRITE;
/*!40000 ALTER TABLE `Director_Accolades` DISABLE KEYS */;
INSERT INTO `Director_Accolades` VALUES (1000,'Oscar'),(1000,'BAFTA'),(1000,'Sundance'),(1001,'BAFTA'),(1001,'Sundance'),(1000,'Golden Globe'),(1002,'Golden Globe'),(1002,'Film Fare'),(1003,'Australian Film Awards'),(1003,'Golden Globe'),(1004,'BAFTA'),(1005,'BAFTA');
/*!40000 ALTER TABLE `Director_Accolades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director_Address_City`
--

DROP TABLE IF EXISTS `Director_Address_City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director_Address_City` (
  `Director_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  KEY `Director_ID` (`Director_ID`),
  CONSTRAINT `Director_Address_City_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director_Address_City`
--

LOCK TABLES `Director_Address_City` WRITE;
/*!40000 ALTER TABLE `Director_Address_City` DISABLE KEYS */;
INSERT INTO `Director_Address_City` VALUES (1000,'Auckland'),(1000,'Los Angeles'),(1000,'Sydney'),(1001,'Auckland'),(1002,'Los Angeles'),(1002,'Albany'),(1003,'London'),(1004,'Sydney'),(1005,'Auckland');
/*!40000 ALTER TABLE `Director_Address_City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director_Address_Country`
--

DROP TABLE IF EXISTS `Director_Address_Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director_Address_Country` (
  `Director_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  KEY `Director_Address_Country_ibfk_1` (`Director_ID`),
  CONSTRAINT `Director_Address_Country_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director_Address_Country`
--

LOCK TABLES `Director_Address_Country` WRITE;
/*!40000 ALTER TABLE `Director_Address_Country` DISABLE KEYS */;
INSERT INTO `Director_Address_Country` VALUES (1000,'Auckland','New Zealand'),(1000,'Los Angeles','USA'),(1000,'Sydney','Australia'),(1001,'Auckland','New Zealand'),(1002,'Los Angeles','USA'),(1002,'Albany','USA'),(1003,'London','UK'),(1004,'Sydney','Australia'),(1005,'Auckland','New Zealand');
/*!40000 ALTER TABLE `Director_Address_Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director_Address_State`
--

DROP TABLE IF EXISTS `Director_Address_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director_Address_State` (
  `Director_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  KEY `Director_Address_State_ibfk_1` (`Director_ID`),
  CONSTRAINT `Director_Address_State_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director_Address_State`
--

LOCK TABLES `Director_Address_State` WRITE;
/*!40000 ALTER TABLE `Director_Address_State` DISABLE KEYS */;
INSERT INTO `Director_Address_State` VALUES (1000,'Auckland','North Island'),(1000,'Los Angeles','California'),(1000,'Sydney','New South Wales'),(1001,'Auckland','North Island'),(1002,'Los Angeles','California'),(1002,'Albany','New York'),(1003,'London','England'),(1004,'Sydney','New South Wales'),(1005,'Auckland','North Island');
/*!40000 ALTER TABLE `Director_Address_State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Awards`
--

DROP TABLE IF EXISTS `Movie_Awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Awards` (
  `Movie_ID` int NOT NULL,
  `Award_Name` varchar(30) DEFAULT NULL,
  KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `Movie_Awards_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Awards`
--

LOCK TABLES `Movie_Awards` WRITE;
/*!40000 ALTER TABLE `Movie_Awards` DISABLE KEYS */;
INSERT INTO `Movie_Awards` VALUES (101,'Oscar'),(101,'BAFTA'),(101,'Sundance'),(102,'Oscar'),(102,'Australian Film Awards'),(102,'Golden Globe'),(103,'Australian Film Awards'),(103,'Golden Globe'),(103,'Oscar'),(103,'Film Fare'),(104,'Golden Globe'),(105,'Oscar'),(105,'BAFTA'),(105,'Golden Globe'),(105,'Sundance'),(106,'Oscar'),(106,'BAFTA'),(106,'Golden Globe');
/*!40000 ALTER TABLE `Movie_Awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Collections`
--

DROP TABLE IF EXISTS `Movie_Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Collections` (
  `Movie_ID` int NOT NULL,
  `Collections` int DEFAULT NULL,
  UNIQUE KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `Movie_Collections_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Collections`
--

LOCK TABLES `Movie_Collections` WRITE;
/*!40000 ALTER TABLE `Movie_Collections` DISABLE KEYS */;
INSERT INTO `Movie_Collections` VALUES (101,1024),(102,958),(103,930),(104,2000),(105,977),(106,1342),(107,NULL),(108,100);
/*!40000 ALTER TABLE `Movie_Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Profit_or_Loss`
--

DROP TABLE IF EXISTS `Movie_Profit_or_Loss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Profit_or_Loss` (
  `Movie_ID` int NOT NULL,
  `Profit_or_Loss` int DEFAULT NULL,
  UNIQUE KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `Movie_Profit_or_Loss_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Profit_or_Loss`
--

LOCK TABLES `Movie_Profit_or_Loss` WRITE;
/*!40000 ALTER TABLE `Movie_Profit_or_Loss` DISABLE KEYS */;
INSERT INTO `Movie_Profit_or_Loss` VALUES (101,709),(102,767),(103,837),(104,1600),(105,727),(106,1092),(107,NULL),(108,-10);
/*!40000 ALTER TABLE `Movie_Profit_or_Loss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_info`
--

DROP TABLE IF EXISTS `Movie_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_info` (
  `Movie_ID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Release_Date` date DEFAULT NULL,
  `Avg_rate` double DEFAULT NULL,
  `Budget` int NOT NULL,
  `Director_ID` int NOT NULL,
  `Film_No` int NOT NULL,
  PRIMARY KEY (`Movie_ID`),
  KEY `Movie_info_ibfk_1` (`Director_ID`),
  CONSTRAINT `Movie_info_ibfk_1` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_info`
--

LOCK TABLES `Movie_info` WRITE;
/*!40000 ALTER TABLE `Movie_info` DISABLE KEYS */;
INSERT INTO `Movie_info` VALUES (101,'The Hobbit : Part 1','2012-12-14',4.7,315,1000,18),(102,'The Hobbit : Part 2','2013-12-13',4.7,191,1000,19),(103,'Lord of the Rings','2003-12-17',4.8,93,1000,13),(104,'Avenger\'s Infinity War','2018-04-27',4.2,400,1002,22),(105,'Harry Potter 7','2010-11-19',3.2,250,1003,27),(106,'Harry Potter 8','2011-07-15',3.6,250,1003,28),(107,'Sherlock-The Movie',NULL,NULL,150,1002,23),(108,'Beth','2013-09-01',2.1,110,1003,29);
/*!40000 ALTER TABLE `Movie_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRES`
--

DROP TABLE IF EXISTS `REQUIRES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRES` (
  `Aadhar_ID` int NOT NULL,
  `Director_ID` int NOT NULL,
  `Movie_ID` int NOT NULL,
  `Location_Depicted` varchar(30) NOT NULL,
  KEY `Aadhar_ID` (`Aadhar_ID`),
  KEY `Director_ID` (`Director_ID`),
  KEY `Movie_ID` (`Movie_ID`),
  KEY `Location_Depicted` (`Location_Depicted`),
  KEY `REQUIRES_ibfk_4` (`Movie_ID`,`Location_Depicted`),
  CONSTRAINT `REQUIRES_ibfk_1` FOREIGN KEY (`Aadhar_ID`) REFERENCES `Actor` (`Aadhar_ID`) ON DELETE CASCADE,
  CONSTRAINT `REQUIRES_ibfk_2` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`) ON DELETE CASCADE,
  CONSTRAINT `REQUIRES_ibfk_3` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE,
  CONSTRAINT `REQUIRES_ibfk_4` FOREIGN KEY (`Movie_ID`, `Location_Depicted`) REFERENCES `Set_Location` (`Movie_ID`, `Location_Depicted`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRES`
--

LOCK TABLES `REQUIRES` WRITE;
/*!40000 ALTER TABLE `REQUIRES` DISABLE KEYS */;
INSERT INTO `REQUIRES` VALUES (900001,1000,101,'Hobbiton'),(900001,1000,101,'Gollum\'s Cave'),(900007,1000,101,'Hobbiton'),(900007,1000,101,'Gollum\'s Cave'),(900004,1000,101,'Hobbiton'),(900004,1000,101,'Gollum\'s Cave'),(900001,1000,102,'Smaug\'s Lair'),(900001,1000,102,'Hobbiton'),(900007,1000,102,'Smaug\'s Lair'),(900007,1000,102,'Hobbiton'),(900004,1000,102,'Smaug\'s Lair'),(900004,1000,102,'Hobbiton'),(900003,1000,102,'Smaug\'s Lair'),(900003,1000,102,'Hobbiton'),(900004,1000,103,'Hobbiton'),(900007,1000,103,'Hobbiton'),(900001,1002,104,'Headquarters'),(900003,1002,104,'Headquarters'),(900002,1003,105,'Hogwarts'),(900002,1003,105,'Forbidden Forest'),(900005,1003,105,'Hogwarts'),(900005,1003,105,'Forbidden Forest'),(900006,1003,105,'Hogwarts'),(900006,1003,105,'Forbidden Forest'),(900007,1003,105,'Hogwarts'),(900007,1003,105,'Forbidden Forest'),(900002,1003,106,'Hogwarts'),(900002,1003,106,'Ministry'),(900005,1003,106,'Hogwarts'),(900005,1003,106,'Ministry'),(900006,1003,106,'Hogwarts'),(900006,1003,106,'Ministry'),(900007,1003,106,'Hogwarts'),(900007,1003,106,'Ministry'),(900001,1002,107,'Baker\'s Street'),(900002,1002,107,'Baker\'s Street'),(900003,1002,107,'Baker\'s Street'),(900005,1002,107,'Baker\'s Street'),(900001,1002,107,'Chinatown'),(900002,1002,107,'Chinatown'),(900003,1002,107,'Chinatown'),(900005,1002,107,'Chinatown'),(900006,1003,108,'Beth\'s House'),(900004,1003,108,'Beth\'s House'),(900002,1003,108,'Beth\'s House');
/*!40000 ALTER TABLE `REQUIRES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Set_Cost`
--

DROP TABLE IF EXISTS `Set_Cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Set_Cost` (
  `Movie_ID` int NOT NULL,
  `Cost` int DEFAULT NULL,
  `VFX_ID` int DEFAULT NULL,
  `Location_Depicted` varchar(30) DEFAULT NULL,
  UNIQUE KEY `Movie_ID_2` (`Movie_ID`,`Location_Depicted`),
  KEY `Movie_ID` (`Movie_ID`),
  KEY `VFX_ID` (`VFX_ID`),
  CONSTRAINT `Set_Cost_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE,
  CONSTRAINT `Set_Cost_ibfk_2` FOREIGN KEY (`VFX_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE SET NULL,
  CONSTRAINT `Set_Cost_ibfk_3` FOREIGN KEY (`Movie_ID`, `Location_Depicted`) REFERENCES `Set_Location` (`Movie_ID`, `Location_Depicted`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Set_Cost`
--

LOCK TABLES `Set_Cost` WRITE;
/*!40000 ALTER TABLE `Set_Cost` DISABLE KEYS */;
INSERT INTO `Set_Cost` VALUES (101,12,101,'Hobbiton'),(101,10,101,'Gollum\'s Cave'),(102,6,102,'Hobbiton'),(102,34,102,'Smaug\'s Lair'),(103,15,103,'Hobbiton'),(104,20,104,'Headquarters'),(105,45,105,'Hogwarts'),(105,18,105,'Forbidden Forest'),(106,72,106,'Hogwarts'),(106,34,106,'Ministry'),(107,2,107,'Baker\'s Street'),(107,3,107,'Chinatown'),(108,1,108,'Beth\'s House');
/*!40000 ALTER TABLE `Set_Cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Set_Location`
--

DROP TABLE IF EXISTS `Set_Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Set_Location` (
  `Movie_ID` int NOT NULL,
  `Location_Depicted` varchar(30) NOT NULL,
  `VFX_ID` int DEFAULT NULL,
  UNIQUE KEY `Movie_ID_2` (`Movie_ID`,`Location_Depicted`),
  KEY `VFX_ID` (`VFX_ID`),
  KEY `Location_Depicted` (`Location_Depicted`),
  CONSTRAINT `Set_Location_ibfk_2` FOREIGN KEY (`VFX_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE SET NULL,
  CONSTRAINT `Set_Location_ibfk_3` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Set_Location`
--

LOCK TABLES `Set_Location` WRITE;
/*!40000 ALTER TABLE `Set_Location` DISABLE KEYS */;
INSERT INTO `Set_Location` VALUES (101,'Gollum\'s Cave',101),(101,'Hobbiton',101),(102,'Hobbiton',102),(102,'Smaug\'s Lair',102),(103,'Hobbiton',103),(104,'Headquarters',104),(105,'Forbidden Forest',105),(105,'Hogwarts',105),(106,'Hogwarts',106),(106,'Ministry',106),(107,'Baker\'s Street',107),(107,'Chinatown',107),(108,'Beth\'s House',108);
/*!40000 ALTER TABLE `Set_Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Set_Manpower`
--

DROP TABLE IF EXISTS `Set_Manpower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Set_Manpower` (
  `Movie_ID` int NOT NULL,
  `Man_Power` int DEFAULT NULL,
  `VFX_ID` int DEFAULT NULL,
  `Location_Depicted` varchar(30) DEFAULT NULL,
  UNIQUE KEY `Movie_ID_2` (`Movie_ID`,`Location_Depicted`),
  KEY `Movie_ID` (`Movie_ID`),
  KEY `VFX_ID` (`VFX_ID`),
  CONSTRAINT `Set_Manpower_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE,
  CONSTRAINT `Set_Manpower_ibfk_2` FOREIGN KEY (`VFX_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE SET NULL,
  CONSTRAINT `Set_Manpower_ibfk_3` FOREIGN KEY (`Movie_ID`, `Location_Depicted`) REFERENCES `Set_Location` (`Movie_ID`, `Location_Depicted`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Set_Manpower`
--

LOCK TABLES `Set_Manpower` WRITE;
/*!40000 ALTER TABLE `Set_Manpower` DISABLE KEYS */;
INSERT INTO `Set_Manpower` VALUES (101,29,101,'Hobbiton'),(101,31,101,'Gollum\'s Cave'),(102,17,102,'Hobbiton'),(102,50,102,'Smaug\'s Lair'),(103,20,103,'Hobbiton'),(104,45,104,'Headquarters'),(105,60,105,'Hogwarts'),(105,25,105,'Forbidden Forest'),(106,100,106,'Hogwarts'),(106,40,106,'Ministry'),(107,9,107,'Baker\'s Street'),(107,20,107,'Chinatown'),(108,7,108,'Beth\'s House');
/*!40000 ALTER TABLE `Set_Manpower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VFX`
--

DROP TABLE IF EXISTS `VFX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VFX` (
  `VFX_Director` varchar(30) NOT NULL,
  `Avg_Demand` float DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `Movie_ID` int NOT NULL,
  UNIQUE KEY `Movie_ID_2` (`Movie_ID`),
  KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `VFX_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `Movie_info` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VFX`
--

LOCK TABLES `VFX` WRITE;
/*!40000 ALTER TABLE `VFX` DISABLE KEYS */;
INSERT INTO `VFX` VALUES ('Eric Saindon',80,'Weta Digital',101),('Joe Letteri',89,'Rhythm',102),('Jim Rygiel',80,'Weta Digital',103),('John Lassesster',72,'Cinesite',104),('Tim Burke',98,'Frame Store',105),('Tim Burke',98,'Frame Store',106),('Steve Mars',45,'FireworksVFX',107),('Rayhan A',25,'GrandVFX',108);
/*!40000 ALTER TABLE `VFX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VFX_Address_City`
--

DROP TABLE IF EXISTS `VFX_Address_City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VFX_Address_City` (
  `Movie_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  KEY `Movie_ID` (`Movie_ID`),
  CONSTRAINT `VFX_Address_City_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VFX_Address_City`
--

LOCK TABLES `VFX_Address_City` WRITE;
/*!40000 ALTER TABLE `VFX_Address_City` DISABLE KEYS */;
INSERT INTO `VFX_Address_City` VALUES (101,'Auckland'),(101,'Wellington'),(102,'Austin'),(102,'Los Angeles'),(102,'Albany'),(103,'Auckland'),(104,'London'),(105,'Edinburgh'),(106,'Edinburgh'),(108,'Chennai');
/*!40000 ALTER TABLE `VFX_Address_City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VFX_Address_Country`
--

DROP TABLE IF EXISTS `VFX_Address_Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VFX_Address_Country` (
  `Movie_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  KEY `VFX_Address_Country_ibfk_1` (`Movie_ID`),
  CONSTRAINT `VFX_Address_Country_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VFX_Address_Country`
--

LOCK TABLES `VFX_Address_Country` WRITE;
/*!40000 ALTER TABLE `VFX_Address_Country` DISABLE KEYS */;
INSERT INTO `VFX_Address_Country` VALUES (101,'Auckland','New Zealand'),(101,'Wellington','New Zealand'),(102,'Austin','USA'),(102,'Los Angeles','USA'),(102,'Albany','USA'),(103,'Auckland','New Zealand'),(104,'London','UK'),(105,'Edinburgh','UK'),(106,'Edinburgh','England'),(108,'Chennai','India');
/*!40000 ALTER TABLE `VFX_Address_Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VFX_Address_State`
--

DROP TABLE IF EXISTS `VFX_Address_State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VFX_Address_State` (
  `Movie_ID` int DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  KEY `VFX_Address_State_ibfk_1` (`Movie_ID`),
  CONSTRAINT `VFX_Address_State_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `VFX` (`Movie_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VFX_Address_State`
--

LOCK TABLES `VFX_Address_State` WRITE;
/*!40000 ALTER TABLE `VFX_Address_State` DISABLE KEYS */;
INSERT INTO `VFX_Address_State` VALUES (101,'Auckland','North Island'),(101,'Wellington','North Island'),(102,'Austin','Texas'),(102,'Los Angeles','California'),(102,'Albany','New York'),(103,'Auckland','North Island'),(104,'London','England'),(105,'Edinburgh','Scotland'),(106,'Edinburgh','Scotland'),(108,'Chennai','Tamil Nadu');
/*!40000 ALTER TABLE `VFX_Address_State` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 15:12:38
