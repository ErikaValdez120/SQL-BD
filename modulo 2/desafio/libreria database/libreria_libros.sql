-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: libreria
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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `libro_id` varchar(6) NOT NULL,
  `titulo` varchar(80) DEFAULT NULL,
  `categoria` char(12) DEFAULT NULL,
  `editorial_id` char(4) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  PRIMARY KEY (`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES ('1','La ruta de los reyes','ficcion','1',99,'libro de aventuras','2020-04-12 11:06:12'),('10','50 sombras de Gray','novela','2',0,'libro','2018-11-23 12:00:00'),('11','Romeo y Julieta','novela','2',NULL,'shakspeare',NULL),('15','El patito feo','cuentos','2',0,'disney','2010-01-01 12:00:00'),('2','Cien años de soledad','drama','3',889.99,'clasicos','2023-10-18 12:06:12'),('3','Mi planta naranja lima','drama','2',22.34,'cortos','2021-07-22 09:06:12'),('4','La cenicienta','cuentos','2',5.4,'infantil','1998-09-02 12:00:00'),('5','Caperusita roja','cuentos','1',34.2,'infantil','2000-01-01 12:00:00'),('6','Hansel y Gretel','cuentos','1',12.2,'infantil','2000-02-12 12:00:00'),('7','Diario de una pasion','novela','2',12.99,'novelas','2010-01-22 12:00:00'),('8','La Odisea','ensayo','2',54.2,'homero','1880-09-12 12:00:00'),('9','Mundo desconocido','Teorias','1',333.22,'youtube','2010-01-01 12:00:00');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 17:00:29
