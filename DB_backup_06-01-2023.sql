-- Las tablas que se hicieron backup son,
/*1.Clientes
2.Club_frecuentes_cliente
3.Establecimiento
4.Factura
5.Frecuente_cliente
6.Ingredientes
7.Inventario
8.Menu
9.New_provedor
10.Nuevo_cliente
11.Personal
12.Proveedor
13.Venta*/

CREATE DATABASE  IF NOT EXISTS `la_musleria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `la_musleria`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: la_musleria
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `tipo_de_cliente` int NOT NULL,
  `nuevo_cliente` int NOT NULL,
  `frecuente_cliente` int NOT NULL,
  `club_frecuente_cliente` int NOT NULL,
  PRIMARY KEY (`tipo_de_cliente`),
  KEY `nuevo_cliente` (`nuevo_cliente`),
  KEY `frecuente_cliente` (`frecuente_cliente`),
  KEY `club_frecuente_cliente` (`club_frecuente_cliente`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`nuevo_cliente`) REFERENCES `nuevo_cliente` (`id_nuevo_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`frecuente_cliente`) REFERENCES `frecuente_cliente` (`id_frecuente_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`club_frecuente_cliente`) REFERENCES `club_frecuente_cliente` (`id_club_frecuente_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_frecuente_cliente`
--

DROP TABLE IF EXISTS `club_frecuente_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_frecuente_cliente` (
  `id_club_frecuente_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_club_frecuente_cliente` varchar(40) NOT NULL,
  `plato_ordenado_club_frecuente_cliente` varchar(40) NOT NULL,
  `correo_club_frecuente_cliente` varchar(40) NOT NULL,
  `registro_visitas_club_frecuente_cliente` int NOT NULL,
  `beneficio_club_frecuente_cliente` varchar(40) NOT NULL,
  PRIMARY KEY (`id_club_frecuente_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_frecuente_cliente`
--

LOCK TABLES `club_frecuente_cliente` WRITE;
/*!40000 ALTER TABLE `club_frecuente_cliente` DISABLE KEYS */;
INSERT INTO `club_frecuente_cliente` VALUES (1,'Fabian Garza','Hamburguesa Hidalgo','Fabian_Garza@gmail.com',11,'10%'),(2,'Joel Jauregui','Muslos','Joel_Jauregui@gmail.com',20,'20%'),(3,'Vicente Armando','Hamburguesa joya','Vicente_Armando@gmail.com',25,'Refreso gratis');
/*!40000 ALTER TABLE `club_frecuente_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `establecimiento`
--

DROP TABLE IF EXISTS `establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `establecimiento` (
  `nombre_establecimiento` varchar(20) NOT NULL,
  `direccion_establecimiento` varchar(100) NOT NULL,
  `contacto_establecimiento` varchar(100) NOT NULL,
  `concepto_establecimiento` varchar(150) NOT NULL,
  `imagen_establecimiento` varchar(100) DEFAULT 'imagen-generica.jpg',
  PRIMARY KEY (`nombre_establecimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `establecimiento`
--

LOCK TABLES `establecimiento` WRITE;
/*!40000 ALTER TABLE `establecimiento` DISABLE KEYS */;
INSERT INTO `establecimiento` VALUES ('La musleria','Paseo de Leones no.205 col.cumbres','811-588-2167','Cocina fusion','imagen_logo.jpg');
/*!40000 ALTER TABLE `establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `total_factura` varchar(20) NOT NULL,
  `rfc_factura` varchar(15) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `id_factura` (`id_factura`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'563.85','GAAA9204191L3'),(2,'123.25','HGSF870312A72'),(3,'785.24','TENS7511041LU'),(4,'4,521.70','YUJN890514ETF'),(5,'5,632.36','CVGD0010155HE');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuente_cliente`
--

DROP TABLE IF EXISTS `frecuente_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frecuente_cliente` (
  `id_frecuente_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_frecuente_cliente` varchar(40) NOT NULL,
  `plato_ordenado_frecuente_cliente` varchar(40) NOT NULL,
  `correo_frecuente_cliente` varchar(40) NOT NULL,
  `registro_visitas_frecuente_cliente` int NOT NULL,
  PRIMARY KEY (`id_frecuente_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuente_cliente`
--

LOCK TABLES `frecuente_cliente` WRITE;
/*!40000 ALTER TABLE `frecuente_cliente` DISABLE KEYS */;
INSERT INTO `frecuente_cliente` VALUES (1,'Miguel Herrera','muslos','miguel_herrera@gmail.com',5),(2,'chuky Lozano','Hamburguesa Hidalgo','chuky_Lozano@gmail.com',7),(3,'guillermo ochoa','Costillas BBQ','guillermo_ochoa@gmail.com',9);
/*!40000 ALTER TABLE `frecuente_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes` (
  `id_ingredientes` int NOT NULL AUTO_INCREMENT,
  `platillo_ingredientes` varchar(20) NOT NULL,
  `nombre_ingredientes` varchar(25) NOT NULL,
  `cantidad_ingredientes` varchar(20) NOT NULL,
  `proveedor_ingredientes` varchar(25) NOT NULL,
  `costo_proveedor_ingredientes` varchar(10) NOT NULL,
  PRIMARY KEY (`id_ingredientes`),
  UNIQUE KEY `id_ingredientes` (`id_ingredientes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'1,3','MUSLOS','6pzs','1','70KG'),(2,'2,3,4','PAN','2pzs','7','5PZ'),(3,'2,5','COSTILLA','6pzs','1','160KG'),(4,'1,2,3,4,5,6,7','VERDURA','2','2','NULL'),(5,'1,2,3,4,5,6','SALSAS','1','4','50U'),(6,'1,2,3,4,5,6,7','CARNE','1','2','160KG');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `cantidad_inventario` int NOT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `id_inventario` (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,56),(2,54),(3,32),(4,14),(5,36),(6,85),(7,74),(8,14),(9,60),(10,12);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `platillo_menu` varchar(30) NOT NULL,
  `costo_menu` varchar(10) NOT NULL,
  `promocion_menu` tinyint(1) NOT NULL,
  `ganacia_menu` varchar(10) NOT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `id_menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'MUSLOS','100',1,'80'),(2,'HAMBURGUESA HIDALGO','140',0,'100'),(3,'HAMBURGUESA JOYA','120',0,'90'),(4,'HAMBURGUESA CALLEJERA','120',0,'90'),(5,'COSTILLAS BBQ','190',1,'150'),(6,'ESPARAGOS CON TOCINO','70',0,'40'),(7,'PICAÑA','165',0,'135'),(8,'PAY DE MANZANA','65',0,'45'),(9,'CERVEZA','40',1,'25'),(10,'REFRESCO','30',1,'15');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_proveedor`
--

DROP TABLE IF EXISTS `new_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_proveedor` (
  `id_proveedor` int NOT NULL,
  `nombre_proveedor` varchar(100) DEFAULT NULL,
  `contacto_proveedor` varchar(100) DEFAULT NULL,
  `producto_proveedor` varchar(100) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `registro` timestamp NULL DEFAULT NULL,
  `db` varchar(200) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_proveedor`
--

LOCK TABLES `new_proveedor` WRITE;
/*!40000 ALTER TABLE `new_proveedor` DISABLE KEYS */;
INSERT INTO `new_proveedor` VALUES (151,'pollo loco','811522445','pollo','root@localhost','2022-12-21 21:51:03','la_musleria','8.0.31'),(152,'salsas gonzalez','8225522445','salsas','root@localhost','2022-12-21 21:49:24','la_musleria','8.0.31');
/*!40000 ALTER TABLE `new_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuevo_cliente`
--

DROP TABLE IF EXISTS `nuevo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuevo_cliente` (
  `id_nuevo_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_nuevo_cliente` varchar(40) NOT NULL,
  `plato_ordenado_nuevo_cliente` varchar(40) NOT NULL,
  `correo_nuevo_cliente` varchar(40) NOT NULL,
  PRIMARY KEY (`id_nuevo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuevo_cliente`
--

LOCK TABLES `nuevo_cliente` WRITE;
/*!40000 ALTER TABLE `nuevo_cliente` DISABLE KEYS */;
INSERT INTO `nuevo_cliente` VALUES (1,'Ruben Martinez','Muslos','Ruben_Martinez@gmail.com'),(2,'Leo Messi','Picaña','Leo_Messi@gmail.com'),(3,'Javier Hernandez','Hamburguesa Hidalgo','Javier_Hernandez@gmail.com'),(4,'Hugo Sanchez','Costillas bbq','Hugo_Sanchezz@gmail.com'),(5,'ruben najera','muslos','ruben_najera@gmail.com'),(6,'luis montes','hamburguesa joya','luis_montes@gmail.com');
/*!40000 ALTER TABLE `nuevo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `nombre_personal` varchar(50) NOT NULL,
  `contacto_personal` varchar(100) NOT NULL,
  `puesto_personal` varchar(20) NOT NULL,
  `sueldo_personal` varchar(20) NOT NULL,
  PRIMARY KEY (`id_personal`),
  UNIQUE KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Frida Corona','8155226699','Gerente General','15,000'),(2,'Alberto Garza','8155448877','Dueño','20,000'),(3,'Alma Ayala','8146948877','Jefe de cocina','12,000'),(4,'Abril Ayala','8155447877','Cocinera','8,000'),(5,'Rolando Guerrero','8155478877','Mesero','5,000'),(6,'Hugo Alfaro','8196127877','Mesero','5,000');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `contacto_proveedor` varchar(150) NOT NULL,
  `tipo_de_pago_proveedor` varchar(20) NOT NULL,
  `producto_proveedor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Los pollos hermanos','7894561230','efectivo','Muslos de pollo'),(2,'Verdura del Campo','1236547899','efectivo','verduras'),(3,'Desechable Lopes','6543219877','credito','insumos'),(4,'Aderezos buffalo','7893214560','efectivo','Salsas y condiemntos'),(5,'coca-cola','5487213698','credito','refrescos'),(6,'Cerveceria Cuauhtemoc ','1236547899','credito','cerveza'),(7,'Materias primas Rodriguez','2486159723','efectivo','Materias primas'),(151,'pollo loco','811522445','efectivo','pollo'),(152,'salsas gonzalez','8225522445','efectivo','salsas');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `platillo_venta` varchar(100) NOT NULL,
  `cantidad_venta` varchar(15) NOT NULL,
  `sub_total_venta` varchar(15) NOT NULL,
  PRIMARY KEY (`id_venta`),
  UNIQUE KEY `id_venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'MUSLOS, HAMBURGUESA HIDALGO','250.26','230.24'),(2,'HAMBURGUESA JOYA, HAMBURGUESA HIDALGO','260.23','240.24'),(3,'MUSLOS','120.26','100.24'),(4,'MUSLOS, MUSLOS, HAMBURGUESA CALLEJERA','420.35','380.24'),(5,'HAMBURGUESA HIDALGO, HAMBURGUESA HIDALGO','260.26','245.24'),(6,'MUSLOS, HAMBURGUESA JOYA, PAY DE MANAZANA','385.26','350.24'),(7,'MUSLOS, HAMBURGUESA HIDALGO','250.26','230.24');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 15:21:31
