CREATE DATABASE  IF NOT EXISTS `planasa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `planasa`;
-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: planasa
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `fieldId` int(11) NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `estimatedQuantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'field1','MacDoel',1,100),(3,'field2.1','MacDoel',1,1000),(4,'field2','MacDoel',3,100);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fulfillmentInformation`
--

DROP TABLE IF EXISTS `fulfillmentInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fulfillmentInformation` (
  `fulfillmentId` int(11) NOT NULL AUTO_INCREMENT,
  `fulfillmentNumber` varchar(10) NOT NULL,
  `orderId` int(11) NOT NULL,
  `orderNumber` varchar(255) NOT NULL,
  `createdDate` varchar(255) NOT NULL,
  `deliveredDate` varchar(255) NOT NULL,
  `season` varchar(255) NOT NULL,
  `notes` varchar(2047) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  PRIMARY KEY (`fulfillmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fulfillmentInformation`
--

LOCK TABLES `fulfillmentInformation` WRITE;
/*!40000 ALTER TABLE `fulfillmentInformation` DISABLE KEYS */;
INSERT INTO `fulfillmentInformation` VALUES (9,'',13,'testOrderNumber','8/12/2016','','2016','100 plants didnt get on the truck.','open'),(10,'',14,'1600000014','8/12/2016','','2016','','cancelled'),(11,'',16,'1600000016','8/12/2016','','2016','','closed'),(12,'',13,'testOrderNumber','8/22/2016','','','','closed'),(17,'',18,'1600000018','8/23/2016','','2016','','open'),(18,'',19,'1600000019','8/23/2016','','2016','','open'),(20,'',20,'1600000020','8/24/2016','','2016','','open'),(21,'',13,'testOrderNumber','8/25/2016','','2016','','open'),(22,'',13,'testOrderNumber','8/25/2016','','2016','','open'),(23,'',19,'1600000019','8/25/2016','','2016','','open'),(24,'',19,'1600000019','8/25/2016','','2016','','open');
/*!40000 ALTER TABLE `fulfillmentInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fulfillments`
--

DROP TABLE IF EXISTS `fulfillments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fulfillments` (
  `fulfillmentItemId` int(11) NOT NULL AUTO_INCREMENT,
  `fulfillmentId` int(11) NOT NULL,
  `productId` int(11) NOT NULL DEFAULT '0',
  `pickDate` varchar(255) NOT NULL,
  `variety` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `plantsPerBox` varchar(255) NOT NULL,
  `boxQuantity` varchar(255) NOT NULL,
  `plantQuantity` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `cooler` varchar(255) NOT NULL,
  `shed` varchar(255) NOT NULL,
  `truck` varchar(255) NOT NULL,
  `palletsIn` varchar(20) NOT NULL,
  `palletsOut` varchar(20) NOT NULL,
  PRIMARY KEY (`fulfillmentItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fulfillments`
--

LOCK TABLES `fulfillments` WRITE;
/*!40000 ALTER TABLE `fulfillments` DISABLE KEYS */;
INSERT INTO `fulfillments` VALUES (8,9,0,'8/12/2016','Albion','McArthur','1500','10','15000','field 1','cooler 1','shed 1','truck 1','1','1'),(9,10,0,'8/12/2016','Camarosa','McArthur','1500','10','15000','field 1','cooler 1','shed 1','truck 1','',''),(10,10,0,'8/12/2016','Camarosa','McArthur','1500','10','15000','field 2','cooler 2','shed 2','truck 2','1','1'),(11,9,0,'8/12/2016','Albion','McArthur','1500','10','15000','field2','cooler2','shed2','truck2','1','1'),(17,17,0,'','Albion','McArthur','1500','8','12000','','','','','',''),(18,17,0,'8/23/2016','Albion','McArthur','1500','1','1500','f1','','','','',''),(19,20,0,'','Albion','McArthur','1500','2','3000','','','','','',''),(20,9,0,'8/25/2016','Albion','McArthur','1500','','-100','','','','','',''),(21,21,0,'','Albion','McArthur','1500','0.07','100','','','','','',''),(22,21,0,'','Albion','McArthur','1500','','','','','','','',''),(24,22,0,'','Albion','McArthur','1500','0.07','1200','','','','','',''),(25,22,0,'','Albion','McArthur','1500','','','','','','','',''),(27,23,0,'','Albion','McArthur','1500','8','12000','','','','','',''),(28,23,0,'8/25/2016','Albion','McArthur','1500','0.07','100','','','','','',''),(29,24,0,'','Albion','McArthur','1500','1.67','2900','','','','','','');
/*!40000 ALTER TABLE `fulfillments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `growers`
--

DROP TABLE IF EXISTS `growers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `growers` (
  `growerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `countyShort` varchar(3) NOT NULL,
  `clubName` varchar(255) NOT NULL,
  `addresses` varchar(2047) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` varchar(2047) NOT NULL,
  PRIMARY KEY (`growerId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `growers`
--

LOCK TABLES `growers` WRITE;
/*!40000 ALTER TABLE `growers` DISABLE KEYS */;
INSERT INTO `growers` VALUES (1,'Andrews Farm Plants','Orange County','OC','Naturripe Another Club','[\"add1\",\"add2\"]','Andrew','Phone','','','notes'),(16,'Sunrise Growers','Orange County','OC','Naturripe','[]','Andrew','phone','fax','andrews email','grower note about sunrise'),(17,'South Park','Orange County','OC','Naturripe','[]','Also Andrew','','','',''),(18,'Gary Nakamura','Ventura','Ven','','[\"Address\"]','Gary Nakamura','805-432-2076','','garysmail@m.com','a cool guy');
/*!40000 ALTER TABLE `growers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderInformation`
--

DROP TABLE IF EXISTS `orderInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderInformation` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(255) NOT NULL,
  `orderDate` varchar(255) NOT NULL,
  `deliveryDate` varchar(255) NOT NULL,
  `season` varchar(255) NOT NULL,
  `notes` varchar(2047) NOT NULL,
  `growerId` int(11) NOT NULL,
  `growerName` varchar(255) NOT NULL,
  `variety` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `plantsPerBox` int(11) NOT NULL,
  `boxQuantity` int(11) NOT NULL,
  `plantQuantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderInformation`
--

LOCK TABLES `orderInformation` WRITE;
/*!40000 ALTER TABLE `orderInformation` DISABLE KEYS */;
INSERT INTO `orderInformation` VALUES (13,'testOrderNumber','8/12/2016','','2016','',1,'Andrews Farm Plants','','',0,0,0,'closed'),(14,'1600000014','8/12/2016','','','',16,'Sunrise Growers','','',0,0,0,'open'),(15,'1600000015','8/12/2016','','','',17,'South Park','','',0,0,0,'cancelled'),(16,'1600000016','8/12/2016','','','',16,'Sunrise Growers','','',0,0,0,'open'),(18,'1600000018','8/22/2016','','2016','',16,'Sunrise Growers','','',0,0,0,'open'),(19,'1600000019','8/23/2016','','2016','',1,'Andrews Farm Plants','','',0,0,0,'closed'),(20,'1600000020','8/23/2016','','2016','',17,'South Park','','',0,0,0,'closed'),(21,'1600000021','8/25/2016','9/25/2016','2016','',18,'Gary Nakamura','','',0,0,0,'open');
/*!40000 ALTER TABLE `orderInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderProductId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `variety` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `boxQuantity` varchar(20) NOT NULL,
  `plantsPerBox` varchar(20) NOT NULL,
  `plantQuantity` varchar(20) NOT NULL,
  PRIMARY KEY (`orderProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (14,13,'Albion','McArthur','10','1500','15000'),(15,13,'Albion','McArthur','10','1500','15000'),(16,14,'Camarosa','McArthur','10','1500','15000'),(17,15,'Albion','McArthur','10','1500','15000'),(18,14,'Albion','McArthur','10','1500','1000'),(19,16,'Camarosa','Turloc','10','15','150'),(20,18,'Albion','McArthur','10','1500','15000'),(21,18,'Camarosa','Turloc','2','15','30'),(22,19,'Albion','McArthur','10','1500','15000'),(23,20,'Albion','McArthur','0.02','1500','30'),(24,21,'San Andreas','MacDoel','10','','1000');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `variety` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `plantsPerBox` int(11) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (18,'Camarosa','MacDoel',1000),(19,'Albion','MacDoel',15),(20,'Diamante','MacDoel',1500),(21,'Camarosa','McArthur',1500),(22,'Albion','McArthur',1500),(23,'Camarosa','Turloc',15),(24,'San Andreas','MacDoel',1000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prorate`
--

DROP TABLE IF EXISTS `prorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prorate` (
  `prorateId` int(11) NOT NULL AUTO_INCREMENT,
  `prorate` varchar(100) NOT NULL,
  `season` varchar(10) NOT NULL,
  `variety` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`prorateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prorate`
--

LOCK TABLES `prorate` WRITE;
/*!40000 ALTER TABLE `prorate` DISABLE KEYS */;
INSERT INTO `prorate` VALUES (1,'100','2016','Albion','McArthur'),(2,'80','2016','Camarosa','Turloc'),(3,'100','2016','San Andreas','MacDoel');
/*!40000 ALTER TABLE `prorate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordReset` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` varchar(511) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andrew Ito','math27182@gmail.com','$2y$11$r5XD97ZGe3zaonPJqkIRxeAq2tg1i7Q.IC2.jqx7muk0jzxzu9oVu','$2y$11$8Nyk5MxS5z4f6LEvSL6zm.k/7OzDg4XE/c2jyDWQGj5WutgXCIcnK','userEdit,growerEdit,productEdit','2016-07-22 19:48:34'),(4,'Alonzo Brown','b@gmail.com','','$2y$11$cots6.vYtWTbVTgBm9iGIeRhH/Uu.jTDY5vjiyuNSd62KntMJqkoW','growerEdit,product','2016-07-22 20:02:53'),(5,'Roger Hamamura','a1@gmail.com','','$2y$11$LTposvIBiSPQS7NJlQBYU.F4qAlghZ8uWxn/32GOD.NdQgeighOU6','','2016-08-02 00:12:19'),(7,'Michael Delaney','a2@gmail.com','','$2y$11$/dxYZRQYrZNCBo83OJwQd.F8FCm4nB4UCjTCPJ6Cvm./Vzub2X16W','user,grower,product','2016-08-02 00:16:56');
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

-- Dump completed on 2016-08-31 13:08:38
