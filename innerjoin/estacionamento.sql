-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 30-Set-2024 às 03:47
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE IF NOT EXISTS `andar` (
  `codLugar` int NOT NULL AUTO_INCREMENT,
  `capacidade` int NOT NULL,
  `andar` varchar(20) NOT NULL,
  PRIMARY KEY (`codLugar`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Subsolo 1'),
(2, 40, 'Subsolo 2'),
(3, 60, 'Térreo'),
(4, 30, 'Primeiro Andar'),
(5, 45, 'Segundo Andar'),
(6, 50, 'Terceiro Andar'),
(7, 40, 'Quarto Andar'),
(8, 35, 'Quinto Andar'),
(9, 60, 'Subsolo 3'),
(10, 55, 'Sexto Andar'),
(11, 50, 'Subsolo 4'),
(12, 40, 'Subsolo 5'),
(13, 35, 'Primeiro Subsolo'),
(14, 45, 'Subsolo Principal'),
(15, 50, 'Andar Externo'),
(16, 60, 'Teto Solar'),
(17, 40, 'Área VIP 1'),
(18, 35, 'Área VIP 2'),
(19, 50, 'Área Executiva 1'),
(20, 60, 'Área Executiva 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dataNasc` datetime NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dataNasc`, `nome`) VALUES
('000.111.222-33', '1986-09-25 00:00:00', 'Thiago Azevedo'),
('012.345.678-99', '1994-06-10 00:00:00', 'Larissa Barros'),
('111.222.333-44', '1989-04-14 00:00:00', 'André Carvalho'),
('123.456.789-00', '1990-05-15 00:00:00', 'João Silva'),
('222.333.444-55', '1993-11-27 00:00:00', 'Juliana Martins'),
('234.567.890-11', '1985-08-23 00:00:00', 'Maria Oliveira'),
('333.444.555-66', '1996-10-04 00:00:00', 'Renato Fernandes'),
('345.678.901-22', '1975-09-12 00:00:00', 'Carlos Souza'),
('444.555.666-77', '1983-12-13 00:00:00', 'Paula Pereira'),
('456.789.012-33', '2000-12-05 00:00:00', 'Ana Santos'),
('555.666.777-88', '1979-08-29 00:00:00', 'Bruno Moreira'),
('555.666.777-99', '2002-11-24 00:00:00', 'Enzo Krebs'),
('567.890.123-44', '1992-02-28 00:00:00', 'Pedro Lima'),
('616.777.888-99', '1991-07-07 00:00:00', 'Camila Mendes'),
('678.901.234-55', '1988-07-19 00:00:00', 'Lucas Alves'),
('777.888.999-00', '1990-05-05 00:00:00', 'Fábio Duarte'),
('789.012.345-66', '1995-03-30 00:00:00', 'Mariana Costa'),
('888.999.000-11', '1987-03-18 00:00:00', 'Ricardo Teixeira'),
('890.123.456-77', '1978-11-15 00:00:00', 'Fernanda Nunes'),
('901.234.567-88', '1981-01-22 00:00:00', 'Rafael Ribeiro'),
('999.000.111-22', '1992-06-20 00:00:00', 'Adriana Figueiredo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clienteveiculo`
--

CREATE TABLE IF NOT EXISTS `clienteveiculo` (
  `cpf` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `codModelo` int DEFAULT NULL,
  `cod` int DEFAULT NULL,
  `dataEntrada` datetime DEFAULT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `horSaida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE IF NOT EXISTS `estaciona` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `horEntrada` datetime NOT NULL,
  `horSaida` datetime NOT NULL,
  `dataEntrada` datetime NOT NULL,
  `dataSaida` datetime NOT NULL,
  `placa` varchar(8) NOT NULL,
  `codLugar` int NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `placa` (`placa`),
  UNIQUE KEY `codLugar` (`codLugar`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horEntrada`, `horSaida`, `dataEntrada`, `dataSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-15 08:00:00', '2024-09-15 18:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'ABC1234', 1),
(2, '2024-09-15 09:00:00', '2024-09-15 17:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'XYZ5678', 2),
(3, '2024-09-15 07:30:00', '2024-09-15 19:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'JKL9012', 3),
(4, '2024-09-15 08:15:00', '2024-09-15 18:45:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'JEG1010', 4),
(5, '2024-09-15 06:00:00', '2024-09-15 20:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'PQR7890', 5),
(6, '2024-09-15 08:10:00', '2024-09-15 17:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'DEF1234', 6),
(7, '2024-09-15 09:45:00', '2024-09-15 16:45:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'GHI5678', 7),
(8, '2024-09-15 10:00:00', '2024-09-15 15:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'LMN9012', 8),
(9, '2024-09-15 08:30:00', '2024-09-15 18:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'OPQ3456', 9),
(10, '2024-09-15 07:45:00', '2024-09-15 19:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'RST7890', 10),
(11, '2024-09-15 08:00:00', '2024-09-15 18:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'AAA1111', 11),
(12, '2024-09-15 09:00:00', '2024-09-15 17:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'BBB2222', 12),
(13, '2024-09-15 07:30:00', '2024-09-15 19:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'CCC3333', 13),
(14, '2024-09-15 08:15:00', '2024-09-15 18:45:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'DDD4444', 14),
(15, '2024-09-15 06:00:00', '2024-09-15 20:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'EEE5555', 15),
(16, '2024-09-15 08:10:00', '2024-09-15 17:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'FFF6666', 16),
(17, '2024-09-15 09:45:00', '2024-09-15 16:45:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'GGG7777', 17),
(18, '2024-09-15 10:00:00', '2024-09-15 15:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'HHH8888', 18),
(19, '2024-09-15 08:30:00', '2024-09-15 18:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'III9999', 19),
(20, '2024-09-15 07:45:00', '2024-09-15 19:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'JJJ1010', 20),
(21, '2024-09-15 08:00:00', '2024-09-15 18:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'JJJ2020', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
  `codModelo` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(30) NOT NULL,
  PRIMARY KEY (`codModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Ford Ka'),
(2, 'Chevrolet Onix'),
(3, 'Volkswagen Gol'),
(4, 'Fiat Palio'),
(5, 'Hyundai HB20'),
(6, 'Renault Sandero'),
(7, 'Toyota Corolla'),
(8, 'Honda Civic'),
(9, 'Nissan March'),
(10, 'Peugeot 208'),
(11, 'Volkswagen Fox'),
(12, 'Ford Fiesta'),
(13, 'Chevrolet Prisma'),
(14, 'Fiat Uno'),
(15, 'Hyundai Tucson'),
(16, 'Renault Logan'),
(17, 'Toyota Etios'),
(18, 'Honda Fit'),
(19, 'Jeep Renegade'),
(20, 'Peugeot 2008');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE IF NOT EXISTS `veiculo` (
  `placa` varchar(8) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `codModelo` int NOT NULL,
  `ano` int NOT NULL,
  PRIMARY KEY (`placa`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `codModelo` (`codModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`, `ano`) VALUES
('AAA1111', 'Verde', '555.666.777-88', 11, 2020),
('ABC1234', 'Preto', '000.111.222-33', 1, 2018),
('BBB2222', 'Azul', '567.890.123-44', 12, 2019),
('CCC3333', 'Preto', '616.777.888-99', 13, 2008),
('DDD4444', 'Vermelho', '678.901.234-55', 14, 2015),
('DEF1234', 'Preto', '234.567.890-11', 6, 2000),
('EEE5555', 'Branco', '777.888.999-00', 15, 2012),
('FFF6666', 'Preto', '789.012.345-66', 16, 2010),
('GGG7777', 'Cinza', '890.123.456-77', 17, 2006),
('GHI5678', 'Branco', '333.444.555-66', 7, 1999),
('HHH8888', 'Azul', '901.234.567-88', 18, 2016),
('III9999', 'Verde', '999.000.111-22', 19, 2021),
('JEG1010', 'Azul', '123.456.789-00', 4, 2021),
('JJJ1010', 'Branco', '888.999.000-11', 20, 2017),
('JJJ2020', 'Branco', '555.666.777-99', 1, 2022),
('JKL9012', 'Cinza', '111.222.333-44', 3, 2010),
('LMN9012', 'Cinza', '345.678.901-22', 8, 2011),
('OPQ3456', 'Azul', '444.555.666-77', 9, 2020),
('PQR7890', 'Vermelho', '222.333.444-55', 5, 2005),
('RST7890', 'Vermelho', '456.789.012-33', 10, 2003),
('XYZ5678', 'Branco', '012.345.678-99', 2, 2015);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `codModelo` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`),
  ADD CONSTRAINT `cpf` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
