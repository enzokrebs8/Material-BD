-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Maio-2024 às 23:15
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `castas`
--

DROP TABLE IF EXISTS `castas`;
CREATE TABLE IF NOT EXISTS `castas` (
  `idCastas` int NOT NULL AUTO_INCREMENT,
  `castas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCastas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `castas_vinho`
--

DROP TABLE IF EXISTS `castas_vinho`;
CREATE TABLE IF NOT EXISTS `castas_vinho` (
  `idVinho` int DEFAULT NULL,
  `idCastas` int DEFAULT NULL,
  KEY `idVinho` (`idVinho`),
  KEY `idCastas` (`idCastas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtores`
--

DROP TABLE IF EXISTS `produtores`;
CREATE TABLE IF NOT EXISTS `produtores` (
  `idProdutor` int NOT NULL AUTO_INCREMENT,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `idRegiao` int DEFAULT NULL,
  PRIMARY KEY (`idProdutor`),
  UNIQUE KEY `email` (`email`),
  KEY `idRegiao` (`idRegiao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

DROP TABLE IF EXISTS `regiao`;
CREATE TABLE IF NOT EXISTS `regiao` (
  `idRegiao` int NOT NULL AUTO_INCREMENT,
  `regiao` varchar(50) NOT NULL,
  PRIMARY KEY (`idRegiao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinho`
--

DROP TABLE IF EXISTS `vinho`;
CREATE TABLE IF NOT EXISTS `vinho` (
  `idVinho` int NOT NULL AUTO_INCREMENT,
  `nomeVinho` varchar(50) DEFAULT NULL,
  `anoVinho` int DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `idProdutor` int DEFAULT NULL,
  PRIMARY KEY (`idVinho`),
  KEY `idProdutor` (`idProdutor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
