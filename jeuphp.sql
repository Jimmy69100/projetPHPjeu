-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 03 Avril 2015 à 16:53
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jeuphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `cheveux`
--

CREATE TABLE IF NOT EXISTS `cheveux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `cheveux`
--

INSERT INTO `cheveux` (`id`, `image`, `couleur`, `genre`) VALUES
(1, 'cheveux1.png', 'roux', 'femme'),
(2, 'cheveux2.png', 'brun', 'femme'),
(3, 'cheveux3.png', 'blond', 'femme'),
(4, 'cheveux4.png', 'brun', 'homme'),
(5, 'cheveux5.png', 'blond', 'homme'),
(6, 'cheveux6.png', 'roux', 'homme');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_inscription` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `pseudo`, `mail`, `mdp`, `date_inscription`) VALUES
(3, 'gauthe', 'jimmy', 'admin', 'admin@admin.gmail', '04d98d2819faf945261d3b827ba4c12a65c36405', '1/04/15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
