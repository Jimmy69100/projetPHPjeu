-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 27 Avril 2015 à 13:07
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
  `ID_barbe` int(11) NOT NULL,
  `couleur_barbe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_barbe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_barbe`),
  KEY `ID_barbe` (`ID_barbe`),
  KEY `ID_barbe_2` (`ID_barbe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `barbe`
--

INSERT INTO `barbe` (`ID_barbe`, `couleur_barbe`, `type`, `image_barbe`) VALUES
(0, 'aucun', 'aucun', 'aucun.png'),
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
  `image_cheveux` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_cheveux` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre_cheveux` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_cheveux`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `cheveux`
--

INSERT INTO `cheveux` (`ID_cheveux`, `image_cheveux`, `couleur_cheveux`, `genre_cheveux`, `type`) VALUES
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
  `couleur_collier` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_collier` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_collier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `collier`
--

INSERT INTO `collier` (`ID_collier`, `couleur_collier`, `type`, `image_collier`) VALUES
(0, 'aucun', 'aucun', 'aucun.png'),
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
  `couleur_corp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_corps` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_corp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `corp`
--

INSERT INTO `corp` (`ID_corp`, `couleur_corp`, `image_corps`) VALUES
(1, 'blanc', 'blanc.png'),
(2, 'noir', 'noir.png');

-- --------------------------------------------------------

--
-- Structure de la table `lunettes`
--

CREATE TABLE IF NOT EXISTS `lunettes` (
  `ID_lunettes` int(5) NOT NULL,
  `couleur_lunettes` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_lunettes` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_lunettes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `lunettes`
--

INSERT INTO `lunettes` (`ID_lunettes`, `couleur_lunettes`, `image_lunettes`) VALUES
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
  KEY `pris` (`pris`),
  KEY `ID_nom` (`ID_nom`),
  KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

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
-- Structure de la table `partie`
--

CREATE TABLE IF NOT EXISTS `partie` (
  `ID_partie` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `partie_finis` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_partie`),
  KEY `ID_partie` (`ID_partie`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Contenu de la table `partie`
--

INSERT INTO `partie` (`ID_partie`, `id_utilisateur`, `partie_finis`) VALUES
(100, 3, 1),
(101, 3, 0),
(102, 3, 0);

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
  `ID_nom` int(11) NOT NULL,
  `ID_partie` int(11) NOT NULL,
  `mystere_j` tinyint(1) NOT NULL DEFAULT '0',
  `mystere_nj` tinyint(1) NOT NULL DEFAULT '0',
  `est_affiche` tinyint(1) NOT NULL DEFAULT '1',
  `est_affiche_nj` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ID_corps` (`ID_corp`),
  KEY `FK_news_ID_cheveux` (`ID_cheveux`),
  KEY `FK_news_ID_collier` (`ID_collier`),
  KEY `FK_news_ID_vetement` (`ID_vetement`),
  KEY `FK_news_ID_lunettes` (`ID_lunettes`),
  KEY `ID_barbe` (`ID_barbe`),
  KEY `ID_partie` (`ID_partie`),
  KEY `ID_nom` (`ID_nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1761 ;

--
-- Contenu de la table `personnage`
--

INSERT INTO `personnage` (`id`, `ID_corp`, `ID_cheveux`, `ID_barbe`, `ID_collier`, `ID_lunettes`, `ID_vetement`, `ID_nom`, `ID_partie`, `mystere_j`, `mystere_nj`, `est_affiche`, `est_affiche_nj`) VALUES
(1689, 1, 5, 0, 0, 1, 6, 34, 100, 0, 0, 1, 0),
(1690, 1, 6, 0, 5, 2, 5, 26, 100, 0, 0, 0, 0),
(1691, 1, 13, 13, 0, 4, 10, 20, 100, 0, 0, 0, 0),
(1692, 1, 13, 11, 0, 3, 8, 17, 100, 0, 0, 0, 0),
(1693, 2, 14, 2, 0, 4, 2, 21, 100, 0, 0, 0, 0),
(1694, 1, 10, 0, 1, 1, 7, 40, 100, 0, 0, 0, 0),
(1695, 2, 16, 3, 0, 1, 12, 12, 100, 0, 0, 0, 0),
(1696, 2, 8, 0, 6, 3, 11, 43, 100, 1, 0, 0, 1),
(1697, 2, 15, 12, 0, 1, 13, 5, 100, 0, 1, 1, 0),
(1698, 1, 16, 13, 0, 1, 14, 18, 100, 0, 0, 0, 0),
(1699, 2, 10, 0, 2, 5, 10, 44, 100, 0, 0, 0, 0),
(1700, 1, 8, 0, 6, 3, 6, 46, 100, 0, 0, 0, 0),
(1701, 2, 2, 0, 1, 3, 9, 28, 100, 0, 0, 0, 0),
(1702, 1, 1, 0, 8, 2, 3, 45, 100, 0, 0, 0, 0),
(1703, 1, 3, 0, 6, 1, 4, 31, 100, 0, 0, 0, 0),
(1704, 2, 4, 0, 2, 4, 7, 30, 100, 0, 0, 0, 0),
(1705, 1, 2, 0, 2, 2, 3, 42, 100, 0, 0, 0, 0),
(1706, 1, 11, 0, 7, 3, 15, 39, 100, 0, 0, 0, 0),
(1707, 1, 9, 0, 1, 3, 3, 35, 100, 0, 0, 0, 0),
(1708, 1, 7, 0, 8, 5, 11, 47, 100, 0, 0, 0, 0),
(1709, 1, 12, 7, 0, 3, 4, 15, 100, 0, 0, 0, 0),
(1710, 1, 13, 11, 0, 3, 2, 14, 100, 0, 0, 0, 0),
(1711, 2, 3, 0, 8, 5, 14, 41, 100, 0, 0, 0, 0),
(1712, 1, 5, 0, 6, 5, 2, 48, 100, 0, 0, 0, 0),
(1713, 2, 7, 0, 7, 1, 3, 46, 101, 0, 0, 1, 1),
(1714, 2, 14, 2, 0, 2, 10, 21, 101, 0, 0, 1, 1),
(1715, 1, 17, 14, 0, 3, 2, 18, 101, 1, 1, 1, 1),
(1716, 1, 18, 2, 0, 4, 14, 6, 101, 0, 0, 1, 1),
(1717, 2, 14, 2, 0, 5, 8, 15, 101, 0, 0, 1, 1),
(1718, 1, 8, 0, 2, 3, 3, 42, 101, 0, 0, 1, 1),
(1719, 2, 16, 11, 0, 3, 4, 14, 101, 0, 0, 1, 1),
(1720, 2, 3, 0, 6, 2, 4, 35, 101, 0, 0, 1, 1),
(1721, 1, 5, 0, 2, 2, 3, 36, 101, 0, 0, 1, 1),
(1722, 1, 2, 0, 2, 4, 7, 44, 101, 0, 0, 1, 1),
(1723, 2, 7, 0, 0, 1, 15, 28, 101, 0, 0, 1, 1),
(1724, 2, 11, 0, 0, 1, 9, 25, 101, 0, 0, 1, 1),
(1725, 2, 8, 0, 5, 3, 9, 45, 101, 0, 0, 1, 1),
(1726, 2, 6, 0, 5, 1, 11, 48, 101, 0, 0, 1, 1),
(1727, 1, 4, 0, 0, 3, 6, 26, 101, 0, 0, 1, 1),
(1728, 2, 7, 0, 0, 4, 4, 34, 101, 0, 0, 1, 1),
(1729, 1, 13, 11, 0, 1, 15, 7, 101, 0, 0, 1, 1),
(1730, 1, 15, 8, 0, 5, 11, 2, 101, 0, 0, 1, 1),
(1731, 2, 5, 0, 7, 2, 2, 38, 101, 0, 0, 1, 1),
(1732, 2, 12, 8, 0, 1, 4, 3, 101, 0, 0, 1, 1),
(1733, 1, 16, 11, 0, 4, 1, 13, 101, 0, 0, 1, 1),
(1734, 1, 2, 0, 3, 2, 11, 32, 101, 0, 0, 1, 1),
(1735, 1, 12, 12, 0, 4, 13, 16, 101, 0, 0, 1, 1),
(1736, 1, 6, 0, 0, 2, 6, 30, 101, 0, 0, 1, 1),
(1737, 1, 14, 6, 0, 4, 12, 11, 102, 0, 0, 1, 1),
(1738, 2, 5, 0, 4, 1, 8, 25, 102, 0, 0, 1, 1),
(1739, 1, 16, 11, 0, 3, 13, 9, 102, 0, 0, 1, 1),
(1740, 1, 8, 0, 8, 1, 14, 31, 102, 0, 0, 1, 1),
(1741, 2, 13, 11, 0, 1, 14, 15, 102, 0, 0, 1, 1),
(1742, 2, 14, 6, 0, 2, 7, 10, 102, 0, 0, 1, 1),
(1743, 1, 5, 0, 2, 4, 9, 45, 102, 0, 0, 1, 1),
(1744, 2, 5, 0, 6, 2, 10, 26, 102, 0, 0, 1, 1),
(1745, 2, 4, 0, 6, 2, 4, 30, 102, 0, 0, 1, 1),
(1746, 1, 2, 0, 3, 4, 7, 35, 102, 0, 0, 1, 1),
(1747, 2, 6, 0, 1, 2, 12, 27, 102, 0, 0, 1, 1),
(1748, 2, 5, 0, 8, 5, 15, 34, 102, 0, 0, 1, 1),
(1749, 2, 12, 4, 0, 2, 7, 14, 102, 0, 0, 1, 1),
(1750, 2, 18, 15, 0, 4, 3, 24, 102, 0, 0, 1, 1),
(1751, 2, 4, 0, 6, 3, 6, 29, 102, 0, 0, 1, 1),
(1752, 2, 7, 0, 2, 3, 13, 46, 102, 0, 0, 1, 1),
(1753, 2, 6, 0, 5, 4, 5, 48, 102, 1, 0, 1, 1),
(1754, 2, 8, 0, 7, 4, 4, 28, 102, 0, 0, 1, 1),
(1755, 1, 4, 0, 7, 2, 12, 43, 102, 0, 0, 1, 1),
(1756, 1, 13, 13, 0, 1, 6, 8, 102, 0, 0, 1, 1),
(1757, 2, 1, 0, 6, 5, 14, 32, 102, 0, 0, 1, 1),
(1758, 1, 10, 0, 0, 2, 7, 42, 102, 0, 1, 1, 1),
(1759, 1, 3, 0, 7, 1, 1, 39, 102, 0, 0, 1, 1),
(1760, 2, 16, 13, 0, 2, 14, 2, 102, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_inscription` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nb_partie_gagnee` int(11) NOT NULL DEFAULT '0',
  `nb_partie_perdu` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `pseudo`, `mail`, `mdp`, `date_inscription`, `nb_partie_gagnee`, `nb_partie_perdu`) VALUES
(3, 'gauthe', 'jimmy', 'admin', 'admin@admin.fr', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1/04/15', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vetement`
--

CREATE TABLE IF NOT EXISTS `vetement` (
  `ID_vetement` int(1) NOT NULL,
  `couleur_vetement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_vetement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_vetement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vetement`
--

INSERT INTO `vetement` (`ID_vetement`, `couleur_vetement`, `type`, `image_vetement`) VALUES
(1, 'bleu', 'normal', 'vetement1.png'),
(2, 'vert', 'normal', 'vetement2.png'),
(3, 'noir', 'normal', 'vetement3.png'),
(4, 'rouge', 'normal', 'vetement4.png'),
(5, 'bleu', 'col-monte', 'vetement5.png'),
(6, 'marron', 'col-monte', 'vetement6.png'),
(7, 'vert', 'col-monte', 'vetement7.png'),
(8, 'rouge', 'col-monte', 'vetement8.png'),
(9, 'marron', 'col-large', 'vetement9.png'),
(10, 'gris', 'cravate', 'vetement10.png'),
(11, 'gris', 'cravate', 'vetement11.png'),
(12, 'gris', 'cravate', 'vetement12.png'),
(13, 'marron', 'cravate', 'vetement13.png'),
(14, 'bleu', 'col-large', 'vetement14.png'),
(15, 'violet', 'col-large', 'vetement15.png');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `FK_news_ID_cheveux` FOREIGN KEY (`ID_cheveux`) REFERENCES `cheveux` (`ID_cheveux`),
  ADD CONSTRAINT `FK_news_ID_collier` FOREIGN KEY (`ID_collier`) REFERENCES `collier` (`ID_collier`),
  ADD CONSTRAINT `FK_news_ID_lunettes` FOREIGN KEY (`ID_lunettes`) REFERENCES `lunettes` (`ID_lunettes`),
  ADD CONSTRAINT `FK_news_ID_vetement` FOREIGN KEY (`ID_vetement`) REFERENCES `vetement` (`ID_vetement`),
  ADD CONSTRAINT `personnage_ibfk_1` FOREIGN KEY (`ID_corp`) REFERENCES `corp` (`ID_corp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personnage_ibfk_2` FOREIGN KEY (`ID_barbe`) REFERENCES `barbe` (`ID_barbe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personnage_ibfk_3` FOREIGN KEY (`ID_partie`) REFERENCES `partie` (`ID_partie`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
