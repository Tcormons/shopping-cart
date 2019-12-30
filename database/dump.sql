-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: wickedSales
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `cartItems`
--

DROP TABLE IF EXISTS `cartItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartItems` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`cartItemId`),
  UNIQUE KEY `Secondary` (`cartId`,`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartItems`
--

LOCK TABLES `cartItems` WRITE;
/*!40000 ALTER TABLE `cartItems` DISABLE KEYS */;
INSERT INTO `cartItems` VALUES (397,26,1,1,2999),(404,27,1,1,2999),(405,28,1,2,2999),(407,29,1,1,2999),(451,30,6,2,3999),(460,30,3,1,4900),(492,31,6,1,3999),(496,31,2,1,2595),(501,31,1,1,2999),(502,32,3,1,4900),(503,32,2,2,2595);
/*!40000 ALTER TABLE `cartItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (26,'2019-12-20 00:54:13'),(27,'2019-12-20 23:03:33'),(28,'2019-12-20 23:04:48'),(29,'2019-12-20 23:06:18'),(30,'2019-12-20 23:10:26'),(31,'2019-12-22 18:56:03'),(32,'2019-12-23 01:20:33');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `cartId` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditCard` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (22,14,'Tomas','1234','1234 LFz','2019-12-16 23:45:23'),(23,15,'asdf','234','asdf','2019-12-18 19:32:30'),(24,26,'asdf','234','asdf','2019-12-20 23:02:35'),(25,27,'asdf','234','asdf','2019-12-20 23:03:54'),(26,28,'fasdf','23','asdf','2019-12-20 23:06:15'),(27,29,'adf','2323','asdf','2019-12-20 23:08:26');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortDescription` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longDescription` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Baseball Helmet',2999,'Baseball','/images/baseball-helmet.jpg','This Youth Coolflo Batting Helmet is designed for the younger T-ball or youth player.','Increase your confidence at the plate with the Z5 2.0 Matte Helmet with Universal Jaw Guard. Providing extra coverage to the sleek Z5 2.0, the Universal Jaw Guard protects the batter on the side of the helmet facing the pitcher. The universal design of the jaw guard allows the user to place additional protection on either the left side or the right side of the helmet. This gives greater flexibility and choice to the player and is ideal for switch hitters or sharing the helmet with team mates.'),(2,'Spalding Basketball',2595,'Basketball','/images/basketball.jpg','The sound of the dribble, the soft, magnetic grip, the clear conscience of determination','Street ball will never die. Built for summer tournaments and Saturdays at the park, the NBA Street outdoor basketball holds to the NBA official size and weight. It has a deep channel design to give you proper grip and a durable rubber cover that stands up to asphalt or concrete.'),(3,'Lawn Chair',4900,'Equipment','/images/camping-chair.jpeg','Have a cold drink at hand at the campsite, BBQ or picnic with a Coleman Cooler Quad Chair.','Have a cold drink at hand at the campsite, BBQ or picnic with a Coleman Cooler Quad Chair. The cooler built into the armrest holds up to 4 cans and provides easy access to a cold drink once the one in your mesh cup holder is empty. While you sip on your favorite beverage, the fully cushioned seat and back only adds to your relaxation. If you want your hands free, the side pockets work nicely to store your book, magazine or some snacks. When the fun is done, the chair easily folds up into a carry bag for easy transport and storage.'),(4,'Soccer Cleats',6999,'Soccer','/images/soccer-cleats.jpg','If your command of the field leaves your rivals\' tactics in tatters, you\'re ready to own Predators.','If your command of the field leaves your rivals\' tactics in tatters, you\'re ready to own Predators. Built for precision on firm ground, these juniors\' soccer cleats have a supportive synthetic upper that wraps around your foot, locking you in for total control. Embossing on the surface adds confidence to every touch.'),(5,'Sports Bag',9900,'Equipment','/images/sport-bag.jpg','Keep gear neatly contained and ready to go with the UltraBasix sports duffel bag','UA Storm technology delivers an element-battling, highly water-resistant finish. Tough, abrasion-resistant bottom & side panels. Large front zippered organization pocket. Adjustable, padded, HeatGear shoulder strap for total comfort. Padded top grab handle . Large vented pocket for laundry or shoes, one mesh pocket & an additional large zippered pocket for organization.'),(6,'6-Pack Water Bottles',3999,'Equipment','/images/water-bottle.jpg','Whether you\'re hard at work or playing hard, we\'re here to help keep you hydrated!','Made from HDPE (high-density polyethylene) plastic, these squeeze bottles our FDA approved for food grade. The push/pull cap is leak proof when closed. No worries about it leaking if accidentally tipped over. These sports squeeze water bottles are impact resistance. The large opening makes it convenient for cleaning as well as adding ice cubes to the bottle.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30 19:42:36
