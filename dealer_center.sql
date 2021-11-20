-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: localhost    Database: dealer_center
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `activity_types_id` smallint unsigned NOT NULL,
  `client_id` smallint unsigned NOT NULL,
  `company_id` smallint unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_activity_types_id` (`activity_types_id`),
  KEY `fk_client_id` (`client_id`),
  KEY `fk_company_id` (`company_id`),
  CONSTRAINT `fk_activity_types_id` FOREIGN KEY (`activity_types_id`) REFERENCES `activity_types` (`id`),
  CONSTRAINT `fk_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,1,21,1,'Excepturi animi ea nemo cum esse corrupti. Possimus voluptatum quos placeat qui quam et nisi. Sapiente voluptates aut explicabo et dolorem quos aliquam. Qui aperiam optio dolorem eveniet laboriosam sed.','1996-01-10 15:36:02','2017-03-17 21:44:29'),(2,2,22,3,'Tempora et ea natus sunt ut. Fuga quaerat aut qui in necessitatibus assumenda. Doloribus praesentium veritatis dicta fugiat voluptatem eius aut doloremque.','1997-11-07 11:14:21','1982-02-20 15:15:00'),(3,3,23,1,'Molestiae cupiditate enim tempore perspiciatis tempore illo qui. Nihil eum odio unde quos et qui. Cupiditate vitae voluptatem veritatis enim. Accusantium ut provident totam rem culpa sint.','1970-02-01 02:31:20','2001-12-18 10:08:27'),(4,1,24,3,'Magni corrupti architecto tempore culpa voluptas odit eaque. Fuga repellat cumque voluptatem est tempore. Inventore labore ducimus praesentium illum itaque magni doloribus. Odio voluptatem reprehenderit ut vel aut voluptas suscipit.','1995-09-26 23:35:37','1995-09-26 23:35:37'),(5,2,25,1,'Sed dolorem ea perspiciatis placeat expedita quo sunt et. Enim quo possimus illum omnis omnis. In ut sed provident dolorem.','2008-08-23 18:24:45','2008-08-23 18:24:45'),(6,3,26,3,'Qui aspernatur excepturi rerum enim. Velit rem voluptatem ut amet quia et fuga aut. Ea et repudiandae est et.','2011-09-25 09:16:07','2012-12-28 14:15:46'),(7,1,27,1,'Quia et nostrum maxime dolorem. Molestias dolores consectetur sit dolor repudiandae dolorem voluptatem. Natus vero eaque praesentium delectus itaque eos. Eum neque architecto quibusdam sunt esse facilis. Odit facere eum corrupti porro id illum.','2001-11-30 20:44:34','2001-11-30 20:44:34'),(8,2,28,3,'Molestias est sit aliquid neque. Mollitia consequatur ratione animi eum perferendis facilis. Iure tenetur rerum quam.','1978-05-28 22:03:11','1993-04-02 15:26:51'),(9,3,29,1,'Sed sapiente et aut libero aut beatae. Et quam facilis est ut sit autem. Accusamus quod fuga tempore sit. Dolorum molestiae hic aut quae sapiente expedita.','2010-04-21 09:51:56','2010-04-21 09:51:56'),(10,1,30,3,'Sunt aut quia impedit laboriosam facilis quis architecto. Amet alias dolore est eaque doloribus. Consequuntur ratione minus quo pariatur fugiat possimus. Laudantium aut natus quia esse eveniet dolorum.','1999-01-28 22:21:23','2000-12-12 22:57:35'),(11,2,31,1,'Eius voluptas odit rerum. A ipsam et cupiditate tempora rerum. Maxime magni molestiae quas alias voluptas sed reprehenderit. Quo voluptatem rerum temporibus quis.','2012-10-16 10:26:56','2012-10-16 10:26:56'),(12,3,32,3,'Quia dolores corporis minima. Rerum id eum temporibus eos inventore sit rerum.','2016-06-11 06:05:59','2016-06-11 06:05:59'),(13,1,33,1,'Rerum ipsa delectus et illum in sed ipsa. Autem dolorem perferendis sit aut enim sed. Aliquam qui ut ipsa sit voluptates ea tenetur.','1977-06-13 04:59:14','1977-06-13 04:59:14'),(14,2,34,3,'Veniam ut eum repellendus autem a. Quod et eos nihil. Aut sapiente iusto commodi est laboriosam eaque.','2005-06-13 02:15:40','2017-02-11 11:17:27'),(15,3,35,1,'Itaque voluptatem culpa repellendus minus exercitationem doloribus veritatis. Aspernatur omnis eos maxime quibusdam laborum dolor. Earum tempore enim perspiciatis magni explicabo quia rerum. Natus aperiam vitae nisi. Animi voluptas dignissimos praesentium rem labore.','1992-01-22 16:43:11','2004-05-21 08:40:09'),(16,1,36,3,'Qui velit quisquam consequatur sapiente. Nesciunt vel reprehenderit facilis eaque quaerat ratione. Sed natus veniam ullam. Incidunt voluptatem error quia omnis.','2013-02-02 08:38:49','2013-02-02 08:38:49'),(17,2,37,1,'Cumque vel est consequuntur sint ipsam. Eveniet fuga consequatur et expedita porro quam. Enim delectus consequuntur ut voluptates officia aspernatur fugiat doloremque. Est vel laborum voluptas saepe et.','1997-04-19 19:35:06','2002-03-26 15:48:54'),(18,3,38,3,'Ab ipsam veritatis iure architecto deserunt fuga id. Nostrum quidem qui eos excepturi voluptatum. Eum perspiciatis sit nulla at eaque exercitationem.','1975-06-17 14:49:11','2002-11-16 18:39:55'),(19,1,40,1,'Ea dolorum aut et sunt at sed. Occaecati et amet debitis. Aut repudiandae aliquid quasi voluptatem iure cum.','1970-01-09 23:56:17','2005-10-12 01:26:20'),(20,2,21,3,'Aliquam aut consequuntur officia eos quo ut. Odio iusto voluptates rerum omnis cupiditate. Maiores eligendi tempora qui omnis assumenda.','1989-11-18 00:23:08','2016-12-05 19:54:43');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_types`
--

DROP TABLE IF EXISTS `activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_types` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_types`
--

LOCK TABLES `activity_types` WRITE;
/*!40000 ALTER TABLE `activity_types` DISABLE KEYS */;
INSERT INTO `activity_types` VALUES (1,'Салон'),(2,'Сервис'),(3,'Магазин зч');
/*!40000 ALTER TABLE `activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'BMW'),(2,'Audi'),(3,'Mercedes'),(4,'Mini Cooper');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (21,'Tyler','Altenwerth','rbruen@example.org',79038857250),(22,'Kelley','Douglas','pansy.pacocha@example.com',79268857290),(23,'Macy','Hagenes','greenholt.norma@example.org',79258874550),(24,'Urban','Stracke','schiller.frederick@example.net',79098877650),(25,'Emmett','Deckow','lkuhn@example.com',79098857839),(26,'Ted','Wunsch','einar.littel@example.net',79068890656),(27,'Adan','Schaden','arden.sawayn@example.com',79038858765),(28,'Julia','Prosacco','harber.abigail@example.org',79258974058),(29,'Casandra','Frami','cstamm@example.com',71461529139),(30,'Delores','Wiza','lester83@example.com',79056784568),(31,'Zoie','Padberg','jarvis05@example.com',79846894466),(32,'Sonny','Ryan','jeffery.white@example.com',79076589054),(33,'Terrell','Jacobs','fkertzmann@example.net',79130014466),(34,'Dameon','Rempel','bergstrom.karen@example.net',79097584908),(35,'Walton','Heaney','kiehn.blanca@example.net',79768796876),(36,'Walton','Kutch','lessie11@example.com',79085768493),(37,'Elias','Lehner','alfredo68@example.com',79089063729),(38,'Donnie','Schimmel','edwardo.kihn@example.net',79855641580),(40,'Jazmyn','Yost','jalen.schulist@example.org',79005792056);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` smallint unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'СИМ','Ул. Авиаторов, д. 5','Москва','RU','117898'),(3,'Автомир','ул. Коштоянца, д. 15','Москва','RU','');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` smallint unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  UNIQUE KEY `dept_id` (`dept_id`),
  KEY `company_fk` (`company_id`),
  CONSTRAINT `company_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,1,'Продажи'),(2,3,'Бухгалтерия'),(3,1,'Юридический'),(4,3,'Правление'),(5,1,'Маркетинг'),(6,3,'Логистика'),(7,1,'IT'),(8,3,'Административный'),(9,1,'HR'),(10,3,'PR');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` bigint unsigned NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_dept_id` (`dept_id`),
  CONSTRAINT `fk_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Kianna Feil','Stark','1982-02-03','1994-06-27','Старший менеджер'),(2,2,'Tessie Johnson','Bauch','2014-12-13',NULL,'Младший менеджер'),(3,3,'Anita White','Marquardt','2005-05-25',NULL,'Специалист'),(4,4,'Heaven Senger','Hermiston','1971-01-18','2021-07-04','Руководитель'),(5,5,'Iliana Kautzer','Stiedemann','1993-02-25',NULL,'Младший менеджер'),(6,6,'Koby Kertzmann','Kihn','1991-11-14','2003-09-17','Специалист'),(7,7,'Vince Dickens','Mraz','2007-02-17',NULL,'Секретарь'),(8,8,'Patricia Emard','Towne','2015-07-07',NULL,'Специалист'),(9,9,'Brenna Kovacek','Green','2001-02-12','2017-05-31','Младший менеджер'),(10,10,'Oswald Okuneva','Tremblay','2005-09-30','2010-03-24','Специалист'),(11,1,'Ena Heller','Cummerata','2014-02-06',NULL,'Специалист'),(12,2,'Lon McClure I','Olson','2016-06-26',NULL,'Старший менеджер'),(13,3,'London Nader I','Nicolas','2013-07-13',NULL,'Руководитель'),(14,4,'Maurice Auer','Ortiz','2014-11-14',NULL,'Специалист'),(15,5,'Jonatan Glover','Daniel','1975-07-11','2015-02-24','Секретарь'),(16,6,'Neoma Stoltenberg','Abernathy','2013-09-17',NULL,'Руководитель'),(17,7,'Imani Okuneva','McKenzie','2013-04-24','2016-02-05','Младший менеджер'),(18,8,'Mr. Merritt Marquard','Herzog','1976-09-30','2010-10-22','Секретарь'),(19,9,'Miss Mariah Mayer V','Osinski','1998-07-10','2011-03-11','Старший менеджер'),(20,10,'Katarina Ferry','Rodriguez','1986-08-28',NULL,'Старший менеджер');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `model_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` smallint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `engine` varchar(255) DEFAULT NULL,
  `gear` varchar(255) DEFAULT NULL,
  `doors` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_brand_id` (`brand_id`),
  CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,1,'X5','2.0','2wd','5'),(2,2,'Q7','2.5','4wd','5'),(3,3,'Gelentwagen','5.0','4wd','5'),(4,4,'MINI','1.6','2wd','3'),(5,1,'M3','2.5T','4wd','3'),(6,2,'A5','2.0','2wd','5'),(7,3,'GLE','2.0','2wd','5'),(8,4,'Countryman','2.0','2wd','5'),(9,1,'Z4','2.5','4wd','2'),(10,2,'TT','2.0','4wd','3');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `option_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'est','Aliquid odio enim repellat voluptas aut ea. Error sed delectus cumque cum sapiente.'),(2,'tempore','Eaque nam est assumenda omnis molestiae aut non. Id quod voluptatibus deleniti facere. Nisi officiis reiciendis distinctio consequatur unde. Ut est placeat voluptatem qui rerum explicabo qui animi.'),(3,'et','Dolor quod ea perferendis mollitia veritatis. Est dolores quia reiciendis quis deleniti doloremque porro. Aut aut voluptatem dolorum eligendi officiis deserunt repellendus.'),(4,'dolor','Optio rerum corporis cupiditate quo reprehenderit sunt ut et. Neque earum autem molestias. Sit blanditiis accusantium quia voluptates.'),(5,'ut','Quam corrupti et voluptates maxime commodi. Perspiciatis id possimus officia iste enim id ut velit. Temporibus laborum dolore et expedita id.'),(6,'doloremque','Voluptatibus laboriosam eaque error libero numquam. Amet omnis aut non voluptatem commodi molestiae reprehenderit. Necessitatibus aperiam rerum nihil vitae similique officiis suscipit.'),(7,'accusantium','Voluptates recusandae non eveniet. Amet voluptas sed dolorem a minima. Optio ad blanditiis fugiat fuga error rerum nobis.'),(8,'ratione','Sed incidunt quia facilis sint itaque. Quae quo assumenda quae quia rerum voluptas. Provident impedit dolorem debitis qui.'),(9,'laboriosam','Maxime non suscipit doloribus voluptates qui repudiandae. Corrupti ea sapiente qui.'),(10,'et','Odio impedit ipsam odio qui laboriosam provident quisquam dicta. Voluptas ea velit laudantium quae voluptatem cum.');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options_to_model`
--

DROP TABLE IF EXISTS `options_to_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options_to_model` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` smallint unsigned NOT NULL,
  `model_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_option_id` (`option_id`),
  KEY `fk_model_id` (`model_id`),
  CONSTRAINT `fk_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  CONSTRAINT `fk_option_id` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options_to_model`
--

LOCK TABLES `options_to_model` WRITE;
/*!40000 ALTER TABLE `options_to_model` DISABLE KEYS */;
INSERT INTO `options_to_model` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,1,1),(12,2,2),(13,3,3),(14,4,4),(15,5,5),(16,6,6),(17,7,7),(18,8,8),(19,9,9),(20,10,10),(21,1,1),(22,2,2),(23,3,3),(24,4,4),(25,5,5),(26,6,6),(27,7,7),(28,8,8),(29,9,9),(30,10,10);
/*!40000 ALTER TABLE `options_to_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` smallint unsigned DEFAULT NULL,
  `VIN` char(17) DEFAULT NULL,
  `prod_date` date DEFAULT NULL,
  `model_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `fk1_client_id` (`client_id`),
  KEY `fk1_model_id` (`model_id`),
  CONSTRAINT `fk1_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `fk1_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,21,'380','1975-10-20',1),(2,22,'699','2007-03-22',2),(3,23,'808','2006-07-24',3),(4,24,'469','2001-01-03',4),(5,25,'544','1984-06-08',5),(6,26,'584','1996-08-29',6),(7,27,'700','1981-12-17',7),(8,28,'704','1970-11-23',8),(9,NULL,'012','2003-06-10',9),(10,NULL,'172','2018-07-29',10);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 20:44:39
