-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Avril 2015 à 02:02
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
  `type_cheveux` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_cheveux`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `cheveux`
--

INSERT INTO `cheveux` (`ID_cheveux`, `image_cheveux`, `couleur_cheveux`, `genre_cheveux`, `type_cheveux`) VALUES
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
(12, 'cheveux12.png', 'noir', 'homme', 'court'),
(13, 'cheveux13.png', 'blond', 'homme', 'court'),
(14, 'cheveux14.png', 'roux', 'homme', 'court'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=130 ;

--
-- Contenu de la table `partie`
--

INSERT INTO `partie` (`ID_partie`, `id_utilisateur`, `partie_finis`) VALUES
(127, 12, 0),
(128, 12, 0),
(129, 3, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2409 ;

--
-- Contenu de la table `personnage`
--

INSERT INTO `personnage` (`id`, `ID_corp`, `ID_cheveux`, `ID_barbe`, `ID_collier`, `ID_lunettes`, `ID_vetement`, `ID_nom`, `ID_partie`, `mystere_j`, `mystere_nj`, `est_affiche`, `est_affiche_nj`) VALUES
(2337, 1, 1, 0, 0, 5, 6, 33, 127, 0, 1, 1, 1),
(2338, 1, 3, 0, 2, 3, 11, 39, 127, 0, 0, 1, 1),
(2339, 2, 10, 0, 2, 1, 13, 48, 127, 0, 0, 1, 1),
(2340, 1, 12, 8, 0, 1, 14, 21, 127, 0, 0, 1, 1),
(2341, 2, 1, 0, 2, 1, 1, 37, 127, 0, 0, 1, 1),
(2342, 2, 10, 0, 7, 4, 3, 38, 127, 0, 0, 1, 1),
(2343, 2, 17, 9, 0, 5, 1, 1, 127, 0, 0, 1, 1),
(2344, 1, 4, 0, 5, 1, 5, 45, 127, 0, 0, 1, 1),
(2345, 2, 5, 0, 6, 1, 9, 36, 127, 0, 0, 1, 1),
(2346, 1, 18, 6, 0, 3, 11, 4, 127, 0, 0, 1, 1),
(2347, 1, 6, 0, 7, 1, 15, 34, 127, 0, 0, 1, 1),
(2348, 1, 13, 3, 0, 4, 14, 13, 127, 0, 0, 1, 1),
(2349, 1, 11, 0, 2, 3, 14, 40, 127, 0, 0, 1, 1),
(2350, 1, 12, 4, 0, 2, 5, 2, 127, 0, 0, 1, 1),
(2351, 2, 17, 1, 0, 3, 2, 23, 127, 0, 0, 1, 1),
(2352, 1, 17, 1, 0, 3, 10, 3, 127, 1, 0, 1, 1),
(2353, 1, 14, 10, 0, 1, 10, 24, 127, 0, 0, 1, 1),
(2354, 2, 16, 11, 0, 3, 12, 8, 127, 0, 0, 1, 1),
(2355, 1, 15, 7, 0, 4, 2, 18, 127, 0, 0, 1, 1),
(2356, 1, 13, 3, 0, 2, 13, 11, 127, 0, 0, 1, 1),
(2357, 2, 17, 1, 0, 1, 13, 10, 127, 0, 0, 1, 1),
(2358, 1, 5, 0, 2, 1, 15, 35, 127, 0, 0, 1, 1),
(2359, 2, 8, 0, 0, 5, 12, 42, 127, 0, 0, 1, 1),
(2360, 1, 14, 2, 0, 5, 5, 7, 127, 0, 0, 1, 1),
(2361, 1, 17, 14, 0, 2, 15, 19, 128, 0, 0, 1, 1),
(2362, 1, 15, 8, 0, 4, 4, 12, 128, 0, 0, 0, 1),
(2363, 1, 12, 12, 0, 1, 4, 13, 128, 0, 0, 0, 1),
(2364, 1, 6, 0, 3, 5, 14, 36, 128, 0, 0, 1, 1),
(2365, 1, 15, 4, 0, 5, 6, 24, 128, 0, 0, 0, 1),
(2366, 1, 18, 15, 0, 4, 11, 15, 128, 0, 0, 1, 1),
(2367, 1, 5, 0, 3, 2, 6, 25, 128, 0, 0, 0, 1),
(2368, 2, 5, 0, 5, 1, 5, 46, 128, 0, 0, 0, 1),
(2369, 1, 15, 8, 0, 3, 2, 16, 128, 0, 0, 0, 1),
(2370, 1, 2, 0, 5, 4, 13, 39, 128, 0, 1, 1, 1),
(2371, 2, 11, 0, 3, 4, 15, 44, 128, 0, 0, 1, 1),
(2372, 1, 17, 14, 0, 4, 8, 10, 128, 0, 0, 1, 1),
(2373, 1, 5, 0, 8, 3, 15, 35, 128, 0, 0, 0, 1),
(2374, 2, 13, 3, 0, 4, 12, 20, 128, 0, 0, 1, 1),
(2375, 1, 3, 0, 8, 2, 7, 34, 128, 0, 0, 1, 1),
(2376, 1, 9, 0, 1, 1, 2, 48, 128, 0, 0, 1, 1),
(2377, 1, 1, 0, 8, 2, 11, 37, 128, 0, 0, 1, 1),
(2378, 2, 13, 13, 0, 2, 3, 2, 128, 0, 0, 1, 1),
(2379, 2, 18, 15, 0, 3, 9, 7, 128, 0, 0, 1, 1),
(2380, 1, 11, 0, 5, 1, 11, 38, 128, 0, 0, 1, 1),
(2381, 1, 15, 4, 0, 4, 13, 11, 128, 0, 0, 0, 1),
(2382, 1, 10, 0, 1, 1, 1, 43, 128, 0, 0, 1, 1),
(2383, 2, 6, 0, 3, 5, 1, 30, 128, 0, 0, 1, 1),
(2384, 1, 5, 0, 4, 3, 2, 40, 128, 1, 0, 0, 1),
(2385, 2, 8, 0, 6, 3, 13, 28, 129, 0, 0, 1, 1),
(2386, 2, 9, 0, 7, 1, 2, 34, 129, 0, 0, 0, 1),
(2387, 1, 6, 0, 8, 1, 4, 26, 129, 0, 0, 0, 1),
(2388, 1, 17, 14, 0, 1, 14, 24, 129, 0, 0, 1, 0),
(2389, 2, 14, 6, 0, 2, 10, 19, 129, 0, 0, 1, 1),
(2390, 1, 17, 1, 0, 2, 9, 17, 129, 0, 0, 1, 0),
(2391, 1, 9, 0, 7, 5, 15, 29, 129, 0, 0, 1, 0),
(2392, 1, 13, 3, 0, 1, 13, 23, 129, 0, 0, 1, 1),
(2393, 2, 2, 0, 1, 2, 13, 37, 129, 0, 0, 1, 1),
(2394, 1, 4, 0, 3, 1, 9, 46, 129, 0, 0, 1, 0),
(2395, 1, 13, 11, 0, 3, 10, 16, 129, 0, 0, 1, 1),
(2396, 1, 4, 0, 4, 2, 1, 39, 129, 0, 0, 0, 1),
(2397, 2, 14, 2, 0, 3, 15, 4, 129, 0, 0, 1, 0),
(2398, 1, 8, 0, 5, 5, 13, 48, 129, 0, 0, 1, 1),
(2399, 1, 7, 0, 8, 1, 13, 35, 129, 0, 0, 1, 1),
(2400, 2, 1, 0, 0, 2, 11, 30, 129, 0, 0, 1, 1),
(2401, 1, 16, 11, 0, 1, 12, 20, 129, 0, 0, 1, 1),
(2402, 1, 1, 0, 1, 2, 4, 47, 129, 0, 0, 0, 1),
(2403, 2, 5, 0, 0, 3, 10, 31, 129, 0, 0, 1, 1),
(2404, 1, 4, 0, 8, 4, 13, 33, 129, 0, 0, 1, 1),
(2405, 2, 10, 0, 2, 5, 12, 32, 129, 0, 1, 1, 1),
(2406, 2, 4, 0, 7, 3, 5, 36, 129, 1, 0, 1, 1),
(2407, 2, 8, 0, 5, 2, 2, 40, 129, 0, 0, 0, 1),
(2408, 2, 14, 15, 0, 4, 7, 13, 129, 0, 0, 1, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `pseudo`, `mail`, `mdp`, `date_inscription`, `nb_partie_gagnee`, `nb_partie_perdu`) VALUES
(3, 'gauthe', 'jimmy', 'admin', 'admin@admin.fr', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1/04/15', 3, 3),
(12, 'test', 'test', 'test', 'test@test.fr', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '28/04/15', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vetement`
--

CREATE TABLE IF NOT EXISTS `vetement` (
  `ID_vetement` int(1) NOT NULL,
  `couleur_vetement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_vetement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_vetement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_vetement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vetement`
--

INSERT INTO `vetement` (`ID_vetement`, `couleur_vetement`, `type_vetement`, `image_vetement`) VALUES
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
