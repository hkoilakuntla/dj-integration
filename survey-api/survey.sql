-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: survey
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `CheckBox_2`
--

DROP TABLE IF EXISTS `CheckBox_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CheckBox_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CheckBox_2`
--

LOCK TABLES `CheckBox_2` WRITE;
/*!40000 ALTER TABLE `CheckBox_2` DISABLE KEYS */;
INSERT INTO `CheckBox_2` VALUES (1,10,6,18,'Hyderabad','Eluru','2022-05-12 06:12:27','2022-05-12 06:12:27'),(2,12,7,23,'Best','Super','2022-05-12 06:50:29','2022-05-12 06:50:29'),(3,18,6,31,'T','Y','2022-05-12 08:31:29','2022-05-12 08:31:29'),(4,19,6,32,'Sss','Kkk','2022-05-12 09:55:21','2022-05-12 09:55:21'),(5,21,6,34,'I','P','2022-05-12 09:57:57','2022-05-12 09:57:57'),(6,31,4,46,'A1','A2','2022-06-08 07:45:36','2022-06-08 07:45:36'),(7,32,6,49,'Yes','No','2022-06-08 07:46:21','2022-06-08 07:46:21'),(8,34,4,53,'A1','A2','2022-06-08 08:19:45','2022-06-08 08:19:45'),(9,38,7,58,'A','B','2022-06-08 09:05:30','2022-06-08 09:05:30'),(10,40,6,60,'A','B','2022-06-08 09:08:43','2022-06-08 09:08:43'),(11,41,6,61,'A','B','2022-06-08 09:10:45','2022-06-08 09:10:45');
/*!40000 ALTER TABLE `CheckBox_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CheckBox_3`
--

DROP TABLE IF EXISTS `CheckBox_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CheckBox_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CheckBox_3`
--

LOCK TABLES `CheckBox_3` WRITE;
/*!40000 ALTER TABLE `CheckBox_3` DISABLE KEYS */;
INSERT INTO `CheckBox_3` VALUES (1,4,3,8,'Hyd','Kkd','Rvpm','2022-02-22 16:28:39','2022-02-22 16:28:39'),(2,6,3,12,'Appstek','TCS','IBM','2022-04-19 07:41:25','2022-04-19 07:41:25'),(3,11,6,21,'4th','3rd','5th','2022-05-12 06:25:24','2022-05-12 06:25:24'),(4,16,6,28,'MBA','MCA','B-TECH','2022-05-12 07:28:52','2022-05-12 07:28:52'),(5,35,6,55,'TRS','BJP','Congress','2022-06-08 08:21:21','2022-06-08 08:21:21');
/*!40000 ALTER TABLE `CheckBox_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DropDown_2`
--

DROP TABLE IF EXISTS `DropDown_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DropDown_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DropDown_2`
--

LOCK TABLES `DropDown_2` WRITE;
/*!40000 ALTER TABLE `DropDown_2` DISABLE KEYS */;
INSERT INTO `DropDown_2` VALUES (1,11,6,22,'Male','Female','2022-05-12 06:25:24','2022-05-12 06:25:24'),(2,16,6,29,'JNTU','Pragati nagar','2022-05-12 07:28:52','2022-05-12 07:28:52'),(3,20,6,33,'Wwee','Rrr','2022-05-12 09:57:01','2022-05-12 09:57:01'),(4,39,7,59,'A','B','2022-06-08 09:06:44','2022-06-08 09:06:44');
/*!40000 ALTER TABLE `DropDown_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DropDown_3`
--

DROP TABLE IF EXISTS `DropDown_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DropDown_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DropDown_3`
--

LOCK TABLES `DropDown_3` WRITE;
/*!40000 ALTER TABLE `DropDown_3` DISABLE KEYS */;
INSERT INTO `DropDown_3` VALUES (1,4,3,9,'30','31','32','2022-02-22 16:28:39','2022-02-22 16:28:39'),(2,6,3,13,'Kphb','Hi-tech City','Madhapur','2022-04-19 07:41:25','2022-04-19 07:41:25'),(3,10,6,19,'B-tech','MCA','MBA','2022-05-12 06:12:27','2022-05-12 06:12:27'),(4,31,4,47,'A1','A2','A3','2022-06-08 07:45:36','2022-06-08 07:45:36');
/*!40000 ALTER TABLE `DropDown_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DropDown_4`
--

DROP TABLE IF EXISTS `DropDown_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DropDown_4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DropDown_4`
--

LOCK TABLES `DropDown_4` WRITE;
/*!40000 ALTER TABLE `DropDown_4` DISABLE KEYS */;
INSERT INTO `DropDown_4` VALUES (1,32,6,50,'PHP','DOT NET','QA','DBA','2022-06-08 07:46:22','2022-06-08 07:46:22');
/*!40000 ALTER TABLE `DropDown_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RadioButton_2`
--

DROP TABLE IF EXISTS `RadioButton_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RadioButton_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RadioButton_2`
--

LOCK TABLES `RadioButton_2` WRITE;
/*!40000 ALTER TABLE `RadioButton_2` DISABLE KEYS */;
INSERT INTO `RadioButton_2` VALUES (1,5,5,10,'Test','Test','2022-04-19 07:38:53','2022-04-19 07:38:53'),(2,7,3,14,'Trie','Faal','2022-04-19 07:48:17','2022-04-19 07:48:17'),(3,8,1,15,'Appstekcorp','TCS','2022-05-11 15:40:43','2022-05-11 15:40:43'),(4,9,6,16,'No','Yes','2022-05-11 15:49:19','2022-05-11 15:49:19'),(5,10,6,17,'Male','Female','2022-05-12 06:12:27','2022-05-12 06:12:27'),(6,13,6,24,'Aaa','Aaa','2022-05-12 06:57:01','2022-05-12 06:57:01'),(7,14,6,25,'Aaaa','Dddd','2022-05-12 06:58:51','2022-05-12 06:58:51'),(8,17,6,30,'T','Y','2022-05-12 08:24:13','2022-05-12 08:24:13'),(9,23,1,36,'Appstekcorp','TCS','2022-05-16 08:46:36','2022-05-16 08:46:36'),(10,24,6,37,'2100','2500','2022-05-16 15:32:27','2022-05-16 15:32:27'),(11,25,7,38,'Instra','Facebook','2022-06-01 07:38:17','2022-06-01 07:38:17'),(12,26,7,39,'Yes','No','2022-06-01 08:04:34','2022-06-01 08:04:34'),(13,27,7,40,'Burg','Bijos','2022-06-06 07:28:01','2022-06-06 07:28:01'),(14,31,4,44,'A1','A2','2022-06-08 07:45:36','2022-06-08 07:45:36'),(15,31,4,45,'A1','A2','2022-06-08 07:45:36','2022-06-08 07:45:36'),(16,34,4,52,'A1','A2','2022-06-08 08:19:45','2022-06-08 08:19:45'),(17,35,6,54,'Yes','No','2022-06-08 08:21:21','2022-06-08 08:21:21'),(18,36,4,56,'A1','A2','2022-06-08 09:01:01','2022-06-08 09:01:01'),(19,37,7,57,'Whatsapp','Insta','2022-06-08 09:03:52','2022-06-08 09:03:52');
/*!40000 ALTER TABLE `RadioButton_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RadioButton_3`
--

DROP TABLE IF EXISTS `RadioButton_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RadioButton_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RadioButton_3`
--

LOCK TABLES `RadioButton_3` WRITE;
/*!40000 ALTER TABLE `RadioButton_3` DISABLE KEYS */;
INSERT INTO `RadioButton_3` VALUES (1,4,3,7,'Hyd','Kkd','Rjy','2022-02-22 16:28:38','2022-02-22 16:28:38'),(2,6,3,11,'Hyd','Chenni','Bangalore','2022-04-19 07:41:25','2022-04-19 07:41:25'),(3,11,6,20,'Jan23rd','Jan2nd','Jan21st','2022-05-12 06:25:24','2022-05-12 06:25:24'),(4,15,7,26,'By using Google cloud','Gmail','AWS','2022-05-12 06:59:32','2022-05-12 06:59:32'),(5,16,6,27,'Hyderabad','Guntur','Kakinada','2022-05-12 07:28:52','2022-05-12 07:28:52'),(6,1,1,1,'R1','R2','R3','2022-05-16 08:34:30','2022-05-16 08:34:30'),(7,28,9,41,'TDP','YCP','Janasena','2022-06-08 05:55:39','2022-06-08 05:55:39'),(8,29,9,42,'Android','iOS','Windows','2022-06-08 06:19:42','2022-06-08 06:19:42'),(9,30,9,43,'Android','iOS','Windows','2022-06-08 06:24:27','2022-06-08 06:24:27'),(10,32,6,48,'150','200','250','2022-06-08 07:46:21','2022-06-08 07:46:21'),(11,33,9,51,'iOS','Android','Windows','2022-06-08 08:05:12','2022-06-08 08:05:12');
/*!40000 ALTER TABLE `RadioButton_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RadioButton_4`
--

DROP TABLE IF EXISTS `RadioButton_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RadioButton_4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RadioButton_4`
--

LOCK TABLES `RadioButton_4` WRITE;
/*!40000 ALTER TABLE `RadioButton_4` DISABLE KEYS */;
INSERT INTO `RadioButton_4` VALUES (1,22,7,35,'TDP','YSRCP','Janasenna','Others','2022-05-12 10:13:18','2022-05-12 10:13:18');
/*!40000 ALTER TABLE `RadioButton_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdown_3`
--

DROP TABLE IF EXISTS `dropdown_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dropdown_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdown_3`
--

LOCK TABLES `dropdown_3` WRITE;
/*!40000 ALTER TABLE `dropdown_3` DISABLE KEYS */;
INSERT INTO `dropdown_3` VALUES (1,1,1,2,'D1','D2','D3','2022-02-22 07:06:55','2022-02-22 07:06:55'),(2,2,1,4,'D1','D2','D3','2022-02-22 07:18:42','2022-02-22 07:18:42'),(3,3,1,6,'D1','D2','D3','2022-02-22 08:19:58','2022-02-22 08:19:58');
/*!40000 ALTER TABLE `dropdown_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2020_05_30_064121_create_survey_table',1),(9,'2020_05_30_095454_create_survey_questions_table',1),(10,'2020_06_08_104607_create_survey_users_table',1),(11,'2020_06_08_131959_create_survey_users_qst_options_table',1),(12,'2020_07_01_163348_create_notifications_table',1),(13,'2020_07_09_091216_create_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notify_id` int unsigned NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `survey_id` int NOT NULL,
  `notification_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `self_note` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'9010655587','+91',1,1,'text message','Customer Feedback',2,1,'2022-02-22 02:36:39','2022-02-22 02:36:39'),(2,'8333850283','+91',1,1,'text message','Customer Feedback',1,0,'2022-02-22 02:36:39','2022-02-22 02:36:39'),(3,'8985828370','+91',1,1,'notification','Customer Feedback',1,0,'2022-02-22 02:36:39','2022-02-22 02:36:39'),(4,'9867453210','.+91',1,1,'text message','Customer Feedback',1,0,'2022-02-22 02:36:39','2022-02-22 02:36:39'),(5,'8985828370','+91',1,1,'notification','Survey Response',0,0,'2022-02-22 02:36:53','2022-02-22 02:36:53'),(6,'5238 88173','8',3,4,'text message','Customer Feedback',1,0,'2022-02-22 16:29:22','2022-02-22 16:29:22'),(7,'8523888173','NULL',3,4,'notification','Customer Feedback',2,0,'2022-02-24 06:24:37','2022-02-24 06:24:37'),(8,'9618620312','NULL',5,5,'notification','Customer Feedback',2,0,'2022-04-19 07:39:08','2022-04-19 07:39:08'),(9,'8523888173','NULL',5,5,'notification','Customer Feedback',2,0,'2022-04-19 07:39:08','2022-04-19 07:39:08'),(10,'7330977620','NULL',3,6,'notification','Customer Feedback',2,1,'2022-04-19 07:41:34','2022-04-19 07:41:34'),(11,'9618620312','+91',5,6,'notification','Survey Response',2,0,'2022-04-19 07:42:05','2022-04-19 07:42:05'),(12,'8523888173','NULL',3,6,'notification','Customer Feedback',2,0,'2022-04-19 07:44:06','2022-04-19 07:44:06'),(13,'6526 07929','+91 9',3,7,'text message','Customer Feedback',1,0,'2022-04-19 07:49:45','2022-04-19 07:49:45'),(14,'8523888173','NULL',6,9,'notification','Customer Feedback',2,0,'2022-05-11 15:49:44','2022-05-11 15:49:44'),(15,'7330977620','NULL',6,10,'notification','Customer Feedback',2,1,'2022-05-12 06:13:04','2022-05-12 06:13:04'),(16,'8523888173','NULL',6,10,'notification','Customer Feedback',2,0,'2022-05-12 06:13:04','2022-05-12 06:13:04'),(17,'7330977620','NULL',6,11,'notification','Customer Feedback',1,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(18,'8523888173','NULL',6,11,'notification','Customer Feedback',2,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(19,'9618620312','NULL',6,11,'notification','Customer Feedback',1,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(20,'9849400997','NULL',7,15,'text message','Customer Feedback',2,0,'2022-05-12 07:03:25','2022-05-12 07:03:25'),(21,'9441781290','NULL',7,15,'notification','Customer Feedback',2,0,'2022-05-12 07:09:20','2022-05-12 07:09:20'),(22,'9182862596','NULL',6,16,'notification','Customer Feedback',2,0,'2022-05-12 07:29:05','2022-05-12 07:29:05'),(23,'9441781290','NULL',7,12,'notification','Customer Feedback',2,0,'2022-05-12 08:33:32','2022-05-12 08:33:32'),(24,'9182862596','NULL',6,18,'notification','Customer Feedback',2,0,'2022-05-12 09:40:18','2022-05-12 09:40:18'),(25,'9052893389','NULL',6,21,'text message','Customer Feedback',1,0,'2022-05-12 09:59:05','2022-05-12 09:59:05'),(26,'9441781290','NULL',7,22,'notification','Customer Feedback',2,0,'2022-05-12 10:14:29','2022-05-12 10:14:29'),(27,'9182862596','NULL',6,20,'notification','Customer Feedback',2,0,'2022-05-12 13:17:33','2022-05-12 13:17:33'),(28,'9441781290','+91',5,10,'notification','Survey Response',2,0,'2022-05-13 18:53:51','2022-05-13 18:53:51'),(29,'9441781290','+',1,1,'notification','Customer Feedback',2,1,'2022-05-16 08:31:19','2022-05-16 08:31:19'),(30,'8333850283','+91',1,1,'text message','Customer Feedback',1,0,'2022-05-16 08:31:19','2022-05-16 08:31:19'),(31,'9867453210','+91',1,1,'text message','Customer Feedback',1,0,'2022-05-16 08:31:19','2022-05-16 08:31:19'),(32,'9441781290','+91',3,186,'notification','Survey Response',0,0,'2022-05-16 08:40:27','2022-05-16 08:40:27'),(33,'8985828370','+91',6,1,'notification','Survey Response',0,0,'2022-05-16 09:01:47','2022-05-16 09:01:47'),(34,'8523888173','NULL',6,21,'notification','Customer Feedback',2,0,'2022-05-16 15:07:47','2022-05-16 15:07:47'),(35,'9182862596','NULL',6,24,'notification','Customer Feedback',2,1,'2022-05-16 15:32:37','2022-05-16 15:32:37'),(36,'8523888173','NULL',6,24,'notification','Customer Feedback',2,0,'2022-05-16 15:32:37','2022-05-16 15:32:37'),(37,'9441781290','+91',7,24,'notification','Survey Response',2,0,'2022-05-16 15:33:05','2022-05-16 15:33:05'),(38,'9618620312','NULL',6,24,'notification','Customer Feedback',1,0,'2022-05-16 15:34:07','2022-05-16 15:34:07'),(39,'9849248754','NULL',7,22,'text message','Customer Feedback',1,0,'2022-05-16 15:34:24','2022-05-16 15:34:24'),(40,'7330977620','NULL',7,25,'notification','Customer Feedback',1,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(41,'9441781290','NULL',7,25,'notification','Customer Feedback',2,1,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(42,'9618620312','NULL',7,25,'notification','Customer Feedback',1,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(43,'8523888173','NULL',7,25,'notification','Customer Feedback',2,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(44,'6304427854','NULL',7,26,'text message','Customer Feedback',1,0,'2022-06-01 09:45:52','2022-06-01 09:45:52'),(45,'9182862596','+91',6,25,'notification','Survey Response',2,0,'2022-06-01 10:47:45','2022-06-01 10:47:45'),(46,'9182862596','NULL',9,30,'notification','Customer Feedback',2,1,'2022-06-08 06:24:50','2022-06-08 06:24:50'),(47,'9849400997','+91',7,30,'notification','Survey Response',2,0,'2022-06-08 06:25:24','2022-06-08 06:25:24'),(48,'4417 81290','+91 9',4,31,'text message','Customer Feedback',1,0,'2022-06-08 07:46:24','2022-06-08 07:46:24'),(49,'8523888173','NULL',6,32,'notification','Customer Feedback',2,1,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(50,'9849400997','NULL',6,32,'notification','Customer Feedback',2,0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(51,'9182862596','NULL',6,32,'notification','Customer Feedback',2,0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(52,'9441781290','+91',4,32,'notification','Survey Response',2,0,'2022-06-08 07:47:24','2022-06-08 07:47:24'),(53,'5238 88173','+91 8',9,33,'text message','Customer Feedback',1,0,'2022-06-08 08:05:43','2022-06-08 08:05:43'),(54,'9182862596','NULL',9,33,'notification','Customer Feedback',2,1,'2022-06-08 08:05:43','2022-06-08 08:05:43'),(55,'9849400997','+91',7,33,'notification','Survey Response',2,0,'2022-06-08 08:13:15','2022-06-08 08:13:15'),(56,'4417 81290','+91 9',4,34,'text message','Customer Feedback',1,0,'2022-06-08 08:20:48','2022-06-08 08:20:48'),(57,'9849400997','+91',4,34,'notification','Customer Feedback',2,1,'2022-06-08 08:20:48','2022-06-08 08:20:48'),(58,'0528 93389','+91 9',4,34,'text message','Customer Feedback',1,0,'2022-06-08 08:20:48','2022-06-08 08:20:48'),(59,'5238 88173','8',6,35,'text message','Customer Feedback',1,0,'2022-06-08 08:21:39','2022-06-08 08:21:39'),(60,'8523888173','+91',9,34,'notification','Survey Response',2,0,'2022-06-08 08:22:17','2022-06-08 08:22:17'),(61,'9949107656','+91',4,36,'text message','Customer Feedback',1,0,'2022-06-08 09:02:42','2022-06-08 09:02:42'),(62,'4417 81290','+91 9',4,36,'text message','Customer Feedback',1,0,'2022-06-08 09:02:42','2022-06-08 09:02:42'),(63,'4417 81290','+91 9',4,36,'text message','Customer Feedback',1,0,'2022-06-08 09:02:42','2022-06-08 09:02:42'),(64,'9441781290','+91',7,37,'notification','Customer Feedback',2,1,'2022-06-08 09:04:24','2022-06-08 09:04:24'),(65,'9182862596','+91',6,37,'notification','Survey Response',2,0,'2022-06-08 09:04:58','2022-06-08 09:04:58'),(66,'9441781290','+91',7,38,'notification','Customer Feedback',2,0,'2022-06-08 09:05:48','2022-06-08 09:05:48'),(67,'8523888173','+91',7,39,'notification','Customer Feedback',2,1,'2022-06-08 09:07:03','2022-06-08 09:07:03'),(68,'9182862596','+91',4,39,'notification','Survey Response',2,0,'2022-06-08 09:07:46','2022-06-08 09:07:46'),(69,'5238 88173','8',6,40,'text message','Customer Feedback',1,0,'2022-06-08 09:09:12','2022-06-08 09:09:12'),(70,'1828 62596','+91 9',6,41,'text message','Customer Feedback',1,0,'2022-06-08 09:11:05','2022-06-08 09:11:05');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiobutton_3`
--

DROP TABLE IF EXISTS `radiobutton_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiobutton_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_0` varchar(255) DEFAULT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiobutton_3`
--

LOCK TABLES `radiobutton_3` WRITE;
/*!40000 ALTER TABLE `radiobutton_3` DISABLE KEYS */;
INSERT INTO `radiobutton_3` VALUES (1,1,1,1,'R1','R2','R3','2022-02-22 07:06:55','2022-02-22 07:06:55'),(2,2,1,3,'R1','R2','R3','2022-02-22 07:18:42','2022-02-22 07:18:42'),(4,3,1,5,'R1','R2','R3','2022-02-22 08:42:07','2022-02-22 08:42:07');
/*!40000 ALTER TABLE `radiobutton_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `all` int NOT NULL DEFAULT '1',
  `mysurveys_responses` int NOT NULL DEFAULT '0',
  `new_surveys` int NOT NULL DEFAULT '0',
  `all_surveys` int NOT NULL DEFAULT '0',
  `all_responses` int NOT NULL DEFAULT '0',
  `off` int NOT NULL DEFAULT '0',
  `nearby_users` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,2,1,1,1,0,1,1,1,'2022-02-22 03:05:47','2022-02-22 03:05:47'),(2,3,0,0,0,0,0,0,0,'2022-02-23 07:38:40','2022-02-23 07:38:41'),(3,5,1,1,1,1,1,1,0,'2022-04-19 07:42:43','2022-05-13 18:54:28'),(4,7,0,0,0,0,0,0,0,'2022-05-12 06:56:58','2022-06-07 06:44:27'),(5,9,0,0,0,0,0,0,0,'2022-06-07 06:39:03','2022-06-07 06:39:04');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey` (
  `survey_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `survey_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_flag` int NOT NULL DEFAULT '1',
  `view_toall` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (1,1,'Siva survey','Creating survey for testing','2020-07-30','2021-08-30',NULL,1,1,'2022-02-22 07:06:55','2022-05-16 08:34:30'),(3,1,'edit check1','survey edit check1','2020-07-30','2021-08-30',NULL,1,1,'2022-02-22 08:19:58','2022-02-22 08:33:20'),(4,3,'Test survey','Creating test survey from siva','2022-02-22','2022-03-04',NULL,1,0,'2022-02-22 16:28:38','2022-02-22 16:28:38'),(5,5,'Anji','Tester','2022-04-19','2022-04-29','file:///storage/emulated/0/Android/data/com.funsurveyapp/files/Pictures/278b53fb-96eb-45b1-9926-a9805f405700.jpg',1,0,'2022-04-19 07:38:53','2022-04-19 07:38:53'),(6,3,'Anji survey','Testing for Anji','2022-04-19','2022-04-29','http://35.172.219.236:81/survey/1650353825-file.png',1,0,'2022-04-19 07:41:25','2022-04-19 07:41:25'),(7,3,'Test','Testing','2022-04-19','2022-04-29',NULL,1,0,'2022-04-19 07:48:17','2022-04-19 07:48:17'),(8,1,'Siva survey','Creating survey for testing','2022-05-11','2022-05-21',NULL,1,0,'2022-05-11 15:40:43','2022-05-11 15:40:43'),(9,6,'Test survey','Siva app testing','2022-05-11','2022-05-21',NULL,1,0,'2022-05-11 15:49:19','2022-05-11 15:49:19'),(10,6,'Kiran testing survey','Creating kiran testing survey','2022-05-12','2022-05-21','http://jenkins.appstekcorp.com:81//survey/1652335837-file.png',1,1,'2022-05-12 06:12:27','2022-05-12 06:12:27'),(11,6,'Blessy survey','Creating survey based on testing purpose','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 06:25:24','2022-05-12 06:25:24'),(12,7,'Test','Test','2022-05-12','2022-05-23',NULL,1,1,'2022-05-12 06:50:29','2022-05-12 06:50:29'),(13,6,'Sss','Sssse','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 06:57:01','2022-05-12 06:57:01'),(14,6,'Ttttt','Eeeee','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 06:58:51','2022-05-12 06:58:51'),(15,7,'Test','Platform','2022-05-12','2022-05-21',NULL,1,1,'2022-05-12 06:59:32','2022-05-12 06:59:32'),(16,6,'SK Survey','Creating for survey testing purpose','2022-05-12','2022-05-21','http://jenkins.appstekcorp.com:81/survey/1652340373-file.png',1,1,'2022-05-12 07:28:52','2022-05-12 07:28:52'),(17,6,'Dd','Ttt','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 08:24:13','2022-05-12 08:24:13'),(18,6,'Ff','Ggg','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 08:31:29','2022-05-12 08:31:29'),(19,6,'Dd','Tttt','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 09:55:21','2022-05-12 09:55:21'),(20,6,'Dd','Yyyy','2022-05-12','2022-05-21',NULL,1,0,'2022-05-12 09:57:01','2022-05-12 09:57:01'),(21,6,'Dd','Rrr','2022-05-12','2022-05-22',NULL,1,0,'2022-05-12 09:57:57','2022-05-12 09:57:57'),(22,7,'2024 Election poll','Poll','2022-05-12','2022-05-22',NULL,1,1,'2022-05-12 10:13:17','2022-05-12 10:13:17'),(23,1,'Siva survey','Creating survey for testing','2022-05-11','2022-05-21',NULL,1,0,'2022-05-16 08:46:36','2022-05-16 08:46:36'),(24,6,'Village Survey','Purpose of survey village details','2022-05-16','2022-05-26',NULL,1,0,'2022-05-16 15:32:27','2022-05-16 15:32:27'),(25,7,'Test','Sample','2022-06-01','2022-06-11',NULL,1,1,'2022-06-01 07:38:17','2022-06-01 07:38:17'),(26,7,'Work from Office','Opinion','2022-06-01','2022-06-11',NULL,1,1,'2022-06-01 08:04:34','2022-06-01 08:04:34'),(27,7,'Sample','Sample','2022-06-06','2022-06-16',NULL,1,1,'2022-06-06 07:28:01','2022-06-06 07:28:01'),(28,9,'Test','Polling','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 05:55:39','2022-06-08 05:55:39'),(29,9,'Testing 2','Best mobile OS','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 06:19:42','2022-06-08 06:19:42'),(30,9,'OS','Best mobile OS','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 06:24:27','2022-06-08 06:24:27'),(31,4,'June8th A','June 8th test','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 07:45:35','2022-06-08 07:45:35'),(32,6,'Appstekcorp Survey','Appstekcorp is service based company.','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 07:46:21','2022-06-08 07:46:21'),(33,9,'Mobile OS','Best Mobile OS used by users','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 08:05:12','2022-06-08 08:05:12'),(34,4,'June8th test2','June8th test2 survey','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 08:19:45','2022-06-08 08:19:45'),(35,6,'June 8th Survey','June 8th puls TS Govt Survey','2022-06-08','2022-06-18','file:///storage/emulated/0/Android/data/com.funsurveyapp/files/Pictures/cdf4908a-f0a1-4bba-940c-c4a7e2d56048.jpg',1,0,'2022-06-08 08:21:21','2022-06-08 08:21:21'),(36,4,'Test','Test c','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 09:01:01','2022-06-08 09:01:01'),(37,7,'Testing','Testing','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 09:03:52','2022-06-08 09:03:52'),(38,7,'Test','Ttt','2022-06-08','2022-06-18',NULL,1,1,'2022-06-08 09:05:30','2022-06-08 09:05:30'),(39,7,'Te','Tt','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 09:06:44','2022-06-08 09:06:44'),(40,6,'Tt','Gf','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 09:08:43','2022-06-08 09:08:43'),(41,6,'Ggs','Hsh','2022-06-08','2022-06-18',NULL,1,0,'2022-06-08 09:10:45','2022-06-08 09:10:45');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_publish`
--

DROP TABLE IF EXISTS `survey_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_publish` (
  `publish_id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `created_by` int NOT NULL,
  `published_to` text NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`publish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_publish`
--

LOCK TABLES `survey_publish` WRITE;
/*!40000 ALTER TABLE `survey_publish` DISABLE KEYS */;
INSERT INTO `survey_publish` VALUES (1,1,1,'+919010655587,+918333850283,+918985828370,.+919867453210,+9441781290,+919867453210',0,'2022-02-22 02:36:39','2022-05-16 08:31:19'),(2,4,3,'85238 88173,8523888173',0,'2022-02-22 16:29:22','2022-02-24 06:24:37'),(3,5,5,'9618620312,8523888173',0,'2022-04-19 07:39:08','2022-04-19 07:39:08'),(4,6,3,'7330977620,8523888173',0,'2022-04-19 07:41:34','2022-04-19 07:44:06'),(5,7,3,'+91 96526 07929',0,'2022-04-19 07:49:45','2022-04-19 07:49:45'),(6,9,6,'8523888173',0,'2022-05-11 15:49:44','2022-05-11 15:49:44'),(7,10,6,'7330977620,8523888173',0,'2022-05-12 06:13:04','2022-05-12 06:13:04'),(8,11,6,'7330977620,8523888173,9618620312',0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(9,15,7,',9849400997,9441781290',0,'2022-05-12 07:01:02','2022-05-12 07:09:20'),(10,16,6,'9182862596',0,'2022-05-12 07:29:05','2022-05-12 07:29:05'),(11,12,7,'9441781290',0,'2022-05-12 08:33:32','2022-05-12 08:33:32'),(12,18,6,'9182862596',0,'2022-05-12 09:40:17','2022-05-12 09:40:17'),(13,21,6,',9052893389,8523888173',0,'2022-05-12 09:58:17','2022-05-16 15:07:47'),(14,22,7,'9441781290,9849248754',0,'2022-05-12 10:14:29','2022-05-16 15:34:24'),(15,20,6,'9182862596',0,'2022-05-12 13:17:33','2022-05-12 13:17:33'),(16,24,6,'9182862596,8523888173,9618620312',0,'2022-05-16 15:32:37','2022-05-16 15:34:07'),(17,25,7,'7330977620,9441781290,9618620312,8523888173',0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(18,26,7,'6304427854',0,'2022-06-01 09:45:52','2022-06-01 09:45:52'),(19,29,9,'',0,'2022-06-08 06:20:25','2022-06-08 06:20:25'),(20,30,9,'9182862596',0,'2022-06-08 06:24:50','2022-06-08 06:24:50'),(21,31,4,'+91 94417 81290',0,'2022-06-08 07:46:24','2022-06-08 07:46:24'),(22,32,6,'8523888173,9849400997,9182862596',0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(23,33,9,'+91 85238 88173,9182862596',0,'2022-06-08 08:05:43','2022-06-08 08:05:43'),(24,34,4,'+91 94417 81290,+919849400997,+91 90528 93389',0,'2022-06-08 08:20:48','2022-06-08 08:20:48'),(25,35,6,'85238 88173',0,'2022-06-08 08:21:39','2022-06-08 08:21:39'),(26,36,4,'+919949107656,+91 94417 81290,+91 94417 81290',0,'2022-06-08 09:02:42','2022-06-08 09:02:42'),(27,37,7,'+919441781290',0,'2022-06-08 09:04:24','2022-06-08 09:04:24'),(28,38,7,'+919441781290',0,'2022-06-08 09:05:48','2022-06-08 09:05:48'),(29,39,7,'+918523888173',0,'2022-06-08 09:07:03','2022-06-08 09:07:03'),(30,40,6,'85238 88173',0,'2022-06-08 09:09:12','2022-06-08 09:09:12'),(31,41,6,'+91 91828 62596',0,'2022-06-08 09:11:05','2022-06-08 09:11:05');
/*!40000 ALTER TABLE `survey_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_questions` (
  `question_id` int unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `question_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_count` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,1,1,'Company name?','RadioButton',3,'2022-02-22 07:06:55','2022-05-16 08:34:30'),(5,3,1,'survey edit','RadioButton',3,'2022-02-22 08:19:58','2022-02-22 08:42:07'),(6,3,1,'Mydrop','DropDown',3,'2022-02-22 08:19:58','2022-02-22 08:19:58'),(7,4,3,'Where are you from?','RadioButton',3,'2022-02-22 16:28:38','2022-02-22 16:28:38'),(8,4,3,'What is your current location?','CheckBox',3,'2022-02-22 16:28:38','2022-02-22 16:28:38'),(9,4,3,'What is your age?','DropDown',3,'2022-02-22 16:28:39','2022-02-22 16:28:39'),(10,5,5,'Test','RadioButton',2,'2022-04-19 07:38:53','2022-04-19 07:38:53'),(11,6,3,'Anji working location?','RadioButton',3,'2022-04-19 07:41:25','2022-04-19 07:41:25'),(12,6,3,'Anjii working company?','CheckBox',3,'2022-04-19 07:41:25','2022-04-19 07:41:25'),(13,6,3,'Anjii present staying location?','DropDown',3,'2022-04-19 07:41:25','2022-04-19 07:41:25'),(14,7,3,'Testing','RadioButton',2,'2022-04-19 07:48:17','2022-04-19 07:48:17'),(15,8,1,'Company name?','RadioButton',2,'2022-05-11 15:40:43','2022-05-11 15:40:43'),(16,9,6,'Siva app working ?','RadioButton',2,'2022-05-11 15:49:19','2022-05-11 15:49:19'),(17,10,6,'Gender','RadioButton',2,'2022-05-12 06:12:27','2022-05-12 06:12:27'),(18,10,6,'City?','CheckBox',2,'2022-05-12 06:12:27','2022-05-12 06:12:27'),(19,10,6,'Study?','DropDown',3,'2022-05-12 06:12:27','2022-05-12 06:12:27'),(20,11,6,'Blessy born date?','RadioButton',3,'2022-05-12 06:25:24','2022-05-12 06:25:24'),(21,11,6,'Which class blessy studying?','CheckBox',3,'2022-05-12 06:25:24','2022-05-12 06:25:24'),(22,11,6,'Blessy gender?','DropDown',2,'2022-05-12 06:25:24','2022-05-12 06:25:24'),(23,12,7,'About App','CheckBox',2,'2022-05-12 06:50:29','2022-05-12 06:50:29'),(24,13,6,'Sssss','RadioButton',2,'2022-05-12 06:57:01','2022-05-12 06:57:01'),(25,14,6,'Wwwww','RadioButton',2,'2022-05-12 06:58:51','2022-05-12 06:58:51'),(26,15,7,'How to get Google place API\'s?','RadioButton',3,'2022-05-12 06:59:32','2022-05-12 06:59:32'),(27,16,6,'Where are you from?','RadioButton',3,'2022-05-12 07:28:52','2022-05-12 07:28:52'),(28,16,6,'What is your qualifications?','CheckBox',3,'2022-05-12 07:28:52','2022-05-12 07:28:52'),(29,16,6,'Which place you are staying?','DropDown',2,'2022-05-12 07:28:52','2022-05-12 07:28:52'),(30,17,6,'Ff','RadioButton',2,'2022-05-12 08:24:13','2022-05-12 08:24:13'),(31,18,6,'Yy','CheckBox',2,'2022-05-12 08:31:29','2022-05-12 08:31:29'),(32,19,6,'Yyy','CheckBox',2,'2022-05-12 09:55:21','2022-05-12 09:55:21'),(33,20,6,'Qqq','DropDown',2,'2022-05-12 09:57:01','2022-05-12 09:57:01'),(34,21,6,'Tt','CheckBox',2,'2022-05-12 09:57:57','2022-05-12 09:57:57'),(35,22,7,'Who will win in 2024 elections in AP','RadioButton',4,'2022-05-12 10:13:17','2022-05-12 10:13:17'),(36,23,1,'Company name?','RadioButton',2,'2022-05-16 08:46:36','2022-05-16 08:46:36'),(37,24,6,'Village people count?','RadioButton',2,'2022-05-16 15:32:27','2022-05-16 15:32:27'),(38,25,7,'Best one','RadioButton',2,'2022-06-01 07:38:17','2022-06-01 07:38:17'),(39,26,7,'Are you interested to WFO','RadioButton',2,'2022-06-01 08:04:34','2022-06-01 08:04:34'),(40,27,7,'Who is founder of FB','RadioButton',2,'2022-06-06 07:28:01','2022-06-06 07:28:01'),(41,28,9,'2024 Election Survey','RadioButton',3,'2022-06-08 05:55:39','2022-06-08 05:55:39'),(42,29,9,'Best mobile OS','RadioButton',3,'2022-06-08 06:19:42','2022-06-08 06:19:42'),(43,30,9,'Best Mobile OS','RadioButton',3,'2022-06-08 06:24:27','2022-06-08 06:24:27'),(44,31,4,'Q1','RadioButton',2,'2022-06-08 07:45:35','2022-06-08 07:45:35'),(45,31,4,'Q2','RadioButton',2,'2022-06-08 07:45:36','2022-06-08 07:45:36'),(46,31,4,'Q3','CheckBox',2,'2022-06-08 07:45:36','2022-06-08 07:45:36'),(47,31,4,'Q4','DropDown',3,'2022-06-08 07:45:36','2022-06-08 07:45:36'),(48,32,6,'How many employees are there in company?','RadioButton',3,'2022-06-08 07:46:21','2022-06-08 07:46:21'),(49,32,6,'Appstekcorp is product based company?','CheckBox',2,'2022-06-08 07:46:21','2022-06-08 07:46:21'),(50,32,6,'Appstekcorp company services?','DropDown',4,'2022-06-08 07:46:21','2022-06-08 07:46:21'),(51,33,9,'Best mobile OS used by users','RadioButton',3,'2022-06-08 08:05:12','2022-06-08 08:05:12'),(52,34,4,'Q1','RadioButton',2,'2022-06-08 08:19:45','2022-06-08 08:19:45'),(53,34,4,'Q2','CheckBox',2,'2022-06-08 08:19:45','2022-06-08 08:19:45'),(54,35,6,'Are you satisfied TS Govt?','RadioButton',2,'2022-06-08 08:21:21','2022-06-08 08:21:21'),(55,35,6,'Which party next rule the Government?','CheckBox',3,'2022-06-08 08:21:21','2022-06-08 08:21:21'),(56,36,4,'Q1','RadioButton',2,'2022-06-08 09:01:01','2022-06-08 09:01:01'),(57,37,7,'Best Apps','RadioButton',2,'2022-06-08 09:03:52','2022-06-08 09:03:52'),(58,38,7,'Q1','CheckBox',2,'2022-06-08 09:05:30','2022-06-08 09:05:30'),(59,39,7,'Q22','DropDown',2,'2022-06-08 09:06:44','2022-06-08 09:06:44'),(60,40,6,'Gffc','CheckBox',2,'2022-06-08 09:08:43','2022-06-08 09:08:43'),(61,41,6,'Ss','CheckBox',2,'2022-06-08 09:10:45','2022-06-08 09:10:45');
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_users`
--

DROP TABLE IF EXISTS `survey_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_users` (
  `surveyuser_id` int unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`surveyuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_users`
--

LOCK TABLES `survey_users` WRITE;
/*!40000 ALTER TABLE `survey_users` DISABLE KEYS */;
INSERT INTO `survey_users` VALUES (1,1,1,0,'2022-02-22 02:35:40','2022-02-22 02:35:40'),(2,1,1,0,'2022-02-22 02:36:39','2022-02-22 02:36:39'),(3,4,4,0,'2022-02-24 06:24:37','2022-02-24 06:24:37'),(4,5,3,0,'2022-04-19 07:39:08','2022-04-19 07:39:08'),(5,5,4,0,'2022-04-19 07:39:08','2022-04-19 07:39:08'),(6,6,5,0,'2022-04-19 07:41:34','2022-04-19 07:41:34'),(7,6,4,0,'2022-04-19 07:44:06','2022-04-19 07:44:06'),(8,9,4,0,'2022-05-11 15:49:44','2022-05-11 15:49:44'),(9,10,5,0,'2022-05-12 06:13:04','2022-05-12 06:13:04'),(10,10,4,0,'2022-05-12 06:13:04','2022-05-12 06:13:04'),(11,11,5,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(12,11,4,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(13,11,3,0,'2022-05-12 06:25:36','2022-05-12 06:25:36'),(14,15,6,0,'2022-05-12 07:09:20','2022-05-12 07:09:20'),(15,16,7,0,'2022-05-12 07:29:05','2022-05-12 07:29:05'),(16,12,6,0,'2022-05-12 08:33:32','2022-05-12 08:33:32'),(17,18,7,0,'2022-05-12 09:40:18','2022-05-12 09:40:18'),(18,22,6,0,'2022-05-12 10:14:29','2022-05-12 10:14:29'),(19,20,7,0,'2022-05-12 13:17:33','2022-05-12 13:17:33'),(20,1,6,0,'2022-05-16 08:31:19','2022-05-16 08:31:19'),(21,1,1,0,'2022-05-16 08:36:59','2022-05-16 08:36:59'),(22,21,4,0,'2022-05-16 15:07:47','2022-05-16 15:07:47'),(23,24,7,0,'2022-05-16 15:32:37','2022-05-16 15:32:37'),(24,24,4,0,'2022-05-16 15:32:37','2022-05-16 15:32:37'),(25,24,3,0,'2022-05-16 15:34:07','2022-05-16 15:34:07'),(26,25,5,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(27,25,6,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(28,25,3,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(29,25,4,0,'2022-06-01 07:46:26','2022-06-01 07:46:26'),(30,30,7,0,'2022-06-08 06:24:50','2022-06-08 06:24:50'),(31,32,4,0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(32,32,9,0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(33,32,7,0,'2022-06-08 07:46:44','2022-06-08 07:46:44'),(34,33,7,0,'2022-06-08 08:05:43','2022-06-08 08:05:43'),(35,34,9,0,'2022-06-08 08:20:48','2022-06-08 08:20:48'),(36,37,6,0,'2022-06-08 09:04:24','2022-06-08 09:04:24'),(37,38,6,0,'2022-06-08 09:05:48','2022-06-08 09:05:48'),(38,39,4,0,'2022-06-08 09:07:03','2022-06-08 09:07:03');
/*!40000 ALTER TABLE `survey_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_users_qst_options`
--

DROP TABLE IF EXISTS `survey_users_qst_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_users_qst_options` (
  `qstoption_id` int unsigned NOT NULL AUTO_INCREMENT,
  `surveyuser_id` int NOT NULL,
  `survey_id` int NOT NULL,
  `question_id` int NOT NULL,
  `qstn_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt_txt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selected_options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`qstoption_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_users_qst_options`
--

LOCK TABLES `survey_users_qst_options` WRITE;
/*!40000 ALTER TABLE `survey_users_qst_options` DISABLE KEYS */;
INSERT INTO `survey_users_qst_options` VALUES (1,1,1,208,'RadioButton','R1,R2,R3','R1',3,'2022-02-22 02:36:53','2022-02-22 02:36:53'),(2,1,1,209,'DropDown','D1,D2,D3','D1',3,'2022-02-22 02:36:53','2022-02-22 02:36:53'),(3,6,6,11,'RadioButton','Hyd,Chenni,Bangalore','Hyd',3,'2022-04-19 07:42:05','2022-04-19 07:42:05'),(4,6,6,12,'CheckBox','Appstek,TCS,IBM','Appstek',3,'2022-04-19 07:42:05','2022-04-19 07:42:05'),(5,6,6,13,'DropDown','Kphb,Hi-tech City,Madhapur','Kphb',3,'2022-04-19 07:42:05','2022-04-19 07:42:05'),(6,9,10,17,'RadioButton','Male,Female','Male',2,'2022-05-13 18:53:51','2022-05-13 18:53:51'),(7,9,10,18,'CheckBox','Hyderabad,Eluru','Hyderabad',2,'2022-05-13 18:53:51','2022-05-13 18:53:51'),(8,9,10,19,'DropDown','B-tech,MCA,MBA','B-tech',3,'2022-05-13 18:53:51','2022-05-13 18:53:51'),(9,13,186,19,'RadioButton','R1,R2,R3','R2',3,'2022-05-16 08:40:27','2022-05-16 08:40:27'),(10,20,1,1,'RadioButton','R1,R2,R3','R1',3,'2022-05-16 09:01:47','2022-05-16 09:01:47'),(11,23,24,37,'RadioButton','2100,2500','2500',2,'2022-05-16 15:33:05','2022-05-16 15:33:05'),(12,27,25,38,'RadioButton','Instra,Facebook','Instra',2,'2022-06-01 10:47:45','2022-06-01 10:47:45'),(13,30,30,43,'RadioButton','Android,iOS,Windows','iOS',3,'2022-06-08 06:25:24','2022-06-08 06:25:24'),(14,31,32,48,'RadioButton','150,200,250','150',3,'2022-06-08 07:47:24','2022-06-08 07:47:24'),(15,31,32,49,'CheckBox','Yes,No','Yes',2,'2022-06-08 07:47:24','2022-06-08 07:47:24'),(16,31,32,50,'DropDown','PHP,DOT NET,QA,DBA','PHP',4,'2022-06-08 07:47:24','2022-06-08 07:47:24'),(17,34,33,51,'RadioButton','iOS,Android,Windows','iOS',3,'2022-06-08 08:13:15','2022-06-08 08:13:15'),(18,35,34,52,'RadioButton','A1,A2','A2',2,'2022-06-08 08:22:17','2022-06-08 08:22:17'),(19,35,34,53,'CheckBox','A1,A2','A2',2,'2022-06-08 08:22:17','2022-06-08 08:22:17'),(20,36,37,57,'RadioButton','Whatsapp,Insta','Insta',2,'2022-06-08 09:04:58','2022-06-08 09:04:58'),(21,38,39,59,'DropDown','A,B','A',2,'2022-06-08 09:07:46','2022-06-08 09:07:46');
/*!40000 ALTER TABLE `survey_users_qst_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` int NOT NULL,
  `latitude` decimal(8,2) DEFAULT NULL,
  `longitude` decimal(8,2) DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mounika','mounika@gmail.com','8985828370','+91',9999,12.56,34.78,'1652690940-file.png',NULL,'2022-02-22 01:34:35','2022-05-16 08:49:00'),(2,'sri','sri@gmail.com','9010655587','+91',9999,10.46,12.38,NULL,NULL,'2022-02-22 02:48:47','2022-02-22 02:48:47'),(3,'siva','siva123@gmail.com','9618620312','+91',9999,17.43,78.38,'http://35.172.219.236:81/survey/1650354326-file.png',NULL,'2022-02-22 15:57:49','2022-04-19 07:52:33'),(4,'Pvkk','pallikiran@gmail.com','8523888173','+91',9999,17.43,78.38,NULL,NULL,'2022-02-23 04:53:11','2022-06-08 09:10:13'),(5,'srinivas inumarthi','srinuinumarthi79@gmail.com','7330977620','+91',9999,17.08,82.33,NULL,NULL,'2022-04-19 07:36:59','2022-05-18 09:53:58'),(6,'siva','schintalapudi@appstekcorp.com','9441781290','+91',9999,17.43,78.38,'1652691892-file.png',NULL,'2022-05-11 15:25:42','2022-06-08 09:19:45'),(7,'Nagendrababu','Nmandalapu@appstekcorp.com','9182862596','+91',9999,17.43,78.38,'1654510509-file.png',NULL,'2022-05-12 06:42:39','2022-06-08 09:13:14'),(8,'sivaKrishna','siva@gmail.com','9441781291','+91',9999,10.46,12.38,NULL,NULL,'2022-05-20 15:03:36','2022-05-20 15:03:36'),(9,'Dinesh','dsreddy@appstekcorp.com','9849400997','+91',9999,16.60,81.81,'1654593321-file.png',NULL,'2022-06-07 06:25:14','2022-06-08 09:29:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08  9:36:04
