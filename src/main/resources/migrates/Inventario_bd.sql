-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Inventario_bd
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `computadores`
--

DROP TABLE IF EXISTS `computadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computadores` (
  `computador_id` int NOT NULL AUTO_INCREMENT,
  `computador_modelo` varchar(255) DEFAULT NULL,
  `patrimonio` int NOT NULL,
  PRIMARY KEY (`computador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computadores`
--

LOCK TABLES `computadores` WRITE;
/*!40000 ALTER TABLE `computadores` DISABLE KEYS */;
INSERT INTO `computadores` VALUES (25,'HP',202300000),(26,'HP',202300000),(27,'HP',202300000),(28,'HP',202300000),(29,'DELL',202300000),(30,'DELL',202300000),(31,'POSITIVO',202300000),(32,'POSITIVO',202300000),(33,'HP',202300000),(34,'HP',202300000),(35,'HP',202300000),(36,'HP',202300000),(37,'DELL',202300000),(38,'DELL',202300000),(39,'POSITIVO',202300000),(40,'POSITIVO',202300000),(41,'POSITIVO',202300000),(42,'POSITIVO',202300000),(43,'HP',202300000),(44,'HP',202300000),(45,'HP',202300000),(46,'HP',202300000),(47,'DELL',202300000),(48,'DELL',202300000),(49,'HP',202300000),(50,'DELL',202300000),(51,'DELL',202300000),(52,'POSITIVO',202300000),(53,'POSITIVO',202300000),(54,'POSITIVO',202300000),(55,'POSITIVO',202300000),(56,'POSITIVO',202300000),(57,'POSITIVO',202300000),(58,'HP',202300000),(59,'HP',202300000),(60,'HP',202300000),(61,'HP',202300000),(62,'DELL',202300000),(63,'DELL',202300000),(64,'HP',202300000),(65,'DELL',202300000),(66,'DELL',202300000),(67,'POSITIVO',202300000),(68,'POSITIVO',202300000),(69,'POSITIVO',202300000),(70,'POSITIVO',202300000),(71,'POSITIVO',202300000),(72,'POSITIVO',202300000),(73,'HP',202300000),(74,'HP',202300000),(75,'HP',202300000),(76,'HP',202300000),(77,'DELL',202300000),(78,'DELL',202300000),(79,'HP',202300000),(80,'DELL',202300000),(81,'DELL',202300000),(82,'POSITIVO',202300000),(83,'POSITIVO',202300000),(84,'POSITIVO',202300000),(85,'POSITIVO',202300000),(86,'POSITIVO',202300000),(87,'POSITIVO',202300000),(88,'HP',202300000),(89,'HP',202300000),(90,'HP',202300000),(91,'HP',202300000),(92,'DELL',202300000),(93,'DELL',202300000),(94,'HP',202300000),(95,'DELL',202300000),(96,'DELL',202300000),(97,'POSITIVO',202300000),(98,'POSITIVO',202300000),(99,'POSITIVO',202300000),(100,'POSITIVO',202300000),(101,'POSITIVO',202300000),(102,'POSITIVO',202300000),(103,'HP',202300000),(104,'HP',202300000),(105,'HP',202300000),(106,'HP',202300000),(107,'DELL',202300000),(108,'DELL',202300000),(109,'HP',202300000),(110,'DELL',202300000),(111,'DELL',202300000),(112,'POSITIVO',202300000),(113,'POSITIVO',202300000),(114,'POSITIVO',202300000),(115,'POSITIVO',202300000),(116,'POSITIVO',202300000),(117,'POSITIVO',202300000),(118,'HP',202300000),(119,'HP',202300000),(120,'HP',202300000),(121,'HP',202300000),(122,'DELL',202300000),(123,'DELL',202300000),(124,'HP',202300000),(125,'DELL',202300000),(126,'DELL',202300000),(127,'POSITIVO',202300000),(128,'POSITIVO',202300000),(129,'POSITIVO',202300000),(130,'POSITIVO',202300000),(131,'POSITIVO',202300000),(132,'POSITIVO',202300000),(133,'HP',202300000),(134,'HP',202300000),(135,'HP',202300000),(136,'HP',202300000),(137,'DELL',202300000),(138,'DELL',202300000),(139,'HP',202300000),(140,'DELL',202300000),(141,'DELL',202300000),(142,'POSITIVO',202300000),(143,'POSITIVO',202300000),(144,'POSITIVO',202300000),(145,'POSITIVO',202300000),(146,'POSITIVO',202300000),(147,'POSITIVO',202300000),(148,'HP',202300000),(149,'HP',202300000),(150,'HP',202300000),(151,'HP',202300000),(152,'DELL',202300000),(153,'DELL',202300000),(154,'HP',202300000),(155,'DELL',202300000),(156,'DELL',202300000),(157,'POSITIVO',202300000),(158,'POSITIVO',202300000),(159,'POSITIVO',202300000),(160,'POSITIVO',202300000),(161,'POSITIVO',202300000),(162,'POSITIVO',202300000),(163,'HP',202300000),(164,'HP',202300000),(165,'HP',202300000),(166,'HP',202300000),(167,'DELL',202300000),(168,'DELL',202300000),(169,'HP',202300000),(170,'DELL',202300000),(171,'DELL',202300000),(172,'POSITIVO',202300000),(173,'POSITIVO',202300000),(174,'POSITIVO',202300000),(175,'POSITIVO',202300000),(176,'POSITIVO',202300000),(177,'POSITIVO',202300000);
/*!40000 ALTER TABLE `computadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_diversos`
--

DROP TABLE IF EXISTS `itens_diversos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_diversos` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `item_qtd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_diversos`
--

LOCK TABLES `itens_diversos` WRITE;
/*!40000 ALTER TABLE `itens_diversos` DISABLE KEYS */;
INSERT INTO `itens_diversos` VALUES (2,'Mouse com fio','55'),(3,'Mouse sem fio','7'),(4,'Conversor planet','6'),(5,'Conversor de midia ubiqui','11'),(6,'Fonte Poe','5'),(7,'Filtro de linha','13'),(8,'Antena wifi','Tem'),(9,'Telefone sem fio','tem'),(10,'Cabo de energia','tem'),(11,'Cabo vga','tem'),(12,'Cabo DVi','tem'),(13,'Rj45 macho','tem'),(14,'Rj45 femea','tem'),(15,'Fonte 220w','9'),(16,'Conversor de midia intelbras','8'),(17,'Antenas nanostation','tem'),(18,'Leitor dvd','tem'),(19,'Cabo de rede cat6 1,5m','tem'),(20,'Cabo de rede cat6 2,5m','tem'),(21,'Cabo de rede cat6 1,5m','tem'),(22,'Placa de videos','tem'),(23,'Aps tp link','16'),(24,'Cisco','1'),(25,'Fonte 220 lacrada','8'),(26,'Telefones IP','17'),(27,'Teclado com fio','65');
/*!40000 ALTER TABLE `itens_diversos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitores`
--

DROP TABLE IF EXISTS `monitores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitores` (
  `monitor_id` int NOT NULL AUTO_INCREMENT,
  `monitor_modelo` varchar(255) DEFAULT NULL,
  `patrimonio` int NOT NULL,
  PRIMARY KEY (`monitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitores`
--

LOCK TABLES `monitores` WRITE;
/*!40000 ALTER TABLE `monitores` DISABLE KEYS */;
INSERT INTO `monitores` VALUES (29,'POSITIVO',20230000),(30,'POSITIVO',20230000),(31,'POSITIVO',20230000),(32,'POSITIVO',20230000),(33,'VAIO1',20230001),(34,'VAIO1',20230001),(35,'VAIO2',20230002),(38,'VAIO5',20230005),(39,'VAIO6',20230006),(42,'VAIO9',20230009),(43,'VAIO10',20230010),(44,'VAIO11',20230011),(45,'VAIO12',20230012),(46,'VAIO13',20230013),(47,'VAIO14',20230014),(48,'VAIO15',20230015),(49,'VAIO16',20230016),(50,'VAIO17',20230017),(61,'VAIO28',20230028),(62,'VAIO29',20230029),(63,'VAIO30',20230030),(66,'DUDA LINDA',1000000000);
/*!40000 ALTER TABLE `monitores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-26  9:23:57