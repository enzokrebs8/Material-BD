-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03-Set-2024 às 02:56
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
-- Banco de dados: `imobiliaria-2.0`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
CREATE TABLE `aluguel` (
  `idAluguel` int NOT NULL,
  `inicio` date NOT NULL,
  `fim` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `condicoes` varchar(1024) DEFAULT NULL,
  `descricao` varchar(1024) DEFAULT NULL,
  `idCorretor` int DEFAULT NULL,
  `idImovel` int DEFAULT NULL,
  `idInquilino` int DEFAULT NULL,
  `dataVencimento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`idAluguel`, `inicio`, `fim`, `valor`, `condicoes`, `descricao`, `idCorretor`, `idImovel`, `idInquilino`, `dataVencimento`) VALUES
(1, '2024-01-15', '2025-01-15', 1755, 'Mensal', 'Apartamento de 2 quartos', 1, 1, 1, 15),
(2, '2024-02-01', '2025-02-01', 2925, 'Mensal', 'Casa de 3 quartos', 2, 2, 2, 1),
(3, '2024-03-20', '2025-03-20', 3744, 'Mensal', 'Cobertura com 4 quartos', 3, 3, 3, 20),
(4, '2024-04-10', '2025-04-10', 2106, 'Mensal', 'Apartamento de 2 quartos com varanda', 4, 4, 4, 10),
(5, '2024-05-05', '2025-05-05', 3159, 'Mensal', 'Casa de 3 quartos com quintal', 5, 5, 5, 5),
(6, '2024-06-15', '2025-06-15', 2574, 'Mensal', 'Apartamento de 3 quartos', 6, 6, 6, 15),
(7, '2024-07-01', '2025-07-01', 3978, 'Mensal', 'Casa de 4 quartos com piscina', 7, 7, 7, 1),
(8, '2024-08-20', '2025-08-20', 2223, 'Mensal', 'Apartamento de 2 quartos com suíte', 8, 8, 8, 20),
(9, '2024-09-10', '2025-09-10', 890, 'Mensal', 'Casa de 3 quartos com garagem', 9, 9, 9, 10),
(10, '2024-10-01', '2025-10-01', 3276, 'Mensal', 'Apartamento de 3 quartos com vista', 10, 10, 10, 1),
(11, '2024-09-01', '2025-09-01', 1053, 'Mensal', 'Apartamento pequeno no Centro', 1, 11, NULL, 1),
(12, '2024-09-15', '2025-09-15', 1111.5, 'Mensal', 'Casa no Jardim São Francisco', 2, 12, NULL, 15),
(13, '2024-10-01', '2025-10-01', 1146.6, 'Mensal', 'Apartamento no Parque das Flores', 3, 13, NULL, 1),
(14, '2024-10-10', '2025-10-10', 900, 'Mensal', 'Casa na Vila Nova', 4, 14, NULL, 10),
(15, '2024-10-20', '2025-10-20', 1111.5, 'Mensal', 'Apartamento na Vila São João', 5, 15, NULL, 20),
(16, '2024-11-01', '2025-11-01', 1134.9, 'Mensal', 'Casa no Jardim Primavera', 6, 16, NULL, 1),
(17, '2024-11-15', '2025-11-15', 1076.4, 'Mensal', 'Apartamento na Vila América', 7, 17, NULL, 15),
(18, '2024-12-01', '2025-12-01', 1099.8, 'Mensal', 'Casa no Jardim Planalto', 8, 18, NULL, 1),
(19, '2024-12-10', '2025-12-10', 1158.3, 'Mensal', 'Apartamento na Vila Aurora', 9, 19, NULL, 10),
(20, '2024-12-20', '2025-12-20', 1029.6, 'Mensal', 'Casa no Jardim Esperança', 10, 20, NULL, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

DROP TABLE IF EXISTS `corretor`;
CREATE TABLE `corretor` (
  `idCorretor` int NOT NULL,
  `nomeCor` varchar(50) NOT NULL,
  `cpfCor` varchar(13) NOT NULL,
  `rgCor` varchar(13) DEFAULT NULL,
  `dataNascCor` date DEFAULT NULL,
  `telefoneCor` varchar(18) DEFAULT NULL,
  `emailCor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`idCorretor`, `nomeCor`, `cpfCor`, `rgCor`, `dataNascCor`, `telefoneCor`, `emailCor`) VALUES
(1, 'Paulo Lima', '111.222.333-4', '11.122.233-3', '1984-05-12', '(11) 92123-4567', 'paulo.lima@corretor.com'),
(2, 'Aline Marques', '222.333.444-5', '22.233.344-4', '1986-07-14', '(11) 93123-4567', 'aline.marques@corretor.com'),
(3, 'Renato Costa', '333.444.555-6', '33.344.455-5', '1982-03-21', '(11) 94123-4567', 'renato.costa@corretor.com'),
(4, 'Carla Ribeiro', '444.555.666-7', '44.455.566-6', '1989-09-17', '(11) 95123-4567', 'carla.ribeiro@corretor.com'),
(5, 'Victor Nunes', '555.666.777-8', '55.566.677-7', '1990-11-30', '(11) 96123-4567', 'victor.nunes@corretor.com'),
(6, 'Fernanda Gomes', '666.777.888-9', '66.677.788-8', '1985-06-10', '(11) 97123-4567', 'fernanda.gomes@corretor.com'),
(7, 'Bruno Ferreira', '777.888.999-0', '77.788.899-9', '1987-01-25', '(11) 98123-4567', 'bruno.ferreira@corretor.com'),
(8, 'Luciana Silva', '888.999.111-2', '88.899.911-0', '1983-08-15', '(11) 99123-4567', 'luciana.silva@corretor.com'),
(9, 'Daniel Oliveira', '999.111.222-3', '99.911.122-1', '1992-04-07', '(11) 92123-4568', 'daniel.oliveira@corretor.com'),
(10, 'Mariana Soares', '000.111.222-4', '00.011.122-2', '1988-12-20', '(11) 93123-4568', 'mariana.soares@corretor.com'),
(12, 'Carmo', '222.363.444-5', '22.333.444-5', '1980-03-25', '(11) 98765-4321', 'carmo.araujo@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `idEndereco` int NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num` varchar(6) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `IdImovel` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `estado`, `cidade`, `bairro`, `rua`, `num`, `complemento`, `IdImovel`) VALUES
(1, 'São Paulo', 'São Paulo', 'Vila Mariana', 'Rua A', '100', 'Apt 1', 1),
(2, 'São Paulo', 'São Paulo', 'Pinheiros', 'Rua B', '200', 'Casa 2', 2),
(3, 'São Paulo', 'São Paulo', 'Moema', 'Rua C', '300', 'Apt 3', 3),
(4, 'São Paulo', 'São Paulo', 'Itaim Bibi', 'Rua D', '400', 'Casa 4', 4),
(5, 'São Paulo', 'São Paulo', 'Jardins', 'Rua E', '500', 'Apt 5', 5),
(6, 'São Paulo', 'São Paulo', 'Liberdade', 'Rua F', '600', 'Casa 6', 6),
(7, 'São Paulo', 'São Paulo', 'Brooklin', 'Rua G', '700', 'Apt 7', 7),
(8, 'São Paulo', 'São Paulo', 'Tatuapé', 'Rua H', '800', 'Casa 8', 8),
(9, 'São Paulo', 'São Paulo', 'Santana', 'Rua I', '900', 'Apt 9', 9),
(10, 'São Paulo', 'São Paulo', 'Lapa', 'Rua J', '1000', 'Casa 10', 10),
(11, 'São Paulo', 'Mauá', 'Centro', 'Rua X', '1', 'Apt 1', NULL),
(12, 'São Paulo', 'Mauá', 'Jardim São Francisco', 'Rua Y', '2', 'Casa 2', NULL),
(13, 'São Paulo', 'Mauá', 'Parque das Flores', 'Rua Z', '3', 'Apt 3', NULL),
(14, 'São Paulo', 'Mauá', 'Vila Nova', 'Rua W', '4', 'Casa 4', NULL),
(15, 'São Paulo', 'Mauá', 'Vila São João', 'Rua V', '5', 'Apt 5', NULL),
(16, 'São Paulo', 'Mauá', 'Jardim Primavera', 'Rua U', '6', 'Casa 6', NULL),
(17, 'São Paulo', 'Mauá', 'Vila América', 'Rua T', '7', 'Apt 7', NULL),
(18, 'São Paulo', 'Mauá', 'Jardim Planalto', 'Rua S', '8', 'Casa 8', NULL),
(19, 'São Paulo', 'Mauá', 'Vila Aurora', 'Rua R', '9', 'Apt 9', NULL),
(20, 'São Paulo', 'Mauá', 'Vila Delphi', 'Rua Q', '10', 'Casa 10', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

DROP TABLE IF EXISTS `fiador`;
CREATE TABLE `fiador` (
  `idFiador` int NOT NULL,
  `nomeFi` varchar(50) NOT NULL,
  `cpfFi` varchar(13) NOT NULL,
  `rgFi` varchar(13) DEFAULT NULL,
  `dataNascFi` date DEFAULT NULL,
  `telefoneFi` varchar(18) NOT NULL,
  `emailFi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`idFiador`, `nomeFi`, `cpfFi`, `rgFi`, `dataNascFi`, `telefoneFi`, `emailFi`) VALUES
(1, 'Eduardo Vieira', '111.333.555-7', '11.133.355-5', '1978-04-19', '(11) 92234-5678', 'eduardo.vieira@fiador.com'),
(2, 'Rafaela Mendes', '222.444.666-8', '22.244.466-6', '1980-08-24', '(11) 93234-5678', 'rafaela.mendes@fiador.com'),
(3, 'Gustavo Martins', '333.555.777-9', '33.355.577-7', '1977-02-13', '(11) 94234-5678', 'gustavo.martins@fiador.com'),
(4, 'Beatriz Farias', '444.666.888-0', '44.466.688-8', '1981-06-16', '(11) 95234-5678', 'beatriz.farias@fiador.com'),
(5, 'Fernando Almeida', '555.777.999-1', '55.577.799-9', '1979-10-23', '(11) 96234-5678', 'fernando.almeida@fiador.com'),
(6, 'Camila Barbosa', '666.888.000-2', '66.688.800-0', '1982-11-28', '(11) 97234-5678', 'camila.barbosa@fiador.com'),
(7, 'Thiago Santos', '777.999.111-3', '77.799.911-1', '1984-07-12', '(11) 98234-5678', 'thiago.santos@fiador.com'),
(8, 'Isabela Souza', '888.000.222-4', '88.800.022-2', '1976-03-09', '(11) 99234-5678', 'isabela.souza@fiador.com'),
(9, 'Rodrigo Correia', '999.111.333-5', '99.911.133-3', '1983-09-04', '(11) 92234-5679', 'rodrigo.correia@fiador.com'),
(10, 'Larissa Gomes', '000.222.444-6', '00.022.244-4', '1985-05-01', '(11) 93234-5679', 'larissa.gomes@fiador.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE `imovel` (
  `idImovel` int NOT NULL,
  `areaConstruida` float NOT NULL,
  `areaTotal` float NOT NULL,
  `qntdQuartos` int NOT NULL,
  `suites` int DEFAULT NULL,
  `qntdBanheiros` int NOT NULL,
  `areaDeServico` bit(1) DEFAULT NULL,
  `quintal` bit(1) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `condominio` bit(1) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `qntdVagas` int DEFAULT NULL,
  `idProprietario` int DEFAULT NULL,
  `idEndereco` int DEFAULT NULL,
  `qntdComodos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`idImovel`, `areaConstruida`, `areaTotal`, `qntdQuartos`, `suites`, `qntdBanheiros`, `areaDeServico`, `quintal`, `piscina`, `condominio`, `garagem`, `qntdVagas`, `idProprietario`, `idEndereco`, `qntdComodos`) VALUES
(1, 120, 200, 3, 1, 1, b'1', b'1', b'0', b'1', b'1', 2, 1, 1, 4),
(2, 90, 150, 2, 1, 2, b'1', b'0', b'0', b'0', b'1', 1, 2, 2, 6),
(3, 140, 220, 4, 2, 1, b'1', b'1', b'1', b'1', b'0', 3, 3, 3, 2),
(4, 85, 130, 2, 1, 1, b'1', b'0', b'0', b'1', b'0', 1, 4, 4, 4),
(5, 100, 170, 3, 2, 2, b'0', b'1', b'1', b'1', b'1', 2, 5, 5, 5),
(6, 110, 180, 3, 2, 2, b'1', b'1', b'0', b'0', b'1', 2, 6, 6, 0),
(7, 130, 210, 4, 3, 3, b'1', b'1', b'1', b'1', b'1', 3, 7, 7, 0),
(8, 95, 160, 2, 1, 2, b'1', b'0', b'0', b'1', b'1', 1, 8, 8, 0),
(9, 115, 190, 3, 2, 2, b'1', b'1', b'0', b'1', b'1', 2, 9, 9, 0),
(10, 125, 200, 4, 3, 3, b'1', b'1', b'1', b'1', b'1', 3, 10, 10, 0),
(11, 70, 100, 2, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 1, 11, 0),
(12, 80, 120, 3, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 2, 12, 0),
(13, 75, 110, 2, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 3, 13, 0),
(14, 85, 130, 3, 1, 2, b'1', b'1', b'0', b'0', b'1', 1, 4, 14, 0),
(15, 90, 140, 3, 1, 2, b'1', b'1', b'0', b'0', b'1', 1, 5, 15, 0),
(16, 95, 150, 3, 2, 2, b'1', b'1', b'0', b'0', b'1', 1, 6, 16, 0),
(17, 80, 120, 2, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 7, 17, 0),
(18, 70, 110, 2, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 8, 18, 0),
(19, 85, 130, 3, 1, 1, b'1', b'0', b'0', b'0', b'1', 1, 9, 19, 0),
(20, 90, 140, 3, 2, 2, b'1', b'1', b'0', b'0', b'1', 1, 10, 20, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

DROP TABLE IF EXISTS `inquilino`;
CREATE TABLE `inquilino` (
  `idInquilino` int NOT NULL,
  `nomeInq` varchar(50) NOT NULL,
  `cpfInq` varchar(13) NOT NULL,
  `rgInq` varchar(13) DEFAULT NULL,
  `dataNascInq` date NOT NULL,
  `emailInq` varchar(50) NOT NULL,
  `telefoneInq` varchar(18) NOT NULL,
  `idFiador` int DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`idInquilino`, `nomeInq`, `cpfInq`, `rgInq`, `dataNascInq`, `emailInq`, `telefoneInq`, `idFiador`, `salario`) VALUES
(1, 'Lucas Lima', '123.456.789-1', '12.345.678-0', '1981-12-21', 'lucas.lima@inquilino.com', '(11) 91234-5678', 1, '2500.00'),
(2, 'Mariana Sousa', '234.567.891-1', '23.456.789-1', '1974-02-14', 'mariana.sousa@inquilino.com', '(11) 91235-5678', 2, '1500.00'),
(3, 'Pedro Ferreira', '345.678.912-2', '34.567.891-2', '1960-06-02', 'pedro.ferreira@inquilino.com', '(11) 91236-5678', 3, '4000.00'),
(4, 'Amanda Oliveira', '456.789.123-3', '45.678.912-3', '1992-05-15', 'amanda.oliveira@inquilino.com', '(11) 91237-5678', 4, '2800.00'),
(5, 'João Souza', '567.891.234-4', '56.789.123-4', '1991-09-28', 'joao.souza@inquilino.com', '(11) 91238-5678', 5, '4000.00'),
(6, 'Fernanda Silva', '678.912.345-5', '67.891.234-5', '1996-12-01', 'fernanda.silva@inquilino.com', '(11) 91239-5678', 6, '4500.00'),
(7, 'Gabriel Costa', '789.123.456-6', '78.912.345-6', '1990-03-19', 'gabriel.costa@inquilino.com', '(11) 91240-5678', 7, '2700.00'),
(8, 'Juliana Rocha', '891.234.567-7', '89.123.456-7', '1997-08-10', 'juliana.rocha@inquilino.com', '(11) 91241-5678', 8, '3100.00'),
(9, 'Carlos Santos', '912.345.678-8', '91.234.567-8', '1998-02-22', 'carlos.santos@inquilino.com', '(11) 91242-5678', 9, '2900.00'),
(10, 'Ana Paula', '234.567.890-1', '23.456.789-0', '1995-06-15', 'ana.paula@inquilino.com', '(11) 91243-5678', 10, '3400.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midiaimovel`
--

DROP TABLE IF EXISTS `midiaimovel`;
CREATE TABLE `midiaimovel` (
  `idMidia` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE `proprietario` (
  `idProprietario` int NOT NULL,
  `nomeProp` varchar(50) NOT NULL,
  `cpfProp` varchar(13) NOT NULL,
  `rgProp` varchar(13) DEFAULT NULL,
  `dataNascProp` date NOT NULL,
  `telefoneProp` varchar(18) NOT NULL,
  `emailProp` varchar(50) NOT NULL,
  `agencia` varchar(4) NOT NULL,
  `numConta` varchar(20) NOT NULL,
  `chavePix` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idProprietario`, `nomeProp`, `cpfProp`, `rgProp`, `dataNascProp`, `telefoneProp`, `emailProp`, `agencia`, `numConta`, `chavePix`) VALUES
(1, 'Carlos Silva', '123.456.789-0', '12.345.678-9', '1981-12-21', '111) 91234-5678', 'carlos.silva@email.com', '1234', '12345678-9', 'carlos.silva@pix.com'),
(2, 'Maria Oliveira', '987.654.321-0', '98.765.432-1', '1975-02-10', '111) 99876-5432', 'maria.oliveira@email.com', '4321', '87654321-0', 'maria.oliveira@pix.com'),
(3, 'João Souza', '456.789.123-0', '45.678.912-3', '1985-03-15', '111) 93456-7890', 'joao.souza@email.com', '5678', '12349876-1', 'joao.souza@pix.com'),
(4, 'Ana Costa', '789.123.456-0', '78.912.345-6', '1990-04-20', '111) 94321-0987', 'ana.costa@email.com', '9876', '65432109-8', 'ana.costa@pix.com'),
(5, 'Lucas Pereira', '159.357.486-0', '15.937.548-6', '1982-05-25', '111) 96548-3729', 'lucas.pereira@email.com', '7531', '19283746-2', 'lucas.pereira@pix.com'),
(6, 'Julia Fernandes', '357.159.486-0', '35.715.948-6', '1987-06-30', '111) 98123-4567', 'julia.fernandes@email.com', '2468', '91827364-0', 'julia.fernandes@pix.com'),
(7, 'Bruno Lima', '741.852.963-0', '74.185.296-3', '1993-07-05', '111) 97654-3210', 'bruno.lima@email.com', '1597', '64738291-0', 'bruno.lima@pix.com'),
(8, 'Mariana Rocha', '852.741.963-0', '85.274.196-3', '1988-08-10', '111) 96547-3829', 'mariana.rocha@email.com', '3141', '81927365-0', 'mariana.rocha@pix.com'),
(9, 'Ricardo Santos', '963.852.741-0', '96.385.274-1', '1991-09-15', '111) 95382-7491', 'ricardo.santos@email.com', '6283', '36481927-0', 'ricardo.santos@pix.com'),
(10, 'Fernanda Almeida', '321.654.987-0', '32.165.498-7', '1979-10-20', '111) 98765-4321', 'fernanda.almeida@email.com', '7890', '54729183-0', 'fernanda.almeida@pix.com'),
(11, 'José Araújo', '789.654.321-0', '23.456.789-0', '1980-04-25', '111) 99987-6543', 'jose.araujo.unique@proprietario.com', '5678', '12345678901', 'araujo.pix@banco.com');

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
  ADD KEY `idImovel` (`IdImovel`);

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
  MODIFY `idAluguel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idFiador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idImovel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idInquilino` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `midiaimovel`
--
ALTER TABLE `midiaimovel`
  MODIFY `idMidia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idProprietario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `idImovel` FOREIGN KEY (`IdImovel`) REFERENCES `imovel` (`idImovel`);

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
