-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: theatre
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `category_show_instance_jst`
--

DROP TABLE IF EXISTS `category_show_instance_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_show_instance_jst` (
  `category_show_instance_category_id` int(11) NOT NULL,
  `category_show_instance_show_id` int(11) NOT NULL,
  `category_show_instance_price` int(11) NOT NULL,
  KEY `category_id_c_idx` (`category_show_instance_category_id`),
  KEY `show_instance_c_idx` (`category_show_instance_show_id`),
  CONSTRAINT `category_id_c` FOREIGN KEY (`category_show_instance_category_id`) REFERENCES `category_table` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `show_instance_c` FOREIGN KEY (`category_show_instance_show_id`) REFERENCES `show_instance_table` (`show_instance_show_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_show_instance_jst`
--

LOCK TABLES `category_show_instance_jst` WRITE;
/*!40000 ALTER TABLE `category_show_instance_jst` DISABLE KEYS */;
INSERT INTO `category_show_instance_jst` VALUES (1,1,120),(2,1,100),(3,1,80),(1,2,110),(2,2,90),(3,2,70),(1,3,130),(2,3,100),(3,3,90),(1,4,150),(2,4,130),(3,4,120),(1,5,140),(2,5,120),(3,5,100),(1,6,130),(2,6,120),(3,6,100),(1,7,100),(2,7,80),(3,7,80),(1,8,110),(2,8,90),(3,8,70),(1,9,170),(2,9,150),(3,9,120),(1,10,200),(2,10,180),(3,10,150),(1,11,160),(2,11,150),(3,11,140),(1,12,230),(2,12,200),(3,12,170),(1,13,210),(2,13,180),(3,13,160),(1,14,250),(2,14,230),(3,14,180),(1,15,190),(2,15,170),(3,15,150),(1,16,150),(2,16,130),(3,16,120),(1,17,150),(2,17,140),(3,17,130),(1,18,180),(2,18,160),(3,18,160),(1,19,90),(2,19,90),(3,19,90);
/*!40000 ALTER TABLE `category_show_instance_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table`
--

DROP TABLE IF EXISTS `category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_table` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table`
--

LOCK TABLES `category_table` WRITE;
/*!40000 ALTER TABLE `category_table` DISABLE KEYS */;
INSERT INTO `category_table` VALUES (1,'GOLD'),(2,'SILVER'),(3,'BRONZE');
/*!40000 ALTER TABLE `category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension_movie_jst`
--

DROP TABLE IF EXISTS `dimension_movie_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimension_movie_jst` (
  `dimension_movie_jst_movie_id` int(11) NOT NULL,
  `dimension_movie_jst_dimension_id` int(11) NOT NULL,
  KEY `dimension_id_idx` (`dimension_movie_jst_dimension_id`),
  KEY `movie_id_d_idx` (`dimension_movie_jst_movie_id`),
  CONSTRAINT `dimension_id_d` FOREIGN KEY (`dimension_movie_jst_dimension_id`) REFERENCES `dimension_table` (`dimension_id`) ON UPDATE CASCADE,
  CONSTRAINT `movie_id_d` FOREIGN KEY (`dimension_movie_jst_movie_id`) REFERENCES `movie_table` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension_movie_jst`
--

LOCK TABLES `dimension_movie_jst` WRITE;
/*!40000 ALTER TABLE `dimension_movie_jst` DISABLE KEYS */;
INSERT INTO `dimension_movie_jst` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(7,2);
/*!40000 ALTER TABLE `dimension_movie_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension_table`
--

DROP TABLE IF EXISTS `dimension_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimension_table` (
  `dimension_id` int(11) NOT NULL,
  `dimension_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dimension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension_table`
--

LOCK TABLES `dimension_table` WRITE;
/*!40000 ALTER TABLE `dimension_table` DISABLE KEYS */;
INSERT INTO `dimension_table` VALUES (1,'2D'),(2,'3D');
/*!40000 ALTER TABLE `dimension_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_movie_jst`
--

DROP TABLE IF EXISTS `genre_movie_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_movie_jst` (
  `genre_movie_jst_movie_id` int(11) NOT NULL,
  `genre_movie_jst_genre_id` int(11) NOT NULL,
  KEY `genre_id_idx` (`genre_movie_jst_genre_id`),
  KEY `movie_id_g_idx` (`genre_movie_jst_movie_id`),
  CONSTRAINT `genre_id_g` FOREIGN KEY (`genre_movie_jst_genre_id`) REFERENCES `genre_table` (`genre_id`) ON UPDATE CASCADE,
  CONSTRAINT `movie_id_g` FOREIGN KEY (`genre_movie_jst_movie_id`) REFERENCES `movie_table` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_movie_jst`
--

LOCK TABLES `genre_movie_jst` WRITE;
/*!40000 ALTER TABLE `genre_movie_jst` DISABLE KEYS */;
INSERT INTO `genre_movie_jst` VALUES (1,1),(1,14),(2,1),(2,5),(3,5),(4,5),(4,14),(5,1),(5,14),(6,1),(6,5),(7,1);
/*!40000 ALTER TABLE `genre_movie_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_table`
--

DROP TABLE IF EXISTS `genre_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_table` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_table`
--

LOCK TABLES `genre_table` WRITE;
/*!40000 ALTER TABLE `genre_table` DISABLE KEYS */;
INSERT INTO `genre_table` VALUES (1,'Action'),(2,'Animation'),(3,'Biography'),(4,'Comedy'),(5,'Drama'),(6,'Family'),(7,'Fantasy'),(8,'History'),(9,'Horror'),(10,'Musical'),(11,'Romance'),(12,'Sci-Fi'),(13,'Sports'),(14,'Thriller');
/*!40000 ALTER TABLE `genre_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_movie_jst`
--

DROP TABLE IF EXISTS `language_movie_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_movie_jst` (
  `language_movie_jst_movie_id` int(11) NOT NULL,
  `language_movie_jst_language_id` int(11) NOT NULL,
  KEY `language_idx` (`language_movie_jst_language_id`),
  KEY `movie_id_l_idx` (`language_movie_jst_movie_id`),
  CONSTRAINT `language_id_l` FOREIGN KEY (`language_movie_jst_language_id`) REFERENCES `language_table` (`language_id`) ON UPDATE CASCADE,
  CONSTRAINT `movie_id_l` FOREIGN KEY (`language_movie_jst_movie_id`) REFERENCES `movie_table` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_movie_jst`
--

LOCK TABLES `language_movie_jst` WRITE;
/*!40000 ALTER TABLE `language_movie_jst` DISABLE KEYS */;
INSERT INTO `language_movie_jst` VALUES (1,1),(1,2),(2,1),(3,1),(3,7),(4,5),(5,1),(6,1),(6,3),(6,4),(7,1),(7,2);
/*!40000 ALTER TABLE `language_movie_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_table`
--

DROP TABLE IF EXISTS `language_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_table` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_table`
--

LOCK TABLES `language_table` WRITE;
/*!40000 ALTER TABLE `language_table` DISABLE KEYS */;
INSERT INTO `language_table` VALUES (1,'Hindi'),(2,'English'),(3,'Tamil'),(4,'Telugu'),(5,'Gujarati'),(6,'Kannada'),(7,'Malayalam'),(8,'Punjabi');
/*!40000 ALTER TABLE `language_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_table`
--

DROP TABLE IF EXISTS `movie_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_table` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(45) NOT NULL,
  `movie_description` varchar(45) NOT NULL,
  `movie_length` float NOT NULL,
  `movie_censor_certi` varchar(5) NOT NULL,
  `movie_release_date` date NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_table`
--

LOCK TABLES `movie_table` WRITE;
/*!40000 ALTER TABLE `movie_table` DISABLE KEYS */;
INSERT INTO `movie_table` VALUES (1,'Fast and Furious 8','Movie about Car racing',137,'U/A','2017-04-13'),(2,'Begum Jaan','About 11 Women in India Pakistan\'s Partition',144,'A','2017-04-14'),(3,'Sakhavu','A Malayalam Movie about a Politician',164,'U','2017-04-15'),(4,'Wrong Side Raju','About a hit and run case',160,'U/A','2016-09-09'),(5,'Naam Shabana','About a stuggling woman in her 30s',148,'U/A','2017-03-31'),(6,'Baahubali 2','Sequel of the great south indian movie',167,'U/A','2017-04-28'),(7,'Guardians of the Galaxy vol2','Sequel of the marvel mastepiece',120,'U/A','2017-05-05');
/*!40000 ALTER TABLE `movie_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_table`
--

DROP TABLE IF EXISTS `payment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_table` (
  `payment_id` int(11) NOT NULL,
  `payment_transaction_id` int(11) NOT NULL,
  `payment_seat_id` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_show_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_transaction_id_UNIQUE` (`payment_transaction_id`),
  KEY `show_id_p_idx` (`payment_show_id`),
  CONSTRAINT `show_id_p` FOREIGN KEY (`payment_show_id`) REFERENCES `category_show_instance_jst` (`category_show_instance_show_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_table`
--

LOCK TABLES `payment_table` WRITE;
/*!40000 ALTER TABLE `payment_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `row_category_jst`
--

DROP TABLE IF EXISTS `row_category_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `row_category_jst` (
  `row_category_jst_row_id` int(11) NOT NULL,
  `row_category_jst_category_id` int(11) NOT NULL,
  `row_category_jst_screen_id` int(11) NOT NULL,
  KEY `category_id_r_idx` (`row_category_jst_category_id`),
  KEY `screen_id_r_idx` (`row_category_jst_screen_id`),
  KEY `row_id_r` (`row_category_jst_row_id`),
  CONSTRAINT `category_id_r` FOREIGN KEY (`row_category_jst_category_id`) REFERENCES `category_table` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `row_id_r` FOREIGN KEY (`row_category_jst_row_id`) REFERENCES `row_table` (`row_id`) ON UPDATE CASCADE,
  CONSTRAINT `screen_id_r` FOREIGN KEY (`row_category_jst_screen_id`) REFERENCES `screen_table` (`screen_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `row_category_jst`
--

LOCK TABLES `row_category_jst` WRITE;
/*!40000 ALTER TABLE `row_category_jst` DISABLE KEYS */;
INSERT INTO `row_category_jst` VALUES (1,3,1),(2,3,1),(3,3,1),(4,2,1),(5,2,1),(6,2,1),(7,2,1),(8,1,1),(9,1,1),(10,1,1),(1,3,2),(2,3,2),(3,3,2),(4,2,2),(5,2,2),(6,2,2),(7,2,2),(8,1,2),(9,1,2),(10,1,2),(1,3,3),(2,3,3),(3,3,3),(4,2,3),(5,2,3),(6,2,3),(7,2,3),(8,1,3),(9,1,3),(10,1,3),(1,3,4),(2,3,4),(3,3,4),(4,2,4),(5,2,4),(6,2,4),(7,2,4),(8,1,4),(9,1,4),(10,1,4);
/*!40000 ALTER TABLE `row_category_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `row_table`
--

DROP TABLE IF EXISTS `row_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `row_table` (
  `row_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `row_table`
--

LOCK TABLES `row_table` WRITE;
/*!40000 ALTER TABLE `row_table` DISABLE KEYS */;
INSERT INTO `row_table` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `row_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_show_instance_jst`
--

DROP TABLE IF EXISTS `screen_show_instance_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screen_show_instance_jst` (
  `screen_show_instance_jst_show_id` int(11) NOT NULL,
  `screen_show_instance_jst_screen_id` int(11) NOT NULL,
  KEY `screen_id_s_idx` (`screen_show_instance_jst_screen_id`),
  KEY `show_id_s_idx` (`screen_show_instance_jst_show_id`),
  CONSTRAINT `screen_id_s` FOREIGN KEY (`screen_show_instance_jst_screen_id`) REFERENCES `screen_table` (`screen_id`) ON UPDATE CASCADE,
  CONSTRAINT `show_id_s` FOREIGN KEY (`screen_show_instance_jst_show_id`) REFERENCES `show_instance_table` (`show_instance_show_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_show_instance_jst`
--

LOCK TABLES `screen_show_instance_jst` WRITE;
/*!40000 ALTER TABLE `screen_show_instance_jst` DISABLE KEYS */;
INSERT INTO `screen_show_instance_jst` VALUES (1,1),(2,2),(3,4),(4,1),(5,4),(6,2),(7,4),(8,4),(9,4),(10,4),(11,1),(12,1),(13,1),(14,4),(15,4),(16,4),(17,2),(18,2);
/*!40000 ALTER TABLE `screen_show_instance_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_table`
--

DROP TABLE IF EXISTS `screen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screen_table` (
  `screen_id` int(11) NOT NULL,
  `screen_name` varchar(5) NOT NULL,
  `screen_total_seats` int(11) NOT NULL,
  `screen_total_rows` int(11) NOT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_table`
--

LOCK TABLES `screen_table` WRITE;
/*!40000 ALTER TABLE `screen_table` DISABLE KEYS */;
INSERT INTO `screen_table` VALUES (1,'1',100,10),(2,'2',100,10),(3,'3',100,10),(4,'4',100,10);
/*!40000 ALTER TABLE `screen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_row_jst`
--

DROP TABLE IF EXISTS `seat_row_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_row_jst` (
  `seat_row_jst_row_id` int(11) NOT NULL,
  `seat_row_jst_seat_id` int(11) NOT NULL,
  `seat_row_jst_seat_name` varchar(10) NOT NULL,
  KEY `seat_id_s_idx` (`seat_row_jst_seat_id`),
  KEY `row_id_s_idx` (`seat_row_jst_row_id`),
  CONSTRAINT `row_id_s` FOREIGN KEY (`seat_row_jst_row_id`) REFERENCES `row_table` (`row_id`) ON UPDATE CASCADE,
  CONSTRAINT `seat_id_s` FOREIGN KEY (`seat_row_jst_seat_id`) REFERENCES `seat_table` (`seat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_row_jst`
--

LOCK TABLES `seat_row_jst` WRITE;
/*!40000 ALTER TABLE `seat_row_jst` DISABLE KEYS */;
INSERT INTO `seat_row_jst` VALUES (1,1,'A1'),(1,2,'A2'),(1,3,'A3'),(1,4,'A4'),(1,5,'A5'),(1,6,'A6'),(1,7,'A7'),(1,8,'A8'),(1,9,'A9'),(1,10,'A10'),(2,11,'B1'),(2,12,'B2'),(2,13,'B3'),(2,14,'B4'),(2,15,'B5'),(2,16,'B6'),(2,17,'B7'),(2,18,'B8'),(2,19,'B9'),(2,20,'B10'),(3,21,'C1'),(3,22,'C2'),(3,23,'C3'),(3,24,'C4'),(3,25,'C5'),(3,26,'C6'),(3,27,'C7'),(3,28,'C8'),(3,29,'C9'),(3,30,'C10'),(4,31,'D1'),(4,32,'D2'),(4,33,'D3'),(4,34,'D4'),(4,35,'D5'),(4,36,'D6'),(4,37,'D7'),(4,38,'D8'),(4,39,'D9'),(4,40,'D10'),(5,41,'D11'),(5,42,'D12'),(5,43,'D13'),(5,44,'D14'),(5,45,'D15'),(5,46,'D16'),(5,47,'D17'),(5,48,'D18'),(5,49,'D19'),(5,50,'D20'),(6,51,'E1'),(6,52,'E2'),(6,53,'E3'),(6,54,'E4'),(6,55,'E5'),(6,56,'E6'),(6,57,'E7'),(6,58,'E8'),(6,59,'E9'),(6,60,'E10'),(7,61,'F1'),(7,62,'F2'),(7,63,'F3'),(7,64,'F4'),(7,65,'F5'),(7,66,'F6'),(7,67,'F7'),(7,68,'F8'),(7,69,'F9'),(7,70,'F10'),(8,71,'G1'),(8,72,'G2'),(8,73,'G3'),(8,74,'G4'),(8,75,'G5'),(8,76,'G6'),(8,77,'G7'),(8,78,'G8'),(8,79,'G9'),(8,80,'G10'),(9,81,'H1'),(9,82,'H2'),(9,83,'H3'),(9,84,'H4'),(9,85,'H5'),(9,86,'H6'),(9,87,'H7'),(9,88,'H8'),(9,89,'H9'),(9,90,'H10'),(10,91,'I1'),(10,92,'I2'),(10,93,'I3'),(10,94,'I4'),(10,95,'I5'),(10,96,'I6'),(10,97,'I7'),(10,98,'I8'),(10,99,'I9'),(10,100,'I10');
/*!40000 ALTER TABLE `seat_row_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_screen_jst`
--

DROP TABLE IF EXISTS `seat_screen_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_screen_jst` (
  `seat_screen_jst_seat_id` int(11) NOT NULL,
  `seat_screen_jst_screen_id` int(11) NOT NULL,
  KEY `seat_id_idx` (`seat_screen_jst_seat_id`),
  KEY `screen_id_idx` (`seat_screen_jst_screen_id`),
  CONSTRAINT `screen_id_ss` FOREIGN KEY (`seat_screen_jst_screen_id`) REFERENCES `screen_table` (`screen_id`) ON UPDATE CASCADE,
  CONSTRAINT `seat_id_ss` FOREIGN KEY (`seat_screen_jst_seat_id`) REFERENCES `seat_table` (`seat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_screen_jst`
--

LOCK TABLES `seat_screen_jst` WRITE;
/*!40000 ALTER TABLE `seat_screen_jst` DISABLE KEYS */;
INSERT INTO `seat_screen_jst` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(22,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,4),(61,4),(62,4),(63,4),(64,4),(65,4),(66,4),(67,4),(68,4),(69,4),(70,4),(71,4),(72,4),(73,4),(74,4),(75,4),(76,4),(77,4),(78,4),(79,4),(80,4),(81,4),(82,4),(83,4),(84,4),(85,4),(86,4),(87,4),(88,4),(89,4),(90,4),(91,4),(92,4),(93,4),(94,4),(95,4),(96,4),(97,4),(98,4),(99,4),(100,4);
/*!40000 ALTER TABLE `seat_screen_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_show_instance_jst`
--

DROP TABLE IF EXISTS `seat_show_instance_jst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_show_instance_jst` (
  `seat_show_instance_jst_show_id` int(11) NOT NULL,
  `seat_show_instance_jst_seat_id` int(11) NOT NULL,
  `seat_show_instance_seat_reserved` int(11) NOT NULL DEFAULT '0',
  KEY `show_id_ssi_idx` (`seat_show_instance_jst_show_id`),
  KEY `seat_id_ssi_idx` (`seat_show_instance_jst_seat_id`),
  CONSTRAINT `seat_id_ssi` FOREIGN KEY (`seat_show_instance_jst_seat_id`) REFERENCES `seat_table` (`seat_id`) ON UPDATE CASCADE,
  CONSTRAINT `show_id_ssi` FOREIGN KEY (`seat_show_instance_jst_show_id`) REFERENCES `show_instance_table` (`show_instance_show_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_show_instance_jst`
--

LOCK TABLES `seat_show_instance_jst` WRITE;
/*!40000 ALTER TABLE `seat_show_instance_jst` DISABLE KEYS */;
INSERT INTO `seat_show_instance_jst` VALUES (1,1,1),(1,2,1),(1,3,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,11,0),(1,12,0),(1,13,0),(1,14,0),(1,15,0),(1,16,0),(1,17,0),(1,18,0),(1,19,0),(1,20,0),(1,21,0),(1,22,0),(1,23,0),(1,24,0),(1,25,0),(1,26,0),(1,27,0),(1,28,0),(1,29,0),(1,30,0),(1,31,0),(1,32,0),(1,33,0),(1,34,0),(1,35,0),(1,36,0),(1,37,0),(1,38,0),(1,39,0),(1,40,0),(1,41,0),(1,42,0),(1,43,0),(1,44,0),(1,45,0),(1,46,0),(1,47,0),(1,48,0),(1,49,0),(1,50,0),(1,51,0),(1,52,0),(1,53,0),(1,54,0),(1,55,0),(1,56,0),(1,57,0),(1,58,0),(1,59,0),(1,60,0),(1,61,0),(1,62,0),(1,63,0),(1,64,0),(1,65,0),(1,66,0),(1,67,0),(1,68,0),(1,69,0),(1,70,0),(1,71,0),(1,72,0),(1,73,0),(1,74,0),(1,75,0),(1,76,0),(1,77,0),(1,78,0),(1,79,0),(1,80,0),(1,81,0),(1,82,0),(1,83,0),(1,84,0),(1,85,0),(1,86,0),(1,87,0),(1,88,0),(1,89,0),(1,90,0),(1,91,0),(1,92,0),(1,93,0),(1,94,0),(1,95,0),(1,96,0),(1,97,0),(1,98,0),(1,99,0),(1,100,0),(2,1,0),(2,2,0),(2,3,0),(2,4,0),(2,5,0),(2,6,0),(2,7,0),(2,8,0),(2,9,0),(2,10,0),(2,11,0),(2,12,0),(2,13,0),(2,14,0),(2,15,0),(2,16,0),(2,17,0),(2,18,0),(2,19,0),(2,20,0),(2,21,0),(2,22,0),(2,23,0),(2,24,0),(2,25,0),(2,26,0),(2,27,0),(2,28,0),(2,29,0),(2,30,0),(2,31,0),(2,32,0),(2,33,0),(2,34,0),(2,35,0),(2,36,0),(2,37,0),(2,38,0),(2,39,0),(2,40,0),(2,41,0),(2,42,0),(2,43,0),(2,44,0),(2,45,0),(2,46,0),(2,47,0),(2,48,0),(2,49,0),(2,50,0),(2,51,0),(2,52,0),(2,53,0),(2,54,0),(2,55,0),(2,56,0),(2,57,0),(2,58,0),(2,59,0),(2,60,0),(2,61,0),(2,62,0),(2,63,0),(2,64,0),(2,65,0),(2,66,0),(2,67,0),(2,68,0),(2,69,0),(2,70,0),(2,71,0),(2,72,0),(2,73,0),(2,74,0),(2,75,0),(2,76,0),(2,77,0),(2,78,0),(2,79,0),(2,80,0),(2,81,0),(2,82,0),(2,83,0),(2,84,0),(2,85,0),(2,86,0),(2,87,0),(2,88,0),(2,89,0),(2,90,0),(2,91,0),(2,92,0),(2,93,0),(2,94,0),(2,95,0),(2,96,0),(2,97,0),(2,98,0),(2,99,0),(2,100,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,5,0),(3,6,0),(3,7,0),(3,8,0),(3,9,0),(3,10,0),(3,11,0),(3,12,0),(3,13,0),(3,14,0),(3,15,0),(3,16,0),(3,17,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,26,0),(3,27,0),(3,28,0),(3,29,0),(3,30,0),(3,31,0),(3,32,0),(3,33,0),(3,34,0),(3,35,0),(3,36,0),(3,37,0),(3,38,0),(3,39,0),(3,40,0),(3,41,0),(3,42,0),(3,43,0),(3,44,0),(3,45,0),(3,46,0),(3,47,0),(3,48,0),(3,49,0),(3,50,0),(3,51,0),(3,52,0),(3,53,0),(3,54,0),(3,55,0),(3,56,0),(3,57,0),(3,58,0),(3,59,0),(3,60,0),(3,61,0),(3,62,0),(3,63,0),(3,64,0),(3,65,0),(3,66,0),(3,67,0),(3,68,0),(3,69,0),(3,70,0),(3,71,0),(3,72,0),(3,73,0),(3,74,0),(3,75,0),(3,76,0),(3,77,0),(3,78,0),(3,79,0),(3,80,0),(3,81,0),(3,82,0),(3,83,0),(3,84,0),(3,85,0),(3,86,0),(3,87,0),(3,88,0),(3,89,0),(3,90,0),(3,91,0),(3,92,0),(3,93,0),(3,94,0),(3,95,0),(3,96,0),(3,97,0),(3,98,0),(3,99,0),(3,100,0),(4,1,0),(4,2,0),(4,3,0),(4,4,0),(4,5,0),(4,6,0),(4,7,0),(4,8,0),(4,9,0),(4,10,0),(4,11,0),(4,12,0),(4,13,0),(4,14,0),(4,15,0),(4,16,0),(4,17,0),(4,18,0),(4,19,0),(4,20,0),(4,21,0),(4,22,0),(4,23,0),(4,24,0),(4,25,0),(4,26,0),(4,27,0),(4,28,0),(4,29,0),(4,30,0),(4,31,0),(4,32,0),(4,33,0),(4,34,0),(4,35,0),(4,36,0),(4,37,0),(4,38,0),(4,39,0),(4,40,0),(4,41,0),(4,42,0),(4,43,0),(4,44,0),(4,45,0),(4,46,0),(4,47,0),(4,48,0),(4,49,0),(4,50,0),(4,51,0),(4,52,0),(4,53,0),(4,54,0),(4,55,0),(4,56,0),(4,57,0),(4,58,0),(4,59,0),(4,60,0),(4,61,0),(4,62,0),(4,63,0),(4,64,0),(4,65,0),(4,66,0),(4,67,0),(4,68,0),(4,69,0),(4,70,0),(4,71,0),(4,72,0),(4,73,0),(4,74,0),(4,75,0),(4,76,0),(4,77,0),(4,78,0),(4,79,0),(4,80,0),(4,81,0),(4,82,0),(4,83,0),(4,84,0),(4,85,0),(4,86,0),(4,87,0),(4,88,0),(4,89,0),(4,90,0),(4,91,0),(4,92,0),(4,93,0),(4,94,0),(4,95,0),(4,96,0),(4,97,0),(4,98,0),(4,99,0),(4,100,0),(5,1,0),(5,2,0),(5,3,0),(5,4,0),(5,5,0),(5,6,0),(5,7,0),(5,8,0),(5,9,0),(5,10,0),(5,11,0),(5,12,0),(5,13,0),(5,14,0),(5,15,0),(5,16,0),(5,17,0),(5,18,0),(5,19,0),(5,20,0),(5,21,0),(5,22,0),(5,23,0),(5,24,0),(5,25,0),(5,26,0),(5,27,0),(5,28,0),(5,29,0),(5,30,0),(5,31,0),(5,32,0),(5,33,0),(5,34,0),(5,35,0),(5,36,0),(5,37,0),(5,38,0),(5,39,0),(5,40,0),(5,41,0),(5,42,0),(5,43,0),(5,44,0),(5,45,0),(5,46,0),(5,47,0),(5,48,0),(5,49,0),(5,50,0),(5,51,0),(5,52,0),(5,53,0),(5,54,0),(5,55,0),(5,56,0),(5,57,0),(5,58,0),(5,59,0),(5,60,0),(5,61,0),(5,62,0),(5,63,0),(5,64,0),(5,65,0),(5,66,0),(5,67,0),(5,68,0),(5,69,0),(5,70,0),(5,71,0),(5,72,0),(5,73,0),(5,74,0),(5,75,0),(5,76,0),(5,77,0),(5,78,0),(5,79,0),(5,80,0),(5,81,0),(5,82,0),(5,83,0),(5,84,0),(5,85,0),(5,86,0),(5,87,0),(5,88,0),(5,89,0),(5,90,0),(5,91,0),(5,92,0),(5,93,0),(5,94,0),(5,95,0),(5,96,0),(5,97,0),(5,98,0),(5,99,0),(5,100,0),(6,1,0),(6,2,0),(6,3,0),(6,4,0),(6,5,0),(6,6,0),(6,7,0),(6,8,0),(6,9,0),(6,10,0),(6,11,0),(6,12,0),(6,13,0),(6,14,0),(6,15,0),(6,16,0),(6,17,0),(6,18,0),(6,19,0),(6,20,0),(6,21,0),(6,22,0),(6,23,0),(6,24,0),(6,25,0),(6,26,0),(6,27,0),(6,28,0),(6,29,0),(6,30,0),(6,31,0),(6,32,0),(6,34,0),(6,35,0),(6,36,0),(6,37,0),(6,38,0),(6,39,0),(6,40,0),(6,41,0),(6,42,0),(6,43,0),(6,44,0),(6,45,0),(6,46,0),(6,47,0),(6,48,0),(6,49,0),(6,50,0),(6,51,0),(6,52,0),(6,53,0),(6,54,0),(6,55,0),(6,56,0),(6,57,0),(6,58,0),(6,59,0),(6,60,0),(6,61,0),(6,62,0),(6,63,0),(6,64,0),(6,65,0),(6,66,0),(6,67,0),(6,68,0),(6,69,0),(6,70,0),(6,71,0),(6,72,0),(6,73,0),(6,74,0),(6,75,0),(6,76,0),(6,77,0),(6,78,0),(6,79,0),(6,80,0),(6,81,0),(6,82,0),(6,83,0),(6,84,0),(6,85,0),(6,86,0),(6,87,0),(6,88,0),(6,89,0),(6,90,0),(6,91,0),(6,92,0),(6,93,0),(6,94,0),(6,95,0),(6,96,0),(6,97,0),(6,98,0),(6,99,0),(6,100,0),(6,33,0),(7,1,0),(7,2,0),(7,3,0),(7,4,0),(7,5,0),(7,6,0),(7,7,0),(7,8,0),(7,9,0),(7,10,0),(7,11,0),(7,12,0),(7,13,0),(7,14,0),(7,15,0),(7,16,0),(7,17,0),(7,18,0),(7,19,0),(7,20,0),(7,21,0),(7,22,0),(7,23,0),(7,24,0),(7,25,0),(7,26,0),(7,27,0),(7,28,0),(7,29,0),(7,30,0),(7,31,0),(7,32,0),(7,33,0),(7,34,0),(7,35,0),(7,36,0),(7,37,0),(7,38,0),(7,39,0),(7,40,0),(7,41,0),(7,42,0),(7,43,0),(7,44,0),(7,45,0),(7,46,0),(7,47,0),(7,48,0),(7,49,0),(7,50,0),(7,51,0),(7,52,0),(7,53,0),(7,54,0),(7,55,0),(7,56,0),(7,57,0),(7,58,0),(7,59,0),(7,60,0),(7,61,0),(7,62,0),(7,63,0),(7,64,0),(7,65,0),(7,66,0),(7,67,0),(7,68,0),(7,69,0),(7,70,0),(7,71,0),(7,72,0),(7,73,0),(7,74,0),(7,75,0),(7,76,0),(7,77,0),(7,78,0),(7,79,0),(7,80,0),(7,81,0),(7,82,0),(7,83,0),(7,84,0),(7,85,0),(7,86,0),(7,87,0),(7,88,0),(7,89,0),(7,90,0),(7,91,0),(7,92,0),(7,93,0),(7,94,0),(7,95,0),(7,96,0),(7,97,0),(7,98,0),(7,99,0),(7,100,0),(8,1,0),(8,2,0),(8,3,0),(8,4,0),(8,5,0),(8,6,0),(8,7,0),(8,8,0),(8,9,0),(8,10,0),(8,11,0),(8,12,0),(8,13,0),(8,14,0),(8,15,0),(8,16,0),(8,17,0),(8,18,0),(8,19,0),(8,20,0),(8,21,0),(8,22,0),(8,23,0),(8,24,0),(8,25,0),(8,26,0),(8,27,0),(8,28,0),(8,29,0),(8,30,0),(8,31,0),(8,32,0),(8,33,0),(8,34,0),(8,35,0),(8,36,0),(8,37,0),(8,38,0),(8,39,0),(8,40,0),(8,41,0),(8,42,0),(8,43,0),(8,44,0),(8,45,0),(8,46,0),(8,47,0),(8,48,0),(8,49,0),(8,50,0),(8,51,0),(8,52,0),(8,53,0),(8,54,0),(8,55,0),(8,56,0),(8,57,0),(8,58,0),(8,59,0),(8,60,0),(8,61,0),(8,62,0),(8,63,0),(8,64,0),(8,65,0),(8,67,0),(8,68,0),(8,69,0),(8,70,0),(8,71,0),(8,72,0),(8,73,0),(8,74,0),(8,75,0),(8,76,0),(8,77,0),(8,78,0),(8,79,0),(8,80,0),(8,81,0),(8,82,0),(8,83,0),(8,84,0),(8,85,0),(8,86,0),(8,87,0),(8,88,0),(8,89,0),(8,90,0),(8,91,0),(8,92,0),(8,93,0),(8,94,0),(8,95,0),(8,96,0),(8,97,0),(8,98,0),(8,99,0),(8,100,0),(8,66,0),(9,2,0),(9,3,0),(9,4,0),(9,5,0),(9,6,0),(9,7,0),(9,8,0),(9,9,0),(9,10,0),(9,11,0),(9,12,0),(9,13,0),(9,14,0),(9,15,0),(9,16,0),(9,17,0),(9,18,0),(9,19,0),(9,20,0),(9,21,0),(9,22,0),(9,23,0),(9,24,0),(9,25,0),(9,26,0),(9,27,0),(9,28,0),(9,29,0),(9,30,0),(9,31,0),(9,32,0),(9,33,0),(9,34,0),(9,35,0),(9,36,0),(9,37,0),(9,38,0),(9,39,0),(9,40,0),(9,41,0),(9,42,0),(9,43,0),(9,44,0),(9,45,0),(9,46,0),(9,47,0),(9,48,0),(9,49,0),(9,50,0),(9,51,0),(9,52,0),(9,53,0),(9,54,0),(9,55,0),(9,56,0),(9,57,0),(9,58,0),(9,59,0),(9,60,0),(9,61,0),(9,62,0),(9,63,0),(9,64,0),(9,65,0),(9,66,0),(9,67,0),(9,68,0),(9,69,0),(9,70,0),(9,71,0),(9,72,0),(9,73,0),(9,74,0),(9,75,0),(9,76,0),(9,77,0),(9,78,0),(9,79,0),(9,80,0),(9,81,0),(9,82,0),(9,83,0),(9,84,0),(9,85,0),(9,86,0),(9,87,0),(9,88,0),(9,89,0),(9,90,0),(9,91,0),(9,92,0),(9,93,0),(9,94,0),(9,95,0),(9,96,0),(9,97,0),(9,98,0),(9,99,0),(9,100,0),(9,1,0),(11,1,0),(11,2,0),(11,3,0),(11,4,0),(11,5,0),(11,6,0),(11,7,0),(11,8,0),(11,9,0),(11,10,0),(11,11,0),(11,12,0),(11,13,0),(11,14,0),(11,15,0),(11,16,0),(11,17,0),(11,18,0),(11,19,0),(11,20,0),(11,21,0),(11,22,0),(11,23,0),(11,24,0),(11,25,0),(11,26,0),(11,27,0),(11,28,0),(11,29,0),(11,30,0),(11,31,0),(11,32,0),(11,33,0),(11,34,0),(11,35,0),(11,36,0),(11,37,0),(11,38,0),(11,39,0),(11,40,0),(11,41,0),(11,42,0),(11,43,0),(11,44,0),(11,45,0),(11,46,0),(11,47,0),(11,48,0),(11,49,0),(11,50,0),(11,51,0),(11,52,0),(11,53,0),(11,54,0),(11,55,0),(11,56,0),(11,57,0),(11,58,0),(11,59,0),(11,60,0),(11,61,0),(11,62,0),(11,63,0),(11,64,0),(11,65,0),(11,66,0),(11,67,0),(11,68,0),(11,69,0),(11,70,0),(11,71,0),(11,72,0),(11,73,0),(11,74,0),(11,75,0),(11,76,0),(11,77,0),(11,78,0),(11,79,0),(11,80,0),(11,81,0),(11,82,0),(11,83,0),(11,84,0),(11,85,0),(11,86,0),(11,87,0),(11,88,0),(11,89,0),(11,90,0),(11,91,0),(11,92,0),(11,93,0),(11,94,0),(11,95,0),(11,96,0),(11,97,0),(11,98,0),(11,99,0),(11,100,0),(10,1,0),(10,2,0),(10,3,0),(10,4,0),(10,5,0),(10,6,0),(10,7,0),(10,8,0),(10,9,0),(10,10,0),(10,11,0),(10,12,0),(10,13,0),(10,14,0),(10,15,0),(10,16,0),(10,17,0),(10,18,0),(10,19,0),(10,20,0),(10,21,0),(10,22,0),(10,23,0),(10,24,0),(10,25,0),(10,26,0),(10,27,0),(10,28,0),(10,29,0),(10,30,0),(10,31,0),(10,32,0),(10,33,0),(10,34,0),(10,35,0),(10,36,0),(10,37,0),(10,38,0),(10,39,0),(10,40,0),(10,41,0),(10,42,0),(10,43,0),(10,44,0),(10,45,0),(10,46,0),(10,47,0),(10,48,0),(10,49,0),(10,50,0),(10,51,0),(10,52,0),(10,53,0),(10,54,0),(10,55,0),(10,56,0),(10,57,0),(10,58,0),(10,59,0),(10,60,0),(10,61,0),(10,62,0),(10,63,0),(10,64,0),(10,65,0),(10,66,0),(10,67,0),(10,68,0),(10,69,0),(10,70,0),(10,71,0),(10,72,0),(10,73,0),(10,74,0),(10,75,0),(10,76,0),(10,77,0),(10,78,0),(10,79,0),(10,80,0),(10,81,0),(10,82,0),(10,83,0),(10,84,0),(10,85,0),(10,86,0),(10,87,0),(10,88,0),(10,89,0),(10,90,0),(10,91,0),(10,92,0),(10,93,0),(10,94,0),(10,95,0),(10,96,0),(10,97,0),(10,98,0),(10,99,0),(10,100,0),(12,1,0),(12,2,0),(12,3,0),(12,4,0),(12,5,0),(12,6,0),(12,7,0),(12,8,0),(12,9,0),(12,10,0),(12,11,0),(12,12,0),(12,13,0),(12,14,0),(12,15,0),(12,16,0),(12,17,0),(12,18,0),(12,19,0),(12,20,0),(12,21,0),(12,22,0),(12,23,0),(12,24,0),(12,25,0),(12,26,0),(12,27,0),(12,28,0),(12,29,0),(12,30,0),(12,31,0),(12,32,0),(12,33,0),(12,34,0),(12,35,0),(12,36,0),(12,37,0),(12,38,0),(12,39,0),(12,40,0),(12,41,0),(12,42,0),(12,43,0),(12,44,0),(12,45,0),(12,46,0),(12,47,0),(12,48,0),(12,49,0),(12,50,0),(12,51,0),(12,52,0),(12,53,0),(12,54,0),(12,55,0),(12,56,0),(12,57,0),(12,58,0),(12,59,0),(12,60,0),(12,61,0),(12,62,0),(12,63,0),(12,64,0),(12,65,0),(12,66,0),(12,67,0),(12,68,0),(12,69,0),(12,70,0),(12,71,0),(12,72,0),(12,73,0),(12,74,0),(12,75,0),(12,76,0),(12,77,0),(12,78,0),(12,79,0),(12,80,0),(12,81,0),(12,82,0),(12,83,0),(12,84,0),(12,85,0),(12,86,0),(12,87,0),(12,88,0),(12,89,0),(12,90,0),(12,91,0),(12,92,0),(12,93,0),(12,94,0),(12,95,0),(12,96,0),(12,97,0),(12,98,0),(12,99,0),(12,100,0),(13,1,0),(13,2,0),(13,3,0),(13,4,0),(13,5,0),(13,6,0),(13,7,0),(13,8,0),(13,9,0),(13,10,0),(13,11,0),(13,12,0),(13,13,0),(13,14,0),(13,15,0),(13,16,0),(13,17,0),(13,18,0),(13,19,0),(13,20,0),(13,21,0),(13,22,0),(13,23,0),(13,24,0),(13,25,0),(13,26,0),(13,27,0),(13,28,0),(13,29,0),(13,30,0),(13,31,0),(13,32,0),(13,33,0),(13,34,0),(13,35,0),(13,36,0),(13,37,0),(13,38,0),(13,39,0),(13,40,0),(13,41,0),(13,42,0),(13,43,0),(13,44,0),(13,45,0),(13,46,0),(13,47,0),(13,48,0),(13,49,0),(13,50,0),(13,51,0),(13,52,0),(13,53,0),(13,54,0),(13,55,0),(13,56,0),(13,57,0),(13,58,0),(13,59,0),(13,60,0),(13,61,0),(13,62,0),(13,63,0),(13,64,0),(13,65,0),(13,66,0),(13,67,0),(13,68,0),(13,69,0),(13,70,0),(13,71,0),(13,72,0),(13,73,0),(13,74,0),(13,75,0),(13,76,0),(13,77,0),(13,78,0),(13,79,0),(13,80,0),(13,81,0),(13,82,0),(13,83,0),(13,84,0),(13,85,0),(13,86,0),(13,87,0),(13,88,0),(13,89,0),(13,91,0),(13,92,0),(13,93,0),(13,94,0),(13,95,0),(13,96,0),(13,97,0),(13,98,0),(13,99,0),(13,100,0),(14,1,0),(14,2,0),(14,3,0),(14,4,0),(14,5,0),(14,6,0),(14,7,0),(14,8,0),(14,9,0),(14,10,0),(14,11,0),(14,12,0),(14,13,0),(14,14,0),(14,15,0),(14,16,0),(14,17,0),(14,18,0),(14,19,0),(14,20,0),(14,21,0),(14,22,0),(14,23,0),(14,24,0),(14,25,0),(14,26,0),(14,27,0),(14,28,0),(14,29,0),(14,30,0),(14,31,0),(14,32,0),(14,33,0),(14,34,0),(14,35,0),(14,36,0),(14,37,0),(14,38,0),(14,39,0),(14,40,0),(14,41,0),(14,42,0),(14,43,0),(14,44,0),(14,45,0),(14,46,0),(14,47,0),(14,48,0),(14,49,0),(14,50,0),(14,51,0),(14,52,0),(14,53,0),(14,54,0),(14,55,0),(14,56,0),(14,57,0),(14,58,0),(14,59,0),(14,60,0),(14,61,0),(14,62,0),(14,63,0),(14,64,0),(14,65,0),(14,66,0),(14,67,0),(14,68,0),(14,69,0),(14,70,0),(14,71,0),(14,72,0),(14,73,0),(14,74,0),(14,75,0),(14,76,0),(14,77,0),(14,78,0),(14,79,0),(14,80,0),(14,81,0),(14,82,0),(14,83,0),(14,84,0),(14,85,0),(14,86,0),(14,87,0),(14,88,0),(14,89,0),(14,90,0),(14,91,0),(14,92,0),(14,93,0),(14,94,0),(14,95,0),(14,96,0),(14,97,0),(14,98,0),(14,99,0),(14,100,0),(13,90,0);
/*!40000 ALTER TABLE `seat_show_instance_jst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_table`
--

DROP TABLE IF EXISTS `seat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_table` (
  `seat_id` int(11) NOT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_table`
--

LOCK TABLES `seat_table` WRITE;
/*!40000 ALTER TABLE `seat_table` DISABLE KEYS */;
INSERT INTO `seat_table` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100);
/*!40000 ALTER TABLE `seat_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_instance_table`
--

DROP TABLE IF EXISTS `show_instance_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `show_instance_table` (
  `show_instance_show_id` int(11) NOT NULL,
  `show_instance_screen_id` int(11) NOT NULL,
  `show_instance_language_id` int(11) NOT NULL,
  `show_instance_start_time` time NOT NULL,
  `show_instance_dimension_id` int(11) NOT NULL,
  `show_instance_movie_id` int(11) NOT NULL,
  PRIMARY KEY (`show_instance_show_id`),
  KEY `movie_id_si_idx` (`show_instance_movie_id`),
  KEY `dimension_id_si_idx` (`show_instance_dimension_id`),
  KEY `language_id_si_idx` (`show_instance_language_id`),
  CONSTRAINT `dimension_id_si` FOREIGN KEY (`show_instance_dimension_id`) REFERENCES `dimension_movie_jst` (`dimension_movie_jst_dimension_id`) ON UPDATE CASCADE,
  CONSTRAINT `language_id_si` FOREIGN KEY (`show_instance_language_id`) REFERENCES `language_movie_jst` (`language_movie_jst_language_id`) ON UPDATE CASCADE,
  CONSTRAINT `movie_id_si` FOREIGN KEY (`show_instance_movie_id`) REFERENCES `movie_table` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_instance_table`
--

LOCK TABLES `show_instance_table` WRITE;
/*!40000 ALTER TABLE `show_instance_table` DISABLE KEYS */;
INSERT INTO `show_instance_table` VALUES (1,1,1,'09:00:00',1,2),(2,2,2,'10:30:00',1,1),(3,4,2,'10:00:00',2,1),(4,1,1,'12:00:00',1,2),(5,4,2,'13:00:00',2,1),(6,2,2,'12:00:00',1,1),(7,3,1,'09:00:00',1,5),(8,3,1,'12:00:00',1,5),(9,3,1,'15:00:00',1,5),(10,3,1,'18:00:00',1,5),(11,1,1,'15:00:00',1,2),(12,1,1,'21:00:00',1,2),(13,1,5,'19:30:00',1,4),(14,4,7,'19:30:00',1,3),(15,4,2,'21:00:00',2,1),(16,3,1,'20:30:00',1,1),(17,2,1,'14:00:00',1,1),(18,2,1,'17:00:00',2,1),(19,1,1,'09:00:00',1,2),(20,2,1,'09:00:00',1,5),(21,3,2,'09:00:00',2,1),(22,3,5,'03:00:00',1,4),(23,4,5,'06:00:00',1,4),(25,1,5,'12:00:00',1,4);
/*!40000 ALTER TABLE `show_instance_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_table` (
  `time_table_movie_id` int(11) NOT NULL,
  `time_table_show_id` int(11) NOT NULL,
  `time_table_date` date NOT NULL,
  `time_table_start_time` time NOT NULL,
  KEY `show_id_t_idx` (`time_table_show_id`),
  KEY `movie_id_t_idx` (`time_table_movie_id`),
  CONSTRAINT `movie_id_t` FOREIGN KEY (`time_table_movie_id`) REFERENCES `movie_table` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `show_id_t` FOREIGN KEY (`time_table_show_id`) REFERENCES `show_instance_table` (`show_instance_show_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (2,1,'2017-04-20','09:00:00'),(1,2,'2017-04-20','10:30:00'),(1,3,'2017-04-20','10:30:00'),(2,4,'2017-04-20','12:00:00'),(1,5,'2017-04-20','10:30:00'),(1,6,'2017-04-20','10:30:00'),(5,7,'2017-04-20','09:00:00'),(5,8,'2017-04-20','12:00:00'),(5,9,'2017-04-20','15:00:00'),(5,10,'2017-04-20','18:00:00'),(2,11,'2017-04-20','15:00:00'),(2,12,'2017-04-20','21:00:00'),(4,13,'2017-04-20','19:30:00'),(3,14,'2017-04-20','19:30:00'),(1,15,'2017-04-20','10:30:00'),(1,16,'2017-04-20','10:30:00'),(1,17,'2017-04-20','10:30:00'),(1,18,'2017-04-20','10:30:00'),(2,19,'2017-04-21','09:00:00'),(5,20,'2017-04-21','09:00:00'),(1,21,'2017-04-21','09:00:00'),(4,22,'2017-04-21','03:00:00'),(4,23,'2017-04-21','06:00:00'),(4,25,'2017-04-21','12:00:00');
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 10:57:17
