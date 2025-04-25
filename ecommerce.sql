-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `attribute_categories`
--

DROP TABLE IF EXISTS `attribute_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_categories` (
  `attribute_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`attribute_category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_categories`
--

LOCK TABLES `attribute_categories` WRITE;
/*!40000 ALTER TABLE `attribute_categories` DISABLE KEYS */;
INSERT INTO `attribute_categories` VALUES (3,'Material Composition'),(1,'Physical Properties'),(2,'Technical Specifications');
/*!40000 ALTER TABLE `attribute_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_types`
--

DROP TABLE IF EXISTS `attribute_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_types` (
  `attribute_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`attribute_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_types`
--

LOCK TABLES `attribute_types` WRITE;
/*!40000 ALTER TABLE `attribute_types` DISABLE KEYS */;
INSERT INTO `attribute_types` VALUES (3,'Boolean'),(2,'Number'),(1,'Text');
/*!40000 ALTER TABLE `attribute_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_name` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Nike','World-renowned athletic footwear and apparel.'),(2,'Adidas','German multinational corporation, a major sportswear manufacturer.'),(3,'Apple','Leading technology company specializing in electronics and software.'),(4,'Samsung','South Korean multinational conglomerate.'),(5,'Zara','Spanish fast-fashion retailer.');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(50) NOT NULL,
  `color_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`color_id`),
  UNIQUE KEY `color_name` (`color_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Red','#FF0000'),(2,'Blue','#0000FF'),(3,'Black','#000000'),(4,'White','#FFFFFF'),(5,'Green','#008000');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attribute_category_id` int NOT NULL,
  `attribute_type_id` int NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `product_attributes_index_2` (`attribute_category_id`,`attribute_name`),
  KEY `attribute_type_id` (`attribute_type_id`),
  CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`attribute_category_id`) REFERENCES `attribute_categories` (`attribute_category_id`),
  CONSTRAINT `product_attributes_ibfk_2` FOREIGN KEY (`attribute_type_id`) REFERENCES `attribute_types` (`attribute_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
INSERT INTO `product_attributes` VALUES (1,1,2,'Weight (grams)'),(2,1,1,'Dimensions'),(3,2,1,'Processor'),(4,3,1,'Outer Material'),(5,3,1,'Sole Material');
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Clothing','Apparel for men, women, and children.'),(2,'Electronics','Consumer electronics and gadgets.'),(3,'Footwear','Shoes, sneakers, and boots.'),(4,'Accessories','Bags, jewelry, and other fashion items.'),(5,'Home Goods','Items for home decoration and utility.');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_thumbnail` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'nike_airmax90_1.jpg',1),(2,1,'nike_airmax90_2.jpg',0),(3,2,'adidas_superstar_1.jpg',1),(4,3,'apple_iphone15_1.jpg',1),(5,5,'zara_tshirt_1.jpg',1);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_items`
--

DROP TABLE IF EXISTS `product_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `variation_id` int NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `variation_id` (`variation_id`),
  CONSTRAINT `product_items_ibfk_1` FOREIGN KEY (`variation_id`) REFERENCES `product_variations` (`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_items`
--

LOCK TABLES `product_items` WRITE;
/*!40000 ALTER TABLE `product_items` DISABLE KEYS */;
INSERT INTO `product_items` VALUES (43,1,'AM90-BLK-10',125.00,50),(44,3,'AM90-WHT-09',120.00,30);
/*!40000 ALTER TABLE `product_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variations` (
  `variation_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `color_id` int DEFAULT NULL,
  `size_option_id` int DEFAULT NULL,
  PRIMARY KEY (`variation_id`),
  UNIQUE KEY `product_variations_index_1` (`product_id`,`color_id`,`size_option_id`),
  KEY `color_id` (`color_id`),
  KEY `size_option_id` (`size_option_id`),
  CONSTRAINT `product_variations_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `product_variations_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `product_variations_ibfk_3` FOREIGN KEY (`size_option_id`) REFERENCES `size_options` (`size_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` VALUES (1,1,3,5),(3,1,4,4);
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `base_price` decimal(10,2) NOT NULL,
  `description` text,
  PRIMARY KEY (`product_id`),
  KEY `brand_id` (`brand_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,3,'Air Max 90',120.00,'Classic Nike running shoe.'),(2,2,3,'Superstar',90.00,'Iconic Adidas Originals sneaker.'),(3,3,2,'iPhone 15',999.00,'Latest generation iPhone.'),(4,4,2,'Galaxy S23',899.00,'Flagship Android smartphone.'),(5,5,1,'Basic T-Shirt',19.99,'Comfortable cotton t-shirt.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_categories`
--

DROP TABLE IF EXISTS `size_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_categories` (
  `size_category_id` int NOT NULL AUTO_INCREMENT,
  `size_category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`size_category_id`),
  UNIQUE KEY `size_category_name` (`size_category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_categories`
--

LOCK TABLES `size_categories` WRITE;
/*!40000 ALTER TABLE `size_categories` DISABLE KEYS */;
INSERT INTO `size_categories` VALUES (1,'Clothing Sizes'),(3,'Electronics Dimensions'),(2,'Shoe Sizes (US)');
/*!40000 ALTER TABLE `size_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_options`
--

DROP TABLE IF EXISTS `size_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_options` (
  `size_option_id` int NOT NULL AUTO_INCREMENT,
  `size_category_id` int NOT NULL,
  `size_value` varchar(50) NOT NULL,
  PRIMARY KEY (`size_option_id`),
  UNIQUE KEY `size_options_index_0` (`size_category_id`,`size_value`),
  CONSTRAINT `size_options_ibfk_1` FOREIGN KEY (`size_category_id`) REFERENCES `size_categories` (`size_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_options`
--

LOCK TABLES `size_options` WRITE;
/*!40000 ALTER TABLE `size_options` DISABLE KEYS */;
INSERT INTO `size_options` VALUES (3,1,'L'),(2,1,'M'),(1,1,'S'),(5,2,'10'),(4,2,'9'),(6,3,'6.1 inch'),(7,3,'6.7 inch');
/*!40000 ALTER TABLE `size_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 15:02:30
