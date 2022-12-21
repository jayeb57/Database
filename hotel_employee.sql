-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `sex` char(6) DEFAULT NULL,
  `Join_date` date DEFAULT NULL,
  `Resignation_date` date DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `TypeID` int DEFAULT NULL,
  `Managed_by` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TypeID` (`TypeID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'asif','male','2018-10-15','0000-00-00','1990-05-16',1,1),(2,'faria','female','2018-10-15','0000-00-00','1991-05-16',2,1),(3,'asif','male','2018-10-15','0000-00-00','1992-05-16',2,1),(4,'Jayeb','male','2018-10-15','0000-00-00','1990-03-15',3,1),(5,'nibraj','male','2018-10-15','0000-00-00','1989-05-29',3,1),(6,'mondira','female','2018-10-15','2020-01-01','1990-03-15',2,1),(7,'nishi','female','2018-10-15','0000-00-00','1995-02-25',6,1),(8,'dip','male','2018-10-15','0000-00-00','1986-03-15',5,5),(9,'kuddus','male','2018-10-15','0000-00-00','1995-02-25',4,3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-26 17:46:31
