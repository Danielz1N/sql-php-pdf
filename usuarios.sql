-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jun-2018 às 20:29
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `senha` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `situacao` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`

--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `situacao`) VALUES
(1, 'João da Silva', 'joao123@gmail.com', 'Cadastrado', 'ZWFxIMor'),
(2, 'Francisco Assunção', 'fassuncao@gmail.com', 'Aguardando Liberação', 'Mf3ieRKH'),
(4, 'Luiza Franco', 'luiza32@gmail.com', 'Cadastrado', '8YngnHxl'),
(5, 'Fernando Lima', 'fernandol@hotmail.com', 'Aguardando Liberação', 'gjqjSiXl'),
(6, 'Gilberto Oliveira', 'gilolive@gmail.com', 'Cadastrado', 'TktYuMrT'),
(7, 'Guilherme Azevedo', 'guilherfazen@gmail.com', 'Aguardando Liberação', 'p1GPQc9Y'),
(8, 'Simone Karla Costa da Silva', 'silvkarla@gmail.com', 'Cadastrado', 'P4NFa9z8'),
(9, 'Matheus André da Silva', 'mandre@gmail.com', 'Cadastrado', 'IyCxa8Kh'),
(10, 'Ruy Arruda Cassiano', 'ruycass@gmail.com', 'Cadastrado', 'ZocDMylU');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
