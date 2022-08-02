-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: technomart
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `aid` int NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@gmail.com','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catagory`
--

DROP TABLE IF EXISTS `catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catagory` (
  `cat-id` int NOT NULL AUTO_INCREMENT,
  `cat-name` varchar(45) DEFAULT NULL,
  `cat-img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cat-id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catagory`
--

LOCK TABLES `catagory` WRITE;
/*!40000 ALTER TABLE `catagory` DISABLE KEYS */;
INSERT INTO `catagory` VALUES (1,'Pre-built',NULL),(2,'laptop',NULL);
/*!40000 ALTER TABLE `catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `conid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Shubham Sharad Salunkhe','','shubhamsalunkhe860@gmail.com',''),(2,'Shubham Sharad Salunkhe','work','shubhamsalunkhe860@gmail.com','Nice work');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom`
--

DROP TABLE IF EXISTS `custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom` (
  `customid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `motherbord` varchar(45) DEFAULT NULL,
  `processer` varchar(45) DEFAULT NULL,
  `ram` varchar(45) DEFAULT NULL,
  `graphics` varchar(45) DEFAULT NULL,
  `ssd` varchar(45) DEFAULT NULL,
  `hdd` varchar(45) DEFAULT NULL,
  `psu` varchar(45) DEFAULT NULL,
  `cabinet` varchar(45) DEFAULT NULL,
  `cooler` varchar(45) DEFAULT NULL,
  `fan` varchar(45) DEFAULT NULL,
  `moniter` varchar(45) DEFAULT NULL,
  `ups` varchar(45) DEFAULT NULL,
  `keyboard` varchar(45) DEFAULT NULL,
  `mouse` varchar(45) DEFAULT NULL,
  `mssage` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`customid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom`
--

LOCK TABLES `custom` WRITE;
/*!40000 ALTER TABLE `custom` DISABLE KEYS */;
INSERT INTO `custom` VALUES (2,0,'khafsfn;g','','','','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `uid` int NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `odate` date DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'1','2022-05-08'),(2,2,1,'1','2022-05-08'),(3,1,1,'1','2022-05-08'),(4,1,1,'1','2022-05-08'),(5,2,1,'1','2022-05-08'),(6,1,2,'1','2022-05-08'),(7,2,2,'1','2022-05-08'),(8,1,2,'1','2022-05-08'),(9,1,1,'1','2022-05-10'),(10,2,4,'1','2022-05-10');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) DEFAULT NULL,
  `pinfo` varchar(450) DEFAULT NULL,
  `pimg` varchar(100) DEFAULT NULL,
  `prate` int DEFAULT NULL,
  `cat_id` int NOT NULL,
  UNIQUE KEY `pid_UNIQUE` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'TechnoMart Special 3090','• Intel Core i9 10900K Gaming Dekstop<br/>• 16 GBx2 3200 MHz DDR4 RAM + 1 TB 7200 RPM SATA HDD+ 1TB Nvme M.2 SSD<br/>• Windows 10 Home 64-Bit<br/>• GeForce RTX 3090 12GB','assets/img/Product/NGC Special.png',279300,1),(2,'TechnoMart Special 2070','• Intel Core i7 10700 10th Gen Gaming Dekstop <br/>• 32GB RAM/1TB NVMe SSD + 1TB HDD<br/>• Windows 10<br/>• NVIDIA GeForce RTX 2070 Super 8GB<br/>• RGB Keyboard & Mouse/Star Black ','assets/img/Product/ASUS ROG Strix GT20.png',169000,1),(3,'TechnoMart Special 1650','• Intel Core i5-10400F 10th Gen Gaming Dekstop <br/>• 8GB RAM/256GB NVMe SSD + 1TB HDD<br/>• Win10/<br/>• NVIDIA GeForce GTX 1650 Graphics 4GB<br/>• with Keyboard & Mouse, <br/>• G15CK-IN040T and Monitor Combo','assets/img/Product/ASUS ROG Strix GT15.png',92000,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `number` double DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'abc','def ','abc@gmail.com',1234567890,'Phaltan','123'),(2,'Shubham','Salunkhe','shubhamsalunkhe860@gmail.com',8600059426,'B-4 Pancharatna Apparent Jadhavwadi Near Sai Baba Temple','8600'),(3,'rutika','bhosale','rutu0502@gmail.com',7499922600,'jadhavwadi phaltan','rutika1305'),(4,'Shubham','Salunkhe','rutu0502@gmail',123,'B-4 Pancharatna Apparent Jadhavwadi Near Sai Baba Temple','8600');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14  1:17:44
