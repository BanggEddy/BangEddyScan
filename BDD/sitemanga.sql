-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 jan. 2023 à 11:07
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sitemanga`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `mdp`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE latin1_bin NOT NULL,
  `photo` varchar(510) COLLATE latin1_bin NOT NULL,
  `note` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `eprn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `yn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `lien` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Structure de la table `scan`
--

DROP TABLE IF EXISTS `scan`;
CREATE TABLE IF NOT EXISTS `scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE latin1_bin NOT NULL,
  `photo` varchar(510) COLLATE latin1_bin NOT NULL,
  `note` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `eprn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `yn` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `lien` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
