-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 22-Maio-2019 às 17:31
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
-- Database: `cake_teste`
--
CREATE DATABASE IF NOT EXISTS `cake_teste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `cake_teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id`, `nome`, `created`, `modified`) VALUES
(4, 'Autor Teste', '2019-05-22 17:00:25', '2019-05-22 17:00:25'),
(6, 'Sérgio Mallandro', '2019-05-22 17:17:28', '2019-05-22 17:17:28'),
(7, 'José da Silva', '2019-05-22 17:17:35', '2019-05-22 17:17:35'),
(8, 'Pedro da Regulagem', '2019-05-22 17:19:01', '2019-05-22 17:19:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores_livros`
--

DROP TABLE IF EXISTS `autores_livros`;
CREATE TABLE IF NOT EXISTS `autores_livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autore_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Autore` (`autore_id`),
  KEY `FK_Livro` (`livro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autores_livros`
--

INSERT INTO `autores_livros` (`id`, `autore_id`, `livro_id`, `created`, `modified`) VALUES
(2, 6, 3, '2019-05-22 17:17:51', '2019-05-22 17:17:51'),
(4, 8, 3, '2019-05-22 17:19:12', '2019-05-22 17:19:12'),
(5, 4, 3, '2019-05-22 17:21:22', '2019-05-22 17:21:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `created`, `modified`) VALUES
(3, 'Teste', '2019-05-22 17:00:16', '2019-05-22 17:21:22');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autores_livros`
--
ALTER TABLE `autores_livros`
  ADD CONSTRAINT `FK_Autore` FOREIGN KEY (`autore_id`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `FK_Livro` FOREIGN KEY (`livro_id`) REFERENCES `livros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
