-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 04 fév. 2024 à 11:44
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pdvdbv3`
--

-- --------------------------------------------------------

--
-- Structure de la table `cadeaux`
--

CREATE TABLE `cadeaux` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cadeaux`
--

INSERT INTO `cadeaux` (`id`, `title`, `photo`, `points`) VALUES
(2, 'Television 32 pouce', '/uploads/1670509263352--design-small.jpg', 60),
(3, 'Laptop', '/uploads/1670509277379--laptop-under-500-2048px-acer-1.jpg', 100),
(4, 'Omra (deux personnes)', '/uploads/1670509284545--344e131d6c359ad1fcbd876b33956362_M.jpg', 200),
(5, 'Moto', '/uploads/1670509495553--IC5YUWU7NFH5ZGZY7X2YTLN2WA.jpg', 500),
(7, 'fsdfsdfsdf', '/uploads/1704966542854--tÃ©lÃ©chargement.png', 20);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `phone`, `address`) VALUES
(1, 'LAZHARI', 'ZAKARIA', '0659432010', 'Cite 1680'),
(5, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 5200'),
(6, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(7, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(8, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(9, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(10, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(11, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(12, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(13, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(14, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(15, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(16, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(17, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(18, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(19, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(20, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(21, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(22, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(23, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(24, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(25, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(26, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(27, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(28, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(29, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(30, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(31, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(32, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(33, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(34, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(35, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(36, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(37, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(38, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(39, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(40, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(41, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(42, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(43, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(44, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(45, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(46, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(47, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(48, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(49, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(50, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(51, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(52, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(53, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(54, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(55, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(56, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(57, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(58, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(59, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(60, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(61, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(62, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(63, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(64, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(65, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(66, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(67, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(68, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(69, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(70, 'test', 'test', 'Empty', 'Empty'),
(71, 'test', 'test', 'Empty', 'Empty'),
(72, 'testo', 'test', 'Empty', 'Empty'),
(73, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(74, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(75, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(76, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(77, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(78, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(79, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(80, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(81, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(82, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(83, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(84, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(85, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(86, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(87, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(88, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(89, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(90, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(91, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(92, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(93, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(94, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(95, 'test', 'test', '0123456789', 'alger'),
(96, 'test', 'test', '0123456789', 'alger'),
(97, 'test', 'test', '0123456789', 'alger'),
(98, 'test', 'test', '0123456789', 'alger'),
(99, 'test', 'test', '0123456789', 'alger'),
(100, 'test', 'test', '0123456789', 'alger'),
(101, 'test', 'test', '0123456789', 'test'),
(102, 'test', 'test', '0123456789', 'test'),
(103, 'test', 'test', '0123456789', 'alger'),
(104, 'test', 'test', '0123456789', 'test'),
(105, 'test', 'test', '0123456789', 'alger'),
(106, 'test', 'test', '0123456789', 'alger'),
(107, 'azer', 'azer', '0555555555', 'addresse');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `Pdv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `number`, `date`, `status_id`, `Pdv_id`) VALUES
(47, '891718', '2022-12-13', 1, 1),
(48, '943137', '2022-12-13', 1, 1),
(49, '945817', '2022-12-13', 1, 1),
(50, '544897', '2022-12-13', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commandestatus`
--

CREATE TABLE `commandestatus` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandestatus`
--

INSERT INTO `commandestatus` (`id`, `status`) VALUES
(1, 'En attente'),
(2, 'En traitement'),
(3, 'En préparation'),
(4, 'Prêt à livrer'),
(5, 'En cours de livraison'),
(6, 'livré'),
(7, 'reçu'),
(8, 'Refusé'),
(9, 'Annulé');

-- --------------------------------------------------------

--
-- Structure de la table `commande_has_product`
--

CREATE TABLE `commande_has_product` (
  `commande_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `previous_points` int(11) DEFAULT NULL,
  `current_points` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `validation_date` date DEFAULT NULL,
  `pdv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gain`
--

INSERT INTO `gain` (`id`, `title`, `points`, `previous_points`, `current_points`, `status`, `date`, `validation_date`, `pdv_id`) VALUES
(1, 'Moto', 500, NULL, NULL, 'Commandé', '2024-01-09', NULL, 10),
(2, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-16', NULL, 25),
(3, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25),
(4, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25),
(5, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25),
(6, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25),
(7, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25),
(8, 'Television 32 pouce', 60, NULL, NULL, 'Commandé', '2024-01-21', NULL, 25);

-- --------------------------------------------------------

--
-- Structure de la table `pdv`
--

CREATE TABLE `pdv` (
  `id` int(11) NOT NULL,
  `pdvname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `Daira` varchar(100) DEFAULT NULL,
  `wilaya` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `rc` varchar(255) DEFAULT NULL,
  `pdvstatus_id` int(11) NOT NULL,
  `pdvgrade_id` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `registre_commerce` varchar(500) NOT NULL,
  `region` varchar(50) NOT NULL DEFAULT '',
  `date_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pdv`
--

INSERT INTO `pdv` (`id`, `pdvname`, `address`, `contactname`, `phone`, `location`, `commune`, `Daira`, `wilaya`, `points`, `password`, `rc`, `pdvstatus_id`, `pdvgrade_id`, `user_id`, `registre_commerce`, `region`, `date_naissance`) VALUES
(1, 'Badi phone fff', 'Cite 580 logement', 'didou djamel', '0666666666', 'www.streamsystem.com', 'Ouled Chebel', 'Birtouta', 'Alger', 100, '$2b$10$5Jd34Q0aWtlOxBBloi4E0OWCbmILp9gFMncGnLFx/YkiqklgMzhQC', NULL, 1, 1, 2, '', 'centre', NULL),
(2, 'amine', 'Cite 420', 'BOUKHALFA AMINE', '0556369874', 'https://www.google.com/', 'Souhane', 'Larbaa', 'Blida', 100, '$2b$10$1qZRZmc8ms1yWuSEf.LD1eL9wOMrFM6N4HFLqNc/HtQUVXo2AeDQi', NULL, 2, 1, 1, '', 'est', NULL),
(3, 'toufik', 'Cite 1840', 'MAAMRI FOUAD', '0770124578', 'https://www.google.com/', 'Sidi Moussa', 'Baraki', 'Alger', 100, '$2b$10$463lK30yDHkmD6mPrS.jueGTZnQszTxyD8XFiYszhuy7VZWfIJH9m', NULL, 3, 1, 1, '', 'centre', NULL),
(4, 'walid', 'tests', 'walid walid', '1234567', 'tests', 'Ain Benian', 'Cheraga', 'Alger', 100, '$2b$10$5voMOr0z2RWbDb2dfORBYOuejsRo58ZKD3B/1fsJML88TlNSqVC12', 'test', 2, 1, 2, '', '', NULL),
(5, 'pdv0', 'adre', 'pdv 0 ventes', '0212387741', 'www.streamsystem.com', 'Tessala El Merdja', 'Birtouta', 'Alger', 10, '$2b$10$Xvp8FPe3ECf0OSEEFHBhZeXv/Xw8gaz4ZoJOsVNxW3/6vD6Hoh4U.', NULL, 2, 1, 1, '', 'ouest', NULL),
(6, 'pdvb', 'ad', 'pdvb', '0560586963', 'www.streamsystem.com', 'Boufarik', 'Boufarik', 'Blida', 0, '$2b$10$Gfdpb8WzeuzD5EddXbGQcOj4hUSlK8XyYmogGChtP3f5nhQbRlpny', NULL, 2, 1, 1, '', 'centre', NULL),
(7, 'pdv_annulé', 'address', 'pdv annulé', '0560586963', 'www.streamsystem.com', 'Sebt', 'Meghila', 'Tiaret', 0, '$2b$10$2H3Kegt7kELnsPpWiOcSeuoJlGe/7pXulFVJI5lOCmbuQCV6CVW5W', NULL, 3, 1, 1, '', 'ouest', NULL),
(8, 'haddapdvpdv', 'exemple', 'exemple exemple', '0560586963', 'www.streamsystem.com', 'Abelsa', 'Silet', 'Tamanrasset', 0, '$2b$10$.loh2gXQWJu64kNYmA5gIeV5hV2JlwPthTdRU3gWzj3/AzU2LsUz2', 'exemple', 2, 1, 1, '/uploads/1704635598652--rc.jpg', '', NULL),
(9, 'haddapdvpdvi', 'exemple', 'exemple exemple', '0212387741', 'www.streamsystem.com', 'El Milia', 'El Milia', 'Jijel', 0, '$2b$10$d7hAfhnODw2okRCQQPqfiuB2O/xuO6wZCsuZMi3ZRRIt6.XApH.LC', 'exemple', 1, 1, 1, '', 'est', '2039-03-09'),
(10, 'haddapdvpdvi1', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, 'Oran', 0, '$2b$10$Ze57RBcVBOcAFBYCCg0ioeJg2W78HrPKL5vSRPGDvc5m9sjyuRzvC', 'exemple', 1, 1, 1, '/uploads/1703085085378--streamtv.jpg', 'ouest', NULL),
(11, 'haddapdvpdvi11', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, 'Tlemcen', 0, '$2b$10$NYyBiOQGzF3f.vpa8D.Yu.oEK.bMKVN4D.739VJTd0C.A4dEQ8rqu', 'exemple', 1, 1, 1, '', 'ouest', NULL),
(12, 'pdv', 'adrr', 'fskfdgsdkfg', '0560586963', 'www.streamsystem.com', 'Sidi Abdelli', 'Bensekrane', 'Tlemcen', 0, '$2b$10$MygCGV0.U9Pj.3Spi8lYZeR50ZKs9dkHqsMihmB1mKZaW4eBnJZkm', NULL, 1, 1, 3, '', 'ouest', NULL),
(13, 'haddapdvpdvi112', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$8uTwOuGCwr0Xjxv4HxhURO45VJZGPu2kbXs9kFSfTWw5VU.Jhy2da', 'exemple', 1, 1, 1, '', '', NULL),
(14, 'haddapdv112', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$ymYXsytVx4s8cBnA1buHRuDIKM4VZ80xYZZhe96CGPRwyEa.knPb6', 'exemple', 1, 1, 1, '', '', NULL),
(15, 'haddapdv1', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$vYS7x9xYbSI3lglDqSWjxeTA9r8qtShPvh3aYkX2gez15a06byafW', 'exemple', 1, 1, 1, '', '', NULL),
(16, 'haddapdv2', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$OmvLS.LjEq31GybQ7.OubOk9TCI8WP8IJrly3sfeisT/nW31Y5Q3S', 'exemple', 1, 1, 1, '', '', NULL),
(17, 'haddapdv3', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$NAxrNmw0vf3/YaDA5NR5GemIASbi32iVTkkoS9BqHloMrWly70kfq', 'exemple', 1, 1, 1, '', 'centre', NULL),
(18, 'haddapdv4', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$yTsnh4Fi8Da70vciopo9XO5q3krGJawxylw9HAYs71GBf8ZRh85cO', 'exemple', 1, 1, 1, '', 'centre', NULL),
(19, 'haddapdv5', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$VNTxt75u4xCU7Me9t/gF8.hFw2TM58dkkgKzicj.K3pGoOwvWadQO', 'exemple', 1, 1, 1, '', 'est', NULL),
(20, 'pdvdash', 'dqhsdgjsqdghshdg', 'pdvdash', '0212387741', 'www.streamsystem.com', 'Ouled Riyah', 'Hennaya', 'Tlemcen', 0, '$2b$10$OyMtOav273SuUcmmyw3BduwdoGtmTHMUs5350Ang2KmhkjyLC61QG', NULL, 2, 1, 1, '/uploads/1703512591289--red-1902863_640.png', 'ouest', NULL),
(21, 'haddapdv6', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$62wYxDLDEZN2K9nzH2QqMuvAPXOdFBSQF7Kx8/NkrZLBHwcVONtH2', 'exemple', 1, 1, 1, '', 'centre', NULL),
(22, 'haddapdv7', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$j2dlIU7nSo1Msjx41HTBcedwCP4/av7oL1.cFSkQlC1icLcFGkxeW', 'exemple', 2, 1, 1, '/uploads/1704026259356--streamtv.jpg', 'centre', NULL),
(23, 'haddapdvpdv', 'exemple', 'exemple exemple', '0560586963', 'www.streamsystem.com', 'Zenata', 'Hennaya', 'Tlemcen', 0, '$2b$10$5A8iQyKQ.S91/oksFZUVReps3HSd/jcSS2XI0ruwdn.JmOcH.NguG', NULL, 1, 1, 1, '', 'ouest', NULL),
(24, 'doudipdv', 'adr', 'pdv hjdsgdjgjsdgh', '0212387741', 'www.streamsystem.com', 'Taghit', 'Taghit', 'Béchar', 0, '$2b$10$gtMuANkJIWVcSBh8QRwr8u7cOI2B7u4bLE.vCqHWAw2t3TYKB6eni', NULL, 1, 1, 3, '', '', '1986-11-19'),
(25, 'user', 'alger', 'user user', '0123456789', 'ste', 'commune', NULL, 'alger', 200, '$2b$10$b0HA7QJUmh8uy0NNQVVHn.3QYfN2l3AI8OguV.WoMpGN8G9q1EKx6', '0123456789', 2, 1, 1, 'D:\\pdvclient v1\\pdv\\pdv\\pdv_web_home/uploads/1705396522378-Capture d\'Ã©cran 2024-01-15 085634.png', '', NULL),
(26, 'Me', 'Jfkfifjdjd', 'Me Me', '132659487', 'Jfkfjfjdfb', NULL, NULL, NULL, 0, '$2b$10$t477NbNs030g4PkraUWWc.NZ2Ox5rIfeiSvRIOBNtTKWAWyk5iCE2', 'Test', 1, 1, 1, 'D:\\pdvclient v1\\pdv\\pdv\\pdv_web_home/uploads/1705413149447-Caracteristiques armatures 102017 - DSI ADD Beton.pdf', '', NULL),
(27, 'test', '78938737893', 'undefined azer', 'undefined', '893873789', NULL, NULL, NULL, 0, '$2b$10$2Kh8SYUIvOMN/GomSOwV7OC3FKTBmIxy2aUC9rBE6PvQWT8VwjMDu', '879378397839', 1, 1, 1, 'D:\\pdvclient v1\\pdv\\pdv\\pdv_web_cherry/uploads/1705502879647-icons8-cart-50.png', '', NULL),
(28, 'aa', 'addresse', 'aa aa', '0555555555', 'aa', NULL, NULL, NULL, 0, '$2b$10$14djmJaai93beBE6PytioOjzxNbJ.J/47qSvY8j62wm1aTB2LpMWy', 'aa', 1, 1, 1, 'D:\\pdvclientv2\\pdv_web_cherry_21 01 2024\\pdv_web_cherry/uploads/1705834901518-icons8-cart-50.png', '', NULL),
(29, 'me2', 'me', 'me me', '0555555555', 'me', NULL, NULL, NULL, 0, '$2b$10$0PtZkm4AEQgwt/EQs9cGw.VcoewUcBIDvXtabQuc4huFbyhH7iF6C', 'me', 1, 1, 1, 'D:\\pdvclientv2\\pdvclient_28_01_2024\\pdvclient\\uploads1706433882128-qrcode.png', '', NULL),
(31, 'abc', 'a', 'a a', '0555555555', 'a', 'a', NULL, NULL, 0, '$2b$10$8OtitjvsiE5tyVqrZjZ/feLAn4eXSlQflly71NkuBAJygNXdd39YC', 'a', 1, 1, 1, 'D:\\pdvclientv2\\pdvclient_28_01_2024\\pdvclient\\uploads1706517545379-qrcode.png', '', '1990-10-10'),
(32, 'z', 'z', 'z z', '0555555555', 'z', 'z', NULL, NULL, 0, '$2b$10$ZiHNNCK9bT6CBAJMmhTZ5uFa38sGDXOKbq.NdX9ih.LSzw1wl9MVK', 'z', 1, 1, 1, 'D:\\pdvclientv2\\pdvclient_28_01_2024\\pdvclient\\uploads1706518975260-qrcode.png', '', '1990-10-10');

-- --------------------------------------------------------

--
-- Structure de la table `pdvgrade`
--

CREATE TABLE `pdvgrade` (
  `id` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pdvgrade`
--

INSERT INTO `pdvgrade` (`id`, `grade`) VALUES
(1, 'IRON'),
(2, 'BRONZE'),
(3, 'SILVER'),
(4, 'GOLD'),
(5, 'PLATINUM'),
(6, 'DIAMOND'),
(7, 'IMMOTAL');

-- --------------------------------------------------------

--
-- Structure de la table `pdvstatus`
--

CREATE TABLE `pdvstatus` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pdvstatus`
--

INSERT INTO `pdvstatus` (`id`, `status`) VALUES
(1, 'En attente'),
(2, 'Confirmé'),
(3, 'Annulé');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `os` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `is_new` varchar(100) DEFAULT NULL,
  `is_available` varchar(100) DEFAULT NULL,
  `is_bestselling` varchar(100) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `rom` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `hdmi` int(11) DEFAULT NULL,
  `usb` int(11) DEFAULT NULL,
  `vga` int(11) DEFAULT NULL,
  `dimensions` varchar(100) DEFAULT NULL,
  `wifi` varchar(100) DEFAULT NULL,
  `bluetooth` varchar(100) DEFAULT NULL,
  `earphone` varchar(100) DEFAULT NULL,
  `ethernet` varchar(100) DEFAULT NULL,
  `description` mediumtext,
  `oldprice` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `techsheet` varchar(255) DEFAULT NULL,
  `productimg` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `resolution` int(11) NOT NULL,
  `taille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `model`, `os`, `price`, `points`, `is_new`, `is_available`, `is_bestselling`, `ram`, `rom`, `weight`, `hdmi`, `usb`, `vga`, `dimensions`, `wifi`, `bluetooth`, `earphone`, `ethernet`, `description`, `oldprice`, `rating`, `techsheet`, `productimg`, `banner`, `category_id`, `resolution`, `taille`) VALUES
(12, 'GTV32FHD', 'google', 350000, 20, 'false', 'false', 'false', 0, 0, 0, 0, 0, 0, '', 'false', 'false', 'false', 'false', '', 0, 0, '', '', '', 6, 1, 1),
(13, 'GTV64FHD', 'web os', 350000, 25, 'false', 'false', 'false', 0, 0, 0, 0, 0, 0, '', 'false', 'false', 'false', 'false', '', 0, 0, '', '', '', 8, 1, 2),
(14, 'GTV32UHD', 'google', 55500000, 35, 'false', 'false', 'false', 0, 0, 0, 0, 0, 0, '', 'false', 'false', 'false', 'false', '', 0, 0, '', '', '', 6, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `productcategory`
--

CREATE TABLE `productcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `categoryimg` varchar(255) DEFAULT NULL,
  `abrv` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `productcategory`
--

INSERT INTO `productcategory` (`id`, `category`, `categoryimg`, `abrv`) VALUES
(6, 'GOOGLE TV', '/uploads/1704966662710--streamtv.jpg', 'GT'),
(8, 'SMART TV', '/uploads/1704966076104--streamtv2.jpg', 'ST');

-- --------------------------------------------------------

--
-- Structure de la table `resolutionproduct`
--

CREATE TABLE `resolutionproduct` (
  `id` int(11) NOT NULL,
  `resolution` varchar(50) NOT NULL,
  `abrv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `resolutionproduct`
--

INSERT INTO `resolutionproduct` (`id`, `resolution`, `abrv`) VALUES
(1, 'FULL HD', 'FHD'),
(3, 'ULTRA HD', 'UHD');

-- --------------------------------------------------------

--
-- Structure de la table `serial_number`
--

CREATE TABLE `serial_number` (
  `id` int(11) NOT NULL,
  `serial_number` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `serial_number`
--

INSERT INTO `serial_number` (`id`, `serial_number`, `product_id`, `status`) VALUES
(7, 'GT32FHD170489316842400000', 12, 'disponible'),
(8, 'GT32FHD170489316855600001', 12, 'disponible'),
(9, 'GT32FHD170489316864200002', 12, 'disponible'),
(10, 'GT32FHD170489316867500003', 12, 'disponible'),
(11, 'GT32FHD170489316871100004', 12, 'disponible'),
(12, 'GT32FHD170489316875100005', 12, 'disponible'),
(13, 'GT32FHD170489316877800006', 12, 'disponible'),
(14, 'GT32FHD170489316880500007', 12, 'disponible'),
(15, 'GT32FHD170489316882800008', 12, 'disponible'),
(16, 'GT32FHD170489316885500009', 12, 'disponible'),
(17, 'GT32FHD170489316888400010', 12, 'disponible'),
(18, 'GT32FHD170489316891900011', 12, 'disponible'),
(19, 'GT32FHD170489316895300012', 12, 'disponible'),
(20, 'GT32FHD170489316899300013', 12, 'disponible'),
(21, 'GT32FHD170489316901600014', 12, 'disponible'),
(22, 'GT32FHD170489316904200015', 12, 'disponible'),
(23, 'GT32FHD170489316906500016', 12, 'disponible'),
(24, 'GT32FHD170489316909100017', 12, 'disponible'),
(25, 'GT32FHD170489316911500018', 12, 'disponible'),
(26, 'GT32FHD170489316913800019', 12, 'disponible'),
(27, 'GT64FHD170489324890200000', 13, 'disponible'),
(28, 'GT64FHD170489324903000001', 13, 'disponible'),
(29, 'GT64FHD170489324907800002', 13, 'disponible'),
(30, 'GT64FHD170489324911500003', 13, 'disponible'),
(31, 'GT64FHD170489324916400004', 13, 'disponible'),
(32, 'GT64FHD170489324920000005', 13, 'disponible'),
(33, 'GT64FHD170489324924100006', 13, 'disponible'),
(34, 'GT64FHD170489324926500007', 13, 'disponible'),
(35, 'GT64FHD170489324929500008', 13, 'disponible'),
(36, 'GT64FHD170489324931200009', 13, 'disponible'),
(37, 'GT64FHD170489324934300010', 13, 'disponible'),
(38, 'GT64FHD170489324936400011', 13, 'disponible'),
(39, 'GT64FHD170489324938000012', 13, 'disponible'),
(40, 'GT64FHD170489324939600013', 13, 'disponible'),
(41, 'GT64FHD170489324941700014', 13, 'disponible'),
(42, 'GT64FHD170489423128500000', 13, 'disponible'),
(43, 'GT64FHD170489423134000001', 13, 'disponible'),
(44, 'GT64FHD170489423136700002', 13, 'disponible'),
(45, 'GT64FHD170489423138200003', 13, 'disponible'),
(46, 'GT64FHD170489423140400004', 13, 'disponible'),
(47, 'GT64FHD170489423141700005', 13, 'disponible'),
(48, 'GT64FHD170489423143600006', 13, 'disponible'),
(49, 'GT64FHD170489423144700007', 13, 'disponible'),
(50, 'GT64FHD170489423146200008', 13, 'disponible'),
(51, 'GT64FHD170489423147800009', 13, 'disponible'),
(52, 'GT64FHD170489423149200010', 13, 'disponible'),
(53, 'GT64FHD170489423152100011', 13, 'disponible'),
(54, 'GT64FHD170489423153400012', 13, 'disponible'),
(55, 'GT64FHD170489423154700013', 13, 'disponible'),
(56, 'GT64FHD170489423156100014', 13, 'disponible'),
(57, 'GT64FHD170489423158000015', 13, 'disponible'),
(58, 'GT64FHD170489423160900016', 13, 'disponible'),
(59, 'GT64FHD170489423162700017', 13, 'disponible'),
(60, 'GT64FHD170489423164300018', 13, 'disponible'),
(61, 'GT64FHD170489423166100019', 13, 'disponible'),
(62, 'GT64FHD170489423168000020', 13, 'disponible'),
(63, 'GT64FHD170489423172100021', 13, 'disponible'),
(64, 'GT64FHD170489423173300022', 13, 'disponible'),
(65, 'GT64FHD170489423174800023', 13, 'disponible'),
(66, 'GT64FHD170489423176200024', 13, 'disponible'),
(67, 'GT64FHD170489423177400025', 13, 'disponible'),
(68, 'GT64FHD170489423178700026', 13, 'disponible'),
(69, 'GT64FHD170489423180000027', 13, 'disponible'),
(70, 'GT64FHD170489423181200028', 13, 'disponible'),
(71, 'GT64FHD170489423182300029', 13, 'disponible'),
(72, 'GT64FHD170489423183300030', 13, 'disponible'),
(73, 'GT64FHD170489423184500031', 13, 'disponible'),
(74, 'GT64FHD170489423186100032', 13, 'disponible'),
(75, 'GT64FHD170489423187600033', 13, 'disponible'),
(76, 'GT64FHD170489423189400034', 13, 'disponible'),
(77, 'GT64FHD170489423190700035', 13, 'disponible'),
(78, 'GT64FHD170489423191700036', 13, 'disponible'),
(79, 'GT64FHD170489423192700037', 13, 'disponible'),
(80, 'GT64FHD170489423194000038', 13, 'disponible'),
(81, 'GT64FHD170489423195200039', 13, 'disponible'),
(82, 'GT64FHD170489423196400040', 13, 'disponible'),
(83, 'GT64FHD170489423197600041', 13, 'disponible'),
(84, 'GT64FHD170489423198600042', 13, 'disponible'),
(85, 'GT64FHD170489423200200043', 13, 'disponible'),
(86, 'GT64FHD170489423201200044', 13, 'disponible'),
(87, 'GT64FHD170489423202200045', 13, 'disponible'),
(88, 'GT64FHD170489423203200046', 13, 'disponible'),
(89, 'GT64FHD170489423204300047', 13, 'disponible'),
(90, 'GT64FHD170489423206000048', 13, 'disponible'),
(91, 'GT64FHD170489423207100049', 13, 'disponible'),
(92, 'GT64FHD170489423208000050', 13, 'disponible'),
(93, 'GT64FHD170489423209100051', 13, 'disponible'),
(94, 'GT64FHD170489423210100052', 13, 'disponible'),
(95, 'GT64FHD170489423211200053', 13, 'disponible'),
(96, 'GT64FHD170489423212300054', 13, 'disponible'),
(97, 'GT64FHD170489423213400055', 13, 'disponible'),
(98, 'GT64FHD170489423214600056', 13, 'disponible'),
(99, 'GT64FHD170489423215600057', 13, 'disponible'),
(100, 'GT64FHD170489423216600058', 13, 'disponible'),
(101, 'GT64FHD170489423217600059', 13, 'disponible'),
(102, 'GT64FHD170489423218600060', 13, 'disponible'),
(103, 'GT64FHD170489423219800061', 13, 'disponible'),
(104, 'GT64FHD170489423221400062', 13, 'disponible'),
(105, 'GT64FHD170489423222400063', 13, 'disponible'),
(106, 'GT64FHD170489423223800064', 13, 'disponible'),
(107, 'GT64FHD170489423224700065', 13, 'disponible'),
(108, 'GT64FHD170489423225900066', 13, 'disponible'),
(109, 'GT64FHD170489423226800067', 13, 'disponible'),
(110, 'GT64FHD170489423227900068', 13, 'disponible'),
(111, 'GT64FHD170489423229300069', 13, 'disponible'),
(112, 'GT64FHD170489423230300070', 13, 'disponible'),
(113, 'GT64FHD170489423231200071', 13, 'disponible'),
(114, 'GT64FHD170489423232300072', 13, 'disponible'),
(115, 'GT64FHD170489423233300073', 13, 'disponible'),
(116, 'GT64FHD170489423234300074', 13, 'disponible'),
(117, 'GT64FHD170489423235700075', 13, 'disponible'),
(118, 'GT64FHD170489423237000076', 13, 'disponible'),
(119, 'GT64FHD170489423238100077', 13, 'disponible'),
(120, 'GT64FHD170489423239100078', 13, 'disponible'),
(121, 'GT64FHD170489423240600079', 13, 'disponible'),
(122, 'GT64FHD170489423241700080', 13, 'disponible'),
(123, 'GT64FHD170489423242700081', 13, 'disponible'),
(124, 'GT64FHD170489423243800082', 13, 'disponible'),
(125, 'GT64FHD170489423244800083', 13, 'disponible'),
(126, 'GT64FHD170489423246300084', 13, 'disponible'),
(127, 'GT64FHD170489423247600085', 13, 'disponible'),
(128, 'GT64FHD170489423248600086', 13, 'disponible'),
(129, 'GT64FHD170489423249600087', 13, 'disponible'),
(130, 'GT64FHD170489423250900088', 13, 'disponible'),
(131, 'GT64FHD170489423252000089', 13, 'disponible'),
(132, 'GT64FHD170489423254800090', 13, 'disponible'),
(133, 'GT64FHD170489423256700091', 13, 'disponible'),
(134, 'GT64FHD170489423257700092', 13, 'disponible'),
(135, 'GT64FHD170489423258700093', 13, 'disponible'),
(136, 'GT64FHD170489423259700094', 13, 'disponible'),
(137, 'GT64FHD170489423260800095', 13, 'disponible'),
(138, 'GT64FHD170489423261900096', 13, 'disponible'),
(139, 'GT64FHD170489423263200097', 13, 'disponible'),
(140, 'GT64FHD170489423264200098', 13, 'disponible'),
(141, 'GT64FHD170489423265400099', 13, 'disponible'),
(142, 'GT64FHD170489423266400100', 13, 'disponible'),
(143, 'GT64FHD170489423267300101', 13, 'disponible'),
(144, 'GT64FHD170489423268200102', 13, 'disponible'),
(145, 'GT64FHD170489423269400103', 13, 'disponible'),
(146, 'GT64FHD170489423270500104', 13, 'disponible'),
(147, 'GT64FHD170489423271300105', 13, 'disponible'),
(148, 'GT64FHD170489423272300106', 13, 'disponible'),
(149, 'GT64FHD170489423273100107', 13, 'disponible'),
(150, 'GT64FHD170489423274100108', 13, 'disponible'),
(151, 'GT64FHD170489423275200109', 13, 'disponible'),
(152, 'GT64FHD170489423276200110', 13, 'disponible'),
(153, 'GT64FHD170489423277300111', 13, 'disponible'),
(154, 'GT64FHD170489423278300112', 13, 'disponible'),
(155, 'GT64FHD170489423279300113', 13, 'disponible'),
(156, 'GT64FHD170489423280300114', 13, 'disponible'),
(157, 'GT64FHD170489423281300115', 13, 'disponible'),
(158, 'GT64FHD170489423282300116', 13, 'disponible'),
(159, 'GT64FHD170489423283200117', 13, 'disponible'),
(160, 'GT64FHD170489423284200118', 13, 'disponible'),
(161, 'GT64FHD170489423285100119', 13, 'disponible'),
(162, 'GT64FHD170489423286000120', 13, 'disponible'),
(163, 'GT64FHD170489423287200121', 13, 'disponible'),
(164, 'GT64FHD170489423288100122', 13, 'disponible'),
(165, 'GT64FHD170489423289000123', 13, 'disponible'),
(166, 'GT64FHD170489423289900124', 13, 'disponible'),
(167, 'GT64FHD170489423290900125', 13, 'disponible'),
(168, 'GT64FHD170489423291700126', 13, 'disponible'),
(169, 'GT64FHD170489423292700127', 13, 'disponible'),
(170, 'GT64FHD170489423293700128', 13, 'disponible'),
(171, 'GT64FHD170489423294600129', 13, 'disponible'),
(172, 'GT64FHD170489423295500130', 13, 'disponible'),
(173, 'GT64FHD170489423296300131', 13, 'disponible'),
(174, 'GT64FHD170489423297300132', 13, 'disponible'),
(175, 'GT64FHD170489423298700133', 13, 'disponible'),
(176, 'GT64FHD170489423299700134', 13, 'disponible'),
(177, 'GT64FHD170489423300600135', 13, 'disponible'),
(178, 'GT64FHD170489423301500136', 13, 'disponible'),
(179, 'GT64FHD170489423302500137', 13, 'disponible'),
(180, 'GT64FHD170489423303300138', 13, 'disponible'),
(181, 'GT64FHD170489423304400139', 13, 'disponible'),
(182, 'GT64FHD170489423305500140', 13, 'disponible'),
(183, 'GT64FHD170489423306300141', 13, 'disponible'),
(184, 'GT64FHD170489423307200142', 13, 'disponible'),
(185, 'GT64FHD170489423308100143', 13, 'disponible'),
(186, 'GT64FHD170489423309100144', 13, 'disponible'),
(187, 'GT64FHD170489423310300145', 13, 'disponible'),
(188, 'GT64FHD170489423311100146', 13, 'disponible'),
(189, 'GT64FHD170489423312000147', 13, 'disponible'),
(190, 'GT64FHD170489423312800148', 13, 'disponible'),
(191, 'GT64FHD170489423313800149', 13, 'disponible'),
(192, 'GT64FHD170489423314700150', 13, 'disponible'),
(193, 'GT64FHD170489423315800151', 13, 'disponible'),
(194, 'GT64FHD170489423316700152', 13, 'disponible'),
(195, 'GT64FHD170489423317700153', 13, 'disponible'),
(196, 'GT64FHD170489423318700154', 13, 'disponible'),
(197, 'GT64FHD170489423319500155', 13, 'disponible'),
(198, 'GT64FHD170489423320500156', 13, 'disponible'),
(199, 'GT64FHD170489423321400157', 13, 'disponible'),
(200, 'GT64FHD170489423322500158', 13, 'disponible'),
(201, 'GT64FHD170489423323400159', 13, 'disponible'),
(202, 'GT64FHD170489423324400160', 13, 'disponible'),
(203, 'GT64FHD170489423325300161', 13, 'disponible'),
(204, 'GT64FHD170489423326200162', 13, 'disponible'),
(205, 'GT64FHD170489423327400163', 13, 'disponible'),
(206, 'GT64FHD170489423328400164', 13, 'disponible'),
(207, 'GT64FHD170489423329400165', 13, 'disponible'),
(208, 'GT64FHD170489423330500166', 13, 'disponible'),
(209, 'GT64FHD170489423331400167', 13, 'disponible'),
(210, 'GT64FHD170489423332300168', 13, 'disponible'),
(211, 'GT64FHD170489423333500169', 13, 'disponible'),
(212, 'GT64FHD170489423334400170', 13, 'disponible'),
(213, 'GT64FHD170489423335500171', 13, 'disponible'),
(214, 'GT64FHD170489423336400172', 13, 'disponible'),
(215, 'GT64FHD170489423337200173', 13, 'disponible'),
(216, 'GT64FHD170489423338000174', 13, 'disponible'),
(217, 'GT64FHD170489423339300175', 13, 'disponible'),
(218, 'GT64FHD170489423340200176', 13, 'disponible'),
(219, 'GT64FHD170489423341100177', 13, 'disponible'),
(220, 'GT64FHD170489423342000178', 13, 'disponible'),
(221, 'GT64FHD170489423342900179', 13, 'disponible'),
(222, 'GT64FHD170489423343900180', 13, 'disponible'),
(223, 'GT64FHD170489423345000181', 13, 'disponible'),
(224, 'GT64FHD170489423346000182', 13, 'disponible'),
(225, 'GT64FHD170489423347000183', 13, 'disponible'),
(226, 'GT64FHD170489423347800184', 13, 'disponible'),
(227, 'GT64FHD170489423348800185', 13, 'disponible'),
(228, 'GT64FHD170489423349700186', 13, 'disponible'),
(229, 'GT64FHD170489423351000187', 13, 'disponible'),
(230, 'GT64FHD170489423352000188', 13, 'disponible'),
(231, 'GT64FHD170489423352900189', 13, 'disponible'),
(232, 'GT64FHD170489423353900190', 13, 'disponible'),
(233, 'GT64FHD170489423354800191', 13, 'disponible'),
(234, 'GT64FHD170489423355700192', 13, 'disponible'),
(235, 'GT64FHD170489423356700193', 13, 'disponible'),
(236, 'GT64FHD170489423357700194', 13, 'disponible'),
(237, 'GT64FHD170489423358700195', 13, 'disponible'),
(238, 'GT64FHD170489423359600196', 13, 'disponible'),
(239, 'GT64FHD170489423360800197', 13, 'disponible'),
(240, 'GT64FHD170489423361600198', 13, 'disponible'),
(241, 'GT64FHD170489423362700199', 13, 'disponible'),
(242, 'GT64FHD170489423363700200', 13, 'disponible'),
(243, 'GT64FHD170489423364600201', 13, 'disponible'),
(244, 'GT64FHD170489423365700202', 13, 'disponible'),
(245, 'GT64FHD170489423366600203', 13, 'disponible'),
(246, 'GT64FHD170489423367600204', 13, 'disponible'),
(247, 'GT64FHD170489423368800205', 13, 'disponible'),
(248, 'GT64FHD170489423369700206', 13, 'disponible'),
(249, 'GT64FHD170489423370800207', 13, 'disponible'),
(250, 'GT64FHD170489423371900208', 13, 'disponible'),
(251, 'GT64FHD170489423372900209', 13, 'disponible'),
(252, 'GT64FHD170489423373900210', 13, 'disponible'),
(253, 'GT64FHD170489423375000211', 13, 'disponible'),
(254, 'GT64FHD170489423376000212', 13, 'disponible'),
(255, 'GT64FHD170489423377000213', 13, 'disponible'),
(256, 'GT64FHD170489423378000214', 13, 'disponible'),
(257, 'GT64FHD170489423379100215', 13, 'disponible'),
(258, 'GT64FHD170489423380100216', 13, 'disponible'),
(259, 'GT64FHD170489423383500217', 13, 'disponible'),
(260, 'GT64FHD170489423384700218', 13, 'disponible'),
(261, 'GT64FHD170489423385700219', 13, 'disponible'),
(262, 'GT64FHD170489423388800220', 13, 'disponible'),
(263, 'GT64FHD170489423390100221', 13, 'disponible'),
(264, 'GT64FHD170489423390900222', 13, 'disponible'),
(265, 'GT64FHD170489423392000223', 13, 'disponible'),
(266, 'GT64FHD170489423392900224', 13, 'disponible'),
(267, 'GT64FHD170489423393800225', 13, 'disponible'),
(268, 'GT64FHD170489423394700226', 13, 'disponible'),
(269, 'GT64FHD170489423395600227', 13, 'disponible'),
(270, 'GT64FHD170489423396400228', 13, 'disponible'),
(271, 'GT64FHD170489423397500229', 13, 'disponible'),
(272, 'GT64FHD170489423398300230', 13, 'disponible'),
(273, 'GT64FHD170489423399200231', 13, 'disponible'),
(274, 'GT64FHD170489423400200232', 13, 'disponible'),
(275, 'GT64FHD170489423401500233', 13, 'disponible'),
(276, 'GT64FHD170489423402300234', 13, 'disponible'),
(277, 'GT64FHD170489423403300235', 13, 'disponible'),
(278, 'GT64FHD170489423404800236', 13, 'disponible'),
(279, 'GT64FHD170489423407800237', 13, 'disponible'),
(280, 'GT64FHD170489423408800238', 13, 'disponible'),
(281, 'GT64FHD170489423409700239', 13, 'disponible'),
(282, 'GT64FHD170489423410600240', 13, 'disponible'),
(283, 'GT64FHD170489423411600241', 13, 'disponible'),
(284, 'GT64FHD170489423412600242', 13, 'disponible'),
(285, 'GT64FHD170489423417700243', 13, 'disponible'),
(286, 'GT64FHD170489423418900244', 13, 'disponible'),
(287, 'GT64FHD170489423419800245', 13, 'disponible'),
(288, 'GT64FHD170489423420900246', 13, 'disponible'),
(289, 'GT64FHD170489423421700247', 13, 'disponible'),
(290, 'GT64FHD170489423422600248', 13, 'disponible'),
(291, 'GT64FHD170489423423700249', 13, 'disponible'),
(292, 'GT64FHD170489423424500250', 13, 'disponible'),
(293, 'GT64FHD170489423425700251', 13, 'disponible'),
(294, 'GT64FHD170489423426600252', 13, 'disponible'),
(295, 'GT64FHD170489423427700253', 13, 'disponible'),
(296, 'GT64FHD170489423428700254', 13, 'disponible'),
(297, 'GT64FHD170489423429700255', 13, 'disponible'),
(298, 'GT64FHD170489423430800256', 13, 'disponible'),
(299, 'GT64FHD170489423431700257', 13, 'disponible'),
(300, 'GT64FHD170489423432700258', 13, 'disponible'),
(301, 'GT64FHD170489423433800259', 13, 'disponible'),
(302, 'GT64FHD170489423434700260', 13, 'disponible'),
(303, 'GT64FHD170489423435900261', 13, 'disponible'),
(304, 'GT64FHD170489423437000262', 13, 'disponible'),
(305, 'GT64FHD170489423437900263', 13, 'disponible'),
(306, 'GT64FHD170489423438900264', 13, 'disponible'),
(307, 'GT64FHD170489423439800265', 13, 'disponible'),
(308, 'GT64FHD170489423440800266', 13, 'disponible'),
(309, 'GT64FHD170489423441900267', 13, 'disponible'),
(310, 'GT64FHD170489423442800268', 13, 'disponible'),
(311, 'GT64FHD170489423443900269', 13, 'disponible'),
(312, 'GT64FHD170489423444800270', 13, 'disponible'),
(313, 'GT64FHD170489423445900271', 13, 'disponible'),
(314, 'GT64FHD170489423447000272', 13, 'disponible'),
(315, 'GT64FHD170489423447900273', 13, 'disponible'),
(316, 'GT64FHD170489423448900274', 13, 'disponible'),
(317, 'GT64FHD170489423449900275', 13, 'disponible'),
(318, 'GT64FHD170489423451000276', 13, 'disponible'),
(319, 'GT64FHD170489423451900277', 13, 'disponible'),
(320, 'GT64FHD170489423452800278', 13, 'disponible'),
(321, 'GT64FHD170489423453800279', 13, 'disponible'),
(322, 'GT64FHD170489423454700280', 13, 'disponible'),
(323, 'GT64FHD170489423455700281', 13, 'disponible'),
(324, 'GT64FHD170489423456600282', 13, 'disponible'),
(325, 'GT64FHD170489423457600283', 13, 'disponible'),
(326, 'GT64FHD170489423458500284', 13, 'disponible'),
(327, 'GT64FHD170489423459500285', 13, 'disponible'),
(328, 'GT64FHD170489423460400286', 13, 'disponible'),
(329, 'GT64FHD170489423461300287', 13, 'disponible'),
(330, 'GT64FHD170489423462300288', 13, 'disponible'),
(331, 'GT64FHD170489423463200289', 13, 'disponible'),
(332, 'GT64FHD170489423464300290', 13, 'disponible'),
(333, 'GT64FHD170489423465500291', 13, 'disponible'),
(334, 'GT64FHD170489423466400292', 13, 'disponible'),
(335, 'GT64FHD170489423467300293', 13, 'disponible'),
(336, 'GT64FHD170489423468300294', 13, 'disponible'),
(337, 'GT64FHD170489423469400295', 13, 'disponible'),
(338, 'GT64FHD170489423470500296', 13, 'disponible'),
(339, 'GT64FHD170489423471600297', 13, 'disponible'),
(340, 'GT64FHD170489423472500298', 13, 'disponible'),
(341, 'GT64FHD170489423473600299', 13, 'disponible'),
(342, 'GT64FHD170489423474500300', 13, 'disponible'),
(343, 'GT64FHD170489423475500301', 13, 'disponible'),
(344, 'GT64FHD170489423476400302', 13, 'disponible'),
(345, 'GT64FHD170489423477700303', 13, 'disponible'),
(346, 'GT64FHD170489423478800304', 13, 'disponible'),
(347, 'GT64FHD170489423479700305', 13, 'disponible'),
(348, 'GT64FHD170489423480800306', 13, 'disponible'),
(349, 'GT64FHD170489423481900307', 13, 'disponible'),
(350, 'GT64FHD170489423482800308', 13, 'disponible'),
(351, 'GT64FHD170489423483900309', 13, 'disponible'),
(352, 'GT64FHD170489423484900310', 13, 'disponible'),
(353, 'GT64FHD170489423485900311', 13, 'disponible'),
(354, 'GT64FHD170489423487000312', 13, 'disponible'),
(355, 'GT64FHD170489423487900313', 13, 'disponible'),
(356, 'GT64FHD170489423488900314', 13, 'disponible'),
(357, 'GT64FHD170489423490000315', 13, 'disponible'),
(358, 'GT64FHD170489423491000316', 13, 'disponible'),
(359, 'GT64FHD170489423492000317', 13, 'disponible'),
(360, 'GT64FHD170489423492900318', 13, 'disponible'),
(361, 'GT64FHD170489423493900319', 13, 'disponible'),
(362, 'GT64FHD170489423494800320', 13, 'disponible'),
(363, 'GT64FHD170489423496000321', 13, 'disponible'),
(364, 'GT64FHD170489423497100322', 13, 'disponible'),
(365, 'GT64FHD170489423498000323', 13, 'disponible'),
(366, 'GT64FHD170489423499000324', 13, 'disponible'),
(367, 'GT64FHD170489423499900325', 13, 'disponible'),
(368, 'GT64FHD170489423500900326', 13, 'disponible'),
(369, 'GT64FHD170489423502100327', 13, 'disponible'),
(370, 'GT64FHD170489423503600328', 13, 'disponible'),
(371, 'GT64FHD170489423504700329', 13, 'disponible'),
(372, 'GT64FHD170489423505600330', 13, 'disponible'),
(373, 'GT64FHD170489423506400331', 13, 'disponible'),
(374, 'GT64FHD170489423507500332', 13, 'disponible'),
(375, 'GT64FHD170489423508700333', 13, 'disponible'),
(376, 'GT64FHD170489423510200334', 13, 'disponible'),
(377, 'GT64FHD170489423511200335', 13, 'disponible'),
(378, 'GT64FHD170489423512200336', 13, 'disponible'),
(379, 'GT64FHD170489423513000337', 13, 'disponible'),
(380, 'GT64FHD170489423514100338', 13, 'disponible'),
(381, 'GT64FHD170489423515200339', 13, 'disponible'),
(382, 'GT64FHD170489423516100340', 13, 'disponible'),
(383, 'GT64FHD170489423517200341', 13, 'disponible'),
(384, 'GT64FHD170489423518100342', 13, 'disponible'),
(385, 'GT64FHD170489423519100343', 13, 'disponible'),
(386, 'GT64FHD170489423520000344', 13, 'disponible'),
(387, 'GT64FHD170489423521100345', 13, 'disponible'),
(388, 'GT64FHD170489423522100346', 13, 'disponible'),
(389, 'GT64FHD170489423523000347', 13, 'disponible'),
(390, 'GT64FHD170489423523900348', 13, 'disponible'),
(391, 'GT64FHD170489423524800349', 13, 'disponible'),
(392, 'GT64FHD170489423525700350', 13, 'disponible'),
(393, 'GT64FHD170489423526700351', 13, 'disponible'),
(394, 'GT64FHD170489423527800352', 13, 'disponible'),
(395, 'GT64FHD170489423528800353', 13, 'disponible'),
(396, 'GT64FHD170489423529600354', 13, 'disponible'),
(397, 'GT64FHD170489423531100355', 13, 'disponible'),
(398, 'GT64FHD170489423532300356', 13, 'disponible'),
(399, 'GT64FHD170489423533300357', 13, 'disponible'),
(400, 'GT64FHD170489423534700358', 13, 'disponible'),
(401, 'GT64FHD170489423535600359', 13, 'disponible'),
(402, 'GT64FHD170489423536600360', 13, 'disponible'),
(403, 'GT64FHD170489423537500361', 13, 'disponible'),
(404, 'GT64FHD170489423538600362', 13, 'disponible'),
(405, 'GT64FHD170489423539600363', 13, 'disponible'),
(406, 'GT64FHD170489423540700364', 13, 'disponible'),
(407, 'GT64FHD170489423541600365', 13, 'disponible'),
(408, 'GT64FHD170489423542600366', 13, 'disponible'),
(409, 'GT64FHD170489423543600367', 13, 'disponible'),
(410, 'GT64FHD170489423544600368', 13, 'disponible'),
(411, 'GT64FHD170489423545800369', 13, 'disponible'),
(412, 'GT64FHD170489423546600370', 13, 'disponible'),
(413, 'GT64FHD170489423547700371', 13, 'disponible'),
(414, 'GT64FHD170489423548800372', 13, 'disponible'),
(415, 'GT64FHD170489423549700373', 13, 'disponible'),
(416, 'GT64FHD170489423550700374', 13, 'disponible'),
(417, 'GT64FHD170489423551800375', 13, 'disponible'),
(418, 'GT64FHD170489423552700376', 13, 'disponible'),
(419, 'GT64FHD170489423553700377', 13, 'disponible'),
(420, 'GT64FHD170489423554600378', 13, 'disponible'),
(421, 'GT64FHD170489423555600379', 13, 'disponible'),
(422, 'GT64FHD170489423556400380', 13, 'disponible'),
(423, 'GT64FHD170489423557500381', 13, 'disponible'),
(424, 'GT64FHD170489423559400382', 13, 'disponible'),
(425, 'GT64FHD170489423560400383', 13, 'disponible'),
(426, 'GT64FHD170489423561300384', 13, 'disponible'),
(427, 'GT64FHD170489423562300385', 13, 'disponible'),
(428, 'GT64FHD170489423563200386', 13, 'disponible'),
(429, 'GT64FHD170489423564300387', 13, 'disponible'),
(430, 'GT64FHD170489423565300388', 13, 'disponible'),
(431, 'GT64FHD170489423566200389', 13, 'disponible'),
(432, 'GT64FHD170489423567200390', 13, 'disponible'),
(433, 'GT64FHD170489423568100391', 13, 'disponible'),
(434, 'GT64FHD170489423569100392', 13, 'disponible'),
(435, 'GT64FHD170489423570100393', 13, 'disponible'),
(436, 'GT64FHD170489423571100394', 13, 'disponible'),
(437, 'GT64FHD170489423572000395', 13, 'disponible'),
(438, 'GT64FHD170489423572800396', 13, 'disponible'),
(439, 'GT64FHD170489423573700397', 13, 'disponible'),
(440, 'GT64FHD170489423574600398', 13, 'disponible'),
(441, 'GT64FHD170489423575500399', 13, 'disponible'),
(442, 'GT64FHD170489423576500400', 13, 'disponible'),
(443, 'GT64FHD170489423577500401', 13, 'disponible'),
(444, 'GT64FHD170489423578500402', 13, 'disponible'),
(445, 'GT64FHD170489423579500403', 13, 'disponible'),
(446, 'GT64FHD170489423580700404', 13, 'disponible'),
(447, 'GT64FHD170489423581800405', 13, 'disponible'),
(448, 'GT64FHD170489423582900406', 13, 'disponible'),
(449, 'GT64FHD170489423584000407', 13, 'disponible'),
(450, 'GT64FHD170489423585100408', 13, 'disponible'),
(451, 'GT64FHD170489423586000409', 13, 'disponible'),
(452, 'GT64FHD170489423586900410', 13, 'disponible'),
(453, 'GT64FHD170489423587800411', 13, 'disponible'),
(454, 'GT64FHD170489423589000412', 13, 'disponible'),
(455, 'GT64FHD170489423589900413', 13, 'disponible'),
(456, 'GT64FHD170489423591000414', 13, 'disponible'),
(457, 'GT64FHD170489423592100415', 13, 'disponible'),
(458, 'GT64FHD170489423593000416', 13, 'disponible'),
(459, 'GT64FHD170489423594000417', 13, 'disponible'),
(460, 'GT64FHD170489423594900418', 13, 'disponible'),
(461, 'GT64FHD170489423596000419', 13, 'disponible'),
(462, 'GT64FHD170489423597100420', 13, 'disponible'),
(463, 'GT64FHD170489423598000421', 13, 'disponible'),
(464, 'GT64FHD170489423599000422', 13, 'disponible'),
(465, 'GT64FHD170489423599900423', 13, 'disponible'),
(466, 'GT64FHD170489423601000424', 13, 'disponible'),
(467, 'GT64FHD170489423602000425', 13, 'disponible'),
(468, 'GT64FHD170489423602900426', 13, 'disponible'),
(469, 'GT64FHD170489423604100427', 13, 'disponible'),
(470, 'GT64FHD170489423605000428', 13, 'disponible'),
(471, 'GT64FHD170489423605900429', 13, 'disponible'),
(472, 'GT64FHD170489423606900430', 13, 'disponible'),
(473, 'GT64FHD170489423607800431', 13, 'disponible'),
(474, 'GT64FHD170489423608700432', 13, 'disponible'),
(475, 'GT64FHD170489423609600433', 13, 'disponible'),
(476, 'GT64FHD170489423610600434', 13, 'disponible'),
(477, 'GT64FHD170489423611500435', 13, 'disponible'),
(478, 'GT64FHD170489423612700436', 13, 'disponible'),
(479, 'GT64FHD170489423613700437', 13, 'disponible'),
(480, 'GT64FHD170489423614700438', 13, 'disponible'),
(481, 'GT64FHD170489423615600439', 13, 'disponible'),
(482, 'GT64FHD170489423616400440', 13, 'disponible'),
(483, 'GT64FHD170489423617500441', 13, 'disponible'),
(484, 'GT64FHD170489423618600442', 13, 'disponible'),
(485, 'GT64FHD170489423619400443', 13, 'disponible'),
(486, 'GT64FHD170489423620400444', 13, 'disponible'),
(487, 'GT64FHD170489423621200445', 13, 'disponible'),
(488, 'GT64FHD170489423622400446', 13, 'disponible'),
(489, 'GT64FHD170489423623200447', 13, 'disponible'),
(490, 'GT64FHD170489423624300448', 13, 'disponible'),
(491, 'GT64FHD170489423625500449', 13, 'disponible'),
(492, 'GT64FHD170489423626300450', 13, 'disponible'),
(493, 'GT64FHD170489423627400451', 13, 'disponible'),
(494, 'GT64FHD170489423628200452', 13, 'disponible'),
(495, 'GT64FHD170489423629200453', 13, 'disponible'),
(496, 'GT64FHD170489423630400454', 13, 'disponible'),
(497, 'GT64FHD170489423631400455', 13, 'disponible'),
(498, 'GT64FHD170489423632600456', 13, 'disponible'),
(499, 'GT64FHD170489423633700457', 13, 'disponible'),
(500, 'GT64FHD170489423634500458', 13, 'disponible'),
(501, 'GT64FHD170489423635400459', 13, 'disponible'),
(502, 'GT64FHD170489423636400460', 13, 'disponible'),
(503, 'GT64FHD170489423637400461', 13, 'disponible'),
(504, 'GT64FHD170489423638200462', 13, 'disponible'),
(505, 'GT64FHD170489423639300463', 13, 'disponible'),
(506, 'GT64FHD170489423640300464', 13, 'disponible'),
(507, 'GT64FHD170489423641200465', 13, 'disponible'),
(508, 'GT64FHD170489423642200466', 13, 'disponible'),
(509, 'GT64FHD170489423643000467', 13, 'disponible'),
(510, 'GT64FHD170489423644000468', 13, 'disponible'),
(511, 'GT64FHD170489423644900469', 13, 'disponible'),
(512, 'GT64FHD170489423645900470', 13, 'disponible'),
(513, 'GT64FHD170489423646900471', 13, 'disponible'),
(514, 'GT64FHD170489423647900472', 13, 'disponible'),
(515, 'GT64FHD170489423648900473', 13, 'disponible'),
(516, 'GT64FHD170489423649800474', 13, 'disponible'),
(517, 'GT64FHD170489423650800475', 13, 'disponible'),
(518, 'GT64FHD170489423651700476', 13, 'disponible'),
(519, 'GT64FHD170489423652700477', 13, 'disponible'),
(520, 'GT64FHD170489423653900478', 13, 'disponible'),
(521, 'GT64FHD170489423654800479', 13, 'disponible'),
(522, 'GT64FHD170489423655800480', 13, 'disponible'),
(523, 'GT64FHD170489423656800481', 13, 'disponible'),
(524, 'GT64FHD170489423657700482', 13, 'disponible'),
(525, 'GT64FHD170489423658700483', 13, 'disponible'),
(526, 'GT64FHD170489423659700484', 13, 'disponible'),
(527, 'GT64FHD170489423660700485', 13, 'disponible'),
(528, 'GT64FHD170489423661500486', 13, 'disponible'),
(529, 'GT64FHD170489423662400487', 13, 'disponible'),
(530, 'GT64FHD170489423663200488', 13, 'disponible'),
(531, 'GT64FHD170489423664300489', 13, 'disponible'),
(532, 'GT64FHD170489423665400490', 13, 'disponible'),
(533, 'GT64FHD170489423666300491', 13, 'disponible'),
(534, 'GT64FHD170489423667300492', 13, 'disponible'),
(535, 'GT64FHD170489423668200493', 13, 'disponible'),
(536, 'GT64FHD170489423669100494', 13, 'disponible'),
(537, 'GT64FHD170489423670100495', 13, 'disponible'),
(538, 'GT64FHD170489423671200496', 13, 'disponible'),
(539, 'GT64FHD170489423672200497', 13, 'disponible'),
(540, 'GT64FHD170489423673000498', 13, 'disponible'),
(541, 'GT64FHD170489423674100499', 13, 'disponible'),
(542, 'GT64FHD170489423674900500', 13, 'disponible'),
(543, 'GT64FHD170489423675900501', 13, 'disponible'),
(544, 'GT64FHD170489423677100502', 13, 'disponible'),
(545, 'GT64FHD170489423678100503', 13, 'disponible'),
(546, 'GT64FHD170489423679200504', 13, 'disponible'),
(547, 'GT64FHD170489423680100505', 13, 'disponible'),
(548, 'GT64FHD170489423681100506', 13, 'disponible'),
(549, 'GT64FHD170489423682100507', 13, 'disponible'),
(550, 'GT64FHD170489423683100508', 13, 'disponible'),
(551, 'GT64FHD170489423684100509', 13, 'disponible'),
(552, 'GT64FHD170489423685000510', 13, 'disponible'),
(553, 'GT64FHD170489423686000511', 13, 'disponible'),
(554, 'GT64FHD170489423687100512', 13, 'disponible'),
(555, 'GT64FHD170489423688000513', 13, 'disponible'),
(556, 'GT64FHD170489423689200514', 13, 'disponible'),
(557, 'GT64FHD170489423690300515', 13, 'disponible'),
(558, 'GT64FHD170489423691100516', 13, 'disponible'),
(559, 'GT64FHD170489423692000517', 13, 'disponible'),
(560, 'GT64FHD170489423692900518', 13, 'disponible'),
(561, 'GT64FHD170489423694000519', 13, 'disponible'),
(562, 'GT64FHD170489423695000520', 13, 'disponible'),
(563, 'GT64FHD170489423696300521', 13, 'disponible'),
(564, 'GT64FHD170489423697300522', 13, 'disponible'),
(565, 'GT64FHD170489423698200523', 13, 'disponible'),
(566, 'GT64FHD170489423699200524', 13, 'disponible'),
(567, 'GT64FHD170489423700300525', 13, 'disponible'),
(568, 'GT64FHD170489423701300526', 13, 'disponible'),
(569, 'GT64FHD170489423702300527', 13, 'disponible'),
(570, 'GT64FHD170489423703200528', 13, 'disponible'),
(571, 'GT64FHD170489423704300529', 13, 'disponible'),
(572, 'GT64FHD170489423705200530', 13, 'disponible'),
(573, 'GT64FHD170489423706100531', 13, 'disponible'),
(574, 'GT64FHD170489423707200532', 13, 'disponible'),
(575, 'GT64FHD170489423708800533', 13, 'disponible'),
(576, 'GT64FHD170489423709700534', 13, 'disponible'),
(577, 'GT64FHD170489423710800535', 13, 'disponible'),
(578, 'GT64FHD170489423711700536', 13, 'disponible'),
(579, 'GT64FHD170489423712700537', 13, 'disponible'),
(580, 'GT64FHD170489423713700538', 13, 'disponible'),
(581, 'GT64FHD170489423714700539', 13, 'disponible'),
(582, 'GT64FHD170489423715700540', 13, 'disponible'),
(583, 'GT64FHD170489423716600541', 13, 'disponible'),
(584, 'GT64FHD170489423717600542', 13, 'disponible'),
(585, 'GT64FHD170489423718600543', 13, 'disponible'),
(586, 'GT64FHD170489423719600544', 13, 'disponible'),
(587, 'GT64FHD170489423720600545', 13, 'disponible'),
(588, 'GT64FHD170489423721500546', 13, 'disponible'),
(589, 'GT64FHD170489423722500547', 13, 'disponible'),
(590, 'GT64FHD170489423723500548', 13, 'disponible'),
(591, 'GT64FHD170489423724400549', 13, 'disponible'),
(592, 'GT64FHD170489423725400550', 13, 'disponible'),
(593, 'GT64FHD170489423726300551', 13, 'disponible'),
(594, 'GT64FHD170489423727500552', 13, 'disponible'),
(595, 'GT64FHD170489423728500553', 13, 'disponible'),
(596, 'GT64FHD170489423729400554', 13, 'disponible'),
(597, 'GT64FHD170489423730400555', 13, 'disponible'),
(598, 'GT64FHD170489423731200556', 13, 'disponible'),
(599, 'GT64FHD170489423732200557', 13, 'disponible'),
(600, 'GT64FHD170489423733100558', 13, 'disponible'),
(601, 'GT64FHD170489423734100559', 13, 'disponible'),
(602, 'GT64FHD170489423734900560', 13, 'disponible'),
(603, 'GT64FHD170489423736100561', 13, 'disponible'),
(604, 'GT64FHD170489423737100562', 13, 'disponible'),
(605, 'GT64FHD170489423738100563', 13, 'disponible'),
(606, 'GT64FHD170489423739500564', 13, 'disponible'),
(607, 'GT64FHD170489423740500565', 13, 'disponible'),
(608, 'GT64FHD170489423741300566', 13, 'disponible'),
(609, 'GT64FHD170489423742200567', 13, 'disponible'),
(610, 'GT64FHD170489423743100568', 13, 'disponible'),
(611, 'GT64FHD170489423744100569', 13, 'disponible'),
(612, 'GT64FHD170489423745100570', 13, 'disponible'),
(613, 'GT64FHD170489423746000571', 13, 'disponible'),
(614, 'GT64FHD170489423747100572', 13, 'disponible'),
(615, 'GT64FHD170489423747900573', 13, 'disponible'),
(616, 'GT64FHD170489423748900574', 13, 'disponible'),
(617, 'GT64FHD170489423749800575', 13, 'disponible'),
(618, 'GT64FHD170489423750900576', 13, 'disponible'),
(619, 'GT64FHD170489423751800577', 13, 'disponible'),
(620, 'GT64FHD170489423752800578', 13, 'disponible'),
(621, 'GT64FHD170489423753700579', 13, 'disponible'),
(622, 'GT64FHD170489423754600580', 13, 'disponible'),
(623, 'GT64FHD170489423755700581', 13, 'disponible'),
(624, 'GT64FHD170489423756700582', 13, 'disponible'),
(625, 'GT64FHD170489423757600583', 13, 'disponible'),
(626, 'GT64FHD170489423758600584', 13, 'disponible'),
(627, 'GT64FHD170489423759500585', 13, 'disponible'),
(628, 'GT64FHD170489423760500586', 13, 'disponible'),
(629, 'GT64FHD170489423761400587', 13, 'disponible'),
(630, 'GT64FHD170489423762500588', 13, 'disponible'),
(631, 'GT64FHD170489423763300589', 13, 'disponible'),
(632, 'GT64FHD170489423764300590', 13, 'disponible'),
(633, 'GT64FHD170489423765300591', 13, 'disponible'),
(634, 'GT64FHD170489423766200592', 13, 'disponible'),
(635, 'GT64FHD170489423767300593', 13, 'disponible'),
(636, 'GT64FHD170489423768300594', 13, 'disponible'),
(637, 'GT64FHD170489423769300595', 13, 'disponible'),
(638, 'GT64FHD170489423770400596', 13, 'disponible'),
(639, 'GT64FHD170489423771200597', 13, 'disponible'),
(640, 'GT64FHD170489423772200598', 13, 'disponible'),
(641, 'GT64FHD170489423773100599', 13, 'disponible'),
(642, 'GT64FHD170489423774200600', 13, 'disponible'),
(643, 'GT64FHD170489423775200601', 13, 'disponible'),
(644, 'GT64FHD170489423776100602', 13, 'disponible'),
(645, 'GT64FHD170489423777400603', 13, 'disponible'),
(646, 'GT64FHD170489423778300604', 13, 'disponible'),
(647, 'GT64FHD170489423779300605', 13, 'disponible'),
(648, 'GT64FHD170489423780400606', 13, 'disponible'),
(649, 'GT64FHD170489423781300607', 13, 'disponible'),
(650, 'GT64FHD170489423782300608', 13, 'disponible'),
(651, 'GT64FHD170489423783200609', 13, 'disponible'),
(652, 'GT64FHD170489423784300610', 13, 'disponible'),
(653, 'GT64FHD170489423785200611', 13, 'disponible'),
(654, 'GT64FHD170489423786100612', 13, 'disponible'),
(655, 'GT64FHD170489423787200613', 13, 'disponible'),
(656, 'GT64FHD170489423788000614', 13, 'disponible'),
(657, 'GT64FHD170489423789100615', 13, 'disponible'),
(658, 'GT64FHD170489423790100616', 13, 'disponible'),
(659, 'GT64FHD170489423791000617', 13, 'disponible'),
(660, 'GT64FHD170489423792200618', 13, 'disponible'),
(661, 'GT64FHD170489423793000619', 13, 'disponible'),
(662, 'GT64FHD170489423794000620', 13, 'disponible'),
(663, 'GT64FHD170489423794800621', 13, 'disponible'),
(664, 'GT64FHD170489423795800622', 13, 'disponible'),
(665, 'GT64FHD170489423796800623', 13, 'disponible'),
(666, 'GT64FHD170489423797900624', 13, 'disponible'),
(667, 'GT64FHD170489423798900625', 13, 'disponible'),
(668, 'GT64FHD170489423799700626', 13, 'disponible'),
(669, 'GT64FHD170489423800600627', 13, 'disponible'),
(670, 'GT64FHD170489423801400628', 13, 'disponible'),
(671, 'GT64FHD170489423802400629', 13, 'disponible'),
(672, 'GT64FHD170489423803400630', 13, 'disponible'),
(673, 'GT64FHD170489423804400631', 13, 'disponible'),
(674, 'GT64FHD170489423805500632', 13, 'disponible'),
(675, 'GT64FHD170489423807100633', 13, 'disponible'),
(676, 'GT64FHD170489423807900634', 13, 'disponible'),
(677, 'GT64FHD170489423808800635', 13, 'disponible'),
(678, 'GT64FHD170489423809700636', 13, 'disponible'),
(679, 'GT64FHD170489423810900637', 13, 'disponible'),
(680, 'GT64FHD170489423811700638', 13, 'disponible'),
(681, 'GT64FHD170489423812600639', 13, 'disponible'),
(682, 'GT64FHD170489423813700640', 13, 'disponible'),
(683, 'GT64FHD170489423814500641', 13, 'disponible'),
(684, 'GT64FHD170489423815600642', 13, 'disponible'),
(685, 'GT64FHD170489423816500643', 13, 'disponible'),
(686, 'GT64FHD170489423817600644', 13, 'disponible'),
(687, 'GT64FHD170489423818600645', 13, 'disponible'),
(688, 'GT64FHD170489423819400646', 13, 'disponible'),
(689, 'GT64FHD170489423820500647', 13, 'disponible'),
(690, 'GT64FHD170489423821500648', 13, 'disponible'),
(691, 'GT64FHD170489423822500649', 13, 'disponible'),
(692, 'GT64FHD170489423823500650', 13, 'disponible'),
(693, 'GT64FHD170489423824500651', 13, 'disponible'),
(694, 'GT64FHD170489423825500652', 13, 'disponible'),
(695, 'GT64FHD170489423826400653', 13, 'disponible'),
(696, 'GT64FHD170489423827600654', 13, 'disponible'),
(697, 'GT64FHD170489423828600655', 13, 'disponible'),
(698, 'GT64FHD170489423829500656', 13, 'disponible'),
(699, 'GT64FHD170489423830600657', 13, 'disponible'),
(700, 'GT64FHD170489423831400658', 13, 'disponible'),
(701, 'GT64FHD170489423832500659', 13, 'disponible'),
(702, 'GT64FHD170489423833700660', 13, 'disponible'),
(703, 'GT64FHD170489423834600661', 13, 'disponible'),
(704, 'GT64FHD170489423835500662', 13, 'disponible'),
(705, 'GT64FHD170489423836400663', 13, 'disponible'),
(706, 'GT64FHD170489423837400664', 13, 'disponible'),
(707, 'GT64FHD170489423838300665', 13, 'disponible'),
(708, 'GT64FHD170489423842000666', 13, 'disponible'),
(709, 'GT64FHD170489423843600667', 13, 'disponible'),
(710, 'GT64FHD170489423844800668', 13, 'disponible'),
(711, 'GT64FHD170489423845700669', 13, 'disponible'),
(712, 'GT64FHD170489423846500670', 13, 'disponible'),
(713, 'GT64FHD170489423847600671', 13, 'disponible'),
(714, 'GT64FHD170489423850400672', 13, 'disponible'),
(715, 'GT64FHD170489423851500673', 13, 'disponible'),
(716, 'GT64FHD170489423852600674', 13, 'disponible'),
(717, 'GT64FHD170489423853500675', 13, 'disponible'),
(718, 'GT64FHD170489423854400676', 13, 'disponible'),
(719, 'GT64FHD170489423857600677', 13, 'disponible'),
(720, 'GT64FHD170489423858900678', 13, 'disponible'),
(721, 'GT64FHD170489423859700679', 13, 'disponible'),
(722, 'GT64FHD170489423860600680', 13, 'disponible'),
(723, 'GT64FHD170489423861300681', 13, 'disponible'),
(724, 'GT64FHD170489423862400682', 13, 'disponible'),
(725, 'GT64FHD170489423863200683', 13, 'disponible'),
(726, 'GT64FHD170489423864300684', 13, 'disponible'),
(727, 'GT64FHD170489423866100685', 13, 'disponible'),
(728, 'GT64FHD170489423867300686', 13, 'disponible'),
(729, 'GT64FHD170489423868200687', 13, 'disponible'),
(730, 'GT64FHD170489423869100688', 13, 'disponible'),
(731, 'GT64FHD170489423870100689', 13, 'disponible'),
(732, 'GT64FHD170489423871000690', 13, 'disponible'),
(733, 'GT64FHD170489423872100691', 13, 'disponible'),
(734, 'GT64FHD170489423873100692', 13, 'disponible'),
(735, 'GT64FHD170489423874100693', 13, 'disponible'),
(736, 'GT64FHD170489423875100694', 13, 'disponible'),
(737, 'GT64FHD170489423876100695', 13, 'disponible'),
(738, 'GT64FHD170489423877300696', 13, 'disponible'),
(739, 'GT64FHD170489423878200697', 13, 'disponible'),
(740, 'GT64FHD170489423879300698', 13, 'disponible'),
(741, 'GT64FHD170489423880300699', 13, 'disponible'),
(742, 'GT64FHD170489423881100700', 13, 'disponible'),
(743, 'GT64FHD170489423882100701', 13, 'disponible'),
(744, 'GT64FHD170489423882900702', 13, 'disponible'),
(745, 'GT64FHD170489423883900703', 13, 'disponible'),
(746, 'GT64FHD170489423884800704', 13, 'disponible'),
(747, 'GT64FHD170489423885800705', 13, 'disponible'),
(748, 'GT64FHD170489423886900706', 13, 'disponible'),
(749, 'GT64FHD170489423887700707', 13, 'disponible'),
(750, 'GT64FHD170489423888700708', 13, 'disponible'),
(751, 'GT64FHD170489423889600709', 13, 'disponible'),
(752, 'GT64FHD170489423890600710', 13, 'disponible'),
(753, 'GT64FHD170489423891500711', 13, 'disponible'),
(754, 'GT64FHD170489423892400712', 13, 'disponible'),
(755, 'GT64FHD170489423893300713', 13, 'disponible'),
(756, 'GT64FHD170489423894300714', 13, 'disponible'),
(757, 'GT64FHD170489423895300715', 13, 'disponible'),
(758, 'GT64FHD170489423896200716', 13, 'disponible'),
(759, 'GT64FHD170489423897200717', 13, 'disponible'),
(760, 'GT64FHD170489423898000718', 13, 'disponible'),
(761, 'GT64FHD170489423898900719', 13, 'disponible'),
(762, 'GT64FHD170489423899800720', 13, 'disponible'),
(763, 'GT64FHD170489423900700721', 13, 'disponible'),
(764, 'GT64FHD170489423901700722', 13, 'disponible'),
(765, 'GT64FHD170489423902700723', 13, 'disponible'),
(766, 'GT64FHD170489423903800724', 13, 'disponible'),
(767, 'GT64FHD170489423904600725', 13, 'disponible'),
(768, 'GT64FHD170489423905500726', 13, 'disponible'),
(769, 'GT64FHD170489423906300727', 13, 'disponible'),
(770, 'GT64FHD170489423907400728', 13, 'disponible'),
(771, 'GT64FHD170489423908800729', 13, 'disponible'),
(772, 'GT64FHD170489423909600730', 13, 'disponible'),
(773, 'GT64FHD170489423910400731', 13, 'disponible'),
(774, 'GT64FHD170489423911300732', 13, 'disponible'),
(775, 'GT64FHD170489423912200733', 13, 'disponible'),
(776, 'GT64FHD170489423913200734', 13, 'disponible'),
(777, 'GT64FHD170489423914200735', 13, 'disponible'),
(778, 'GT64FHD170489423915300736', 13, 'disponible'),
(779, 'GT64FHD170489423916100737', 13, 'disponible'),
(780, 'GT64FHD170489423917100738', 13, 'disponible'),
(781, 'GT64FHD170489423918000739', 13, 'disponible'),
(782, 'GT64FHD170489423919100740', 13, 'disponible'),
(783, 'GT64FHD170489423920000741', 13, 'disponible'),
(784, 'GT64FHD170489423920900742', 13, 'disponible'),
(785, 'GT64FHD170489423921900743', 13, 'disponible'),
(786, 'GT64FHD170489423922700744', 13, 'disponible'),
(787, 'GT64FHD170489423923700745', 13, 'disponible'),
(788, 'GT64FHD170489423924700746', 13, 'disponible'),
(789, 'GT64FHD170489423925800747', 13, 'disponible'),
(790, 'GT64FHD170489423926700748', 13, 'disponible'),
(791, 'GT64FHD170489423927600749', 13, 'disponible'),
(792, 'GT64FHD170489423928600750', 13, 'disponible'),
(793, 'GT64FHD170489423929400751', 13, 'disponible'),
(794, 'GT64FHD170489423930500752', 13, 'disponible'),
(795, 'GT64FHD170489423931300753', 13, 'disponible'),
(796, 'GT64FHD170489423932200754', 13, 'disponible'),
(797, 'GT64FHD170489423933000755', 13, 'disponible'),
(798, 'GT64FHD170489423934000756', 13, 'disponible'),
(799, 'GT64FHD170489423934800757', 13, 'disponible'),
(800, 'GT64FHD170489423935800758', 13, 'disponible'),
(801, 'GT64FHD170489423936700759', 13, 'disponible'),
(802, 'GT64FHD170489423937600760', 13, 'disponible'),
(803, 'GT64FHD170489423938600761', 13, 'disponible'),
(804, 'GT64FHD170489423939400762', 13, 'disponible'),
(805, 'GT64FHD170489423940500763', 13, 'disponible'),
(806, 'GT64FHD170489423941500764', 13, 'disponible'),
(807, 'GT64FHD170489423942400765', 13, 'disponible'),
(808, 'GT64FHD170489423943200766', 13, 'disponible'),
(809, 'GT64FHD170489423944200767', 13, 'disponible'),
(810, 'GT64FHD170489423945300768', 13, 'disponible'),
(811, 'GT64FHD170489423946200769', 13, 'disponible'),
(812, 'GT64FHD170489423947200770', 13, 'disponible'),
(813, 'GT64FHD170489423948100771', 13, 'disponible'),
(814, 'GT64FHD170489423949100772', 13, 'disponible'),
(815, 'GT64FHD170489423950200773', 13, 'disponible'),
(816, 'GT64FHD170489423951100774', 13, 'disponible'),
(817, 'GT64FHD170489423952100775', 13, 'disponible'),
(818, 'GT64FHD170489423953000776', 13, 'disponible'),
(819, 'GT64FHD170489423954000777', 13, 'disponible'),
(820, 'GT64FHD170489423954800778', 13, 'disponible'),
(821, 'GT64FHD170489423955900779', 13, 'disponible'),
(822, 'GT64FHD170489423956800780', 13, 'disponible'),
(823, 'GT64FHD170489423957700781', 13, 'disponible'),
(824, 'GT64FHD170489423958800782', 13, 'disponible'),
(825, 'GT64FHD170489423959700783', 13, 'disponible'),
(826, 'GT64FHD170489423960600784', 13, 'disponible'),
(827, 'GT64FHD170489423961400785', 13, 'disponible'),
(828, 'GT64FHD170489423962400786', 13, 'disponible'),
(829, 'GT64FHD170489423963300787', 13, 'disponible'),
(830, 'GT64FHD170489423964300788', 13, 'disponible'),
(831, 'GT64FHD170489423965500789', 13, 'disponible'),
(832, 'GT64FHD170489423966300790', 13, 'disponible'),
(833, 'GT64FHD170489423967300791', 13, 'disponible'),
(834, 'GT64FHD170489423968100792', 13, 'disponible'),
(835, 'GT64FHD170489423969100793', 13, 'disponible'),
(836, 'GT64FHD170489423970200794', 13, 'disponible'),
(837, 'GT64FHD170489423971100795', 13, 'disponible'),
(838, 'GT64FHD170489423972000796', 13, 'disponible'),
(839, 'GT64FHD170489423972900797', 13, 'disponible'),
(840, 'GT64FHD170489423974000798', 13, 'disponible'),
(841, 'GT64FHD170489423974900799', 13, 'disponible'),
(842, 'GT64FHD170489423976000800', 13, 'disponible'),
(843, 'GT64FHD170489423977200801', 13, 'disponible'),
(844, 'GT64FHD170489423978100802', 13, 'disponible'),
(845, 'GT64FHD170489423979100803', 13, 'disponible'),
(846, 'GT64FHD170489423980000804', 13, 'disponible'),
(847, 'GT64FHD170489423981000805', 13, 'disponible'),
(848, 'GT64FHD170489423982100806', 13, 'disponible'),
(849, 'GT64FHD170489423983000807', 13, 'disponible'),
(850, 'GT64FHD170489423983900808', 13, 'disponible'),
(851, 'GT64FHD170489423984800809', 13, 'disponible'),
(852, 'GT64FHD170489423985800810', 13, 'disponible'),
(853, 'GT64FHD170489423986800811', 13, 'disponible'),
(854, 'GT64FHD170489423987800812', 13, 'disponible'),
(855, 'GT64FHD170489423988800813', 13, 'disponible'),
(856, 'GT64FHD170489423989700814', 13, 'disponible'),
(857, 'GT64FHD170489423990600815', 13, 'disponible'),
(858, 'GT64FHD170489423991400816', 13, 'disponible'),
(859, 'GT64FHD170489423992400817', 13, 'disponible'),
(860, 'GT64FHD170489423993400818', 13, 'disponible'),
(861, 'GT64FHD170489423994400819', 13, 'disponible'),
(862, 'GT64FHD170489423995400820', 13, 'disponible'),
(863, 'GT64FHD170489423996300821', 13, 'disponible'),
(864, 'GT64FHD170489423997200822', 13, 'disponible'),
(865, 'GT64FHD170489423998100823', 13, 'disponible'),
(866, 'GT64FHD170489423999200824', 13, 'disponible'),
(867, 'GT64FHD170489424000200825', 13, 'disponible'),
(868, 'GT64FHD170489424001300826', 13, 'disponible'),
(869, 'GT64FHD170489424002300827', 13, 'disponible'),
(870, 'GT64FHD170489424003200828', 13, 'disponible'),
(871, 'GT64FHD170489424004100829', 13, 'disponible'),
(872, 'GT64FHD170489424005400830', 13, 'disponible'),
(873, 'GT64FHD170489424006200831', 13, 'disponible'),
(874, 'GT64FHD170489424007200832', 13, 'disponible'),
(875, 'GT64FHD170489424008000833', 13, 'disponible'),
(876, 'GT64FHD170489424009200834', 13, 'disponible'),
(877, 'GT64FHD170489424010500835', 13, 'disponible'),
(878, 'GT64FHD170489424011500836', 13, 'disponible'),
(879, 'GT64FHD170489424013000837', 13, 'disponible'),
(880, 'GT64FHD170489424015800838', 13, 'disponible'),
(881, 'GT64FHD170489424016700839', 13, 'disponible'),
(882, 'GT64FHD170489424017700840', 13, 'disponible'),
(883, 'GT64FHD170489424018700841', 13, 'disponible'),
(884, 'GT64FHD170489424019600842', 13, 'disponible'),
(885, 'GT64FHD170489424020700843', 13, 'disponible'),
(886, 'GT64FHD170489424021700844', 13, 'disponible'),
(887, 'GT64FHD170489424022600845', 13, 'disponible'),
(888, 'GT64FHD170489424023600846', 13, 'disponible'),
(889, 'GT64FHD170489424024400847', 13, 'disponible'),
(890, 'GT64FHD170489424025400848', 13, 'disponible'),
(891, 'GT64FHD170489424026300849', 13, 'disponible'),
(892, 'GT64FHD170489424027500850', 13, 'disponible'),
(893, 'GT64FHD170489424028400851', 13, 'disponible'),
(894, 'GT64FHD170489424029400852', 13, 'disponible'),
(895, 'GT64FHD170489424030400853', 13, 'disponible'),
(896, 'GT64FHD170489424031300854', 13, 'disponible'),
(897, 'GT64FHD170489424032200855', 13, 'disponible'),
(898, 'GT64FHD170489424033200856', 13, 'disponible'),
(899, 'GT64FHD170489424034100857', 13, 'disponible'),
(900, 'GT64FHD170489424035000858', 13, 'disponible'),
(901, 'GT64FHD170489424035900859', 13, 'disponible'),
(902, 'GT64FHD170489424037100860', 13, 'disponible'),
(903, 'GT64FHD170489424038000861', 13, 'disponible'),
(904, 'GT64FHD170489424039000862', 13, 'disponible'),
(905, 'GT64FHD170489424040000863', 13, 'disponible'),
(906, 'GT64FHD170489424041100864', 13, 'disponible'),
(907, 'GT64FHD170489424042300865', 13, 'disponible'),
(908, 'GT64FHD170489424043400866', 13, 'disponible'),
(909, 'GT64FHD170489424044400867', 13, 'disponible'),
(910, 'GT64FHD170489424045500868', 13, 'disponible'),
(911, 'GT64FHD170489424046500869', 13, 'disponible'),
(912, 'GT64FHD170489424047800870', 13, 'disponible'),
(913, 'GT64FHD170489424048800871', 13, 'disponible'),
(914, 'GT64FHD170489424049700872', 13, 'disponible'),
(915, 'GT64FHD170489424050800873', 13, 'disponible'),
(916, 'GT64FHD170489424051900874', 13, 'disponible'),
(917, 'GT64FHD170489424052900875', 13, 'disponible'),
(918, 'GT64FHD170489424053800876', 13, 'disponible'),
(919, 'GT64FHD170489424054600877', 13, 'disponible'),
(920, 'GT64FHD170489424055600878', 13, 'disponible'),
(921, 'GT64FHD170489424056400879', 13, 'disponible'),
(922, 'GT64FHD170489424057500880', 13, 'disponible'),
(923, 'GT64FHD170489424058400881', 13, 'disponible'),
(924, 'GT64FHD170489424059300882', 13, 'disponible'),
(925, 'GT64FHD170489424060400883', 13, 'disponible'),
(926, 'GT64FHD170489424061300884', 13, 'disponible'),
(927, 'GT64FHD170489424062200885', 13, 'disponible'),
(928, 'GT64FHD170489424063100886', 13, 'disponible'),
(929, 'GT64FHD170489424064100887', 13, 'disponible'),
(930, 'GT64FHD170489424065100888', 13, 'disponible'),
(931, 'GT64FHD170489424066100889', 13, 'disponible'),
(932, 'GT64FHD170489424067100890', 13, 'disponible'),
(933, 'GT64FHD170489424068000891', 13, 'disponible'),
(934, 'GT64FHD170489424069100892', 13, 'disponible'),
(935, 'GT64FHD170489424070000893', 13, 'disponible'),
(936, 'GT64FHD170489424071000894', 13, 'disponible'),
(937, 'GT64FHD170489424072000895', 13, 'disponible'),
(938, 'GT64FHD170489424072900896', 13, 'disponible'),
(939, 'GT64FHD170489424073900897', 13, 'disponible'),
(940, 'GT64FHD170489424074900898', 13, 'disponible'),
(941, 'GT64FHD170489424076000899', 13, 'disponible'),
(942, 'GT64FHD170489424077100900', 13, 'disponible'),
(943, 'GT64FHD170489424078000901', 13, 'disponible'),
(944, 'GT64FHD170489424079000902', 13, 'disponible'),
(945, 'GT64FHD170489424080000903', 13, 'disponible'),
(946, 'GT64FHD170489424081000904', 13, 'disponible'),
(947, 'GT64FHD170489424082000905', 13, 'disponible'),
(948, 'GT64FHD170489424082900906', 13, 'disponible'),
(949, 'GT64FHD170489424083900907', 13, 'disponible'),
(950, 'GT64FHD170489424084700908', 13, 'disponible'),
(951, 'GT64FHD170489424086000909', 13, 'disponible'),
(952, 'GT64FHD170489424087100910', 13, 'disponible'),
(953, 'GT64FHD170489424088100911', 13, 'disponible'),
(954, 'GT64FHD170489424089100912', 13, 'disponible'),
(955, 'GT64FHD170489424089900913', 13, 'disponible'),
(956, 'GT64FHD170489424090900914', 13, 'disponible'),
(957, 'GT64FHD170489424091900915', 13, 'disponible'),
(958, 'GT64FHD170489424093000916', 13, 'disponible'),
(959, 'GT64FHD170489424093900917', 13, 'disponible'),
(960, 'GT64FHD170489424094800918', 13, 'disponible'),
(961, 'GT64FHD170489424095800919', 13, 'disponible'),
(962, 'GT64FHD170489424096600920', 13, 'disponible'),
(963, 'GT64FHD170489424097600921', 13, 'disponible'),
(964, 'GT64FHD170489424098700922', 13, 'disponible'),
(965, 'GT64FHD170489424099600923', 13, 'disponible'),
(966, 'GT64FHD170489424100600924', 13, 'disponible'),
(967, 'GT64FHD170489424101400925', 13, 'disponible');
INSERT INTO `serial_number` (`id`, `serial_number`, `product_id`, `status`) VALUES
(968, 'GT64FHD170489424102400926', 13, 'disponible'),
(969, 'GT64FHD170489424103400927', 13, 'disponible'),
(970, 'GT64FHD170489424104400928', 13, 'disponible'),
(971, 'GT64FHD170489424105400929', 13, 'disponible'),
(972, 'GT64FHD170489424106300930', 13, 'disponible'),
(973, 'GT64FHD170489424107300931', 13, 'disponible'),
(974, 'GT64FHD170489424108200932', 13, 'disponible'),
(975, 'GT64FHD170489424109200933', 13, 'disponible'),
(976, 'GT64FHD170489424110400934', 13, 'disponible'),
(977, 'GT64FHD170489424111500935', 13, 'disponible'),
(978, 'GT64FHD170489424112500936', 13, 'disponible'),
(979, 'GT64FHD170489424113300937', 13, 'disponible'),
(980, 'GT64FHD170489424114200938', 13, 'disponible'),
(981, 'GT64FHD170489424115200939', 13, 'disponible'),
(982, 'GT64FHD170489424116300940', 13, 'disponible'),
(983, 'GT64FHD170489424117300941', 13, 'disponible'),
(984, 'GT64FHD170489424118100942', 13, 'disponible'),
(985, 'GT64FHD170489424119200943', 13, 'disponible'),
(986, 'GT64FHD170489424120200944', 13, 'disponible'),
(987, 'GT64FHD170489424121100945', 13, 'disponible'),
(988, 'GT64FHD170489424122200946', 13, 'disponible'),
(989, 'GT64FHD170489424123000947', 13, 'disponible'),
(990, 'GT64FHD170489424124200948', 13, 'disponible'),
(991, 'GT64FHD170489424125300949', 13, 'disponible'),
(992, 'GT64FHD170489424126200950', 13, 'disponible'),
(993, 'GT64FHD170489424127200951', 13, 'disponible'),
(994, 'GT64FHD170489424128100952', 13, 'disponible'),
(995, 'GT64FHD170489424129200953', 13, 'disponible'),
(996, 'GT64FHD170489424130300954', 13, 'disponible'),
(997, 'GT64FHD170489424131600955', 13, 'disponible'),
(998, 'GT64FHD170489424132700956', 13, 'disponible'),
(999, 'GT64FHD170489424133600957', 13, 'disponible'),
(1000, 'GT64FHD170489424134500958', 13, 'disponible'),
(1001, 'GT64FHD170489424135500959', 13, 'disponible'),
(1002, 'GT64FHD170489424136400960', 13, 'disponible'),
(1003, 'GT64FHD170489424137600961', 13, 'disponible'),
(1004, 'GT64FHD170489424138700962', 13, 'disponible'),
(1005, 'GT64FHD170489424139600963', 13, 'disponible'),
(1006, 'GT64FHD170489424140700964', 13, 'disponible'),
(1007, 'GT64FHD170489424141600965', 13, 'disponible'),
(1008, 'GT64FHD170489424142500966', 13, 'disponible'),
(1009, 'GT64FHD170489424143500967', 13, 'disponible'),
(1010, 'GT64FHD170489424144500968', 13, 'disponible'),
(1011, 'GT64FHD170489424145500969', 13, 'disponible'),
(1012, 'GT64FHD170489424146500970', 13, 'disponible'),
(1013, 'GT64FHD170489424147500971', 13, 'disponible'),
(1014, 'GT64FHD170489424148600972', 13, 'disponible'),
(1015, 'GT64FHD170489424149400973', 13, 'disponible'),
(1016, 'GT64FHD170489424150300974', 13, 'disponible'),
(1017, 'GT64FHD170489424151200975', 13, 'disponible'),
(1018, 'GT64FHD170489424152400976', 13, 'disponible'),
(1019, 'GT64FHD170489424153200977', 13, 'disponible'),
(1020, 'GT64FHD170489424154300978', 13, 'disponible'),
(1021, 'GT64FHD170489424155200979', 13, 'disponible'),
(1022, 'GT64FHD170489424156100980', 13, 'disponible'),
(1023, 'GT64FHD170489424157100981', 13, 'disponible'),
(1024, 'GT64FHD170489424158000982', 13, 'disponible'),
(1025, 'GT64FHD170489424158900983', 13, 'disponible'),
(1026, 'GT64FHD170489424159800984', 13, 'disponible'),
(1027, 'GT64FHD170489424160700985', 13, 'disponible'),
(1028, 'GT64FHD170489424161500986', 13, 'disponible'),
(1029, 'GT64FHD170489424162500987', 13, 'disponible'),
(1030, 'GT64FHD170489424163700988', 13, 'disponible'),
(1031, 'GT64FHD170489424165500989', 13, 'disponible'),
(1032, 'GT64FHD170489424166300990', 13, 'disponible'),
(1033, 'GT64FHD170489424167300991', 13, 'disponible'),
(1034, 'GT64FHD170489424168100992', 13, 'disponible'),
(1035, 'GT64FHD170489424169100993', 13, 'disponible'),
(1036, 'GT64FHD170489424170100994', 13, 'disponible'),
(1037, 'GT64FHD170489424171100995', 13, 'disponible'),
(1038, 'GT64FHD170489424172200996', 13, 'disponible'),
(1039, 'GT64FHD170489424173000997', 13, 'disponible'),
(1040, 'GT64FHD170489424174100998', 13, 'disponible'),
(1041, 'GT64FHD170489424175000999', 13, 'disponible'),
(1042, 'GT64FHD170522678423900000', 13, 'disponible'),
(1043, 'GT64FHD170522678433200001', 13, 'disponible'),
(1044, 'GT64FHD170522678439600002', 13, 'disponible'),
(1045, 'GT64FHD170522678445500003', 13, 'disponible'),
(1046, 'GT64FHD170522678451800004', 13, 'disponible'),
(1047, 'GT64FHD170522678458800005', 13, 'disponible'),
(1048, 'GT64FHD170522678466900006', 13, 'disponible'),
(1049, 'GT64FHD170522678471800007', 13, 'disponible'),
(1050, 'GT64FHD170522678478400008', 13, 'disponible'),
(1051, 'GT64FHD170522678488300009', 13, 'disponible'),
(1052, 'GT64FHD170522678491500010', 13, 'disponible'),
(1053, 'GT64FHD170522678495700011', 13, 'disponible'),
(1054, 'GT64FHD170522678503500012', 13, 'disponible'),
(1055, 'GT64FHD170522678506800013', 13, 'disponible'),
(1056, 'GT64FHD170522678509900014', 13, 'disponible'),
(1057, 'GT64FHD170522678514200015', 13, 'disponible'),
(1058, 'GT64FHD170522678517900016', 13, 'disponible'),
(1059, 'GT64FHD170522678520400017', 13, 'disponible'),
(1060, 'GT64FHD170522678523000018', 13, 'disponible'),
(1061, 'GT64FHD170522678526800019', 13, 'disponible'),
(1062, 'GT32FHD170522696856400000', 12, 'disponible'),
(1063, 'GT32FHD170522696869900001', 12, 'disponible'),
(1064, 'GT32FHD170522703401600000', 12, 'disponible'),
(1065, 'GT32FHD170522703407900001', 12, 'disponible'),
(1066, 'GT32FHD170522703416300002', 12, 'disponible'),
(1067, 'GT32FHD170523798143400000', 12, 'disponible'),
(1068, 'GT32FHD170523798156600001', 12, 'disponible'),
(1069, 'GT32FHD170523798163100002', 12, 'disponible'),
(1070, 'GT32FHD170523798167600003', 12, 'disponible'),
(1071, 'GT32FHD170523798174300004', 12, 'disponible'),
(1072, 'GT32FHD170523799200800000', 12, 'disponible'),
(1073, 'GT32FHD170523799204600001', 12, 'disponible'),
(1074, 'GT32FHD170523799207600002', 12, 'disponible'),
(1075, 'GT32FHD170523799213900003', 12, 'disponible'),
(1076, 'GT32FHD170523799217400004', 12, 'disponible'),
(1077, 'GT32FHD170523804471700000', 12, 'disponible'),
(1078, 'GT32FHD170523804481700001', 12, 'disponible'),
(1079, 'GT32FHD170523804490900002', 12, 'disponible'),
(1080, 'GT32FHD170523804496300003', 12, 'disponible'),
(1081, 'GT32FHD170523804501500004', 12, 'disponible');

-- --------------------------------------------------------

--
-- Structure de la table `sizeproduct`
--

CREATE TABLE `sizeproduct` (
  `id` int(11) NOT NULL,
  `size` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sizeproduct`
--

INSERT INTO `sizeproduct` (`id`, `size`) VALUES
(1, '32'),
(2, '64');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `phone`, `email`, `password`, `usertype_id`) VALUES
(1, 'superuser', 'ILYES', '0550124578', 'ilyes@gmail.com', '$2b$08$A2v3gf27irz8JWZsvUj9U.e77jU/vLnzE6ZRDAi19PJ1i8xDIIgFq', 1),
(2, 'MOSBAH', 'RAMZI', '0660124578', 'zamzi@gmail.com', '$2b$08$CDTsFGsIcjGL7STiob08ReGFgmae0lvFNgxM30J1F9XaZHaFYhw4.', 2),
(3, 'userpdv1', 'pdvuser', '0560586963', 'email@gmail.com', '$2b$08$qRIQXU10mNm2AwU/fgHxK.R0Y/Ysa.7/FWMh5/rEENQkOT.alALMi', 1);

-- --------------------------------------------------------

--
-- Structure de la table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usertype`
--

INSERT INTO `usertype` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'controle de gestion'),
(3, 'validateur des comptes');

-- --------------------------------------------------------

--
-- Structure de la table `vent`
--

CREATE TABLE `vent` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `Pdv_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Client_id` int(11) NOT NULL,
  `serial_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vent`
--

INSERT INTO `vent` (`id`, `date`, `Pdv_id`, `Product_id`, `Client_id`, `serial_number`) VALUES
(91, '2024-01-01 00:00:00', 2, 12, 20, 'GT32FHD170489316842400000'),
(93, '2024-01-01 00:00:00', 2, 12, 20, 'GT32FHD170489316842400000'),
(94, '2024-01-16 10:49:18', 25, 12, 101, 'GT32FHD170489316842400000'),
(95, '2024-01-16 10:49:23', 25, 12, 102, 'GT32FHD170489316842400000'),
(96, '2024-01-16 10:54:38', 25, 12, 103, 'GT32FHD170489316842400000'),
(97, '2024-01-16 10:56:55', 25, 12, 104, 'GT32FHD170489316842400000'),
(98, '2024-01-16 10:58:02', 25, 12, 105, 'GT32FHD170489316842400000'),
(99, '2024-01-16 11:57:20', 25, 12, 106, 'GT32FHD170489316842400000'),
(100, '2024-01-21 07:56:05', 25, 12, 107, 'GT32FHD170489316855600001');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cadeaux`
--
ALTER TABLE `cadeaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `Pdv_id` (`Pdv_id`);

--
-- Index pour la table `commandestatus`
--
ALTER TABLE `commandestatus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_has_product`
--
ALTER TABLE `commande_has_product`
  ADD PRIMARY KEY (`commande_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdv_id` (`pdv_id`);

--
-- Index pour la table `pdv`
--
ALTER TABLE `pdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdvstatus_id` (`pdvstatus_id`),
  ADD KEY `pdvgrade_id` (`pdvgrade_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `pdvgrade`
--
ALTER TABLE `pdvgrade`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pdvstatus`
--
ALTER TABLE `pdvstatus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_resolution_product` (`resolution`),
  ADD KEY `fk_taille_product` (`taille`);

--
-- Index pour la table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abrv` (`abrv`);

--
-- Index pour la table `resolutionproduct`
--
ALTER TABLE `resolutionproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abrv` (`abrv`);

--
-- Index pour la table `serial_number`
--
ALTER TABLE `serial_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ck_unique_nbr` (`serial_number`),
  ADD KEY `fk_product_serial_number` (`product_id`);

--
-- Index pour la table `sizeproduct`
--
ALTER TABLE `sizeproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `size` (`size`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype_id` (`usertype_id`);

--
-- Index pour la table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vent`
--
ALTER TABLE `vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pdv_id` (`Pdv_id`),
  ADD KEY `Product_id` (`Product_id`),
  ADD KEY `Client_id` (`Client_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cadeaux`
--
ALTER TABLE `cadeaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `commandestatus`
--
ALTER TABLE `commandestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `pdv`
--
ALTER TABLE `pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `pdvgrade`
--
ALTER TABLE `pdvgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pdvstatus`
--
ALTER TABLE `pdvstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resolutionproduct`
--
ALTER TABLE `resolutionproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `serial_number`
--
ALTER TABLE `serial_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT pour la table `sizeproduct`
--
ALTER TABLE `sizeproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vent`
--
ALTER TABLE `vent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `commandestatus` (`id`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`Pdv_id`) REFERENCES `pdv` (`id`);

--
-- Contraintes pour la table `commande_has_product`
--
ALTER TABLE `commande_has_product`
  ADD CONSTRAINT `commande_has_product_ibfk_1` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `commande_has_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `gain`
--
ALTER TABLE `gain`
  ADD CONSTRAINT `gain_ibfk_2` FOREIGN KEY (`pdv_id`) REFERENCES `pdv` (`id`);

--
-- Contraintes pour la table `pdv`
--
ALTER TABLE `pdv`
  ADD CONSTRAINT `pdv_ibfk_1` FOREIGN KEY (`pdvstatus_id`) REFERENCES `pdvstatus` (`id`),
  ADD CONSTRAINT `pdv_ibfk_2` FOREIGN KEY (`pdvgrade_id`) REFERENCES `pdvgrade` (`id`),
  ADD CONSTRAINT `pdv_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_resolution_product` FOREIGN KEY (`resolution`) REFERENCES `resolutionproduct` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_taille_product` FOREIGN KEY (`taille`) REFERENCES `sizeproduct` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `productcategory` (`id`);

--
-- Contraintes pour la table `serial_number`
--
ALTER TABLE `serial_number`
  ADD CONSTRAINT `fk_product_serial_number` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`id`);

--
-- Contraintes pour la table `vent`
--
ALTER TABLE `vent`
  ADD CONSTRAINT `vent_ibfk_1` FOREIGN KEY (`Pdv_id`) REFERENCES `pdv` (`id`),
  ADD CONSTRAINT `vent_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `vent_ibfk_3` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
