-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Game
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB-1:10.10.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'Jaume','Serrano Roig','+34 643 234 231','jaume@cifpfbmoll.eu'),
(2,'Amin','Garcia Ramón','+34 643 123 111','aminelcrack@gmail.com'),
(3,'Abel','Gasas','+34 675 167 111','abelillo@cifpfbmoll.eu'),
(4,'Sebastian','Estacio','+34 642 27 59 57','ipopdue24@gmail.com'),
(5,'Jaume','Serrano Roig','+34 643 234 231','jaume@cifpfbmoll.eu'),
(6,'Amin','Garcia Ramón','+34 643 123 111','aminelcrack@gmail.com'),
(7,'Abel','Gasas','+34 675 167 111','abelillo@cifpfbmoll.eu'),
(8,'Sebastian','Estacio','+34 642 27 59 57','ipopdue24@gmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consola`
--

DROP TABLE IF EXISTS `consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consola` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modelo` (`modelo`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`precio` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consola`
--

LOCK TABLES `consola` WRITE;
/*!40000 ALTER TABLE `consola` DISABLE KEYS */;
INSERT INTO `consola` VALUES
(1,'PlayStation 5',499.99),
(2,'Xbox Series X',499.99),
(3,'Nintendo Switch',299.99),
(4,'PlayStation 4 Pro',399.99),
(5,'Xbox One X',399.99);
/*!40000 ALTER TABLE `consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `tienda_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `tienda_id` (`tienda_id`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`tienda_id`) REFERENCES `tienda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES
(1,1,2,'2022-12-01'),
(2,3,2,'2022-12-12'),
(3,2,2,'2023-01-07'),
(4,1,3,'2023-02-19'),
(5,2,2,'2023-02-11'),
(6,3,3,'2023-02-13'),
(7,3,3,'2023-02-20');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaconsola`
--

DROP TABLE IF EXISTS `facturaconsola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaconsola` (
  `consola_id` int(11) DEFAULT NULL,
  `factura_id` int(11) DEFAULT NULL,
  KEY `consola_id` (`consola_id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `facturaconsola_ibfk_1` FOREIGN KEY (`consola_id`) REFERENCES `consola` (`id`),
  CONSTRAINT `facturaconsola_ibfk_2` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaconsola`
--

LOCK TABLES `facturaconsola` WRITE;
/*!40000 ALTER TABLE `facturaconsola` DISABLE KEYS */;
INSERT INTO `facturaconsola` VALUES
(1,1),
(2,1),
(5,2),
(3,3),
(3,4),
(1,4),
(1,6),
(4,7);
/*!40000 ALTER TABLE `facturaconsola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturajuegos`
--

DROP TABLE IF EXISTS `facturajuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturajuegos` (
  `juego_id` int(11) DEFAULT NULL,
  `factura_id` int(11) DEFAULT NULL,
  KEY `juego_id` (`juego_id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `facturajuegos_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`),
  CONSTRAINT `facturajuegos_ibfk_2` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturajuegos`
--

LOCK TABLES `facturajuegos` WRITE;
/*!40000 ALTER TABLE `facturajuegos` DISABLE KEYS */;
INSERT INTO `facturajuegos` VALUES
(1,1),
(3,1),
(7,1),
(4,2),
(5,2),
(11,3),
(12,3),
(13,3),
(2,4),
(3,4),
(6,4),
(8,5),
(9,5),
(13,5),
(12,6),
(13,6),
(1,7),
(13,7);
/*!40000 ALTER TABLE `facturajuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `genero` varchar(25) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`precio` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES
(1,'Call of Duty: Black Ops Cold War','Acción',69.99),
(2,'FIFA 21','Deportes',59.99),
(3,'The Last of Us Part II','Aventura',59.99),
(4,'Red Dead Redemption 2','Aventura',59.99),
(5,'Minecraft','Aventura',26.95),
(6,'Spider-Man: Miles Morales','Acción',49.99),
(7,'Cyberpunk 2077','RPG',59.99),
(8,'Halo Infinite','FPS',59.99),
(9,'Among Us','Acción',4.99),
(10,'Final Fantasy VII Remake','RPG',59.99),
(11,'The Witcher 3: Wild Hunt','RPG',39.99),
(12,'Mario Bros: Brothers Twins','Aventura',89.99),
(13,'Legend of Zelda: Breath of the Wild','RPG',119.99);
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juegoconsola`
--

DROP TABLE IF EXISTS `juegoconsola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juegoconsola` (
  `juego_id` int(11) DEFAULT NULL,
  `consola_id` int(11) DEFAULT NULL,
  KEY `juego_id` (`juego_id`),
  KEY `consola_id` (`consola_id`),
  CONSTRAINT `juegoconsola_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`),
  CONSTRAINT `juegoconsola_ibfk_2` FOREIGN KEY (`consola_id`) REFERENCES `consola` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegoconsola`
--

LOCK TABLES `juegoconsola` WRITE;
/*!40000 ALTER TABLE `juegoconsola` DISABLE KEYS */;
INSERT INTO `juegoconsola` VALUES
(12,3),
(13,3),
(11,1),
(11,2),
(11,3),
(11,4),
(11,5),
(10,1),
(9,3),
(8,2),
(8,5),
(7,1),
(7,2),
(7,4),
(7,5),
(6,1),
(6,4),
(5,1),
(5,2),
(5,3),
(5,4),
(5,5),
(1,1),
(1,2),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,4),
(4,1),
(4,2),
(4,4),
(4,5);
/*!40000 ALTER TABLE `juegoconsola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tienda` (
  `id` int(11) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` VALUES
(1,'C/ Torcuato Luca de Tena 42','ESPAÑA'),
(2,'c/ Elm Street 1428 ','EEUU'),
(3,'Cerdanyola del Valles','ITALIA');
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiendaconsola`
--

DROP TABLE IF EXISTS `tiendaconsola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiendaconsola` (
  `consola_id` int(11) DEFAULT NULL,
  `tienda_id` int(11) DEFAULT NULL,
  KEY `consola_id` (`consola_id`),
  KEY `tienda_id` (`tienda_id`),
  CONSTRAINT `tiendaconsola_ibfk_1` FOREIGN KEY (`consola_id`) REFERENCES `consola` (`id`),
  CONSTRAINT `tiendaconsola_ibfk_2` FOREIGN KEY (`tienda_id`) REFERENCES `tienda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiendaconsola`
--

LOCK TABLES `tiendaconsola` WRITE;
/*!40000 ALTER TABLE `tiendaconsola` DISABLE KEYS */;
INSERT INTO `tiendaconsola` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(1,2),
(2,2),
(3,2),
(5,2),
(3,3),
(4,3);
/*!40000 ALTER TABLE `tiendaconsola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiendajuegos`
--

DROP TABLE IF EXISTS `tiendajuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiendajuegos` (
  `juego_id` int(11) DEFAULT NULL,
  `tienda_id` int(11) DEFAULT NULL,
  KEY `juego_id` (`juego_id`),
  KEY `tienda_id` (`tienda_id`),
  CONSTRAINT `tiendajuegos_ibfk_1` FOREIGN KEY (`juego_id`) REFERENCES `juego` (`id`),
  CONSTRAINT `tiendajuegos_ibfk_2` FOREIGN KEY (`tienda_id`) REFERENCES `tienda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiendajuegos`
--

LOCK TABLES `tiendajuegos` WRITE;
/*!40000 ALTER TABLE `tiendajuegos` DISABLE KEYS */;
INSERT INTO `tiendajuegos` VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,3),
(3,3),
(3,1),
(3,2),
(4,2),
(4,3),
(5,2),
(5,3),
(6,3),
(6,2),
(6,1),
(7,1),
(7,3),
(7,2),
(8,2),
(8,1),
(8,3),
(9,3),
(9,1),
(9,2),
(10,1),
(10,2),
(10,3),
(11,2),
(11,1),
(11,3),
(12,3),
(13,1),
(13,2);
/*!40000 ALTER TABLE `tiendajuegos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 15:53:04
