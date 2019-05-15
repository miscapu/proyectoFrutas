-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 14-Maio-2019 às 00:14
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comercio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `idcategory` varchar(120) DEFAULT NULL,
  `idUnity` varchar(120) DEFAULT NULL,
  `photo` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `personalDocument` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `socialNetwork` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `photo` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personalDocument` (`personalDocument`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(120) DEFAULT NULL,
  `lastname` varchar(120) DEFAULT NULL,
  `personalDocument` int(11) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `socialNetwork` varchar(120) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `photo` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personalDocument` (`personalDocument`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEmployed` int(11) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmployed` (`idEmployed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
