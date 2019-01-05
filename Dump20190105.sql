-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 192.168.0.101    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Платья'),(2,'Брюки'),(3,'Юбки'),(4,'Блузки'),(5,'Футболки'),(6,'Белье'),(7,'Лонгсливы'),(8,'Верхняя одежда');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,4,'Нежное кружево, мягкий хлопок, приятный к телу'),(2,2,4,'Идеальный комплект, сел как влитой'),(3,3,2,'Купила уже несколько вариантов, в разных тонах'),(4,4,3,'Идет в размер, село идеально, благородный оттенок');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,8,'Тест','no-photo.jpg','Краткое описание товара','Подробное описание товара',100),(2,1,'Платье 1','dress_001.jpg','Платье, Just Cavalli','Замечательное дизайнерское платье. Модель сочетает в себе нотки авангарда и этнического стиля. Рукава платья короткие, прямой крой. Вырез горловины округлый. Универсальная расцветка с декором в виде бисера.',89000),(3,1,'Платье 2','dress_002.jpg','Платье, Sofi Strokatto','Шикарное вечернее платье рыбка. Покрой платья создает идеальный силуэт фигуры. Глубокий вырез на спине подчеркивает данную область и добавляет образу очарование. Блестящая поверхность, создающаяся благодаря пайеткам, создает легкое сияние. А глубокий синий цвет облагораживает.',38800),(4,6,'Белье','panties.jpg','Комплект белья, Valentin Secret','Нежный комплект состоит из бюстгальтера и трусиков-слипов. Бюстгальтер имеет плотную чашку с несъемным пуш-апом. Благодаря этому эффекту грудь выглядит объемной и приподнятой. Чашки на косточках. Традиционная застежка на 3 крючка. Фурнитура металлическая.',8999);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups_id` int(11) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `surname` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,1,'admin','123','Olesia','Kasianova','kas.olesia@gmail.com','89258388004','The site administrator'),(14,1,'admin','123','Olesia','kas','kas.olesia@gmail.com','89258388004','The site administrator'),(15,1,'user2','1234','Илья','Касьянов','ilya-kas@mail.ru','89255486789','The site administrator'),(16,1,'admin','123','Olesia','Kasianova','kas.olesia@gmail.com','89258388004','The site administrator'),(17,1,'admin','123','Olesia',NULL,NULL,NULL,'The site administrator'),(18,1,'admin','123','Olesia',NULL,NULL,NULL,'The site administrator'),(19,1,'admin','123','Olesia',NULL,NULL,NULL,'The site administrator'),(20,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(21,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(22,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(23,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(24,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(25,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(26,1,'user2','123456789','Виталина','Касьянова','nastia@mail.ru','123-456','Привет!'),(27,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(28,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(29,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(30,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(31,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!'),(32,1,'user1','12345','Анастасия','Касьянова','nastia@mail.ru','123-456','Привет!');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-05 20:36:18
