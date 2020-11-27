-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Nov-2017 às 04:59
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_provaprodutos`
--
CREATE DATABASE IF NOT EXISTS `bd_provaprodutos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_provaprodutos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `descricao`) VALUES
(1, 'Laticínio'),
(2, 'Cereal'),
(3, 'Material de Limpeza'),
(4, 'Enlatado'),
(5, 'Hortifruti'),
(6, 'Massa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `quantEstocada` int(11) NOT NULL,
  `unidade` varchar(30) NOT NULL,
  `lote` int(15) NOT NULL,
  `dtValidade` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `descricao`, `idCategoria`, `quantEstocada`, `unidade`, `lote`, `dtValidade`) VALUES
(1, 'Arroz Prato Fino', 2, 250, 'pacote 5kg', 'L23625142362514', '2017-11-22 00:00:00'),
(2, 'Leite Itambé', 1, 500, 'Caixas com 12', 'B14574', '2017-01-05 00:00:00'),
(3, 'Espaguete nº 8', 6, 312, 'pacote 1kg', '258T124', '2018-05-11 00:00:00'),
(4, 'Couve', 5, 150, 'unidades', '-', '2016-11-22 00:00:00'),
(5, 'Vassoura Piaçava Princesinha', 3, 100, 'unidade', 'P147H25', '2020-08-06 00:00:00'),
(6, 'Milho Verde', 4, 280, 'lata 200g', '364781', '2019-04-22 00:00:00'),
(7, 'Palmito Icoaraci', 4, 400, 'lata 500g', '147521', '2018-03-07 00:00:00'),
(8, 'Requeijão Santa Fé', 1, 200, 'pote 250ml', 'LDK223KA', '2017-11-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`) VALUES
(1, 'admin@admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
