-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 19 Janvier 2020 à 13:37
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `agence`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cin` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `cin`, `nom`, `prenom`, `tel`) VALUES
(34, 980555, '', '', ''),
(36, 0, 'lkjlk', 'lkjlk', 'lkj'),
(37, 0, 'kjhhhhhhhhhhh', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idC` int(11) NOT NULL,
  `idV` int(11) NOT NULL,
  `nbrjour` int(11) NOT NULL,
  `datelocation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id`, `idC`, `idV`, `nbrjour`, `datelocation`) VALUES
(11, 3, 2, 2, '2020-01-08'),
(22, 4, 1, 1, '2019-06-12');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(20) NOT NULL,
  `marque` text NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prixJr` float NOT NULL,
  `age` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`id`, `matricule`, `marque`, `modele`, `prixJr`, `age`) VALUES
(1, '165 TN 7745', 'Symbole', 'Essence', 65, ''),
(2, '168 TN 4478', 'KIA', 'Essence', 70, ''),
(3, '170 TN 1234 ', 'GOLF6', 'Diesel', 80, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
