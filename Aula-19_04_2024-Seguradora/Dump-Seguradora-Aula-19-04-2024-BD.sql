CREATE DATABASE  IF NOT EXISTS `seguradora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seguradora`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: seguradora
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
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `idCarro` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(40) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `chassi` varchar(17) DEFAULT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `porte` varchar(15) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `anoCarro` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idCarro`),
  KEY `idCliente` (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'Honda','Civic',NULL,'EKS2411','Preto',NULL,1,'2024'),(2,'Chevrolet','Corvette',NULL,'EKS1107','Azul',NULL,2,'2023'),(3,'Ferrari','F40 Berlinetta',NULL,'CHA0700','Vermelho',NULL,3,'1989'),(4,'Wolkswagen','Gol (G4)',NULL,'PAM0101','Prata',NULL,4,'2010'),(5,'Renault','Clio',NULL,'KSW1112','Prata',NULL,5,'2006');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(19) NOT NULL,
  `dataNasc` date NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `rg` (`rg`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Enzo Krebs','400.000.000-00','50.000.000-0','enzo_krebs8@gmail.com','11 90000-4000','2007-11-24',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Enzo Silva','500.000.000-00','60.000.000-0','enzo_silva8@gmail.com','11 91000-5000','2007-10-24',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Enzo Sousa','600.000.000-00','70.000.000-0','enzo_sousa8@gmail.com','11 92000-6000','2007-09-24',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Enzo Oliveira','700.000.000-00','80.000.000-0','enzo_oliveira8@gmail.com','11 93000-7000','2007-08-24',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Enzo Pires','800.000.000-00','90.000.000-0','enzo_pires8@gmail.com','11 94000-8000','2007-07-24',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocorrencia` (
  `idOcorrencia` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `idCarro` int DEFAULT NULL,
  `idTipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idOcorrencia`),
  KEY `idCarro` (`idCarro`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocorrencia`
--

LOCK TABLES `ocorrencia` WRITE;
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
INSERT INTO `ocorrencia` VALUES (5,'2019-08-26','17:30:10','Cliente trancou chaves no Porta Malas','Rua RRED','Bairro CCDD','Santo André',NULL,1,'C111'),(4,'2019-08-26','11:10:00','Cliente bateu carro em cruzamento com perca Total, aberto sinistro','Rua AAA','Bairro DD','São Paulo',NULL,4,'B859'),(3,'2019-08-26','11:30:10','Cliente teve carro furtado da garagem de sua Residência','Rua M','Bairro J','São Bernardo',NULL,5,'R888'),(2,'2019-08-26','12:30:10','Cliente trancou chaves no Porta Malas','Rua H','Bairro C','Santo André',NULL,2,'C111'),(1,'2019-08-26','11:00:00','Descarregou bateria do carro, pois cliente esqueceu luz interna acesa','Rua B','Bairro A','Mauá',NULL,1,'B124');
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idTipo` varchar(10) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES ('B123','Batida Simples'),('C111','Chave Travada'),('B124','Bateria Descarregada'),('B859','Batida Simples'),('R888','Furto');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 23:51:27
