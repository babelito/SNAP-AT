-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 04 Octobre 2017 à 11:28
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `derniereModif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `Besoins`
--

INSERT INTO `Besoins` (`id`, `date`, `client`, `contactName`, `title`, `fullDescription`, `3MainKeySuccessFactors`, `durationMonth`, `durationDaysAWeek`, `startAtTheLatest`, `location`, `rate`, `descriptionFile`, `status`, `derniereModif`) VALUES
(1, '1999-12-25', 'Microsoft', 'Mr Bill Gates', 'Assistance', 'Moyens mis en oeuvre pour faire débuguer Windows', 'Convivial, simple, stable', 24, 7, '2017-12-26', 'Redmond', 25000000, 'debug.pdf', 'Fail', '2017-10-04 07:36:32'),
(2, '2012-12-12', 'DDE', 'Dédé', 'Devis intervention', 'Devis pour l''intervention sur le réseau', 'Assiduité, Envie, Flemme', 3, 2, '2012-12-13', 'Montpellier', 250000, 'pret_DDE.pdf', 'open', '2017-10-04 07:36:32'),
(3, '2015-09-28', 'Crédit Agricole', 'Mr Sacha Touille', 'Financement campagne', 'Financement de la campagne publicitaire', 'Responsabilité, professionnalisme, confiance', 6, 1, '2015-09-29', 'Paris VI', 500000, 'financement_CA.pdf', 'open', '2017-10-04 07:36:32'),
(4, '2018-10-10', 'AXA', 'Mme Charlotte Egaronne', 'Installation', 'Ensemble des installations effectuées', 'Assurance, rapidité, efficacité', 1, 3, '2017-12-20', 'Paris XV', 23500, 'installation_axa.pdf', 'Win', '2017-10-04 07:36:32'),
(5, '2017-10-02', 'EPSI', 'Mme Fournol', 'Workshop', 'Demande à des étudiants de programmer une application interne GRATUITEMENT pour GFI', 'Rapidité, compétence, professionnalisme', 1, 22, '2017-10-07', 'Montpellier', 0, 'EPSI.pdf', 'open', '2017-10-04 07:36:32');

-- --------------------------------------------------------

--
-- Structure de la table `Clients`
--

CREATE TABLE IF NOT EXISTS `Clients` (
  `raisonSociale` varchar(40) NOT NULL,
  UNIQUE KEY `raisonSociale` (`raisonSociale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Clients`
--

INSERT INTO `Clients` (`raisonSociale`) VALUES
('AXA'),
('Crédit Agricole'),
('DDE'),
('EPSI'),
('Microsoft');

-- --------------------------------------------------------

--
-- Structure de la table `Gere`
--

CREATE TABLE IF NOT EXISTS `Gere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(40) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `Gere`
--

INSERT INTO `Gere` (`id`, `mail`, `title`) VALUES
(1, 'abitbol@gfi.fr', 'Devis intervention'),
(2, 'abitbol@gfi.fr', 'Assistance'),
(3, 'abitbol@gfi.fr', 'Workshop'),
(4, 'joel@gfi.fr', 'Workshop'),
(5, 'jacques@gfi.fr', 'Workshop'),
(6, 'jacques@gfi.fr', 'Financement campagne'),
(7, 'dave@gfi.fr', 'Financement campagne'),
(8, 'peter@gfi.fr', 'Devis intervention'),
(9, 'steven@gfi.fr', 'Installation'),
(10, 'peter@gfi.fr', 'Installation');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE IF NOT EXISTS `Utilisateur` (
  `mail` varchar(40) NOT NULL DEFAULT '*@gfi.fr',
  `mdp` varchar(20) NOT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`mail`, `mdp`) VALUES
('abitbol@gfi.fr', 'abitbol'),
('dave@gfi.fr', 'dave'),
('jacques@gfi.fr', 'jacques'),
('joel@gfi.fr', 'joel'),
('peter@gfi.fr', 'peter'),
('steven@gfi.fr', 'steven');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
