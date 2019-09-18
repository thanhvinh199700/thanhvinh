-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Apple',0,1,'2019-07-17 04:19:14','2019-07-17 04:19:14'),(2,'Samsung',0,1,'2019-07-17 04:19:36','2019-07-17 04:19:36'),(3,'Nokia',0,1,'2019-07-17 04:19:42','2019-07-17 06:48:24'),(4,'Xiaomi',0,1,'2019-07-17 04:19:46','2019-07-17 04:19:46'),(5,'Hauwei',0,1,'2019-07-17 04:20:10','2019-07-17 04:20:10'),(8,'Oppo',0,1,'2019-07-17 07:35:44','2019-07-17 07:35:44');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (75,0,'Điện thoại',0,1,'2019-07-24 02:22:19','2019-07-24 02:22:19'),(79,75,'Samsung',0,1,'2019-07-24 02:30:05','2019-07-24 02:30:05'),(92,75,'Iphone',0,1,'2019-07-24 10:21:05','2019-07-24 10:21:19'),(93,75,'Xiaomi',0,1,'2019-07-24 10:21:13','2019-07-24 10:21:13'),(94,75,'Hauwei',0,1,'2019-07-24 10:21:33','2019-07-24 10:21:33'),(95,75,'Oppo',0,1,'2019-07-24 10:21:47','2019-07-24 10:21:47'),(96,75,'Realme',0,1,'2019-07-24 10:22:23','2019-07-24 10:22:23'),(97,75,'Nokia',0,1,'2019-07-25 06:32:53','2019-07-25 06:33:13'),(98,75,'VSmart',0,1,'2019-07-25 06:33:33','2019-07-25 06:33:33'),(99,75,'ViVo',0,1,'2019-07-25 06:34:07','2019-07-25 06:34:07'),(100,75,'Blackberry',0,1,'2019-07-25 06:34:42','2019-07-25 06:34:49'),(101,75,'Dell',0,1,'2019-09-06 07:31:20','2019-09-06 07:31:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `comment_date` time NOT NULL,
  `comment_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (55,1,42,'08:54:14','thành vinh','/ckfinder/userfiles/images/Product/Product2/avatar.jpg',0,1,'2019-08-13 08:54:14','2019-08-13 08:54:14'),(56,4,33,'09:59:10','thanhvinh','/ckfinder/userfiles/images/Product/Product2/avatar.jpg',0,1,'2019-09-18 09:59:10','2019-09-18 09:59:10');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contract_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'thanhvinh','thanhvinh199700@gmail.com','12345','ssssssssss','ssssssssssssssssssssss','2019-07-26 04:04:12','2019-07-26 04:04:12'),(2,'thanhvinh','admin@gmail.com','12345','hay','rất hay','2019-07-30 10:50:47','2019-07-30 10:50:47');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (71,'default','{\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":7:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":4:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"message\\\";N;s:4:\\\"toId\\\";s:1:\\\"9\\\";s:6:\\\"socket\\\";N;}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1568800631,1568800631);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (5,'Trang chủ','/',0,1,'2019-07-26 04:33:12','2019-07-26 04:33:12'),(6,'Tất cả sản phẩm','allproduct',0,1,'2019-07-26 04:33:37','2019-07-26 04:33:37'),(7,'Liên hệ','/contact',0,1,'2019-07-26 04:33:50','2019-07-26 09:51:41'),(8,'Giới thiệu','/',0,1,'2019-07-26 04:34:16','2019-07-26 04:34:16'),(9,'Bảo hành','/',0,1,'2019-07-26 04:34:28','2019-07-26 04:34:28'),(10,'Khuyến mãi','/',0,1,'2019-07-26 04:34:40','2019-07-26 04:34:40'),(11,'Công nghệ','/',0,1,'2019-07-26 04:34:52','2019-07-26 04:34:52'),(12,'Hỏi đáp','/',0,1,'2019-07-26 04:36:40','2019-07-26 04:36:40'),(13,'Tin tức','/',0,1,'2019-07-26 04:36:48','2019-07-26 04:36:48');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (652,4,'1','2019-09-17 07:54:26','2019-09-17 07:54:26',8),(653,9,'2','2019-09-17 07:54:49','2019-09-17 07:54:49',4),(654,4,'3','2019-09-17 07:55:02','2019-09-17 07:55:02',9),(655,9,'4','2019-09-17 07:55:08','2019-09-17 07:55:08',4),(656,4,'5','2019-09-17 07:56:45','2019-09-17 07:56:45',9),(657,8,'6','2019-09-17 07:57:59','2019-09-17 07:57:59',4),(658,4,'7','2019-09-17 08:58:30','2019-09-17 08:58:30',9),(659,9,'8','2019-09-17 08:58:43','2019-09-17 08:58:43',4);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_000001_add_column_role_to_users',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_07_10_092233_create_comments_table',1),(5,'2019_07_10_092249_create_contact_table',1),(6,'2019_07_10_092323_create_menus_table',1),(7,'2019_07_10_092336_create_order_detail_table',1),(8,'2019_07_10_092402_create_product_table',1),(9,'2019_07_10_092419_create_categories_table',1),(10,'2019_07_10_092430_create_brand_table',1),(11,'2019_07_11_023740_create_order_table',1),(12,'2019_07_11_024021_create_news_table',1),(13,'2019_07_26_061543_add_column_avatar_to_users',2),(14,'2019_08_12_064424_create_sessions_table',3),(15,'2019_08_13_030401_add_column_phone_address_to_user',4),(16,'2019_08_22_064057_create_rating_table',5),(17,'2019_08_26_061456_add_phone_to_order',5),(18,'2019_08_26_062238_drop_customerid_to_order',5),(19,'2019_08_26_062349_add_customername_to_order',5),(20,'2019_08_26_070111_drop_email_to_order',5),(21,'2019_08_26_070331_add_email_to_order',5),(22,'2019_08_26_082732_drop_table_orderdetail',5),(23,'2019_08_26_082940_create_table_orderdetail',5),(24,'2019_08_26_090858_add_column_total_price_to_order',5),(25,'2019_08_26_090911_add_column_total_qty_to_order',5),(26,'2019_08_28_070203_add_brand_id_and_category_id_to_order_detail',5),(27,'2019_09_06_034342_create_slides_table',6),(28,'2019_09_06_034902_create_slide_table',7),(29,'2019_09_09_024204_create_jobs_table',8),(30,'2019_09_11_075927_create_messages_table',9),(31,'2019_09_11_100010_add_admin_id_to_message',10),(32,'2019_09_17_042125_create_room_messages_table',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` time NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (63,'05:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-05 05:53:26','2019-09-05 05:53:26','0929506569','','thanhvinh199700@gmail.com','25300000','3'),(64,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52','0929506569','','thanhvinh199700@gmail.com','63700000','6'),(65,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49','0929506569','','thanhvinh199700@gmail.com','118050000','11'),(66,'07:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-05 07:39:22','2019-09-05 07:39:22','0929506569','','thanhvinh199700@gmail.com','35200000','3'),(67,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-05 08:11:44','2019-09-05 08:11:44','0929506569','','thanhvinh199700@gmail.com','25000000','1'),(68,'02:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 02:25:58','2019-09-06 02:25:58','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(69,'02:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-06 02:27:06','2019-09-06 02:27:06','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(70,'03:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-06 03:16:18','2019-09-06 03:16:18','0929506569','','thanhvinh199700@gmail.com','20000000','2'),(71,'03:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-06 03:18:02','2019-09-06 03:18:02','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(72,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 03:18:52','2019-09-06 03:18:52','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(73,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 08:01:25','2019-09-06 08:01:25','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(74,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 08:25:13','2019-09-06 08:25:13','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(75,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 08:37:41','2019-09-06 08:37:41','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(76,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 08:39:07','2019-09-06 08:39:07','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(77,'10:01:00','admin','103 tăng nhơn phú',0,1,'2019-09-06 10:29:45','2019-09-06 10:29:45','0929506569','','admin@gmail.com','4000000','1'),(78,'10:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 10:30:12','2019-09-06 10:30:12','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(79,'10:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-06 10:31:17','2019-09-06 10:31:17','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(80,'02:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 02:15:38','2019-09-09 02:15:38','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(81,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:01:39','2019-09-09 03:01:39','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(82,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:03:21','2019-09-09 03:03:21','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(83,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:03:41','2019-09-09 03:03:41','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(84,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:07:49','2019-09-09 03:07:49','0929506569','','thanhvinh199700@gmail.com','32000000','2'),(85,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:17:20','2019-09-09 03:17:20','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(86,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:17:53','2019-09-09 03:17:53','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(87,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:18:05','2019-09-09 03:18:05','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(88,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:27:38','2019-09-09 03:27:38','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(89,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:28:47','2019-09-09 03:28:47','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(90,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:29:35','2019-09-09 03:29:35','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(91,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:32:25','2019-09-09 03:32:25','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(92,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:38:29','2019-09-09 03:38:29','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(93,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:39:00','2019-09-09 03:39:00','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(94,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:44:48','2019-09-09 03:44:48','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(95,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:45:37','2019-09-09 03:45:37','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(96,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:54:40','2019-09-09 03:54:40','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(97,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:55:46','2019-09-09 03:55:46','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(98,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:56:15','2019-09-09 03:56:15','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(99,'03:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 03:57:18','2019-09-09 03:57:18','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(100,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:00:53','2019-09-09 04:00:53','0929506569','','thanhvinh199700@gmail.com','30300000','2'),(101,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:02:47','2019-09-09 04:02:47','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(102,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:13:54','2019-09-09 04:13:54','0929506569','','thanhvinh199700@gmail.com','46700000','4'),(103,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:18:02','2019-09-09 04:18:02','0929506569','','thanhvinh199700@gmail.com','13200000','2'),(104,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:20:35','2019-09-09 04:20:35','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(105,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:24:26','2019-09-09 04:24:26','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(106,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:25:17','2019-09-09 04:25:17','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(107,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:26:44','2019-09-09 04:26:44','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(108,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:28:47','2019-09-09 04:28:47','0929506569','','thanhvinh199700@gmail.com','5500000','1'),(109,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:29:54','2019-09-09 04:29:54','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(110,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:33:51','2019-09-09 04:33:51','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(111,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:36:21','2019-09-09 04:36:21','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(112,'04:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 04:59:23','2019-09-09 04:59:23','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(113,'05:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 05:48:17','2019-09-09 05:48:17','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(114,'05:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 05:49:55','2019-09-09 05:49:55','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(115,'05:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 05:50:22','2019-09-09 05:50:22','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(116,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:41:24','2019-09-09 06:41:24','0929506569','','thanhvinh199700@gmail.com','31800000','2'),(117,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:42:38','2019-09-09 06:42:38','0929506569','','thanhvinh199700@gmail.com','4000000','1'),(118,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:45:14','2019-09-09 06:45:14','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(119,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:46:02','2019-09-09 06:46:02','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(120,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:47:39','2019-09-09 06:47:39','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(121,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:49:47','2019-09-09 06:49:47','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(122,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:52:36','2019-09-09 06:52:36','0929506569','','thanhvinh199700@gmail.com','9800000','1'),(123,'06:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 06:53:12','2019-09-09 06:53:12','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(124,'07:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 07:10:47','2019-09-09 07:10:47','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(125,'07:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 07:19:48','2019-09-09 07:19:48','0929506569','','thanhvinh199700@gmail.com','22000000','1'),(126,'07:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 07:20:46','2019-09-09 07:20:46','0929506569','','thanhvinh199700@gmail.com','21500000','2'),(127,'07:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 07:55:02','2019-09-09 07:55:02','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(128,'07:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 07:58:04','2019-09-09 07:58:04','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(129,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:08:42','2019-09-09 08:08:42','0929506569','','thanhvinh199700@gmail.com','6400000','2'),(130,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:10:17','2019-09-09 08:10:17','0929506569','','thanhvinh199700@gmail.com','33500000','2'),(131,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:18:25','2019-09-09 08:18:25','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(132,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:20:12','2019-09-09 08:20:12','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(133,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:21:18','2019-09-09 08:21:18','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(134,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:22:50','2019-09-09 08:22:50','0929506569','','thanhvinh199700@gmail.com','47200000','3'),(135,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:27:14','2019-09-09 08:27:14','0929506569','','thanhvinh199700@gmail.com','55500000','3'),(136,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:28:18','2019-09-09 08:28:18','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(137,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:30:12','2019-09-09 08:30:12','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(138,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:32:49','2019-09-09 08:32:49','0929506569','','thanhvinh199700@gmail.com','20000000','1'),(139,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:35:09','2019-09-09 08:35:09','0929506569','','thanhvinh199700@gmail.com','41900000','3'),(140,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:37:21','2019-09-09 08:37:21','0929506569','','thanhvinh199700@gmail.com','32000000','2'),(141,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:40:10','2019-09-09 08:40:10','0929506569','','thanhvinh199700@gmail.com','14700000','2'),(142,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:45:34','2019-09-09 08:45:34','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(143,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:54:06','2019-09-09 08:54:06','0929506569','','thanhvinh199700@gmail.com','25200000','2'),(144,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:58:16','2019-09-09 08:58:16','0929506569','','thanhvinh199700@gmail.com','33000000','3'),(145,'08:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 08:59:47','2019-09-09 08:59:47','0929506569','','thanhvinh199700@gmail.com','14700000','2'),(146,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:01:14','2019-09-09 09:01:14','0929506569','','thanhvinh199700@gmail.com','35200000','3'),(147,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:01:48','2019-09-09 09:01:48','0929506569','','thanhvinh199700@gmail.com','40400000','3'),(148,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:03:02','2019-09-09 09:03:02','0929506569','','thanhvinh199700@gmail.com','25200000','2'),(149,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:05:25','2019-09-09 09:05:25','0929506569','','thanhvinh199700@gmail.com','13200000','2'),(150,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:06:15','2019-09-09 09:06:15','0929506569','','thanhvinh199700@gmail.com','32000000','2'),(151,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:07:10','2019-09-09 09:07:10','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(152,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:09:43','2019-09-09 09:09:43','0929506569','','thanhvinh199700@gmail.com','10000000','1'),(153,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:14:54','2019-09-09 09:14:54','0929506569','','thanhvinh199700@gmail.com','13200000','2'),(154,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:17:39','2019-09-09 09:17:39','0929506569','','thanhvinh199700@gmail.com','54000000','3'),(155,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09','0929506569','','thanhvinh199700@gmail.com','115200000','9'),(156,'09:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 09:34:49','2019-09-09 09:34:49','0929506569','','thanhvinh199700@gmail.com','54000000','3'),(157,'09:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 09:37:30','2019-09-09 09:37:30','0929506569','','thanhvinh199700@gmail.com','27500000','2'),(158,'09:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 09:39:13','2019-09-09 09:39:13','0929506569','','thanhvinh199700@gmail.com','25200000','2'),(159,'09:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 09:40:04','2019-09-09 09:40:04','0929506569','','thanhvinh199700@gmail.com','25200000','2'),(160,'09:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 09:42:53','2019-09-09 09:42:53','0929506569','','thanhvinh199700@gmail.com','30500000','2'),(161,'10:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 10:04:58','2019-09-09 10:04:58','0929506569','','thanhvinh199700@gmail.com','21300000','2'),(162,'10:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 10:09:51','2019-09-09 10:09:51','0929506569','','thanhvinh199700@gmail.com','23000000','2'),(163,'10:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 10:13:44','2019-09-09 10:13:44','0929506569','','thanhvinh199700@gmail.com','3200000','1'),(164,'10:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 10:18:22','2019-09-09 10:18:22','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(165,'10:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 10:21:06','2019-09-09 10:21:06','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(166,'10:01:00','thanhvinh','103 tăng nhơn phú',0,1,'2019-09-09 10:25:08','2019-09-09 10:25:08','0929506569','','thanhvinh199700@gmail.com','11500000','1'),(167,'10:01:00','thanhvinh','103 tăng nhơn phú',0,2,'2019-09-09 10:30:25','2019-09-09 10:30:25','0929506569','','thanhvinh199700@gmail.com','21300000','2');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `product_price` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (77,63,28,1,9800000,9800000,0,1,'2019-09-05 05:53:26','2019-09-05 05:53:26',1,92),(78,63,29,1,11500000,11500000,0,1,'2019-09-05 05:53:26','2019-09-05 05:53:26',1,92),(79,63,30,1,4000000,4000000,0,1,'2019-09-05 05:53:26','2019-09-05 05:53:26',1,92),(80,64,37,1,5300000,5300000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(81,64,38,1,20000000,20000000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(82,64,39,1,3200000,3200000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(83,64,40,1,22000000,22000000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(84,64,41,1,3200000,3200000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(85,64,42,1,10000000,10000000,0,1,'2019-09-05 06:18:52','2019-09-05 06:18:52',2,79),(86,65,40,2,22000000,44000000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',2,79),(87,65,28,2,9800000,19600000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(88,65,29,1,11500000,11500000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(89,65,30,1,4000000,4000000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(90,65,31,1,4850000,4850000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(91,65,32,1,5500000,5500000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(92,65,33,1,5400000,5400000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',1,92),(93,65,38,1,20000000,20000000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',2,79),(94,65,41,1,3200000,3200000,0,1,'2019-09-05 06:19:49','2019-09-05 06:19:49',2,79),(95,66,41,1,3200000,3200000,0,1,'2019-09-05 07:39:22','2019-09-05 07:39:22',2,79),(96,66,42,1,10000000,10000000,0,1,'2019-09-05 07:39:22','2019-09-05 07:39:22',2,79),(97,66,40,1,22000000,22000000,0,1,'2019-09-05 07:39:22','2019-09-05 07:39:22',2,79),(98,67,34,1,25000000,25000000,0,1,'2019-09-05 08:11:44','2019-09-05 08:11:44',1,92),(99,68,40,1,22000000,22000000,0,1,'2019-09-06 02:25:58','2019-09-06 02:25:58',2,79),(100,69,28,1,9800000,9800000,0,1,'2019-09-06 02:27:06','2019-09-06 02:27:06',1,92),(101,70,42,2,10000000,20000000,0,1,'2019-09-06 03:16:18','2019-09-06 03:16:18',2,79),(102,71,41,1,3200000,3200000,0,1,'2019-09-06 03:18:02','2019-09-06 03:18:02',2,79),(103,72,30,1,4000000,4000000,0,1,'2019-09-06 03:18:52','2019-09-06 03:18:52',1,92),(104,73,42,1,10000000,10000000,0,1,'2019-09-06 08:01:25','2019-09-06 08:01:25',2,79),(105,74,28,1,9800000,9800000,0,1,'2019-09-06 08:25:13','2019-09-06 08:25:13',1,92),(106,75,41,1,3200000,3200000,0,1,'2019-09-06 08:37:41','2019-09-06 08:37:41',2,79),(107,76,42,1,10000000,10000000,0,1,'2019-09-06 08:39:07','2019-09-06 08:39:07',2,79),(108,77,30,1,4000000,4000000,0,1,'2019-09-06 10:29:45','2019-09-06 10:29:45',1,92),(109,78,41,1,3200000,3200000,0,1,'2019-09-06 10:30:12','2019-09-06 10:30:12',2,79),(110,79,29,1,11500000,11500000,0,1,'2019-09-06 10:31:17','2019-09-06 10:31:17',1,92),(111,80,40,1,22000000,22000000,0,1,'2019-09-09 02:15:38','2019-09-09 02:15:38',2,79),(112,81,30,1,4000000,4000000,0,1,'2019-09-09 03:01:39','2019-09-09 03:01:39',1,92),(113,82,28,1,9800000,9800000,0,1,'2019-09-09 03:03:21','2019-09-09 03:03:21',1,92),(114,83,29,1,11500000,11500000,0,1,'2019-09-09 03:03:41','2019-09-09 03:03:41',1,92),(115,84,40,1,22000000,22000000,0,1,'2019-09-09 03:07:49','2019-09-09 03:07:49',2,79),(116,84,42,1,10000000,10000000,0,1,'2019-09-09 03:07:49','2019-09-09 03:07:49',2,79),(117,85,28,1,9800000,9800000,0,1,'2019-09-09 03:17:20','2019-09-09 03:17:20',1,92),(118,86,30,1,4000000,4000000,0,1,'2019-09-09 03:17:53','2019-09-09 03:17:53',1,92),(119,87,40,1,22000000,22000000,0,1,'2019-09-09 03:18:05','2019-09-09 03:18:05',2,79),(120,88,30,1,4000000,4000000,0,1,'2019-09-09 03:27:38','2019-09-09 03:27:38',1,92),(121,89,42,1,10000000,10000000,0,1,'2019-09-09 03:28:47','2019-09-09 03:28:47',2,79),(122,90,30,1,4000000,4000000,0,1,'2019-09-09 03:29:35','2019-09-09 03:29:35',1,92),(123,91,41,1,3200000,3200000,0,1,'2019-09-09 03:32:25','2019-09-09 03:32:25',2,79),(124,92,41,1,3200000,3200000,0,1,'2019-09-09 03:38:29','2019-09-09 03:38:29',2,79),(125,93,42,1,10000000,10000000,0,1,'2019-09-09 03:39:00','2019-09-09 03:39:00',2,79),(126,94,28,1,9800000,9800000,0,1,'2019-09-09 03:44:48','2019-09-09 03:44:48',1,92),(127,95,41,1,3200000,3200000,0,1,'2019-09-09 03:45:37','2019-09-09 03:45:37',2,79),(128,96,40,1,22000000,22000000,0,1,'2019-09-09 03:54:40','2019-09-09 03:54:40',2,79),(129,97,30,1,4000000,4000000,0,1,'2019-09-09 03:55:46','2019-09-09 03:55:46',1,92),(130,98,28,1,9800000,9800000,0,1,'2019-09-09 03:56:15','2019-09-09 03:56:15',1,92),(131,99,28,1,9800000,9800000,0,1,'2019-09-09 03:57:18','2019-09-09 03:57:18',1,92),(132,100,37,1,5300000,5300000,0,1,'2019-09-09 04:00:53','2019-09-09 04:00:53',2,79),(133,100,34,1,25000000,25000000,0,1,'2019-09-09 04:00:53','2019-09-09 04:00:53',1,92),(134,101,40,1,22000000,22000000,0,1,'2019-09-09 04:02:47','2019-09-09 04:02:47',2,79),(135,102,42,1,10000000,10000000,0,1,'2019-09-09 04:13:54','2019-09-09 04:13:54',2,79),(136,102,29,1,11500000,11500000,0,1,'2019-09-09 04:13:54','2019-09-09 04:13:54',1,92),(137,102,40,1,22000000,22000000,0,1,'2019-09-09 04:13:54','2019-09-09 04:13:54',2,79),(138,102,41,1,3200000,3200000,0,1,'2019-09-09 04:13:54','2019-09-09 04:13:54',2,79),(139,103,42,1,10000000,10000000,0,1,'2019-09-09 04:18:02','2019-09-09 04:18:02',2,79),(140,103,41,1,3200000,3200000,0,1,'2019-09-09 04:18:02','2019-09-09 04:18:02',2,79),(141,104,28,1,9800000,9800000,0,1,'2019-09-09 04:20:35','2019-09-09 04:20:35',1,92),(142,105,30,1,4000000,4000000,0,1,'2019-09-09 04:24:26','2019-09-09 04:24:26',1,92),(143,106,30,1,4000000,4000000,0,1,'2019-09-09 04:25:17','2019-09-09 04:25:17',1,92),(144,107,28,1,9800000,9800000,0,1,'2019-09-09 04:26:44','2019-09-09 04:26:44',1,92),(145,108,32,1,5500000,5500000,0,1,'2019-09-09 04:28:47','2019-09-09 04:28:47',1,92),(146,109,29,1,11500000,11500000,0,1,'2019-09-09 04:29:54','2019-09-09 04:29:54',1,92),(147,110,41,1,3200000,3200000,0,1,'2019-09-09 04:33:51','2019-09-09 04:33:51',2,79),(148,111,41,1,3200000,3200000,0,1,'2019-09-09 04:36:21','2019-09-09 04:36:21',2,79),(149,112,40,1,22000000,22000000,0,1,'2019-09-09 04:59:23','2019-09-09 04:59:23',2,79),(150,113,30,1,4000000,4000000,0,1,'2019-09-09 05:48:17','2019-09-09 05:48:17',1,92),(151,114,42,1,10000000,10000000,0,1,'2019-09-09 05:49:55','2019-09-09 05:49:55',2,79),(152,115,42,1,10000000,10000000,0,1,'2019-09-09 05:50:22','2019-09-09 05:50:22',2,79),(153,116,28,1,9800000,9800000,0,1,'2019-09-09 06:41:24','2019-09-09 06:41:24',1,92),(154,116,40,1,22000000,22000000,0,1,'2019-09-09 06:41:24','2019-09-09 06:41:24',2,79),(155,117,30,1,4000000,4000000,0,1,'2019-09-09 06:42:38','2019-09-09 06:42:38',1,92),(156,118,42,1,10000000,10000000,0,1,'2019-09-09 06:45:14','2019-09-09 06:45:14',2,79),(157,119,40,1,22000000,22000000,0,1,'2019-09-09 06:46:02','2019-09-09 06:46:02',2,79),(158,120,29,1,11500000,11500000,0,1,'2019-09-09 06:47:39','2019-09-09 06:47:39',1,92),(159,121,41,1,3200000,3200000,0,1,'2019-09-09 06:49:47','2019-09-09 06:49:47',2,79),(160,122,28,1,9800000,9800000,0,1,'2019-09-09 06:52:36','2019-09-09 06:52:36',1,92),(161,123,41,1,3200000,3200000,0,1,'2019-09-09 06:53:12','2019-09-09 06:53:12',2,79),(162,124,29,1,11500000,11500000,0,1,'2019-09-09 07:10:47','2019-09-09 07:10:47',1,92),(163,125,40,1,22000000,22000000,0,1,'2019-09-09 07:19:48','2019-09-09 07:19:48',2,79),(164,126,42,1,10000000,10000000,0,1,'2019-09-09 07:20:46','2019-09-09 07:20:46',2,79),(165,126,29,1,11500000,11500000,0,1,'2019-09-09 07:20:46','2019-09-09 07:20:46',1,92),(166,127,42,1,10000000,10000000,0,1,'2019-09-09 07:55:02','2019-09-09 07:55:02',2,79),(167,128,29,1,11500000,11500000,0,1,'2019-09-09 07:58:04','2019-09-09 07:58:04',1,92),(168,129,41,1,3200000,3200000,0,1,'2019-09-09 08:08:42','2019-09-09 08:08:42',2,79),(169,129,39,1,3200000,3200000,0,1,'2019-09-09 08:08:42','2019-09-09 08:08:42',2,79),(170,130,29,1,11500000,11500000,0,1,'2019-09-09 08:10:17','2019-09-09 08:10:17',1,92),(171,130,40,1,22000000,22000000,0,1,'2019-09-09 08:10:17','2019-09-09 08:10:17',2,79),(172,131,29,1,11500000,11500000,0,1,'2019-09-09 08:18:25','2019-09-09 08:18:25',1,92),(173,132,41,1,3200000,3200000,0,1,'2019-09-09 08:20:12','2019-09-09 08:20:12',2,79),(174,133,42,1,10000000,10000000,0,1,'2019-09-09 08:21:18','2019-09-09 08:21:18',2,79),(175,134,41,1,3200000,3200000,0,1,'2019-09-09 08:22:50','2019-09-09 08:22:50',2,79),(176,134,40,2,22000000,44000000,0,1,'2019-09-09 08:22:51','2019-09-09 08:22:51',2,79),(177,135,29,1,11500000,11500000,0,1,'2019-09-09 08:27:14','2019-09-09 08:27:14',1,92),(178,135,40,2,22000000,44000000,0,1,'2019-09-09 08:27:14','2019-09-09 08:27:14',2,79),(179,136,42,1,10000000,10000000,0,1,'2019-09-09 08:28:18','2019-09-09 08:28:18',2,79),(180,137,42,1,10000000,10000000,0,1,'2019-09-09 08:30:12','2019-09-09 08:30:12',2,79),(181,138,38,1,20000000,20000000,0,1,'2019-09-09 08:32:49','2019-09-09 08:32:49',2,79),(182,139,29,1,11500000,11500000,0,1,'2019-09-09 08:35:09','2019-09-09 08:35:09',1,92),(183,139,33,1,5400000,5400000,0,1,'2019-09-09 08:35:09','2019-09-09 08:35:09',1,92),(184,139,34,1,25000000,25000000,0,1,'2019-09-09 08:35:09','2019-09-09 08:35:09',1,92),(185,140,42,1,10000000,10000000,0,1,'2019-09-09 08:37:21','2019-09-09 08:37:21',2,79),(186,140,40,1,22000000,22000000,0,1,'2019-09-09 08:37:21','2019-09-09 08:37:21',2,79),(187,141,41,1,3200000,3200000,0,1,'2019-09-09 08:40:10','2019-09-09 08:40:10',2,79),(188,141,29,1,11500000,11500000,0,1,'2019-09-09 08:40:10','2019-09-09 08:40:10',1,92),(189,142,29,1,11500000,11500000,0,1,'2019-09-09 08:45:34','2019-09-09 08:45:34',1,92),(190,143,41,1,3200000,3200000,0,1,'2019-09-09 08:54:06','2019-09-09 08:54:06',2,79),(191,143,40,1,22000000,22000000,0,1,'2019-09-09 08:54:06','2019-09-09 08:54:06',2,79),(192,144,42,1,10000000,10000000,0,1,'2019-09-09 08:58:16','2019-09-09 08:58:16',2,79),(193,144,29,2,11500000,23000000,0,1,'2019-09-09 08:58:16','2019-09-09 08:58:16',1,92),(194,145,29,1,11500000,11500000,0,1,'2019-09-09 08:59:47','2019-09-09 08:59:47',1,92),(195,145,41,1,3200000,3200000,0,1,'2019-09-09 08:59:47','2019-09-09 08:59:47',2,79),(196,146,42,1,10000000,10000000,0,1,'2019-09-09 09:01:14','2019-09-09 09:01:14',2,79),(197,146,41,1,3200000,3200000,0,1,'2019-09-09 09:01:14','2019-09-09 09:01:14',2,79),(198,146,40,1,22000000,22000000,0,1,'2019-09-09 09:01:14','2019-09-09 09:01:14',2,79),(199,147,42,1,10000000,10000000,0,1,'2019-09-09 09:01:48','2019-09-09 09:01:48',2,79),(200,147,34,1,25000000,25000000,0,1,'2019-09-09 09:01:48','2019-09-09 09:01:48',1,92),(201,147,33,1,5400000,5400000,0,1,'2019-09-09 09:01:49','2019-09-09 09:01:49',1,92),(202,148,41,1,3200000,3200000,0,1,'2019-09-09 09:03:02','2019-09-09 09:03:02',2,79),(203,148,40,1,22000000,22000000,0,1,'2019-09-09 09:03:02','2019-09-09 09:03:02',2,79),(204,149,42,1,10000000,10000000,0,1,'2019-09-09 09:05:25','2019-09-09 09:05:25',2,79),(205,149,41,1,3200000,3200000,0,1,'2019-09-09 09:05:25','2019-09-09 09:05:25',2,79),(206,150,40,1,22000000,22000000,0,1,'2019-09-09 09:06:15','2019-09-09 09:06:15',2,79),(207,150,42,1,10000000,10000000,0,1,'2019-09-09 09:06:15','2019-09-09 09:06:15',2,79),(208,151,41,1,3200000,3200000,0,1,'2019-09-09 09:07:10','2019-09-09 09:07:10',2,79),(209,152,42,1,10000000,10000000,0,1,'2019-09-09 09:09:43','2019-09-09 09:09:43',2,79),(210,153,42,1,10000000,10000000,0,1,'2019-09-09 09:14:54','2019-09-09 09:14:54',2,79),(211,153,41,1,3200000,3200000,0,1,'2019-09-09 09:14:54','2019-09-09 09:14:54',2,79),(212,154,40,2,22000000,44000000,0,1,'2019-09-09 09:17:39','2019-09-09 09:17:39',2,79),(213,154,42,1,10000000,10000000,0,1,'2019-09-09 09:17:39','2019-09-09 09:17:39',2,79),(214,155,40,2,22000000,44000000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',2,79),(215,155,42,3,10000000,30000000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',2,79),(216,155,37,1,5300000,5300000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',2,79),(217,155,34,1,25000000,25000000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',1,92),(218,155,33,1,5400000,5400000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',1,92),(219,155,32,1,5500000,5500000,0,1,'2019-09-09 09:22:09','2019-09-09 09:22:09',1,92),(220,156,40,2,22000000,44000000,0,1,'2019-09-09 09:34:49','2019-09-09 09:34:49',2,79),(221,156,42,1,10000000,10000000,0,1,'2019-09-09 09:34:49','2019-09-09 09:34:49',2,79),(222,157,32,1,5500000,5500000,0,1,'2019-09-09 09:37:30','2019-09-09 09:37:30',1,92),(223,157,40,1,22000000,22000000,0,1,'2019-09-09 09:37:30','2019-09-09 09:37:30',2,79),(224,158,40,1,22000000,22000000,0,1,'2019-09-09 09:39:13','2019-09-09 09:39:13',2,79),(225,158,39,1,3200000,3200000,0,1,'2019-09-09 09:39:13','2019-09-09 09:39:13',2,79),(226,159,40,1,22000000,22000000,0,1,'2019-09-09 09:40:04','2019-09-09 09:40:04',2,79),(227,159,39,1,3200000,3200000,0,1,'2019-09-09 09:40:04','2019-09-09 09:40:04',2,79),(228,160,34,1,25000000,25000000,0,1,'2019-09-09 09:42:53','2019-09-09 09:42:53',1,92),(229,160,32,1,5500000,5500000,0,1,'2019-09-09 09:42:53','2019-09-09 09:42:53',1,92),(230,161,28,1,9800000,9800000,0,1,'2019-09-09 10:04:58','2019-09-09 10:04:58',1,92),(231,161,29,1,11500000,11500000,0,1,'2019-09-09 10:04:58','2019-09-09 10:04:58',1,92),(232,162,29,2,11500000,23000000,0,1,'2019-09-09 10:09:51','2019-09-09 10:09:51',1,92),(233,163,41,1,3200000,3200000,0,1,'2019-09-09 10:13:44','2019-09-09 10:13:44',2,79),(234,164,29,1,11500000,11500000,0,1,'2019-09-09 10:18:22','2019-09-09 10:18:22',1,92),(235,165,29,1,11500000,11500000,0,1,'2019-09-09 10:21:06','2019-09-09 10:21:06',1,92),(236,166,29,1,11500000,11500000,0,1,'2019-09-09 10:25:08','2019-09-09 10:25:08',1,92),(237,167,28,1,9800000,9800000,0,1,'2019-09-09 10:30:25','2019-09-09 10:30:25',1,92),(238,167,29,1,11500000,11500000,0,1,'2019-09-09 10:30:25','2019-09-09 10:30:25',1,92);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_category` int(10) unsigned NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` smallint(6) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `saleprice` int(10) unsigned NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (27,92,1,'Iphone XS max','/ckfinder/userfiles/files/15.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a>, 6.5&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-retina-la-gi-1152045\" target=\"_blank\">Super Retina</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a12-bionic-con-chip-7nm-dau-1171937\" target=\"_blank\">Apple A12 Bionic 6 nh&acirc;n</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/esim-la-gi-esim-co-su-dung-duoc-o-viet-nam-khong-1118062\" target=\"_blank\">Nano SIM &amp; eSIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3174 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',0,15,31000000,0,0,1,'2019-07-24 10:23:15','2019-07-25 08:11:54'),(28,92,1,'Iphone 7 Plus red','/ckfinder/userfiles/files/16.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-led-backlit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 5.5&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/ios-12-tat-ca-nhung-gi-can-biet-ve-he-dieu-hanh-moi-nhat-cua-apple-1093219\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052\" target=\"_blank\">Apple A10 Fusion 4 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2900 mAh</p>\r\n	</li>\r\n</ul>',1,9998,10000000,9800000,0,1,'2019-07-24 10:23:58','2019-09-09 10:30:25'),(29,92,1,'Iphone 8 Plus','/ckfinder/userfiles/files/17.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ledbacklit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 5.5&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chip-apple-a11-bionic-la-gi-1170872\" target=\"_blank\">Apple A11 Bionic 6 nh&acirc;n</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2691 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,9993,12000000,11500000,0,1,'2019-07-24 10:24:44','2019-09-09 10:30:25'),(30,92,1,'Iphone 6s','/ckfinder/userfiles/files/18.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ledbacklit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 5.5&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a9-733695\" target=\"_blank\">Apple A9 2 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2750 mAh</p>\r\n	</li>\r\n</ul>',1,1000,4300000,4000000,0,1,'2019-07-24 10:25:21','2019-09-09 09:44:33'),(31,92,1,'Iphone 6s Plus','/ckfinder/userfiles/files/19.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ledbacklit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 5.5&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a9-733695\" target=\"_blank\">Apple A9 2 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2750 mAh</p>\r\n	</li>\r\n</ul>',1,13,5000000,4850000,0,1,'2019-07-24 10:25:54','2019-09-05 06:19:49'),(32,92,1,'Iphone 7','/ckfinder/userfiles/files/20.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-led-backlit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 4.7&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052\" target=\"_blank\">Apple A10 Fusion 4 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>1960 mAh</p>\r\n	</li>\r\n</ul>',1,69,5900000,5500000,0,1,'2019-07-24 10:26:31','2019-09-09 09:42:53'),(33,92,1,'Iphone 7 Rose','/ckfinder/userfiles/files/21.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-led-backlit-ips-lcd-la-gi-905757\" target=\"_blank\">LED-backlit IPS LCD</a>, 4.7&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780\" target=\"_blank\">Retina HD</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052\" target=\"_blank\">Apple A10 Fusion 4 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">1 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>1960 mAh</p>\r\n	</li>\r\n</ul>',1,58,5500000,5400000,0,1,'2019-07-24 10:27:16','2019-09-09 09:22:09'),(34,92,1,'Iphone XS','/ckfinder/userfiles/files/22.jpg','<ul>\r\n	<li>\r\n	<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a>, 5.8&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-retina-la-gi-1152045\" target=\"_blank\">Super Retina</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a12-bionic-con-chip-7nm-dau-1171937\" target=\"_blank\">Apple A12 Bionic 6 nh&acirc;n</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/esim-la-gi-esim-co-su-dung-duoc-o-viet-nam-khong-1118062\" target=\"_blank\">Nano SIM &amp; eSIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n</ul>',0,9,25000000,0,0,1,'2019-07-24 10:27:51','2019-09-09 09:42:53'),(37,79,2,'Samsung Galaxy A50','/ckfinder/userfiles/images/Product/102.png','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-amoled-la-gi-905770\" target=\"_blank\">Super AMOLED</a>, 6.4&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">Full HD+</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 25 MP &amp; Phụ 8 MP, 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>25 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/chip-exynos-9610-tren-smartphone-tam-trung-cua-sam-1172050\" target=\"_blank\">Exynos 9610 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\">MicroSD, hỗ trợ tối đa 512 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4000 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',0,50,5300000,0,0,1,'2019-07-24 10:32:09','2019-09-09 09:22:09'),(38,79,2,'Samsung S10','/ckfinder/userfiles/images/Product/104.png','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-ma-hinh-dynamic-amoled-co-gi-noi-bat-1151123\" target=\"_blank\">Dynamic AMOLED</a>, 6.1&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">Quad HD+ (2K+)</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 16 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>10 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kham-pha-exynos-9820-vi-xu-ly-moi-nhat-cua-samsung-1172116\" target=\"_blank\">Exynos 9820 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\">MicroSD, hỗ trợ tối đa 512 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 SIM Nano (SIM 2 chung khe thẻ nhớ)</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3400 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,9,23000000,20000000,0,1,'2019-07-24 10:33:21','2019-09-09 08:32:49'),(39,79,2,'Samsung Galaxy S7','/ckfinder/userfiles/images/Product/105.jpg','<p>Ch&iacute;nh h&atilde;ng</p>',0,7,3200000,0,0,1,'2019-07-24 10:35:26','2019-09-09 09:40:04'),(40,79,2,'Samsung S10 Plus','/ckfinder/userfiles/images/Product/106.png','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-ma-hinh-dynamic-amoled-co-gi-noi-bat-1151123\" target=\"_blank\">Dynamic AMOLED</a>, 6.4&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">Quad HD+ (2K+)</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 16 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>Ch&iacute;nh 10 MP &amp; Phụ 8 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kham-pha-exynos-9820-vi-xu-ly-moi-nhat-cua-samsung-1172116\" target=\"_blank\">Exynos 9820 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>512 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\">MicroSD, hỗ trợ tối đa 512 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 SIM Nano (SIM 2 chung khe thẻ nhớ)</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4100 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,11,25000000,22000000,0,1,'2019-07-24 10:36:53','2019-09-09 09:40:04'),(41,79,2,'Samsung Galaxy A30','/ckfinder/userfiles/images/Product/107.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-amoled-la-gi-905770\" target=\"_blank\">Super AMOLED</a>, 6.4&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">Full HD+</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 16 MP &amp; Phụ 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>16 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/kham-pha-dong-chip-moi-exynos-7904-cua-samsung-1172068\" target=\"_blank\">Exynos 7904 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\">MicroSD, hỗ trợ tối đa 512 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4000 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,999,3500000,3200000,0,1,'2019-07-24 10:37:34','2019-09-09 10:13:44'),(42,79,2,'Samsung note 9 Black','/ckfinder/userfiles/images/Product/108.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-amoled-la-gi-905770\" target=\"_blank\">Super AMOLED</a>, 6.4&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">Quad HD+ (2K+)</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/co-gi-dac-biet-o-android-81-oreo-1073208\" target=\"_blank\">Android 8.1 (Oreo)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-exynos-9810-tren-flagship-cao-cap-cu-1172055\" target=\"_blank\">Exynos 9810 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\">MicroSD, hỗ trợ tối đa 512 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 SIM Nano (SIM 2 chung khe thẻ nhớ)</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4000 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',0,10000,10000000,0,0,1,'2019-07-24 10:38:15','2019-09-09 09:44:53'),(43,94,5,'Hauwei P30','/ckfinder/userfiles/images/Product/109.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a>, 6.47&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">Full HD+</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 40 MP &amp; Phụ 20 MP, 8 MP, TOF 3D</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>32 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/dong-chip-kirin-980-cao-cap-co-gi-dac-biet-1172083\" target=\"_blank\">Hisilicon Kirin 980 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 Nano SIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4200 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,1000,23000000,18000000,0,1,'2019-07-24 10:39:01','2019-09-09 09:45:01'),(44,94,5,'Hauwei Mate 20pro','/ckfinder/userfiles/images/Product/110.jpg','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\">OLED</a>, 6.39&quot;,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#2k\" target=\"_blank\">Quad HD+ (2K+)</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-android-90-pie-va-nhung-tinh-nang-moi-noi-1107119\" target=\"_blank\">Android 9.0 (Pie)</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 40 MP &amp; Phụ 20 MP, 8 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>24 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/dong-chip-kirin-980-cao-cap-co-gi-dac-biet-1172083\" target=\"_blank\">Hisilicon Kirin 980 8 nh&acirc;n 64-bit</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/the-huawei-nm-la-gi-nano-memory-khac-gi-microsd--1125146\" target=\"_blank\">NM card, hỗ trợ tối đa 256 GB</a></p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-cac-loai-sim-thong-dung-sim-thuong-micro--590216#nanosim\" target=\"_blank\">2 SIM Nano (SIM 2 chung khe thẻ nhớ)</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4200 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,10000,14300000,10000000,0,1,'2019-07-24 10:39:58','2019-09-09 09:45:10'),(45,92,1,'Iphone XR','/ckfinder/userfiles/images/Product/Product2/22.png','<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-ips-lcd-la-gi-905752\" target=\"_blank\">IPS LCD</a>, 6.1&quot;,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cung-tim-hieu-ve-man-hinh-liquid-retina-tren-iph-1125106\" target=\"_blank\">Liquid Retina</a></p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-he-dieu-hanh-ios-12-1172136\" target=\"_blank\">iOS 12</a></p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a12-bionic-con-chip-7nm-dau-1171937\" target=\"_blank\">Apple A12 Bionic 6 nh&acirc;n</a></p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>256 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p><a href=\"https://www.thegioididong.com/hoi-dap/esim-la-gi-esim-co-su-dung-duoc-o-viet-nam-khong-1118062\" target=\"_blank\">Nano SIM &amp; eSIM</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/4g-la-gi-731757\" target=\"_blank\">Hỗ trợ 4G</a></p>\r\n\r\n	<p><strong>HOT</strong><a href=\"https://www.thegioididong.com/sim-so-dep/viettel?t=73\">SIM VIETTEL G&Ocirc;G&Ocirc; 4G (3GB data/ th&aacute;ng)</a>. Gi&aacute; từ&nbsp;<strong>250.000đ</strong></p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2942 mAh,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">c&oacute; sạc nhanh</a></p>\r\n	</li>\r\n</ul>',1,1000,19500000,18000000,0,1,'2019-07-24 10:41:45','2019-09-09 09:45:17');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rating` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,27,4,3,'2019-09-04 04:20:52','2019-09-04 04:20:52'),(2,40,4,5,'2019-09-06 07:08:49','2019-09-06 07:08:49');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_messages`
--

DROP TABLE IF EXISTS `room_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room` int(10) unsigned NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_messages`
--

LOCK TABLES `room_messages` WRITE;
/*!40000 ALTER TABLE `room_messages` DISABLE KEYS */;
INSERT INTO `room_messages` VALUES (29,4,4,8,'1','2019-09-17 07:54:26','2019-09-17 07:54:26'),(30,4,9,4,'2','2019-09-17 07:54:49','2019-09-17 07:54:49'),(31,4,4,9,'3','2019-09-17 07:55:02','2019-09-17 07:55:02'),(32,4,9,4,'4','2019-09-17 07:55:08','2019-09-17 07:55:08'),(33,4,4,9,'5','2019-09-17 07:56:45','2019-09-17 07:56:45'),(34,4,8,4,'6','2019-09-17 07:57:59','2019-09-17 07:57:59'),(35,4,4,9,'7','2019-09-17 08:58:30','2019-09-17 08:58:30'),(36,4,9,4,'8','2019-09-17 08:58:43','2019-09-17 08:58:43');
/*!40000 ALTER TABLE `room_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('47l9ZwWwrRGTmGsywpxGZcMarG4I9MXcqr7lMQUe',4,'192.168.10.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRWd5SklJZDhtbGNKSXJpeThVUTlSVldsTnc0YkZ2QmlzWDh6RzBhWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJhZG1pbiI7TzoxNToiQXBwXE1vZGVsc1xVc2VyIjoyNzp7czoxMToiACoAZmlsbGFibGUiO2E6Nzp7aTowO3M6NDoibmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjtpOjM7czo0OiJyb2xlIjtpOjQ7czo2OiJhdmF0YXIiO2k6NTtzOjU6InBob25lIjtpOjY7czo3OiJhZGRyZXNzIjt9czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6ODoiACoAY2FzdHMiO2E6MTp7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6ODoiZGF0ZXRpbWUiO31zOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjU6InVzZXJzIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjEyOntzOjI6ImlkIjtpOjk7czo0OiJuYW1lIjtzOjEzOiJ2aW5oLm5ndXnhu4VuIjtzOjU6ImVtYWlsIjtzOjIxOiIwMTYzNjYwNTcxNkBnbWFpbC5jb20iO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtOO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCR3OGxJNkQuSjRuTXJqUkNQYkZaVnl1ZWZ2ck83dUs5YWdVV1lFa0x5aTdLcFJVeTBpenVEZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czo0OiJyb2xlIjtzOjU6ImFkbWluIjtzOjY6ImF2YXRhciI7czo1MToiL2NrZmluZGVyL3VzZXJmaWxlcy9maWxlcy9zbGlkZV9oZWFkZXIvZG93bmxvYWQuanBnIjtzOjc6ImFkZHJlc3MiO3M6MjA6IjEwMyB0xINuZyBuaMahbiBwaMO6IjtzOjU6InBob25lIjtzOjEwOiIwOTI5NTA2NTY5Ijt9czoxMToiACoAb3JpZ2luYWwiO2E6MTI6e3M6MjoiaWQiO2k6OTtzOjQ6Im5hbWUiO3M6MTM6InZpbmgubmd1eeG7hW4iO3M6NToiZW1haWwiO3M6MjE6IjAxNjM2NjA1NzE2QGdtYWlsLmNvbSI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO047czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJHc4bEk2RC5KNG5NcmpSQ1BiRlpWeXVlZnZyTzd1SzlhZ1VXWUVrTHlpN0twUlV5MGl6dURlIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjQ6InJvbGUiO3M6NToiYWRtaW4iO3M6NjoiYXZhdGFyIjtzOjUxOiIvY2tmaW5kZXIvdXNlcmZpbGVzL2ZpbGVzL3NsaWRlX2hlYWRlci9kb3dubG9hZC5qcGciO3M6NzoiYWRkcmVzcyI7czoyMDoiMTAzIHTEg25nIG5oxqFuIHBow7oiO3M6NToicGhvbmUiO3M6MTA6IjA5Mjk1MDY1NjkiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEwOiIAKgB2aXNpYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO31zOjIwOiIAKgByZW1lbWJlclRva2VuTmFtZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovL2hvbWVzdGVhZC50ZXN0L3Byb2R1Y3QvMzMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6NDoiY2FydCI7TzoyNDoiQXBwXFNlcnZpY2VzXENhcnRTZXJ2aWNlIjozOntzOjU6Iml0ZW1zIjthOjE6e2k6NDM7YTo2OntzOjM6InF0eSI7aToxO3M6NToicHJpY2UiO2k6MjMwMDAwMDA7czo0OiJzYWxlIjtpOjE7czo5OiJzYWxlcHJpY2UiO2k6MTgwMDAwMDA7czo0OiJpdGVtIjtPOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiOjI2OntzOjg6IgAqAHRhYmxlIjtzOjc6InByb2R1Y3QiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTE6IgAqAGZpbGxhYmxlIjthOjExOntpOjA7czoxNjoicHJvZHVjdF9jYXRlZ29yeSI7aToxO3M6ODoiYnJhbmRfaWQiO2k6MjtzOjEyOiJwcm9kdWN0X25hbWUiO2k6MztzOjU6ImltYWdlIjtpOjQ7czoxNDoicHJvZHVjdF9kZXRhaWwiO2k6NTtzOjQ6InNhbGUiO2k6NjtzOjg6InF1YW50aXR5IjtpOjc7czo1OiJwcmljZSI7aTo4O3M6OToic2FsZXByaWNlIjtpOjk7czo1OiJ0cmFzaCI7aToxMDtzOjY6InN0YXR1cyI7fXM6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxMDoiACoAcGVyUGFnZSI7aToxNTtzOjY6ImV4aXN0cyI7YjoxO3M6MTg6Indhc1JlY2VudGx5Q3JlYXRlZCI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6MTQ6e3M6MjoiaWQiO2k6NDM7czoxNjoicHJvZHVjdF9jYXRlZ29yeSI7aTo5NDtzOjg6ImJyYW5kX2lkIjtpOjU7czoxMjoicHJvZHVjdF9uYW1lIjtzOjEwOiJIYXV3ZWkgUDMwIjtzOjU6ImltYWdlIjtzOjQyOiIvY2tmaW5kZXIvdXNlcmZpbGVzL2ltYWdlcy9Qcm9kdWN0LzEwOS5qcGciO3M6MTQ6InByb2R1Y3RfZGV0YWlsIjtzOjE2MzA6IjxoMj5UaCZvY2lyYztuZyBz4buRIGvhu7kgdGh14bqtdDwvaDI+DQoNCjx1bD4NCgk8bGk+TSZhZ3JhdmU7biBoJmlncmF2ZTtuaDoNCgk8cD48YSBocmVmPSJodHRwczovL3d3dy50aGVnaW9pZGlkb25nLmNvbS9ob2ktZGFwL21hbi1oaW5oLW9sZWQtbGEtZ2ktOTA1NzYyIiB0YXJnZXQ9Il9ibGFuayI+T0xFRDwvYT4sIDYuNDcmcXVvdDssJm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vdGluLXR1Yy9kby1waGFuLWdpYWktbWFuLWhpbmgtcWhkLWhkLWZ1bGxoZC0yay00ay1sYS1naS0tNTkyMTc4I2Z1bGxoZCIgdGFyZ2V0PSJfYmxhbmsiPkZ1bGwgSEQrPC9hPjwvcD4NCgk8L2xpPg0KCTxsaT5I4buHIMSRaeG7gXUgaCZhZ3JhdmU7bmg6DQoJPHA+PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vaG9pLWRhcC90aW0taGlldS1hbmRyb2lkLTkwLXBpZS12YS1uaHVuZy10aW5oLW5hbmctbW9pLW5vaS0xMTA3MTE5IiB0YXJnZXQ9Il9ibGFuayI+QW5kcm9pZCA5LjAgKFBpZSk8L2E+PC9wPg0KCTwvbGk+DQoJPGxpPkNhbWVyYSBzYXU6DQoJPHA+Q2gmaWFjdXRlO25oIDQwIE1QICZhbXA7IFBo4bulIDIwIE1QLCA4IE1QLCBUT0YgM0Q8L3A+DQoJPC9saT4NCgk8bGk+Q2FtZXJhIHRyxrDhu5tjOg0KCTxwPjMyIE1QPC9wPg0KCTwvbGk+DQoJPGxpPkNQVToNCgk8cD48YSBocmVmPSJodHRwczovL3d3dy50aGVnaW9pZGlkb25nLmNvbS9ob2ktZGFwL2RvbmctY2hpcC1raXJpbi05ODAtY2FvLWNhcC1jby1naS1kYWMtYmlldC0xMTcyMDgzIiB0YXJnZXQ9Il9ibGFuayI+SGlzaWxpY29uIEtpcmluIDk4MCA4IG5oJmFjaXJjO24gNjQtYml0PC9hPjwvcD4NCgk8L2xpPg0KCTxsaT5SQU06DQoJPHA+OCBHQjwvcD4NCgk8L2xpPg0KCTxsaT5C4buZIG5o4bubIHRyb25nOg0KCTxwPjI1NiBHQjwvcD4NCgk8L2xpPg0KCTxsaT5UaOG6uyBTSU06DQoJPHA+PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vdGluLXR1Yy90aW0taGlldS1jYWMtbG9haS1zaW0tdGhvbmctZHVuZy1zaW0tdGh1b25nLW1pY3JvLS01OTAyMTYjbmFub3NpbSIgdGFyZ2V0PSJfYmxhbmsiPjIgTmFubyBTSU08L2E+LCZuYnNwOzxhIGhyZWY9Imh0dHBzOi8vd3d3LnRoZWdpb2lkaWRvbmcuY29tL2hvaS1kYXAvNGctbGEtZ2ktNzMxNzU3IiB0YXJnZXQ9Il9ibGFuayI+SOG7lyB0cuG7oyA0RzwvYT48L3A+DQoNCgk8cD48c3Ryb25nPkhPVDwvc3Ryb25nPjxhIGhyZWY9Imh0dHBzOi8vd3d3LnRoZWdpb2lkaWRvbmcuY29tL3NpbS1zby1kZXAvdmlldHRlbD90PTczIj5TSU0gVklFVFRFTCBHJk9jaXJjO0cmT2NpcmM7IDRHICgzR0IgZGF0YS8gdGgmYWFjdXRlO25nKTwvYT4uIEdpJmFhY3V0ZTsgdOG7qyZuYnNwOzxzdHJvbmc+MjUwLjAwMMSRPC9zdHJvbmc+PC9wPg0KCTwvbGk+DQoJPGxpPkR1bmcgbMaw4bujbmcgcGluOg0KCTxwPjQyMDAgbUFoLCZuYnNwOzxhIGhyZWY9Imh0dHBzOi8vd3d3LnRoZWdpb2lkaWRvbmcuY29tL2hvaS1kYXAvY29uZy1uZ2hlLXNhYy1uaGFuaC10cmVuLXNtYXJ0cGhvbmUtNzU1NTQ5IiB0YXJnZXQ9Il9ibGFuayI+YyZvYWN1dGU7IHPhuqFjIG5oYW5oPC9hPjwvcD4NCgk8L2xpPg0KPC91bD4iO3M6NDoic2FsZSI7aToxO3M6ODoicXVhbnRpdHkiO2k6MTAwMDtzOjU6InByaWNlIjtpOjIzMDAwMDAwO3M6OToic2FsZXByaWNlIjtpOjE4MDAwMDAwO3M6NToidHJhc2giO2k6MDtzOjY6InN0YXR1cyI7aToxO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMTktMDctMjQgMTA6Mzk6MDEiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMTktMDktMDkgMDk6NDU6MDEiO31zOjExOiIAKgBvcmlnaW5hbCI7YToxNDp7czoyOiJpZCI7aTo0MztzOjE2OiJwcm9kdWN0X2NhdGVnb3J5IjtpOjk0O3M6ODoiYnJhbmRfaWQiO2k6NTtzOjEyOiJwcm9kdWN0X25hbWUiO3M6MTA6IkhhdXdlaSBQMzAiO3M6NToiaW1hZ2UiO3M6NDI6Ii9ja2ZpbmRlci91c2VyZmlsZXMvaW1hZ2VzL1Byb2R1Y3QvMTA5LmpwZyI7czoxNDoicHJvZHVjdF9kZXRhaWwiO3M6MTYzMDoiPGgyPlRoJm9jaXJjO25nIHPhu5Ega+G7uSB0aHXhuq10PC9oMj4NCg0KPHVsPg0KCTxsaT5NJmFncmF2ZTtuIGgmaWdyYXZlO25oOg0KCTxwPjxhIGhyZWY9Imh0dHBzOi8vd3d3LnRoZWdpb2lkaWRvbmcuY29tL2hvaS1kYXAvbWFuLWhpbmgtb2xlZC1sYS1naS05MDU3NjIiIHRhcmdldD0iX2JsYW5rIj5PTEVEPC9hPiwgNi40NyZxdW90OywmbmJzcDs8YSBocmVmPSJodHRwczovL3d3dy50aGVnaW9pZGlkb25nLmNvbS90aW4tdHVjL2RvLXBoYW4tZ2lhaS1tYW4taGluaC1xaGQtaGQtZnVsbGhkLTJrLTRrLWxhLWdpLS01OTIxNzgjZnVsbGhkIiB0YXJnZXQ9Il9ibGFuayI+RnVsbCBIRCs8L2E+PC9wPg0KCTwvbGk+DQoJPGxpPkjhu4cgxJFp4buBdSBoJmFncmF2ZTtuaDoNCgk8cD48YSBocmVmPSJodHRwczovL3d3dy50aGVnaW9pZGlkb25nLmNvbS9ob2ktZGFwL3RpbS1oaWV1LWFuZHJvaWQtOTAtcGllLXZhLW5odW5nLXRpbmgtbmFuZy1tb2ktbm9pLTExMDcxMTkiIHRhcmdldD0iX2JsYW5rIj5BbmRyb2lkIDkuMCAoUGllKTwvYT48L3A+DQoJPC9saT4NCgk8bGk+Q2FtZXJhIHNhdToNCgk8cD5DaCZpYWN1dGU7bmggNDAgTVAgJmFtcDsgUGjhu6UgMjAgTVAsIDggTVAsIFRPRiAzRDwvcD4NCgk8L2xpPg0KCTxsaT5DYW1lcmEgdHLGsOG7m2M6DQoJPHA+MzIgTVA8L3A+DQoJPC9saT4NCgk8bGk+Q1BVOg0KCTxwPjxhIGhyZWY9Imh0dHBzOi8vd3d3LnRoZWdpb2lkaWRvbmcuY29tL2hvaS1kYXAvZG9uZy1jaGlwLWtpcmluLTk4MC1jYW8tY2FwLWNvLWdpLWRhYy1iaWV0LTExNzIwODMiIHRhcmdldD0iX2JsYW5rIj5IaXNpbGljb24gS2lyaW4gOTgwIDggbmgmYWNpcmM7biA2NC1iaXQ8L2E+PC9wPg0KCTwvbGk+DQoJPGxpPlJBTToNCgk8cD44IEdCPC9wPg0KCTwvbGk+DQoJPGxpPkLhu5kgbmjhu5sgdHJvbmc6DQoJPHA+MjU2IEdCPC9wPg0KCTwvbGk+DQoJPGxpPlRo4bq7IFNJTToNCgk8cD48YSBocmVmPSJodHRwczovL3d3dy50aGVnaW9pZGlkb25nLmNvbS90aW4tdHVjL3RpbS1oaWV1LWNhYy1sb2FpLXNpbS10aG9uZy1kdW5nLXNpbS10aHVvbmctbWljcm8tLTU5MDIxNiNuYW5vc2ltIiB0YXJnZXQ9Il9ibGFuayI+MiBOYW5vIFNJTTwvYT4sJm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vaG9pLWRhcC80Zy1sYS1naS03MzE3NTciIHRhcmdldD0iX2JsYW5rIj5I4buXIHRy4bujIDRHPC9hPjwvcD4NCg0KCTxwPjxzdHJvbmc+SE9UPC9zdHJvbmc+PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vc2ltLXNvLWRlcC92aWV0dGVsP3Q9NzMiPlNJTSBWSUVUVEVMIEcmT2NpcmM7RyZPY2lyYzsgNEcgKDNHQiBkYXRhLyB0aCZhYWN1dGU7bmcpPC9hPi4gR2kmYWFjdXRlOyB04burJm5ic3A7PHN0cm9uZz4yNTAuMDAwxJE8L3N0cm9uZz48L3A+DQoJPC9saT4NCgk8bGk+RHVuZyBsxrDhu6NuZyBwaW46DQoJPHA+NDIwMCBtQWgsJm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly93d3cudGhlZ2lvaWRpZG9uZy5jb20vaG9pLWRhcC9jb25nLW5naGUtc2FjLW5oYW5oLXRyZW4tc21hcnRwaG9uZS03NTU1NDkiIHRhcmdldD0iX2JsYW5rIj5jJm9hY3V0ZTsgc+G6oWMgbmhhbmg8L2E+PC9wPg0KCTwvbGk+DQo8L3VsPiI7czo0OiJzYWxlIjtpOjE7czo4OiJxdWFudGl0eSI7aToxMDAwO3M6NToicHJpY2UiO2k6MjMwMDAwMDA7czo5OiJzYWxlcHJpY2UiO2k6MTgwMDAwMDA7czo1OiJ0cmFzaCI7aTowO3M6Njoic3RhdHVzIjtpOjE7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAxOS0wNy0yNCAxMDozOTowMSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAxOS0wOS0wOSAwOTo0NTowMSI7fXM6MTA6IgAqAGNoYW5nZXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6ODoiACoAZGF0ZXMiO2E6MDp7fXM6MTM6IgAqAGRhdGVGb3JtYXQiO047czoxMDoiACoAYXBwZW5kcyI7YTowOnt9czoxOToiACoAZGlzcGF0Y2hlc0V2ZW50cyI7YTowOnt9czoxNDoiACoAb2JzZXJ2YWJsZXMiO2E6MDp7fXM6MTI6IgAqAHJlbGF0aW9ucyI7YTowOnt9czoxMDoiACoAdG91Y2hlcyI7YTowOnt9czoxMDoidGltZXN0YW1wcyI7YjoxO3M6OToiACoAaGlkZGVuIjthOjA6e31zOjEwOiIAKgB2aXNpYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO319czoxMjoicHJvZHVjdF9uYW1lIjtzOjEwOiJIYXV3ZWkgUDMwIjt9fXM6ODoidG90YWxRdHkiO2k6MTtzOjEwOiJ0b3RhbFByaWNlIjtpOjE4MDAwMDAwO319',1568800765),('B5z9zC9Na3xZE1EXACdc0qCdX6TKIeallsRaO9fi',NULL,'192.168.10.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREhjQ2M2bTZ5T1VyUE5FVWRSbEJvcVBSaVJnT05BTjhrRmRJRFZyWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJhZG1pbiI7TzoxNToiQXBwXE1vZGVsc1xVc2VyIjoyNzp7czoxMToiACoAZmlsbGFibGUiO2E6Nzp7aTowO3M6NDoibmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjtpOjM7czo0OiJyb2xlIjtpOjQ7czo2OiJhdmF0YXIiO2k6NTtzOjU6InBob25lIjtpOjY7czo3OiJhZGRyZXNzIjt9czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6ODoiACoAY2FzdHMiO2E6MTp7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6ODoiZGF0ZXRpbWUiO31zOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjU6InVzZXJzIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjEyOntzOjI6ImlkIjtpOjk7czo0OiJuYW1lIjtzOjEzOiJ2aW5oLm5ndXnhu4VuIjtzOjU6ImVtYWlsIjtzOjIxOiIwMTYzNjYwNTcxNkBnbWFpbC5jb20iO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtOO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCR3OGxJNkQuSjRuTXJqUkNQYkZaVnl1ZWZ2ck83dUs5YWdVV1lFa0x5aTdLcFJVeTBpenVEZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czo0OiJyb2xlIjtzOjU6ImFkbWluIjtzOjY6ImF2YXRhciI7czo1MToiL2NrZmluZGVyL3VzZXJmaWxlcy9maWxlcy9zbGlkZV9oZWFkZXIvZG93bmxvYWQuanBnIjtzOjc6ImFkZHJlc3MiO3M6MjA6IjEwMyB0xINuZyBuaMahbiBwaMO6IjtzOjU6InBob25lIjtzOjEwOiIwOTI5NTA2NTY5Ijt9czoxMToiACoAb3JpZ2luYWwiO2E6MTI6e3M6MjoiaWQiO2k6OTtzOjQ6Im5hbWUiO3M6MTM6InZpbmgubmd1eeG7hW4iO3M6NToiZW1haWwiO3M6MjE6IjAxNjM2NjA1NzE2QGdtYWlsLmNvbSI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO047czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJHc4bEk2RC5KNG5NcmpSQ1BiRlpWeXVlZnZyTzd1SzlhZ1VXWUVrTHlpN0twUlV5MGl6dURlIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjQ6InJvbGUiO3M6NToiYWRtaW4iO3M6NjoiYXZhdGFyIjtzOjUxOiIvY2tmaW5kZXIvdXNlcmZpbGVzL2ZpbGVzL3NsaWRlX2hlYWRlci9kb3dubG9hZC5qcGciO3M6NzoiYWRkcmVzcyI7czoyMDoiMTAzIHTEg25nIG5oxqFuIHBow7oiO3M6NToicGhvbmUiO3M6MTA6IjA5Mjk1MDY1NjkiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEwOiIAKgB2aXNpYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO31zOjIwOiIAKgByZW1lbWJlclRva2VuTmFtZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2hvbWVzdGVhZC50ZXN0L21lc3NhZ2VzIjt9fQ==',1568710723),('IXobZfnI6BI0MYGMuf1LCW2F5IIxvswOUeQbthnM',7,'192.168.10.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUEdSTDBUN2VQaG11NjQ0NnQwU0lOYXRYZ056ZnlMeHhBVWRMc0I2ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ob21lc3RlYWQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==',1568709206),('l6Bz1zJkVrqTOnXMftkv1qf7cceaBbHfR1AkMuzt',4,'192.168.10.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','YTo1OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2hvbWVzdGVhZC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlMyRnRVRkN2Wm5ZaE1oRmV5bDRScTlQWDZmUW02OUx3Qm1DcWFRMTIiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czo1OiJhZG1pbiI7TzoxNToiQXBwXE1vZGVsc1xVc2VyIjoyNzp7czoxMToiACoAZmlsbGFibGUiO2E6Nzp7aTowO3M6NDoibmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjtpOjM7czo0OiJyb2xlIjtpOjQ7czo2OiJhdmF0YXIiO2k6NTtzOjU6InBob25lIjtpOjY7czo3OiJhZGRyZXNzIjt9czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6ODoiACoAY2FzdHMiO2E6MTp7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6ODoiZGF0ZXRpbWUiO31zOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjU6InVzZXJzIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjEyOntzOjI6ImlkIjtpOjg7czo0OiJuYW1lIjtzOjU6ImFkbWluIjtzOjU6ImVtYWlsIjtzOjE1OiJhZG1pbkBnbWFpbC5jb20iO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtOO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRsNmsxbndURW1hNDFWbDVQV1JJdDFlLi9YL1E1bzVOUEl6SVdoQ3BDek13SDBnL2FKUjZOUyI7czoxNDoicmVtZW1iZXJfdG9rZW4iO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xMSAxMDowODowMiI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xMSAxMDowODowMiI7czo0OiJyb2xlIjtzOjU6ImFkbWluIjtzOjY6ImF2YXRhciI7czo1MToiL2NrZmluZGVyL3VzZXJmaWxlcy9maWxlcy9zbGlkZV9oZWFkZXIvZG93bmxvYWQucG5nIjtzOjc6ImFkZHJlc3MiO3M6MTY6IjEwMyDEkcaw4budbmcgMTEiO3M6NToicGhvbmUiO3M6MTA6IjA5Mjk1MDY1NjkiO31zOjExOiIAKgBvcmlnaW5hbCI7YToxMjp7czoyOiJpZCI7aTo4O3M6NDoibmFtZSI7czo1OiJhZG1pbiI7czo1OiJlbWFpbCI7czoxNToiYWRtaW5AZ21haWwuY29tIjtzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7TjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkbDZrMW53VEVtYTQxVmw1UFdSSXQxZS4vWC9RNW81TlBJeklXaENwQ3pNd0gwZy9hSlI2TlMiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMTktMDktMTEgMTA6MDg6MDIiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMTktMDktMTEgMTA6MDg6MDIiO3M6NDoicm9sZSI7czo1OiJhZG1pbiI7czo2OiJhdmF0YXIiO3M6NTE6Ii9ja2ZpbmRlci91c2VyZmlsZXMvZmlsZXMvc2xpZGVfaGVhZGVyL2Rvd25sb2FkLnBuZyI7czo3OiJhZGRyZXNzIjtzOjE2OiIxMDMgxJHGsOG7nW5nIDExIjtzOjU6InBob25lIjtzOjEwOiIwOTI5NTA2NTY5Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBkYXRlcyI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjEwOiJ0aW1lc3RhbXBzIjtiOjE7czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9czoyMDoiACoAcmVtZW1iZXJUb2tlbk5hbWUiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjt9fQ==',1568710764),('okd9x0CTAQXFnLEoGN6BHyqgbedzjnTQONNKk0RL',NULL,'192.168.10.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjNpTnFsTkFtaGxMOUVhc1pQZjBINTJJeGJWRFFpWmw5TDJkbG4zayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9ob21lc3RlYWQudGVzdC9kZXRhaWwvZXhwb3J0LzYzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJhZG1pbiI7TzoxNToiQXBwXE1vZGVsc1xVc2VyIjoyNzp7czoxMToiACoAZmlsbGFibGUiO2E6Nzp7aTowO3M6NDoibmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjtpOjM7czo0OiJyb2xlIjtpOjQ7czo2OiJhdmF0YXIiO2k6NTtzOjU6InBob25lIjtpOjY7czo3OiJhZGRyZXNzIjt9czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6ODoiACoAY2FzdHMiO2E6MTp7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6ODoiZGF0ZXRpbWUiO31zOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjU6InVzZXJzIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjEyOntzOjI6ImlkIjtpOjk7czo0OiJuYW1lIjtzOjEzOiJ2aW5oLm5ndXnhu4VuIjtzOjU6ImVtYWlsIjtzOjIxOiIwMTYzNjYwNTcxNkBnbWFpbC5jb20iO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtOO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCR3OGxJNkQuSjRuTXJqUkNQYkZaVnl1ZWZ2ck83dUs5YWdVV1lFa0x5aTdLcFJVeTBpenVEZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAxOS0wOS0xNyAwMjo0NDoxMCI7czo0OiJyb2xlIjtzOjU6ImFkbWluIjtzOjY6ImF2YXRhciI7czo1MToiL2NrZmluZGVyL3VzZXJmaWxlcy9maWxlcy9zbGlkZV9oZWFkZXIvZG93bmxvYWQuanBnIjtzOjc6ImFkZHJlc3MiO3M6MjA6IjEwMyB0xINuZyBuaMahbiBwaMO6IjtzOjU6InBob25lIjtzOjEwOiIwOTI5NTA2NTY5Ijt9czoxMToiACoAb3JpZ2luYWwiO2E6MTI6e3M6MjoiaWQiO2k6OTtzOjQ6Im5hbWUiO3M6MTM6InZpbmgubmd1eeG7hW4iO3M6NToiZW1haWwiO3M6MjE6IjAxNjM2NjA1NzE2QGdtYWlsLmNvbSI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO047czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJHc4bEk2RC5KNG5NcmpSQ1BiRlpWeXVlZnZyTzd1SzlhZ1VXWUVrTHlpN0twUlV5MGl6dURlIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDE5LTA5LTE3IDAyOjQ0OjEwIjtzOjQ6InJvbGUiO3M6NToiYWRtaW4iO3M6NjoiYXZhdGFyIjtzOjUxOiIvY2tmaW5kZXIvdXNlcmZpbGVzL2ZpbGVzL3NsaWRlX2hlYWRlci9kb3dubG9hZC5qcGciO3M6NzoiYWRkcmVzcyI7czoyMDoiMTAzIHTEg25nIG5oxqFuIHBow7oiO3M6NToicGhvbmUiO3M6MTA6IjA5Mjk1MDY1NjkiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEwOiIAKgB2aXNpYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO31zOjIwOiIAKgByZW1lbWJlclRva2VuTmFtZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO319',1568783164);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (1,'Headline','Duy nhất 3 ngày SAMSUNG giảm sốc','/ckfinder/userfiles/files/slide_header/SAMSUNG-B%C3%8CA.png','<p>Sau xu thế m&agrave;n h&igrave;nh tai thỏ hay m&agrave;n h&igrave;nh giọt nước th&igrave; giờ đ&acirc;y c&aacute;c h&atilde;ng lại chạy đua nhau để mang lại một trải nghiệm m&agrave;n h&igrave;nh thực thụ v&agrave;&nbsp;Mi 9T l&agrave; một chiếc m&aacute;y như vậy.</p>\r\n\r\n<p>Nhờ sử dụng camera trước th&ograve; thụt n&ecirc;n chiếc smartphone mới tới từ Xiaomi n&agrave;y mang lại cho người d&ugrave;ng một trải nghiệm rất th&iacute;ch mắt khi m&agrave;n h&igrave;nh c&oacute; cảm gi&aacute;c tr&agrave;n ra cả 4 cạnh.</p>\r\n\r\n<p>M&aacute;y c&oacute; m&agrave;n h&igrave;nh k&iacute;ch thước l&ecirc;n đến 6.39 inch độ ph&acirc;n giải Full HD+, sử dụng tấm nền AMOLED cho trải nghiệm h&igrave;nh ảnh v&agrave; m&agrave;u sắc rực rỡ, ph&ugrave; hợp với nhu cầu giải tr&iacute; c&aacute; nh&acirc;n.</p>',0,1,'2019-09-06 04:11:53','2019-09-10 06:05:12'),(2,'Headline','Apple iphone củ nhận quà khủng','/ckfinder/userfiles/files/slide_header/BIA.png','<p>Kh&ocirc;ng thể phủ nhận sự s&aacute;ng tạo tuyệt vời của đội ngũ thiết kế sản phẩm của Apple trong những mẫu iPhone, iPad, MacBook hay cả Apple Watch của họ. iPhone 7 tr&ocirc;ng rất đẹp mắt v&agrave; quyến rũ. Với khung nh&ocirc;m nguy&ecirc;n khối c&ugrave;ng c&aacute;c cạnh được bo tr&ograve;n v&agrave; mặt k&iacute;nh 2.5D gi&uacute;p cho bạn cầm nắm thiết bị thoải m&aacute;i hơn. Thiết bị n&agrave;y mang bộ khung nh&ocirc;m cao cấp 7000 series gi&uacute;p cho n&oacute; bền hơn, bảo vệ thiết bị tốt hơn khi va đập m&agrave; trọng lượng của n&oacute; vẫn nhẹ hơn so với iPhone 6 hay iPhone 6s</p>',0,1,'2019-09-06 04:11:54','2019-09-10 06:05:40'),(3,'Headline','Đặt trước Galaxy a50','/ckfinder/userfiles/files/slide_header/B%C3%ACa1%20(2).jpg','<p><strong>Tăng gấp đ&ocirc;i thời gian bao test &ndash; Tăng th&ecirc;m nhiều th&aacute;ng bảo h&agrave;nh &ndash; Giảm gi&aacute; khi mua BHV &ndash; Miễn ph&iacute; vận chuyển &ndash; Giao h&agrave;ng tận nơi kiểm tra ưng mới phải thanh to&aacute;n &ndash; Hỗ trợ ph&iacute; gửi đi gửi về nếu m&aacute;y lỗi</strong></p>',0,1,'2019-09-06 04:11:55','2019-09-10 06:32:44'),(4,'Headline','Cuối tuần thả ga ANDROID','/ckfinder/userfiles/files/slide_header/B%C3%ACa1.jpg','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,1,'2019-09-06 04:11:56','2019-09-06 04:22:29'),(5,'Headline','Duy nhất 3 ngày','/ckfinder/userfiles/files/slide_header/SAMSUNG-B%C3%8CA.png','<p>Đ&acirc;y l&agrave; một c&ocirc;ng nghệ rất được người d&ugrave;ng y&ecirc;u th&iacute;ch khi n&oacute; mang lại sự liền mạch cho thiết bị m&agrave; vẫn c&oacute; thể sử dụng cảm biến v&acirc;n tay ở mặt trước như truyền thống.</p>\r\n\r\n<p>Tốc độ mở kh&oacute;a của cảm biến n&agrave;y kh&aacute; nhanh, kh&ocirc;ng hề thua k&eacute;m c&aacute;c loại cảm biến v&acirc;n tay truyền thống kh&aacute;c.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; bạn cũng c&oacute; thể sử dụng t&iacute;nh năng mở kh&oacute;a khu&ocirc;n mặt bằng camera trước của m&aacute;y.</p>',0,1,'2019-09-06 04:11:57','2019-09-10 06:33:29'),(6,'Headline','Apple iphone củ nhận quà khủng','/ckfinder/userfiles/files/slide_header/BIA.png','<p>Kh&ocirc;ng thể phủ nhận sự s&aacute;ng tạo tuyệt vời của đội ngũ thiết kế sản phẩm của Apple trong những mẫu iPhone, iPad, MacBook hay cả Apple Watch của họ. iPhone 7 tr&ocirc;ng rất đẹp mắt v&agrave; quyến rũ. Với khung nh&ocirc;m nguy&ecirc;n khối c&ugrave;ng c&aacute;c cạnh được bo tr&ograve;n v&agrave; mặt k&iacute;nh 2.5D gi&uacute;p cho bạn cầm nắm thiết bị thoải m&aacute;i hơn. Thiết bị n&agrave;y mang bộ khung nh&ocirc;m cao cấp 7000 series gi&uacute;p cho n&oacute; bền hơn, bảo vệ thiết bị tốt hơn khi va đập m&agrave; trọng lượng của n&oacute; vẫn nhẹ hơn so với iPhone 6 hay iPhone 6s</p>',0,1,'2019-09-06 04:11:54','2019-09-10 06:05:40');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'thanhvinh','thanhvinh199700@gmail.com',NULL,'$2y$10$pX4xj8r2RBvElOTqmnHKcOj85E4dbIpohDhA2NGq20M97AISXg8Km',NULL,'2019-07-26 06:45:23','2019-07-26 06:45:23','user','/ckfinder/userfiles/images/Product/Product2/avatar.jpg','103 tăng nhơn phú','0929506569'),(7,'nguyễn thành vinh','vinh.nguyen@vietlinkads.com',NULL,'$2y$10$AztA1BzIJQyQdQSfc3a7r.MaClkFIFrNl1nGx8bEgU3p8fsQ1Xn3u',NULL,'2019-09-04 10:53:21','2019-09-04 10:53:21','user','/ckfinder/userfiles/images/Product/Product2/avatar.jpg','103 đường 11','0929506569'),(8,'admin','admin@gmail.com',NULL,'$2y$10$l6k1nwTEma41Vl5PWRIt1e./X/Q5o5NPIzIWhCpCzMwH0g/aJR6NS',NULL,'2019-09-11 10:08:02','2019-09-11 10:08:02','admin','/ckfinder/userfiles/files/slide_header/download.png','103 đường 11','0929506569'),(9,'vinh.nguyễn','01636605716@gmail.com',NULL,'$2y$10$w8lI6D.J4nMrjRCPbFZVyuefvrO7uK9agUWYEkLyi7KpRUy0izuDe',NULL,'2019-09-17 02:44:10','2019-09-17 02:44:10','admin','/ckfinder/userfiles/files/slide_header/download.jpg','103 tăng nhơn phú','0929506569');
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

-- Dump completed on 2019-09-18 17:03:04
