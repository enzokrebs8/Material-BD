-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/06/2024 às 17:42
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `castas`
--

CREATE TABLE `castas` (
  `idCastas` int(11) NOT NULL,
  `castas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `castas_vinho`
--

CREATE TABLE `castas_vinho` (
  `idVinho` int(11) DEFAULT NULL,
  `idCastas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtores`
--

CREATE TABLE `produtores` (
  `idProdutor` int(11) NOT NULL,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `idRegiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE `regiao` (
  `idRegiao` int(11) NOT NULL,
  `regiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `regiao`
--

INSERT INTO `regiao` (`idRegiao`, `regiao`) VALUES
(1, 'Dão'),
(2, 'Douro'),
(3, 'ETECMCM'),
(4, 'Fazenda da ETEC'),
(5, 'Dão'),
(6, 'Alenteijo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vinho`
--

CREATE TABLE `vinho` (
  `idVinho` int(11) NOT NULL,
  `nomeVinho` varchar(50) DEFAULT NULL,
  `anoVinho` int(11) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `idProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `castas`
--
ALTER TABLE `castas`
  ADD PRIMARY KEY (`idCastas`);

--
-- Índices de tabela `castas_vinho`
--
ALTER TABLE `castas_vinho`
  ADD KEY `idVinho` (`idVinho`),
  ADD KEY `idCastas` (`idCastas`);

--
-- Índices de tabela `produtores`
--
ALTER TABLE `produtores`
  ADD PRIMARY KEY (`idProdutor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idRegiao` (`idRegiao`);

--
-- Índices de tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idRegiao`);

--
-- Índices de tabela `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`idVinho`),
  ADD KEY `idProdutor` (`idProdutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `castas`
--
ALTER TABLE `castas`
  MODIFY `idCastas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtores`
--
ALTER TABLE `produtores`
  MODIFY `idProdutor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idRegiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vinho`
--
ALTER TABLE `vinho`
  MODIFY `idVinho` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
