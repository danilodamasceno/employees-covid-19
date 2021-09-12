-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: obras
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `acompanhamento`
--

DROP TABLE IF EXISTS `acompanhamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acompanhamento` (
  `idacompanhamento` int NOT NULL,
  `idTrabalhador` int DEFAULT NULL,
  `Documento` int DEFAULT NULL,
  `Sintoma` varchar(45) DEFAULT NULL,
  `Situacao` varchar(45) DEFAULT NULL,
  `Isolamento` varchar(45) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  PRIMARY KEY (`idacompanhamento`),
  KEY `trabalhador_fk_idx` (`idTrabalhador`),
  CONSTRAINT `trabalhador_fk` FOREIGN KEY (`idTrabalhador`) REFERENCES `trabalhadores` (`idTrabalhadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acompanhamento`
--

LOCK TABLES `acompanhamento` WRITE;
/*!40000 ALTER TABLE `acompanhamento` DISABLE KEYS */;
INSERT INTO `acompanhamento` VALUES (1,117,117,'Sim','Suspeito','Residência','2020-05-01'),(2,117,117,'Sim','Positivo','Residência','2020-06-01'),(3,118,118,'Sim','Suspeito','Residência','2020-04-01'),(4,118,118,'Sim','Positivo','Residência','2020-05-01'),(5,118,118,'Não','Curado','Não','2020-06-01'),(6,119,119,'Sim','Suspeito','Pousada','2020-03-01'),(7,119,119,'Sim','Descaracterizado','Não','2020-04-01'),(8,120,120,'Sim','Suspeito','Pousada','2020-05-01'),(9,120,120,'Sim','Descartado','Pousada','2020-06-01'),(10,121,121,'Sim','Suspeito','Residência','2020-05-01'),(11,121,121,'Sim','Positivo','Residência','2020-06-01'),(12,122,122,'Sim','Suspeito','Residência','2020-03-01'),(13,122,122,'Sim','Positivo','Residência','2020-04-01'),(14,122,122,'Não','Curado','Residência','2020-05-01'),(15,123,123,'Sim','Suspeito','Pousada','2020-04-01'),(16,123,123,'Sim','Descartado','Não','2020-05-01'),(17,124,124,'Sim','Suspeito','Pousada','2020-05-01'),(18,124,124,'Sim','Positivo','Pousada','2020-06-01'),(19,125,125,'Sim','Suspeito','Residência','2020-05-01'),(20,125,125,'Sim','Descaracterizado','Não','2020-06-01'),(21,126,126,'Sim','Suspeito','Pousada','2020-04-01'),(22,126,126,'Sim','Positivo','Pousada','2020-05-01'),(23,126,126,'Não','Curado','Não','2020-06-01'),(24,127,127,'Sim','Suspeito','Residência','2020-03-01'),(25,127,127,'Sim','Descartado','Residência','2020-04-01'),(26,128,128,'Sim','Suspeito','Residência','2020-04-01'),(27,128,128,'Sim','Positivo','Residência','2020-05-01'),(28,129,129,'Sim','Suspeito','Pousada','2020-03-01'),(29,129,129,'Sim','Descartado','Não','2020-04-01'),(30,130,130,'Sim','Suspeito','Residência','2020-03-01'),(31,130,130,'Sim','Positivo','Residência','2020-04-01'),(32,130,130,'Não','Curado','Residência','2020-05-01'),(33,131,131,'Sim','Suspeito','Pousada','2020-03-01'),(34,131,131,'Sim','Positivo','Pousada','2020-04-01'),(35,131,131,'Não','Curado','Não','2020-05-01');
/*!40000 ALTER TABLE `acompanhamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalhadores`
--

DROP TABLE IF EXISTS `trabalhadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabalhadores` (
  `idTrabalhadores` int NOT NULL,
  `Obra` varchar(45) DEFAULT NULL,
  `Nome Trabalhador` varchar(45) DEFAULT NULL,
  `Documento` int DEFAULT NULL,
  PRIMARY KEY (`idTrabalhadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalhadores`
--

LOCK TABLES `trabalhadores` WRITE;
/*!40000 ALTER TABLE `trabalhadores` DISABLE KEYS */;
INSERT INTO `trabalhadores` VALUES (117,'Obra F','Trabalhador 17',117),(118,'Obra F','Trabalhador 18',118),(119,'Obra F','Trabalhador 19',119),(120,'Obra G','Trabalhador 20',120),(121,'Obra G','Trabalhador 21',121),(122,'Obra G','Trabalhador 22',122),(123,'Obra H','Trabalhador 23',123),(124,'Obra H','Trabalhador 24',124),(125,'Obra H','Trabalhador 25',125),(126,'Obra I','Trabalhador 26',126),(127,'Obra I','Trabalhador 27',127),(128,'Obra I','Trabalhador 28',128),(129,'Obra J','Trabalhador 29',129),(130,'Obra J','Trabalhador 30',130),(131,'Obra J','Trabalhador 31',131);
/*!40000 ALTER TABLE `trabalhadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 16:13:39
