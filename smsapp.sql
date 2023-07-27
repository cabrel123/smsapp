-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 27 juil. 2023 à 15:19
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `smsapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `access_data`
--

DROP TABLE IF EXISTS `access_data`;
CREATE TABLE IF NOT EXISTS `access_data` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountId` int(11) UNSIGNED NOT NULL,
  `accessToken` varchar(32) DEFAULT '',
  `clientId` int(11) UNSIGNED DEFAULT '0',
  `createAt` int(10) UNSIGNED DEFAULT '0',
  `removeAt` int(10) UNSIGNED DEFAULT '0',
  `u_agent` varchar(300) DEFAULT '',
  `ip_addr` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `access_data`
--

INSERT INTO `access_data` (`id`, `accountId`, `accessToken`, `clientId`, `createAt`, `removeAt`, `u_agent`, `ip_addr`) VALUES
(1, 1, '044c0fcf6bfa360e4187329ee902235b', 0, 1690463265, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(2, 1, '89d6502619a469fd61e4bb4a5f38d194', 0, 1690463344, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(3, 1, '886b522c72e2ad30be1b869f6f74da54', 0, 1690463384, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(4, 1, '43479e3ce9fffe5d54baa2875f30379f', 0, 1690463479, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(5, 1, 'f9a8870c4af92f75cabf66ef84db6d13', 0, 1690463522, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(6, 1, 'bdd9bf47126daee329d9d3fe1b6e68ec', 0, 1690463556, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(7, 1, '64d74500ea1d2e6f8f08b2fcc2d0cad3', 0, 1690463698, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(8, 1, '858d8a45830a6f43bd68a94100483553', 0, 1690463764, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(9, 1, '079170fd171b393bd34dab0a285a5ba3', 0, 1690463799, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(10, 1, '215be4b55d8d6986479d2a9e1453d823', 0, 1690463812, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(11, 1, 'd73cd61bc38898641b7dc577d3139d83', 0, 1690463983, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(12, 1, '86f26fa85a4485892bbbcde994a76666', 0, 1690464018, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(13, 1, 'c84b4175621c102074a24e4fcee70b42', 0, 1690464033, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1'),
(14, 1, '54fc3bcb961ac25ddbb2b7394447f079', 0, 1690464046, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '127.0.0.1');

-- --------------------------------------------------------

--
-- Structure de la table `accounting`
--

DROP TABLE IF EXISTS `accounting`;
CREATE TABLE IF NOT EXISTS `accounting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) UNSIGNED NOT NULL COMMENT 'identifiant de l''utilisateur pour qui la transaction est faite',
  `credit` double(10,2) NOT NULL DEFAULT '0.00',
  `debit` double(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(5) NOT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'statut de la transaction',
  `transaction_id` varchar(40) NOT NULL DEFAULT '0',
  `addinfo` text COMMENT 'commentaire de la transaction',
  `trdate` datetime DEFAULT NULL,
  `ip_addr` varchar(50) DEFAULT NULL COMMENT 'adresse ip du client',
  `u_agent` varchar(255) DEFAULT NULL COMMENT 'informations sur le browser du client',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT 'intitulé de la catégorie',
  `description` text COMMENT 'description de la catégorie',
  `removeAt` int(11) NOT NULL DEFAULT '0',
  `removeBy` int(11) NOT NULL DEFAULT '0' COMMENT 'identifiant de l''utilisateur qui supprime la catégorie',
  `ip_addr` varchar(50) DEFAULT NULL COMMENT 'ip du client',
  `u_agent` varchar(255) DEFAULT NULL COMMENT 'informations sur le browser du client',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `removeAt`, `removeBy`, `ip_addr`, `u_agent`) VALUES
(1, 'TPE tech', 'TPE tech', 0, 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36'),
(4, 'TPE commercial', 'TPE commercial', 0, 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Structure de la table `mycontact`
--

DROP TABLE IF EXISTS `mycontact`;
CREATE TABLE IF NOT EXISTS `mycontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FromUserId` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `fullname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `entreprise` varchar(25) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `removeAt` int(11) NOT NULL DEFAULT '0' COMMENT 'flag de suppression',
  `removeBy` int(11) NOT NULL DEFAULT '0' COMMENT 'identifiant de l''utilisateur qui supprime',
  `createAt` datetime DEFAULT NULL,
  `u_agent` varchar(255) DEFAULT NULL COMMENT 'adresse ip du client',
  `ip_addr` varchar(15) DEFAULT NULL COMMENT 'informations sur le browser du client',
  PRIMARY KEY (`id`),
  KEY `FromUserId` (`FromUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usercode` int(11) NOT NULL DEFAULT '0',
  `access_level` int(10) UNSIGNED DEFAULT '0',
  `state` int(10) UNSIGNED DEFAULT '0',
  `firstname` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `surname` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fullname` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `passw` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `login` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `lang` char(10) CHARACTER SET utf8 DEFAULT 'en',
  `bYear` smallint(6) UNSIGNED DEFAULT '2000',
  `bMonth` smallint(6) UNSIGNED DEFAULT '0',
  `bDay` smallint(6) UNSIGNED DEFAULT '1',
  `status` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'adm:admin;de:studies director;sde:secretary director of studies;ss:simple secretary',
  `country_id` int(10) UNSIGNED DEFAULT '0',
  `state_id` int(10) NOT NULL DEFAULT '0',
  `city_id` int(10) UNSIGNED DEFAULT '0',
  `lat` float(10,6) DEFAULT '0.000000',
  `lng` float(10,6) DEFAULT '0.000000',
  `phone` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `verify` smallint(6) UNSIGNED DEFAULT '0',
  `removed` smallint(6) UNSIGNED DEFAULT '0',
  `regtime` datetime DEFAULT NULL,
  `lasttime` int(10) UNSIGNED DEFAULT '0',
  `sex` smallint(6) UNSIGNED DEFAULT '0',
  `last_authorize` int(10) UNSIGNED DEFAULT '0',
  `ip_addr` char(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `lowPhotoUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `originPhotoUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `normalPhotoUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `bigPhotoUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `originCoverUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `normalCoverUrl` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `coverPosition` varchar(255) CHARACTER SET utf8 DEFAULT '0px 0px',
  `suid` varchar(16) CHARACTER SET utf8 NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastip` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `logged` int(11) NOT NULL DEFAULT '0',
  `remove` int(11) NOT NULL DEFAULT '0',
  `removeBy` tinyint(4) NOT NULL DEFAULT '0',
  `modifyAt` datetime DEFAULT NULL,
  `id_company` int(11) NOT NULL DEFAULT '0',
  `placeofbirth` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `religion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `denomination` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cni` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addBy` int(11) NOT NULL DEFAULT '0',
  `twofactor_actived` tinyint(4) NOT NULL DEFAULT '0',
  `otptype` tinyint(4) NOT NULL DEFAULT '0',
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `usercode`, `access_level`, `state`, `firstname`, `lastname`, `surname`, `fullname`, `username`, `salt`, `passw`, `login`, `password`, `email`, `lang`, `bYear`, `bMonth`, `bDay`, `status`, `type`, `country_id`, `state_id`, `city_id`, `lat`, `lng`, `phone`, `verify`, `removed`, `regtime`, `lasttime`, `sex`, `last_authorize`, `ip_addr`, `lowPhotoUrl`, `originPhotoUrl`, `normalPhotoUrl`, `bigPhotoUrl`, `originCoverUrl`, `normalCoverUrl`, `coverPosition`, `suid`, `lastlogin`, `lastip`, `logged`, `remove`, `removeBy`, `modifyAt`, `id_company`, `placeofbirth`, `religion`, `denomination`, `nationality`, `address`, `cni`, `occupation`, `addBy`, `twofactor_actived`, `otptype`, `secret`) VALUES
(1, 256932, 0, 0, 'admin', '', 'admin', 'admin', NULL, '=mb', 'f91509f4f3467f83553536a6141c9dea', 'admin2020', NULL, 'admin@admin.cm', 'en', 2000, 0, 1, '', 'adm', 0, 0, 0, 0.000000, 0.000000, '656908382', 0, 0, '2017-11-05 00:00:00', 0, 0, 1690464046, '', 'undefined', '', '', '', '', '', '0px 0px', '', '2023-07-27 00:00:00', '', 1, 0, 0, '2017-11-15 12:26:42', 0, 'douala', '', '', '', 'mimboman', '', '', 0, 0, 0, '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `access_data`
--
ALTER TABLE `access_data`
  ADD CONSTRAINT `access_data_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `accounting`
--
ALTER TABLE `accounting`
  ADD CONSTRAINT `accounting_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `mycontact`
--
ALTER TABLE `mycontact`
  ADD CONSTRAINT `mycontact_ibfk_1` FOREIGN KEY (`FromUserId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
