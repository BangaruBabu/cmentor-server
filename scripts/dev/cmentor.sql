CREATE DATABASE  IF NOT EXISTS `cmentordb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cmentordb`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: cmentordb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `CM_Institute_master`
--

DROP TABLE IF EXISTS `CM_Institute_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CM_Institute_master` (
  `institute_id` int(11) NOT NULL,
  `board_or_university` varchar(225) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `phone1` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `address_line1` varchar(225) DEFAULT NULL,
  `address_line2` varchar(225) DEFAULT NULL,
  `is_school` tinyint(1) DEFAULT NULL,
  `is_ssc` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`institute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CM_Institute_master`
--

LOCK TABLES `CM_Institute_master` WRITE;
/*!40000 ALTER TABLE `CM_Institute_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `CM_Institute_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CM_district`
--

DROP TABLE IF EXISTS `CM_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CM_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `state_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CM_district`
--

LOCK TABLES `CM_district` WRITE;
/*!40000 ALTER TABLE `CM_district` DISABLE KEYS */;
INSERT INTO `CM_district` VALUES (1,'370','Bargarh',1),(2,'280','Jajpur',1),(3,'290','Khurdha',1),(4,'45','Mysore',2),(5,'567','Tumkur',2),(6,'234','Gadag',2),(7,'27','Guntur',3),(8,'267','Chittoor',3),(9,'217','Kurnool',3);
/*!40000 ALTER TABLE `CM_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CM_state`
--

DROP TABLE IF EXISTS `CM_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CM_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CM_state`
--

LOCK TABLES `CM_state` WRITE;
/*!40000 ALTER TABLE `CM_state` DISABLE KEYS */;
INSERT INTO `CM_state` VALUES (1,'OD','Odisha'),(2,'KA','Karnataka'),(3,'AP','Andhra Pradesh');
/*!40000 ALTER TABLE `CM_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cmentordb'
--

--
-- Dumping routines for database 'cmentordb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20  9:02:56
