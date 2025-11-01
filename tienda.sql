-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` int(11) DEFAULT 0,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (14,'26-03-2025-lavable-antimanchas-desktop.jpg','',1,7,'2025-07-03 11:45:24'),(15,'26-03-2025-tersitech-frentes-9-colores-desktop.jpg','',1,8,'2025-07-03 11:46:13'),(16,'26-03-2025-terplast-rodillable-desktop.jpg','',1,9,'2025-07-03 11:46:52');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (2,'Pinturas'),(3,'Herramientas'),(4,'Sanitarios'),(5,'Ferreteria'),(6,'Artistica'),(7,'Accesorios'),(8,'Diluyentes'),(9,'Maderas'),(10,'Construccion');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'tersuave-logo-png_seeklogo-200263 (1).png','',1,'2025-06-26 15:22:35'),(7,'logo-internas.png','Poxi',1,'2025-06-26 15:58:35'),(8,'sinteplast-logo-png_seeklogo-522698.png','Sinteplast',1,'2025-06-26 17:42:22'),(9,'png-transparent-3m-minnesota-logo-adhesive-tape-design-company-text-trademark.png','',1,'2025-07-03 11:52:13'),(10,'alba-logo-0.png','Alba',1,'2025-07-03 11:52:59');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `telefono_cliente` varchar(20) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `productos` text DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `subcategoria` varchar(100) DEFAULT NULL,
  `destacado` tinyint(1) DEFAULT 0,
  `oferta` tinyint(1) DEFAULT 0,
  `subcategoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `fk_subcategoria` (`subcategoria_id`),
  CONSTRAINT `fk_subcategoria` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategorias` (`id`) ON DELETE SET NULL,
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Latex Interior Blanco','Pintura para interiores con excelente cobertura',8500.00,'latex_blanco.jpg','Interior',2,'',1,1,19),(2,'Esmalte Sintético Negro','Ideal para superficies metálicas y de madera',9700.00,'esmalte_negro.jpg','Esmalte',2,'',1,0,20),(3,'Impermeabilizante Techo','Protección total contra filtraciones',12300.00,'impermeabilizante.jpg','Exterior',2,'',1,0,18),(4,'Latex Exterior Color','Pintura de alta resistencia al sol y al agua',9900.00,'latex_color.jpg','Exterior',2,'',1,0,18),(9,'pegamento','poxi',5000.00,'685d835fd4444.jpg',NULL,5,'',1,1,23),(10,'Papel Lija Norton','Grano 60',500.00,'68657a0a714e7.jpg',NULL,7,'Lijas',0,1,7),(11,'Pincel Serie 170 Rosarpin N 10','',2300.00,'68657a3ce29b3.jpg',NULL,7,'Pinceles',0,1,5),(12,'Rodillo Lana Natural Rulfix Nº 10 Cm','',3000.00,'68657a7ead39f.jpg',NULL,7,'Rodillos',0,1,6),(13,'Cinta De Papel Premiun Norton 18mm X 40mts','',2200.00,'68657b64e5eeb.jpg',NULL,7,'Cintas',0,0,22),(14,'Cristalba Barniz Al Agua Brillante X 1 Lt','Cristalba Barniz al Agua Brillante x 1 Lt\r\n\r\nBarniz Poliuretánico para Interiores Brillante. De gran dureza y resistencia a la abrasión y al uso diario. Excelente nivelación. Transparente, entonable con Tintas AkzoNobel para barnices hasta 60 cm3/litro.',23000.00,'68657bc28d8d9.jpg',NULL,9,'Barniz',1,0,2),(15,'Latex Exterior Acrilico Albafrent Blanco X 20 Lts','Latex Exterior Acrilico Albafrent Blanco x 20 Lts\r\n\r\nLátex para Exteriores Mate. Con su exclusiva estructura poliuretánica se obtiene máximo poder cubritivo con excelente pintabilidad y nivelación. Blanco, entonable con Tonalba hasta 37,5 cm3/litro.',100000.00,'68657c06d3e79.png',NULL,2,'Latex Exterior',1,1,18),(16,'Antihumedad Impermeabilizante Venier X 5 Kg','Antihumedad Impermeabilizante Venier x 5 Kg\r\n\r\nEs la solución definitiva contra todos los problemas de humedad, tanto en interiores como exteriores. Antihumedad Impermeabilizante puede aplicarse directamente sobre superficies húmedas, es ideal para pintar como terminación, gracias a su terso acabado liso mate. También se recomienda pintar con Antihumedad Impermeabilizante en todas las superficies donde se desee prevenir problemas futuros de humedad.',62000.00,'68657c4e29cde.jpg',NULL,2,'Antihumedad',1,1,NULL),(17,'Escalera Aluminio Tijera Simple Ferpak 8 Escalones','',250000.00,'68657d0d6cdb6.webp',NULL,3,'Escaleras',1,0,3),(18,'Rodillo Lana Sintetica Rosarpin Nº 22 Cm','',9100.00,'686582b1d6cdb.jpg',NULL,7,'Rodillos',0,1,6),(19,'Tornillo T2 Aguja Bolsa X 100 Un','',1400.00,'686583075618a.jpg',NULL,5,'Tornillos',0,1,1),(22,'Venda Elástica Venier 0,20 X 25 Mts','La Venda Elástica Venier es un enjambre de fibras sintéticas de última generación para ser aplicada justamente con techados acrílicos del tipo Dessutol Fibrado, Dessutol Techos Membrana Líquida, Supercapa, etc. Desarrollado para la reparación de juntas de dilatación, grietas, fisuras, etc.',6600.00,'68668fe86a82d.jpg',NULL,10,NULL,1,1,11),(23,'Espatula Pintor Berazol N 3','',1200.00,'6866ab2d878f6.jpg',NULL,7,NULL,0,1,8),(24,'Acrilico decorativo EQ','',1500.00,'6866ab9770e0d.jpg',NULL,6,NULL,0,1,9),(25,'Perfil Montante 34mm Barbieri X 2,60 Mts','',3400.00,'6866ac36e8c0c.jpg',NULL,10,NULL,1,0,12),(26,'Aguarras Fleminrras Diproel X 0,9 Lt','',2300.00,'6866ac6822ab1.jpg',NULL,8,NULL,0,1,13),(27,'Diluyente Pintura Epoxi Diproel X 4 Lts','',17800.00,'6866ac92d777b.jpg',NULL,8,NULL,1,0,14),(28,'Amoladora Angular Black+decker G720n Naranja 220v','',62000.00,'6866ad13ac147.png',NULL,3,NULL,1,0,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `subcategorias_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategorias`
--

LOCK TABLES `subcategorias` WRITE;
/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
INSERT INTO `subcategorias` VALUES (1,'Tornillos',5),(2,'Barniz',9),(3,'Manuales',3),(4,'Electricas',3),(5,'Pinceles',7),(6,'Rodillos',7),(7,'Lijas',7),(8,'Espatulas',7),(9,'Acrilicos',6),(10,'Mdf',6),(11,'Membranas',10),(12,'Perfiles',10),(13,'Aguarras',8),(14,'Epoxi',8),(15,'Taco Fisher',5),(16,'Lacas',9),(17,'Masilla',9),(18,'Exterior',2),(19,'Interior',2),(20,'Esmalte',2),(21,'Aerosoles',2),(22,'Cintas',7),(23,'Pegamentos',5);
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','cliente') DEFAULT 'cliente',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (5,'admin@tienda.com','$2y$10$4Alzq/Kv84ak492jJ9ZUC.y3EoA6T6vRYJePE8sAeZjTMejhU.w3m','admin');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 15:27:29
