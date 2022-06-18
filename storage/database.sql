-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: webfs
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `active_promotions`
--

DROP TABLE IF EXISTS `active_promotions`;
/*!50001 DROP VIEW IF EXISTS `active_promotions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `active_promotions` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `course_id`,
 1 AS `promotion_amount`,
 1 AS `promotion_price`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `created_at`,
 1 AS `last_updated_at`,
 1 AS `deleted_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `additions`
--

DROP TABLE IF EXISTS `additions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additions` (
  `addition_text` varchar(512) NOT NULL,
  PRIMARY KEY (`addition_text`),
  UNIQUE KEY `additions_addition_text_uindex` (`addition_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additions`
--

LOCK TABLES `additions` WRITE;
/*!40000 ALTER TABLE `additions` DISABLE KEYS */;
INSERT INTO `additions` (`addition_text`) VALUES (''),('12 st.'),('3 st.'),('4 st.'),('5 st.'),('5st. ossenhaas en groenten met zoet pikante saus'),('7 st.'),('Ajam Ketjap, Gado Gado, Daging Smoor, Kroepoek, Daging Roedjak, Foe Yong Hai, Sat&eacute;, Sambal Goreng Boontjes, Sambal Goreng Kering, Atjar, Pisang Goreng, Pinda en Cocos'),('Babi Pangan, Foe Yong Hai, Daging Roedjak, Atjar en kippootje'),('bolletjes kip met zoetzure saus'),('bolletjes vlees met zoetzure saus'),('Foe Yong Hai, Babi Pangang, sat&eacute; en kippenpootje'),('Foe Yong Hai, Babi Pangang, Tjap Tjoy, Koe Loe Yuk, Ajam Ketjap, Daging Smoor, Daging Roedjak, Sat&eacute;, Ei, Kroepoek, Sambal Goeren boontjes, Atjar, Pisang Goreng, Pinda en Cocos'),('Gado gado, Foe Yong Hai, sat&eacute;, Daging Roedjak, Daging Smoor, Ajam Ketjap, Atjar, Pisang Goreng, Pindas en Cocos'),('garnalen en groenten met zoet pikante saus'),('garnalen met licht zoet pikante kruidensaus'),('garnalen, kipfilet, ossenhaas en groenten in zwarte pepersaus'),('gebakken vleespasteitje. 4 st.'),('kipfilet met cashewnoten in licht pikante saus'),('kipfilet met cashewnoten in pittige saus'),('kipfilet met licht zoet pikante kruidensaus'),('kipfilet met pittige kruidensaus'),('Kippen- of Tomatensoep, Tjap Tjoy met kipfilet, Koe Loe Yuk, Gebakken garnalen, Babi Pangang, Foe Yong Hai, sat&eacute;, kroepoek'),('krokant gebakken garnalen'),('krokant gepaneerd garnalen. 4 st.'),('licht gebraden garnalen met zout en peper'),('licht gebraden kipfilet en groenten met zoet pikante saus'),('licht gebraden kipfilet met lychee in zoetzure saus'),('licht gebraden kipfilet met zout en peper'),('licht gebraden visfilet in zoete pikante saus'),('licht gebraden visfilet met zout en peper'),('lichtgrbaden varkenshaas, kipfilet, ossenhaas en groenten met zoet pikante saus'),('met atjar, ananas en pindasaus'),('met garnaaltjes en Cha Sieuw-vlees'),('met gesmoord rundvlees en pikante saus'),('met kleine garnaaltjes en Cha Sieuw-vlees en kerrie poeder'),('met witte rijst'),('mini loempia, kerry ko, pangsit goreng, garnalenpasteitje'),('Mini Loempia\'s, Pisang Goreng, Babi Pangang, Foe Yong Hai, Kung Bao Kai, Hong Shau Yu, sat&eacute; Ajam, Ossenhaas met zwarte bonensaus, Kipfilet met kerriesaus'),('Mini Loempia\'s, Pisang Goreng, Babi Pangang, Koe Loe Yuk, Foe Yong Hai, Kipfilet met zwarte bonensaus, Tjap Tjoy met kipfilet, sat&eacute; Ajam'),('ossenhaas met licht zoet pikante kruidensaus'),('ossenhaas met pittige kruidensaus'),('ossenhaas, garnalen en kipfilet'),('peking eend met licht zoet pikante kruidensaus'),('Peking Soep (pittige lichtzure soep), Chinese Dim Sum (mini loempia, kerrie ko, pangsit goreng, garnalen, pastei(tje), Tjieuw Yem Kai (licht gebakken kipfilet met zout en peper), Lychee Yuk (licht gebraden varkensvlees met lychee in zoetzure saus), Yu Sian Ngau Yuk (ossenhaas met licht zoet pikante kruiden saus)'),('rood geroosterd varkensvlees'),('sojakaas, cha sieuw garnalen en chinese paddenstoelen'),('sojakaas, Chinese paddenstoelen en groenten in knoflooksaus'),('varkenshaas met licht zoet pikante kruiden saus'),('varkenshaas met pittige kruiden saus'),('visfilet, garnalen, krab en groenten in knoflooksaus'),('Wan Tan soep, Chinese Dim Sum (mini loempia, kerrie ko, pangsit goreng, garnalen, pasteitje), Geroosterde Peking Eend, Lychee Kai (licht gebraden kipfilet met lychee in zoetzure saus), Tau Sie Haa (garnalen met zwarte bonensaus)');
/*!40000 ALTER TABLE `additions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergens`
--

DROP TABLE IF EXISTS `allergens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergens` (
  `allergen` varchar(255) NOT NULL,
  PRIMARY KEY (`allergen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergens`
--

LOCK TABLES `allergens` WRITE;
/*!40000 ALTER TABLE `allergens` DISABLE KEYS */;
/*!40000 ALTER TABLE `allergens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `allergens_per_course`
--

DROP TABLE IF EXISTS `allergens_per_course`;
/*!50001 DROP VIEW IF EXISTS `allergens_per_course`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allergens_per_course` AS SELECT 
 1 AS `course_id`,
 1 AS `course_name`,
 1 AS `allergens`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`name`) VALUES ('BAMI EN NASI GERECHTEN'),('BUFFET'),('CHINESE BAMI GERECHTEN'),('COMBINATIE GERECHTEN (met witte rijst)'),('DIVERSEN'),('EIERGERECHTEN (met witte rijst)'),('GARNALEN GERECHTEN (met witte rijst)'),('GROENTEN GERECHTEN (met witte rijst)'),('INDISCHE GERECHTEN'),('KINDERMENUS'),('KIP GERECHTEN (met witte rijst)'),('MIHOEN GERECHTEN'),('OSSENHAAS GERECHTEN (met witte rijst)'),('PEKING EEND GERECHTEN (met witte rijst)'),('RIJSTTAFELS'),('SOEP'),('TIEPAN SPECIALITEITEN (met witte rijst)'),('VEGETARISCHE GERECHTEN (met witte rijst)'),('VISSEN GERECHTEN (met witte rijst)'),('VLEES GERECHTEN (met witte rijst)'),('VOORGERECHT');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_info` (
  `id` int NOT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `street_name` varchar(45) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `house_number` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `active` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_allergens`
--

DROP TABLE IF EXISTS `course_allergens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_allergens` (
  `course_id` int NOT NULL,
  `allergen` varchar(255) NOT NULL,
  PRIMARY KEY (`course_id`,`allergen`),
  KEY `allergen` (`allergen`),
  CONSTRAINT `allergen` FOREIGN KEY (`allergen`) REFERENCES `allergens` (`allergen`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_allergens`
--

LOCK TABLES `course_allergens` WRITE;
/*!40000 ALTER TABLE `course_allergens` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_allergens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `addition` varchar(512) DEFAULT NULL,
  `spice_scale` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addition` (`addition`),
  KEY `spice_scale` (`spice_scale`),
  KEY `coursescategory_index` (`category_name`),
  KEY `coursesname_index` (`name`),
  KEY `courses_name_index` (`name`),
  CONSTRAINT `addition` FOREIGN KEY (`addition`) REFERENCES `additions` (`addition_text`),
  CONSTRAINT `category_name` FOREIGN KEY (`category_name`) REFERENCES `categories` (`name`),
  CONSTRAINT `spice_scale` FOREIGN KEY (`spice_scale`) REFERENCES `spice_scale` (`rating`)
) ENGINE=InnoDB AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`id`, `name`, `category_name`, `addition`, `spice_scale`, `active`, `created_at`, `last_updated_at`, `deleted_at`) VALUES (959,'Soep Ling Fa','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(960,'Kippensoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(961,'Tomatensoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(962,'Haaienvinnensoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(963,'Champignonsoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(964,'Pekingsoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(965,'Wan Tan Soep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(966,'Chinese Champignonsoep','SOEP','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(967,'Loempia Ling Fa','VOORGERECHT','met atjar, ananas en pindasaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(968,'Loempia Compleet','VOORGERECHT','met gesmoord rundvlees en pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(969,'Loempia met Kip','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(970,'Loempia','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(971,'Chinese mini loempia','VOORGERECHT','4 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(972,'Vegetarische mini loempia','VOORGERECHT','12 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(973,'Kroepoek','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(974,'Casave Kroepoek','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(975,'Pangsit Goreng','VOORGERECHT','7 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(976,'Pisang Goreng','VOORGERECHT','5 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(977,'Chinese Dim Sum','VOORGERECHT','mini loempia, kerry ko, pangsit goreng, garnalenpasteitje',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(978,'Sat&eacute; Babi','VOORGERECHT','4 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(979,'Sat&eacute; Ajam','VOORGERECHT','4 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(980,'Sat&eacute; Garnalen','VOORGERECHT','3 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(981,'Fong Mei Ha','VOORGERECHT','krokant gepaneerd garnalen. 4 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(982,'Patat','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(983,'Tsa Siu Mai','VOORGERECHT','gebakken vleespasteitje. 4 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(984,'Atjar','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(985,'Witte Rijst','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(986,'Grote pindasaus','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(987,'Kleine pindasaus','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(988,'Kippenpootje','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(989,'Halve kip','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(990,'Kroket','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(991,'Frikandel','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(992,'Kleine Sambal','VOORGERECHT','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(993,'Bami of Nasi Goreng Ling Fa','BAMI EN NASI GERECHTEN','Foe Yong Hai, Babi Pangang, sat&eacute; en kippenpootje',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(994,'Bami of Nasi Goreng met ei','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(995,'Bami of Nasi Goreng speciaal','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(996,'Bami of Nasi Goreng met sat&eacute;','BAMI EN NASI GERECHTEN','3 st.',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(997,'Nasi Yeung Chow','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(998,'Bami Yeung Chow','BAMI EN NASI GERECHTEN','met garnaaltjes en Cha Sieuw-vlees',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(999,'Bami of Nasi Malay','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1000,'Bami of Nasi met kipfilet','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1001,'Bami of Nasi met varkensvlees','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1002,'Bami of Nasi met garnalen','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1003,'Bami of Nasi met ossenhaas','BAMI EN NASI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1004,'Babi Pangang, Foe Yong Hani en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1005,'Babi Pangang, Tjap Tjoy en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1006,'Babi Pangang, Koe Loe Yuk en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1007,'Babi Pangang, Tau Sie Kai en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1008,'Koe Loe Yuk, Foe Yong Hai en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1009,'Koe Loe Yuk, Tjap Tjoy en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1010,'Foe Yong Hai, Tjap Tjoy en sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1011,'Foe Yong Hai, Kip Kerrie en Sat&eacute;','COMBINATIE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1012,'Mihoen Ling Fa','MIHOEN GERECHTEN','Foe Yong Hai, Babi Pangang, sat&eacute; en kippenpootje',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1013,'Mihoen met varkensvlees','MIHOEN GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1014,'Mihoen met kipfilet','MIHOEN GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1015,'Mihoen met ossenhaas','MIHOEN GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1016,'Mihoen met garnalen','MIHOEN GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1017,'Mihoen Singapore-style','MIHOEN GERECHTEN','met kleine garnaaltjes en Cha Sieuw-vlees en kerrie poeder',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1018,'Mihoen met Cha Sieuw vlees','MIHOEN GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1019,'Chinese Bami Ling Fa','CHINESE BAMI GERECHTEN','Foe Yong Hai, Babi Pangang, sat&eacute; en kippenpootje',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1020,'Chinese Bami met varkensvlees','CHINESE BAMI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1021,'Chinese Bami met kipfilet','CHINESE BAMI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1022,'Chinese Bami met Cha Sieuw-vlees','CHINESE BAMI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1023,'Chinese Bami met garnalen','CHINESE BAMI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1024,'Chinese Bami met ossenhaas','CHINESE BAMI GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1025,'Bami of Nasi Rames Ling Fa','INDISCHE GERECHTEN','Babi Pangan, Foe Yong Hai, Daging Roedjak, Atjar en kippootje',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1026,'Bami of Nasi Rames','INDISCHE GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1027,'Bami of Nasi Rames speciaal','INDISCHE GERECHTEN','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1028,'Gado Gado','INDISCHE GERECHTEN','met witte rijst',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1029,'Daging Smoor','INDISCHE GERECHTEN','met witte rijst',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1030,'Daging Roedjak','INDISCHE GERECHTEN','met witte rijst',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1031,'Foe Yong Hai Ling Fa','EIERGERECHTEN (met witte rijst)','ossenhaas, garnalen en kipfilet',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1032,'Foe Yong Hai met varkensvlees','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1033,'Foe Yong Hai met kipfilet','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1034,'Foe Yong Hai met garnalen','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1035,'Foe Yong Hai met krab','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1036,'Foe Yong Hai met Cha Sieuw Vlees','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1037,'Foe Yong Hai met ossenhaas','EIERGERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1038,'Tjap Tjoy Ling Fa','GROENTEN GERECHTEN (met witte rijst)','ossenhaas, garnalen en kipfilet',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1039,'Tjap Tjoy met varkensvlees','GROENTEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1040,'Tjap Tjoy met kipfilet','GROENTEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1041,'Tjap Tjoy met ossenhaas','GROENTEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1042,'Tjap Tjoy met garnalen','GROENTEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1043,'Babi Pangang','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1044,'Babi Pangang in ketjapsaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1045,'Cha Sieuw','VLEES GERECHTEN (met witte rijst)','rood geroosterd varkensvlees',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1046,'Cha Sieuw in pikante saus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1047,'Geroosterde speenvarken','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1048,'Koe Loe Yuk','VLEES GERECHTEN (met witte rijst)','bolletjes vlees met zoetzure saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1049,'Varkenshaas met kerriesaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1050,'Varkenshaas met ketjapsaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1051,'Varkenshaas met tomatensaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1052,'Varkenshaas met champignons in knoflooksaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1053,'Varkenshaas met Chinese champignons','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1054,'Varkenshaas met zwarte bonensaus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1055,'Varkenshaas met verse ananas in zoetzure saus','VLEES GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1056,'Yu Sian Yuk','VLEES GERECHTEN (met witte rijst)','varkenshaas met licht zoet pikante kruiden saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1057,'SzeChuan Yuk','VLEES GERECHTEN (met witte rijst)','varkenshaas met pittige kruiden saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1058,'Ajam Pangang','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1059,'Ajam Pangang in ketjapsaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1060,'Koe Loe Kai','KIP GERECHTEN (met witte rijst)','bolletjes kip met zoetzure saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1061,'Kipfilet met kerriesaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1062,'Kipfilet met champignons in knoflooksaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1063,'Kipfilet met tomatensaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1064,'Kipfilet met ketjapsaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1065,'Kipfilet met broccoli in knoflooksaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1066,'Kipfilet met Chinese champignons','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1067,'Kipfilet met zwarte pepersaus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1068,'Kipfilet met verse ananas in zoetzure saus','KIP GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1070,'Tjieuw Yem Kai','KIP GERECHTEN (met witte rijst)','licht gebraden kipfilet met zout en peper',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1071,'Yao Koe Kai','KIP GERECHTEN (met witte rijst)','kipfilet met cashewnoten in licht pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1072,'Lychee Kai','KIP GERECHTEN (met witte rijst)','licht gebraden kipfilet met lychee in zoetzure saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1073,'Yu Sian Kai','KIP GERECHTEN (met witte rijst)','kipfilet met licht zoet pikante kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1074,'Sze Chuan Kai','KIP GERECHTEN (met witte rijst)','kipfilet met pittige kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1075,'Kung Bao Kai','KIP GERECHTEN (met witte rijst)','kipfilet met cashewnoten in pittige saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1076,'Garnalen met champignons in knoflooksaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1077,'Garnalen met tomatensaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1078,'Garnalen met ketjapsaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1079,'Garnalen met broccoli','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1080,'Garnalen met Chinese champignons','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1081,'Garnalen met kerriesaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1082,'Garnalen met zwarte bonensaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1083,'Garnalen met zwarte pepersaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1084,'Garnalen met chilisaus','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1085,'Yu Sian Haa','GARNALEN GERECHTEN (met witte rijst)','garnalen met licht zoet pikante kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1086,'Tjieuw Yem Haa','GARNALEN GERECHTEN (met witte rijst)','licht gebraden garnalen met zout en peper',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1087,'Tja Tai Haa','GARNALEN GERECHTEN (met witte rijst)','krokant gebakken garnalen',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1088,'Sze Chuan Haa','GARNALEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1089,'Ossenhaas met chanpignons in knoflooksaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1090,'Ossenhaas met tomatensaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1091,'Ossenhaas met ketjapsaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1092,'Ossenhaas met broccoli','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1093,'Ossenhaas met Chinese champignons','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1094,'Ossenhaas met kerriesaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1095,'Ossenhaas met zwarte bonensaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1096,'Ossenhaas met zwarte pepersaus','OSSENHAAS GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1097,'Yu Sian Ngau Yuk','OSSENHAAS GERECHTEN (met witte rijst)','ossenhaas met licht zoet pikante kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1098,'Sze Chuan Ngau Yuk','OSSENHAAS GERECHTEN (met witte rijst)','ossenhaas met pittige kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1099,'Visfilet met kerriesaus','VISSEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1100,'Visfilet met oestersaus','VISSEN GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1101,'Visfilet met zoetzure saus','VISSEN GERECHTEN (met witte rijst)','licht gebraden visfilet in zoete pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1102,'Hong Shau Yu','VISSEN GERECHTEN (met witte rijst)','licht gebraden visfilet in zoete pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1103,'Tjeuw Yem Yu','VISSEN GERECHTEN (met witte rijst)','licht gebraden visfilet met zout en peper',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1104,'San Sching Po','VISSEN GERECHTEN (met witte rijst)','visfilet, garnalen, krab en groenten in knoflooksaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1105,'Geroosterde Peking Eend','PEKING EEND GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1106,'Peking Eend met verse ananas in zoetzure saus','PEKING EEND GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1107,'Peking Eend met Chinese champignons in oestersaus','PEKING EEND GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1108,'Yu Sian Ya','PEKING EEND GERECHTEN (met witte rijst)','peking eend met licht zoet pikante kruidensaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1109,'Tiepan Ling Fa','TIEPAN SPECIALITEITEN (met witte rijst)','garnalen, kipfilet, ossenhaas en groenten in zwarte pepersaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1110,'Tiepan Kai','TIEPAN SPECIALITEITEN (met witte rijst)','licht gebraden kipfilet en groenten met zoet pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1111,'Tiepan San Yuk','TIEPAN SPECIALITEITEN (met witte rijst)','lichtgrbaden varkenshaas, kipfilet, ossenhaas en groenten met zoet pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1112,'Tiepan Haa','TIEPAN SPECIALITEITEN (met witte rijst)','garnalen en groenten met zoet pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1113,'Tiepan Ngau Yuk','TIEPAN SPECIALITEITEN (met witte rijst)','5st. ossenhaas en groenten met zoet pikante saus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1114,'Tau Fu Po','TIEPAN SPECIALITEITEN (met witte rijst)','sojakaas, cha sieuw garnalen en chinese paddenstoelen',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1115,'Vegetarische Tjap Tjoy','VEGETARISCHE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1116,'Lo Han Zhai','VEGETARISCHE GERECHTEN (met witte rijst)','sojakaas, Chinese paddenstoelen en groenten in knoflooksaus',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1117,'Vegetarische Foe Yong Hai','VEGETARISCHE GERECHTEN (met witte rijst)','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1118,'Frites, sat&eacute; (2st.) en ei','KINDERMENUS','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1119,'Frites, kippootje en ei','KINDERMENUS','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1120,'Frites, mini loempia (2st.) en ei','KINDERMENUS','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1121,'Kinder Bami of Nasi met sat&eacute; (2st.) en ei','KINDERMENUS','',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1122,'Indische rijsttafel (voor 1 persoon)','RIJSTTAFELS','Gado gado, Foe Yong Hai, sat&eacute;, Daging Roedjak, Daging Smoor, Ajam Ketjap, Atjar, Pisang Goreng, Pindas en Cocos',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1123,'Indische rijsttafel<br>Vanaf 2 personen... Per persoon','RIJSTTAFELS','Ajam Ketjap, Gado Gado, Daging Smoor, Kroepoek, Daging Roedjak, Foe Yong Hai, Sat&eacute;, Sambal Goreng Boontjes, Sambal Goreng Kering, Atjar, Pisang Goreng, Pinda en Cocos',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1124,'Chinese Indische Rijsttafel<br>Vanaf 4 personen... per persoon','RIJSTTAFELS','Foe Yong Hai, Babi Pangang, Tjap Tjoy, Koe Loe Yuk, Ajam Ketjap, Daging Smoor, Daging Roedjak, Sat&eacute;, Ei, Kroepoek, Sambal Goeren boontjes, Atjar, Pisang Goreng, Pinda en Cocos',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1125,'Chinese Rijsttafel<br>Vanaf 2 personen... per persoon','RIJSTTAFELS','Kippen- of Tomatensoep, Tjap Tjoy met kipfilet, Koe Loe Yuk, Gebakken garnalen, Babi Pangang, Foe Yong Hai, sat&eacute;, kroepoek',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1126,'Kantones Rijsttafel<br>Vanaf 2 personen... per persoon','RIJSTTAFELS','Wan Tan soep, Chinese Dim Sum (mini loempia, kerrie ko, pangsit goreng, garnalen, pasteitje), Geroosterde Peking Eend, Lychee Kai (licht gebraden kipfilet met lychee in zoetzure saus), Tau Sie Haa (garnalen met zwarte bonensaus)',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL),(1127,'Sze Chuan Rijsttafel<br>Vanaf 2 personen... per persoon','RIJSTTAFELS','Peking Soep (pittige lichtzure soep), Chinese Dim Sum (mini loempia, kerrie ko, pangsit goreng, garnalen, pastei(tje), Tjieuw Yem Kai (licht gebakken kipfilet met zout en peper), Lychee Yuk (licht gebraden varkensvlees met lychee in zoetzure saus), Yu Sian Ngau Yuk (ossenhaas met licht zoet pikante kruiden saus)',1,1,'2022-06-18 16:11:30','2022-06-18 16:11:30',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `email` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `customer_email_uindex` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `number` varchar(5) NOT NULL,
  `course_id` int DEFAULT NULL,
  `standard_side_dish` varchar(255) DEFAULT 'rijst',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `menu_course_fk` (`course_id`),
  CONSTRAINT `menu_course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`number`, `course_id`, `standard_side_dish`, `price`, `created_at`, `last_updated_at`, `deleted_at`) VALUES ('1',959,NULL,3.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('10',967,NULL,6.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('100',1078,'rijst',15.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('101',1079,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('102',1080,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('103',1081,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('104',1082,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('105',1083,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('106',1084,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('107',1085,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('108',1086,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('109',1087,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('11',968,NULL,6.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('110',1088,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('111',1089,'rijst',16.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('112',1090,'rijst',16.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('113',1091,'rijst',16.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('114',1092,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('115',1093,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('116',1094,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('117',1095,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('118',1096,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('119',1097,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('12',969,NULL,3.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('120',1098,'rijst',17.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('121',1099,'rijst',14.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('122',1100,'rijst',14.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('123',1101,'rijst',14.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('124',1102,'rijst',14.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('125',1103,'rijst',15.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('126',1104,'rijst',16.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('13',970,NULL,3.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('14',971,NULL,4.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('14A',972,NULL,4.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('15',973,NULL,2.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('15A',974,NULL,2.70,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('16',975,NULL,3.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('17',976,NULL,3.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('18',977,NULL,5.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('180H',992,NULL,2.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('19',978,NULL,5.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('2',960,NULL,2.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('20',979,NULL,5.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('20A',980,NULL,9.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('21',981,NULL,8.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('22',982,NULL,2.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('23',983,NULL,3.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('24',984,NULL,3.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('25',985,NULL,3.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('26',986,NULL,3.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('27',987,NULL,2.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('28',988,NULL,2.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('29',989,NULL,6.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('29G',991,NULL,1.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('29H',990,NULL,1.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('3',961,NULL,2.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('30',993,NULL,14.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('31',994,NULL,5.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('32',995,NULL,8.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('33',996,NULL,8.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('34',997,NULL,10.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('34A',998,NULL,13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('35',999,NULL,9.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('36',1000,NULL,9.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('37',1001,NULL,9.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('38',1002,NULL,14.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('39',1003,NULL,15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('4',962,NULL,3.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('40',1004,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('41',1005,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('42',1006,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('43',1007,'rijst',16.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('44',1008,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('45',1009,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('46',1010,'rijst',15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('47',1011,'rijst',16.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('5',963,NULL,3.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('50',1012,NULL,16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('51',1013,NULL,9.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('52',1014,NULL,10.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('53',1015,NULL,16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('54',1016,NULL,15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('55',1017,NULL,11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('56',1018,NULL,11.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('57',1019,NULL,16.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('58',1020,NULL,10.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('58A',1021,NULL,11.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('58B',1022,NULL,12.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('58C',1023,NULL,15.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('58D',1024,NULL,17.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('59',1031,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('6',964,NULL,3.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('60',1032,'rijst',8.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('61',1033,'rijst',9.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('62',1034,'rijst',15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('63',1035,'rijst',15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('63A',1036,'rijst',11.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('63B',1037,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('64',1038,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('65',1039,'rijst',8.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('66',1040,'rijst',9.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('67',1041,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('68',1042,'rijst',15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('7',965,NULL,4.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('70',1043,'rijst',12.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('71',1044,'rijst',12.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('72',1045,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('73',1046,'rijst',13.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('74',1047,'rijst',13.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('75',1048,'rijst',11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('76',1049,'rijst',11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('77',1050,'rijst',11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('78',1051,'rijst',11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('78A',1052,'rijst',11.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('78B',1053,'rijst',12.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('79',1054,'rijst',12.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('79A',1055,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('79B',1056,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('79C',1057,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('8',966,NULL,4.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('80',1058,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('81',1059,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('82',1060,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('83',1061,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('84',1062,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('85',1063,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('86',1064,'rijst',13.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('87',1065,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('88',1066,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('90',1068,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('91',1067,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('92',1070,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('93',1071,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('94',1072,'rijst',13.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('95',1073,'rijst',13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('96',1074,'rijst',13.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('97',1075,'rijst',13.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('98',1076,'rijst',15.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('99',1077,'rijst',15.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('K1',1118,NULL,6.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('K2',1119,NULL,6.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('K3',1120,NULL,6.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('K4',1121,NULL,6.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M1',1025,NULL,15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M2',1026,NULL,8.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M3',1027,NULL,10.80,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M4',1028,NULL,7.60,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M5',1029,NULL,13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('M6',1030,NULL,13.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('P1',1105,'rijst',16.60,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('P2',1106,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('P3',1107,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('P4',1108,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R1',1122,'rijst',16.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R2',1123,'rijst',15.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R3',1124,'rijst',16.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R4',1125,'rijst',17.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R5',1126,'rijst',23.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('R6',1127,'rijst',23.00,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('T1',1109,'rijst',17.90,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('T2',1110,'rijst',15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('T3',1111,'rijst',17.10,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('T4',1112,'rijst',17.40,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('T5',1113,'rijst',19.50,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('V1',1115,'rijst',8.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('V2',1116,'rijst',11.20,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('V3',1117,'rijst',8.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL),('V4',1114,'rijst',15.30,'2022-06-18 17:14:34','2022-06-18 17:14:34',NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(512) NOT NULL,
  `destination` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation`
--

LOCK TABLES `navigation` WRITE;
/*!40000 ALTER TABLE `navigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigation` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO `navigation` (`text`, `destination`) VALUES ('menu', '/menu'), ('news', '/news'), ('contact', '/contact');

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `news_text` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_text_fk` (`news_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO `news` (`news_text`, `created_at`, `last_updated_at`) VALUES ('Door de Corona crisis is De Gouden Draak op het moment slechts beperkt open.\nHet restaurant-gedeelte is gesloten. U kan uw favoriete gerechten nog wel afhalen.', '2022-06-18T19:00:00+00:00', '2022-06-18T19:00:00+00:00');

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `course_id` int NOT NULL,
  `order_id` int NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `side_dish` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`course_id`,`order_id`),
  KEY `order_items_orderid_fk` (`order_id`),
  KEY `order_items_sidedish_fk` (`side_dish`),
  CONSTRAINT `order_items_courseid_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `order_items_orderid_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_sidedish_fk` FOREIGN KEY (`side_dish`) REFERENCES `side_dishes` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` (`course_id`, `order_id`, `remark`, `side_dish`, `created_at`, `last_updated_at`, `deleted_at`, `quantity`) VALUES (959,5,NULL,NULL,NULL,NULL,NULL,1),(959,8,NULL,NULL,NULL,NULL,NULL,1),(959,11,NULL,NULL,NULL,NULL,NULL,1),(959,14,NULL,NULL,NULL,NULL,NULL,1),(959,16,NULL,NULL,NULL,NULL,NULL,1),(959,20,NULL,NULL,NULL,NULL,NULL,1),(959,25,NULL,NULL,NULL,NULL,NULL,1),(959,27,NULL,NULL,NULL,NULL,NULL,1),(959,31,NULL,NULL,NULL,NULL,NULL,1),(959,34,NULL,NULL,NULL,NULL,NULL,4),(960,9,NULL,NULL,NULL,NULL,NULL,1),(960,12,NULL,NULL,NULL,NULL,NULL,1),(960,15,NULL,NULL,NULL,NULL,NULL,1),(960,17,NULL,NULL,NULL,NULL,NULL,1),(960,26,NULL,NULL,NULL,NULL,NULL,1),(960,28,NULL,NULL,NULL,NULL,NULL,1),(960,35,NULL,NULL,NULL,NULL,NULL,1),(961,6,NULL,NULL,NULL,NULL,NULL,1),(961,10,NULL,NULL,NULL,NULL,NULL,1),(961,13,NULL,NULL,NULL,NULL,NULL,1),(961,18,NULL,NULL,NULL,NULL,NULL,1),(961,21,NULL,NULL,NULL,NULL,NULL,1),(961,23,NULL,NULL,NULL,NULL,NULL,1),(961,30,NULL,NULL,NULL,NULL,NULL,3),(963,22,NULL,NULL,NULL,NULL,NULL,1),(963,32,NULL,NULL,NULL,NULL,NULL,4),(964,19,NULL,NULL,NULL,NULL,NULL,1),(964,24,NULL,NULL,NULL,NULL,NULL,1),(965,7,NULL,NULL,NULL,NULL,NULL,1),(967,1,NULL,NULL,NULL,NULL,NULL,1),(967,3,NULL,NULL,NULL,NULL,NULL,1),(967,29,NULL,NULL,NULL,NULL,NULL,2),(968,2,NULL,NULL,NULL,NULL,NULL,1),(968,4,NULL,NULL,NULL,NULL,NULL,1),(1025,33,NULL,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `table_number` int DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_cardnumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `orders_payment_fk` (`payment_cardnumber`,`payment_date`),
  KEY `table_number` (`table_number`),
  CONSTRAINT `customer` FOREIGN KEY (`customer`) REFERENCES `customer` (`email`),
  CONSTRAINT `orders_payment_fk` FOREIGN KEY (`payment_cardnumber`, `payment_date`) REFERENCES `payments` (`cardnumber`, `paymant_date`),
  CONSTRAINT `table_number` FOREIGN KEY (`table_number`) REFERENCES `tables` (`table_number`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `order_date`, `table_number`, `customer`, `created_at`, `last_updated_at`, `deleted_at`, `payment_date`, `payment_cardnumber`) VALUES (1,'2020-04-11 12:19:38',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:19:38',NULL),(2,'2020-04-11 12:19:38',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:19:38',NULL),(3,'2020-04-11 12:21:12',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:21:12',NULL),(4,'2020-04-11 12:21:12',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:21:12',NULL),(5,'2020-04-11 12:23:18',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:23:18',NULL),(6,'2020-04-11 12:23:18',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:23:18',NULL),(7,'2020-04-11 12:23:18',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:23:18',NULL),(8,'2020-04-11 12:36:21',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:36:21',NULL),(9,'2020-04-11 12:36:21',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:36:21',NULL),(10,'2020-04-11 12:36:21',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:36:21',NULL),(11,'2020-04-11 12:37:00',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:37:00',NULL),(12,'2020-04-11 12:37:00',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:37:00',NULL),(13,'2020-04-11 12:37:00',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:37:00',NULL),(14,'2020-04-11 12:38:58',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:38:58',NULL),(15,'2020-04-11 12:38:58',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:38:58',NULL),(16,'2020-04-11 12:39:03',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:39:03',NULL),(17,'2020-04-11 12:39:03',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:39:03',NULL),(18,'2020-04-11 12:44:52',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:44:52',NULL),(19,'2020-04-11 12:44:52',NULL,NULL,NULL,NULL,NULL,'2020-04-11 12:44:52',NULL),(20,'2020-04-11 15:48:38',NULL,NULL,NULL,NULL,NULL,'2020-04-11 15:48:38',NULL),(21,'2020-04-11 15:48:38',NULL,NULL,NULL,NULL,NULL,'2020-04-11 15:48:38',NULL),(22,'2020-04-11 15:48:38',NULL,NULL,NULL,NULL,NULL,'2020-04-11 15:48:38',NULL),(23,'2020-04-12 15:28:31',NULL,NULL,NULL,NULL,NULL,'2020-04-12 15:28:31',NULL),(24,'2020-04-12 15:28:31',NULL,NULL,NULL,NULL,NULL,'2020-04-12 15:28:31',NULL),(25,'2020-04-12 15:37:41',NULL,NULL,NULL,NULL,NULL,'2020-04-12 15:37:41',NULL),(26,'2020-04-12 15:37:41',NULL,NULL,NULL,NULL,NULL,'2020-04-12 15:37:41',NULL),(27,'2020-04-12 17:28:52',NULL,NULL,NULL,NULL,NULL,'2020-04-12 17:28:52',NULL),(28,'2020-04-12 17:28:52',NULL,NULL,NULL,NULL,NULL,'2020-04-12 17:28:52',NULL),(29,'2020-04-12 19:55:50',NULL,NULL,NULL,NULL,NULL,'2020-04-12 19:55:50',NULL),(30,'2020-04-12 20:50:49',NULL,NULL,NULL,NULL,NULL,'2020-04-12 20:50:49',NULL),(31,'2020-04-13 11:19:10',NULL,NULL,NULL,NULL,NULL,'2020-04-13 11:19:10',NULL),(32,'2020-04-13 11:19:10',NULL,NULL,NULL,NULL,NULL,'2020-04-13 11:19:10',NULL),(33,'2020-04-13 12:00:00',NULL,NULL,NULL,NULL,NULL,'2020-04-13 12:00:00',NULL),(34,'2020-04-13 14:52:21',NULL,NULL,NULL,NULL,NULL,'2020-04-13 14:52:21',NULL),(35,'2020-04-13 14:52:21',NULL,NULL,NULL,NULL,NULL,'2020-04-13 14:52:21',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_name_uindex` (`name`),
  UNIQUE KEY `pages_path_uindex` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `cardnumber` varchar(45) NOT NULL,
  `paymant_date` datetime NOT NULL,
  PRIMARY KEY (`cardnumber`,`paymant_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `course_id` int NOT NULL,
  `promotion_amount` int DEFAULT NULL,
  `promotion_price` decimal(10,0) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotions_courseid_fk` (`course_id`),
  KEY `promotions_description_fk` (`description`),
  KEY `promotions_name_fk` (`name`),
  CONSTRAINT `promotions_courseid_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rice_tables`
--

DROP TABLE IF EXISTS `rice_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rice_tables` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `price_per_person` decimal(10,0) NOT NULL,
  `minimum_amount_of_persons` int NOT NULL,
  `addition_text` int DEFAULT NULL,
  `addition` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rice_tables_addition_fk` (`addition`),
  CONSTRAINT `rice_tables_addition_fk` FOREIGN KEY (`addition`) REFERENCES `additions` (`addition_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rice_tables`
--

LOCK TABLES `rice_tables` WRITE;
/*!40000 ALTER TABLE `rice_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `rice_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rice_tables_courses`
--

DROP TABLE IF EXISTS `rice_tables_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rice_tables_courses` (
  `rice_table_id` int NOT NULL,
  `course_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`rice_table_id`,`course_id`),
  KEY `rice_tables_courses_course_fk` (`course_id`),
  CONSTRAINT `rice_tables_courses_course_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `rice_tables_courses_table_fk` FOREIGN KEY (`rice_table_id`) REFERENCES `rice_tables` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rice_tables_courses`
--

LOCK TABLES `rice_tables_courses` WRITE;
/*!40000 ALTER TABLE `rice_tables_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `rice_tables_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `side_dishes`
--

DROP TABLE IF EXISTS `side_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `side_dishes` (
  `name` varchar(100) NOT NULL,
  `price_addition` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `side_dishes_name_uindex` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `side_dishes`
--

LOCK TABLES `side_dishes` WRITE;
/*!40000 ALTER TABLE `side_dishes` DISABLE KEYS */;
INSERT INTO `side_dishes` (`name`, `price_addition`, `created_at`, `last_updated_at`, `deleted_at`) VALUES ('bami',0.90,NULL,NULL,NULL),('chinese bami',2.50,NULL,NULL,NULL),('mihoen goreng',2.50,NULL,NULL,NULL),('nasi',0.90,NULL,NULL,NULL),('rijst',0.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `side_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spice_scale`
--

DROP TABLE IF EXISTS `spice_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spice_scale` (
  `rating` int NOT NULL,
  PRIMARY KEY (`rating`),
  UNIQUE KEY `spice_scale_rating_uindex` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spice_scale`
--

LOCK TABLES `spice_scale` WRITE;
/*!40000 ALTER TABLE `spice_scale` DISABLE KEYS */;
INSERT INTO `spice_scale` (`rating`) VALUES (1),(2),(3);
/*!40000 ALTER TABLE `spice_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `table_number` int NOT NULL,
  PRIMARY KEY (`table_number`),
  UNIQUE KEY `tables_table_number_uindex` (`table_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texts`
--

DROP TABLE IF EXISTS `texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texts` (
  `english_text` varchar(500) NOT NULL,
  `dutch_text` varchar(500) NOT NULL,
  PRIMARY KEY (`english_text`),
  UNIQUE KEY `texts_english_text_uindex` (`english_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texts`
--

LOCK TABLES `texts` WRITE;
/*!40000 ALTER TABLE `texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'Jacinthe Gibson','xoconner@example.net','2022-06-17 18:09:09','$2y$10$XPWxwwuNNTLreQ4M1atACOBicbv1iV6MbS2zPOVygh9jxt9DJj2Ca','jkNGy5I4Pi6uQHRj9BIVSK95NyPpUp5smduUp2FwsF5RtyG1UHDDWNrw9Rjr','2022-06-17 18:09:09','2022-06-17 18:09:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `active_promotions`
--

/*!50001 DROP VIEW IF EXISTS `active_promotions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `active_promotions` AS select `promotions`.`id` AS `id`,`promotions`.`name` AS `name`,`promotions`.`description` AS `description`,`promotions`.`course_id` AS `course_id`,`promotions`.`promotion_amount` AS `promotion_amount`,`promotions`.`promotion_price` AS `promotion_price`,`promotions`.`start_date` AS `start_date`,`promotions`.`end_date` AS `end_date`,`promotions`.`created_at` AS `created_at`,`promotions`.`last_updated_at` AS `last_updated_at`,`promotions`.`deleted_at` AS `deleted_at` from `promotions` where (curdate() between `promotions`.`start_date` and `promotions`.`end_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allergens_per_course`
--

/*!50001 DROP VIEW IF EXISTS `allergens_per_course`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `allergens_per_course` AS select `c`.`id` AS `course_id`,`c`.`name` AS `course_name`,group_concat(`ca`.`allergen` separator '\r\n') AS `allergens` from (`course_allergens` `ca` left join `courses` `c` on((`c`.`id` = `ca`.`course_id`))) group by `c`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 19:51:20
