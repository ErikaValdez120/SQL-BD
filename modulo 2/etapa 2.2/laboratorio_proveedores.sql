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
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `IdProveedor` int(11) DEFAULT NULL,
  `NombreContacto` text DEFAULT NULL,
  `CargoContacto` text DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `Ciudad` text DEFAULT NULL,
  `Region` text DEFAULT NULL,
  `Pais` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Charlotte Cooper','Gerente de compras','49 Gilbert St.','Londres','Londres','Reino Unido'),(2,'Shelley Burke','Administrador de pedidos','P.O. Box 78934','New Orleans','','Estados Unidos'),(3,'Regina Murphy','Representante de ventas','707 Oxford Rd.','Ann Arbor','','Estados Unidos'),(4,'Yoshi Nagase','Gerente de marketing','98 Sekimai Musashino-shi','Tokyo','','Japon'),(5,'Carlos Garcia','Gerente Regional',' Cerrito 345','Buenos Aires','','Argentina'),(6,'Mayumi Ohno','Representante de marketing','92 Setsuko Chuo-ku','Osaka','','Japon'),(7,'Ian Devling','Gerente de marketing','74 Rose St.','Melbourne','','Australia'),(8,'Peter Wilson','Representante de ventas','29 King\'s Way','Manchester','RU','Reino Unido'),(9,'Lars Peterson','Agente de ventas','Kaloadagatan 13','Goteborg','','Suecia'),(10,'Carlos Diaz','Gerente de marketing','Av. das Americanas 12890','Sao Paulo','BR','Brasil'),(11,'Petra Winkler','Gerente de ventas','Tiergartenstrabe 5','Berlin','','Alemania'),(12,'Martin Bein','Ger. marketing internacional','Bogenallee 51','Frankfurt','','Alemania'),(13,'Sven Petersen','Coordinador de mercados','Frahmredder 112a','Cuxhaven','','Alemania'),(15,'Beate Vileid','Gerente de marketing','Hatlevegen 5','Sandvika','','Noruega'),(16,'Cheryl Saylor','Repr. de cuentas regional','3400 8th Avenue','Bend','USA','Estados Unidos'),(17,'Michael Bjorn','Representante de ventas','Brovallavagen 231','Stockholm','','Suecia'),(18,'Guylene Nodier','Gerente de ventas','203 Rue des Francs Bourgeois','Paris','','Francia'),(19,'Robb Merchant','Agente de cuentas al por mayor','2100 Paul Revere Blvd.','Boston','USA','Estados Unidos'),(20,'Chandra Leka','Propietario','471 Serangoon Loop Suite 402','Singapore','','Singapur'),(22,'Dirk Luchte','Gerente de contabilidad','Rijnweg 22','Zaandam','','Holanda'),(23,'Anne Heikkonen','Gerente de produccion','Valtakatu 12','Lappeenranta','','Finlandia'),(24,'Wendy Mackenzie','Representante de ventas','170 Prince Edward Parade','Sydney','','Australia'),(25,'Jean-Guy Lauzon','Gerente de marketing','2960 Rue St. Laurent','Montreal','','Canada'),(26,'Giovanni Giudici','Administrador de pedidos','Via dei Gelsomini 153','Salerno','','Italia'),(27,'Marie Delamare','Gerente de ventas','22 Rue Voiron','Montceau','','Francia'),(28,'Eliane Noz','Representante de ventas','3 Rue des Alpes Bat B','Annecy','','Francia'),(29,'Chantal Goulet','Gerente de contabilidad','148 rue Chasseur','Ste-Hyacinthe','','Canada');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 14:18:02
