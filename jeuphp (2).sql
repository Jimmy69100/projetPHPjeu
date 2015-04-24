-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 24 Avril 2015 à 20:35
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
-- Structure de la table `barbe`
--

CREATE TABLE IF NOT EXISTS `barbe` (
  `ID_barbe` int(15) NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_barbe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `barbe`
--

INSERT INTO `barbe` (`ID_barbe`, `couleur`, `type`, `image`) VALUES
(1, 'gris', 'sans-moustache', 'barbe1.png'),
(2, 'roux', 'sans-moustache', 'barbe2.png'),
(3, 'blond', 'sans-moustache', 'barbe3.png'),
(4, 'noir', 'normal', 'barbe4.png'),
(5, 'gris', 'normal', 'barbe5.png'),
(6, 'roux', 'normal', 'barbe6.png'),
(7, 'noir', 'sans-moustache', 'barbe7.png'),
(8, 'noir', 'barbiche', 'barbe8.png'),
(9, 'gris', 'barbiche', 'barbe9.png'),
(10, 'roux', 'barbiche', 'barbe10.png'),
(11, 'blond', 'barbiche', 'barbe11.png'),
(12, 'noir', 'moustache', 'barbe12.png'),
(13, 'blond', 'moustache', 'barbe13.png'),
(14, 'gris', 'moustache', 'barbe14.png'),
(15, 'roux', 'moustache', 'barbe15.png');

-- --------------------------------------------------------

--
-- Structure de la table `cheveux`
--

CREATE TABLE IF NOT EXISTS `cheveux` (
  `ID_cheveux` int(18) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_cheveux`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `cheveux`
--

INSERT INTO `cheveux` (`ID_cheveux`, `image`, `couleur`, `genre`, `type`) VALUES
(1, 'cheveux1.png', 'roux', 'femme', 'court'),
(2, 'cheveux2.png', 'gris', 'femme', 'court'),
(3, 'cheveux3.png', 'blond', 'femme', 'court'),
(4, 'cheveux4.png', 'noir', 'femme', 'court'),
(5, 'cheveux5.png', 'noir', 'femme', 'mi-long'),
(6, 'cheveux6.png', 'roux', 'femme', 'mi-long'),
(7, 'cheveux7.png', 'blond', 'femme', 'mi-long'),
(8, 'cheveux8.png', 'noir', 'femme', 'long'),
(9, 'cheveux9.png', 'blond', 'femme', 'long'),
(10, 'cheveux10.png', 'gris', 'femme', 'long'),
(11, 'cheveux11.png', 'roux', 'femme', 'long'),
(12, 'cheveux12.png', 'noir', 'homme', 'cour'),
(13, 'cheveux13.png', 'blond', 'homme', 'cour'),
(14, 'cheveux14.png', 'roux', 'homme', 'cour'),
(15, 'cheveux15.png', 'noir', 'homme', 'calvicie'),
(16, 'cheveux16.png', 'blond', 'homme', 'calvicie'),
(17, 'cheveux17.png', 'gris', 'homme', 'calvicie'),
(18, 'cheveux18.png', 'roux', 'homme', 'calvicie');

-- --------------------------------------------------------

--
-- Structure de la table `collier`
--

CREATE TABLE IF NOT EXISTS `collier` (
  `ID_collier` int(8) NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_collier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collier`
--

INSERT INTO `collier` (`ID_collier`, `couleur`, `type`, `image`) VALUES
(0, 'aucun', 'aucun', ''),
(1, 'bleu', 'long', 'collier1.png'),
(2, 'jaune', 'long', 'collier2.png'),
(3, 'rouge', 'long', 'collier3.png'),
(4, 'gris', 'long', 'collier4.png'),
(5, 'rouge', 'court', 'collier5.png'),
(6, 'bleu', 'court', 'collier6.png'),
(7, 'jaune', 'court', 'collier7.png'),
(8, 'gris', 'court', 'collier8.png');

-- --------------------------------------------------------

--
-- Structure de la table `corp`
--

CREATE TABLE IF NOT EXISTS `corp` (
  `ID_corp` int(2) NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_corp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `corp`
--

INSERT INTO `corp` (`ID_corp`, `couleur`, `image`) VALUES
(1, 'blanc', 'blanc.png'),
(2, 'noir', 'noir.png');

-- --------------------------------------------------------

--
-- Structure de la table `lunettes`
--

CREATE TABLE IF NOT EXISTS `lunettes` (
  `ID_lunettes` int(5) NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_lunettes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `lunettes`
--

INSERT INTO `lunettes` (`ID_lunettes`, `couleur`, `image`) VALUES
(1, 'vert', 'lunette1.png'),
(2, 'violet', 'lunette2.png'),
(3, 'bleu', 'lunette3.png'),
(4, 'noir', 'lunette4.png'),
(5, 'orange', 'lunette5.png');

-- --------------------------------------------------------

--
-- Structure de la table `nom`
--

CREATE TABLE IF NOT EXISTS `nom` (
  `ID_nom` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pris` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_nom`),
  KEY `pris` (`pris`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Contenu de la table `nom`
--

INSERT INTO `nom` (`ID_nom`, `nom`, `genre`, `pris`) VALUES
(1, 'antoine', 'homme', 0),
(2, 'cedric', 'homme', 0),
(3, 'jeremy', 'homme', 0),
(4, 'damien', 'homme', 0),
(5, 'anthony', 'homme', 0),
(6, 'serge', 'homme', 0),
(7, 'robert', 'homme', 0),
(8, 'marc', 'homme', 0),
(9, 'idriss', 'homme', 0),
(10, 'patrick', 'homme', 0),
(11, 'pascal', 'homme', 0),
(12, 'antonin', 'homme', 0),
(13, 'marcel', 'homme', 0),
(14, 'bernard', 'homme', 0),
(15, 'david', 'homme', 0),
(16, 'etienne', 'homme', 0),
(17, 'françois', 'homme', 0),
(18, 'gerald', 'homme', 0),
(19, 'hector', 'homme', 0),
(20, 'ludovic', 'homme', 0),
(21, 'olivier', 'homme', 0),
(22, 'quentin', 'homme', 0),
(23, 'yves', 'homme', 0),
(24, 'pierre', 'homme', 0),
(25, 'yvette', 'femme', 0),
(26, 'anais', 'femme', 0),
(27, 'sophia', 'femme', 0),
(28, 'marilyn', 'femme', 0),
(29, 'murielle', 'femme', 0),
(30, 'esmeralda', 'femme', 0),
(31, 'josianne', 'femme', 0),
(32, 'elise', 'femme', 0),
(33, 'celine', 'femme', 0),
(34, 'cynthia', 'femme', 0),
(35, 'julia', 'femme', 0),
(36, 'samantha', 'femme', 0),
(37, 'sandrine', 'femme', 0),
(38, 'morgane', 'femme', 0),
(39, 'beatrice', 'femme', 0),
(40, 'camille', 'femme', 0),
(41, 'gwen', 'femme', 0),
(42, 'maria', 'femme', 0),
(43, 'nadine', 'femme', 0),
(44, 'lucie', 'femme', 0),
(45, 'olivia', 'femme', 0),
(46, 'tabatha', 'femme', 0),
(47, 'victoria', 'femme', 0),
(48, 'amelia', 'femme', 0);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE IF NOT EXISTS `personnage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_corp` int(11) NOT NULL,
  `ID_cheveux` int(11) NOT NULL,
  `ID_barbe` int(11) DEFAULT NULL,
  `ID_collier` int(11) DEFAULT NULL,
  `ID_lunettes` int(11) DEFAULT NULL,
  `ID_vetement` int(11) NOT NULL,
  `Id_nom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_corps` (`ID_corp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `vetement`
--

CREATE TABLE IF NOT EXISTS `vetement` (
  `ID_vetement` int(1) NOT NULL,
  `couleur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_vetement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vetement`
--

INSERT INTO `vetement` (`ID_vetement`, `couleur`, `type`, `image`) VALUES
(1, 'bleu', 'normal', 'vetement1.png'),
(2, 'vert', 'normal', 'vetement2.png'),
(3, 'noir', 'normal', 'vetement3.png'),
(4, 'rouge', 'normal', 'vetement4.png'),
(5, 'bleu', 'col-monte', 'vetement5.png'),
(6, 'marron', 'col-monte', 'vetement6.png'),
(7, 'vert', 'col-monte', 'vetement7.png'),
(8, 'rouge', 'col-monte', 'vetement8.png'),
(9, 'marron', 'col-large', 'vetement9.png'),
(10, 'bleu', 'cravate', 'vetement10.png'),
(11, 'vert', 'cravate', 'vetement11.png'),
(12, 'rouge', 'cravate', 'vetement12.png'),
(13, 'violet', 'cravate', 'vetement13.png'),
(14, 'bleu', 'col-large', 'vetement14.png'),
(15, 'violet', 'col-large', 'vetement15.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
