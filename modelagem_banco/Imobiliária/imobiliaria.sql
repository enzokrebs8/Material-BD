-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2024 às 14:10
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
CREATE TABLE `aluguel` (
  `idAluguel` int(11) NOT NULL,
  `inicio` date NOT NULL,
  `fim` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `condicoes` varchar(1024) DEFAULT NULL,
  `descricao` varchar(1024) DEFAULT NULL,
  `idCorretor` int(11) DEFAULT NULL,
  `idImovel` int(11) DEFAULT NULL,
  `idInquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

DROP TABLE IF EXISTS `corretor`;
CREATE TABLE `corretor` (
  `idCorretor` int(11) NOT NULL,
  `nomeCor` varchar(50) NOT NULL,
  `cpfCor` varchar(13) NOT NULL,
  `rgCor` varchar(13) DEFAULT NULL,
  `dataNascCor` date DEFAULT NULL,
  `telefoneCor` varchar(18) DEFAULT NULL,
  `emailCor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num` varchar(6) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `idCorretor` int(11) DEFAULT NULL,
  `idFiador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

DROP TABLE IF EXISTS `fiador`;
CREATE TABLE `fiador` (
  `idFiador` int(11) NOT NULL,
  `nomeFi` varchar(50) NOT NULL,
  `cpfFi` varchar(13) NOT NULL,
  `rgFi` varchar(13) DEFAULT NULL,
  `dataNascFi` date DEFAULT NULL,
  `telefoneFi` varchar(18) NOT NULL,
  `emailFi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE `imovel` (
  `idImovel` int(11) NOT NULL,
  `areaConstruida` float NOT NULL,
  `areaTotal` float NOT NULL,
  `qntdQuartos` int(3) NOT NULL,
  `suites` int(4) DEFAULT NULL,
  `qntdBanheiros` int(3) NOT NULL,
  `areaDeServico` bit(1) DEFAULT NULL,
  `quintal` bit(1) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `condominio` bit(1) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `qntdVagas` int(4) DEFAULT NULL,
  `idProprietario` int(11) DEFAULT NULL,
  `idEndereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

DROP TABLE IF EXISTS `inquilino`;
CREATE TABLE `inquilino` (
  `idInquilino` int(11) NOT NULL,
  `nomeInq` varchar(50) NOT NULL,
  `cpfInq` varchar(13) NOT NULL,
  `rgInq` varchar(13) DEFAULT NULL,
  `dataNascInq` date NOT NULL,
  `emailInq` varchar(50) NOT NULL,
  `telefoneInq` varchar(18) NOT NULL,
  `idFiador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `midiaimovel`
--

DROP TABLE IF EXISTS `midiaimovel`;
CREATE TABLE `midiaimovel` (
  `idMidia` int(11) NOT NULL,
  `midia1` varchar(150) DEFAULT NULL,
  `midia2` varchar(150) DEFAULT NULL,
  `midia3` varchar(150) DEFAULT NULL,
  `midia4` varchar(150) DEFAULT NULL,
  `midia5` varchar(150) DEFAULT NULL,
  `midia6` varchar(150) DEFAULT NULL,
  `midia7` varchar(150) DEFAULT NULL,
  `midia8` varchar(150) DEFAULT NULL,
  `midia9` varchar(150) DEFAULT NULL,
  `midia10` varchar(150) DEFAULT NULL,
  `midia11` varchar(150) DEFAULT NULL,
  `midia12` varchar(150) DEFAULT NULL,
  `midia13` varchar(150) DEFAULT NULL,
  `midia14` varchar(150) DEFAULT NULL,
  `midia15` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE `proprietario` (
  `idProprietario` int(11) NOT NULL,
  `nomeProp` varchar(50) NOT NULL,
  `cpfProp` varchar(13) NOT NULL,
  `rgProp` varchar(13) DEFAULT NULL,
  `dataNascProp` date NOT NULL,
  `telefoneProp` varchar(18) NOT NULL,
  `emailProp` varchar(50) NOT NULL,
  `agencia` varchar(4) NOT NULL,
  `numConta` varchar(20) NOT NULL,
  `chavePix` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idProprietario`, `nomeProp`, `cpfProp`, `rgProp`, `dataNascProp`, `telefoneProp`, `emailProp`, `agencia`, `numConta`, `chavePix`) VALUES
(1, 'Carlos Silva', '123.456.789-0', '12.345.678-9', '1980-01-01', '(11) 91234-5678', 'carlos.silva@email.com', '1234', '12345678-9', 'carlos.silva@pix.com'),
(2, 'Maria Oliveira', '987.654.321-0', '98.765.432-1', '1975-02-10', '(11) 99876-5432', 'maria.oliveira@email.com', '4321', '87654321-0', 'maria.oliveira@pix.com'),
(3, 'João Souza', '456.789.123-0', '45.678.912-3', '1985-03-15', '(11) 93456-7890', 'joao.souza@email.com', '5678', '12349876-1', 'joao.souza@pix.com'),
(4, 'Ana Costa', '789.123.456-0', '78.912.345-6', '1990-04-20', '(11) 94321-0987', 'ana.costa@email.com', '9876', '65432109-8', 'ana.costa@pix.com'),
(5, 'Lucas Pereira', '159.357.486-0', '15.937.548-6', '1982-05-25', '(11) 96548-3729', 'lucas.pereira@email.com', '7531', '19283746-2', 'lucas.pereira@pix.com'),
(6, 'Julia Fernandes', '357.159.486-0', '35.715.948-6', '1987-06-30', '(11) 98123-4567', 'julia.fernandes@email.com', '2468', '91827364-0', 'julia.fernandes@pix.com'),
(7, 'Bruno Lima', '741.852.963-0', '74.185.296-3', '1993-07-05', '(11) 97654-3210', 'bruno.lima@email.com', '1597', '64738291-0', 'bruno.lima@pix.com'),
(8, 'Mariana Rocha', '852.741.963-0', '85.274.196-3', '1988-08-10', '(11) 96547-3829', 'mariana.rocha@email.com', '3141', '81927365-0', 'mariana.rocha@pix.com'),
(9, 'Ricardo Santos', '963.852.741-0', '96.385.274-1', '1991-09-15', '(11) 95382-7491', 'ricardo.santos@email.com', '6283', '36481927-0', 'ricardo.santos@pix.com'),
(10, 'Fernanda Almeida', '321.654.987-0', '32.165.498-7', '1979-10-20', '(11) 98765-4321', 'fernanda.almeida@email.com', '7890', '54729183-0', 'fernanda.almeida@pix.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`idAluguel`),
  ADD KEY `idCorretor` (`idCorretor`),
  ADD KEY `idImovel` (`idImovel`),
  ADD KEY `idInquilino` (`idInquilino`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`),
  ADD UNIQUE KEY `cpfCor` (`cpfCor`),
  ADD UNIQUE KEY `emailCor` (`emailCor`),
  ADD UNIQUE KEY `rgCor` (`rgCor`),
  ADD UNIQUE KEY `telefoneCor` (`telefoneCor`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `idCorretor` (`idCorretor`),
  ADD KEY `idFiador` (`idFiador`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idFiador`),
  ADD UNIQUE KEY `cpfFi` (`cpfFi`),
  ADD UNIQUE KEY `telefoneFi` (`telefoneFi`),
  ADD UNIQUE KEY `emailFi` (`emailFi`),
  ADD UNIQUE KEY `rgFi` (`rgFi`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idImovel`),
  ADD KEY `idEndereco` (`idEndereco`),
  ADD KEY `idProprietario` (`idProprietario`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idInquilino`),
  ADD UNIQUE KEY `cpfInq` (`cpfInq`),
  ADD UNIQUE KEY `emailInq` (`emailInq`),
  ADD UNIQUE KEY `telefoneInq` (`telefoneInq`),
  ADD UNIQUE KEY `rgInq` (`rgInq`),
  ADD KEY `idFiador` (`idFiador`);

--
-- Índices para tabela `midiaimovel`
--
ALTER TABLE `midiaimovel`
  ADD PRIMARY KEY (`idMidia`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idProprietario`),
  ADD UNIQUE KEY `cpfProp` (`cpfProp`),
  ADD UNIQUE KEY `telefoneProp` (`telefoneProp`),
  ADD UNIQUE KEY `emailProp` (`emailProp`),
  ADD UNIQUE KEY `numConta` (`numConta`),
  ADD UNIQUE KEY `chavePix` (`chavePix`),
  ADD UNIQUE KEY `rgProp` (`rgProp`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `idAluguel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idFiador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idImovel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idInquilino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `midiaimovel`
--
ALTER TABLE `midiaimovel`
  MODIFY `idMidia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idProprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idCorretor`) REFERENCES `corretor` (`idCorretor`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idImovel`) REFERENCES `imovel` (`idImovel`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idInquilino`) REFERENCES `inquilino` (`idInquilino`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idCorretor`) REFERENCES `corretor` (`idCorretor`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idFiador`) REFERENCES `fiador` (`idFiador`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idProprietario`) REFERENCES `proprietario` (`idProprietario`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`idFiador`) REFERENCES `fiador` (`idFiador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
