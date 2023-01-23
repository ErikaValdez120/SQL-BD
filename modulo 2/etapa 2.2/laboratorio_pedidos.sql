-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laboratorio
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `NUMERO_PEDIDO` int(10) unsigned NOT NULL,
  `CODIGO_CLIENTE` varchar(7) NOT NULL,
  `FECHA_PEDIDO` date NOT NULL,
  `FORMA_PAGO` enum('aplazado','contado','tarjeta') DEFAULT NULL,
  `ENVIADO` enum('si','no') DEFAULT NULL,
  PRIMARY KEY (`NUMERO_PEDIDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'CT01','2000-03-11','contado','si'),(3,'CT23','2000-03-18','aplazado','no'),(5,'CT25','2000-03-31','contado','no'),(7,'CT12','2000-04-12','contado','no'),(8,'CT01','2000-04-15','tarjeta','si'),(9,'CT21','2000-04-21','contado','no'),(11,'CT04','2001-05-01','contado','si'),(12,'CT06','2001-05-19','contado','si'),(13,'CT13','2000-04-30','aplazado','no'),(16,'CT25','2001-05-11','contado','no'),(19,'CT10','2002-05-22','contado','si'),(21,'CT16','2001-05-28','contado','no'),(22,'CT07','2000-05-31','tarjeta','si'),(25,'CT18','2000-06-02','contado','no'),(26,'CT09','2001-06-04','aplazado','si'),(27,'CT34','2000-06-06','contado','no'),(28,'CT28','2000-06-08','aplazado','no'),(29,'CT30','2001-04-02','tarjeta','no'),(30,'CT02','2000-08-15','contado','si'),(31,'CT30','2000-06-08','tarjeta','si'),(32,'CT14','2001-06-20','aplazado','no'),(34,'CT26','2002-06-23','tarjeta','no'),(35,'CT26','2001-06-30','contado','no'),(37,'CT24','2001-07-02','tarjeta','si'),(39,'CT20','2001-07-08','tarjeta','si'),(40,'CT04','2002-07-12','contado','no'),(42,'CT34','2002-07-15','aplazado','si'),(43,'CT09','2001-07-18','contado','no'),(44,'CT34','2002-07-20','aplazado','no'),(45,'CT30','2002-07-22','tarjeta','no'),(46,'CT31','2002-07-25','contado','no'),(47,'CT34','2000-07-31','aplazado','no'),(48,'CT18','2002-08-30','contado','no'),(49,'CT28','2002-09-02','contado','no'),(50,'CT09','2002-09-05','aplazado','no'),(51,'CT09','2002-09-05','contado','si'),(63,'CT28','2000-09-10','contado','no'),(72,'CT01','2002-08-18','contado','si'),(73,'CT01','2001-08-02','contado','no'),(74,'CT01','2002-09-17','aplazado','no'),(75,'CT01','2002-09-30','tarjeta','no'),(76,'CT01','2002-10-19','contado','si'),(77,'CT01','2000-10-28','contado','no'),(79,'CT34','2000-12-12','contado','no'),(85,'CT04','2002-12-23','tarjeta','no'),(86,'CT09','2001-12-24','aplazado','no'),(98,'CT01','2001-12-27','contado','si'),(102,'CT06','2001-01-12','contado','si'),(103,'CT02','2001-01-24','contado','no'),(105,'CT30','2001-01-01','aplazado','no'),(5005,'CT30','2002-08-10','tarjeta','si'),(5050,'CT30','2002-03-27','tarjeta','si');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 14:18:01
