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
INSERT INTO `activations` VALUES (1,1,'8gRuBbCD0PudKhkJlng6xr4wGhoLltOg',1,'2024-09-18 23:30:33','2024-09-18 23:30:33','2024-09-18 23:30:33');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-09-19 06:30:32',NULL,1,'2024-09-18 23:30:32','2024-09-18 23:30:32'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-09-19 06:30:32',NULL,1,'2024-09-18 23:30:32','2024-09-18 23:30:32'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-09-19 06:30:32',NULL,1,'2024-09-18 23:30:32','2024-09-18 23:30:32');
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
INSERT INTO `categories` VALUES (1,'Minimalist Living',0,'Sunt ut temporibus magni repellendus. Eveniet incidunt voluptas nulla earum. Qui ea et dolorem occaecati quis. Consequatur ipsum perspiciatis assumenda laudantium atque ducimus vero.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(2,'Decluttering',0,'Quo ut voluptas deleniti sit. Fugiat qui ipsa qui aut eveniet delectus voluptate. Tempora quidem nesciunt at voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(3,'Minimalist Wardrobe',0,'Qui facilis in et voluptatibus. Officia aut ex voluptatem dolor maxime vero accusantium. Accusamus quasi quia voluptas aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(4,'Mindfulness',0,'Aut adipisci harum temporibus placeat vel quas asperiores. Officia autem aut autem id inventore. Harum perspiciatis modi fuga aliquam voluptatem autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(5,'Sustainable Living',0,'Officia eos ea cum corporis quia corrupti. Necessitatibus aut cupiditate dolores molestiae ducimus similique. Accusamus odio distinctio repellendus vel architecto laudantium.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(6,'Digital Minimalism',0,'Occaecati aperiam id quisquam minima. Qui repellat voluptates quaerat nemo fugit odit eius. Accusantium enim impedit iusto ducimus expedita pariatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(7,'Simple Home Decor',0,'Eum pariatur animi labore et dolorum voluptas. Aliquid et alias rerum illo eligendi. Sed atque quisquam nihil distinctio dolorem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(8,'Minimalist Travel',0,'Perspiciatis eum natus ut aut sit. Nam voluptatem est dolor magnam quo maxime. Quo id qui modi qui porro. Odio perspiciatis praesentium non exercitationem aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(9,'Self-care',0,'Excepturi corrupti optio minima quos distinctio qui. Harum magnam magnam esse aut. Molestiae consequatur illo sit et quia quam numquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(10,'Personal Growth',0,'Est corrupti eos aut explicabo. Recusandae itaque et porro illum sed. Sed eligendi est possimus quas autem. Voluptas qui quia assumenda fugit vero.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-18 23:30:42','2024-09-18 23:30:42');
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
INSERT INTO `contacts` VALUES (1,'Mr. Ruben Schulist DVM','rrohan@example.org','(814) 294-8790','692 Remington Loaf\nNorth Jesus, GA 52345-8855','Et ut ea saepe ut et.','Quibusdam repudiandae quis perferendis corrupti sapiente dolorem maxime numquam. Quia quos laborum ut et sequi qui alias. Blanditiis expedita qui provident commodi est. Temporibus omnis quis aut consequuntur. Dolore doloremque corporis ullam corrupti soluta. Aspernatur facilis et totam nulla deserunt minima. Nemo est cupiditate culpa aut exercitationem error. Explicabo fuga veniam in tempora. Dolores autem veritatis culpa quis. Qui dolor velit repellat consequuntur est harum quod.',NULL,'read','2024-09-18 23:30:37','2024-09-18 23:30:37'),(2,'Abbey Collier','dooley.ramiro@example.org','(210) 747-8084','3375 Jerrell Port\nSouth Daisy, NV 28552-4376','Nihil molestias deleniti earum sit tenetur.','Assumenda doloribus nihil tempore accusamus. Officia cupiditate nihil sit veniam quo deleniti facere deleniti. Quisquam enim sint molestias sit. Non perferendis rerum totam et. Laboriosam quas soluta velit consequatur et delectus. Et asperiores temporibus consequatur cumque sed sit. Non ab omnis voluptas cupiditate error id quam praesentium. Explicabo rerum asperiores id expedita. Et nemo repellat eaque eligendi nesciunt dolores molestiae.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37'),(3,'Mossie Ritchie','pfeeney@example.com','1-279-557-4433','993 Balistreri Neck\nLake Brett, MS 73870','Sit fugit incidunt non rerum voluptas.','Necessitatibus ea est atque fugit expedita dicta natus. Et dolorem non vel asperiores voluptas. Illum ut quasi veniam sunt consequatur perspiciatis itaque. Aperiam ut amet ea nam aspernatur sit quod nihil. Vero officia animi iure laborum quis aut enim minima. Eaque ea id labore et facere optio. Labore est maiores est quo cupiditate nostrum ad.',NULL,'read','2024-09-18 23:30:37','2024-09-18 23:30:37'),(4,'Cornelius Balistreri','brock53@example.net','+1-507-892-5003','9531 Sigrid Causeway Suite 558\nSouth Nova, HI 10847-2071','Totam fugiat ut doloribus quas officiis.','Et itaque a eum quibusdam cum. Et velit eos molestiae repellat iste ex. Enim quis quia distinctio. Architecto facere quidem quia quia. Facilis consequatur voluptas illum atque error aliquam illo. Quam corrupti corrupti sed cupiditate odio. Ipsam hic corrupti fugit voluptatem eos quis sed sunt. Laborum consectetur culpa quaerat quae eius ab. Eius consectetur pariatur ab beatae sed.',NULL,'read','2024-09-18 23:30:37','2024-09-18 23:30:37'),(5,'Hobart Hintz','yhalvorson@example.org','510-586-5674','196 Johanna Landing\nDerickhaven, VA 27569-1617','Quis vitae et at.','Autem veniam expedita recusandae fuga voluptas unde. Est consequatur cupiditate eum quo minima non explicabo. Est id doloribus nulla dicta nostrum rerum in. Et veritatis quas corporis accusantium quae. Dolor sit itaque molestias tempore officiis nihil occaecati. Quis quo perspiciatis quos dolorem earum in voluptas. Adipisci inventore officiis eum at eaque. Aliquid est et aut.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37'),(6,'Christelle Hickle','bhowe@example.net','+1 (540) 359-5234','45390 Bell Spur Suite 992\nGiovannihaven, ND 71987-7558','Sapiente repellat odio ut qui.','Aperiam eos ipsum sequi vitae. Debitis et ullam labore ab. Doloribus incidunt maiores accusantium. Eaque sed exercitationem voluptatem et maxime. Sed non doloribus quidem porro illum voluptate molestiae. Eligendi aliquid totam provident dolor. Nihil minima aut facere. Sint tempora voluptatem amet omnis nihil. Aliquam aut ut eum totam et.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37'),(7,'Simeon Rodriguez Sr.','lelia.feeney@example.com','515-401-5760','436 Kathryne Curve\nNorth Ethelfort, WA 38132-5154','Nobis impedit vel eum quae debitis est quibusdam.','Beatae quia provident sed dolorem consequatur facilis. Est ipsa voluptas non id culpa ad. Odit rem veritatis qui ex non. Omnis ea minus nemo odit. Velit modi aut praesentium dicta est culpa. Officia quis dolorem ut nam est iure. Et saepe voluptatem enim iusto accusantium distinctio ullam. Aut dolores veritatis quaerat accusantium a aut non. Dicta natus est praesentium. Illo eaque dolor necessitatibus est.',NULL,'read','2024-09-18 23:30:37','2024-09-18 23:30:37'),(8,'Maxwell Medhurst I','mante.manuel@example.net','1-380-613-4954','79601 Sipes Ridges\nWest Lucy, AR 85914-5962','Doloremque cum ipsum quae voluptas eius.','Perspiciatis facilis a autem blanditiis debitis. Minima corrupti non consequatur autem veritatis adipisci. Tempore et quod a voluptatem. Cumque dolor sint ex maiores. Est ratione ut vel consequuntur non est. Eos magnam deleniti molestiae aut fugiat cum asperiores. Et quibusdam voluptas vel maiores. Libero odit aut est ut sunt magnam neque quia. Est aperiam architecto quo distinctio voluptas aperiam sequi voluptates. Dolorem ut dolore ipsam.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37'),(9,'Carleton Balistreri','jany.raynor@example.net','(518) 204-0349','97707 Friesen Overpass\nLake Jarrod, TX 39351','Velit nemo laudantium esse aut modi.','Eos dolores velit unde. Asperiores et laudantium libero sequi pariatur. In odio distinctio nihil beatae voluptas. Et praesentium voluptate ea eos. Quisquam aut maiores commodi eos laboriosam distinctio. Laborum temporibus fuga nulla tenetur quia. Ut assumenda aut ipsa qui ab. Et iusto quis cupiditate amet nihil explicabo consequuntur. Harum voluptatem impedit quibusdam eaque quia. Vel temporibus dolorem ex non facilis voluptatibus. Assumenda quae est sint nihil ratione.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37'),(10,'Rogers Cartwright','gustave.quigley@example.org','+1 (986) 607-2601','98666 Rohan Summit Apt. 679\nLake Roslynmouth, NM 20663-3541','Nostrum sed eos molestias earum quis quidem et.','Dicta sapiente quae molestiae ut iure quasi. Quo aut sunt unde omnis. Quibusdam ab natus dolorum. Voluptatem architecto et dicta sit. Et est quis magni. Unde consequatur numquam incidunt dolor eum. Tempora quia molestiae numquam et asperiores ab velit. Aut ipsam vero illum vel est. Labore eum ratione nam aut dolore. Ullam eveniet velit esse exercitationem quam aut voluptatem. Rem odit doloribus molestiae error cumque. Repellendus officia vero reprehenderit corrupti omnis itaque.',NULL,'unread','2024-09-18 23:30:37','2024-09-18 23:30:37');
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
INSERT INTO `fob_comments` VALUES (1,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',8,'http://localhost','Mr. Trevion Ruecker IV','elyse35@yahoo.com','https://friendsofbotble.com','This is really helpful, thank you!','approved','98.58.64.7','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_5) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/97.0.4092.10 Safari/532.1 Edg/97.01117.94','2024-09-10 01:07:18','2024-09-18 23:30:46'),(2,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',10,'http://localhost','Melany Toy','kris.rosanna@howe.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','240.199.13.205','Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; nl-NL) AppleWebKit/534.11.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6534.11.2','2024-08-22 19:56:34','2024-09-18 23:30:46'),(3,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',5,'http://localhost','Armand Quitzon I','cameron.rice@parker.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','192.124.148.61','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_2 rv:3.0; en-US) AppleWebKit/534.42.2 (KHTML, like Gecko) Version/5.0.1 Safari/534.42.2','2024-08-19 10:04:21','2024-09-18 23:30:46'),(4,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Miss Lelah Bashirian','uhermiston@baumbach.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','13.63.186.133','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/535.1 (KHTML, like Gecko) Version/15.0 EdgiOS/85.01091.86 Mobile/15E148 Safari/535.1','2024-09-04 00:44:33','2024-09-18 23:30:46'),(5,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',9,'http://localhost','Eleanora Wolf','jerrell51@murray.info','https://friendsofbotble.com','I have a question about the third paragraph.','approved','234.150.213.213','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5350 (KHTML, like Gecko) Chrome/38.0.823.0 Mobile Safari/5350','2024-08-20 09:11:00','2024-09-18 23:30:46'),(6,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',2,'http://localhost','Derek Robel','rkutch@hotmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','173.225.122.111','Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X; en-US) AppleWebKit/533.37.6 (KHTML, like Gecko) Version/4.0.5 Mobile/8B115 Safari/6533.37.6','2024-08-27 03:24:52','2024-09-18 23:30:46'),(7,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',7,'http://localhost','Mireya Kuphal','alec.wolff@barton.net','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','2.198.64.136','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/535.0 (KHTML, like Gecko) Chrome/94.0.4598.67 Safari/535.0 Edg/94.01001.41','2024-08-31 09:28:58','2024-09-18 23:30:46'),(8,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',5,'http://localhost','Mavis Ritchie','alexis59@jacobs.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','94.123.16.201','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.828.0 Mobile Safari/5361','2024-09-14 12:29:40','2024-09-18 23:30:46'),(9,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',7,'http://localhost','Alize Dach','emery27@becker.info','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','233.14.117.195','Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.0.20) Gecko/20151221 Firefox/35.0','2024-09-08 23:18:42','2024-09-18 23:30:46'),(10,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',8,'http://localhost','Angela Lueilwitz V','franecki.osvaldo@yahoo.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','156.78.205.218','Mozilla/5.0 (compatible; MSIE 5.0; Windows CE; Trident/5.0)','2024-08-31 10:50:23','2024-09-18 23:30:46'),(11,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',8,'http://localhost','Mrs. Aniyah Nader','kchristiansen@ferry.net','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','207.133.112.116','Mozilla/5.0 (Windows NT 6.0; sl-SI; rv:1.9.1.20) Gecko/20171107 Firefox/36.0','2024-08-27 13:00:48','2024-09-18 23:30:46'),(12,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',7,'http://localhost','Noemi Pollich','kelsie.schmitt@williamson.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','135.145.144.165','Opera/8.12 (Windows 98; nl-NL) Presto/2.8.216 Version/12.00','2024-08-23 06:10:03','2024-09-18 23:30:46'),(13,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',7,'http://localhost','Jessie O\'Keefe','jessyca43@hotmail.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','213.235.168.184','Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/533.44.5 (KHTML, like Gecko) Version/5.1 Safari/533.44.5','2024-09-12 13:53:17','2024-09-18 23:30:46'),(14,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',5,'http://localhost','Prof. Shanon Turner','paucek.mylene@mills.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','116.208.18.171','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2 rv:3.0) Gecko/20240908 Firefox/35.0','2024-08-22 07:38:36','2024-09-18 23:30:46'),(15,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',4,'http://localhost','Otha Goldner I','drake80@gmail.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','148.51.30.50','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/3.0)','2024-09-13 08:46:05','2024-09-18 23:30:46'),(16,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',10,'http://localhost','Prof. Vidal Champlin','orpha.marquardt@hand.biz','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','22.252.180.14','Opera/9.73 (Windows NT 5.2; en-US) Presto/2.10.232 Version/12.00','2024-09-08 17:05:58','2024-09-18 23:30:46'),(17,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Natasha Wehner','lacy.mosciski@yahoo.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','3.153.52.13','Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20231111 Firefox/35.0','2024-09-09 10:10:36','2024-09-18 23:30:46'),(18,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',6,'http://localhost','Eloise Hane','hfarrell@hotmail.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','114.36.142.150','Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/4.0)','2024-09-10 10:24:46','2024-09-18 23:30:46'),(19,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',1,'http://localhost','Riley Wilderman','ryan.viva@morar.biz','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','4.96.165.170','Opera/9.82 (X11; Linux i686; en-US) Presto/2.8.335 Version/11.00','2024-09-11 22:17:20','2024-09-18 23:30:46'),(20,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',3,'http://localhost','Natalie Krajcik','jerde.hazle@schulist.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','165.26.238.224','Mozilla/5.0 (compatible; MSIE 7.0; Windows 95; Trident/3.1)','2024-08-21 22:41:34','2024-09-18 23:30:46'),(21,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',2,'http://localhost','Ned Stamm II','isaiah.leannon@hotmail.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','78.179.233.169','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_1 rv:3.0; sl-SI) AppleWebKit/534.10.1 (KHTML, like Gecko) Version/4.0.1 Safari/534.10.1','2024-09-04 11:36:18','2024-09-18 23:30:46'),(22,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',4,'http://localhost','Dr. Fausto Zemlak Jr.','jamel.mertz@padberg.net','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','101.229.144.151','Mozilla/5.0 (Windows CE; sl-SI; rv:1.9.2.20) Gecko/20131020 Firefox/37.0','2024-09-10 07:02:54','2024-09-18 23:30:46'),(23,NULL,'Botble\\Member\\Models\\Member',0,'Botble\\Blog\\Models\\Post',3,'http://localhost','Dr. Kaci Shields DVM','lowe.novella@hagenes.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','135.172.229.238','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.2; Trident/4.0)','2024-09-10 19:04:38','2024-09-18 23:30:46'),(24,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',8,'http://localhost','Lukas Armstrong','ryder75@monahan.org','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','226.106.25.153','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_2 rv:6.0) Gecko/20200310 Firefox/35.0','2024-09-06 21:49:16','2024-09-18 23:30:46'),(25,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',10,'http://localhost','Dr. Marcelo Altenwerth Sr.','felicia.bode@watsica.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','201.197.202.70','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.872.0 Mobile Safari/5341','2024-09-01 12:03:13','2024-09-18 23:30:46'),(26,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',7,'http://localhost','Noelia Brekke','imoore@yahoo.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','159.137.16.223','Opera/9.22 (X11; Linux i686; nl-NL) Presto/2.12.257 Version/12.00','2024-08-31 04:52:29','2024-09-18 23:30:46'),(27,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',10,'http://localhost','Gregorio Fadel','shanna01@buckridge.com','https://friendsofbotble.com','This article made me think critically about the topic.','approved','121.56.203.4','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4 rv:2.0; sl-SI) AppleWebKit/531.31.1 (KHTML, like Gecko) Version/4.0 Safari/531.31.1','2024-08-25 07:30:27','2024-09-18 23:30:46'),(28,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',3,'http://localhost','Mr. Modesto Kilback','sabina72@hotmail.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','94.58.60.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7 rv:4.0) Gecko/20200421 Firefox/35.0','2024-08-31 00:05:59','2024-09-18 23:30:46'),(29,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',9,'http://localhost','Dovie Beahan','kathryn53@gmail.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','106.212.98.155','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2 like Mac OS X) AppleWebKit/535.1 (KHTML, like Gecko) Version/15.0 EdgiOS/96.01146.77 Mobile/15E148 Safari/535.1','2024-09-03 02:12:47','2024-09-18 23:30:46'),(30,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Dr. Amir Krajcik','roosevelt.bauch@ritchie.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','249.213.204.52','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_0 rv:3.0; nl-NL) AppleWebKit/532.23.3 (KHTML, like Gecko) Version/5.0 Safari/532.23.3','2024-09-14 06:25:30','2024-09-18 23:30:46'),(31,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',6,'http://localhost','Beatrice Harvey','nick59@bayer.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','118.109.27.120','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/36.0.869.0 Mobile Safari/5331','2024-09-15 16:34:05','2024-09-18 23:30:46'),(32,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',4,'http://localhost','Prof. Griffin Toy','auer.telly@weber.org','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','159.135.186.37','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/97.0.4384.86 Safari/531.1 Edg/97.01082.64','2024-08-21 09:38:02','2024-09-18 23:30:46'),(33,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',10,'http://localhost','Foster Lowe','katherine.yost@cormier.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','84.188.110.20','Opera/9.56 (Windows NT 5.01; sl-SI) Presto/2.10.210 Version/10.00','2024-09-07 07:41:05','2024-09-18 23:30:46'),(34,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',8,'http://localhost','Carol Parisian','little.katherine@yahoo.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','133.150.149.53','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/5.0)','2024-09-13 19:00:34','2024-09-18 23:30:46'),(35,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',2,'http://localhost','Schuyler Sporer','jamarcus41@mckenzie.biz','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','208.163.106.6','Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/4.1)','2024-08-20 03:05:27','2024-09-18 23:30:46'),(36,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',6,'http://localhost','Bo Muller','msenger@rosenbaum.biz','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','254.83.201.57','Opera/9.29 (Windows NT 6.0; sl-SI) Presto/2.11.267 Version/10.00','2024-09-04 05:55:37','2024-09-18 23:30:46'),(37,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',7,'http://localhost','Marcelina Borer','emmanuel.larson@veum.net','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','59.219.69.104','Opera/9.74 (Windows 95; en-US) Presto/2.10.165 Version/12.00','2024-09-10 22:09:18','2024-09-18 23:30:46'),(38,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',8,'http://localhost','Tanya West','nicolette.nitzsche@bartoletti.biz','https://friendsofbotble.com','The information presented here is very valuable.','approved','86.112.9.143','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5332 (KHTML, like Gecko) Chrome/37.0.886.0 Mobile Safari/5332','2024-08-31 14:05:57','2024-09-18 23:30:46'),(39,NULL,'Botble\\Member\\Models\\Member',1,'Botble\\Blog\\Models\\Post',9,'http://localhost','Elisha Franecki','porter.willms@hotmail.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','30.32.101.101','Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Trident/5.1)','2024-08-31 14:46:01','2024-09-18 23:30:46'),(40,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',6,'http://localhost','Dr. Marian Harris','vidal.konopelski@yahoo.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','48.107.159.244','Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/532.1 (KHTML, like Gecko) Version/15.0 EdgiOS/98.01125.39 Mobile/15E148 Safari/532.1','2024-08-24 09:42:08','2024-09-18 23:30:46'),(41,NULL,'Botble\\Member\\Models\\Member',5,'Botble\\Blog\\Models\\Post',10,'http://localhost','Brendan Schuppe','vallie.wunsch@yahoo.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','139.61.80.184','Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/3.0)','2024-08-31 06:22:22','2024-09-18 23:30:46'),(42,NULL,'Botble\\Member\\Models\\Member',2,'Botble\\Blog\\Models\\Post',6,'http://localhost','Kane Bogan PhD','edwina13@gmail.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','184.44.17.65','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/4.0)','2024-09-18 11:11:02','2024-09-18 23:30:46'),(43,NULL,'Botble\\Member\\Models\\Member',4,'Botble\\Blog\\Models\\Post',3,'http://localhost','Hilario Crist','chance.hammes@collins.biz','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','95.219.26.83','Mozilla/5.0 (Windows NT 6.2; en-US; rv:1.9.1.20) Gecko/20131114 Firefox/36.0','2024-09-10 00:54:30','2024-09-18 23:30:46'),(44,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Darrion Stehr','wdach@senger.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','53.240.6.47','Opera/9.23 (Windows NT 6.0; en-US) Presto/2.10.323 Version/10.00','2024-09-18 07:25:46','2024-09-18 23:30:46'),(45,NULL,'Botble\\Member\\Models\\Member',6,'Botble\\Blog\\Models\\Post',1,'http://localhost','Gonzalo Klocko','imogene37@farrell.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','30.82.185.125','Opera/8.79 (X11; Linux x86_64; en-US) Presto/2.9.295 Version/11.00','2024-08-25 10:40:48','2024-09-18 23:30:46'),(46,NULL,'Botble\\Member\\Models\\Member',7,'Botble\\Blog\\Models\\Post',4,'http://localhost','Jaime King','orpha.kris@yahoo.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','45.83.153.195','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5330 (KHTML, like Gecko) Chrome/38.0.819.0 Mobile Safari/5330','2024-08-27 23:10:53','2024-09-18 23:30:46'),(47,NULL,'Botble\\Member\\Models\\Member',3,'Botble\\Blog\\Models\\Post',5,'http://localhost','Ms. Julianne Schowalter Sr.','marcelina.torphy@yahoo.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','234.119.14.250','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7 rv:5.0; nl-NL) AppleWebKit/534.7.3 (KHTML, like Gecko) Version/4.0 Safari/534.7.3','2024-08-30 14:28:09','2024-09-18 23:30:46');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Nesciunt esse atque rerum placeat quibusdam in porro. Praesentium tempora culpa et. Possimus sint deleniti laboriosam aut velit.',0,0,'galleries/1.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(2,'New Day','Quibusdam necessitatibus voluptatem tenetur vero. Neque pariatur laborum doloribus similique ex sed.',0,0,'galleries/2.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(3,'Happy Day','Minus corporis velit inventore totam. Cum ut blanditiis sed explicabo quis. Ab neque inventore animi quia.',0,0,'galleries/3.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(4,'Nature','Temporibus quia omnis eveniet quis quae et quia alias. Impedit ut nulla neque ut vero. Quos unde vel dolorem minus.',0,0,'galleries/4.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(5,'Morning','Architecto sit placeat facilis placeat ut. Id expedita quidem libero excepturi. Totam perferendis consequuntur dolores accusantium.',0,0,'galleries/5.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(6,'Sunset','Doloremque ex qui saepe deserunt assumenda facilis. Molestiae minima voluptates est vitae. Est voluptate ducimus expedita voluptates culpa.',0,0,'galleries/6.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(7,'Ocean Views','Occaecati id ullam repellat molestias qui. Possimus eum cupiditate eveniet officiis.',0,0,'galleries/7.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46'),(8,'Adventure Time','Aperiam temporibus quisquam iusto corrupti. Facere non autem doloremque iure rerum accusamus sunt. Tempora dicta sint iusto accusantium impedit.',0,0,'galleries/8.jpg',1,'published','2024-09-18 23:30:46','2024-09-18 23:30:46');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(7,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46'),(8,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-09-18 23:30:46','2024-09-18 23:30:46');
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
INSERT INTO `language_meta` VALUES (1,'en_US','f746a2624b8bc67b0ced9e13e9479c21',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','b938756a1a313c4aa60425e3ffd949f9',1,'Botble\\Menu\\Models\\Menu');
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
INSERT INTO `media_files` VALUES (1,0,'about-us','about-us',1,'image/jpeg',117735,'general/about-us.jpg','[]','2024-09-18 23:30:20','2024-09-18 23:30:20',NULL,'public'),(2,0,'favicon','favicon',1,'image/png',4385,'general/favicon.png','[]','2024-09-18 23:30:20','2024-09-18 23:30:20',NULL,'public'),(3,0,'hero','hero',1,'image/jpeg',345815,'general/hero.jpg','[]','2024-09-18 23:30:21','2024-09-18 23:30:21',NULL,'public'),(4,0,'logo-alt','logo-alt',1,'image/png',1439,'general/logo-alt.png','[]','2024-09-18 23:30:21','2024-09-18 23:30:21',NULL,'public'),(5,0,'logo-dark','logo-dark',1,'image/png',1530,'general/logo-dark.png','[]','2024-09-18 23:30:21','2024-09-18 23:30:21',NULL,'public'),(6,0,'logo','logo',1,'image/png',2246,'general/logo.png','[]','2024-09-18 23:30:21','2024-09-18 23:30:21',NULL,'public'),(7,0,'newsletter-popup','newsletter-popup',1,'image/jpeg',85995,'general/newsletter-popup.jpg','[]','2024-09-18 23:30:22','2024-09-18 23:30:22',NULL,'public'),(8,0,'preloader','preloader',1,'image/gif',189758,'general/preloader.gif','[]','2024-09-18 23:30:26','2024-09-18 23:30:26',NULL,'public'),(9,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-09-18 23:30:33','2024-09-18 23:30:33',NULL,'public'),(10,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-09-18 23:30:33','2024-09-18 23:30:33',NULL,'public'),(11,0,'11','11',2,'image/jpeg',9803,'members/11.jpg','[]','2024-09-18 23:30:33','2024-09-18 23:30:33',NULL,'public'),(12,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-09-18 23:30:33','2024-09-18 23:30:33',NULL,'public'),(13,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-09-18 23:30:33','2024-09-18 23:30:33',NULL,'public'),(14,0,'3-1','3-1',2,'image/png',9803,'members/3-1.png','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(15,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(16,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(17,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(18,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(19,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(20,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-09-18 23:30:34','2024-09-18 23:30:34',NULL,'public'),(21,0,'1','1',3,'image/jpeg',33268,'news/1.jpg','[]','2024-09-18 23:30:38','2024-09-18 23:30:38',NULL,'public'),(22,0,'10','10',3,'image/jpeg',33268,'news/10.jpg','[]','2024-09-18 23:30:38','2024-09-18 23:30:38',NULL,'public'),(23,0,'2','2',3,'image/jpeg',33268,'news/2.jpg','[]','2024-09-18 23:30:39','2024-09-18 23:30:39',NULL,'public'),(24,0,'3','3',3,'image/jpeg',33268,'news/3.jpg','[]','2024-09-18 23:30:39','2024-09-18 23:30:39',NULL,'public'),(25,0,'4','4',3,'image/jpeg',33268,'news/4.jpg','[]','2024-09-18 23:30:39','2024-09-18 23:30:39',NULL,'public'),(26,0,'5','5',3,'image/jpeg',33268,'news/5.jpg','[]','2024-09-18 23:30:40','2024-09-18 23:30:40',NULL,'public'),(27,0,'6','6',3,'image/jpeg',33268,'news/6.jpg','[]','2024-09-18 23:30:40','2024-09-18 23:30:40',NULL,'public'),(28,0,'7','7',3,'image/jpeg',33268,'news/7.jpg','[]','2024-09-18 23:30:40','2024-09-18 23:30:40',NULL,'public'),(29,0,'8','8',3,'image/jpeg',33268,'news/8.jpg','[]','2024-09-18 23:30:41','2024-09-18 23:30:41',NULL,'public'),(30,0,'9','9',3,'image/jpeg',33268,'news/9.jpg','[]','2024-09-18 23:30:41','2024-09-18 23:30:41',NULL,'public'),(31,0,'cover-image','cover-image',3,'image/jpeg',33268,'news/cover-image.jpg','[]','2024-09-18 23:30:42','2024-09-18 23:30:42',NULL,'public'),(32,0,'map-bg','map-bg',4,'image/png',238010,'backgrounds/map-bg.png','[]','2024-09-18 23:30:42','2024-09-18 23:30:42',NULL,'public'),(33,0,'1','1',5,'image/jpeg',33268,'galleries/1.jpg','[]','2024-09-18 23:30:43','2024-09-18 23:30:43',NULL,'public'),(34,0,'2','2',5,'image/jpeg',33268,'galleries/2.jpg','[]','2024-09-18 23:30:43','2024-09-18 23:30:43',NULL,'public'),(35,0,'3','3',5,'image/jpeg',33268,'galleries/3.jpg','[]','2024-09-18 23:30:44','2024-09-18 23:30:44',NULL,'public'),(36,0,'4','4',5,'image/jpeg',33268,'galleries/4.jpg','[]','2024-09-18 23:30:44','2024-09-18 23:30:44',NULL,'public'),(37,0,'5','5',5,'image/jpeg',33268,'galleries/5.jpg','[]','2024-09-18 23:30:44','2024-09-18 23:30:44',NULL,'public'),(38,0,'6','6',5,'image/jpeg',33268,'galleries/6.jpg','[]','2024-09-18 23:30:45','2024-09-18 23:30:45',NULL,'public'),(39,0,'7','7',5,'image/jpeg',33268,'galleries/7.jpg','[]','2024-09-18 23:30:45','2024-09-18 23:30:45',NULL,'public'),(40,0,'8','8',5,'image/jpeg',33268,'galleries/8.jpg','[]','2024-09-18 23:30:45','2024-09-18 23:30:45',NULL,'public');
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
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2024-09-18 23:30:20','2024-09-18 23:30:20',NULL),(2,0,'members',NULL,'members',0,'2024-09-18 23:30:33','2024-09-18 23:30:33',NULL),(3,0,'news',NULL,'news',0,'2024-09-18 23:30:38','2024-09-18 23:30:38',NULL),(4,0,'backgrounds',NULL,'backgrounds',0,'2024-09-18 23:30:42','2024-09-18 23:30:42',NULL),(5,0,'galleries',NULL,'galleries',0,'2024-09-18 23:30:43','2024-09-18 23:30:43',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','Alice. \'Exactly so,\' said.',NULL,'member@archielite.com','$2y$12$FBNStVpgBlKNQEulyVVHue530D.pFA3ofB/je1mNFy4hgHNwCeoO.',9,'2023-08-28','+1-585-839-8786','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:35','2024-09-18 23:30:35','published'),(2,'Stephen','Miller','Hi, I’m Stephen Miller, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'winston96@yahoo.com','$2y$12$1JSyD0ImmhsjGDxZDSpI1uHYe3jULijuhdlbQ6pqQW9e/Xu90sAYu',10,'1988-10-06','+1-502-299-4198','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:35','2024-09-18 23:30:35','published'),(3,'Rafael','Cartwright','Hi, I’m Rafael Cartwright, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'botsford.karlie@hilpert.com','$2y$12$OHezAfyrMBzUaD8dwZCLiuXHKqY3OPsDFB4miO5TR0cjForIo4wze',11,'1981-06-18','1-323-975-0558','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:35','2024-09-18 23:30:35','published'),(4,'Lou','Walker','Hi, I’m Lou Walker, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'gertrude37@cormier.com','$2y$12$kSzNxwDq7VmHe0EcXCOCbuc8GFUCFPAEn9EHHkn.t8KVRKk9aRzcq',12,'2009-12-25','949.979.3158','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:36','2024-09-18 23:30:36','published'),(5,'Milford','Klein','Hi, I’m Milford Klein, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'turcotte.nigel@gerlach.com','$2y$12$cX.mwVHqUpp1lKVQ/dBBCu3LsWeSDOo5ucM43Jm2bQUrVB.YNNzEK',13,'1985-01-15','(774) 751-2178','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:36','2024-09-18 23:30:36','published'),(6,'Elsa','Waelchi','Hi, I’m Elsa Waelchi, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'unienow@hotmail.com','$2y$12$ksT3dmt/dXrvCBTn/uZbg.vzHWmbTFtCX1A9Uf4m5qMsH0F87ZXbO',14,'2017-02-18','301-342-7668','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:36','2024-09-18 23:30:36','published'),(7,'Felipe','Heidenreich','Hi, I’m Felipe Heidenreich, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'johnny44@williamson.com','$2y$12$U4fUrRRnfQHfY0dHr547IOSIc7jpSqqyjttZ/DxSWsmWLf3B7FsvK',15,'1987-05-14','(206) 652-5676','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:37','2024-09-18 23:30:37','published'),(8,'Katlyn','Rolfson','Hi, I’m Katlyn Rolfson, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'maiya.schaefer@marquardt.biz','$2y$12$Q1YqGOWN59HAqnqNZyCXH.eSTVO.3MaJ3vGbbW7orVaVrE1uWyZOi',16,'2015-08-13','(763) 413-9347','2024-09-19 06:30:34',NULL,NULL,'2024-09-18 23:30:37','2024-09-18 23:30:37','published');
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-18 23:30:37','2024-09-18 23:30:37');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(2,1,1,NULL,NULL,'https://katen.archielite.com',NULL,0,'Magazine',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(3,1,1,NULL,NULL,'https://katen-personal.archielite.com',NULL,0,'Personal',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(4,1,1,NULL,NULL,'https://katen-personal-alt.archielite.com',NULL,0,'Personal Alt',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(5,1,1,NULL,NULL,'https://katen-minimal.archielite.com',NULL,0,'Minimal',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(6,1,1,NULL,NULL,'https://katen-classic.archielite.com',NULL,0,'Classic',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(7,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(8,1,0,NULL,NULL,'#',NULL,0,'Blog',NULL,'_self',1,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(9,1,8,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(10,1,8,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(11,1,8,2,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single (Has Cover)',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(12,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(13,1,12,6,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(14,1,12,7,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(15,1,12,5,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(16,1,12,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37'),(17,1,12,3,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact Us',NULL,'_self',0,'2024-09-18 23:30:37','2024-09-18 23:30:37');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-18 23:30:37','2024-09-18 23:30:37');
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
INSERT INTO `meta_boxes` VALUES (1,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-09-18 23:30:35','2024-09-18 23:30:35'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-09-18 23:30:35','2024-09-18 23:30:35'),(3,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-09-18 23:30:35','2024-09-18 23:30:35'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-09-18 23:30:36','2024-09-18 23:30:36'),(5,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-09-18 23:30:36','2024-09-18 23:30:36'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-09-18 23:30:36','2024-09-18 23:30:36'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-09-18 23:30:37','2024-09-18 23:30:37'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-09-18 23:30:37','2024-09-18 23:30:37'),(9,'cover_image','[\"news\\/cover-image.jpg\"]',2,'Botble\\Blog\\Models\\Post','2024-09-18 23:30:42','2024-09-18 23:30:42');
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
INSERT INTO `pages` VALUES (1,'Homepage','',1,NULL,'homepage',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(2,'Blog','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(3,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" title=\"Send Message\" quantity=\"3\" title_1=\"Phone\" icon_1=\"ti ti-phone\" description_1=\"+1-202-555-0135\" url_1=\"tel:+1-202-555-0135\" open_in_new_tab_1=\"no\" title_2=\"E-Mail\" description_2=\"hello@example.com\" url_2=\"mailto:hello@example.com\" open_in_new_tab_2=\"yes\" icon_2=\"ti ti-mail\" title_3=\"Location\" description_3=\"California, USA\" open_in_new_tab_3=\"yes\" icon_3=\"ti ti-map\"][/contact-form]',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(4,'About Us','<div class=\"page-content bordered rounded padding-30\">\n    <img src=\"http://localhost/storage/general/about-us.jpg\" alt=\"Katen Doe\" class=\"rounded mb-4\">\n    <p>Hello, I’m a content writer who is fascinated by content fashion, celebrity and lifestyle. She helps clients bring the right content to the right people.</p>\n\n    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\n\n    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\n\n    <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\n</div>\n',1,NULL,'default',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(5,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(6,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37'),(7,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-09-18 23:30:37','2024-09-18 23:30:37');
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
INSERT INTO `post_categories` VALUES (9,1),(1,1),(1,2),(3,2),(2,3),(5,3),(6,4),(7,4),(5,5),(2,5),(7,6),(2,6),(10,7),(2,7),(2,8),(10,8),(7,9),(1,10),(8,10);
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
INSERT INTO `post_tags` VALUES (4,1),(8,1),(5,2),(2,2),(7,2),(4,3),(9,3),(10,3),(3,4),(1,4),(2,5),(6,5),(8,5),(9,6),(5,6),(2,6),(5,7),(6,7),(10,7),(8,8),(1,8),(3,8),(4,9),(6,9),(10,9),(2,10),(7,10),(4,10);
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
INSERT INTO `posts` VALUES (1,'Embracing Simplicity: My Journey to Minimalist Living','Discover how I simplified my life and found greater joy through minimalism, one step at a time.','<div class=\"featured-image\">\n    <img src=\"/storage/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/3.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/1.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'news/1.jpg',1833,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(2,'Minimalism in Everyday Life: Small Changes, Big Impact','Explore practical tips and strategies for integrating minimalism into your daily routine and experiencing its transformative effects.','<div class=\"featured-image\">\n    <img src=\"/storage/news/6.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/6.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/2.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',2,'Botble\\Member\\Models\\Member',1,'news/2.jpg',2223,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(3,'The Art of Decluttering: Finding Peace in Minimalism','Learn how decluttering your physical and mental space can lead to a more serene and fulfilling life, free from excess.','<div class=\"featured-image\">\n    <img src=\"/storage/news/8.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/2.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/8.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',4,'Botble\\Member\\Models\\Member',1,'news/3.jpg',263,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(4,'Minimalist Wardrobe Essentials: Building a Capsule Closet','Uncover the key pieces and timeless styles that form the foundation of a minimalist wardrobe, allowing for effortless elegance every day.','<div class=\"featured-image\">\n    <img src=\"/storage/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/6.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/10.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',3,'Botble\\Member\\Models\\Member',1,'news/4.jpg',2194,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(5,'Mindful Consumption: Navigating Minimalism in a Consumerist World','Delve into the principles of mindful consumption and discover how embracing minimalism can foster a healthier relationship with material possessions.','<div class=\"featured-image\">\n    <img src=\"/storage/news/3.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/2.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/7.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'news/5.jpg',2271,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(6,'Minimalist Home Design: Creating Serenity in Small Spaces','Explore minimalist home decor ideas and space-saving solutions to cultivate a tranquil living environment that nurtures simplicity and harmony.','<div class=\"featured-image\">\n    <img src=\"/storage/news/8.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/5.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/2.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',8,'Botble\\Member\\Models\\Member',1,'news/6.jpg',1854,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(7,'Minimalism and Mental Health: Finding Clarity Amidst Chaos','Discover the profound impact of minimalist practices on mental well-being, as we explore how simplifying life can lead to greater clarity and inner peace.','<div class=\"featured-image\">\n    <img src=\"/storage/news/3.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/8.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/3.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',5,'Botble\\Member\\Models\\Member',1,'news/7.jpg',580,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(8,'Digital Minimalism: Streamlining Your Tech Life for Greater Productivity','Learn how to minimize digital clutter and distractions, optimizing your use of technology to enhance focus, creativity, and productivity.','<div class=\"featured-image\">\n    <img src=\"/storage/news/5.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/5.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',3,'Botble\\Member\\Models\\Member',1,'news/8.jpg',1791,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(9,'Minimalist Travel: Embracing Experiences Over Possessions','Embark on a journey of minimalist travel and discover the joys of exploring the world with only the essentials, prioritizing meaningful experiences over material possessions.','<div class=\"featured-image\">\n    <img src=\"/storage/news/8.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/2.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',4,'Botble\\Member\\Models\\Member',1,'news/9.jpg',2356,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42'),(10,'Minimalism and Mindfulness: Cultivating Presence in a Busy World','Explore the intersection of minimalism and mindfulness, and learn how embracing simplicity can facilitate a deeper connection to the present moment and a more fulfilling life.','<div class=\"featured-image\">\n    <img src=\"/storage/news/7.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"/\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"/storage/news/10.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"/storage/news/9.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"/\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <div class=\"h4\">I should be incapable of drawing a single stroke</div>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"/\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',4,'Botble\\Member\\Models\\Member',1,'news/10.jpg',967,NULL,'2024-09-18 23:30:42','2024-09-18 23:30:42');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-18 23:30:33','2024-09-18 23:30:33');
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
INSERT INTO `settings` VALUES (1,'media_random_hash','cf8556e8dbe5f5c4723aec6ff860745a',NULL,'2024-09-18 23:30:37'),(2,'api_enabled','0',NULL,'2024-09-18 23:30:37'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-09-18 23:30:37'),(4,'theme','katen',NULL,'2024-09-18 23:30:37'),(5,'show_admin_bar','1',NULL,'2024-09-18 23:30:37'),(6,'announcement_max_width','1140',NULL,'2024-09-18 23:30:37'),(7,'announcement_text_color','#000000',NULL,'2024-09-18 23:30:37'),(8,'announcement_background_color','#fde2da',NULL,'2024-09-18 23:30:37'),(9,'announcement_text_alignment','start',NULL,'2024-09-18 23:30:37'),(10,'announcement_dismissible','1',NULL,'2024-09-18 23:30:37'),(11,'announcement_font_size','1',NULL,'2024-09-18 23:30:37'),(12,'language_hide_default','1',NULL,'2024-09-18 23:30:37'),(13,'language_switcher_display','dropdown',NULL,'2024-09-18 23:30:37'),(14,'language_display','all',NULL,'2024-09-18 23:30:37'),(15,'language_hide_languages','[]',NULL,'2024-09-18 23:30:37'),(16,'theme-katen-site_title','Katen - Minimal Blog & Magazine',NULL,NULL),(17,'theme-katen-seo_description','Katen is a modern, clean, and professional Laravel script suitable for a minimal blog and magazine website.',NULL,NULL),(18,'theme-katen-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,NULL),(19,'theme-katen-favicon','general/favicon.png',NULL,NULL),(20,'theme-katen-logo','general/logo.png',NULL,NULL),(21,'theme-katen-logo_dark','general/logo-dark.png',NULL,NULL),(22,'theme-katen-logo_height','25px',NULL,NULL),(23,'theme-katen-primary_font','Roboto',NULL,NULL),(24,'theme-katen-heading_font','Poppins',NULL,NULL),(25,'theme-katen-gradient_from','#FE4F70',NULL,NULL),(26,'theme-katen-gradient_to','#FFA387',NULL,NULL),(27,'theme-katen-primary_color','#FE4F70',NULL,NULL),(28,'theme-katen-secondary_color','#FFA387',NULL,NULL),(29,'theme-katen-text_color','#6C7A91',NULL,NULL),(30,'theme-katen-homepage_id','1',NULL,NULL),(31,'theme-katen-blog_page_id','1',NULL,NULL),(32,'theme-katen-preloader_enabled','no',NULL,NULL),(33,'theme-katen-preloader_version','v2',NULL,NULL),(34,'theme-katen-lazy_load_images','1',NULL,NULL),(35,'theme-katen-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL),(36,'theme-katen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(37,'theme-katen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(38,'theme-katen-newsletter_popup_enable','1',NULL,NULL),(39,'theme-katen-newsletter_popup_image','general/newsletter-popup.jpg',NULL,NULL),(40,'theme-katen-newsletter_popup_title','Subscribe Now',NULL,NULL),(41,'theme-katen-newsletter_popup_subtitle','Newsletter',NULL,NULL),(42,'theme-katen-newsletter_popup_description','Stay in the Loop: Sign Up for Our Newsletter!',NULL,NULL),(43,'theme-katen-header_style','2',NULL,NULL),(44,'theme-katen-site_logo_alt','general/logo.png',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'smith',1,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(2,'miller',2,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(3,'cartwright',3,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(4,'walker',4,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(5,'klein',5,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(6,'waelchi',6,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(7,'heidenreich',7,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(8,'rolfson',8,'Botble\\Member\\Models\\Member','author','2024-09-18 23:30:37','2024-09-18 23:30:46'),(9,'homepage',1,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(10,'blog',2,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(11,'contact-us',3,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(12,'about-us',4,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(13,'cookie-policy',5,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(14,'terms-of-use',6,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(15,'privacy-policy',7,'Botble\\Page\\Models\\Page','','2024-09-18 23:30:37','2024-09-18 23:30:37'),(16,'minimalist-living',1,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(17,'decluttering',2,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(18,'minimalist-wardrobe',3,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(19,'mindfulness',4,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(20,'sustainable-living',5,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(21,'digital-minimalism',6,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(22,'simple-home-decor',7,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(23,'minimalist-travel',8,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(24,'self-care',9,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(25,'personal-growth',10,'Botble\\Blog\\Models\\Category','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(26,'minimalism',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(27,'simplicity',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(28,'mindfulness',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(29,'wellness',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(30,'minimalist-fashion',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(31,'organization',6,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(32,'sustainability',7,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(33,'digital-detox',8,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(34,'travel',9,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(35,'self-reflection',10,'Botble\\Blog\\Models\\Tag','tag','2024-09-18 23:30:42','2024-09-18 23:30:42'),(36,'embracing-simplicity-my-journey-to-minimalist-living',1,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(37,'minimalism-in-everyday-life-small-changes-big-impact',2,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(38,'the-art-of-decluttering-finding-peace-in-minimalism',3,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(39,'minimalist-wardrobe-essentials-building-a-capsule-closet',4,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(40,'mindful-consumption-navigating-minimalism-in-a-consumerist-world',5,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(41,'minimalist-home-design-creating-serenity-in-small-spaces',6,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(42,'minimalism-and-mental-health-finding-clarity-amidst-chaos',7,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(43,'digital-minimalism-streamlining-your-tech-life-for-greater-productivity',8,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(44,'minimalist-travel-embracing-experiences-over-possessions',9,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(45,'minimalism-and-mindfulness-cultivating-presence-in-a-busy-world',10,'Botble\\Blog\\Models\\Post','','2024-09-18 23:30:42','2024-09-18 23:30:42'),(46,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(47,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(48,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(49,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(50,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(51,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(52,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46'),(53,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-18 23:30:46','2024-09-18 23:30:46');
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
INSERT INTO `tags` VALUES (1,'Minimalism',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(2,'Simplicity',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(3,'Mindfulness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(4,'Wellness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(5,'Minimalist Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(6,'Organization',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(7,'Sustainability',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(8,'Digital Detox',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(9,'Travel',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42'),(10,'Self-Reflection',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-18 23:30:42','2024-09-18 23:30:42');
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
INSERT INTO `users` VALUES (1,'mchristiansen@romaguera.com',NULL,'$2y$12$zxJ08mW6jk.up/IdVmcj3OYSWYEG6qvXI2vO220VQ7XAbui.gMbuK',NULL,'2024-09-18 23:30:33','2024-09-18 23:30:33','Sally','Heaney','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteCopyrightWidget','bottom_footer_sidebar','katen',1,'[]','2024-09-18 23:30:43','2024-09-18 23:30:43'),(2,'SocialLinksWidget','bottom_footer_sidebar','katen',2,'[]','2024-09-18 23:30:43','2024-09-18 23:30:43'),(3,'SocialLinksWidget','primary_sidebar','katen',0,'{\"style\":\"style-2\",\"description\":\"Hello, We\\u2019re content writer who is fascinated by content fashion, celebrity and lifestyle. We helps clients bring the right content to the right people.\",\"background_image\":\"backgrounds\\/map-bg.png\"}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(4,'BackToTopWidget','bottom_footer_sidebar','katen',3,'[]','2024-09-18 23:30:43','2024-09-18 23:30:43'),(5,'GalleriesWidget','top_footer_sidebar','katen',1,'{\"button_label\":\"@Katen on Instagram\",\"button_url\":\"\\/\",\"limit\":6}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(6,'SocialLinksWidget','header_sidebar','katen',1,'[]','2024-09-18 23:30:43','2024-09-18 23:30:43'),(7,'SocialLinksWidget','menu_sidebar','katen',1,'[]','2024-09-18 23:30:43','2024-09-18 23:30:43'),(8,'BlogPostsWidget','primary_sidebar','katen',1,'{\"types\":[\"popular\",\"recent\"],\"limit\":4,\"category_ids\":[1,3,7]}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(9,'BlogCategoriesWidget','primary_sidebar','katen',2,'{\"title\":\"Explore Topics\",\"category_ids\":[1,2,3,4,5]}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(10,'BlogTagsWidget','primary_sidebar','katen',3,'{\"name\":\"Tag Clouds\",\"number_display\":5}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(11,'NewsletterWidget','primary_sidebar','katen',3,'{\"title\":\"Newsletter\",\"subtitle\":\"Join 70,000 subscribers!\",\"description\":\"By signing up, you agree to our Privacy Policy\"}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(12,'BlogPostsWidget','primary_sidebar','katen',5,'{\"title\":\"Celebration\",\"limit\":5,\"category_ids\":[1,2,4,5],\"style\":\"style-2\"}','2024-09-18 23:30:43','2024-09-18 23:30:43'),(13,'BlogPostsWidget','homepage_sidebar','katen',1,'{\"title\":\"\",\"limit\":6,\"category_ids\":[1,2,4,5,6,7,8,9,10],\"style\":\"style-3\"}','2024-09-18 23:30:43','2024-09-18 23:30:43');
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

-- Dump completed on 2024-09-19 13:30:48
