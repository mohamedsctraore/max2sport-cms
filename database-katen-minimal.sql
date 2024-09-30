-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: archielite_katen
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'yEJPf77VMc2cbnRpnp0EZWgVF6yyZgSP',1,'2024-09-18 23:30:00','2024-09-18 23:30:00','2024-09-18 23:30:00');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-09-19 06:30:00',NULL,1,'2024-09-18 23:30:00','2024-09-18 23:30:00'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-09-19 06:30:00',NULL,1,'2024-09-18 23:30:00','2024-09-18 23:30:00'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-09-19 06:30:00',NULL,1,'2024-09-18 23:30:00','2024-09-18 23:30:00');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Minimalist Living',0,'Eum temporibus dolorum voluptates qui. Minus rerum aut excepturi odio. Vel earum quod molestiae nostrum. Fugit excepturi ipsa sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(2,'Decluttering',0,'Rerum sapiente atque id ex rerum ad recusandae. Enim autem omnis nesciunt. Non aut dolores qui beatae voluptatum. Possimus quis nihil itaque hic tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(3,'Minimalist Wardrobe',0,'Sapiente unde nam corrupti animi itaque eum ipsum. Ipsum aut mollitia consequuntur velit et necessitatibus nihil illum. Quisquam qui nobis autem voluptate laborum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(4,'Mindfulness',0,'Earum et eum aut molestiae. Nostrum molestiae sit velit aspernatur qui soluta et. Officiis adipisci voluptatem aut incidunt omnis. Autem libero et sunt dignissimos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(5,'Sustainable Living',0,'Qui consequuntur rerum quae. Expedita ut sed quidem commodi sint facere. Et nisi vitae quasi omnis ex.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(6,'Digital Minimalism',0,'Similique itaque expedita voluptas qui non hic. Ea itaque aut quia numquam tempora animi possimus. Omnis quo iure sed quo non magni placeat.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(7,'Simple Home Decor',0,'Ut adipisci doloremque doloremque quas qui. Eius est nulla id. Illo culpa sint omnis velit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(8,'Minimalist Travel',0,'Similique hic esse id voluptates. Dolorem aperiam voluptas reprehenderit porro sed atque. Autem nemo harum sint tempora amet qui tempora et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(9,'Self-care',0,'Culpa est est sequi culpa. Inventore quod non similique nisi voluptatem est. Sequi aut odio voluptatem aut quisquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10'),(10,'Personal Growth',0,'Dolorem nesciunt et quo aut facilis dicta. Aperiam voluptas et et repellendus. Iusto eum iusto corrupti facilis neque dolorem necessitatibus. Consectetur excepturi saepe asperiores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:10','2024-09-18 23:30:10');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prof. Collin Bayer MD','ipagac@example.com','1-223-425-7448','8942 Isadore Via\nSouth Edmund, MO 42336','Id eos libero doloremque quae voluptatem quidem.','Rerum repellendus eius dolorem placeat ducimus rerum et. Nostrum distinctio aut totam enim laborum. Aut quibusdam est esse est modi dolore sint. Qui mollitia molestiae sit numquam. Aliquid quia dolorum expedita earum. Eius eum non ex recusandae velit. Et praesentium quaerat velit. Facere quos deleniti neque eos id et cumque. Et rerum quia quibusdam et eius est totam. Numquam rem nihil ducimus.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(2,'Edward Pagac DDS','al.waters@example.org','(650) 966-1621','402 Satterfield Canyon\nBarrowsport, KS 83620','Non explicabo error earum sint.','Laudantium quo consequatur cumque distinctio atque. Repellendus dolor minus cumque optio ut. Voluptas deserunt dolorum nulla. Aperiam fuga dolore dicta. Unde est exercitationem expedita soluta ducimus ratione dolorem. Aut et ea laborum tempora aut in. Qui rem repellat illum ex iste. Debitis possimus omnis eos aut velit. Ipsam culpa consequatur ea blanditiis soluta aut enim libero. Velit eveniet cum incidunt quo et ipsum quia. Nemo corrupti consectetur fuga voluptatem voluptatibus.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(3,'Leon Mayert','angie.walsh@example.net','+12627595230','88680 Streich Land\nLake Addison, LA 55163','Iusto optio occaecati eum quasi ut.','Ratione voluptatem aspernatur quia placeat. Quasi repudiandae neque corrupti ipsam ducimus aperiam. Quaerat voluptas quos doloribus temporibus. Et vel fugit aut rerum iure consequatur. Hic tenetur vel laudantium rem. Ex voluptas sequi ullam dolorem ratione modi. Amet temporibus corporis magni amet qui. Neque minus maxime qui quia. Rerum et iusto voluptatem quia blanditiis. Unde quis quod laborum cumque. Facere culpa amet autem autem illum.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(4,'Helga Beier','zlittle@example.net','520-969-6522','12040 Bartoletti Path\nEast Ellismouth, CA 92059-9864','Nam illum aut illum delectus ratione quia.','Dolorem et quia eaque ea voluptatem. Perspiciatis blanditiis nam qui et. Consequuntur minima autem a cupiditate repudiandae. Libero iste est error voluptas aspernatur. Dicta nemo ea beatae facere autem. Magni consequuntur quae dolorem. Tempore error magni voluptatem doloremque officiis eligendi. Quo et quas voluptatem qui eveniet alias cumque ratione. Et commodi perferendis eligendi fugiat ducimus. Ea repudiandae quis omnis aut consequatur. Quis distinctio earum nam.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(5,'Jarrett Powlowski','shaylee14@example.net','458-912-0568','3962 Beatty Vista\nDarylhaven, LA 43245','Sequi rem magni laudantium libero alias.','Nobis hic quam et ut nulla. Totam qui deserunt earum nihil voluptate eum. Pariatur a sunt quisquam autem. Velit eos aliquam nihil nobis et. Rerum itaque consequatur quaerat vel dicta. Quam atque est accusamus neque perspiciatis. Recusandae sed quasi perferendis recusandae. Rerum sed consequatur excepturi velit aspernatur vero asperiores. Vel nulla labore expedita. Harum numquam maxime nihil asperiores magni.',NULL,'read','2024-09-18 23:30:05','2024-09-18 23:30:05'),(6,'Mr. Josue Jones','herzog.lionel@example.com','+16629598545','25744 Walsh Haven\nLake Xavierview, IA 86611','Possimus rem fugiat labore quibusdam temporibus.','Repellendus odit voluptatem voluptates quas. Deleniti autem distinctio repellat placeat perferendis modi debitis iste. Vel id vel distinctio odit nostrum. Sed ab officia quisquam voluptatem sed culpa non. Qui ut deleniti voluptatum eum voluptatibus ut praesentium. Ut sed atque aliquid quisquam fugit. Id et sequi in quos sit porro earum.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(7,'Myrtice Upton','mraz.micheal@example.com','334.221.0629','28884 Wolff Common\nSouth Macychester, VT 78837-1809','Totam nisi accusamus magni.','Rerum impedit expedita praesentium veritatis vero. Accusantium sunt qui consequatur quaerat perspiciatis quisquam. Possimus vel dicta et aut in labore. Culpa quia fugit quo molestiae. Quia aut quas et sed praesentium reiciendis amet quia. Ipsam quod quisquam optio earum aut et accusantium. Autem commodi iusto id ut quasi accusamus ut sunt. Aut perferendis molestiae ea perspiciatis. Ex nisi ut aut in. Atque at nobis debitis qui. Adipisci iure veniam dicta architecto.',NULL,'read','2024-09-18 23:30:05','2024-09-18 23:30:05'),(8,'Wilber Schmitt DVM','cstark@example.org','(540) 675-4085','823 Swaniawski Wall\nPort Brennan, GA 63728','Nemo fugit ad et itaque sit dolore.','Omnis velit quos vel aspernatur. Ut itaque vero vero. Ullam nesciunt et provident dolorum repudiandae. Dolores consectetur sequi asperiores quia aut. Odio facere fugit occaecati aspernatur sint dignissimos. Itaque natus consequuntur accusantium possimus qui sed. Enim recusandae voluptas dolorem ratione et. At consequuntur voluptas sequi voluptatem enim eos. Aliquid asperiores mollitia accusamus ut modi accusantium.',NULL,'read','2024-09-18 23:30:05','2024-09-18 23:30:05'),(9,'Margaretta Brakus','zbernhard@example.com','1-351-535-8934','1364 Kaya Plains\nWest Pietro, NC 71102','Omnis repellat ut culpa enim et.','Magni quaerat voluptate nulla incidunt quis qui tenetur. Quis eum ut voluptates neque pariatur ut qui. Non sit quos sit sunt et. Et rerum iure et iure quia soluta. Amet iure veritatis reiciendis consequuntur. Nulla consequatur aperiam qui quasi sit totam voluptates. Laborum illum quia aut nam eveniet. Est fuga odit aut reprehenderit.',NULL,'unread','2024-09-18 23:30:05','2024-09-18 23:30:05'),(10,'Rhea O\'Hara','osborne.hettinger@example.com','+1 (731) 988-7194','2507 Mertz Coves Apt. 868\nNorth Tyrel, IN 09404-4251','Unde autem non maxime qui.','Nobis adipisci nihil corrupti laborum. Autem tempora asperiores corporis quos sed. Rem est deserunt maxime quas tenetur. Aut quam doloribus et esse sequi delectus eum. Itaque libero harum labore dolores architecto et quo. Error harum deleniti nisi esse veniam eius. Nam nam veritatis molestiae ducimus repudiandae. Eius cupiditate qui deleniti laborum labore ipsa. Porro culpa assumenda eius est. Laborum quibusdam accusantium tempore nobis placeat nihil est.',NULL,'read','2024-09-18 23:30:05','2024-09-18 23:30:05');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fob_comments`
--

DROP TABLE IF EXISTS `fob_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fob_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reply_to` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fob_comments_author_type_author_id_index` (`author_type`,`author_id`),
  KEY `fob_comments_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `fob_comments_reply_to_index` (`reply_to`),
  KEY `fob_comments_reference_url_index` (`reference_url`),
  KEY `fob_comments_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fob_comments`
--

LOCK TABLES `fob_comments` WRITE;
/*!40000 ALTER TABLE `fob_comments` DISABLE KEYS */;
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',8,'http://localhost','Daisha Huel','gbode@johns.org','https://friendsofbotble.com','This is really helpful, thank you!','approved','254.207.33.177','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/3.1)','2024-09-04 18:48:53','2024-09-18 23:30:15'),(2,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',8,'http://localhost','Jevon Mueller PhD','leonie.denesik@yahoo.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','78.66.60.245','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_6 rv:2.0) Gecko/20210612 Firefox/37.0','2024-09-09 23:57:14','2024-09-18 23:30:15'),(3,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',4,'http://localhost','Ms. Martine Rath I','botsford.kaylah@gottlieb.info','https://friendsofbotble.com','Wow, I never knew about this before!','approved','144.156.253.137','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_1 rv:5.0; en-US) AppleWebKit/534.49.7 (KHTML, like Gecko) Version/5.0.2 Safari/534.49.7','2024-09-09 20:42:18','2024-09-18 23:30:15'),(4,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',1,'http://localhost','Evalyn Moore','abbott.daphne@kshlerin.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','197.151.105.56','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2 rv:5.0; en-US) AppleWebKit/532.46.7 (KHTML, like Gecko) Version/5.0.4 Safari/532.46.7','2024-09-04 06:11:54','2024-09-18 23:30:15'),(5,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',4,'http://localhost','Eloisa Corkery III','miller.orval@gmail.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','142.90.229.53','Opera/9.93 (Windows NT 6.0; nl-NL) Presto/2.8.166 Version/10.00','2024-09-06 20:39:34','2024-09-18 23:30:15'),(6,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',5,'http://localhost','Prof. Buck Lesch','bpadberg@hotmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','201.35.146.222','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/536.0 (KHTML, like Gecko) Version/15.0 EdgiOS/83.01141.82 Mobile/15E148 Safari/536.0','2024-08-24 03:25:24','2024-09-18 23:30:15'),(7,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Eve Cummerata','daniella.gerhold@gmail.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','134.99.23.43','Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/535.23.5 (KHTML, like Gecko) Version/5.1 Safari/535.23.5','2024-09-17 14:44:44','2024-09-18 23:30:15'),(8,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',9,'http://localhost','Natasha Koelpin','loren93@brakus.info','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','146.126.216.64','Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/535.33.5 (KHTML, like Gecko) Version/4.0.1 Safari/535.33.5','2024-08-20 14:39:04','2024-09-18 23:30:15'),(9,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',4,'http://localhost','Trycia Bode Jr.','howell.murphy@maggio.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','98.78.114.251','Mozilla/5.0 (Windows NT 5.1; sl-SI; rv:1.9.1.20) Gecko/20131001 Firefox/37.0','2024-09-01 21:46:05','2024-09-18 23:30:15'),(10,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',1,'http://localhost','Madelynn Quigley','bryon.wintheiser@hotmail.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','250.60.101.7','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/533.0 (KHTML, like Gecko) Chrome/85.0.4689.59 Safari/533.0 Edg/85.01026.61','2024-08-24 06:01:29','2024-09-18 23:30:15'),(11,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',5,'http://localhost','Ursula Jacobson I','terrance60@yahoo.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','189.214.251.83','Opera/9.82 (X11; Linux x86_64; nl-NL) Presto/2.9.222 Version/10.00','2024-09-12 21:57:39','2024-09-18 23:30:15'),(12,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',8,'http://localhost','Alexie Adams','maryjane58@gmail.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','242.9.114.53','Mozilla/5.0 (compatible; MSIE 6.0; Windows CE; Trident/3.0)','2024-08-30 18:22:11','2024-09-18 23:30:15'),(13,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',10,'http://localhost','Josie Schamberger II','lschmeler@gmail.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','33.62.64.84','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5322 (KHTML, like Gecko) Chrome/40.0.897.0 Mobile Safari/5322','2024-08-27 12:09:46','2024-09-18 23:30:15'),(14,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',8,'http://localhost','Prof. Emilio Block IV','oreilly.carter@price.org','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','156.228.159.227','Opera/8.45 (Windows NT 6.1; nl-NL) Presto/2.10.294 Version/12.00','2024-08-29 00:35:47','2024-09-18 23:30:15'),(15,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',2,'http://localhost','Bill VonRueden','lhahn@hotmail.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','57.5.141.216','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.01; Trident/5.1)','2024-09-12 11:46:21','2024-09-18 23:30:15'),(16,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Prof. Lisette Terry','carlie68@swaniawski.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','249.123.104.214','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.880.0 Mobile Safari/5331','2024-08-31 14:41:57','2024-09-18 23:30:15'),(17,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Scottie Wyman','qstehr@gislason.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','146.119.187.95','Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/534.48.6 (KHTML, like Gecko) Version/5.0.5 Safari/534.48.6','2024-08-29 03:35:52','2024-09-18 23:30:15'),(18,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',1,'http://localhost','Coty Muller','rippin.kelly@kiehn.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','32.44.1.104','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.2; Trident/3.1)','2024-09-02 09:25:32','2024-09-18 23:30:15'),(19,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',1,'http://localhost','Prof. Jonathon Goodwin','hal52@hotmail.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','153.244.4.134','Mozilla/5.0 (compatible; MSIE 6.0; Windows CE; Trident/4.1)','2024-08-27 23:06:50','2024-09-18 23:30:15'),(20,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Dr. Milo Stokes','dmurray@hotmail.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','7.34.127.55','Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/531.0 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01036.87 Mobile/15E148 Safari/531.0','2024-09-16 15:12:48','2024-09-18 23:30:15'),(21,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',4,'http://localhost','Monserrat Hansen II','yrath@gmail.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','191.135.26.225','Mozilla/5.0 (Windows CE; en-US; rv:1.9.2.20) Gecko/20220701 Firefox/36.0','2024-09-07 05:06:52','2024-09-18 23:30:15'),(22,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Maryse Kautzer','zboncak.deja@friesen.biz','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','128.199.82.139','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_0 rv:4.0) Gecko/20240415 Firefox/36.0','2024-08-19 15:02:48','2024-09-18 23:30:15'),(23,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',1,'http://localhost','Mr. Isadore Schinner PhD','lilyan73@wuckert.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','25.154.65.93','Mozilla/5.0 (Windows NT 5.1; nl-NL; rv:1.9.0.20) Gecko/20231203 Firefox/35.0','2024-09-17 01:17:20','2024-09-18 23:30:15'),(24,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Javier O\'Kon','konopelski.westley@rohan.org','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','252.86.181.246','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8 rv:6.0) Gecko/20111211 Firefox/35.0','2024-08-24 07:24:57','2024-09-18 23:30:15'),(25,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',10,'http://localhost','Ryley Schowalter DVM','marisol45@gmail.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','53.199.53.150','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/4.0)','2024-09-08 05:10:29','2024-09-18 23:30:15'),(26,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',6,'http://localhost','Elena Keeling','micheal.bauch@yahoo.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','240.196.140.106','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/40.0.868.0 Mobile Safari/5350','2024-08-28 08:28:16','2024-09-18 23:30:15'),(27,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',3,'http://localhost','Parker Bernier','jschultz@hotmail.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','56.94.85.57','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_3 rv:5.0) Gecko/20101010 Firefox/37.0','2024-08-28 06:17:11','2024-09-18 23:30:15'),(28,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',3,'http://localhost','Johan Hane','antonetta.fadel@gmail.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','104.176.28.92','Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/535.0 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01098.92 Mobile/15E148 Safari/535.0','2024-09-06 16:17:37','2024-09-18 23:30:15'),(29,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',4,'http://localhost','Jeanne Buckridge','lonzo73@lockman.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','113.99.237.29','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20160619 Firefox/36.0','2024-09-16 21:40:58','2024-09-18 23:30:15'),(30,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',7,'http://localhost','Georgiana Medhurst PhD','welch.lyda@hammes.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','219.185.11.202','Opera/9.64 (Windows NT 6.1; en-US) Presto/2.8.237 Version/11.00','2024-09-09 22:31:38','2024-09-18 23:30:15'),(31,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',6,'http://localhost','Clyde Wintheiser IV','pkunde@gmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','209.35.244.191','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/5.0)','2024-08-19 23:21:35','2024-09-18 23:30:15'),(32,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',6,'http://localhost','Pearl Berge','vgislason@kerluke.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','127.190.212.236','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5320 (KHTML, like Gecko) Chrome/37.0.817.0 Mobile Safari/5320','2024-09-04 12:39:53','2024-09-18 23:30:15'),(33,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',5,'http://localhost','Drew Donnelly','wilford.moore@roob.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','7.165.85.155','Opera/8.71 (Windows 95; sl-SI) Presto/2.11.205 Version/11.00','2024-09-02 02:40:32','2024-09-18 23:30:15'),(34,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',4,'http://localhost','Donnell Denesik','araynor@reichel.org','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','218.63.247.129','Opera/9.52 (X11; Linux i686; en-US) Presto/2.9.171 Version/12.00','2024-09-17 05:45:12','2024-09-18 23:30:15'),(35,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Deonte Strosin','carroll.rhea@gmail.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','21.198.170.43','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.836.0 Mobile Safari/5310','2024-08-30 03:51:57','2024-09-18 23:30:15'),(36,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Eunice Harvey','skyla.gislason@yahoo.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','67.116.100.9','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/5.0)','2024-08-21 18:22:44','2024-09-18 23:30:15'),(37,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',5,'http://localhost','Danika O\'Keefe','coralie.watsica@yahoo.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','189.129.19.13','Opera/9.69 (X11; Linux i686; en-US) Presto/2.8.346 Version/11.00','2024-08-28 15:18:22','2024-09-18 23:30:15'),(38,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',3,'http://localhost','Velva Bednar','bbogan@hotmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','54.114.136.7','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_8 rv:4.0) Gecko/20190624 Firefox/35.0','2024-09-05 01:07:13','2024-09-18 23:30:15'),(39,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',2,'http://localhost','Kellie Lockman','fletcher.marquardt@mann.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','59.120.152.250','Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; nl-NL) AppleWebKit/531.43.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6531.43.4','2024-09-06 20:08:41','2024-09-18 23:30:15'),(40,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Nyah Zemlak','cecile.wiza@cruickshank.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','119.68.203.94','Mozilla/5.0 (X11; Linux i686) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/96.0.4488.56 Safari/533.1 EdgA/96.01138.44','2024-09-12 08:05:34','2024-09-18 23:30:15'),(41,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Dr. Christophe Bradtke MD','towne.guy@gmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','138.240.97.64','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_9) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/87.0.4258.70 Safari/531.1 Edg/87.01132.54','2024-09-02 09:04:26','2024-09-18 23:30:15'),(42,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Mr. Royal Schowalter','rene.bogisich@hane.org','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','24.210.93.83','Opera/9.16 (Windows NT 6.0; en-US) Presto/2.12.252 Version/10.00','2024-09-04 03:37:51','2024-09-18 23:30:15'),(43,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Anastacio Weissnat','brady51@yahoo.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','66.75.113.34','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5330 (KHTML, like Gecko) Chrome/39.0.838.0 Mobile Safari/5330','2024-09-13 16:43:45','2024-09-18 23:30:15'),(44,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',10,'http://localhost','Dr. Dillan Donnelly V','bauch.demond@gmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','45.6.179.113','Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X; sl-SI) AppleWebKit/532.45.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B118 Safari/6532.45.3','2024-09-17 05:04:38','2024-09-18 23:30:15'),(45,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',7,'http://localhost','Monte Ankunding III','shaylee.ondricka@yahoo.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','47.254.155.143','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident/4.0)','2024-08-21 07:22:54','2024-09-18 23:30:15'),(46,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',2,'http://localhost','Tremaine Miller','grant.amanda@hotmail.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','167.127.243.228','Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Win 9x 4.90; Trident/3.0)','2024-09-16 15:06:09','2024-09-18 23:30:15'),(47,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',1,'http://localhost','Cleo Block','block.isidro@bogisich.org','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','129.249.210.25','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/80.0.4357.25 Safari/537.1 Edg/80.01013.68','2024-09-03 06:22:01','2024-09-18 23:30:15');
/*!40000 ALTER TABLE `fob_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Ducimus nihil voluptas aperiam repellat quod unde. Mollitia eligendi ipsum consectetur quisquam soluta earum.',0,0,'galleries/1.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(2,'New Day','Sit fugit veniam accusantium numquam beatae quis illum. Sint pariatur sed ea esse. Minima incidunt dolorum blanditiis.',0,0,'galleries/2.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(3,'Happy Day','Saepe aut earum iure dolorum sunt. Possimus quis voluptatum sed deleniti omnis qui.',0,0,'galleries/3.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(4,'Nature','Saepe debitis maiores optio ex commodi est et. Aut enim aut ab aut ut. Voluptas consectetur cumque sit enim omnis facere iusto.',0,0,'galleries/4.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(5,'Morning','Eos dolorem ab autem beatae doloribus molestiae. Quod quidem laudantium minus. Eaque quae nulla omnis eveniet.',0,0,'galleries/5.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(6,'Sunset','Eum vel debitis laborum. Consectetur consequatur aliquam unde odit et. Et id dolor eum natus quibusdam odit.',0,0,'galleries/6.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(7,'Ocean Views','Ex eos doloribus omnis. Tempora doloremque quia quibusdam non. Velit accusamus in fuga sapiente et velit enim.',0,0,'galleries/7.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15'),(8,'Adventure Time','Aut beatae nihil nihil impedit voluptas sed ullam. In et molestias voluptates. Molestias dolorem dolorem nam dicta veritatis cumque rerum.',0,0,'galleries/8.jpg',1,'published','2024-09-18 23:30:15','2024-09-18 23:30:15');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(7,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15'),(8,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:15','2024-09-18 23:30:15');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','da3ddd8b1f87926a4c2cbef5f4e43b7d',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','584fd9c1f5e02f84ac8f65d5e9ae4bc0',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'about-us','about-us',1,'image/jpeg',117735,'general/about-us.jpg','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(2,0,'favicon','favicon',1,'image/png',4385,'general/favicon.png','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(3,0,'hero','hero',1,'image/jpeg',345815,'general/hero.jpg','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(4,0,'logo-alt','logo-alt',1,'image/png',1439,'general/logo-alt.png','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(5,0,'logo-dark','logo-dark',1,'image/png',1530,'general/logo-dark.png','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(6,0,'logo','logo',1,'image/png',2246,'general/logo.png','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(7,0,'newsletter-popup','newsletter-popup',1,'image/jpeg',85995,'general/newsletter-popup.jpg','[]','2024-09-18 23:29:53','2024-09-18 23:29:53',NULL,'public'),(8,0,'preloader','preloader',1,'image/gif',189758,'general/preloader.gif','[]','2024-09-18 23:29:55','2024-09-18 23:29:55',NULL,'public'),(9,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-09-18 23:30:00','2024-09-18 23:30:00',NULL,'public'),(10,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(11,0,'11','11',2,'image/jpeg',9803,'members/11.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(12,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(13,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(14,0,'3-1','3-1',2,'image/png',9803,'members/3-1.png','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(15,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(16,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(17,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-09-18 23:30:01','2024-09-18 23:30:01',NULL,'public'),(18,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-09-18 23:30:02','2024-09-18 23:30:02',NULL,'public'),(19,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-09-18 23:30:02','2024-09-18 23:30:02',NULL,'public'),(20,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-09-18 23:30:02','2024-09-18 23:30:02',NULL,'public'),(21,0,'1','1',3,'image/jpeg',33268,'news/1.jpg','[]','2024-09-18 23:30:06','2024-09-18 23:30:06',NULL,'public'),(22,0,'10','10',3,'image/jpeg',33268,'news/10.jpg','[]','2024-09-18 23:30:06','2024-09-18 23:30:06',NULL,'public'),(23,0,'2','2',3,'image/jpeg',33268,'news/2.jpg','[]','2024-09-18 23:30:07','2024-09-18 23:30:07',NULL,'public'),(24,0,'3','3',3,'image/jpeg',33268,'news/3.jpg','[]','2024-09-18 23:30:07','2024-09-18 23:30:07',NULL,'public'),(25,0,'4','4',3,'image/jpeg',33268,'news/4.jpg','[]','2024-09-18 23:30:08','2024-09-18 23:30:08',NULL,'public'),(26,0,'5','5',3,'image/jpeg',33268,'news/5.jpg','[]','2024-09-18 23:30:08','2024-09-18 23:30:08',NULL,'public'),(27,0,'6','6',3,'image/jpeg',33268,'news/6.jpg','[]','2024-09-18 23:30:08','2024-09-18 23:30:08',NULL,'public'),(28,0,'7','7',3,'image/jpeg',33268,'news/7.jpg','[]','2024-09-18 23:30:09','2024-09-18 23:30:09',NULL,'public'),(29,0,'8','8',3,'image/jpeg',33268,'news/8.jpg','[]','2024-09-18 23:30:09','2024-09-18 23:30:09',NULL,'public'),(30,0,'9','9',3,'image/jpeg',33268,'news/9.jpg','[]','2024-09-18 23:30:10','2024-09-18 23:30:10',NULL,'public'),(31,0,'cover-image','cover-image',3,'image/jpeg',33268,'news/cover-image.jpg','[]','2024-09-18 23:30:10','2024-09-18 23:30:10',NULL,'public'),(32,0,'map-bg','map-bg',4,'image/png',238010,'backgrounds/map-bg.png','[]','2024-09-18 23:30:11','2024-09-18 23:30:11',NULL,'public'),(33,0,'1','1',5,'image/jpeg',33268,'galleries/1.jpg','[]','2024-09-18 23:30:12','2024-09-18 23:30:12',NULL,'public'),(34,0,'2','2',5,'image/jpeg',33268,'galleries/2.jpg','[]','2024-09-18 23:30:12','2024-09-18 23:30:12',NULL,'public'),(35,0,'3','3',5,'image/jpeg',33268,'galleries/3.jpg','[]','2024-09-18 23:30:13','2024-09-18 23:30:13',NULL,'public'),(36,0,'4','4',5,'image/jpeg',33268,'galleries/4.jpg','[]','2024-09-18 23:30:13','2024-09-18 23:30:13',NULL,'public'),(37,0,'5','5',5,'image/jpeg',33268,'galleries/5.jpg','[]','2024-09-18 23:30:13','2024-09-18 23:30:13',NULL,'public'),(38,0,'6','6',5,'image/jpeg',33268,'galleries/6.jpg','[]','2024-09-18 23:30:14','2024-09-18 23:30:14',NULL,'public'),(39,0,'7','7',5,'image/jpeg',33268,'galleries/7.jpg','[]','2024-09-18 23:30:14','2024-09-18 23:30:14',NULL,'public'),(40,0,'8','8',5,'image/jpeg',33268,'galleries/8.jpg','[]','2024-09-18 23:30:15','2024-09-18 23:30:15',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2024-09-18 23:29:53','2024-09-18 23:29:53',NULL),(2,0,'members',NULL,'members',0,'2024-09-18 23:30:00','2024-09-18 23:30:00',NULL),(3,0,'news',NULL,'news',0,'2024-09-18 23:30:06','2024-09-18 23:30:06',NULL),(4,0,'backgrounds',NULL,'backgrounds',0,'2024-09-18 23:30:11','2024-09-18 23:30:11',NULL),(5,0,'galleries',NULL,'galleries',0,'2024-09-18 23:30:12','2024-09-18 23:30:12',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','Hatter, with an M, such as.',NULL,'member@archielite.com','$2y$12$fF7SGZYV.mQm7rASMb85Eu9tH0yyuv10imhGkkGOF7Tx//QV5q5v6',9,'1970-03-17','479.922.6257','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:02','2024-09-18 23:30:02','published'),(2,'Sofia','Dickinson','Hi, I’m Sofia Dickinson, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bella35@hotmail.com','$2y$12$N7CQ8ZxBRpg8Tudv3H00TedDuOju5ruXS/7uRGN24uW/8Mye5EQLa',10,'2011-01-09','667.683.4620','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:03','2024-09-18 23:30:03','published'),(3,'Jeffrey','Pollich','Hi, I’m Jeffrey Pollich, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'elta76@yahoo.com','$2y$12$LtH3A5AGFbh25WD7WGD8wOdY4D6ERWHms4qFp5/Ut3p0WiLnW9s3G',11,'1978-01-03','757.896.0230','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:03','2024-09-18 23:30:03','published'),(4,'Lea','Runte','Hi, I’m Lea Runte, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'salma39@hotmail.com','$2y$12$SMGxgOgWpLsdirYN4675.uKncm3j5uOTnwnvGKeKQZGtMcM3ESbwS',12,'1993-02-11','631-705-3123','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:04','2024-09-18 23:30:04','published'),(5,'Adeline','Heller','Hi, I’m Adeline Heller, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'rhea.glover@gmail.com','$2y$12$IA44aoqOHkRUJLR2WhPFwOfZcD7cIjVv/KVfw5cc/0RhMEs/VUKl6',13,'2011-04-20','240-257-3838','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:04','2024-09-18 23:30:04','published'),(6,'Leanne','Kihn','Hi, I’m Leanne Kihn, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'raheem.dooley@mccullough.com','$2y$12$IdwWbAP1RdwFIxu3WXPBz..c2ImYOzQHVAnQ0Af5Gw.rtCa/0RhSW',14,'2014-10-04','(213) 347-0670','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:05','2024-09-18 23:30:05','published'),(7,'Golda','Jacobi','Hi, I’m Golda Jacobi, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'bogan.mercedes@hamill.biz','$2y$12$yguu45JVRrzTZQUjwBuDm.6EXqV9AizW64eXISWABUpkRvEDbJJ.a',15,'2019-02-21','442-862-3094','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:05','2024-09-18 23:30:05','published'),(8,'Montana','Hauck','Hi, I’m Montana Hauck, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'milford16@yahoo.com','$2y$12$5tKcLvW9ZPOOZ2oUh09/9.TFB6pSnBJQzsKY2QAT/941wUkElz6GK',16,'2008-02-05','+1 (785) 545-8041','2024-09-19 06:30:02',NULL,NULL,'2024-09-18 23:30:05','2024-09-18 23:30:05','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-18 23:30:06','2024-09-18 23:30:06');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(2,1,1,NULL,NULL,'https://katen.archielite.com',NULL,0,'Magazine',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(3,1,1,NULL,NULL,'https://katen-personal.archielite.com',NULL,0,'Personal',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(4,1,1,NULL,NULL,'https://katen-personal-alt.archielite.com',NULL,0,'Personal Alt',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(5,1,1,NULL,NULL,'https://katen-minimal.archielite.com',NULL,0,'Minimal',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(6,1,1,NULL,NULL,'https://katen-classic.archielite.com',NULL,0,'Classic',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(7,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(8,1,0,NULL,NULL,'#',NULL,0,'Blog',NULL,'_self',1,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(9,1,8,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(10,1,8,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(11,1,8,2,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single (Has Cover)',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(12,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(13,1,12,6,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(14,1,12,7,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(15,1,12,5,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(16,1,12,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06'),(17,1,12,3,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact Us',NULL,'_self',0,'2024-09-18 23:30:06','2024-09-18 23:30:06');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-18 23:30:06','2024-09-18 23:30:06');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-09-18 23:30:02','2024-09-18 23:30:02'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-09-18 23:30:03','2024-09-18 23:30:03'),(3,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-09-18 23:30:03','2024-09-18 23:30:03'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-09-18 23:30:04','2024-09-18 23:30:04'),(5,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-09-18 23:30:04','2024-09-18 23:30:04'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-09-18 23:30:05','2024-09-18 23:30:05'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-09-18 23:30:05','2024-09-18 23:30:05'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-09-18 23:30:05','2024-09-18 23:30:05'),(9,'cover_image','[\"news\\/cover-image.jpg\"]',2,'Botble\\Blog\\Models\\Post','2024-09-18 23:30:11','2024-09-18 23:30:11');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2015_08_15_122343_create_notes_table',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_03_032336_create_languages_table',1),(14,'2016_10_05_074239_create_setting_table',1),(15,'2016_10_07_193005_create_translations_table',1),(16,'2016_10_13_150201_create_galleries_table',1),(17,'2016_11_28_032840_create_dashboard_widget_tables',1),(18,'2016_12_16_084601_create_widgets_table',1),(19,'2017_05_09_070343_create_media_tables',1),(20,'2017_10_04_140938_create_member_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2019_01_05_053554_create_jobs_table',1),(24,'2019_08_19_000000_create_failed_jobs_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_02_16_092633_remove_default_value_for_author_type',1),(28,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(29,'2021_12_02_035301_add_ads_translations_table',1),(30,'2021_12_03_030600_create_blog_translations',1),(31,'2021_12_03_075608_create_page_translations',1),(32,'2021_12_03_082953_create_gallery_translations',1),(33,'2022_04_19_113923_add_index_to_table_posts',1),(34,'2022_04_20_100851_add_index_to_media_table',1),(35,'2022_04_20_101046_add_index_to_menu_table',1),(36,'2022_04_30_034048_create_gallery_meta_translations_table',1),(37,'2022_07_10_034813_move_lang_folder_to_root',1),(38,'2022_08_04_051940_add_missing_column_expires_at',1),(39,'2022_09_01_000001_create_admin_notifications_tables',1),(40,'2022_10_14_024629_drop_column_is_featured',1),(41,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(42,'2022_12_02_093615_update_slug_index_columns',1),(43,'2023_01_30_024431_add_alt_to_media_table',1),(44,'2023_02_16_042611_drop_table_password_resets',1),(45,'2023_04_17_062645_add_open_in_new_tab',1),(46,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(47,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(48,'2023_07_06_011444_create_slug_translations_table',1),(49,'2023_08_11_060908_create_announcements_table',1),(50,'2023_08_21_090810_make_page_content_nullable',1),(51,'2023_08_29_074620_make_column_author_id_nullable',1),(52,'2023_08_29_075308_make_column_user_id_nullable',1),(53,'2023_09_14_021936_update_index_for_slugs_table',1),(54,'2023_09_14_022423_add_index_for_language_table',1),(55,'2023_10_16_075332_add_status_column',1),(56,'2023_11_07_023805_add_tablet_mobile_image',1),(57,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(58,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(59,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(60,'2023_12_12_105220_drop_translations_table',1),(61,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(62,'2024_01_16_050056_create_comments_table',1),(63,'2024_03_13_042350_migrate_newsletter_data',1),(64,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(65,'2024_03_25_000001_update_captcha_settings',1),(66,'2024_03_25_000001_update_captcha_settings_for_contact',1),(67,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(68,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(69,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(70,'2024_04_19_063914_create_custom_fields_table',1),(71,'2024_04_27_100730_improve_analytics_setting',1),(72,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(73,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(74,'2024_07_12_100000_change_random_hash_for_media',1),(75,'2024_07_30_091615_fix_order_column_in_categories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','',1,NULL,'homepage-alt',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(2,'Blog','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(3,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" title=\"Send Message\" quantity=\"3\" title_1=\"Phone\" icon_1=\"ti ti-phone\" description_1=\"+1-202-555-0135\" url_1=\"tel:+1-202-555-0135\" open_in_new_tab_1=\"no\" title_2=\"E-Mail\" description_2=\"hello@example.com\" url_2=\"mailto:hello@example.com\" open_in_new_tab_2=\"yes\" icon_2=\"ti ti-mail\" title_3=\"Location\" description_3=\"California, USA\" open_in_new_tab_3=\"yes\" icon_3=\"ti ti-map\"][/contact-form]',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(4,'About Us','<div class=\"page-content bordered rounded padding-30\">\n    <img src=\"http://localhost/storage/general/about-us.jpg\" alt=\"Katen Doe\" class=\"rounded mb-4\">\n    <p>Hello, I’m a content writer who is fascinated by content fashion, celebrity and lifestyle. She helps clients bring the right content to the right people.</p>\n\n    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\n\n    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\n\n    <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\n</div>\n',1,NULL,'default',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(5,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(6,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05'),(7,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:05','2024-09-18 23:30:05');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(5,2),(8,2),(1,3),(5,3),(10,4),(5,4),(3,5),(4,5),(4,6),(5,6),(5,7),(3,7),(8,8),(10,8),(6,9),(7,9),(6,10),(1,10);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(5,1),(10,1),(5,2),(2,2),(10,2),(3,3),(2,3),(1,3),(10,4),(5,4),(7,5),(9,5),(3,5),(9,6),(10,6),(4,6),(1,7),(4,7),(2,7),(3,8),(8,8),(9,8),(1,9),(5,9),(3,10),(9,10);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Embracing Simplicity: My Journey to Minimalist Living','Discover how I simplified my life and found greater joy through minimalism, one step at a time.','<div class=\"featured-image\">\n    <img src=\"/storage/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/10.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',7,'Botble\\Member\\Models\\Member',1,'news/1.jpg',1836,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(2,'Minimalism in Everyday Life: Small Changes, Big Impact','Explore practical tips and strategies for integrating minimalism into your daily routine and experiencing its transformative effects.','<div class=\"featured-image\">\n    <img src=\"/storage/news/6.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/7.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'news/2.jpg',2462,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(3,'The Art of Decluttering: Finding Peace in Minimalism','Learn how decluttering your physical and mental space can lead to a more serene and fulfilling life, free from excess.','<div class=\"featured-image\">\n    <img src=\"/storage/news/6.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/8.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/8.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',8,'Botble\\Member\\Models\\Member',1,'news/3.jpg',261,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(4,'Minimalist Wardrobe Essentials: Building a Capsule Closet','Uncover the key pieces and timeless styles that form the foundation of a minimalist wardrobe, allowing for effortless elegance every day.','<div class=\"featured-image\">\n    <img src=\"/storage/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/4.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/6.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',3,'Botble\\Member\\Models\\Member',1,'news/4.jpg',1556,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(5,'Mindful Consumption: Navigating Minimalism in a Consumerist World','Delve into the principles of mindful consumption and discover how embracing minimalism can foster a healthier relationship with material possessions.','<div class=\"featured-image\">\n    <img src=\"/storage/news/7.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/8.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/10.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',1,'Botble\\Member\\Models\\Member',1,'news/5.jpg',1939,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(6,'Minimalist Home Design: Creating Serenity in Small Spaces','Explore minimalist home decor ideas and space-saving solutions to cultivate a tranquil living environment that nurtures simplicity and harmony.','<div class=\"featured-image\">\n    <img src=\"/storage/news/10.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/3.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/6.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',5,'Botble\\Member\\Models\\Member',1,'news/6.jpg',1451,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(7,'Minimalism and Mental Health: Finding Clarity Amidst Chaos','Discover the profound impact of minimalist practices on mental well-being, as we explore how simplifying life can lead to greater clarity and inner peace.','<div class=\"featured-image\">\n    <img src=\"/storage/news/6.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/4.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',3,'Botble\\Member\\Models\\Member',1,'news/7.jpg',1133,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(8,'Digital Minimalism: Streamlining Your Tech Life for Greater Productivity','Learn how to minimize digital clutter and distractions, optimizing your use of technology to enhance focus, creativity, and productivity.','<div class=\"featured-image\">\n    <img src=\"/storage/news/10.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/1.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/1.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'news/8.jpg',412,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(9,'Minimalist Travel: Embracing Experiences Over Possessions','Embark on a journey of minimalist travel and discover the joys of exploring the world with only the essentials, prioritizing meaningful experiences over material possessions.','<div class=\"featured-image\">\n    <img src=\"/storage/news/2.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/5.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/3.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',7,'Botble\\Member\\Models\\Member',1,'news/9.jpg',1974,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11'),(10,'Minimalism and Mindfulness: Cultivating Presence in a Busy World','Explore the intersection of minimalism and mindfulness, and learn how embracing simplicity can facilitate a deeper connection to the present moment and a more fulfilling life.','<div class=\"featured-image\">\n    <img src=\"/storage/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/5.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/4.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',5,'Botble\\Member\\Models\\Member',1,'news/10.jpg',1680,NULL,'2024-09-18 23:30:11','2024-09-18 23:30:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Page\\Models\\Page',1,NULL,'template','homepage','homepage-alt','2024-09-18 23:30:05','2024-09-18 23:30:05');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-18 23:30:00','2024-09-18 23:30:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','257c235c60d00b0a9379f2e12a032a98',NULL,'2024-09-18 23:30:05'),(2,'api_enabled','0',NULL,'2024-09-18 23:30:05'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-09-18 23:30:05'),(4,'theme','katen',NULL,'2024-09-18 23:30:05'),(5,'show_admin_bar','1',NULL,'2024-09-18 23:30:05'),(6,'announcement_max_width','1140',NULL,'2024-09-18 23:30:05'),(7,'announcement_text_color','#000000',NULL,'2024-09-18 23:30:05'),(8,'announcement_background_color','#fde2da',NULL,'2024-09-18 23:30:05'),(9,'announcement_text_alignment','start',NULL,'2024-09-18 23:30:05'),(10,'announcement_dismissible','1',NULL,'2024-09-18 23:30:05'),(11,'announcement_font_size','1',NULL,'2024-09-18 23:30:05'),(12,'language_hide_default','1',NULL,'2024-09-18 23:30:05'),(13,'language_switcher_display','dropdown',NULL,'2024-09-18 23:30:05'),(14,'language_display','all',NULL,'2024-09-18 23:30:05'),(15,'language_hide_languages','[]',NULL,'2024-09-18 23:30:05'),(16,'theme-katen-site_title','Katen - Minimal Blog & Magazine',NULL,NULL),(17,'theme-katen-seo_description','Katen is a modern, clean, and professional Laravel script suitable for a minimal blog and magazine website.',NULL,NULL),(18,'theme-katen-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,NULL),(19,'theme-katen-favicon','general/favicon.png',NULL,NULL),(20,'theme-katen-logo','general/logo.png',NULL,NULL),(21,'theme-katen-logo_dark','general/logo-dark.png',NULL,NULL),(22,'theme-katen-logo_height','25px',NULL,NULL),(23,'theme-katen-primary_font','Roboto',NULL,NULL),(24,'theme-katen-heading_font','Poppins',NULL,NULL),(25,'theme-katen-gradient_from','#FE4F70',NULL,NULL),(26,'theme-katen-gradient_to','#FFA387',NULL,NULL),(27,'theme-katen-primary_color','#FE4F70',NULL,NULL),(28,'theme-katen-secondary_color','#FFA387',NULL,NULL),(29,'theme-katen-text_color','#6C7A91',NULL,NULL),(30,'theme-katen-homepage_id','1',NULL,NULL),(31,'theme-katen-blog_page_id','1',NULL,NULL),(32,'theme-katen-preloader_enabled','no',NULL,NULL),(33,'theme-katen-preloader_version','v2',NULL,NULL),(34,'theme-katen-lazy_load_images','1',NULL,NULL),(35,'theme-katen-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL),(36,'theme-katen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(37,'theme-katen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(38,'theme-katen-newsletter_popup_enable','1',NULL,NULL),(39,'theme-katen-newsletter_popup_image','general/newsletter-popup.jpg',NULL,NULL),(40,'theme-katen-newsletter_popup_title','Subscribe Now',NULL,NULL),(41,'theme-katen-newsletter_popup_subtitle','Newsletter',NULL,NULL),(42,'theme-katen-newsletter_popup_description','Stay in the Loop: Sign Up for Our Newsletter!',NULL,NULL),(43,'theme-katen-header_style','3',NULL,NULL),(44,'theme-katen-blog_list_style','2',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(2,'dickinson',2,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(3,'pollich',3,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(4,'runte',4,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(5,'heller',5,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(6,'kihn',6,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(7,'jacobi',7,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(8,'hauck',8,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:05','2024-09-18 23:30:15'),(9,'homepage',1,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(10,'blog',2,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(11,'contact-us',3,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(12,'about-us',4,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(13,'cookie-policy',5,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(14,'terms-of-use',6,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(15,'privacy-policy',7,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:05','2024-09-18 23:30:05'),(16,'minimalist-living',1,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(17,'decluttering',2,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(18,'minimalist-wardrobe',3,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(19,'mindfulness',4,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(20,'sustainable-living',5,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(21,'digital-minimalism',6,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(22,'simple-home-decor',7,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(23,'minimalist-travel',8,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(24,'self-care',9,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(25,'personal-growth',10,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:10','2024-09-18 23:30:10'),(26,'minimalism',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(27,'simplicity',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(28,'mindfulness',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(29,'wellness',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(30,'minimalist-fashion',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(31,'organization',6,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(32,'sustainability',7,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(33,'digital-detox',8,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(34,'travel',9,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(35,'self-reflection',10,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:10','2024-09-18 23:30:10'),(36,'embracing-simplicity-my-journey-to-minimalist-living',1,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(37,'minimalism-in-everyday-life-small-changes-big-impact',2,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(38,'the-art-of-decluttering-finding-peace-in-minimalism',3,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(39,'minimalist-wardrobe-essentials-building-a-capsule-closet',4,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(40,'mindful-consumption-navigating-minimalism-in-a-consumerist-world',5,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(41,'minimalist-home-design-creating-serenity-in-small-spaces',6,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(42,'minimalism-and-mental-health-finding-clarity-amidst-chaos',7,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(43,'digital-minimalism-streamlining-your-tech-life-for-greater-productivity',8,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(44,'minimalist-travel-embracing-experiences-over-possessions',9,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(45,'minimalism-and-mindfulness-cultivating-presence-in-a-busy-world',10,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:11','2024-09-18 23:30:11'),(46,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(47,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(48,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(49,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(50,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(51,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(52,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15'),(53,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:15','2024-09-18 23:30:15');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Minimalism',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(2,'Simplicity',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(3,'Mindfulness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(4,'Wellness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(5,'Minimalist Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(6,'Organization',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(7,'Sustainability',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(8,'Digital Detox',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(9,'Travel',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10'),(10,'Self-Reflection',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:10','2024-09-18 23:30:10');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tristin.dietrich@senger.net',NULL,'$2y$12$tFYEPv4hN7fW/cFwz91MSupGiz0fDO0yQ5npSjEb7qp1Z/FV9pCYi',NULL,'2024-09-18 23:30:00','2024-09-18 23:30:00','Dulce','Fisher','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteCopyrightWidget','bottom_footer_sidebar','katen',1,'[]','2024-09-18 23:30:11','2024-09-18 23:30:11'),(2,'SocialLinksWidget','bottom_footer_sidebar','katen',2,'[]','2024-09-18 23:30:11','2024-09-18 23:30:11'),(3,'SocialLinksWidget','primary_sidebar','katen',0,'{\"style\":\"style-2\",\"description\":\"Hello, We\\u2019re content writer who is fascinated by content fashion, celebrity and lifestyle. We helps clients bring the right content to the right people.\",\"background_image\":\"backgrounds\\/map-bg.png\"}','2024-09-18 23:30:11','2024-09-18 23:30:11'),(4,'BackToTopWidget','bottom_footer_sidebar','katen',3,'[]','2024-09-18 23:30:11','2024-09-18 23:30:11'),(5,'GalleriesWidget','top_footer_sidebar','katen',1,'{\"button_label\":\"@Katen on Instagram\",\"button_url\":\"\\/\",\"limit\":6}','2024-09-18 23:30:11','2024-09-18 23:30:11'),(6,'SocialLinksWidget','header_sidebar','katen',1,'[]','2024-09-18 23:30:11','2024-09-18 23:30:11'),(7,'SocialLinksWidget','menu_sidebar','katen',1,'[]','2024-09-18 23:30:11','2024-09-18 23:30:11'),(8,'BlogPostsWidget','primary_sidebar','katen',1,'{\"types\":[\"popular\",\"recent\"],\"limit\":4,\"category_ids\":[1,3,7]}','2024-09-18 23:30:11','2024-09-18 23:30:11'),(9,'BlogCategoriesWidget','primary_sidebar','katen',2,'{\"title\":\"Explore Topics\",\"category_ids\":[1,2,3,4,5]}','2024-09-18 23:30:11','2024-09-18 23:30:11'),(10,'BlogTagsWidget','primary_sidebar','katen',3,'{\"name\":\"Tag Clouds\",\"number_display\":5}','2024-09-18 23:30:11','2024-09-18 23:30:11'),(11,'NewsletterWidget','primary_sidebar','katen',3,'{\"title\":\"Newsletter\",\"subtitle\":\"Join 70,000 subscribers!\",\"description\":\"By signing up, you agree to our Privacy Policy\"}','2024-09-18 23:30:12','2024-09-18 23:30:12'),(12,'BlogPostsWidget','primary_sidebar','katen',5,'{\"title\":\"Celebration\",\"limit\":5,\"category_ids\":[1,2,4,5],\"style\":\"style-2\"}','2024-09-18 23:30:12','2024-09-18 23:30:12');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19 13:30:17
