-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 02 Octobre 2017 à 16:26
-- Version du serveur: 5.5.37
-- Version de PHP: 5.6.19-1~dotdeb+7.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Workshop2017`
--

-- --------------------------------------------------------

--
-- Structure de la table `Besoins`
--

CREATE TABLE IF NOT EXISTS `Besoins` (
  `date` date NOT NULL,
  `client` varchar(40) NOT NULL,
  `contactName` varchar(40) NOT NULL,
  `title` varchar(20) NOT NULL,
  `fullDescription` text NOT NULL,
  `3MainKeySuccessFactors` text NOT NULL,
  `durationMonth` int(2) NOT NULL,
  `durationDaysAWeek` int(1) NOT NULL,
  `startAtTheLatest` date NOT NULL,
  `location` text NOT NULL,
  `rate` float NOT NULL,
  `descriptionFile` text NOT NULL,
  `status` varchar(4) NOT NULL,
	`derniereModif` timestamp NOT NULL DEFAULT CURRENT-TIMESTAMP,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Gere`
--

CREATE TABLE IF NOT EXISTS `Gere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(40) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE IF NOT EXISTS `Utilisateur` (
  `mail` varchar(40) NOT NULL DEFAULT '*@gfi.fr',
  `mdp` varchar(20) NOT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
