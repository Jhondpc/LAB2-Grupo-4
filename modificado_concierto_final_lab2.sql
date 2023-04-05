-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: conciertosperu
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `idArtistas` int NOT NULL,
  `Nombre_Grupo` varchar(45) DEFAULT NULL,
  `Fecha_creacion` date DEFAULT NULL,
  `Tipo_musica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Bad bunny SA','2001-01-01','Regueton'),(2,'Carlitos SA','2001-01-02','Pop'),(3,'Alfonso Davies SA','2001-01-03','Pop'),(4,'Tony Rosado SA','2001-01-04','Salsa'),(5,'Barry Burton SA','2001-01-05','Metal'),(6,'Chris Redfield SA','2001-01-06','Metal'),(7,'Leon kennedy SA','2001-01-07','Metal'),(8,'Rosalia SA','2001-01-08','Huayno'),(9,'Shakira SA','2001-01-09','Pop'),(10,'Tony Spencer SA','2001-01-10','Electronica');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concierto`
--

DROP TABLE IF EXISTS `concierto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concierto` (
  `idConcierto` int NOT NULL,
  `Fecha_evento` varchar(45) DEFAULT NULL,
  `proveedores_idProveedores` int NOT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idConcierto`),
  KEY `fk_Concierto_proveedores_idx` (`proveedores_idProveedores`),
  KEY `fk_Concierto_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_Concierto_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`),
  CONSTRAINT `fk_Concierto_proveedores` FOREIGN KEY (`proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concierto`
--

LOCK TABLES `concierto` WRITE;
/*!40000 ALTER TABLE `concierto` DISABLE KEYS */;
INSERT INTO `concierto` VALUES (1,'2023-10-01',1,1),(2,'2023-10-02',2,2),(3,'2023-10-03',3,3),(4,'2023-10-04',4,4),(5,'2023-10-05',5,5),(6,'2023-10-06',6,6),(7,'2023-10-07',7,7),(8,'2023-10-08',8,8),(9,'2023-10-09',9,9),(10,'2023-10-10',10,10);
/*!40000 ALTER TABLE `concierto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantes`
--

DROP TABLE IF EXISTS `integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantes` (
  `idIntegrantes` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Anhios_exp` int DEFAULT NULL,
  `rol` varchar(40) DEFAULT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idIntegrantes`),
  KEY `fk_integrantes_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_integrantes_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantes`
--

LOCK TABLES `integrantes` WRITE;
/*!40000 ALTER TABLE `integrantes` DISABLE KEYS */;
INSERT INTO `integrantes` VALUES (1,'Bad bunny',23,5,'cantante',1),(2,'Carlitos',20,6,'bajista',2),(3,'Alfonso Davies',30,7,'bajista',3),(4,'Tony Rosado',45,8,'cantante',4),(5,'Barry Burton',19,9,'cantante',5),(6,'Chris Redfield',31,10,'bajista',6),(7,'Leon kennedy',32,11,'bajista',7),(8,'Rosalia',23,12,'cantante',8),(9,'Shakira',45,13,'cantante',9),(10,'Tony Spencer',27,14,'bajista',10);
/*!40000 ALTER TABLE `integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedores` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Elemento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Otto Kuns',980347768,'embutidos'),(2,'Samsung',980347768,'electronicos'),(3,'Tonitos Media',982347761,'instrumentaría'),(4,'Sony',911347761,'audio'),(5,'Starbucks',900047768,'cafe'),(6,'Mcdonald',922247768,'Hamburguesas'),(7,'Inca Kola',933347768,'Gaseosas'),(8,'Salchichas SA',944447768,'choripan'),(9,'Cremoladas SA',955547768,'cremolada'),(10,'Helados SA',966647768,'helados');
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

-- Dump completed on 2023-04-04 21:10:46
