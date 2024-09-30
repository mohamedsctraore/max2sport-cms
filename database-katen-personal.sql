-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: katen
-- ------------------------------------------------------
-- Server version	8.3.0

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
INSERT INTO `activations` VALUES (1,1,'btJyuv1lzRhYCe9QKBGhNMzGDR5hRKkv',1,'2024-04-01 23:48:36','2024-04-01 23:48:36','2024-04-01 23:48:36');
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2024-04-02 06:48:35',NULL,1,'2024-04-01 23:48:35','2024-04-01 23:48:35'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2024-04-02 06:48:35',NULL,1,'2024-04-01 23:48:35','2024-04-01 23:48:35'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2024-04-02 06:48:35',NULL,1,'2024-04-01 23:48:35','2024-04-01 23:48:35');
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
  `order` tinyint NOT NULL DEFAULT '0',
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
INSERT INTO `categories` VALUES (1,'Minimalist Living',0,'Necessitatibus magnam nulla a sint. Non est maiores voluptas debitis placeat fuga dicta.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(2,'Decluttering',0,'Deleniti cumque enim omnis est deserunt. Eveniet alias non deleniti laborum. Qui aut et velit corrupti est. Dolor suscipit itaque eius ipsam at recusandae qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(3,'Minimalist Wardrobe',0,'Mollitia eaque et optio voluptatem cumque autem. Exercitationem quaerat delectus est dolorem dolor incidunt. Facilis aspernatur et facilis omnis. Error quo veniam incidunt mollitia commodi qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(4,'Mindfulness',0,'Soluta libero at ut veniam. Alias et deserunt deleniti ut voluptatem soluta autem. Odio numquam nobis quos sequi quae et recusandae. Nostrum distinctio nam dignissimos harum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(5,'Sustainable Living',0,'Autem dolore deleniti vel tenetur qui quis incidunt. Incidunt adipisci magni non rerum ut ea velit. Quam dolorum tenetur consequuntur vero. Provident dolor quia veniam itaque aperiam illo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(6,'Digital Minimalism',0,'Libero veritatis consequatur et necessitatibus. Perspiciatis provident aut minima sit. Provident distinctio quia ut quam quis earum. In similique dolorum quod repellendus minus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(7,'Simple Home Decor',0,'Est atque est accusantium enim natus. Et vitae qui quo sed natus qui. Id alias fugiat porro vel necessitatibus et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(8,'Minimalist Travel',0,'Aut libero consequuntur et beatae ut odio. Aliquid ullam dignissimos quia est asperiores sint. Dolores cumque at architecto. Beatae qui culpa consequuntur rerum qui accusantium aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(9,'Self-care',0,'Aliquid ut exercitationem amet. Voluptatem et omnis soluta sunt et. Dicta eligendi rerum aut aliquam dolor.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(10,'Personal Growth',0,'Adipisci aliquid quibusdam non nisi et illo. Vero voluptas accusamus eum quisquam. Aut qui maiores consequuntur. Qui commodi laudantium ad fuga et dolor.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-01 23:48:40','2024-04-01 23:48:40');
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
INSERT INTO `contacts` VALUES (1,'Tod Leuschke','pdaniel@example.org','(215) 387-1477','9369 Gislason Meadow Apt. 472\nLake Bettyeburgh, TX 13224','Magni sequi nihil deleniti quas.','Iusto aperiam commodi pariatur in odit. Placeat voluptatum aut est eum. Dolorum exercitationem provident iusto. Deserunt ut quia vitae. Autem et recusandae qui laboriosam. Rerum consectetur sint error eum voluptatem et. A et ea quia facere eos voluptatem. Fugit suscipit omnis dolor architecto. Minus mollitia necessitatibus delectus nobis ut officiis quibusdam. Et numquam soluta non officiis id occaecati.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(2,'Monte Feeney IV','schamberger.stephen@example.net','551-295-9125','1677 Mante Neck\nSouth Marlonland, OR 55981','Suscipit repellendus eaque rerum quis neque.','Expedita rerum quas maxime doloribus veritatis earum porro. Facere rerum quis saepe. Ut assumenda blanditiis sed exercitationem aliquam veritatis tempore. Dolores sit eius laudantium exercitationem eos fugit. Dolorum voluptate eum est velit quis perspiciatis. Odio et iure eligendi perspiciatis ut. Pariatur odit facilis eum est. Adipisci animi consequatur asperiores cumque aspernatur. Quasi quos enim earum itaque. Possimus quis eius placeat autem. Et qui quaerat sed neque libero.','read','2024-04-01 23:48:38','2024-04-01 23:48:38'),(3,'Tyrel Boehm','schowalter.erich@example.net','(424) 482-2483','1091 Elmore Wells Suite 722\nTrystanbury, TN 36080-0869','Labore eligendi iste architecto.','Numquam ut molestiae quis eius non. Sed deleniti voluptate ex ea expedita voluptatem. Quaerat fuga placeat velit ut. Ipsum libero soluta saepe exercitationem est cumque. Ullam dolor rerum blanditiis saepe ea voluptas. Voluptatem ipsa ullam et fugit quas tempore. Porro totam rerum aut est nulla dolor. Nemo voluptatem impedit sunt repudiandae nemo mollitia. Provident perspiciatis occaecati sed eum. Vero delectus est est cum.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(4,'Prof. Oral Hane','owen41@example.com','(817) 625-5604','860 Jacklyn Row\nLake Adaline, AZ 45947-3650','Ea dolores autem fugiat quasi debitis.','Vero perferendis ipsa quam. Cupiditate enim beatae soluta. Adipisci itaque enim ullam est est. Voluptas eligendi ea perferendis unde iure. Corrupti recusandae sed similique. Fugiat eos tempore non optio rerum. Alias totam porro et. Fugit dolorem corporis maiores qui qui. Aut aperiam rerum reprehenderit quo. Voluptas rerum corporis quidem voluptatem.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(5,'Jany Lockman','jonatan.dietrich@example.net','603.530.2031','47322 Frami Vista\nLehnerstad, FL 71881-6769','Expedita eos ut sed.','Repudiandae et voluptatem in architecto ex placeat. Consectetur est aut sit distinctio natus rerum. Qui ducimus aperiam vero sit adipisci veniam voluptatum. Facilis consequatur sed autem. Fuga alias corrupti aperiam beatae. Alias consectetur occaecati sed et. Fugiat commodi tempora quasi fuga. Occaecati non velit laudantium. Magni aut delectus et qui quibusdam voluptas. Pariatur velit velit aut facere. Modi deserunt in blanditiis et eveniet in.','read','2024-04-01 23:48:38','2024-04-01 23:48:38'),(6,'Heloise Nicolas','eichmann.belle@example.org','+1.302.638.0639','125 Courtney Trace Suite 231\nKaceyville, KS 29462-6978','Quis debitis ipsa vitae aliquid saepe.','Optio aut sint sed vitae a illo. Tenetur officiis omnis tenetur veniam consequatur saepe dolores et. Iste voluptas est ut minima doloribus. Quia ut enim velit modi corporis id quidem. Enim voluptatem illum dignissimos aliquid omnis voluptatibus eaque. Ut voluptatem eligendi vel. Nobis mollitia dolore ut exercitationem. Nihil enim perspiciatis sint officia. Nisi ea pariatur sit corrupti est corrupti quo. Rerum repudiandae voluptatem error optio debitis unde soluta.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(7,'Antwan Orn','qreynolds@example.com','+1.321.815.0261','282 Kyla Pass\nNoreneview, KY 46212','Et explicabo necessitatibus rerum autem.','Magnam laudantium ut saepe magni neque eum est. At est quis iste optio sed qui ullam ratione. Qui consequatur illo saepe quasi laudantium. Consectetur provident minima omnis odit. Officia ullam dolorum amet ipsam molestiae nisi voluptatem. Ducimus nulla harum eius earum. Expedita labore et ea nulla. Quod laudantium ut ipsa ut tempore voluptatem ut. Sit sint similique consequatur laboriosam voluptas qui adipisci. Harum aut rerum rerum sequi. Unde esse eius aut sed.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(8,'Angela Harber MD','mitchell.enola@example.com','+1 (484) 537-1542','664 Heidenreich Ferry\nLake Devyn, AK 42750-9409','Aut laborum vel dolor vero.','Libero odit dolor eum libero ea rerum placeat. Mollitia rem beatae totam aut deleniti nemo reprehenderit rerum. Non id odio reprehenderit rerum aliquid. Quidem necessitatibus repellat sequi vero. In minus beatae mollitia minus laboriosam ea. Praesentium et et quibusdam vel. Unde quia numquam iusto nesciunt sit ratione et. Ratione culpa eos ut ea dolores dolores. Quasi sit quo et aspernatur qui. Earum sed quaerat iure. Expedita quos est animi molestiae ea voluptas veniam.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38'),(9,'Dr. Kendra Jacobson V','hettinger.stefan@example.net','+1-737-867-1974','858 Grant Pines Suite 333\nDickensstad, CA 94235','Iste ut laborum accusantium sed praesentium.','Veritatis veritatis voluptatem ut dolor nulla. Recusandae aliquam magni voluptates et. Facere odio libero ad ullam. Repellat qui dolores deleniti quia odit quibusdam non. Ipsa error vel minus sunt neque consequuntur eum sed. Et aliquid ut et ut libero accusantium. Porro unde itaque et debitis eligendi ad eius. Eius veniam mollitia sint et. Voluptate consequuntur quam quisquam nostrum sint blanditiis consectetur. Vel optio asperiores aut enim voluptate. Et aliquid nam inventore et.','read','2024-04-01 23:48:38','2024-04-01 23:48:38'),(10,'Ross Hermann V','dell.zieme@example.com','+1 (541) 807-6043','573 Beatty Freeway\nNorth Ravenhaven, WI 03926-1641','Et nam repellendus voluptates.','Hic aut tempora corporis qui animi. Beatae tenetur sed sunt nesciunt quas. Ullam minus vel qui officia nulla rerum. Qui molestias quia dolores. Quibusdam non possimus culpa molestias assumenda neque sit. Ea laboriosam rerum deserunt sint quia. Nihil reprehenderit molestias facilis cupiditate. Aperiam laborum cupiditate temporibus et sed.','unread','2024-04-01 23:48:38','2024-04-01 23:48:38');
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
INSERT INTO `fob_comments` VALUES (1,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',10,'http://katen.test/minimalism-and-mindfulness-cultivating-presence-in-a-busy-world','Leola Hessel Jr.','unolan@abshire.org','https://friendsofbotble.com','This is really helpful, thank you!','approved','48.116.220.250','Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/4.0)','2024-03-28 15:39:24','2024-04-01 23:48:42'),(2,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Sherman Bailey','sanford.heloise@ortiz.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','202.47.51.188','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/97.0.4176.94 Safari/531.2 Edg/97.01051.19','2024-03-03 13:16:37','2024-04-01 23:48:42'),(3,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Ms. Veda Spinka PhD','lrenner@hegmann.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','210.154.203.126','Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/535.9.5 (KHTML, like Gecko) Version/4.0 Safari/535.9.5','2024-03-16 22:19:27','2024-04-01 23:48:42'),(4,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://katen.test/minimalist-travel-embracing-experiences-over-possessions','Rubie Berge','gene.lakin@yahoo.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','125.102.137.117','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_9) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/88.0.4575.26 Safari/537.1 Edg/88.01113.53','2024-03-31 11:30:08','2024-04-01 23:48:42'),(5,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Gloria Klocko','dibbert.johnathan@king.net','https://friendsofbotble.com','I have a question about the third paragraph.','approved','146.86.226.210','Opera/9.67 (X11; Linux x86_64; sl-SI) Presto/2.8.274 Version/12.00','2024-03-20 07:02:20','2024-04-01 23:48:42'),(6,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Sydni Haley','maurine05@yahoo.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','143.140.222.44','Opera/8.99 (Windows CE; en-US) Presto/2.10.329 Version/12.00','2024-03-12 21:05:08','2024-04-01 23:48:42'),(7,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://katen.test/mindful-consumption-navigating-minimalism-in-a-consumerist-world','Helga Nienow','sedrick.aufderhar@kertzmann.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','182.122.56.207','Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20140129 Firefox/35.0','2024-03-27 02:35:08','2024-04-01 23:48:42'),(8,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Sam Bernhard','schiller.nicole@lebsack.org','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','215.135.253.154','Mozilla/5.0 (Windows NT 5.2) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/86.0.4535.64 Safari/532.2 Edg/86.01031.16','2024-03-14 00:24:12','2024-04-01 23:48:42'),(9,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://katen.test/mindful-consumption-navigating-minimalism-in-a-consumerist-world','Dr. Kariane Daniel','oma15@watsica.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','176.57.23.201','Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/537.1 (KHTML, like Gecko) Version/15.0 EdgiOS/83.01100.13 Mobile/15E148 Safari/537.1','2024-03-11 03:48:46','2024-04-01 23:48:42'),(10,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Mrs. Tracy Cronin PhD','reinhold43@gmail.com','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','65.228.106.235','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_3 rv:6.0; en-US) AppleWebKit/535.47.6 (KHTML, like Gecko) Version/5.1 Safari/535.47.6','2024-03-11 07:38:14','2024-04-01 23:48:42'),(11,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Annabel Connelly','jacobi.amaya@hotmail.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','49.134.3.163','Mozilla/5.0 (compatible; MSIE 11.0; Windows 95; Trident/4.0)','2024-03-22 01:50:31','2024-04-01 23:48:42'),(12,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Mallory Frami','sschumm@gerhold.org','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','69.212.167.189','Mozilla/5.0 (Windows NT 4.0; en-US; rv:1.9.2.20) Gecko/20230917 Firefox/36.0','2024-03-12 19:57:28','2024-04-01 23:48:42'),(13,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://katen.test/the-art-of-decluttering-finding-peace-in-minimalism','Lila Lynch','felix.nolan@gmail.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','41.248.215.209','Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20211124 Firefox/36.0','2024-04-01 10:49:57','2024-04-01 23:48:42'),(14,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://katen.test/the-art-of-decluttering-finding-peace-in-minimalism','Leonora Armstrong','ratke.otis@pfeffer.com','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','17.138.107.196','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.897.0 Mobile Safari/5321','2024-03-19 16:09:13','2024-04-01 23:48:42'),(15,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Bernadette Bergstrom','uschinner@gmail.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','62.138.172.141','Mozilla/5.0 (iPad; CPU OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/534.45.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B113 Safari/6534.45.4','2024-03-13 16:37:18','2024-04-01 23:48:42'),(16,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Kacie Daniel','juwan.cremin@abshire.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','6.9.148.95','Opera/8.61 (X11; Linux x86_64; nl-NL) Presto/2.12.238 Version/10.00','2024-03-05 09:00:38','2024-04-01 23:48:42'),(17,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Columbus Skiles','hassie.gleichner@hotmail.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','143.86.53.136','Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/531.24.3 (KHTML, like Gecko) Version/4.1 Safari/531.24.3','2024-03-08 10:32:48','2024-04-01 23:48:42'),(18,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Imogene Smith II','mabel60@ankunding.info','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','40.226.59.11','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_9 rv:4.0) Gecko/20161215 Firefox/35.0','2024-03-15 19:11:33','2024-04-01 23:48:42'),(19,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Marilou Pfannerstill','willow.heaney@yahoo.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','217.164.191.208','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5351 (KHTML, like Gecko) Chrome/40.0.807.0 Mobile Safari/5351','2024-03-12 01:57:50','2024-04-01 23:48:42'),(20,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Ali Block II','dspencer@casper.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','20.174.231.139','Opera/8.23 (X11; Linux x86_64; nl-NL) Presto/2.8.298 Version/11.00','2024-03-04 16:01:56','2024-04-01 23:48:42'),(21,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Dallin Kshlerin','maida.ritchie@marquardt.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','17.157.138.1','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.809.0 Mobile Safari/5341','2024-03-28 08:51:00','2024-04-01 23:48:42'),(22,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Destin Strosin','wlesch@conn.info','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','204.19.185.168','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5322 (KHTML, like Gecko) Chrome/39.0.868.0 Mobile Safari/5322','2024-03-31 03:35:44','2024-04-01 23:48:42'),(23,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',10,'http://katen.test/minimalism-and-mindfulness-cultivating-presence-in-a-busy-world','Miss Sunny Fisher','edwardo.balistreri@gmail.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','203.94.16.237','Opera/8.22 (X11; Linux i686; sl-SI) Presto/2.10.161 Version/11.00','2024-03-07 21:12:21','2024-04-01 23:48:42'),(24,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://katen.test/the-art-of-decluttering-finding-peace-in-minimalism','Adelle O\'Keefe','carlee02@hotmail.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','2.42.4.166','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5330 (KHTML, like Gecko) Chrome/37.0.834.0 Mobile Safari/5330','2024-03-26 01:31:10','2024-04-01 23:48:42'),(25,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Lurline Kovacek','xmoen@yahoo.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','35.14.200.91','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident/3.0)','2024-03-03 21:23:59','2024-04-01 23:48:42'),(26,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Dr. Darien Schoen','joan.brekke@gaylord.info','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','178.194.88.94','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:5.0; en-US) AppleWebKit/533.11.4 (KHTML, like Gecko) Version/4.1 Safari/533.11.4','2024-03-11 18:50:34','2024-04-01 23:48:42'),(27,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',10,'http://katen.test/minimalism-and-mindfulness-cultivating-presence-in-a-busy-world','Iva Weissnat','casper.chase@spencer.biz','https://friendsofbotble.com','This article made me think critically about the topic.','approved','146.105.4.105','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/37.0.851.0 Mobile Safari/5312','2024-03-20 18:20:51','2024-04-01 23:48:42'),(28,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://katen.test/the-art-of-decluttering-finding-peace-in-minimalism','Isobel Hartmann','eokon@bednar.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','204.59.102.52','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_1 rv:5.0) Gecko/20100121 Firefox/37.0','2024-03-15 01:35:49','2024-04-01 23:48:42'),(29,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Lupe Rogahn Jr.','carole.kuvalis@stark.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','133.198.50.235','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/3.1)','2024-03-18 12:44:17','2024-04-01 23:48:42'),(30,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Caterina Barrows','lorenz.bayer@hartmann.org','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','185.221.93.50','Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; nl-NL) AppleWebKit/533.18.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6533.18.7','2024-03-08 10:05:17','2024-04-01 23:48:42'),(31,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Miss Michele Huels','zhomenick@trantow.biz','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','97.37.164.216','Mozilla/5.0 (Windows NT 5.01; nl-NL; rv:1.9.1.20) Gecko/20190917 Firefox/36.0','2024-03-20 01:11:00','2024-04-01 23:48:42'),(32,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://katen.test/minimalist-wardrobe-essentials-building-a-capsule-closet','Roman Bernhard','pfeffer.dominique@yahoo.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','52.50.6.230','Opera/8.17 (X11; Linux x86_64; en-US) Presto/2.12.288 Version/12.00','2024-03-24 16:22:12','2024-04-01 23:48:42'),(33,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Brant Bayer','hgleichner@wunsch.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','20.228.253.57','Mozilla/5.0 (X11; Linux i686) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/82.0.4599.11 Safari/535.1 EdgA/82.01013.9','2024-03-02 00:17:20','2024-04-01 23:48:42'),(34,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',7,'http://katen.test/minimalism-and-mental-health-finding-clarity-amidst-chaos','Rickie Murray','icorkery@west.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','71.141.128.35','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.0; Trident/4.0)','2024-03-08 13:13:09','2024-04-01 23:48:42'),(35,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Stephon Williamson','audie.corkery@padberg.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','2.43.88.251','Opera/9.84 (Windows NT 6.0; nl-NL) Presto/2.11.178 Version/12.00','2024-03-17 20:15:39','2024-04-01 23:48:42'),(36,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://katen.test/minimalism-in-everyday-life-small-changes-big-impact','Alison Ernser','lela.conn@jerde.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','239.7.114.149','Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; sl-SI) AppleWebKit/534.33.6 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6534.33.6','2024-03-20 11:54:39','2024-04-01 23:48:42'),(37,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://katen.test/minimalist-travel-embracing-experiences-over-possessions','Miss Graciela Shanahan','marilie11@hermann.net','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','110.237.253.67','Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/531.27.2 (KHTML, like Gecko) Version/5.0.2 Safari/531.27.2','2024-03-31 03:53:10','2024-04-01 23:48:42'),(38,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Connor Wisoky','gshanahan@hintz.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','219.108.55.91','Opera/9.33 (Windows NT 6.0; sl-SI) Presto/2.9.195 Version/10.00','2024-03-05 15:27:11','2024-04-01 23:48:42'),(39,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://katen.test/the-art-of-decluttering-finding-peace-in-minimalism','Madisen Greenfelder','ehirthe@gmail.com','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','196.82.93.169','Opera/8.37 (X11; Linux i686; en-US) Presto/2.12.255 Version/10.00','2024-03-24 19:44:02','2024-04-01 23:48:42'),(40,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://katen.test/minimalist-home-design-creating-serenity-in-small-spaces','Prof. Jadon Conroy I','bruen.erich@yahoo.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','143.141.227.76','Opera/9.32 (Windows NT 6.2; sl-SI) Presto/2.11.325 Version/11.00','2024-03-28 06:11:06','2024-04-01 23:48:42'),(41,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://katen.test/mindful-consumption-navigating-minimalism-in-a-consumerist-world','Percival Brakus','jena04@hotmail.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','200.94.103.220','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.2; Trident/5.0)','2024-03-25 18:55:42','2024-04-01 23:48:42'),(42,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Gina Schneider','marcellus80@gmail.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','14.37.86.173','Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/40.0.808.0 Mobile Safari/5362','2024-03-29 07:27:25','2024-04-01 23:48:42'),(43,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Keenan Pacocha II','borer.margot@yahoo.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','82.104.173.133','Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/4.0)','2024-03-08 10:12:46','2024-04-01 23:48:42'),(44,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Casimer Fritsch','wkiehn@runolfsson.org','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','72.139.150.140','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.884.0 Mobile Safari/5321','2024-03-15 03:44:46','2024-04-01 23:48:42'),(45,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',7,'http://katen.test/minimalism-and-mental-health-finding-clarity-amidst-chaos','Crawford Brakus PhD','dmante@dach.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','186.40.65.223','Opera/9.45 (X11; Linux x86_64; nl-NL) Presto/2.11.170 Version/12.00','2024-03-27 12:33:16','2024-04-01 23:48:42'),(46,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://katen.test/digital-minimalism-streamlining-your-tech-life-for-greater-productivity','Benny Gerlach','dickinson.keira@gmail.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','98.100.207.246','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5332 (KHTML, like Gecko) Chrome/37.0.856.0 Mobile Safari/5332','2024-03-27 10:59:04','2024-04-01 23:48:42'),(47,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://katen.test/embracing-simplicity-my-journey-to-minimalist-living','Mia Zboncak','johan15@yahoo.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','217.166.41.165','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/40.0.858.0 Mobile Safari/5342','2024-03-31 23:13:37','2024-04-01 23:48:42');
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
INSERT INTO `galleries` VALUES (1,'Perfect','Ipsa enim dolor corporis dolores. Omnis et omnis quia quia in assumenda perferendis qui.',0,0,'main/galleries/1.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(2,'New Day','Ipsam unde dignissimos nesciunt. Aut cumque et ut odio.',0,0,'main/galleries/2.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(3,'Happy Day','Enim quo nihil rerum qui reiciendis et. Alias qui nobis nulla qui magnam. Odio veritatis praesentium expedita ut. Maiores sunt adipisci sed.',0,0,'main/galleries/3.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(4,'Nature','Dolorum enim qui placeat. Dolores laudantium cumque repellat a ut quia.',0,0,'main/galleries/4.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(5,'Morning','Cupiditate nemo et quaerat sit. Blanditiis sint animi nobis magnam. Enim beatae qui omnis reiciendis recusandae rerum.',0,0,'main/galleries/5.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(6,'Sunset','Quod voluptas officiis deleniti. Sunt ut itaque omnis et. Praesentium repudiandae nisi tenetur dicta.',0,0,'main/galleries/6.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(7,'Ocean Views','Non maxime quis a aliquid. Et sunt et quo sed eos ex. Consequatur voluptate aliquid nisi. Aut sunt labore voluptatibus quasi error ut.',0,0,'main/galleries/7.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42'),(8,'Adventure Time','Ex ea quia et. Tempore occaecati consequuntur temporibus. Enim similique minus fugit aut.',0,0,'main/galleries/8.jpg',1,'published','2024-04-01 23:48:42','2024-04-01 23:48:42');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(2,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(3,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(4,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(5,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(6,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(7,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42'),(8,'[{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"main\\/galleries\\/8.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-04-01 23:48:42','2024-04-01 23:48:42');
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
INSERT INTO `language_meta` VALUES (1,'en_US','69c5c16d06c65e0aeb7a95df106ce9e4',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','dd9181b2e119233370cd988cf1a6a2c9',1,'Botble\\Menu\\Models\\Menu');
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
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'favicon','favicon',2,'image/png',4190,'main/general/favicon.png','[]','2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(2,0,'hero','hero',2,'image/jpeg',345815,'main/general/hero.jpg','[]','2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(3,0,'logo-alt','logo-alt',2,'image/png',1450,'main/general/logo-alt.png','[]','2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(4,0,'logo','logo',2,'image/png',2266,'main/general/logo.png','[]','2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(5,0,'newsletter-popup','newsletter-popup',2,'image/jpeg',85995,'main/general/newsletter-popup.jpg','[]','2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(6,0,'1','1',3,'image/jpeg',9803,'main/members/1.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(7,0,'10','10',3,'image/jpeg',9803,'main/members/10.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(8,0,'11','11',3,'image/jpeg',9803,'main/members/11.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(9,0,'2','2',3,'image/jpeg',9803,'main/members/2.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(10,0,'3','3',3,'image/jpeg',9803,'main/members/3.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(11,0,'3-1','3-1',3,'image/png',9803,'main/members/3-1.png','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(12,0,'4','4',3,'image/jpeg',9803,'main/members/4.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(13,0,'5','5',3,'image/jpeg',9803,'main/members/5.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(14,0,'6','6',3,'image/jpeg',9803,'main/members/6.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(15,0,'7','7',3,'image/jpeg',9803,'main/members/7.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(16,0,'8','8',3,'image/jpeg',9803,'main/members/8.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(17,0,'9','9',3,'image/jpeg',9803,'main/members/9.jpg','[]','2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(18,0,'1','1',4,'image/jpeg',33268,'main/news/1.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(19,0,'10','10',4,'image/jpeg',33268,'main/news/10.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(20,0,'2','2',4,'image/jpeg',33268,'main/news/2.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(21,0,'3','3',4,'image/jpeg',33268,'main/news/3.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(22,0,'4','4',4,'image/jpeg',33268,'main/news/4.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(23,0,'5','5',4,'image/jpeg',33268,'main/news/5.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(24,0,'6','6',4,'image/jpeg',33268,'main/news/6.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(25,0,'7','7',4,'image/jpeg',33268,'main/news/7.jpg','[]','2024-04-01 23:48:39','2024-04-01 23:48:39',NULL),(26,0,'8','8',4,'image/jpeg',33268,'main/news/8.jpg','[]','2024-04-01 23:48:40','2024-04-01 23:48:40',NULL),(27,0,'9','9',4,'image/jpeg',33268,'main/news/9.jpg','[]','2024-04-01 23:48:40','2024-04-01 23:48:40',NULL),(28,0,'cover-image','cover-image',4,'image/jpeg',33268,'main/news/cover-image.jpg','[]','2024-04-01 23:48:40','2024-04-01 23:48:40',NULL),(29,0,'map-bg','map-bg',5,'image/png',235417,'main/backgrounds/map-bg.png','[]','2024-04-01 23:48:40','2024-04-01 23:48:40',NULL),(30,0,'1','1',6,'image/jpeg',33268,'main/galleries/1.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(31,0,'2','2',6,'image/jpeg',33268,'main/galleries/2.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(32,0,'3','3',6,'image/jpeg',33268,'main/galleries/3.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(33,0,'4','4',6,'image/jpeg',33268,'main/galleries/4.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(34,0,'5','5',6,'image/jpeg',33268,'main/galleries/5.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(35,0,'6','6',6,'image/jpeg',33268,'main/galleries/6.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(36,0,'7','7',6,'image/jpeg',33268,'main/galleries/7.jpg','[]','2024-04-01 23:48:41','2024-04-01 23:48:41',NULL),(37,0,'8','8',6,'image/jpeg',33268,'main/galleries/8.jpg','[]','2024-04-01 23:48:42','2024-04-01 23:48:42',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(2,0,'general',NULL,'general',1,'2024-04-01 23:48:35','2024-04-01 23:48:35',NULL),(3,0,'members',NULL,'members',1,'2024-04-01 23:48:36','2024-04-01 23:48:36',NULL),(4,0,'news',NULL,'news',1,'2024-04-01 23:48:38','2024-04-01 23:48:38',NULL),(5,0,'backgrounds',NULL,'backgrounds',1,'2024-04-01 23:48:40','2024-04-01 23:48:40',NULL),(6,0,'galleries',NULL,'galleries',1,'2024-04-01 23:48:41','2024-04-01 23:48:41',NULL);
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
INSERT INTO `members` VALUES (1,'John','Smith','TWO little shrieks, and more.',NULL,'member@archielite.com','$2y$12$mFhcdL7gXCVDtlqtXGXxTeCbAifXfxmwwAOyfaqdbAs8SNuYu0hu6',6,'2002-05-25','863-826-7563','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:37','2024-04-01 23:48:37','published'),(2,'Beryl','Heathcote','Hi, I’m Beryl Heathcote, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'nels.swift@yahoo.com','$2y$12$2wgf83NUWehBxYSj/HHm4.LRq9H/a1ttKgXagRYQYUw/824WmlQfG',7,'1997-11-29','+1-772-395-5885','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:37','2024-04-01 23:48:37','published'),(3,'Ulices','Schmidt','Hi, I’m Ulices Schmidt, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'ugoldner@gmail.com','$2y$12$Gwfe7auvXnlP//62jVmfBu/bkrcpF2UL4JoefkHcsWn4k0ca/8zay',8,'2017-01-21','260.800.1696','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:37','2024-04-01 23:48:37','published'),(4,'Darien','Trantow','Hi, I’m Darien Trantow, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'terence96@hotmail.com','$2y$12$95/osFdRvQpR8EeqbZUO.e3Aazhwqh1h9CiRGRY32O7vv9ONQ0d4K',9,'2023-08-04','1-979-914-0208','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:37','2024-04-01 23:48:37','published'),(5,'Sheila','Marquardt','Hi, I’m Sheila Marquardt, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'fluettgen@yahoo.com','$2y$12$q2ywbBvWDB9O0nCCRlx26es1Dp.eO89DXGQJW1OFC/KMrwx1bFlKe',10,'1996-01-15','930.422.4627','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:38','2024-04-01 23:48:38','published'),(6,'Josie','Frami','Hi, I’m Josie Frami, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'lonnie.welch@wisozk.com','$2y$12$TUe3/AVbumL7QYOGYn6FhuGtagw02iSB1U4UYy/CGKEvLrmI1YSf6',11,'1991-11-02','909.832.0354','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:38','2024-04-01 23:48:38','published'),(7,'Lorenza','Nader','Hi, I’m Lorenza Nader, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'brisa69@hotmail.com','$2y$12$VhDmotThBDPOYgbzuLAjDe0FlKI2M0l8q3WjTFT4W84vJFKFM.gVq',12,'2017-03-02','1-660-579-2504','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:38','2024-04-01 23:48:38','published'),(8,'Grant','Kulas','Hi, I’m Grant Kulas, Your Blogging Journey Guide 🖋️. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let’s bring your thoughts to life on these digital pages. 🌟 #BloggingAdventures',NULL,'afton35@hotmail.com','$2y$12$PGlmX/Tvd/Byty.DSCZip.HP4GwR0RyvXCln7eLGelwRXNOKisg9u',13,'1977-03-12','386.410.8696','2024-04-02 06:48:36',NULL,NULL,'2024-04-01 23:48:38','2024-04-01 23:48:38','published');
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
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-01 23:48:38','2024-04-01 23:48:38');
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
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(2,1,1,NULL,NULL,'https://katen.archielite.com',NULL,0,'Magazine',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(3,1,1,NULL,NULL,'https://katen-personal.archielite.com',NULL,0,'Personal',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(4,1,1,NULL,NULL,'https://katen-personal-alt.archielite.com',NULL,0,'Personal Alt',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(5,1,1,NULL,NULL,'https://katen-minimal.archielite.com',NULL,0,'Minimal',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(6,1,1,NULL,NULL,'https://katen-classic.archielite.com',NULL,0,'Classic',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(7,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(8,1,0,NULL,NULL,'#',NULL,0,'Blog',NULL,'_self',1,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(9,1,8,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(10,1,8,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(11,1,8,2,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Blog Post Single (Has Cover)',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(12,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(13,1,12,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(14,1,12,6,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(15,1,12,7,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(16,1,12,5,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38'),(17,1,12,3,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact Us',NULL,'_self',0,'2024-04-01 23:48:38','2024-04-01 23:48:38');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-01 23:48:38','2024-04-01 23:48:38');
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
INSERT INTO `meta_boxes` VALUES (1,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',1,'Botble\\Member\\Models\\Member','2024-04-01 23:48:37','2024-04-01 23:48:37'),(2,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',2,'Botble\\Member\\Models\\Member','2024-04-01 23:48:37','2024-04-01 23:48:37'),(3,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',3,'Botble\\Member\\Models\\Member','2024-04-01 23:48:37','2024-04-01 23:48:37'),(4,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',4,'Botble\\Member\\Models\\Member','2024-04-01 23:48:37','2024-04-01 23:48:37'),(5,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',5,'Botble\\Member\\Models\\Member','2024-04-01 23:48:38','2024-04-01 23:48:38'),(6,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',6,'Botble\\Member\\Models\\Member','2024-04-01 23:48:38','2024-04-01 23:48:38'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',7,'Botble\\Member\\Models\\Member','2024-04-01 23:48:38','2024-04-01 23:48:38'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]]',8,'Botble\\Member\\Models\\Member','2024-04-01 23:48:38','2024-04-01 23:48:38'),(9,'cover_image','[\"main\\/news\\/cover-image.jpg\"]',2,'Botble\\Blog\\Models\\Post','2024-04-01 23:48:40','2024-04-01 23:48:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2015_08_15_122343_create_notes_table',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_03_032336_create_languages_table',1),(14,'2016_10_05_074239_create_setting_table',1),(15,'2016_10_07_193005_create_translations_table',1),(16,'2016_10_13_150201_create_galleries_table',1),(17,'2016_11_28_032840_create_dashboard_widget_tables',1),(18,'2016_12_16_084601_create_widgets_table',1),(19,'2017_05_09_070343_create_media_tables',1),(20,'2017_10_04_140938_create_member_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2019_01_05_053554_create_jobs_table',1),(24,'2019_08_19_000000_create_failed_jobs_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_02_16_092633_remove_default_value_for_author_type',1),(28,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(29,'2021_12_02_035301_add_ads_translations_table',1),(30,'2021_12_03_030600_create_blog_translations',1),(31,'2021_12_03_075608_create_page_translations',1),(32,'2021_12_03_082953_create_gallery_translations',1),(33,'2022_04_19_113923_add_index_to_table_posts',1),(34,'2022_04_20_100851_add_index_to_media_table',1),(35,'2022_04_20_101046_add_index_to_menu_table',1),(36,'2022_04_30_034048_create_gallery_meta_translations_table',1),(37,'2022_07_10_034813_move_lang_folder_to_root',1),(38,'2022_08_04_051940_add_missing_column_expires_at',1),(39,'2022_09_01_000001_create_admin_notifications_tables',1),(40,'2022_10_14_024629_drop_column_is_featured',1),(41,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(42,'2022_12_02_093615_update_slug_index_columns',1),(43,'2023_01_30_024431_add_alt_to_media_table',1),(44,'2023_02_16_042611_drop_table_password_resets',1),(45,'2023_04_17_062645_add_open_in_new_tab',1),(46,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(47,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(48,'2023_07_06_011444_create_slug_translations_table',1),(49,'2023_08_11_060908_create_announcements_table',1),(50,'2023_08_21_090810_make_page_content_nullable',1),(51,'2023_08_29_074620_make_column_author_id_nullable',1),(52,'2023_08_29_075308_make_column_user_id_nullable',1),(53,'2023_09_14_021936_update_index_for_slugs_table',1),(54,'2023_09_14_022423_add_index_for_language_table',1),(55,'2023_10_16_075332_add_status_column',1),(56,'2023_11_07_023805_add_tablet_mobile_image',1),(57,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(58,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(59,'2023_12_06_100448_change_random_hash_for_media',1),(60,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(61,'2023_12_12_105220_drop_translations_table',1),(62,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(63,'2024_01_16_050056_create_comments_table',1),(64,'2024_03_13_042350_migrate_newsletter_data',1),(65,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(66,'2024_03_25_000001_update_captcha_settings',1),(67,'2024_03_25_000001_update_captcha_settings_for_contact',1),(68,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(69,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1);
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
INSERT INTO `pages` VALUES (1,'Homepage','',1,NULL,'homepage',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(2,'Blog','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(3,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" title=\"Send Message\" quantity=\"3\" title_1=\"Phone\" icon_1=\"ti ti-phone\" description_1=\"+1-202-555-0135\" url_1=\"tel:+1-202-555-0135\" open_in_new_tab_1=\"no\" title_2=\"E-Mail\" description_2=\"hello@example.com\" url_2=\"mailto:hello@example.com\" open_in_new_tab_2=\"yes\" icon_2=\"ti ti-mail\" title_3=\"Location\" description_3=\"California, USA\" open_in_new_tab_3=\"yes\" icon_3=\"ti ti-map\"][/contact-form]',1,NULL,'no-sidebar',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(4,'About Us','<h3>Random Content</h3><p>This is a random content that will be displayed on the page.</p>',1,NULL,'default',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(5,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(6,'Terms Of Use','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38'),(7,'Privacy Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'no-sidebar',NULL,'published','2024-04-01 23:48:38','2024-04-01 23:48:38');
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
INSERT INTO `post_categories` VALUES (1,1),(3,1),(1,2),(2,2),(4,3),(6,3),(1,4),(8,4),(5,5),(10,5),(8,6),(7,6),(9,7),(8,7),(4,8),(6,8),(3,9),(2,9),(1,10),(5,10);
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
INSERT INTO `post_tags` VALUES (8,1),(1,1),(10,2),(2,2),(2,3),(4,3),(6,3),(5,4),(9,4),(10,4),(8,5),(1,5),(3,6),(4,6),(7,6),(3,7),(8,7),(3,8),(9,8),(7,8),(8,9),(1,9),(2,9),(10,10),(8,10),(2,10);
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
INSERT INTO `posts` VALUES (1,'Embracing Simplicity: My Journey to Minimalist Living','Discover how I simplified my life and found greater joy through minimalism, one step at a time.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/1.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/5.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/4.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',8,'Botble\\Member\\Models\\Member',1,'main/news/1.jpg',145,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(2,'Minimalism in Everyday Life: Small Changes, Big Impact','Explore practical tips and strategies for integrating minimalism into your daily routine and experiencing its transformative effects.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/10.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/2.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/6.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',3,'Botble\\Member\\Models\\Member',1,'main/news/2.jpg',1393,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(3,'The Art of Decluttering: Finding Peace in Minimalism','Learn how decluttering your physical and mental space can lead to a more serene and fulfilling life, free from excess.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/9.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/3.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/6.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'main/news/3.jpg',1186,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(4,'Minimalist Wardrobe Essentials: Building a Capsule Closet','Uncover the key pieces and timeless styles that form the foundation of a minimalist wardrobe, allowing for effortless elegance every day.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/3.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/4.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/8.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',2,'Botble\\Member\\Models\\Member',1,'main/news/4.jpg',779,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(5,'Mindful Consumption: Navigating Minimalism in a Consumerist World','Delve into the principles of mindful consumption and discover how embracing minimalism can foster a healthier relationship with material possessions.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/6.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/5.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',4,'Botble\\Member\\Models\\Member',1,'main/news/5.jpg',2465,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(6,'Minimalist Home Design: Creating Serenity in Small Spaces','Explore minimalist home decor ideas and space-saving solutions to cultivate a tranquil living environment that nurtures simplicity and harmony.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/4.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/6.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/10.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',4,'Botble\\Member\\Models\\Member',1,'main/news/6.jpg',995,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(7,'Minimalism and Mental Health: Finding Clarity Amidst Chaos','Discover the profound impact of minimalist practices on mental well-being, as we explore how simplifying life can lead to greater clarity and inner peace.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/10.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/3.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/8.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',1,'Botble\\Member\\Models\\Member',1,'main/news/7.jpg',2360,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(8,'Digital Minimalism: Streamlining Your Tech Life for Greater Productivity','Learn how to minimize digital clutter and distractions, optimizing your use of technology to enhance focus, creativity, and productivity.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/6.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/4.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/4.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',2,'Botble\\Member\\Models\\Member',1,'main/news/8.jpg',460,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(9,'Minimalist Travel: Embracing Experiences Over Possessions','Embark on a journey of minimalist travel and discover the joys of exploring the world with only the essentials, prioritizing meaningful experiences over material possessions.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/8.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/1.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/9.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'main/news/9.jpg',652,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40'),(10,'Minimalism and Mindfulness: Cultivating Presence in a Busy World','Explore the intersection of minimalism and mindfulness, and learn how embracing simplicity can facilitate a deeper connection to the present moment and a more fulfilling life.','<div class=\"featured-image\">\n    <img src=\"http://katen.test/storage/main/news/10.jpg\" alt=\"post-title\" />\n</div>\n\n<div class=\"post-content clearfix\">\n    <p>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same <a href=\"#\">vocabulary</a>. The languages only differ in their grammar, their pronunciation and their most common words.</p>\n\n    <p>Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it <mark>would be</mark> necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <figure class=\"figure\">\n        <img src=\"http://katen.test/storage/main/news/5.jpg\" class=\"figure-img img-fluid rounded\" alt=\"...\">\n        <figcaption class=\"figure-caption text-center\">A caption for the above image.</figcaption>\n    </figure>\n\n    <p>The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable.</p>\n\n    <img src=\"http://katen.test/storage/main/news/6.jpg\" class=\"rounded alignleft\" alt=\"...\">\n    <p>One could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>\n\n    <p>If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing <a href=\"#\">European languages</a>. It will be as simple as Occidental; in fact, it will be Occidental.</p>\n\n    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>\n\n    <h4>I should be incapable of drawing a single stroke</h4>\n\n    <ul>\n        <li>How about if I sleep a little bit</li>\n        <li>A collection of textile samples lay spread out</li>\n        <li>His many legs, pitifully thin compared with</li>\n        <li>He lay on his armour-like back</li>\n        <li> Gregor Samsa woke from troubled dreams</li>\n    </ul>\n\n    <p>To an English person, it will seem like simplified <a href=\"#\">English</a>, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary.</p>\n</div>\n','published',6,'Botble\\Member\\Models\\Member',1,'main/news/10.jpg',290,NULL,'2024-04-01 23:48:40','2024-04-01 23:48:40');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"systems.cronjob\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-01 23:48:36','2024-04-01 23:48:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','a3d4ae2a7e317509d9b752b3e4d33c76',NULL,'2024-04-01 23:48:38'),(2,'api_enabled','0',NULL,'2024-04-01 23:48:38'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"member\",\"newsletter\",\"note\",\"request-log\",\"rss-feed\",\"social-login\",\"translation\"]',NULL,'2024-04-01 23:48:38'),(4,'theme','katen',NULL,'2024-04-01 23:48:38'),(5,'show_admin_bar','1',NULL,'2024-04-01 23:48:38'),(6,'announcement_max_width','1140',NULL,'2024-04-01 23:48:38'),(7,'announcement_text_color','#F9F9F9',NULL,'2024-04-01 23:48:38'),(8,'announcement_background_color','#FE4F70',NULL,'2024-04-01 23:48:38'),(9,'announcement_text_alignment','start',NULL,'2024-04-01 23:48:38'),(10,'announcement_dismissible','1',NULL,'2024-04-01 23:48:38'),(11,'language_hide_default','1',NULL,'2024-04-01 23:48:38'),(12,'language_switcher_display','dropdown',NULL,'2024-04-01 23:48:38'),(13,'language_display','all',NULL,'2024-04-01 23:48:38'),(14,'language_hide_languages','[]',NULL,'2024-04-01 23:48:38'),(15,'theme-katen-site_title','Katen - Minimal Blog & Magazine',NULL,NULL),(16,'theme-katen-seo_description','Katen is a modern, clean, and professional Laravel script suitable for a minimal blog and magazine website.',NULL,NULL),(17,'theme-katen-copyright','©%Y Archi Elite JSC. All Rights Reserved.',NULL,NULL),(18,'theme-katen-favicon','main/general/favicon.png',NULL,NULL),(19,'theme-katen-logo','main/general/logo.png',NULL,NULL),(20,'theme-katen-logo_height','25px',NULL,NULL),(21,'theme-katen-primary_font','Roboto',NULL,NULL),(22,'theme-katen-heading_font','Poppins',NULL,NULL),(23,'theme-katen-gradient_from','#FE4F70',NULL,NULL),(24,'theme-katen-gradient_to','#FFA387',NULL,NULL),(25,'theme-katen-primary_color','#FE4F70',NULL,NULL),(26,'theme-katen-secondary_color','#FFA387',NULL,NULL),(27,'theme-katen-text_color','#8F9BAD',NULL,NULL),(28,'theme-katen-homepage_id','1',NULL,NULL),(29,'theme-katen-blog_page_id','1',NULL,NULL),(30,'theme-katen-preloader_enabled','no',NULL,NULL),(31,'theme-katen-preloader_version','v2',NULL,NULL),(32,'theme-katen-lazy_load_images','1',NULL,NULL),(33,'theme-katen-lazy_load_placeholder_image','main/general/favicon.png',NULL,NULL),(34,'theme-katen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}],[{\"key\":\"name\",\"value\":\"Pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(35,'theme-katen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(36,'theme-katen-newsletter_popup_enable','1',NULL,NULL),(37,'theme-katen-newsletter_popup_image','main/general/newsletter-popup.jpg',NULL,NULL),(38,'theme-katen-newsletter_popup_title','Subscribe Now',NULL,NULL),(39,'theme-katen-newsletter_popup_subtitle','Newsletter',NULL,NULL),(40,'theme-katen-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(41,'theme-katen-header_style','2',NULL,NULL);
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
INSERT INTO `slugs` VALUES (1,'john-smith',1,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(2,'beryl-heathcote',2,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(3,'ulices-schmidt',3,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(4,'darien-trantow',4,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(5,'sheila-marquardt',5,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(6,'josie-frami',6,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(7,'lorenza-nader',7,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(8,'grant-kulas',8,'Botble\\Member\\Models\\Member','author','2024-04-01 23:48:38','2024-04-01 23:48:38'),(9,'homepage',1,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(10,'blog',2,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(11,'contact-us',3,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(12,'about-us',4,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(13,'cookie-policy',5,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(14,'terms-of-use',6,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(15,'privacy-policy',7,'Botble\\Page\\Models\\Page','','2024-04-01 23:48:38','2024-04-01 23:48:38'),(16,'minimalist-living',1,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(17,'decluttering',2,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(18,'minimalist-wardrobe',3,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(19,'mindfulness',4,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(20,'sustainable-living',5,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(21,'digital-minimalism',6,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(22,'simple-home-decor',7,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(23,'minimalist-travel',8,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(24,'self-care',9,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(25,'personal-growth',10,'Botble\\Blog\\Models\\Category','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(26,'minimalism',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(27,'simplicity',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(28,'mindfulness',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(29,'wellness',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(30,'minimalist-fashion',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(31,'organization',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(32,'sustainability',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(33,'digital-detox',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(34,'travel',9,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(35,'self-reflection',10,'Botble\\Blog\\Models\\Tag','tag','2024-04-01 23:48:40','2024-04-01 23:48:40'),(36,'embracing-simplicity-my-journey-to-minimalist-living',1,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(37,'minimalism-in-everyday-life-small-changes-big-impact',2,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(38,'the-art-of-decluttering-finding-peace-in-minimalism',3,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(39,'minimalist-wardrobe-essentials-building-a-capsule-closet',4,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(40,'mindful-consumption-navigating-minimalism-in-a-consumerist-world',5,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(41,'minimalist-home-design-creating-serenity-in-small-spaces',6,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(42,'minimalism-and-mental-health-finding-clarity-amidst-chaos',7,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(43,'digital-minimalism-streamlining-your-tech-life-for-greater-productivity',8,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(44,'minimalist-travel-embracing-experiences-over-possessions',9,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(45,'minimalism-and-mindfulness-cultivating-presence-in-a-busy-world',10,'Botble\\Blog\\Models\\Post','','2024-04-01 23:48:40','2024-04-01 23:48:40'),(46,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(47,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(48,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(49,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(50,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(51,'sunset',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(52,'ocean-views',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42'),(53,'adventure-time',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-01 23:48:42','2024-04-01 23:48:42');
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
INSERT INTO `tags` VALUES (1,'Minimalism',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(2,'Simplicity',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(3,'Mindfulness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(4,'Wellness',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(5,'Minimalist Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(6,'Organization',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(7,'Sustainability',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(8,'Digital Detox',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(9,'Travel',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40'),(10,'Self-Reflection',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-01 23:48:40','2024-04-01 23:48:40');
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
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'lkessler@gerlach.com',NULL,'$2y$12$A2NLql./W6w4/Anll9OfmuZ5rPl/PGKTJCOdxCbNT3Q0UPYdQZCPK',NULL,'2024-04-01 23:48:36','2024-04-01 23:48:36','Wade','Franecki','admin',NULL,1,1,NULL,NULL);
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
INSERT INTO `widgets` VALUES (1,'SiteCopyrightWidget','bottom_footer_sidebar','katen',1,'[]','2024-04-01 23:48:41','2024-04-01 23:48:41'),(2,'SocialLinksWidget','bottom_footer_sidebar','katen',2,'[]','2024-04-01 23:48:41','2024-04-01 23:48:41'),(3,'SocialLinksWidget','primary_sidebar','katen',0,'{\"style\":\"style-2\",\"description\":\"Hello, We\\u2019re content writer who is fascinated by content fashion, celebrity and lifestyle. We helps clients bring the right content to the right people.\",\"background_image\":\"main\\/backgrounds\\/map-bg.png\"}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(4,'BackToTopWidget','bottom_footer_sidebar','katen',3,'[]','2024-04-01 23:48:41','2024-04-01 23:48:41'),(5,'GalleriesWidget','top_footer_sidebar','katen',1,'{\"button_label\":\"@Katen on Instagram\",\"button_url\":\"\\/\",\"limit\":6}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(6,'SocialLinksWidget','header_sidebar','katen',1,'[]','2024-04-01 23:48:41','2024-04-01 23:48:41'),(7,'SocialLinksWidget','menu_sidebar','katen',1,'[]','2024-04-01 23:48:41','2024-04-01 23:48:41'),(8,'BlogPostsWidget','primary_sidebar','katen',1,'{\"types\":[\"popular\",\"recent\"],\"limit\":4,\"category_ids\":[1,3,7]}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(9,'BlogCategoriesWidget','primary_sidebar','katen',2,'{\"title\":\"Explore Topics\",\"category_ids\":[1,2,3,4,5]}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(10,'BlogTagsWidget','primary_sidebar','katen',3,'{\"name\":\"Tag Clouds\",\"number_display\":5}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(11,'NewsletterWidget','primary_sidebar','katen',3,'{\"title\":\"Newsletter\",\"subtitle\":\"Join 70,000 subscribers!\",\"description\":\"By signing up, you agree to our Privacy Policy\"}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(12,'BlogPostsWidget','primary_sidebar','katen',5,'{\"title\":\"Celebration\",\"limit\":5,\"category_ids\":[1,2,4,5],\"style\":\"style-2\"}','2024-04-01 23:48:41','2024-04-01 23:48:41'),(13,'BlogPostsWidget','homepage_sidebar','katen',1,'{\"title\":\"\",\"limit\":6,\"category_ids\":[1,2,4,5,6,7,8,9,10],\"style\":\"style-3\"}','2024-04-01 23:48:41','2024-04-01 23:48:41');
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

-- Dump completed on 2024-04-02 13:48:42
