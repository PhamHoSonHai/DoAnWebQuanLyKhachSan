-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: homestay_manage
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `department_charge` int DEFAULT NULL,
  `late_checkout` int DEFAULT NULL,
  `service_charge` int DEFAULT NULL,
  `booking_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhn2nihthxqqhxw3we3clpfhxp` (`booking_id`),
  KEY `FKqhq5aolak9ku5x5mx11cpjad9` (`user_id`),
  CONSTRAINT `FKhn2nihthxqqhxw3we3clpfhxp` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `FKqhq5aolak9ku5x5mx11cpjad9` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_payment`
--

DROP TABLE IF EXISTS `bill_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_payment` (
  `bill_id` bigint NOT NULL,
  `payment_id` bigint NOT NULL,
  KEY `FKpa7034n7t10m8ymff0y702isy` (`payment_id`),
  KEY `FKjnqsfr0b9lukfdd6577vtngd5` (`bill_id`),
  CONSTRAINT `FKjnqsfr0b9lukfdd6577vtngd5` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`),
  CONSTRAINT `FKpa7034n7t10m8ymff0y702isy` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_payment`
--

LOCK TABLES `bill_payment` WRITE;
/*!40000 ALTER TABLE `bill_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `adult_amount` int DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `child_amount` int DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKniilsggepks7036smm7bsav1f` (`department_id`),
  KEY `FKkgseyy7t56x7lkjgu3wah5s3t` (`user_id`),
  CONSTRAINT `FKkgseyy7t56x7lkjgu3wah5s3t` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKniilsggepks7036smm7bsav1f` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (11,'user','2024-07-10 15:43:34','user','2024-07-10 15:43:34',3,NULL,'2024-07-01 00:00:00','2024-11-12 00:00:00',2,1,3),(12,'user','2024-07-10 15:43:47','user','2024-07-10 15:43:47',3,NULL,'2024-07-01 00:00:00','2024-11-02 00:00:00',2,4,3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrpd7j1p7yxr784adkx4pyepba` (`country_id`),
  CONSTRAINT `FKrpd7j1p7yxr784adkx4pyepba` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,NULL,NULL,NULL,NULL,'NHATRANG','Nha trang',1),(2,NULL,NULL,NULL,NULL,'DANANG','Đà Nẵng',1),(3,NULL,NULL,NULL,NULL,'VUNGTAU','Vũng Tàu',1),(4,NULL,NULL,NULL,NULL,'HANOI','Hà Nội',1),(5,NULL,NULL,NULL,NULL,'TPHCM','Thành Phố Hồ Chí Minh',1),(6,NULL,NULL,NULL,NULL,'QUANGNGAI','Quảng Ngãi',1),(7,NULL,NULL,NULL,NULL,'QUYNHON','Quy Nhơn',1),(8,NULL,NULL,NULL,NULL,'PHUQUOC','Phú Quốc',1),(9,NULL,NULL,NULL,NULL,'DALAT','Đà Lạt',1),(10,NULL,NULL,NULL,NULL,'PHANTHIET','Phan Thiết',1),(11,NULL,NULL,NULL,NULL,'SAPA','Sapa',1),(12,NULL,NULL,NULL,NULL,'THAINGUYEN','Thái Nguyên',1),(13,NULL,NULL,NULL,NULL,'BALI','Bali',2),(14,NULL,NULL,NULL,NULL,'SEOUL','Seoul',3),(15,NULL,NULL,NULL,NULL,'TOKYO','Tokyo',4),(16,NULL,NULL,NULL,NULL,'HONGKONG','HongKong',5),(17,NULL,NULL,NULL,NULL,'LA','Los Angeles',6),(18,NULL,NULL,NULL,NULL,'LONDON','London',7);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKohebyiv9luvpsj7qqs3tjh4dt` (`department_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKohebyiv9luvpsj7qqs3tjh4dt` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,NULL,NULL,NULL,NULL,'VIETNAM','Việt Nam'),(2,NULL,NULL,NULL,NULL,'INDONESIA','Indonesia'),(3,NULL,NULL,NULL,NULL,'KOREA','Hàn Quốc'),(4,NULL,NULL,NULL,NULL,'JAPAN','Nhật Bản'),(5,NULL,NULL,NULL,NULL,'CHINA','Trung Quốc'),(6,NULL,NULL,NULL,NULL,'USA','Mỹ'),(7,NULL,NULL,NULL,NULL,'ENGLAND','Anh');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `amenities` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `catergory` varchar(255) DEFAULT NULL,
  `description` longtext,
  `max_person` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnavmwckikadl3isnfkrwv1rt9` (`city_id`),
  CONSTRAINT `FKnavmwckikadl3isnfkrwv1rt9` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, TV, AC',2,'Luxury','Phòng đẹp với tầm nhìn ra biển',2,1500000,4.5,'Single','Phòng Đơn Biển','link_video',1),(2,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, Pool',4,'Deluxe','Phòng rộng rãi, hiện đại',4,2000000,4.7,'Double','Phòng Đôi Hiện Đại','link_video',1),(3,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, TV',3,'Standard','Phòng tiêu chuẩn với tiện nghi cơ bản',3,1000000,4,'Triple','Phòng Ba Người','link_video',2),(4,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, AC',2,'Economy','Phòng kinh tế cho khách du lịch',2,800000,3.8,'Single','Phòng Đơn Kinh Tế','link_video',2),(5,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, TV, AC, Pool',2,'Luxury','Phòng sang trọng với bể bơi riêng',2,3000000,5,'Single','Phòng Đơn Sang Trọng','link_video',3),(6,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, AC',4,'Deluxe','Phòng đôi tiện nghi cao cấp',4,2500000,4.9,'Double','Phòng Đôi Deluxe','link_video',3),(7,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, TV',3,'Standard','Phòng gia đình tiêu chuẩn',3,1200000,4.2,'Triple','Phòng Gia Đình','link_video',4),(8,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, AC',2,'Economy','Phòng tiết kiệm cho cặp đôi',2,900000,3.9,'Double','Phòng Đôi Tiết Kiệm','link_video',4),(9,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, TV, AC',4,'Luxury','Phòng sang trọng với view đẹp',4,3200000,5,'Suite','Suite Sang Trọng','link_video',5),(10,'admin','2024-07-10 10:46:40','admin','2024-07-10 10:46:40','Wi-Fi, Pool',2,'Deluxe','Phòng Deluxe với hồ bơi',2,2200000,4.8,'Single','Phòng Đơn Deluxe','link_video',5);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_entity_thumbnail`
--

DROP TABLE IF EXISTS `department_entity_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_entity_thumbnail` (
  `department_entity_id` bigint NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  KEY `FK8pm0wcj1ss8biab3g5aulux2w` (`department_entity_id`),
  CONSTRAINT `FK8pm0wcj1ss8biab3g5aulux2w` FOREIGN KEY (`department_entity_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_entity_thumbnail`
--

LOCK TABLES `department_entity_thumbnail` WRITE;
/*!40000 ALTER TABLE `department_entity_thumbnail` DISABLE KEYS */;
INSERT INTO `department_entity_thumbnail` VALUES (1,'img/room1/1.jpg'),(1,'img/room1/2.jpg'),(1,'img/room1/3.jpg'),(2,'img/room2/1.jpg'),(2,'img/room2/2.jpg'),(2,'img/room2/3.jpg'),(3,'img/room3/1.jpg'),(3,'img/room3/2.jpg'),(3,'img/room3/3.jpg'),(4,'img/room4/1.jpg'),(4,'img/room4/2.jpg'),(4,'img/room4/3.jpg'),(5,'img/room5/1.jpg'),(5,'img/room5/2.jpg'),(5,'img/room5/3.jpg'),(6,'img/room6/1.jpg'),(6,'img/room6/2.jpg'),(6,'img/room6/3.jpg'),(7,'img/room7/1.jpg'),(7,'img/room7/2.jpg'),(7,'img/room7/3.jpg');
/*!40000 ALTER TABLE `department_entity_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,NULL,NULL,NULL,NULL,'TRANSFER','Chuyển khoản'),(2,NULL,NULL,NULL,NULL,'QRCODE','Quét mã QR'),(3,NULL,NULL,NULL,NULL,'ELECTRONICWALLET','Ví điện tử'),(4,'admin','2024-07-10 11:08:04','admin','2024-07-10 11:08:04','CASH','Tiền Mặt'),(5,'admin','2024-07-10 11:08:04','admin','2024-07-10 11:08:04','CREDIT','Thẻ Tín Dụng');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,NULL,NULL,'ADMIN','Quản trị viên'),(2,NULL,NULL,NULL,NULL,'USER','Người dùng'),(3,'admin','2024-07-10 11:08:04','admin','2024-07-10 11:08:04','ADMIN','Quản trị viên'),(4,'admin','2024-07-10 11:08:04','admin','2024-07-10 11:08:04','USER','Người dùng');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_num` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK29eqyw0gxw5r4f1ommy11nd9i` (`city_id`),
  CONSTRAINT `FK29eqyw0gxw5r4f1ommy11nd9i` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','2024-07-10 11:08:04','admin','2024-07-10 11:08:04','admin@example.com','Administrator','hashed_password',123456789,50000000,'admin',1),(2,'user','2024-07-10 11:08:30','user','2024-07-10 11:08:30','ctv55345@gmail.com','nguyen duc','0346021480',373992876,NULL,'admin1',1),(3,'user','2024-07-10 11:09:41','user','2024-07-10 11:09:41','admin1xx@gmail.com','admin1xx','admin1xx',726732135,NULL,'admin1xx',1),(4,'user','2024-07-10 15:34:12','user','2024-07-10 15:34:12','sdsdxx@gmail.com','sdsdxx','sdsdxx',345687222,NULL,'sdsdxx',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,1),(2,3),(3,1),(3,3),(4,1),(4,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 16:41:06
