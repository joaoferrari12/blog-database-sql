CREATE DATABASE  IF NOT EXISTS `project_2_website` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_2_website`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: project_2_website
-- ------------------------------------------------------
-- Server version	8.0.40

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
  `person_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password_hash` varbinary(75) NOT NULL,
  `profile_photo_id` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_ide_UNIQUE` (`person_id`),
  UNIQUE KEY `password_hash_UNIQUE` (`password_hash`),
  KEY `profile_photo_id_idx` (`profile_photo_id`),
  CONSTRAINT `person_profile_photo_id_fk` FOREIGN KEY (`profile_photo_id`) REFERENCES `photo` (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Barbara','Hodge','b.hodge@example.com',_binary '$2a$12$t8RXltW1.6h/N/AN2cfb6OJRokyD93mVfV.DU/OiOQmKtta52vq8O',1),(3,'James','Buckles','j.buckles@example.com',_binary '$2a$12$z2kxr0YG0Rl4kyPHv392VOygP.3B4R9QRWzfVykxJ4uQHBQBko78S',2),(4,'Natalie','Wilhite','bestest.forever@example.com',_binary '$2a$12$u6UeDFpFgnBlcg2rLJN6a.v95JU.MPCm/1RAWO1e5bV7QwbVvKB6i',NULL),(5,'Mary','Barnett','lifeisahighway@example.com',_binary '$2a$12$x.vc6It47K4ZktZLonV1iewq5qvXf6/ZLM0RJJVH/Jviy862XB/3W',3),(6,'Richard','Tipton','tippertapper266602@example.com',_binary '$2a$12$WLec1vMhA2UsRvsXozlU.uSGmlEqFpwzuqE8zVOPKtWR0BkZc4FAy',5);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `photo_id` int NOT NULL,
  `file_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caption` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`photo_id`),
  UNIQUE KEY `photo_id_UNIQUE` (`photo_id`),
  UNIQUE KEY `file_name_UNIQUE` (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'barbara_profile.jpg','2019-06-15 00:00:00','Barbara\'s profile'),(2,'img_9203710.jpg','2019-06-15 00:00:00','James\' Profile'),(3,'dcim_38118385.jpg','2019-06-15 00:00:00','Mary'),(4,'knitting.jpg','2019-06-15 00:00:00','Knitted Touques'),(5,'img_28391910488.jpg','2019-06-15 00:00:00','Richard'),(6,'img_21838392835.jpg','2019-06-15 00:00:00','Mickey Mouse Cookies'),(7,'img_38201884043.jpg','2019-06-15 00:00:00','So cute!'),(8,'img_28320384855.jpg','2019-06-15 00:00:00','Smiling already!'),(9,'rainbow.jpg','2019-06-15 00:00:00','Rainbow Quilt'),(10,'stereo1.jpg','2019-06-15 00:00:00','Front Panel'),(11,'stereo2.jpg','2019-06-15 00:00:00','Bass Speakers Installed'),(12,'new_shed.jpg','2019-06-15 00:00:00','Shed inside empty'),(13,'rose.jpg','2019-06-15 00:00:00','Rose'),(14,'putter.jpg','2019-06-15 00:00:00','Putter'),(15,'nine-iron.jpg','2019-06-15 00:00:00','9 Iron'),(16,'driver.jpg','2019-06-15 00:00:00','Driver');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `person_id` int NOT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id_UNIQUE` (`post_id`),
  KEY `post_person_id_fk_idx` (`person_id`),
  CONSTRAINT `post_person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Mickey Mouse Cookies','I found this great recipe for sugar cookies and a new Mickey Mouse cookie cutter.','2019-04-14 00:00:00','2019-04-15 00:00:00',1),(2,'Touques for infants','I\'m knitting touques for our grandchild that should be born soon!','2019-02-15 00:00:00','2019-02-16 00:00:00',4),(3,'Our newest family member!','Congratulations to our daughter on their new bundle of joy! Theresa May - Born March 3, 2019.','2019-03-04 00:00:00','2019-03-04 00:00:00',4),(4,'Rainbow Quilt','Beautiful new rainbow quilt for our newest granddaughter.','2019-03-29 00:00:00','2019-04-01 00:00:00',4),(5,'New Car Stereo and Speakers','Best Bass Ever! You can hear me from 5 blocks away!','2019-05-09 00:00:00','2019-05-09 00:00:00',3),(6,'Garden Shed','New garden shed has room for the lawn mowers and all our garden tools.','2019-05-22 00:00:00','2019-05-22 00:00:00',3),(7,'Great way to hang pictures','It\'s simple and cost effective!','2019-04-27 00:00:00','2019-04-27 00:00:00',5),(8,'Beautiful colour, beautiful smell','Found a great place to buy the best roses!','2019-04-14 00:00:00','2019-04-16 00:00:00',5),(9,'Set of golf clubs for sale','A friend of mine is selling his set of clubs before he moves to Saskatchewan.','2019-05-12 00:00:00','2019-05-15 00:00:00',3),(10,'Change your own oil, save hundreds!','Mechanics are too expensive, and it\'s not that hard to do it yourself.','2019-02-22 00:00:00','2019-02-22 00:00:00',3),(11,'Awesome Floor Mats','Keep your car clean with these awesome car mats!','2019-03-03 00:00:00','2019-03-03 00:00:00',3);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comment`
--

DROP TABLE IF EXISTS `post_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comment` (
  `post_comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `person_id` int NOT NULL,
  `comment` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_comment_id`),
  UNIQUE KEY `post_comment_id_UNIQUE` (`post_comment_id`),
  KEY `post_comment_post_id_fk_idx` (`post_id`),
  KEY `post_comment_person_id_fk_idx` (`person_id`),
  CONSTRAINT `post_comment_person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `post_comment_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comment`
--

LOCK TABLES `post_comment` WRITE;
/*!40000 ALTER TABLE `post_comment` DISABLE KEYS */;
INSERT INTO `post_comment` VALUES (1,1,4,'I\'m going to try those myself!','2025-03-11 01:28:37'),(2,3,1,'Congratulations!','2025-03-11 01:28:37'),(3,3,3,'How does it feel to be a ','2025-03-11 01:28:37'),(4,4,1,'Can you make me one next?','2025-03-11 01:28:37'),(5,6,1,'What colour are you going to ','2025-03-11 01:28:37'),(6,9,6,'I need a good set of club; I\'ll ','2025-03-11 01:28:37');
/*!40000 ALTER TABLE `post_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_like`
--

DROP TABLE IF EXISTS `post_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_like` (
  `post_like_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`post_like_id`),
  UNIQUE KEY `post_like_id_UNIQUE` (`post_like_id`),
  KEY `post_like_post_id_idx` (`post_id`),
  KEY `post_like_person_id_fk_idx` (`person_id`),
  CONSTRAINT `post_like_person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `post_like_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_like`
--

LOCK TABLES `post_like` WRITE;
/*!40000 ALTER TABLE `post_like` DISABLE KEYS */;
INSERT INTO `post_like` VALUES (1,1,4),(2,2,5),(3,3,1),(4,3,3),(5,3,5),(6,3,6),(7,5,6),(8,9,6);
/*!40000 ALTER TABLE `post_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_photo`
--

DROP TABLE IF EXISTS `post_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_photo` (
  `post_photo_id` int NOT NULL AUTO_INCREMENT,
  `photo_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`post_photo_id`),
  UNIQUE KEY `post_photo_id_UNIQUE` (`post_photo_id`),
  KEY `post_photo_photo_id_fk_idx` (`photo_id`),
  KEY `post_photo_post_id_fk_idx` (`post_id`),
  CONSTRAINT `post_photo_photo_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`),
  CONSTRAINT `post_photo_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_photo`
--

LOCK TABLES `post_photo` WRITE;
/*!40000 ALTER TABLE `post_photo` DISABLE KEYS */;
INSERT INTO `post_photo` VALUES (1,6,1),(2,4,2),(3,8,3),(4,7,3),(5,9,4),(6,11,5),(7,10,5),(8,12,6),(9,13,8),(10,15,9),(11,16,9),(12,14,9);
/*!40000 ALTER TABLE `post_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tag` (
  `post_tag_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_tag_id`),
  UNIQUE KEY `post_tag_id_UNIQUE` (`post_tag_id`),
  KEY `post_tag_post_id_idx` (`post_id`),
  KEY `post_tag_tag_id_idx` (`tag_id`),
  CONSTRAINT `post_tag_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `post_tag_tag_id_fk` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,1,3),(2,1,4),(3,1,5),(4,2,5),(5,2,6),(6,4,5),(7,4,6),(8,5,7),(9,5,6),(10,6,8),(11,6,6),(12,7,8),(13,9,9),(14,10,6),(15,10,7),(16,11,7);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_post`
--

DROP TABLE IF EXISTS `read_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_post` (
  `read_post_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `person_id` int NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`read_post_id`),
  UNIQUE KEY `read_post_id_UNIQUE` (`read_post_id`),
  KEY `read_post_post_id_fk_idx` (`post_id`),
  KEY `read_post_person_id_fk_idx` (`person_id`),
  CONSTRAINT `read_post_person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `read_post_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_post`
--

LOCK TABLES `read_post` WRITE;
/*!40000 ALTER TABLE `read_post` DISABLE KEYS */;
INSERT INTO `read_post` VALUES (1,1,5,'2025-03-11 01:13:11'),(2,1,4,'2025-03-11 01:13:11'),(3,2,5,'2025-03-11 01:20:53'),(4,3,1,'2025-03-11 01:20:53'),(5,3,3,'2025-03-11 01:20:53'),(6,3,5,'2025-03-11 01:20:53'),(7,3,6,'2025-03-11 01:20:53'),(8,4,1,'2025-03-11 01:20:53'),(9,5,6,'2025-03-11 01:20:53'),(10,6,1,'2025-03-11 01:20:53'),(11,6,6,'2025-03-11 01:20:53'),(12,7,1,'2025-03-11 01:20:53'),(13,9,6,'2025-03-11 01:20:53'),(14,10,6,'2025-03-11 01:20:53'),(15,11,1,'2025-03-11 01:20:53');
/*!40000 ALTER TABLE `read_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_id_UNIQUE` (`tag_id`),
  UNIQUE KEY `tag_name_UNIQUE` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (3,'baking'),(7,'cars'),(4,'cooking'),(5,'crafts'),(6,'DIY'),(8,'home repair'),(1,'music'),(2,'shopping'),(9,'sports');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project_2_website'
--

--
-- Dumping routines for database 'project_2_website'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 23:19:03
