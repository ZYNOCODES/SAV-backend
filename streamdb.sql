-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 fév. 2024 à 14:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `streamdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `agentsagrees`
--

CREATE TABLE `agentsagrees` (
  `id` bigint(20) NOT NULL,
  `Nom` varchar(55) DEFAULT NULL,
  `Prenom` varchar(55) DEFAULT NULL,
  `Region` varchar(55) DEFAULT NULL,
  `Telephone` varchar(55) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Localisation` varchar(255) DEFAULT NULL,
  `Local` varchar(55) DEFAULT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `agentsagrees`
--

INSERT INTO `agentsagrees` (`id`, `Nom`, `Prenom`, `Region`, `Telephone`, `Adresse`, `Localisation`, `Local`, `createdAt`, `updatedAt`) VALUES
(1, 'DAHCHACHE', 'Djemai', 'BATNA', '0782055836   ', 'Rue les freres DEBBABI N 08 Bouakal 03- BATNA', 'Spa khadamaty Batna', NULL, '2023-09-12', '2023-09-12'),
(2, 'MMALEM', 'Abdelkrim', 'GUELMA', '0798131302 / 0794219416', 'Cite Oued EL-Skhoun part 12 - Guelma', 'Elmoussaïd Eléctoménager', NULL, '2023-09-12', '2023-09-12'),
(3, 'KHECHMAR', 'Mohammed Cherif', 'JIJEL', '0558600145', 'Ouled Aissa - JIJEL', 'Stream system SAV, شارع بوفروم محمد, Jijel 18000‭', NULL, '2023-09-12', '2023-09-12'),
(4, 'MOUHOUBI', 'Tahar', 'BEJAIA', '0670080434 ', '03, Rue A. Touati Bejaia', '36.754149,5.082873', NULL, '2023-09-12', '2023-09-12'),
(5, 'REDOUANE', 'Chaouki', 'OUM EL-BOUAGHI', '0558896663 ', 'Cite EL-HORIA chez DJARFRI SAID - OUM EL-BOUAGHI', '35.8733313,7.1052314', NULL, '2023-09-12', '2023-09-12'),
(6, 'REDOUANE', 'Chaouki', 'OUM EL-BOUAGHI', '0558896663 ', 'Rue GRABSI - AIN MLILA', '36.045417,6.566768', NULL, '2023-09-12', '2023-09-12'),
(7, 'BOUGHIOUT', 'Khaled', 'SKIKDA', '0771933427', 'Cite Khazouz Tahar, N 276 Filfila- SKIKDA', '36.893331,7.051619', NULL, '2023-09-12', '2023-09-12'),
(8, 'KIZANE', 'Abderrahmane', 'DJELFA', '0540598388 ', 'Cite Ben Djarma, Batiment 363 N 46 - DJELFA', 'M69W+24Q Kizane reparation electronique, Djelfa', NULL, '2023-09-12', '2023-09-12'),
(9, 'MANCER', 'Yahia', 'BOUIRA', '0559640241 ', 'Cite ZEMOURI Med Aarab N 36 - BOUIRA', '36.378111,3.891413', NULL, '2023-09-12', '2023-09-12'),
(10, 'BOUGUETTAYA', 'Azzedine', 'BBA', '0673594417', 'Local N 01 section Boussana cite ABD ALMOMEN (LAGRAF) N 92 - BBA ', 'AZZEDDINE Réparation TV/s.a.v STREAM SYSTEM, LAGRAF N°92, Bordj Bou Arreridj', NULL, '2023-09-12', '2023-09-12'),
(11, 'BEN GRICHE', 'Brahim', 'BOUMERDES', '0770258571 ', 'Cite 800 Logts (en face la radio) - BOUMERDES', 'QF77+M79 Ets bengriche service après vente khadamaty, Boumerdès', NULL, '2023-09-12', '2023-09-12'),
(12, 'CHERIET', 'Nabil', 'EL-OUED', '0561765190 ', 'Cite AL-NAZLAH EL-OUADI en face de ladirection AM-MOUDJAHIDINESANAZLA  W-EL-OUED', '9VF5+CRR مصحة نور، الوادي،‭', 'SARL ONE SMART SERVICES', '2023-09-12', '2023-09-12'),
(13, 'MEBARKIA', ' Yacine', ' OUARGLA', '0672770742 ', 'Cite Chaabani Hassi Messaoud - W. OUARGLA', 'M3R5+MHQ TECHNOSAT, Hassi Messaoud', 'TECHNOSAT', '2023-09-12', '2023-09-12'),
(14, 'KADDOUR', 'Samir', 'TOUGGOURT', '0673568660 / 0675276169 ', 'Cite EL-Moudjahed 23 commune Tebesbest - TOUGGOURT', '33.118449,6.084941', NULL, '2023-09-12', '2023-09-12'),
(15, 'MOKRANI', 'Radouane', 'M\'sila', '0655118217 ', 'Cite 504 Logements - MSILA  ', '35.723633,4.526694', NULL, '2023-09-12', '2023-09-12'),
(16, 'AGHELIS', 'Kassa', 'ANNABA', '0661870800 ', 'Coop WAFA 02 Local 05 EL-BOUNI - ANNABA', 'Aghelis KaSsa', NULL, '2023-09-12', '2023-09-12'),
(17, 'HADJ CHERIF', 'Nasr Eddine', 'Chlef', '0791931933', 'Cite Bensouna 48 LOGTS Bloc N 03 - CHLEF', NULL, NULL, '2023-09-12', '2023-09-12'),
(18, 'AISSAT', 'Billel', 'MOSTAGANEM', '0782219644 ', 'Rue KLOUAA Charef N 3 Groupe N 43 Section N 42 -Commune Mezghrane - MOSTAGANEM', 'V3WF 3H6 Khadamaty خدماتي, Mezghrane', 'SARL AKRAM NOR', '2023-09-12', '2023-09-12'),
(19, 'MERABBI', 'Mohammed', 'SIDI BEL ABES', '0550480411 ', 'Rue BALAHA Aissa N 04- SIDI BEL ABES', '35.190822,-0.627397', NULL, '2023-09-12', '2023-09-12'),
(20, 'BENMANSOUR', 'Lahcene', 'MAGHNIA (TLEMCEN)', '0791797479 ', 'Rue 46 N 03 Hai EL-Fateh (Renovation el-matmour djedid) - MAGHNIA', '34.856051,-1.738595', NULL, '2023-09-12', '2023-09-12'),
(21, 'ELBACHIR', 'Mohamed-Ilyes', 'TLEMCEN', '0793353989', 'Cite Imama - TLEMCEN', NULL, NULL, '2023-09-12', '2023-09-12'),
(22, 'DAHMANE', 'Mohammed', 'ADRAR', '0770163137 ', 'Cite GRAOUI Ahmed 65 logts ADRAR - ADRAR', '\n27.880974,-0.290122\n', NULL, '2023-09-12', '2023-09-12'),
(23, 'CHEMLAL', 'Bouziane', 'BECHAR', '0661590850 ', 'Cite MERACHAH Djamel N 048 centre-ville - BECHAR', '31.618965,-2.214399', NULL, '2023-09-12', '2023-09-12'),
(24, 'CHOUGRANI', 'Djilali', 'TIARET', '0541375580 / 0770125894 ', 'Local N 01, Rue Ain Guessem participation 157 Groupe N 02 - TIARET', NULL, NULL, '2023-09-12', '2023-09-12'),
(25, 'BENROKHROKH', 'Mohamed', 'RELIZANE', '0771313266 ', 'Rue ISMAINE MOSTAPHA et Rue EL-AARBI TEBASSI - RELIZANE', '35.744618,0.559546', NULL, '2023-09-12', '2023-09-12'),
(26, 'RAHMANI', 'Karima', 'TINDOUF', '0662256038 / 0771004729 ', 'Local N 03 cite KASBI (EL-GUASSABI) - TINDOUF', '27.675688,-8.136438\n', NULL, '2023-09-12', '2023-09-12'),
(27, 'BELKHATIR', 'Djamel', 'AIN TEMOUCHENT', '0669346668 ', 'N 50 C Rue Amir AEK - AIN TEMOUCHENT', '35.293219,-1.138597', NULL, '2023-09-12', '2023-09-12'),
(28, 'BOURAHLA', 'Mohammed', 'MECHERIA - NAAMA', '0772456752 ', 'Boulevard AEK centre-ville MECHERIA - NAAMA', NULL, NULL, '2023-09-12', '2023-09-12'),
(29, 'LAATI', 'Fateh', 'KAIS - KHENCHELA', '0670002023 / 0772952789', 'Rue Abes LAGHROUR KAIS - KHENCHELA', '35.49474,6.92400', NULL, '2023-09-12', '2023-09-12'),
(30, 'YOUSFI', 'Samira', 'TEBESSA', '0699358617', 'Cite des Jardins HAMMAMET 12016 - TEBESSA', '35.449461,7.949633', NULL, '2023-09-12', '2023-09-12'),
(31, 'KOUACHI', 'Ammar', 'SOUK AHRAS', '0559074287 / 0657731885', 'Cite 300/108 habitants Djenane Teffah batiment N 07 local N 04 - SOUK AHRAS', 'Souk Ahras, Souk-Ahras', NULL, '2023-09-12', '2023-09-12'),
(32, 'TRAD', 'Mounir', ' EL TARF - Ben M\'HIDI', '0674560567 ', 'Cite HOUARI BOUMADIEN, Ben M\'HIDI - EL TARF', 'MOUNIR SAT', NULL, '2023-09-12', '2023-09-12'),
(33, 'ACHOURI', 'Mouaad', 'EL TARF', '0669131655 ', 'Rue REKKAB Ammar local N 02 - EL TARF', '36.768368,8.313876', NULL, '2023-09-12', '2023-09-12'),
(34, 'REDOUANE', 'Chaouki', 'MILA', '0558896663 ', 'Cite BOULMARKA - MILA', NULL, NULL, '2023-09-12', '2023-09-12'),
(35, 'DRISS', 'Khelifa', 'SAIDA', '0662698048 ', 'Rue GRINA Mohamed N 20- SAIADA', '34.83059,0.145339', NULL, '2023-09-12', '2023-09-12'),
(36, NULL, NULL, 'GHARDAIA', NULL, NULL, NULL, NULL, '2023-09-12', '2023-09-12'),
(37, 'BENBATTOUCHE', 'Abdelali', 'BARIKA', '0772538903 / 0663030808', 'Cite 712 Logements, Local N 57, BARIKA- BATNA', 'مسجد عثمان بن عفان حي 1000 مسكن، حي 1000 مسكن, Barika‭', NULL, '2023-09-12', '2023-09-12'),
(38, 'BOUAZZA', 'Omar', 'ANNABA Ville ', '0556505539 ', 'Rue Colonel AMIROUCHE N 84 - ANNABA (Pont Blanc)', '36.905173,7.743826', NULL, '2023-09-12', '2023-09-12'),
(39, 'FERMAS', 'Okba', 'BISKRA', '0660435407 ', 'Cite 96 LOGTS N 76 Batiment A 17, SIDI OKBA - BISKARA', 'OKBA-SAT، LOCAL N°23 CITE 96 LGT/S، SIDI OKBA 07005، Sidi Okba 07005', NULL, '2023-09-12', '2023-09-12'),
(40, NULL, NULL, 'MASCARA', '0798631520 ', 'Rue BOUGUESRI Tahar -MASCARA', '94VR+QQP khadamaty, Mascara', 'EURL UNITED BROTHRS TRADING', '2023-09-12', '2023-09-12'),
(41, 'LADJAL', 'Farida', 'SETIF', '0790711850 / 0664568184 ', 'Cite HACHEMI 03 N H/66 Rue LITOUFI Abdelhamid - SETIF (EL-HIDHAB)', '36.207294,5.442177', NULL, '2023-09-12', '2023-09-12'),
(42, 'BECHOU', 'ABD EL-OUAHAB', 'MOZIA - BLIDA', '0778117308 / 0562085361', 'Rue de 1er Novembre N 112 MOUZAIA - BLIDA', NULL, NULL, '2023-09-12', '2023-09-12'),
(43, 'ZOUYAYE', 'Hadj', 'MASCARA', '0772965723 / 0542908676 ', 'Local N 03 cite SIDI M\'Hamed Proprietaire 308 MOHAMMADIA- MASCARA', NULL, NULL, '2023-09-12', '2023-09-12'),
(44, ' CHATTA', '  OMAR ELFAROUK', 'LAGHOUAT', '0553419681', 'EL-WIAM- LAGHOUAT', NULL, NULL, '2023-09-12', '2023-09-12'),
(45, 'CHEKLAT', 'OUSSAMA DAYAEDDINE', 'DAR EL-BEIDA', '0663007950', 'Cite Chahid Said Chahat BaisCoop Immo EL Amel Loc N 02 DAR EL-BEIDA-ALGER', NULL, NULL, '2023-09-12', '2023-09-12'),
(46, 'CHERIET', 'Nabil', 'BIRTOUTA', '0550326838 / 0550326837', 'Villa N 02 Zone Promotionnelle  N 16 BIRTOUTA - ALGER', NULL, 'SARL ONE SMART SERVICES', '2023-09-12', '2023-09-12'),
(47, 'SID MOHAND', 'Larbi', 'AZZAZGA', '0549652438', 'Local N A Rez-de chaussee Village AMEDJROURAD - AZZAZGA - TIZI-OUZOU', NULL, NULL, '2023-09-12', '2023-09-12'),
(48, 'BENLOKRICHI', 'Hamza', 'REGHAiA', '0791955085', 'Zone AISSAT Mostapha Local N A 05 - REGHA?A - ALGER', NULL, NULL, '2023-09-12', '2023-09-12'),
(49, 'MADJED', 'Tarek', 'CHERAGA', '0560592925', 'Cite DJAFAR Slimane - CHERAGA - ALGER', NULL, NULL, '2023-09-12', '2023-09-12'),
(50, 'RAMDANI', 'Younes', 'AKBOU', '0555364711', 'Rue de la sante- AKBOU -- BEJAIA', NULL, NULL, '2023-09-12', '2023-09-12'),
(51, 'BECETTI', 'Houria', 'SIDI AKKACHA - TENES', '0559151066', 'Rue 1er Novembre Local 25 BIS SIDI AKKACHA - TENES -CHELEF', NULL, NULL, '2023-09-12', '2023-09-12'),
(52, NULL, NULL, 'DJELFA', '0550538446 / 0665969686   ', 'Cite nouvelle mosquee BT162 N 307 - DJELFA', NULL, 'SARL ONE SMART SERVICES ', '2023-09-12', '2023-09-12'),
(53, 'DENIDENI', 'Salah', 'LES EUCALYPTUS - ALGER', '0696690027 / 0670310940 ', 'Cite 280 LOGTS BT 06 N 13 - LES EUCALYPTUS - ALGER', NULL, NULL, '2023-09-12', '2023-09-12'),
(54, 'ZERMANE', 'Mustapha', 'BEAU LIEU - ALGER', '023926786 / 0771244499', 'Rue 22 villa N 131, OUED SMAR - BEAU LIEU - ALGER', NULL, NULL, '2023-09-12', '2023-09-12');

-- --------------------------------------------------------

--
-- Structure de la table `pannes`
--

CREATE TABLE `pannes` (
  `id` bigint(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telephone` varchar(255) NOT NULL,
  `ReferanceProduit` varchar(255) NOT NULL,
  `NbrSerie` varchar(255) DEFAULT NULL,
  `TypePanne` varchar(255) NOT NULL,
  `Wilaya` varchar(20) NOT NULL,
  `CentreDepot` varchar(20) NOT NULL,
  `DateDepot` datetime NOT NULL DEFAULT current_timestamp(),
  `FinReparation` datetime DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Progres` int(11) DEFAULT 0,
  `StatueGarantie` varchar(55) DEFAULT NULL,
  `ActionCorrective` varchar(255) DEFAULT NULL,
  `DescriptionAC` varchar(255) DEFAULT NULL,
  `Etat` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `BDPDFfile` varchar(255) DEFAULT NULL,
  `BLPDFfile` varchar(255) DEFAULT NULL,
  `UserID` bigint(20) DEFAULT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pannes`
--

INSERT INTO `pannes` (`id`, `Nom`, `Prenom`, `Email`, `Telephone`, `ReferanceProduit`, `NbrSerie`, `TypePanne`, `Wilaya`, `CentreDepot`, `DateDepot`, `FinReparation`, `Description`, `Progres`, `StatueGarantie`, `ActionCorrective`, `DescriptionAC`, `Etat`, `image`, `BDPDFfile`, `BLPDFfile`, `UserID`, `createdAt`, `updatedAt`) VALUES
(275, 'Boumra', 'zine eddine', 'zineeddine.boumrar@gmail.com', '078295266', 'TV S 43A50 FHD SMART', '8957858466', 'Blocage logo', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:32:53', '2024-01-28 19:10:51', NULL, 2, 'Sous Reserve', 'Changement de sheets-Isolation de la dalle', 'hello its observation', '6165165', NULL, 'BD06352024020115444816000.pdf', NULL, 25, '2023-10-16', '2024-02-01'),
(276, 'Boumra', 'zine eddine', 'zineeddine.boumrar@gmail.com', '078295266', 'TV WSTRU5022FKT', NULL, 'Écran bleu', 'Blida', 'BLIDA', '2023-10-17 19:50:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16', '2023-10-16'),
(277, 'Boumra', 'zine eddine', 'zineeddine.boumrar@gmail.com', '078295266', 'TV WSTRU5022FKT', NULL, 'Problème d\'afficheur', 'Blida', 'BLIDA', '2023-10-19 22:50:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16', '2023-10-16'),
(278, 'Boumra', 'zine eddine', 'zineeddine.boumrar@gmail.com', '078295266', 'TV 43A50 FHD SMART', NULL, 'Problème de démo', 'Medea', 'MEDEA', '2023-10-17 22:50:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16', '2023-10-16'),
(279, 'Dekkiche', 'Abdellah', 'abdellah.dekkiche@gmail.com', '0651131140', 'BM3219SMART', NULL, 'Trait sur écran (horizontal)', 'Oran', 'ORAN', '2023-10-17 19:55:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16', '2023-10-16'),
(280, 'Dekkiche', 'Abdellah', 'abdellah.dekkiche@gmail.com', '0651131140', 'TV S24T1', NULL, 'Problème de démo', 'Oran', 'ORAN', '2023-10-17 19:55:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16', '2023-10-16'),
(281, 'Dekkiche', 'Abdellah', 'abdellah.dekkiche@gmail.com', '0651131140', 'BM46830', '89894d4445', 'Problème du son', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:15:07', '2024-02-01 16:15:29', NULL, 5, 'Sous Reserve', 'Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur)', 'hello its observation', NULL, NULL, 'BD07232024020116150616000.pdf', 'BL01952024012819301316000.pdf', 25, '2023-10-16', '2024-02-01'),
(283, 'Dekkiche', 'Abdellah', 'abdellah.dekkiche@gmail.com', '0651131140', 'BM46830', '56464q464', 'Problème du son', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:22:27', '2024-01-29 19:25:54', NULL, 2, 'Sous Garantie', 'Changement de SMPS', 'hello its observation of stream', NULL, NULL, 'BD06122024020116222616000.pdf', 'BL0607202310182320176000.pdf', 25, '2023-10-16', '2024-02-01'),
(284, 'Dekkiche', 'Abdellah', 'abdellah.dekkiche@gmail.com', '0651131140', 'BM46830', '984897389', 'Problème du son', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 14:04:46', '2023-10-18 23:30:38', NULL, 5, 'Sous Reserve', NULL, NULL, '454654', NULL, 'BD07922024020114044516000.pdf', 'BL0776202310182322316000.pdf', 25, '2023-10-16', '2024-02-01'),
(285, 'khaldi', 'Abdelmoumen', 'abdelmoumen.khaldi@gmail.com', '0653998412', 'TV BM 40L81+', '7897896738', 'Problème d\'allumage', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:35:37', '2024-02-01 16:36:09', NULL, 5, 'Sous Reserve', 'Isolation de la dalle-Reprogrammation de la mémoire flash', 'hello its observation from stream after sales service of BEAU LIEU - ALGER', NULL, NULL, 'BD07332024020116353616000.pdf', 'BL09542024012919234216000.pdf', 25, '2023-10-17', '2024-02-01'),
(296, 'khaldi', 'Abdelmoumen', 'abdelmoumen.khaldi@gmail.com', '0653998412', 'TV BM 40L81+', '87789979982', 'Problème d\'allumage', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 15:41:37', '2023-10-18 23:08:43', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD04442024020115413516000.pdf', 'BL0326202310182308276000.pdf', 25, '2023-10-17', '2024-02-01'),
(309, 'yacine', 'hakem', 'yacine.hakem@gmail.com', '0365217400', 'BM5019 SMART', '5668d4648645', 'Problème HDMI', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 15:43:19', '2023-10-28 00:44:37', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0199202402011543179000.pdf', 'BL0075202310280040399000.pdf', 25, '2023-10-17', '2024-02-01'),
(310, 'yacine', 'hakem', 'yacine.hakem@gmail.com', '0365217400', 'BM5019 SMART', 's465646645', 'Problème HDMI', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 14:08:26', '2023-10-19 00:12:55', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0757202402011408259000.pdf', 'BL0880202310190011129000.pdf', 25, '2023-10-17', '2024-02-01'),
(311, 'yacine', 'hakem', 'yacine.hakem@gmail.com', '0365217400', 'BM5019 SMART', '6554765476547', 'Problème HDMI', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 14:09:41', '2023-10-28 00:48:02', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0085202402011409409000.pdf', 'BL0210202310280047339000.pdf', 25, '2023-10-17', '2024-02-01'),
(312, 'yacine', 'hakem', 'yacine.hakem@gmail.com', '0365217400', 'BM5019 SMART', '45245245245254', 'Problème HDMI', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 14:10:35', '2024-01-28 19:29:03', NULL, 0, 'Sous Reserve', 'Software (Et non pas Mise à jour)', 'hello it observation', NULL, NULL, 'BD0794202402011410339000.pdf', 'BL0918202310182313456000.pdf', 25, '2023-10-17', '2024-02-01'),
(313, 'yacine', 'hakem', 'yacine.hakem@gmail.com', '0365217400', 'BM5019 SMART', '4444864536', 'Pixel-NDP-Bande vertical', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 14:11:15', '2024-01-29 19:11:47', 'hello world ', 0, 'Sous Reserve', 'Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur)', 'hello its description', NULL, NULL, 'BD0747202402011411139000.pdf', 'BL0739202310280050449000.pdf', 25, '2023-10-17', '2024-02-01'),
(317, 'amine', 'zemir', 'amine.zemir@gmail.com', '0321578466', 'TV S43A50 UHD', '6534534665', 'Problème de démo', 'Chlef', 'BEAU LIEU - ALGER', '2024-02-01 14:12:52', '2024-01-29 19:14:12', NULL, 0, 'Sous Reserve', 'Changement de LVDS', 'hello its observation', NULL, NULL, 'BD0214202402011412512000.pdf', NULL, 25, '2023-10-17', '2024-02-01'),
(318, 'amine', 'zemir', 'amine.zemir@gmail.com', '0321578466', 'TV S43A50 UHD', '798468769', 'Problème de démo', 'Chlef', 'BEAU LIEU - ALGER', '2024-02-01 14:15:05', '2024-01-29 19:16:14', NULL, 0, 'Sous Reserve', 'Isolation de la dalle-Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur)', 'hello its observation', NULL, NULL, 'BD0959202402011415032000.pdf', 'BL0908202401291916252000.pdf', 25, '2023-10-17', '2024-02-01'),
(319, 'Abdelkader', 'mahdjoubi', 'Abdelkader.mahdjoubi@gmail.com', '0621578953', 'BM2130', '7899872987', 'Problème de led', 'Medea', 'BEAU LIEU - ALGER', '2024-02-01 14:16:19', '2024-01-29 19:20:59', NULL, 0, 'Hors Garantie', 'Changement de BLU', 'hello its observation from stream after sales service of BEAU LIEU - ALGER', NULL, NULL, 'BD03162024020114161826000.pdf', 'BL06512024012919205826000.pdf', 25, '2023-10-17', '2024-02-01'),
(320, 'islem', 'slimani', 'islem.slimani@gmail.com', '0562341977', 'TV BM 50C1 4K SMART', NULL, 'Écran bleu', 'Jijel', 'JIJEL', '2023-10-18 23:23:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-17', '2023-10-17'),
(321, 'islem', 'slimani', 'islem.slimani@gmail.com', '0562341977', 'TV BM 50C1 4K SMART', NULL, 'Écran bleu', 'Jijel', 'JIJEL', '2023-10-18 23:23:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-17', '2023-10-17'),
(322, 'ayoub', 'cheref', 'ayoub.cheref@gmail.co', '0632159844', 'TV S 43A50 FHD SMART', '985395584665', 'Problème HDMI', 'Tbessa', 'BEAU LIEU - ALGER', '2024-02-01 15:52:51', '2024-01-29 19:32:39', NULL, 1, 'Sous Reserve', 'Isolation de la dalle', 'HELLO! its observation of stream', NULL, '1707260054246.jpg', 'BD04072024020115524712000.pdf', 'BL0491202310182357426000.pdf', 25, '2023-10-18', '2024-02-06'),
(326, 'ahmed', 'boukhatem', 'ahmed.boukhatem@gmail.com', '0756321486', 'TV S 43A50 FHD SMART', '86494864', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-02-01 15:25:53', '2023-10-18 23:59:54', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0422202402011525523000.pdf', 'BL0070202310182359356000.pdf', 25, '2023-10-18', '2024-02-01'),
(329, 'morad', 'morad', 'morad@gmail.com', '0632147853', 'BM4265', '86486486c', 'Problème de carte mère', 'Chlef', 'BEAU LIEU - ALGER', '2024-02-01 15:13:53', '2023-10-28 01:44:37', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0776202402011513522000.pdf', 'BL0209202310280144372000.pdf', 25, '2023-10-18', '2024-02-01'),
(330, 'imad', 'imad', 'imad@gmail.com', '056321781135', 'TV S 43A50 FHD SMART', '8465315265432', 'Bande noire', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 15:47:52', '2023-11-09 02:48:38', 'hello world', 1, 'Sous Reserve', 'Changement des IC-Changement d’inveter', 'Boumrar', NULL, '1707260247943.jpg', 'BD0600202402011547519000.pdf', 'BL0160202311090248519000.pdf', 25, '2023-10-18', '2024-02-06'),
(331, 'morad', 'morad', 'morad@gmail.com', '0632147853', 'BM4265', '864531465132', 'TypePanne-Pb de réceptrice IR-Pixela', 'Chlef', 'BEAU LIEU - ALGER', '2024-01-29 20:14:01', NULL, 'Description', 0, 'Sous Garantie', NULL, NULL, '656', NULL, 'BD0708202310182035342000.pdf', 'BL0239202311052153402000.pdf', 25, '2023-10-18', '2024-01-29'),
(332, 'imad', 'baheri', 'imad.baheri@gmail.com', '0632147853', 'BM4265', '9849', 'Problème de carte mère', 'Blida', 'BEAU LIEU - ALGER', '2024-02-01 15:12:44', '2023-10-18 23:03:37', NULL, 0, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD0576202402011512429000.pdf', 'BL0911202310182257176000.pdf', 25, '2023-10-18', '2024-02-01'),
(333, 'rdggd', 'gdgddg', 'dgdgf@gmail.com', '4556564654', 'TV S 43A50 FHD SMART', '89469555132', 'Problème de télécommande-Dalle cassée', 'Chlef', 'BEAU LIEU - ALGER', '2024-02-01 15:09:00', '2023-11-10 19:59:26', 'hello its description', 0, 'Sous Reserve', 'Reprogrammation de la mémoire flash-Changement de LVDS-Modification diffuseur 123', 'Description of action corrective', NULL, NULL, 'BD0837202402011508592000.pdf', 'BL0276202310280153162000.pdf', 25, '2023-10-28', '2024-02-01'),
(334, 'ffsdfsd', 'sfdfdsfsdf', 'sdfsdffsd@gmail.com', '4655311321', 'TV S43A50 UHD', NULL, 'Problème d\'affichage', 'Bejaia', 'BOUIRA', '2023-10-29 01:59:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0094202310280159336000.pdf', NULL, NULL, '2023-10-28', '2023-10-28'),
(335, 'sdsdsdsf', 'dsffdsfsd', 'sfdsfddsf@gmail.com', '46851345', 'TV S43A50 UHD', NULL, 'Problème de led', 'Tizi Ouzou', 'SKIKDA', '2023-10-29 02:01:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD00142023102802013315000.pdf', NULL, NULL, '2023-10-28', '2023-10-28'),
(336, 'sdsdsdsfs', 'dsffdsfsdd', 'sfdsfddsf@gmail.com', '4685134556', 'TV S 43A50 FHD SMART', NULL, 'Problème de démo', 'Tlemcen', 'BOUIRA', '2023-10-30 02:01:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD02802023102802034313000.pdf', NULL, NULL, '2023-10-28', '2023-10-28'),
(337, 'zino', 'zino', 'zino@gmail.com', '0778295266', 'TV S 58A50UHD', NULL, 'ecran bleu', 'CHLEF', 'SAV CHLEF', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31', '2023-10-31'),
(338, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD01502023103123093926000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(339, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD09362023103123093926000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(340, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD00742023103123093926000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(341, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD01012023103123093926000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(342, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD09582023103123093926000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(343, 'louka', 'louka', 'louka@gmail.com', 'louka', 'TV 43A50 UHD', NULL, 'ecran bleu', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD05622023103123094026000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(344, 'mugi', 'mugi', 'mugi@gmail.com', '0778295266', 'TV S 58A50UHD', NULL, 'ecran bleu', 'BATNA', 'SAV BATNA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD01732023103123240626000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(345, 'mugi2', 'mugi2', 'mugi2@gmail.com', '06523175', 'TV WSTRU5022FTP', NULL, 'ecran bleu', 'BEJAIA', 'SAV BEJAIA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD02572023103123245426000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(346, 'trap', 'trap', 'trap@gmail.com', '055893214', 'TV WSTRU5022FKT', NULL, 'fiche mal placé', 'BISKRA', 'SAV BISKRA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD03442023103123341826000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(347, 'trap2', 'trap2', 'trap2@gmail.com', '0778295266', 'TV S 50A50 UHD', NULL, 'Pas affichage', 'CHLEF', 'SAV BISKRA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD02752023103123351526000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(348, 'zino', 'zino', 'zino@gmail.com', '06231574', 'TV S 40A50 FHD', NULL, 'Pas affichage', 'ADRAR', 'SAV ADRAR', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD08642023103123385026000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(349, 'zino', 'zino', 'zino@gmail.com', '02548961', 'TV S 58A50UHD', NULL, 'ecran noir', 'CHLEF', 'SAV CHLEF', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD09982023103123392526000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(350, 'zino', 'zino', 'zino@gmail.com', '8415356', 'TV S 58A50UHD', NULL, 'ecran bleu', 'BATNA', 'SAV BEJAIA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD06282023103123395826000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(351, 'zino', 'zino', 'zino@gmail.com', '84615531', 'TV S 40A50 FHD', NULL, 'Pas affichage', 'BEJAIA', 'SAV BEJAIA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD09752023103123403026000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(352, 'zinouuu', 'zinouuu', 'zinouuu@gmail.com', '4861551', 'TV S 58A50UHD', NULL, 'ecran noir', 'AGHOUAT', 'SAV AGHOUAT', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD08832023103123423326000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(353, 'ronaldo', 'ronaldo', 'ronaldo@gmail.com', '456146513', 'TV S 50A50 UHD', NULL, 'ecran bleu', 'ADRAR', 'SAV ADRAR', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD05662023103123480426000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(354, 'ronaldoronaldo', 'ronaldoronaldo', 'ronaldo@gmail.com', '8461384651', 'TV S 58A50UHD', NULL, 'fiche mal placé', 'BATNA', 'SAV BATNA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD01442023103123484526000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(355, 'hakim', 'hakim', 'hakim@gmail.com', '978321', 'TV WSTRU7522MEX', NULL, 'fiche mal placé', 'BISKRA', 'SAV BISKRA', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD04882023103123584126000.pdf', NULL, NULL, '2023-10-31', '2023-10-31'),
(356, 'zino', 'zino', 'zino@gmail.com', '98465213', 'TV S 58A50 UHD', '5412645132465132', 'Blocage', 'Alger', 'BEAU LIEU - ALGER', '2023-12-21 10:34:25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD03262023110102172926000.pdf', 'BL03992023110822491616000.pdf', 25, '2023-11-01', '2024-01-28'),
(357, 'louka', 'louka', 'louka12@gmail.com', '98465132', 'TV S 40A50 FHD', '465132465132', 'Écran noir', 'Blida', 'BEAU LIEU - ALGER', '2023-11-06 20:01:34', '2023-11-10 20:29:04', NULL, 0, NULL, 'Software (Et non pas Mise à jour)', '846531', NULL, '1699300910941.jpg', 'BD0153202311010308249000.pdf', 'BL0677202311082247099000.pdf', 25, '2023-11-01', '2023-11-10'),
(358, 'messi', 'messi', 'messi@gmail.com', '984651256', 'TV S 50A50 UHD', '99999999999', 'Écran bleu-Particules', 'Setif', 'BEAU LIEU - ALGER', '2023-11-05 21:51:26', '2023-11-10 20:20:10', '44', 0, NULL, 'Reprogrammation de la mémoire flash', NULL, NULL, NULL, 'BD03472023110103243819000.pdf', 'BL05972023111020202319000.pdf', 25, '2023-11-01', '2023-11-10'),
(359, 'ozil', 'ozil', 'ozil@gmail.com', '8465213', 'TV 43A50 UHD', '846513513', 'Problème de télécommande', 'Alger', 'BEAU LIEU - ALGER', '2023-11-05 21:53:06', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD08672023110103363916000.pdf', 'BL06682023110822495116000.pdf', 25, '2023-11-01', '2023-11-08'),
(360, 'sffds', 'sfdfsdfsd', 'sfsdf@gmail.com', '46513', 'TV S 58A50UHD', NULL, 'Blocage logo', 'Laghouat', 'ORAN', '2023-11-20 03:45:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0824202311010345403000.pdf', NULL, NULL, '2023-11-01', '2023-11-01'),
(361, 'sdsadsa', 'dsasadads', 'asdads@gmail.com', '5623', 'TV 43A50 UHD', NULL, 'Blocage logo', 'Chlef', 'EL-EULMA', '2023-11-29 03:51:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0994202311010351562000.pdf', NULL, NULL, '2023-11-01', '2023-11-01'),
(362, 'sdffdssdf', 'fsfdsfd', 'sdfsfdd@gmail.com', '465132', 'TV S 58A50UHD', NULL, 'Problème de télécommande', 'Oum El Bouaghi', 'EL-EULMA', '2023-11-22 03:57:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0998202311010357144000.pdf', NULL, NULL, '2023-11-01', '2023-11-01'),
(363, 'gddg', 'gfdfddg', 'dfgdgd@gmail.com', '7813264523', 'TV WSTRU7522MEX', NULL, 'Problème de télécommande', 'Tbessa', 'OUM EL-BOUAGHI', '2023-11-21 02:25:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD02132023110103594912000.pdf', NULL, NULL, '2023-11-01', '2023-11-01'),
(364, 'zino', 'zino', 'zino@gmail.com', '0778295266', 'TV 43A50 UHD', NULL, 'Problème d\'afficheur', 'Tiaret', 'KHEMIS MALIANA', '2023-11-11 13:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD00162023110323240714000.pdf', NULL, NULL, '2023-11-03', '2023-11-03'),
(365, 'zino2', 'zino2', 'zino2@gmail.com', '05632147895', 'TV S 50A50 UHD', NULL, 'Problème de led', 'Setif', 'BOUIRA', '2023-11-09 23:25:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD03212023110323251119000.pdf', NULL, NULL, '2023-11-03', '2023-11-03'),
(366, 'zino123', 'zino123', 'zino123@gmail.com', '0778295266', 'TV S 50A50 UHD', NULL, 'Problème d\'afficheur', 'Laghouat', 'ORAN', '2023-11-21 23:37:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0796202311032337323000.pdf', NULL, NULL, '2023-11-03', '2023-11-03'),
(367, 'zine eddine', 'boumrar', 'zineeddine.boumrar@gmail.com', '0778295266', 'TV S 43F1', NULL, 'Problème d\'afficheur', 'Blida', 'BLIDA', '2023-11-16 14:30:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0295202311032343459000.pdf', NULL, NULL, '2023-11-03', '2023-11-03'),
(368, 'Abdallah', 'Dekkiche', 'abdallah.dekkiche@gmail.com', '0563241688', 'TV S 58A50UHD', '414651325132', 'Tache sur écran-Pas d’affichage-Pb d’image', 'Alger', 'BEAU LIEU - ALGER', '2023-11-05 21:53:52', '2023-11-08 22:57:28', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD07802023110400030416000.pdf', 'BL04882023110822510216000.pdf', 25, '2023-11-04', '2023-11-08'),
(369, 'Abdelmoumen', 'Khaldi', 'abdelmoumen.khaldi@gmail.com', '056321483', 'TV S 32D10', NULL, 'Blocage logo', 'Chlef', 'Chlef', '2023-11-07 13:08:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0342202311040009002000.pdf', NULL, NULL, '2023-11-04', '2023-11-04'),
(370, 'louka', 'modric', 'louka@gmail.com', '05632788945', 'TV S43A50 UHD', NULL, 'Ne démarre pas', 'Blida', 'BLIDA', '2023-11-18 03:02:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0705202311040303209000.pdf', NULL, NULL, '2023-11-04', '2023-11-04'),
(371, 'zino6455', 'zino6455', 'zino6455@gmail.com', '846531', 'TV S 40A50 FHD', NULL, 'Problème d\'afficheur', 'Oran', 'ORAN', '2023-11-06 12:31:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD00282023110403320331000.pdf', NULL, NULL, '2023-11-04', '2023-11-04'),
(372, 'sfdsdffsd', 'dfsdfssfd', 'dfsdffds@gmail.com', '0541236987', 'TV S 43A50 FHD', '7777777777777', 'Problème de télécommande', 'Batna', 'BEAU LIEU - ALGER', '2023-11-09 01:56:48', NULL, NULL, 0, NULL, NULL, NULL, '54465', NULL, 'BD0259202311052154555000.pdf', NULL, 25, '2023-11-05', '2023-11-09'),
(373, 'sadsaddsa', 'daddas', 'sdadasad@gmail.com', '9845631', 'TV S 43A50 FHD', '888888888888', 'Problème d\'afficheur', 'Laghouat', 'BEAU LIEU - ALGER', '2023-11-08 23:17:56', '2023-11-10 20:01:36', NULL, 0, NULL, 'Isolation de la dalle-Changement de LVDS', 'xsascsadasd', NULL, NULL, 'BD0763202311052156333000.pdf', 'BL0685202311102001363000.pdf', 25, '2023-11-05', '2023-11-10'),
(374, 'asdfsad', 'asdasdas', 'asdasdd@gmail.com', '465465165', 'TV S 43A50 FHD', '54164513', 'Problème de télécommande', 'Blida', 'BEAU LIEU - ALGER', '2023-11-08 23:52:50', '2023-11-08 23:54:08', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0807202311082352509000.pdf', 'BL0670202311082354299000.pdf', 25, '2023-11-05', '2023-11-08'),
(375, 'sadsadasd', 'adsdasda', 'asddas@gmail.com', '8465312', 'TV WSTRU4322FTP', '1111111', 'Problème d\'affichage-Pixel', 'Laghouat', 'BEAU LIEU - ALGER', '2023-11-10 16:36:15', '2023-12-28 14:21:16', 'kjdsfhkjdsf', 0, NULL, 'Changement des IC', 'dfsdfs', NULL, NULL, 'BD0675202311101636143000.pdf', 'BL0037202312281421223000.pdf', 25, '2023-11-09', '2023-12-28'),
(376, 'sadsadasd', 'adsdasda', 'asddas@gmail.com', '8465312', 'TV WSTRU4322FTP', '888888888', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-01-28 14:09:36', '2023-11-10 20:02:07', NULL, 0, 'Hors Garantie', 'Changement de carte graphique', '4653', NULL, NULL, 'BD0613202401281409353000.pdf', 'BL0647202311102014463000.pdf', 25, '2023-11-09', '2024-01-28'),
(377, 'sadsadasd', 'adsdasda', 'asddas@gmail.com', '8465312', 'TV WSTRU4322FTP', '4543354jkhk3543', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-01-28 14:23:47', '2024-01-29 19:26:34', NULL, 0, 'Hors Garantie', 'Changement de dalle', 'HELLO! its observation of stream', NULL, NULL, 'BD0672202401281423463000.pdf', 'BL0469202401291926333000.pdf', 25, '2023-11-09', '2024-01-29'),
(378, 'sadsadasd', 'adsdasda', 'asddas@gmail.com', '8465312', 'TV WSTRU4322FTP', 'gfddfg4dfdfg', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-01-28 14:24:27', '2024-01-29 19:30:09', NULL, 0, 'Sous Garantie', 'Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur)', 'HELLO! its observation of stream', NULL, NULL, 'BD0878202401281424273000.pdf', 'BL0525202401291930083000.pdf', 25, '2023-11-09', '2024-01-29'),
(379, 'sadsadasd', 'adsdasda', 'asddas@gmail.com', '8465312', 'TV WSTRU4322FTP', '89465312413', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-01-28 14:25:03', '2024-01-29 19:29:44', NULL, 0, 'Hors Garantie', 'Changement de sheets-Software (Et non pas Mise à jour)', 'HELLO! its observation of stream', NULL, NULL, 'BD0169202401281425023000.pdf', 'BL0565202311090105553000.pdf', 25, '2023-11-09', '2024-01-29'),
(380, 'sdaassa', 'sdadsadsa', 'dasda@gmail.com', '8746531', 'TV WSTRF4322 FTP', '9846328446513', 'Problème d\'affichage', 'Laghouat', 'BEAU LIEU - ALGER', '2024-01-28 14:27:38', '2023-11-09 01:10:06', NULL, 0, 'Hors Garantie', 'Changement des IC-Changement de LVDS', '123', NULL, NULL, 'BD0011202401281427363000.pdf', 'BL0925202311090110063000.pdf', 25, '2023-11-09', '2024-01-28'),
(381, 'zino', 'zino', 'zino@gmail.com', '7786312', 'TV S 40A50 FHD', '9875x46321', 'Blocage', 'Adrar', 'BEAU LIEU - ALGER', '2024-01-28 15:26:44', '2023-11-10 20:32:33', NULL, 0, 'Hors Garantie', 'Reprogrammation de la mémoire flash', NULL, '777', NULL, 'BD0568202401281526431000.pdf', 'BL0071202311102032341000.pdf', 25, '2023-11-10', '2024-01-28'),
(382, 'zino', 'zino', 'zino@gmail.com', '8465213', 'TV S 58A50UHD', '74644636g', 'Blocage logo', 'Chlef', 'BEAU LIEU - ALGER', '2024-01-28 15:30:32', NULL, NULL, 0, 'Hors Garantie', NULL, NULL, NULL, NULL, 'BD0815202401281530302000.pdf', NULL, 25, '2023-11-10', '2024-01-28'),
(383, 'louka', 'louka', 'louka@gmail.com', '64513', 'TV S 58A50UHD', '7S7777777', 'Blocage logo', 'Biskra', 'BEAU LIEU - ALGER', '2024-01-28 18:41:55', '2024-01-29 19:32:58', NULL, 0, 'Hors Garantie', 'Changement de LVDS', 'HELLO! its observation of stream', NULL, NULL, 'BD0736202401281841537000.pdf', 'BL0715202401291932577000.pdf', 25, '2023-11-10', '2024-01-29'),
(384, 'louka', 'louka', 'louka@gmail.com', '98465213', 'TV S 40A50 FHD', '977897973985', 'Blocage logo', 'Oum El Bouaghi', 'BEAU LIEU - ALGER', '2024-01-28 18:47:17', NULL, NULL, 0, 'Sous Garantie', NULL, NULL, NULL, NULL, 'BD0666202401281847154000.pdf', NULL, 25, '2023-11-10', '2024-01-28'),
(385, 'louka', 'louka', 'louka@gmail.com', '46531', 'TV S 40A50 FHD', NULL, 'Blocage logo', 'Adrar', 'CONSTANTINE', '2023-11-24 16:42:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10', '2023-11-10'),
(386, 'louka', 'louka', 'louka@gmail.com', '46531', 'TV S 40A50 FHD', NULL, 'Blocage logo', 'Adrar', 'CONSTANTINE', '2023-11-24 16:42:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10', '2023-11-10'),
(387, 'louka', 'louka', 'louka@gmail.com', '9846513', 'TV S 58A50UHD', NULL, 'Blocage', 'Chlef', 'EL-EULMA', '2023-11-30 16:46:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10', '2023-11-10'),
(388, 'adsada', 'adsada', 'adsada@gmail.com', '4651', 'TV S 50A50 UHD', NULL, 'Blocage logo', 'Chlef', 'ORAN', '2023-11-24 16:49:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0746202311101649552000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(389, 'aaaaaa', 'bbbbbb', 'aaaaaa@gmail.com', '86452130.', 'TV 43A50 UHD', NULL, 'Problème d\'afficheur', 'Chlef', 'ORAN', '2023-11-29 16:51:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0778202311101651582000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(390, 'asddsasda', 'adsasdads', 'asdsadsa@gmail.com', '864315', 'TV S 40A50 FHD', NULL, 'Blocage logo', 'Batna', 'EL-EULMA', '2023-11-14 19:58:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0411202311101658425000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(391, 'adsdadas', 'asdasdads', 'value@gmail.com', '846513', 'TV S 50A50 UHD', NULL, 'Problème d\'afficheur', 'Medea', 'ORAN', '2023-11-28 16:59:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD08382023111016594126000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(392, 'czxz', 'xzxczxc', 'zxczxc@gmail.com', '846531', 'TV S 40A50 FHD', NULL, 'Problème d\'afficheur', 'Alger', 'BLIDA', '2023-11-27 14:41:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD01822023111018411816000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(393, 'sdfsdf', 'dsfdsfdfs', 'sfddfs@gmail.com', '8754631', 'TV S 50A50 UHD', NULL, 'Problème d\'afficheur', 'Laghouat', 'ORAN', '2023-11-28 18:51:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0938202311101852123000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(394, 'dddddd', 'ddddddd', 'ddddddd@gmail.com', '9846531', 'TV S 58A50UHD', NULL, 'Problème d\'afficheur', 'Batna', 'EL-EULMA', '2023-11-23 18:54:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0949202311101854145000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(395, 'vvvvvv', 'vvvvv', 'vvvvv@gmail.com', '98465213', 'TV S 40A50 FHD', NULL, 'Écran noir', 'Batna', 'ORAN', '2023-11-29 15:20:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0468202311101857535000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(396, 'asdsa', 'adasda', 'asdsad@gmail.com', '84651', 'TV 43A50 UHD', NULL, 'Blocage logo', 'Laghouat', 'BLIDA', '2023-11-23 18:58:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0991202311101858373000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(397, 'asdsad', 'dasdas', 'addas@gmail.com', 'dasasd', 'TV S 50A50 UHD', NULL, 'Problème de télécommande', 'Laghouat', 'BLIDA', '2023-11-20 18:59:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'BD0535202311101859533000.pdf', NULL, NULL, '2023-11-10', '2023-11-10'),
(398, 'dassad', 'sdaads', 'adsdas@gmail.com', '64513', 'TV S43A50 UHD', '465231', 'Écran blanc', 'Oum El Bouaghi', 'BEAU LIEU - ALGER', '2023-11-10 20:49:16', '2023-11-10 20:49:43', NULL, 0, NULL, 'Software', NULL, NULL, NULL, 'BD0646202311102049164000.pdf', 'BL0512202311102049434000.pdf', 25, '2023-11-10', '2023-11-10'),
(399, 'dekkiche', 'lyes', 'dekkichelies@gmail.com', '0661884651', 'TV 43A50 UHD', '2345618735', 'Ecran noir', 'Alger', 'BEAU LIEU - ALGER', '2023-12-21 17:00:53', '2023-12-21 17:02:32', NULL, 0, NULL, 'Changement d’inveter', NULL, NULL, NULL, 'BD09072023122116592116000.pdf', 'BL02972023122117025516000.pdf', 25, '2023-12-15', '2023-12-21'),
(400, 'test1', 'test1', 'test1@gmail.com', '979841615', 'TV S 40A50 FHD', '98461', 'Blocage', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 15:59:31', NULL, NULL, 1, 'Sous Reserve', NULL, NULL, NULL, NULL, 'BD09562024020115592916000.pdf', NULL, 25, '2024-02-01', '2024-02-01'),
(401, 'test2', 'test12', 'test1@gmail.com', '979841615', 'TV S 40A50 FHD', NULL, 'Problème d\'afficheur', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:57:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-01', '2024-02-01'),
(402, 'test3', 'test13', 'test1@gmail.com', '979841615', 'TV S 40A50 FHD', NULL, 'Écran bleu', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 17:57:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-01', '2024-02-01'),
(403, 'test4', 'test14', 'test1@gmail.com', '979841615', 'TV S 40A50 FHD', NULL, 'Écran bleu', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 18:57:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-01', '2024-02-01'),
(404, '123', '123', '123@g.com', '9846', 'TV BM 55C1 4K SMART', '91494944', 'Problème HDMI', 'Tizi Ouzou', 'BEAU LIEU - ALGER', '2024-02-01 16:01:44', '2024-02-01 16:04:02', NULL, 5, 'Sous Reserve', 'Reprogrammation de la mémoire flash', NULL, NULL, NULL, 'BD01272024020116014215000.pdf', 'BL05552024020116040115000.pdf', 25, '2024-02-01', '2024-02-01'),
(405, '123', '123', '123@g.com', '9846', 'TV BM 55C1 4K SMART', '7989465456', 'Problème d\'allumage', 'Tizi Ouzou', 'BEAU LIEU - ALGER', '2024-02-01 16:04:43', '2024-02-01 16:05:13', NULL, 5, 'Sous Garantie', 'Changement des IC', 'rrrrrrrr', NULL, NULL, 'BD02602024020116044215000.pdf', 'BL05122024020116051215000.pdf', 25, '2024-02-01', '2024-02-01'),
(406, '123', '123', '123@g.com', '9846', 'TV BM 55C1 4K SMART', '6456465165', 'Problème de mise à jour-Trait horizontal-Bande vertical-Standby', 'Tizi Ouzou', 'BEAU LIEU - ALGER', '2024-02-01 16:05:46', '2024-02-01 16:07:09', NULL, 5, 'Sous Garantie', 'Changement de MPCB-Branchement de LVDS', '123456', NULL, NULL, 'BD08342024020116054515000.pdf', 'BL03412024020116070815000.pdf', 25, '2024-02-01', '2024-02-01'),
(407, '123', '123', '123@g.com', '9846', 'TV BM 55C1 4K SMART', '9486151461', 'Problème du son-Pb d’image', 'Tizi Ouzou', 'BEAU LIEU - ALGER', '2024-02-01 16:07:38', '2024-02-01 16:09:31', NULL, 5, 'Hors Garantie', 'Changement de sheets', 'fdsfdsf', NULL, NULL, 'BD00822024020116073715000.pdf', 'BL02232024020116093015000.pdf', 25, '2024-02-01', '2024-02-01'),
(408, '123', '123', '123@g.com', '9846', 'TV BM 55C1 4K SMART', '98461', 'NDP', 'Tizi Ouzou', 'BEAU LIEU - ALGER', '2024-02-01 16:10:14', '2024-02-01 16:11:48', NULL, 5, 'Hors Garantie', 'Changement des IC', 'fdgdfgdfgfd', NULL, NULL, 'BD05272024020116101315000.pdf', 'BL08212024020116114715000.pdf', 25, '2024-02-01', '2024-02-01'),
(409, 'fdgfd', 'fdgfd', 'ffdgdf@gmail.com', '78461', 'B49C1 Smart', '97461', 'Écran blanc', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:16:39', '2024-02-01 16:17:41', NULL, 5, 'Sous Reserve', 'Isolation de la dalle', '8946654', NULL, NULL, 'BD09722024020116163716000.pdf', 'BL03492024020116174016000.pdf', 25, '2024-02-01', '2024-02-01'),
(410, 'scs', 'cscs', 'ffdgdf@gmail.com', '7846153', 'BM42L31', '78461', 'Problème d\'afficheur', 'Adrar', 'BEAU LIEU - ALGER', '2024-02-01 16:18:26', NULL, NULL, 1, 'Sous Garantie', NULL, NULL, NULL, NULL, 'BD0575202402011618251000.pdf', NULL, 25, '2024-02-01', '2024-02-01'),
(411, 'sdqds', 'qsdsqdsq', 'fsgf@gm.com', '9841615', 'BM43C1', '746815', 'Problème d\'afficheur', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:23:21', '2024-02-01 16:24:11', NULL, 5, 'Hors Garantie', 'Changement des IC', 'ZINO', NULL, NULL, 'BD03752024020116232016000.pdf', 'BL09762024020116241016000.pdf', 25, '2024-02-01', '2024-02-01'),
(412, 'vsdvdv', 'dsvdvd', 'vdsvdv@dvd.vcs', '847615', 'BM43C1', '4681153451', 'Problème d\'afficheur', 'Alger', 'BEAU LIEU - ALGER', '2024-02-01 16:26:59', '2024-02-01 16:27:40', NULL, 5, 'Hors Garantie', 'Changement des IC', '46546', NULL, NULL, 'BD07672024020116265816000.pdf', 'BL09552024020116273916000.pdf', 25, '2024-02-01', '2024-02-01'),
(413, 'sq', 'qsd', 'qsdq@gmail.com', '6000000000', 'TV S 50A50 UHD', NULL, 'Blocage', 'Alger', 'BEAU LIEU - ALGER', '2024-02-06 23:05:00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-06', '2024-02-06');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `ReferanceProduit` varchar(23) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `ReferanceProduit`, `createdAt`, `updatedAt`) VALUES
(1, 'TV S 40A50 FHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(2, 'TV S 58A50UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(3, 'TV S 50A50 UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(4, 'TV 43A50 UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(5, 'TV WSTRU7522MEX', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(6, 'TV WSTRU6522FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(7, 'TV 43A50 FHD SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(8, 'TV WSTRU5522FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(9, 'TV WSTRU5022FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(10, 'TV S 40D10', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(11, 'TV S 43D10', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(12, 'TV WSTRU5022FKT', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(13, 'TV WSTRF4022FKT', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(14, 'TV WSTRU4322FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(15, 'TV WSTRF4322 FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(16, 'TV S43A50 UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(17, 'TV S 43A50 FHD SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(18, 'TV S 43A50 FHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(19, 'TV S32A50 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(20, 'TV S 32A50 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(21, 'TV WSTRF4022FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(22, 'TV WSTRH3222FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(23, 'TV S32F1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(24, 'TV S 43F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(25, 'TV S50F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(26, 'TV S40D10', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(27, 'TV S32D10', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(28, 'TV S 24T1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(29, 'TV S 43F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(30, 'TV S 32D10', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(31, 'TV S24T1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(32, 'TV S 58D1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(33, 'TV S 58A50 UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(34, 'TV S 55A50 UHD', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(35, 'TV S32D50', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(36, 'TV S43F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(37, 'TV S40F1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(38, 'TV S24D1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(39, 'TV  S58D1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(40, 'TV S 32F1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(41, 'TV S43F1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(42, 'TV S40F1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(43, 'TV S40F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(44, 'TV S43F1 S4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(45, 'TV S 43F1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(46, 'TV S 75F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(47, 'TV S 24D1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(48, 'TV S 50F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(49, 'TV S 32F1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(50, 'TV S 21F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(51, 'TV S 50D20 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(52, 'TV S 40F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(53, 'TV S 32F1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(54, 'TV S24D1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(55, 'TV S32D20 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(56, 'TV S 40D20 SMART ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(57, 'TV S 49C2 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(58, 'TV S65C2 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(59, 'TV S 55F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(60, 'TV S 65F1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(61, 'TV BM58C1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(62, 'TV S 50F1 SMART ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(63, 'TV BM 58C1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(64, 'TV S 40C2', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(65, 'TV S40C2 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(66, 'TV BM43C1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(67, 'TV BM55C1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(68, 'TV BM32C1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(69, 'TV BM 40L81+', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(70, 'TV BM43C1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(71, 'TV DLED BM 43C1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(72, 'TV BM 32C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(73, 'TV BM 32C1 SMART ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(74, 'TV BM 40L81+ SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(75, 'TV BM 43C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(76, 'TV BM 43C1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(77, 'TV  BM 32C1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(78, 'TV BM 65L73 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(79, 'TV BM 55C1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(80, 'TV BM 32C1 ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(81, 'TV BM 50C1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(82, 'TV DLED BM 40L81+ SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(83, 'TV DLED BM 40L81+', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(84, 'TV BM 24D1 SMART ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(85, 'TV DLED BM 43C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(86, 'BM75C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(87, 'BM5819 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(88, 'BM50C1 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(89, 'BM3219SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(90, 'BMM5519SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(91, 'BM5019 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(92, 'BM4019', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(93, 'BM4019 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(94, 'BM4319SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(95, 'BM4319', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(96, 'BM3219', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(97, 'BM4319 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(98, 'BM24D1SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(99, 'BM24D1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(100, 'B49C1 Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(101, 'BM49C1 4K ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(102, 'BM43C1Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(103, 'BM49C1 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(104, 'BM55C14K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(105, 'BM49C14K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(106, 'BM40L81+ Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(107, 'BM32C1 Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(108, 'BM40L81+SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(109, 'BM32C1SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(110, 'BM2419', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(111, 'BM55B1 4K SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(112, 'BM32C9 SMART', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(113, 'BM65L73 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(114, 'BM40L81 +', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(115, ' BM49C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(116, 'BM49B1 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(117, 'BM2102', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(118, 'BM2178', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(119, 'BM2108', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(120, 'BM2908', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(121, 'BM2130', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(122, 'BM2124', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(123, 'BM2128', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(124, 'BM3201', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(125, 'BM3202', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(126, 'BM3203', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(127, 'BM3223', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(128, 'BM3235', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(129, 'BM3296', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(130, 'BM32Q11', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(131, 'BM3298', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(132, 'BM4001', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(133, 'BM4002', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(134, 'BM4701', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(135, 'BM2601', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(136, 'BM4730', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(137, 'BM4769', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(138, 'BM4601', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(139, 'BM4223', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(140, 'BM4235', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(141, 'BM100', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(142, 'BM1903', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(143, 'BM2369', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(144, 'BM2239', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(145, 'BM2235', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(146, 'BM2499', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(147, 'BM32SG', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(148, 'BM32531', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(149, 'BM32L31', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(150, 'BM3218', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(151, 'BM3265', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(152, 'BM42L31', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(153, 'BM4265', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(154, 'BM4286', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(155, 'BM46830', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(156, 'BM42E5', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(157, 'BM2620', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(158, 'BM4245', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(159, 'BM5545', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(160, 'BM5570', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(161, 'BM4081', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(162, 'BM50L31', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(163, 'BM4291', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(164, 'BM4392', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(165, 'BM50 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(166, 'BM40L82', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(167, 'BM50L82', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(168, 'BM47Z 3D', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(169, 'BM42Z 3D', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(170, 'BM5093 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(171, 'BM55 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(172, 'BM55Z 3D', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(173, 'BM5500 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(174, 'BM5891', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(175, 'BM5893 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(176, 'BM6591', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(177, 'BM6570 4K', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(178, 'BM70M70', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(179, 'BM2401', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(180, 'BM32L33', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(181, 'BM3267', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(182, 'BM32G5', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(183, 'BM32L82', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(184, 'BM32L81', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(185, 'BM32C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(186, 'BM32D1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(187, 'BM32C9', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(188, 'BM3281', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(189, 'BM3981', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(190, 'BM39C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(191, 'BM39L61', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(192, 'BM42L33', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(193, 'BM50L33', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(194, 'BM5081', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(195, 'BM50C9', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(196, 'BM49C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(197, 'BM49B1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(198, 'BM40L81+', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(199, 'BM55L71', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(200, 'BM43L73 Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(201, 'BM43L73 DLED', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(202, 'BM40L81', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(203, 'BM43C1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(204, 'BM49L71', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(205, 'BM49L71 Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(206, 'BM5082 Smart', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(207, 'WSTRH3223FTP', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(208, 'WSTRU4323 FTP ', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(209, 'TVS32GTH1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(210, 'TVS43GTF1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(211, 'TVS43GTU1', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(212, 'TVS55GTU', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(213, 'TVS58GTU', '2023-09-12 17:31:07', '2023-09-12 17:31:07'),
(214, 'TVS65GTU', '2023-09-12 17:31:07', '2023-09-12 17:31:07');

-- --------------------------------------------------------

--
-- Structure de la table `savs`
--

CREATE TABLE `savs` (
  `id` bigint(20) NOT NULL,
  `Region` varchar(55) DEFAULT NULL,
  `Telephone` varchar(55) DEFAULT NULL,
  `Localisation` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `savs`
--

INSERT INTO `savs` (`id`, `Region`, `Telephone`, `Localisation`, `createdAt`, `updatedAt`) VALUES
(1, 'KHEMIS MALIANA', '0560961719', '36.259421,2.213538', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(2, 'CONSTANTINE', '0560154258', '7H8H+4PX Service Aprés Vente Stream System, El Khroub', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(3, 'ORAN', '0560019104', '35.713035,-0.588031', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(4, 'EL-EULMA', '0560358415', '5M69+M93، العلمة 19600‭', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(5, 'BLIDA', '0560360392', '36.48371,2.818045', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(6, 'TIZI-OUZOU', '0560985785', '36.701908,4.058423', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(7, 'MEDEA', '0560508307', '7Q6F+8C7 Lnhc médéa, Médéa', '2023-09-12 17:40:42', '2023-09-12 17:40:42'),
(8, 'HAMIZ', '0560985776', '36.733828,3.232003', '2023-09-12 17:40:42', '2023-09-12 17:40:42');

-- --------------------------------------------------------

--
-- Structure de la table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) NOT NULL,
  `NbTicketsOuverts` bigint(11) NOT NULL DEFAULT 0,
  `ProduitEnAttente` bigint(20) NOT NULL DEFAULT 0,
  `ProduitDeposes` bigint(20) DEFAULT 0,
  `ProduitEnReparation` bigint(20) DEFAULT 0,
  `ProduitRepares` bigint(20) DEFAULT 0,
  `EnAttenteDePickup` bigint(20) DEFAULT 0,
  `Produitlivre` bigint(20) DEFAULT 0,
  `ProduitSuspendu` bigint(20) DEFAULT 0,
  `DelaiMoyenReparation` time DEFAULT '00:00:00',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `statistics`
--

INSERT INTO `statistics` (`id`, `NbTicketsOuverts`, `ProduitEnAttente`, `ProduitDeposes`, `ProduitEnReparation`, `ProduitRepares`, `EnAttenteDePickup`, `Produitlivre`, `ProduitSuspendu`, `DelaiMoyenReparation`, `createdAt`, `updatedAt`) VALUES
(7, 13, 7, 0, 0, 4, 1, 3, 0, '00:00:00', '2023-01-04 00:00:00', '2023-09-07 17:47:38'),
(8, 5, 1, 3, 0, 1, 0, 0, 0, '00:00:00', '2023-08-05 00:00:00', '2023-09-05 21:43:55'),
(9, 5, 1, 1, 0, 4, 2, 2, 0, '00:00:00', '2023-09-09 00:00:00', '2023-09-07 17:28:30'),
(12, 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-10 00:00:00', '2023-09-10 17:02:46'),
(13, 4, 3, 1, 0, 0, 0, 0, 0, '00:00:00', '2023-09-12 00:00:00', '2023-09-12 21:29:51'),
(14, 14, 0, 4, 1, 9, 2, 7, 0, '00:00:00', '2023-09-13 00:00:00', '2023-10-12 23:59:04'),
(15, 5, 2, 3, 0, 0, 0, 0, 0, '00:00:00', '2023-09-19 00:00:00', '2023-10-12 23:45:10'),
(16, 10, 9, 1, 0, 0, 0, 0, 0, '00:00:00', '2023-09-28 00:00:00', '2023-10-12 23:46:17'),
(17, 8, 6, 1, 0, 1, 0, 1, 0, '00:00:00', '2023-09-29 00:00:00', '2023-10-13 00:05:37'),
(18, 71, 71, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-02 00:00:00', '2023-10-02 17:03:53'),
(19, 9, -17, 15, 2, 9, 0, 9, 0, '00:00:00', '2023-10-16 00:00:00', '2024-02-01 16:33:07'),
(20, 37, -7, 26, 0, 18, 0, 18, 0, '00:00:00', '2023-10-17 00:00:00', '2024-02-01 16:36:09'),
(21, 11, -8, 12, 0, 7, 0, 6, 0, '00:00:00', '2023-10-18 00:00:00', '2024-02-01 15:52:52'),
(22, 4, 1, 2, 0, 1, 0, 1, 0, '00:00:00', '2023-10-28 00:00:00', '2024-02-01 15:09:00'),
(23, 17, 17, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-31 00:00:00', '2023-10-31 23:58:42'),
(24, 8, 4, 0, 0, 4, 0, 2, 0, '00:00:00', '2023-11-01 00:00:00', '2023-11-10 20:29:06'),
(25, 5, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-08 22:58:33'),
(26, 1, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-08 22:58:33'),
(27, 1, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-08 22:58:33'),
(28, 1, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-08 22:58:33'),
(29, 3, -3, 3, 0, 3, 1, 2, 0, '00:00:00', '2023-11-05 00:00:00', '2023-11-10 20:01:36'),
(30, 6, -9, 8, 0, 7, 0, 7, 4, '00:00:00', '2023-11-09 00:00:00', '2024-01-29 19:30:09'),
(31, 18, 5, 10, 0, 3, 0, 3, 0, '00:00:00', '2023-11-10 00:00:00', '2024-01-29 19:32:58'),
(32, 1, 0, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-12-21 00:00:00', '2023-12-21 17:02:55'),
(33, 13, 3, 2, 0, 8, 0, 8, 1, '00:00:00', '2024-02-01 00:00:00', '2024-02-01 16:32:53'),
(34, 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2024-02-07 00:00:00', '2024-02-06 23:05:09');

-- --------------------------------------------------------

--
-- Structure de la table `statisticscentres`
--

CREATE TABLE `statisticscentres` (
  `id` bigint(20) NOT NULL,
  `Centre` varchar(55) NOT NULL,
  `NbTicketsOuverts` bigint(20) NOT NULL DEFAULT 0,
  `ProduitEnAttente` bigint(20) NOT NULL DEFAULT 0,
  `ProduitDeposes` bigint(20) DEFAULT 0,
  `ProduitEnReparation` bigint(20) DEFAULT 0,
  `ProduitRepares` bigint(20) DEFAULT 0,
  `EnAttenteDePickup` bigint(20) DEFAULT 0,
  `Produitlivre` bigint(20) DEFAULT 0,
  `ProduitSuspendu` bigint(20) DEFAULT 0,
  `DelaiMoyenReparation` time DEFAULT '00:00:00',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `statisticscentres`
--

INSERT INTO `statisticscentres` (`id`, `Centre`, `NbTicketsOuverts`, `ProduitEnAttente`, `ProduitDeposes`, `ProduitEnReparation`, `ProduitRepares`, `EnAttenteDePickup`, `Produitlivre`, `ProduitSuspendu`, `DelaiMoyenReparation`, `createdAt`, `updatedAt`) VALUES
(10, 'Chlef', 2, 0, 0, 0, 0, 0, 2, 0, '00:00:00', '2023-09-04 00:00:00', '2023-09-05 21:31:32'),
(11, 'Batna', 3, 0, 0, 0, 3, 1, 1, 0, '00:00:00', '2023-09-04 00:00:00', '2023-09-07 17:47:38'),
(12, 'Blida', 3, 3, 0, 0, 1, 0, 0, 0, '00:00:00', '2023-09-04 00:00:00', '2023-11-10 18:59:53'),
(13, 'Bouira', 2, 2, 8, 1, 1, 0, 1, 0, '00:00:00', '2023-09-04 00:00:00', '2023-10-28 02:03:44'),
(14, 'Medea', 6, 6, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-04 00:00:00', '2023-10-02 17:03:53'),
(20, 'Blida', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-05 00:00:00', '2023-11-10 18:59:53'),
(21, 'Tamenraset', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-05 00:00:00', '2023-09-05 21:43:55'),
(22, 'Bouira', 2, 2, 0, 0, 5, 3, 2, 0, '00:00:00', '2023-09-07 00:00:00', '2023-10-28 02:03:44'),
(23, 'Chlef', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-09 00:00:00', '2023-09-08 23:08:33'),
(24, 'chlef', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-10 00:00:00', '2023-09-10 17:02:46'),
(25, 'ORAN', 5, 5, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-12 00:00:00', '2023-11-10 18:57:53'),
(26, 'KHEMIS MALIANA', 3, 2, 1, 0, 0, 0, 0, 0, '00:00:00', '2023-09-12 00:00:00', '2023-09-12 21:29:51'),
(27, 'BEAU LIEU - ALGER', 13, 4, 3, 1, 6, 2, 4, 0, '00:00:00', '2023-09-13 00:00:00', '2024-02-01 16:26:42'),
(28, 'BEJAIA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-13 00:00:00', '2023-09-13 01:30:33'),
(29, 'BLIDA', 3, 3, 1, 0, 1, 0, 1, 0, '00:00:00', '2023-09-13 00:00:00', '2023-11-10 18:59:53'),
(30, 'BOUIRA', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-13 00:00:00', '2023-10-28 02:03:44'),
(32, 'TIZI-OUZOU', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-13 00:00:00', '2023-09-13 01:38:42'),
(33, 'ORAN', 5, 5, 0, 0, 2, 0, 2, 0, '00:00:00', '2023-09-13 00:00:00', '2023-11-10 18:57:53'),
(34, 'BLIDA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-19 00:00:00', '2023-11-10 18:59:53'),
(35, 'BEAU LIEU - ALGER', 13, 4, 3, 0, 0, 0, 0, 0, '00:00:00', '2023-09-19 00:00:00', '2024-02-01 16:26:42'),
(36, 'BLIDA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-28 00:00:00', '2023-11-10 18:59:53'),
(37, 'BATNA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-28 00:00:00', '2023-09-28 17:20:08'),
(38, 'BOUIRA', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-28 00:00:00', '2023-10-28 02:03:44'),
(39, 'BEAU LIEU - ALGER', 13, 4, 1, 0, 0, 0, 0, 0, '00:00:00', '2023-09-28 00:00:00', '2024-02-01 16:26:42'),
(41, 'DJELFA', 64, 64, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-09-29 00:00:00', '2023-10-02 16:58:48'),
(42, 'SKIKDA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-02 00:00:00', '2023-10-02 11:36:46'),
(43, 'DJELFA', 64, 64, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-02 00:00:00', '2023-10-02 16:58:48'),
(44, 'MEDEA', 6, 6, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-02 00:00:00', '2023-10-02 17:03:53'),
(45, 'BEAU LIEU - ALGER', 13, 4, 15, 2, 9, 0, 9, 0, '00:00:00', '2023-10-16 00:00:00', '2024-02-01 16:33:07'),
(46, 'BLIDA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-16 00:00:00', '2023-11-10 18:59:53'),
(47, 'MEDEA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-16 00:00:00', '2023-10-16 19:54:45'),
(48, 'ORAN', 5, 5, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-16 00:00:00', '2023-11-10 18:57:53'),
(49, 'BEAU LIEU - ALGER', 13, 3, 26, 0, 18, 0, 18, 0, '00:00:00', '2023-10-17 00:00:00', '2024-02-01 16:36:09'),
(50, 'JIJEL', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-18 00:00:00', '2023-10-17 23:23:56'),
(51, 'JIJEL', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-18 00:00:00', '2023-10-17 23:24:48'),
(52, 'BEAU LIEU - ALGER', 13, 4, 12, 0, 7, 0, 6, 0, '00:00:00', '2023-10-18 00:00:00', '2024-02-01 16:26:42'),
(53, 'BOUMERDES', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-18 00:00:00', '2023-10-18 00:32:12'),
(54, 'BEAU LIEU - ALGER', 13, 4, 2, 0, 1, 0, 1, 0, '00:00:00', '2023-10-28 00:00:00', '2024-02-01 16:26:42'),
(55, 'BOUIRA', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-28 00:00:00', '2023-10-28 02:03:44'),
(56, 'SKIKDA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-28 00:00:00', '2023-10-28 02:01:33'),
(57, 'SAV CHLEF', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-10-31 00:00:00', '2023-10-31 23:39:25'),
(58, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:39'),
(59, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:39'),
(60, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:39'),
(61, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:40'),
(62, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:40'),
(63, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:09:40'),
(64, 'SAV BATNA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:24:07'),
(65, 'SAV BEJAIA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:24:54'),
(66, 'SAV BISKRA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:34:18'),
(67, 'SAV BISKRA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:35:15'),
(68, 'SAV ADRAR', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:38:50'),
(69, 'SAV BEJAIA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:39:58'),
(70, 'SAV BEJAIA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:40:30'),
(71, 'SAV AGHOUAT', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:42:33'),
(72, 'SAV ADRAR', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:48:04'),
(73, 'SAV BATNA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:48:46'),
(74, 'SAV BISKRA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-10-31 23:58:42'),
(75, 'BEAU LIEU - ALGER', 13, 4, 0, 0, 4, 0, 2, 0, '00:00:00', '2023-11-01 00:00:00', '2024-02-01 16:26:42'),
(76, 'ORAN', 5, 5, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-11-10 18:57:53'),
(77, 'EL-EULMA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-11-10 18:54:14'),
(78, 'OUM EL-BOUAGHI', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-01 00:00:00', '2023-11-01 03:59:49'),
(79, 'KHEMIS MALIANA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-03 23:24:07'),
(80, 'BOUIRA', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-03 23:25:11'),
(81, 'ORAN', 5, 5, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-10 18:57:53'),
(82, 'BLIDA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-10 18:59:53'),
(83, 'BEAU LIEU - ALGER', 13, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-11-04 00:00:00', '2024-02-01 16:26:42'),
(84, 'Chlef', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-04 00:00:00', '2023-11-04 00:09:00'),
(85, 'BEAU LIEU - ALGER', 13, 4, 3, 0, 3, 1, 2, 0, '00:00:00', '2023-11-05 00:00:00', '2024-02-01 16:26:42'),
(86, 'BEAU LIEU - ALGER', 13, 4, 8, 0, 7, 0, 7, 4, '00:00:00', '2023-11-09 00:00:00', '2024-02-01 16:26:42'),
(87, 'BEAU LIEU - ALGER', 13, 4, 10, 0, 3, 0, 3, 0, '00:00:00', '2023-11-10 00:00:00', '2024-02-01 16:26:42'),
(88, 'CONSTANTINE', 2, 2, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-10 00:00:00', '2023-11-10 16:42:41'),
(89, 'EL-EULMA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-10 00:00:00', '2023-11-10 18:54:14'),
(90, 'ORAN', 5, 5, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-10 00:00:00', '2023-11-10 18:57:53'),
(91, 'BLIDA', 3, 3, 0, 0, 0, 0, 0, 0, '00:00:00', '2023-11-10 00:00:00', '2023-11-10 18:59:53'),
(92, 'BEAU LIEU - ALGER', 13, 4, 0, 0, 1, 0, 1, 0, '00:00:00', '2023-12-21 00:00:00', '2024-02-01 16:26:42'),
(93, 'BEAU LIEU - ALGER', 13, 3, 2, 0, 8, 0, 8, 1, '00:00:00', '2024-02-01 00:00:00', '2024-02-01 16:32:53'),
(94, 'BEAU LIEU - ALGER', 1, 1, 0, 0, 0, 0, 0, 0, '00:00:00', '2024-02-07 00:00:00', '2024-02-06 23:05:09');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Action` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`id`, `UserID`, `Action`, `createdAt`, `updatedAt`) VALUES
(3506, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-07 18:05:16', '2023-11-07 18:05:16'),
(3507, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-07 18:08:06', '2023-11-07 18:08:06'),
(3508, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-07 18:09:13', '2023-11-07 18:09:13'),
(3509, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-07 18:11:31', '2023-11-07 18:11:31'),
(3510, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-07 18:11:48', '2023-11-07 18:11:48'),
(3511, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-07 18:11:58', '2023-11-07 18:11:58'),
(3512, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-07 18:12:09', '2023-11-07 18:12:09'),
(3513, 25, 'Mettre à jour le N° de serie avec 846531654132 pour la panne ID= 330', '2023-11-07 18:35:09', '2023-11-07 18:35:09'),
(3514, 25, 'La panne est suspendue avec succès PanneID= 331', '2023-11-07 18:37:24', '2023-11-07 18:37:24'),
(3515, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 331', '2023-11-07 18:41:17', '2023-11-07 18:41:17'),
(3516, 25, 'La panne est suspendue avec succès PanneID= 331', '2023-11-07 18:41:37', '2023-11-07 18:41:37'),
(3517, 25, 'Mettre à jour le N° de serie avec 846531654132684515341 pour la panne ID= 330', '2023-11-07 18:43:24', '2023-11-07 18:43:24'),
(3518, 25, 'Mettre à jour la description avec hello world pour la panne ID= 330', '2023-11-07 18:43:39', '2023-11-07 18:43:39'),
(3519, 25, 'Mettre à jour le Type de panne avec Problème de démo-Dalle cassée-Bande horizontal-Bande vertical pour la panne ID= 330', '2023-11-07 18:44:27', '2023-11-07 18:44:27'),
(3520, 25, 'Mettre à jour le Type de panne avec Dalle cassée pour la panne ID= 330', '2023-11-07 18:44:40', '2023-11-07 18:44:40'),
(3521, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 331', '2023-11-08 18:12:49', '2023-11-08 18:12:49'),
(3522, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-08 21:52:12', '2023-11-08 21:52:12'),
(3523, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-08 21:52:53', '2023-11-08 21:52:53'),
(3524, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 357', '2023-11-08 22:27:55', '2023-11-08 22:27:55'),
(3525, 25, 'Mettre à jour le N° de serie avec 465132465132 pour la panne ID= 357', '2023-11-08 22:38:12', '2023-11-08 22:38:12'),
(3526, 25, 'Mettre à jour la Progression avec Panne En reparation au centre a été vérifiée avec succès. pour la panne ID= 357', '2023-11-08 22:47:09', '2023-11-08 22:47:09'),
(3527, 25, 'Mettre à jour le N° de serie avec 5412645132465132 pour la panne ID= 356', '2023-11-08 22:49:11', '2023-11-08 22:49:11'),
(3528, 25, 'Mettre à jour la Progression avec Panne En reparation au centre a été vérifiée avec succès. pour la panne ID= 356', '2023-11-08 22:49:17', '2023-11-08 22:49:17'),
(3529, 25, 'Mettre à jour le N° de serie avec 846513513 pour la panne ID= 359', '2023-11-08 22:49:40', '2023-11-08 22:49:40'),
(3530, 25, 'Mettre à jour la Progression avec Panne En reparation au centre a été vérifiée avec succès. pour la panne ID= 359', '2023-11-08 22:49:51', '2023-11-08 22:49:51'),
(3531, 25, 'Mettre à jour le N° de serie avec 414651325132 pour la panne ID= 368', '2023-11-08 22:50:56', '2023-11-08 22:50:56'),
(3532, 25, 'Mettre à jour la Progression avec Panne En reparation au centre a été vérifiée avec succès. pour la panne ID= 368', '2023-11-08 22:51:02', '2023-11-08 22:51:02'),
(3533, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 368', '2023-11-08 22:57:28', '2023-11-08 22:57:28'),
(3534, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 368', '2023-11-08 22:58:33', '2023-11-08 22:58:33'),
(3535, 25, 'Mettre à jour le Type de panne avec Tache sur écran-Pas d’affichage-Pb d’image pour la panne ID= 368', '2023-11-08 22:59:13', '2023-11-08 22:59:13'),
(3536, 25, 'deposer la panne ID= 372', '2023-11-08 23:14:48', '2023-11-08 23:14:48'),
(3537, 25, 'deposer la panne ID= 373', '2023-11-08 23:17:56', '2023-11-08 23:17:56'),
(3538, 25, 'deposer la panne ID= 374', '2023-11-08 23:18:30', '2023-11-08 23:18:30'),
(3539, 25, 'deposer la panne ID= 374', '2023-11-08 23:23:08', '2023-11-08 23:23:08'),
(3540, 25, 'deposer la panne ID= 374', '2023-11-08 23:24:55', '2023-11-08 23:24:55'),
(3541, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 374', '2023-11-08 23:26:22', '2023-11-08 23:26:22'),
(3542, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 374', '2023-11-08 23:26:25', '2023-11-08 23:26:25'),
(3543, 25, 'deposer la panne ID= 374', '2023-11-08 23:52:51', '2023-11-08 23:52:51'),
(3544, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 374', '2023-11-08 23:54:06', '2023-11-08 23:54:06'),
(3545, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 374', '2023-11-08 23:54:08', '2023-11-08 23:54:08'),
(3546, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 374', '2023-11-08 23:54:29', '2023-11-08 23:54:29'),
(3547, 25, 'deposer la panne ID= 379', '2023-11-09 00:08:31', '2023-11-09 00:08:31'),
(3548, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 379', '2023-11-09 00:08:43', '2023-11-09 00:08:43'),
(3549, 25, 'Mettre à jour la description avec hello its Action corrective description pour la panne ID= 379', '2023-11-09 00:43:26', '2023-11-09 00:43:26'),
(3550, 25, 'Mettre à jour l\'Action Corrective avec Software (Et non pas Mise à jour) pour la panne ID= 379', '2023-11-09 00:45:05', '2023-11-09 00:45:05'),
(3551, 25, 'Mettre à jour la description avec Boumrar pour la panne ID= 379', '2023-11-09 00:46:14', '2023-11-09 00:46:14'),
(3552, 25, 'Mettre à jour l\'Action Corrective avec Software (Et non pas Mise à jour)-Changement de sheets pour la panne ID= 379', '2023-11-09 00:50:22', '2023-11-09 00:50:22'),
(3553, 25, 'Mettre à jour la description avec dhsl;v,uvshnvjskmfdlksmlfdsml;kfmslkdfdsjfkfnkjsdfnkjsdnfkjsdnfkjsdnkjfsn pour la panne ID= 379', '2023-11-09 00:52:57', '2023-11-09 00:52:57'),
(3554, 25, 'Mettre à jour l\'Action Corrective avec Changement de sheets pour la panne ID= 379', '2023-11-09 00:53:18', '2023-11-09 00:53:18'),
(3555, 25, 'Mettre à jour la description avec dhsl;v,uvshnvjskmfdlksmlfdsml;kfmslkdfdsjfkfnkjsdfnkjsdnfkjsdnfkjn pour la panne ID= 379', '2023-11-09 00:59:11', '2023-11-09 00:59:11'),
(3556, 25, 'Mettre à jour la description avec dhsl;v,uvshnvjskmfdlksmlfdsml;kfmslkdfdsjfkfnkjsdfnkjsdnfkjsdnfkjn2 pour la panne ID= 379', '2023-11-09 01:00:02', '2023-11-09 01:00:02'),
(3557, 25, 'Mettre à jour l\'Action Corrective avec Changement de sheets-Software (Et non pas Mise à jour) et la description avec dhsl;v,uvshnvjskmfdlksmlfdsml;kfmslkdgfdsjfkfnkjsdfnkjsdnfkjsdnfkjn2 pour la panne ID= 379', '2023-11-09 01:00:19', '2023-11-09 01:00:19'),
(3558, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 379', '2023-11-09 01:00:35', '2023-11-09 01:00:35'),
(3559, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 379', '2023-11-09 01:00:37', '2023-11-09 01:00:37'),
(3560, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 379', '2023-11-09 01:03:04', '2023-11-09 01:03:04'),
(3561, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 379', '2023-11-09 01:05:56', '2023-11-09 01:05:56'),
(3562, 25, 'deposer la panne ID= 380', '2023-11-09 01:09:14', '2023-11-09 01:09:14'),
(3563, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 380', '2023-11-09 01:09:28', '2023-11-09 01:09:28'),
(3564, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC-Changement de LVDS et la description avec 123 pour la panne ID= 380', '2023-11-09 01:09:41', '2023-11-09 01:09:41'),
(3565, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 380', '2023-11-09 01:10:06', '2023-11-09 01:10:06'),
(3566, 20, 'l\'utilisateur connecté', '2023-11-09 01:21:30', '2023-11-09 01:21:30'),
(3567, 25, 'La panne est suspendue avec succès PanneID= 357', '2023-11-09 01:45:16', '2023-11-09 01:45:16'),
(3568, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 357', '2023-11-09 01:45:55', '2023-11-09 01:45:55'),
(3569, 25, 'La panne est suspendue avec succès PanneID= 357', '2023-11-09 01:46:33', '2023-11-09 01:46:33'),
(3570, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 357', '2023-11-09 01:50:58', '2023-11-09 01:50:58'),
(3571, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-09 01:51:11', '2023-11-09 01:51:11'),
(3572, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-09 01:54:22', '2023-11-09 01:54:22'),
(3573, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-09 01:55:07', '2023-11-09 01:55:07'),
(3574, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-09 01:56:29', '2023-11-09 01:56:29'),
(3575, 25, 'La panne est suspendue avec succès PanneID= 372', '2023-11-09 01:56:48', '2023-11-09 01:56:48'),
(3576, 25, 'La panne est suspendue avec succès PanneID= 331', '2023-11-09 02:13:26', '2023-11-09 02:13:26'),
(3577, 20, 'l\'utilisateur connecté', '2023-11-09 02:24:40', '2023-11-09 02:24:40'),
(3578, 20, 'supprimer l\'utilisateur avec ID = 26', '2023-11-09 02:46:57', '2023-11-09 02:46:57'),
(3579, 25, 'l\'utilisateur connecté', '2023-11-09 02:47:33', '2023-11-09 02:47:33'),
(3580, 25, 'La panne est suspendue avec succès PanneID= 356', '2023-11-09 02:47:41', '2023-11-09 02:47:41'),
(3581, 25, 'Mettre à jour le Type de panne avec Bande noire pour la panne ID= 330', '2023-11-09 02:48:11', '2023-11-09 02:48:11'),
(3582, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC-Changement d’inveter et la description avec Boumrar pour la panne ID= 330', '2023-11-09 02:48:24', '2023-11-09 02:48:24'),
(3583, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 330', '2023-11-09 02:48:37', '2023-11-09 02:48:37'),
(3584, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 330', '2023-11-09 02:48:39', '2023-11-09 02:48:39'),
(3585, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 330', '2023-11-09 02:48:51', '2023-11-09 02:48:51'),
(3586, 25, 'l\'utilisateur connecté', '2023-11-09 02:58:28', '2023-11-09 02:58:28'),
(3587, 20, 'l\'utilisateur connecté', '2023-11-09 03:03:07', '2023-11-09 03:03:07'),
(3588, 25, 'l\'utilisateur connecté', '2023-11-10 15:33:48', '2023-11-10 15:33:48'),
(3589, 25, 'deposer la panne ID= 375', '2023-11-10 16:30:41', '2023-11-10 16:30:41'),
(3590, 25, 'deposer la panne ID= 376', '2023-11-10 16:32:48', '2023-11-10 16:32:48'),
(3591, 25, 'deposer la panne ID= 375', '2023-11-10 16:36:15', '2023-11-10 16:36:15'),
(3592, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-10 19:57:37', '2023-11-10 19:57:37'),
(3593, 25, 'La panne est suspendue avec succès PanneID= 313', '2023-11-10 19:57:57', '2023-11-10 19:57:57'),
(3594, 25, 'Mettre à jour le N° de serie avec 89465132 et la description avec hello its description pour la panne ID= 333', '2023-11-10 19:58:20', '2023-11-10 19:58:20'),
(3595, 25, 'Mettre à jour le Type de panne avec Problème de télécommande-Dalle cassée pour la panne ID= 333', '2023-11-10 19:58:29', '2023-11-10 19:58:29'),
(3596, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 333', '2023-11-10 19:58:37', '2023-11-10 19:58:37'),
(3597, 25, 'Mettre à jour l\'Action Corrective avec Reprogrammation de la mémoire flash-Changement de LVDS-Modification diffuseur 123 et la description avec Description of action corrective pour la panne ID= 333', '2023-11-10 19:59:10', '2023-11-10 19:59:10'),
(3598, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 333', '2023-11-10 19:59:26', '2023-11-10 19:59:26'),
(3599, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 333', '2023-11-10 20:00:40', '2023-11-10 20:00:40'),
(3600, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle-Changement de LVDS et la description avec xsascsadasd pour la panne ID= 373', '2023-11-10 20:01:31', '2023-11-10 20:01:31'),
(3601, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 373', '2023-11-10 20:01:36', '2023-11-10 20:01:36'),
(3602, 25, 'Mettre à jour le N° de serie avec 99999999 pour la panne ID= 376', '2023-11-10 20:01:56', '2023-11-10 20:01:56'),
(3603, 25, 'Mettre à jour l\'Action Corrective avec Changement de carte graphique et la description avec 4653 pour la panne ID= 376', '2023-11-10 20:02:03', '2023-11-10 20:02:03'),
(3604, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:02:07', '2023-11-10 20:02:07'),
(3605, 25, 'Mettre à jour le N° de serie avec 888888 pour la panne ID= 376', '2023-11-10 20:03:52', '2023-11-10 20:03:52'),
(3606, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:04:16', '2023-11-10 20:04:16'),
(3607, 25, 'Mettre à jour le N° de serie avec 1111111111 pour la panne ID= 376', '2023-11-10 20:08:54', '2023-11-10 20:08:54'),
(3608, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:09:15', '2023-11-10 20:09:15'),
(3609, 25, 'Mettre à jour le N° de serie avec 3333333 pour la panne ID= 376', '2023-11-10 20:10:30', '2023-11-10 20:10:30'),
(3610, 25, 'Mettre à jour le N° de serie avec 969696 pour la panne ID= 376', '2023-11-10 20:13:11', '2023-11-10 20:13:11'),
(3611, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:13:15', '2023-11-10 20:13:15'),
(3612, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:14:02', '2023-11-10 20:14:02'),
(3613, 25, 'Mettre à jour le N° de serie avec 8888888888 pour la panne ID= 376', '2023-11-10 20:14:42', '2023-11-10 20:14:42'),
(3614, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 376', '2023-11-10 20:14:47', '2023-11-10 20:14:47'),
(3615, 25, 'Mettre à jour le N° de serie avec 68451 pour la panne ID= 358', '2023-11-10 20:16:24', '2023-11-10 20:16:24'),
(3616, 25, 'Mettre à jour le Type de panne avec Écran bleu-Particules et le N° de serie avec 99999999999 et la description avec 44 pour la panne ID= 358', '2023-11-10 20:19:59', '2023-11-10 20:19:59'),
(3617, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 358', '2023-11-10 20:20:05', '2023-11-10 20:20:05'),
(3618, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 358', '2023-11-10 20:20:07', '2023-11-10 20:20:07'),
(3619, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 358', '2023-11-10 20:20:10', '2023-11-10 20:20:10'),
(3620, 25, 'Mettre à jour l\'Action Corrective avec Reprogrammation de la mémoire flash pour la panne ID= 358', '2023-11-10 20:20:19', '2023-11-10 20:20:19'),
(3621, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 358', '2023-11-10 20:20:24', '2023-11-10 20:20:24'),
(3622, 25, 'Mettre à jour l\'Action Corrective avec Software (Et non pas Mise à jour) et la description avec 846531 pour la panne ID= 357', '2023-11-10 20:28:55', '2023-11-10 20:28:55'),
(3623, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 357', '2023-11-10 20:29:04', '2023-11-10 20:29:04'),
(3624, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 357', '2023-11-10 20:29:06', '2023-11-10 20:29:06'),
(3625, 25, 'deposer la panne ID= 381', '2023-11-10 20:32:14', '2023-11-10 20:32:14'),
(3626, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 381', '2023-11-10 20:32:25', '2023-11-10 20:32:25'),
(3627, 25, 'Mettre à jour l\'Action Corrective avec Reprogrammation de la mémoire flash pour la panne ID= 381', '2023-11-10 20:32:28', '2023-11-10 20:32:28'),
(3628, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 381', '2023-11-10 20:32:31', '2023-11-10 20:32:31'),
(3629, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 381', '2023-11-10 20:32:33', '2023-11-10 20:32:33'),
(3630, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 381', '2023-11-10 20:32:34', '2023-11-10 20:32:34'),
(3631, 25, 'La panne est suspendue avec succès PanneID= 381', '2023-11-10 20:33:43', '2023-11-10 20:33:43'),
(3632, 20, 'l\'utilisateur connecté', '2023-11-10 20:40:17', '2023-11-10 20:40:17'),
(3633, 20, 'supprimer l\'utilisateur avec ID = 24', '2023-11-10 20:41:17', '2023-11-10 20:41:17'),
(3634, 20, 'supprimer l\'utilisateur avec ID = 23', '2023-11-10 20:42:55', '2023-11-10 20:42:55'),
(3635, 20, 'supprimer l\'utilisateur avec ID = 22', '2023-11-10 20:43:13', '2023-11-10 20:43:13'),
(3636, 20, 'supprimer l\'utilisateur avec ID = 21', '2023-11-10 20:44:15', '2023-11-10 20:44:15'),
(3637, 25, 'l\'utilisateur connecté', '2023-11-10 20:44:38', '2023-11-10 20:44:38'),
(3638, 25, 'l\'utilisateur connecté', '2023-11-10 20:49:06', '2023-11-10 20:49:06'),
(3639, 25, 'deposer la panne ID= 398', '2023-11-10 20:49:16', '2023-11-10 20:49:16'),
(3640, 25, 'Mettre à jour l\'Action Corrective avec Software pour la panne ID= 398', '2023-11-10 20:49:39', '2023-11-10 20:49:39'),
(3641, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 398', '2023-11-10 20:49:43', '2023-11-10 20:49:43'),
(3642, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 313', '2023-11-10 22:14:33', '2023-11-10 22:14:33'),
(3643, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 313', '2023-11-10 22:14:37', '2023-11-10 22:14:37'),
(3644, 19, 'l\'utilisateur connecté', '2023-12-21 10:30:16', '2023-12-21 10:30:16'),
(3645, 20, 'l\'utilisateur connecté', '2023-12-21 10:30:33', '2023-12-21 10:30:33'),
(3646, 25, 'l\'utilisateur connecté', '2023-12-21 10:34:06', '2023-12-21 10:34:06'),
(3647, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 356', '2023-12-21 10:34:25', '2023-12-21 10:34:25'),
(3648, 25, 'l\'utilisateur connecté', '2023-12-21 10:38:21', '2023-12-21 10:38:21'),
(3649, 25, 'l\'utilisateur connecté', '2023-12-21 16:58:04', '2023-12-21 16:58:04'),
(3650, 25, 'deposer la panne ID= 399', '2023-12-21 16:59:22', '2023-12-21 16:59:22'),
(3651, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 399', '2023-12-21 17:00:00', '2023-12-21 17:00:00'),
(3652, 25, 'La panne est suspendue avec succès PanneID= 399', '2023-12-21 17:00:42', '2023-12-21 17:00:42'),
(3653, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 399', '2023-12-21 17:00:53', '2023-12-21 17:00:53'),
(3654, 25, 'Mettre à jour la Progression avec Panne reparée a été vérifiée avec succès. pour la panne ID= 399', '2023-12-21 17:02:29', '2023-12-21 17:02:29'),
(3655, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 399', '2023-12-21 17:02:32', '2023-12-21 17:02:32'),
(3656, 25, 'Mettre à jour l\'Action Corrective avec Changement d’inveter pour la panne ID= 399', '2023-12-21 17:02:50', '2023-12-21 17:02:50'),
(3657, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 399', '2023-12-21 17:02:55', '2023-12-21 17:02:55'),
(3658, 19, 'l\'utilisateur connecté', '2023-12-21 17:03:49', '2023-12-21 17:03:49'),
(3659, 20, 'l\'utilisateur connecté', '2023-12-21 17:05:59', '2023-12-21 17:05:59'),
(3660, 25, 'l\'utilisateur connecté', '2023-12-28 14:20:04', '2023-12-28 14:20:04'),
(3661, 25, 'Mettre à jour la description avec kjdsfhkjdsf pour la panne ID= 375', '2023-12-28 14:20:22', '2023-12-28 14:20:22'),
(3662, 25, 'Mettre à jour le N° de serie avec 1111111 pour la panne ID= 375', '2023-12-28 14:20:35', '2023-12-28 14:20:35'),
(3663, 25, 'Mettre à jour le Type de panne avec Problème d\'affichage-Pixel pour la panne ID= 375', '2023-12-28 14:20:43', '2023-12-28 14:20:43'),
(3664, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC et la description avec dfsdfs pour la panne ID= 375', '2023-12-28 14:20:55', '2023-12-28 14:20:55'),
(3665, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 375', '2023-12-28 14:21:16', '2023-12-28 14:21:16'),
(3666, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 375', '2023-12-28 14:21:22', '2023-12-28 14:21:22'),
(3667, 25, 'deposer la panne ID= 377', '2023-12-28 14:21:45', '2023-12-28 14:21:45'),
(3668, 25, 'deposer la panne ID= 378', '2023-12-28 14:23:08', '2023-12-28 14:23:08'),
(3669, 25, 'deposer la panne ID= 377', '2023-12-28 14:28:45', '2023-12-28 14:28:45'),
(3670, 20, 'l\'utilisateur connecté', '2024-01-28 09:06:02', '2024-01-28 09:06:02'),
(3671, 20, 'met à jour le profil de l\'utilisateur avec ID = 19', '2024-01-28 09:06:24', '2024-01-28 09:06:24'),
(3672, 20, 'met à jour le profil de l\'utilisateur avec ID = 20', '2024-01-28 09:06:43', '2024-01-28 09:06:43'),
(3673, 20, 'met à jour le profil de l\'utilisateur avec ID = 25', '2024-01-28 09:06:59', '2024-01-28 09:06:59'),
(3674, 25, 'l\'utilisateur connecté', '2024-01-28 09:07:33', '2024-01-28 09:07:33'),
(3675, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:07:51', '2024-01-28 09:07:51'),
(3676, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:08:37', '2024-01-28 09:08:37'),
(3677, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:10:24', '2024-01-28 09:10:24'),
(3678, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:10:25', '2024-01-28 09:10:25'),
(3679, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 356', '2024-01-28 09:10:35', '2024-01-28 09:10:35'),
(3680, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:43:57', '2024-01-28 09:43:57'),
(3681, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:44:04', '2024-01-28 09:44:04'),
(3682, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 09:49:46', '2024-01-28 09:49:46'),
(3683, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 384', '2024-01-28 09:53:27', '2024-01-28 09:53:27'),
(3684, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 384', '2024-01-28 09:53:29', '2024-01-28 09:53:29'),
(3685, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 384', '2024-01-28 09:53:34', '2024-01-28 09:53:34'),
(3686, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 09:54:06', '2024-01-28 09:54:06'),
(3687, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 356', '2024-01-28 09:55:24', '2024-01-28 09:55:24'),
(3688, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:56:23', '2024-01-28 09:56:23'),
(3689, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:56:24', '2024-01-28 09:56:24'),
(3690, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:56:24', '2024-01-28 09:56:24'),
(3691, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:56:24', '2024-01-28 09:56:24'),
(3692, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:57:43', '2024-01-28 09:57:43'),
(3693, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:57:44', '2024-01-28 09:57:44'),
(3694, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 09:57:49', '2024-01-28 09:57:49'),
(3695, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:57:52', '2024-01-28 09:57:52'),
(3696, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 09:57:58', '2024-01-28 09:57:58'),
(3697, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:58:00', '2024-01-28 09:58:00'),
(3698, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:58:01', '2024-01-28 09:58:01'),
(3699, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:58:02', '2024-01-28 09:58:02'),
(3700, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 09:59:11', '2024-01-28 09:59:11'),
(3701, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 09:59:14', '2024-01-28 09:59:14'),
(3702, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 09:59:21', '2024-01-28 09:59:21'),
(3703, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 382', '2024-01-28 10:00:54', '2024-01-28 10:00:54'),
(3704, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 10:03:01', '2024-01-28 10:03:01'),
(3705, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 382', '2024-01-28 10:03:06', '2024-01-28 10:03:06'),
(3706, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 10:03:13', '2024-01-28 10:03:13'),
(3707, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:09:19', '2024-01-28 10:09:19'),
(3708, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:09:30', '2024-01-28 10:09:30'),
(3709, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:09:43', '2024-01-28 10:09:43'),
(3710, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:12:15', '2024-01-28 10:12:15'),
(3711, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:12:40', '2024-01-28 10:12:40'),
(3712, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:16:07', '2024-01-28 10:16:07'),
(3713, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:16:56', '2024-01-28 10:16:56'),
(3714, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 10:18:14', '2024-01-28 10:18:14'),
(3715, 25, 'deposer la panne ID= 382', '2024-01-28 10:18:20', '2024-01-28 10:18:20'),
(3716, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 10:18:31', '2024-01-28 10:18:31'),
(3717, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 10:19:05', '2024-01-28 10:19:05'),
(3718, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 10:26:47', '2024-01-28 10:26:47'),
(3719, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 10:44:27', '2024-01-28 10:44:27'),
(3720, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 383', '2024-01-28 10:56:19', '2024-01-28 10:56:19'),
(3721, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 383', '2024-01-28 10:56:19', '2024-01-28 10:56:19'),
(3722, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 383', '2024-01-28 11:02:52', '2024-01-28 11:02:52'),
(3723, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 383', '2024-01-28 11:02:54', '2024-01-28 11:02:54'),
(3724, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 383', '2024-01-28 12:41:59', '2024-01-28 12:41:59'),
(3725, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 383', '2024-01-28 12:41:59', '2024-01-28 12:41:59'),
(3726, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 383', '2024-01-28 12:48:37', '2024-01-28 12:48:37'),
(3727, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 383', '2024-01-28 12:48:37', '2024-01-28 12:48:37'),
(3728, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 383', '2024-01-28 12:48:39', '2024-01-28 12:48:39'),
(3729, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 383', '2024-01-28 12:52:53', '2024-01-28 12:52:53'),
(3730, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 13:42:39', '2024-01-28 13:42:39'),
(3731, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 13:43:47', '2024-01-28 13:43:47'),
(3732, 25, 'deposer la panne ID= 383', '2024-01-28 13:43:54', '2024-01-28 13:43:54'),
(3733, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 384', '2024-01-28 13:46:34', '2024-01-28 13:46:34'),
(3734, 25, 'deposer la panne ID= 384', '2024-01-28 13:46:39', '2024-01-28 13:46:39'),
(3735, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 13:50:46', '2024-01-28 13:50:46'),
(3736, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 13:50:59', '2024-01-28 13:50:59'),
(3737, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 13:51:01', '2024-01-28 13:51:01'),
(3738, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 13:51:04', '2024-01-28 13:51:04'),
(3739, 25, 'deposer la panne ID= 382', '2024-01-28 13:51:10', '2024-01-28 13:51:10'),
(3740, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 13:52:20', '2024-01-28 13:52:20'),
(3741, 25, 'deposer la panne ID= 382', '2024-01-28 13:52:25', '2024-01-28 13:52:25'),
(3742, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 379', '2024-01-28 13:57:34', '2024-01-28 13:57:34'),
(3743, 25, 'deposer la panne ID= 379', '2024-01-28 13:57:38', '2024-01-28 13:57:38'),
(3744, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 380', '2024-01-28 13:59:12', '2024-01-28 13:59:12'),
(3745, 25, 'deposer la panne ID= 380', '2024-01-28 14:01:23', '2024-01-28 14:01:23'),
(3746, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 14:06:43', '2024-01-28 14:06:43'),
(3747, 25, 'deposer la panne ID= 383', '2024-01-28 14:06:49', '2024-01-28 14:06:49'),
(3748, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 384', '2024-01-28 14:07:36', '2024-01-28 14:07:36'),
(3749, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 384', '2024-01-28 14:07:53', '2024-01-28 14:07:53'),
(3750, 25, 'deposer la panne ID= 384', '2024-01-28 14:07:57', '2024-01-28 14:07:57'),
(3751, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 376', '2024-01-28 14:09:30', '2024-01-28 14:09:30'),
(3752, 25, 'deposer la panne ID= 376', '2024-01-28 14:09:36', '2024-01-28 14:09:36'),
(3753, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 377', '2024-01-28 14:23:43', '2024-01-28 14:23:43'),
(3754, 25, 'deposer la panne ID= 377', '2024-01-28 14:23:47', '2024-01-28 14:23:47'),
(3755, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 378', '2024-01-28 14:24:07', '2024-01-28 14:24:07'),
(3756, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 378', '2024-01-28 14:24:24', '2024-01-28 14:24:24'),
(3757, 25, 'deposer la panne ID= 378', '2024-01-28 14:24:28', '2024-01-28 14:24:28'),
(3758, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 379', '2024-01-28 14:24:57', '2024-01-28 14:24:57'),
(3759, 25, 'deposer la panne ID= 379', '2024-01-28 14:25:03', '2024-01-28 14:25:03'),
(3760, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 380', '2024-01-28 14:27:33', '2024-01-28 14:27:33'),
(3761, 25, 'deposer la panne ID= 380', '2024-01-28 14:27:38', '2024-01-28 14:27:38'),
(3762, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 381', '2024-01-28 15:26:41', '2024-01-28 15:26:41'),
(3763, 25, 'deposer la panne ID= 381', '2024-01-28 15:26:44', '2024-01-28 15:26:44'),
(3764, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 382', '2024-01-28 15:29:57', '2024-01-28 15:29:57'),
(3765, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 382', '2024-01-28 15:29:58', '2024-01-28 15:29:58'),
(3766, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 382', '2024-01-28 15:30:01', '2024-01-28 15:30:01'),
(3767, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 15:30:09', '2024-01-28 15:30:09'),
(3768, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 382', '2024-01-28 15:30:29', '2024-01-28 15:30:29'),
(3769, 25, 'deposer la panne ID= 382', '2024-01-28 15:30:32', '2024-01-28 15:30:32'),
(3770, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 383', '2024-01-28 18:41:48', '2024-01-28 18:41:48'),
(3771, 25, 'deposer la panne ID= 383', '2024-01-28 18:41:55', '2024-01-28 18:41:55'),
(3772, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 384', '2024-01-28 18:47:03', '2024-01-28 18:47:03'),
(3773, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 384', '2024-01-28 18:47:07', '2024-01-28 18:47:07'),
(3774, 25, 'deposer la panne ID= 384', '2024-01-28 18:47:17', '2024-01-28 18:47:17'),
(3775, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 275', '2024-01-28 19:09:17', '2024-01-28 19:09:17'),
(3776, 25, 'deposer la panne ID= 275', '2024-01-28 19:09:22', '2024-01-28 19:09:22'),
(3777, 25, 'Mettre à jour l\'Action Corrective avec Changement de sheets-Isolation de la dalle et la description avec hello its observation pour la panne ID= 275', '2024-01-28 19:10:45', '2024-01-28 19:10:45'),
(3778, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 275', '2024-01-28 19:10:51', '2024-01-28 19:10:51'),
(3779, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-01-28 19:11:24', '2024-01-28 19:11:24'),
(3780, 25, 'deposer la panne ID= 281', '2024-01-28 19:11:29', '2024-01-28 19:11:29'),
(3781, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 281', '2024-01-28 19:11:55', '2024-01-28 19:11:55'),
(3782, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 281', '2024-01-28 19:11:57', '2024-01-28 19:11:57'),
(3783, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 283', '2024-01-28 19:12:14', '2024-01-28 19:12:14'),
(3784, 25, 'deposer la panne ID= 283', '2024-01-28 19:12:18', '2024-01-28 19:12:18'),
(3785, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 284', '2024-01-28 19:14:16', '2024-01-28 19:14:16'),
(3786, 25, 'deposer la panne ID= 284', '2024-01-28 19:14:20', '2024-01-28 19:14:20'),
(3787, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 285', '2024-01-28 19:15:49', '2024-01-28 19:15:49'),
(3788, 25, 'deposer la panne ID= 285', '2024-01-28 19:15:53', '2024-01-28 19:15:53'),
(3789, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 296', '2024-01-28 19:17:25', '2024-01-28 19:17:25'),
(3790, 25, 'deposer la panne ID= 296', '2024-01-28 19:17:31', '2024-01-28 19:17:31'),
(3791, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 309', '2024-01-28 19:21:56', '2024-01-28 19:21:56'),
(3792, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 309', '2024-01-28 19:22:04', '2024-01-28 19:22:04'),
(3793, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 309', '2024-01-28 19:22:11', '2024-01-28 19:22:11'),
(3794, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 309', '2024-01-28 19:22:23', '2024-01-28 19:22:23'),
(3795, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 309', '2024-01-28 19:24:44', '2024-01-28 19:24:44'),
(3796, 25, 'deposer la panne ID= 309', '2024-01-28 19:24:48', '2024-01-28 19:24:48'),
(3797, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 310', '2024-01-28 19:26:21', '2024-01-28 19:26:21'),
(3798, 25, 'deposer la panne ID= 310', '2024-01-28 19:26:26', '2024-01-28 19:26:26'),
(3799, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 311', '2024-01-28 19:27:06', '2024-01-28 19:27:06'),
(3800, 25, 'deposer la panne ID= 311', '2024-01-28 19:27:10', '2024-01-28 19:27:10'),
(3801, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 312', '2024-01-28 19:27:29', '2024-01-28 19:27:29'),
(3802, 25, 'deposer la panne ID= 312', '2024-01-28 19:27:34', '2024-01-28 19:27:34'),
(3803, 25, 'Mettre à jour l\'Action Corrective avec Software (Et non pas Mise à jour) et la description avec hello it observation pour la panne ID= 312', '2024-01-28 19:28:58', '2024-01-28 19:28:58'),
(3804, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 312', '2024-01-28 19:29:03', '2024-01-28 19:29:03'),
(3805, 25, 'Mettre à jour l\'Action Corrective avec Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur) et la description avec hello its observation pour la panne ID= 281', '2024-01-28 19:30:04', '2024-01-28 19:30:04'),
(3806, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 281', '2024-01-28 19:30:09', '2024-01-28 19:30:09'),
(3807, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 281', '2024-01-28 19:30:14', '2024-01-28 19:30:14'),
(3808, 25, 'La panne est suspendue avec succès PanneID= 281', '2024-01-28 19:30:48', '2024-01-28 19:30:48'),
(3809, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 313', '2024-01-29 19:08:23', '2024-01-29 19:08:23'),
(3810, 25, 'deposer la panne ID= 313', '2024-01-29 19:08:37', '2024-01-29 19:08:37'),
(3811, 25, 'Mettre à jour l\'Action Corrective avec Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur) et la description avec hello its description pour la panne ID= 313', '2024-01-29 19:11:42', '2024-01-29 19:11:42'),
(3812, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 313', '2024-01-29 19:11:47', '2024-01-29 19:11:47'),
(3813, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 313', '2024-01-29 19:12:38', '2024-01-29 19:12:38'),
(3814, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 317', '2024-01-29 19:13:36', '2024-01-29 19:13:36'),
(3815, 25, 'deposer la panne ID= 317', '2024-01-29 19:13:42', '2024-01-29 19:13:42'),
(3816, 25, 'Mettre à jour l\'Action Corrective avec Changement de LVDS et la description avec hello its observation pour la panne ID= 317', '2024-01-29 19:14:08', '2024-01-29 19:14:08'),
(3817, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 317', '2024-01-29 19:14:12', '2024-01-29 19:14:12'),
(3818, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 317', '2024-01-29 19:14:53', '2024-01-29 19:14:53'),
(3819, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 318', '2024-01-29 19:15:25', '2024-01-29 19:15:25'),
(3820, 25, 'deposer la panne ID= 318', '2024-01-29 19:15:31', '2024-01-29 19:15:31'),
(3821, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle-Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur) et la description avec hello its observation pour la panne ID= 318', '2024-01-29 19:16:09', '2024-01-29 19:16:09'),
(3822, 25, 'Mettre à jour la Progression avec Panne en attente de pickup a été vérifiée avec succès. pour la panne ID= 318', '2024-01-29 19:16:14', '2024-01-29 19:16:14'),
(3823, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 318', '2024-01-29 19:16:26', '2024-01-29 19:16:26'),
(3824, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 319', '2024-01-29 19:17:03', '2024-01-29 19:17:03'),
(3825, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 319', '2024-01-29 19:17:13', '2024-01-29 19:17:13'),
(3826, 25, 'deposer la panne ID= 319', '2024-01-29 19:17:19', '2024-01-29 19:17:19'),
(3827, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 319', '2024-01-29 19:17:38', '2024-01-29 19:17:38'),
(3828, 25, 'Mettre à jour l\'Action Corrective avec Changement de BLU et la description avec hello its observation from stream after sales service of BEAU LIEU - ALGER pour la panne ID= 319', '2024-01-29 19:19:29', '2024-01-29 19:19:29'),
(3829, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 319', '2024-01-29 19:19:44', '2024-01-29 19:19:44'),
(3830, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 319', '2024-01-29 19:20:49', '2024-01-29 19:20:49'),
(3831, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 319', '2024-01-29 19:20:59', '2024-01-29 19:20:59'),
(3832, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle et la description avec hello its observation from stream after sales service of BEAU LIEU - ALGER pour la panne ID= 285', '2024-01-29 19:23:38', '2024-01-29 19:23:38'),
(3833, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 285', '2024-01-29 19:23:43', '2024-01-29 19:23:43'),
(3834, 25, 'Mettre à jour l\'Action Corrective avec Changement de SMPS et la description avec hello its observation of stream pour la panne ID= 283', '2024-01-29 19:25:51', '2024-01-29 19:25:51'),
(3835, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 283', '2024-01-29 19:25:54', '2024-01-29 19:25:54'),
(3836, 25, 'Mettre à jour l\'Action Corrective avec Changement de dalle et la description avec HELLO! its observation of stream pour la panne ID= 377', '2024-01-29 19:26:30', '2024-01-29 19:26:30'),
(3837, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 377', '2024-01-29 19:26:34', '2024-01-29 19:26:34'),
(3838, 25, 'Mettre à jour la description avec HELLO! its observation of stream pour la panne ID= 379', '2024-01-29 19:29:41', '2024-01-29 19:29:41'),
(3839, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 379', '2024-01-29 19:29:44', '2024-01-29 19:29:44'),
(3840, 25, 'Mettre à jour l\'Action Corrective avec Modification diffuseur (et non pas tailler diffuseur, réparer diffuseur) et la description avec HELLO! its observation of stream pour la panne ID= 378', '2024-01-29 19:30:05', '2024-01-29 19:30:05'),
(3841, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 378', '2024-01-29 19:30:09', '2024-01-29 19:30:09'),
(3842, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 322', '2024-01-29 19:32:13', '2024-01-29 19:32:13'),
(3843, 25, 'deposer la panne ID= 322', '2024-01-29 19:32:20', '2024-01-29 19:32:20'),
(3844, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle et la description avec HELLO! its observation of stream pour la panne ID= 322', '2024-01-29 19:32:27', '2024-01-29 19:32:27'),
(3845, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 322', '2024-01-29 19:32:39', '2024-01-29 19:32:39'),
(3846, 25, 'Mettre à jour l\'Action Corrective avec Changement de LVDS et la description avec HELLO! its observation of stream pour la panne ID= 383', '2024-01-29 19:32:55', '2024-01-29 19:32:55'),
(3847, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 383', '2024-01-29 19:32:58', '2024-01-29 19:32:58'),
(3848, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 326', '2024-01-29 19:35:51', '2024-01-29 19:35:51'),
(3849, 25, 'deposer la panne ID= 326', '2024-01-29 19:35:54', '2024-01-29 19:35:54'),
(3850, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 312', '2024-01-29 19:36:39', '2024-01-29 19:36:39'),
(3851, 25, 'deposer la panne ID= 312', '2024-01-29 19:36:42', '2024-01-29 19:36:42'),
(3852, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 313', '2024-01-29 19:37:30', '2024-01-29 19:37:30'),
(3853, 25, 'deposer la panne ID= 313', '2024-01-29 19:37:33', '2024-01-29 19:37:33'),
(3854, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 317', '2024-01-29 19:38:23', '2024-01-29 19:38:23'),
(3855, 25, 'deposer la panne ID= 317', '2024-01-29 19:38:27', '2024-01-29 19:38:27'),
(3856, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 318', '2024-01-29 19:39:08', '2024-01-29 19:39:08'),
(3857, 25, 'deposer la panne ID= 318', '2024-01-29 19:39:13', '2024-01-29 19:39:13'),
(3858, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 329', '2024-01-29 19:39:43', '2024-01-29 19:39:43'),
(3859, 25, 'deposer la panne ID= 329', '2024-01-29 19:39:46', '2024-01-29 19:39:46'),
(3860, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 330', '2024-01-29 19:40:19', '2024-01-29 19:40:19'),
(3861, 25, 'deposer la panne ID= 330', '2024-01-29 19:40:23', '2024-01-29 19:40:23'),
(3862, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 284', '2024-01-29 19:41:10', '2024-01-29 19:41:10'),
(3863, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 284', '2024-01-29 19:41:16', '2024-01-29 19:41:16'),
(3864, 25, 'deposer la panne ID= 284', '2024-01-29 19:41:22', '2024-01-29 19:41:22'),
(3865, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-01-29 19:41:54', '2024-01-29 19:41:54'),
(3866, 25, 'deposer la panne ID= 285', '2024-01-29 19:41:58', '2024-01-29 19:41:58'),
(3867, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 296', '2024-01-29 19:42:36', '2024-01-29 19:42:36'),
(3868, 25, 'deposer la panne ID= 296', '2024-01-29 19:42:40', '2024-01-29 19:42:40'),
(3869, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 309', '2024-01-29 19:46:00', '2024-01-29 19:46:00'),
(3870, 25, 'deposer la panne ID= 309', '2024-01-29 19:46:03', '2024-01-29 19:46:03'),
(3871, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 310', '2024-01-29 19:47:26', '2024-01-29 19:47:26'),
(3872, 25, 'deposer la panne ID= 310', '2024-01-29 19:47:30', '2024-01-29 19:47:30'),
(3873, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 311', '2024-01-29 19:48:55', '2024-01-29 19:48:55'),
(3874, 25, 'deposer la panne ID= 311', '2024-01-29 19:48:58', '2024-01-29 19:48:58'),
(3875, 25, 'l\'utilisateur connecté', '2024-01-29 20:10:20', '2024-01-29 20:10:20'),
(3876, 25, 'l\'utilisateur connecté', '2024-01-29 20:10:27', '2024-01-29 20:10:27'),
(3877, 25, 'l\'utilisateur connecté', '2024-01-29 20:10:33', '2024-01-29 20:10:33'),
(3878, 25, 'l\'utilisateur connecté', '2024-01-29 20:11:04', '2024-01-29 20:11:04'),
(3879, 20, 'l\'utilisateur connecté', '2024-01-29 20:13:00', '2024-01-29 20:13:00'),
(3880, 25, 'l\'utilisateur connecté', '2024-01-29 20:13:45', '2024-01-29 20:13:45'),
(3881, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 331', '2024-01-29 20:13:54', '2024-01-29 20:13:54'),
(3882, 25, 'La panne est suspendue avec succès PanneID= 331', '2024-01-29 20:14:01', '2024-01-29 20:14:01'),
(3883, 25, 'La panne est suspendue avec succès PanneID= 284', '2024-01-29 20:14:09', '2024-01-29 20:14:09'),
(3884, 25, 'l\'utilisateur connecté', '2024-02-01 13:47:35', '2024-02-01 13:47:35'),
(3885, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 275', '2024-02-01 13:49:08', '2024-02-01 13:49:08'),
(3886, 25, 'deposer la panne ID= 275', '2024-02-01 13:49:15', '2024-02-01 13:49:15'),
(3887, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-02-01 13:50:19', '2024-02-01 13:50:19'),
(3888, 25, 'deposer la panne ID= 281', '2024-02-01 13:50:22', '2024-02-01 13:50:22'),
(3889, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 281', '2024-02-01 13:50:26', '2024-02-01 13:50:26');
INSERT INTO `transactions` (`id`, `UserID`, `Action`, `createdAt`, `updatedAt`) VALUES
(3890, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 283', '2024-02-01 13:52:55', '2024-02-01 13:52:55'),
(3891, 25, 'deposer la panne ID= 283', '2024-02-01 13:53:01', '2024-02-01 13:53:01'),
(3892, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 284', '2024-02-01 13:54:35', '2024-02-01 13:54:35'),
(3893, 25, 'deposer la panne ID= 284', '2024-02-01 13:54:40', '2024-02-01 13:54:40'),
(3894, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-02-01 13:57:03', '2024-02-01 13:57:03'),
(3895, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-02-01 13:58:03', '2024-02-01 13:58:03'),
(3896, 25, 'deposer la panne ID= 285', '2024-02-01 13:58:07', '2024-02-01 13:58:07'),
(3897, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 275', '2024-02-01 14:01:19', '2024-02-01 14:01:19'),
(3898, 25, 'deposer la panne ID= 275', '2024-02-01 14:01:23', '2024-02-01 14:01:23'),
(3899, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-02-01 14:02:10', '2024-02-01 14:02:10'),
(3900, 25, 'deposer la panne ID= 281', '2024-02-01 14:02:13', '2024-02-01 14:02:13'),
(3901, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 283', '2024-02-01 14:03:40', '2024-02-01 14:03:40'),
(3902, 25, 'deposer la panne ID= 283', '2024-02-01 14:03:45', '2024-02-01 14:03:45'),
(3903, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 284', '2024-02-01 14:04:43', '2024-02-01 14:04:43'),
(3904, 25, 'deposer la panne ID= 284', '2024-02-01 14:04:46', '2024-02-01 14:04:46'),
(3905, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-02-01 14:06:08', '2024-02-01 14:06:08'),
(3906, 25, 'deposer la panne ID= 285', '2024-02-01 14:06:11', '2024-02-01 14:06:11'),
(3907, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 296', '2024-02-01 14:07:10', '2024-02-01 14:07:10'),
(3908, 25, 'deposer la panne ID= 296', '2024-02-01 14:07:15', '2024-02-01 14:07:15'),
(3909, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 309', '2024-02-01 14:07:46', '2024-02-01 14:07:46'),
(3910, 25, 'deposer la panne ID= 309', '2024-02-01 14:07:49', '2024-02-01 14:07:49'),
(3911, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 310', '2024-02-01 14:08:23', '2024-02-01 14:08:23'),
(3912, 25, 'deposer la panne ID= 310', '2024-02-01 14:08:26', '2024-02-01 14:08:26'),
(3913, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 311', '2024-02-01 14:09:38', '2024-02-01 14:09:38'),
(3914, 25, 'deposer la panne ID= 311', '2024-02-01 14:09:42', '2024-02-01 14:09:42'),
(3915, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 312', '2024-02-01 14:10:31', '2024-02-01 14:10:31'),
(3916, 25, 'deposer la panne ID= 312', '2024-02-01 14:10:35', '2024-02-01 14:10:35'),
(3917, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 313', '2024-02-01 14:11:11', '2024-02-01 14:11:11'),
(3918, 25, 'deposer la panne ID= 313', '2024-02-01 14:11:15', '2024-02-01 14:11:15'),
(3919, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 317', '2024-02-01 14:12:49', '2024-02-01 14:12:49'),
(3920, 25, 'deposer la panne ID= 317', '2024-02-01 14:12:52', '2024-02-01 14:12:52'),
(3921, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 318', '2024-02-01 14:15:01', '2024-02-01 14:15:01'),
(3922, 25, 'deposer la panne ID= 318', '2024-02-01 14:15:05', '2024-02-01 14:15:05'),
(3923, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 319', '2024-02-01 14:16:14', '2024-02-01 14:16:14'),
(3924, 25, 'deposer la panne ID= 319', '2024-02-01 14:16:19', '2024-02-01 14:16:19'),
(3925, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 322', '2024-02-01 14:57:03', '2024-02-01 14:57:03'),
(3926, 25, 'deposer la panne ID= 322', '2024-02-01 14:57:16', '2024-02-01 14:57:16'),
(3927, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 275', '2024-02-01 15:00:04', '2024-02-01 15:00:04'),
(3928, 25, 'deposer la panne ID= 275', '2024-02-01 15:00:13', '2024-02-01 15:00:13'),
(3929, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 322', '2024-02-01 15:03:53', '2024-02-01 15:03:53'),
(3930, 25, 'deposer la panne ID= 322', '2024-02-01 15:03:57', '2024-02-01 15:03:57'),
(3931, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-02-01 15:06:27', '2024-02-01 15:06:27'),
(3932, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 275', '2024-02-01 15:07:35', '2024-02-01 15:07:35'),
(3933, 25, 'deposer la panne ID= 275', '2024-02-01 15:07:43', '2024-02-01 15:07:43'),
(3934, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 333', '2024-02-01 15:08:50', '2024-02-01 15:08:50'),
(3935, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 333', '2024-02-01 15:08:55', '2024-02-01 15:08:55'),
(3936, 25, 'deposer la panne ID= 333', '2024-02-01 15:09:00', '2024-02-01 15:09:00'),
(3937, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 330', '2024-02-01 15:10:48', '2024-02-01 15:10:48'),
(3938, 25, 'deposer la panne ID= 330', '2024-02-01 15:10:52', '2024-02-01 15:10:52'),
(3939, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 332', '2024-02-01 15:12:34', '2024-02-01 15:12:34'),
(3940, 25, 'deposer la panne ID= 332', '2024-02-01 15:12:44', '2024-02-01 15:12:44'),
(3941, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 329', '2024-02-01 15:13:50', '2024-02-01 15:13:50'),
(3942, 25, 'deposer la panne ID= 329', '2024-02-01 15:13:54', '2024-02-01 15:13:54'),
(3943, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-02-01 15:18:28', '2024-02-01 15:18:28'),
(3944, 25, 'deposer la panne ID= 281', '2024-02-01 15:18:33', '2024-02-01 15:18:33'),
(3945, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 326', '2024-02-01 15:20:41', '2024-02-01 15:20:41'),
(3946, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 326', '2024-02-01 15:21:38', '2024-02-01 15:21:38'),
(3947, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 326', '2024-02-01 15:25:50', '2024-02-01 15:25:50'),
(3948, 25, 'deposer la panne ID= 326', '2024-02-01 15:25:53', '2024-02-01 15:25:53'),
(3949, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 283', '2024-02-01 15:29:57', '2024-02-01 15:29:57'),
(3950, 25, 'deposer la panne ID= 283', '2024-02-01 15:30:01', '2024-02-01 15:30:01'),
(3951, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-02-01 15:39:03', '2024-02-01 15:39:03'),
(3952, 25, 'deposer la panne ID= 285', '2024-02-01 15:39:09', '2024-02-01 15:39:09'),
(3953, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 296', '2024-02-01 15:41:32', '2024-02-01 15:41:32'),
(3954, 25, 'deposer la panne ID= 296', '2024-02-01 15:41:37', '2024-02-01 15:41:37'),
(3955, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 309', '2024-02-01 15:43:14', '2024-02-01 15:43:14'),
(3956, 25, 'deposer la panne ID= 309', '2024-02-01 15:43:19', '2024-02-01 15:43:19'),
(3957, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 275', '2024-02-01 15:44:45', '2024-02-01 15:44:45'),
(3958, 25, 'deposer la panne ID= 275', '2024-02-01 15:44:49', '2024-02-01 15:44:49'),
(3959, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 330', '2024-02-01 15:47:43', '2024-02-01 15:47:43'),
(3960, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 330', '2024-02-01 15:47:47', '2024-02-01 15:47:47'),
(3961, 25, 'deposer la panne ID= 330', '2024-02-01 15:47:52', '2024-02-01 15:47:52'),
(3962, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 322', '2024-02-01 15:52:46', '2024-02-01 15:52:46'),
(3963, 25, 'deposer la panne ID= 322', '2024-02-01 15:52:52', '2024-02-01 15:52:52'),
(3964, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 400', '2024-02-01 15:59:27', '2024-02-01 15:59:27'),
(3965, 25, 'deposer la panne ID= 400', '2024-02-01 15:59:31', '2024-02-01 15:59:31'),
(3966, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 404', '2024-02-01 16:01:40', '2024-02-01 16:01:40'),
(3967, 25, 'deposer la panne ID= 404', '2024-02-01 16:01:44', '2024-02-01 16:01:44'),
(3968, 25, 'Mettre à jour l\'Action Corrective avec Reprogrammation de la mémoire flash pour la panne ID= 404', '2024-02-01 16:02:18', '2024-02-01 16:02:18'),
(3969, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 404', '2024-02-01 16:04:02', '2024-02-01 16:04:02'),
(3970, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 405', '2024-02-01 16:04:39', '2024-02-01 16:04:39'),
(3971, 25, 'deposer la panne ID= 405', '2024-02-01 16:04:43', '2024-02-01 16:04:43'),
(3972, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC et la description avec rrrrrrrr pour la panne ID= 405', '2024-02-01 16:05:10', '2024-02-01 16:05:10'),
(3973, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 405', '2024-02-01 16:05:13', '2024-02-01 16:05:13'),
(3974, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 406', '2024-02-01 16:05:43', '2024-02-01 16:05:43'),
(3975, 25, 'deposer la panne ID= 406', '2024-02-01 16:05:46', '2024-02-01 16:05:46'),
(3976, 25, 'Mettre à jour le Type de panne avec Problème de mise à jour-Trait horizontal-Bande vertical-Standby pour la panne ID= 406', '2024-02-01 16:06:55', '2024-02-01 16:06:55'),
(3977, 25, 'Mettre à jour l\'Action Corrective avec Changement de MPCB-Branchement de LVDS et la description avec 123456 pour la panne ID= 406', '2024-02-01 16:07:05', '2024-02-01 16:07:05'),
(3978, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 406', '2024-02-01 16:07:09', '2024-02-01 16:07:09'),
(3979, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 407', '2024-02-01 16:07:34', '2024-02-01 16:07:34'),
(3980, 25, 'deposer la panne ID= 407', '2024-02-01 16:07:38', '2024-02-01 16:07:38'),
(3981, 25, 'Mettre à jour l\'Action Corrective avec Changement de sheets et la description avec fdsfdsf pour la panne ID= 407', '2024-02-01 16:09:25', '2024-02-01 16:09:25'),
(3982, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 407', '2024-02-01 16:09:31', '2024-02-01 16:09:31'),
(3983, 25, 'Mettre à jour le Type de panne avec Problème du son-Pb d’image pour la panne ID= 407', '2024-02-01 16:09:59', '2024-02-01 16:09:59'),
(3984, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 408', '2024-02-01 16:10:10', '2024-02-01 16:10:10'),
(3985, 25, 'deposer la panne ID= 408', '2024-02-01 16:10:14', '2024-02-01 16:10:14'),
(3986, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC et la description avec fdgdfgdfgfd pour la panne ID= 408', '2024-02-01 16:11:29', '2024-02-01 16:11:29'),
(3987, 25, 'Mettre à jour le Type de panne avec NDP pour la panne ID= 408', '2024-02-01 16:11:39', '2024-02-01 16:11:39'),
(3988, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 408', '2024-02-01 16:11:42', '2024-02-01 16:11:42'),
(3989, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 408', '2024-02-01 16:11:44', '2024-02-01 16:11:44'),
(3990, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 408', '2024-02-01 16:11:48', '2024-02-01 16:11:48'),
(3991, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 281', '2024-02-01 16:15:01', '2024-02-01 16:15:01'),
(3992, 25, 'deposer la panne ID= 281', '2024-02-01 16:15:07', '2024-02-01 16:15:07'),
(3993, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 281', '2024-02-01 16:15:29', '2024-02-01 16:15:29'),
(3994, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 409', '2024-02-01 16:16:35', '2024-02-01 16:16:35'),
(3995, 25, 'deposer la panne ID= 409', '2024-02-01 16:16:39', '2024-02-01 16:16:39'),
(3996, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle et la description avec 8946654 pour la panne ID= 409', '2024-02-01 16:17:37', '2024-02-01 16:17:37'),
(3997, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 409', '2024-02-01 16:17:41', '2024-02-01 16:17:41'),
(3998, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 410', '2024-02-01 16:18:23', '2024-02-01 16:18:23'),
(3999, 25, 'deposer la panne ID= 410', '2024-02-01 16:18:26', '2024-02-01 16:18:26'),
(4000, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 283', '2024-02-01 16:22:17', '2024-02-01 16:22:17'),
(4001, 25, 'Mettre à jour le Statut Garantie avec null pour la panne ID= 283', '2024-02-01 16:22:21', '2024-02-01 16:22:21'),
(4002, 25, 'Mettre à jour le Statut Garantie avec Sous Garantie pour la panne ID= 283', '2024-02-01 16:22:23', '2024-02-01 16:22:23'),
(4003, 25, 'deposer la panne ID= 283', '2024-02-01 16:22:28', '2024-02-01 16:22:28'),
(4004, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 411', '2024-02-01 16:23:16', '2024-02-01 16:23:16'),
(4005, 25, 'deposer la panne ID= 411', '2024-02-01 16:23:21', '2024-02-01 16:23:21'),
(4006, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC et la description avec ZINO pour la panne ID= 411', '2024-02-01 16:23:58', '2024-02-01 16:23:58'),
(4007, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 411', '2024-02-01 16:24:11', '2024-02-01 16:24:11'),
(4008, 25, 'Mettre à jour le Statut Garantie avec Hors Garantie pour la panne ID= 412', '2024-02-01 16:26:55', '2024-02-01 16:26:55'),
(4009, 25, 'deposer la panne ID= 412', '2024-02-01 16:26:59', '2024-02-01 16:26:59'),
(4010, 25, 'Mettre à jour l\'Action Corrective avec Changement des IC et la description avec 46546 pour la panne ID= 412', '2024-02-01 16:27:33', '2024-02-01 16:27:33'),
(4011, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 412', '2024-02-01 16:27:40', '2024-02-01 16:27:40'),
(4012, 25, 'La panne est suspendue avec succès PanneID= 275', '2024-02-01 16:32:30', '2024-02-01 16:32:30'),
(4013, 25, 'L\'annulation de la suspension de la panne a été effectuée avec succès PanneID= 275', '2024-02-01 16:32:40', '2024-02-01 16:32:40'),
(4014, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 275', '2024-02-01 16:32:46', '2024-02-01 16:32:46'),
(4015, 25, 'La panne est suspendue avec succès PanneID= 275', '2024-02-01 16:32:53', '2024-02-01 16:32:53'),
(4016, 25, 'Mettre à jour la Progression avec Panne en attente de réparation a été vérifiée avec succès. pour la panne ID= 283', '2024-02-01 16:33:07', '2024-02-01 16:33:07'),
(4017, 25, 'Mettre à jour le Statut Garantie avec Sous Reserve pour la panne ID= 285', '2024-02-01 16:35:33', '2024-02-01 16:35:33'),
(4018, 25, 'deposer la panne ID= 285', '2024-02-01 16:35:37', '2024-02-01 16:35:37'),
(4019, 25, 'Mettre à jour l\'Action Corrective avec Isolation de la dalle-Reprogrammation de la mémoire flash pour la panne ID= 285', '2024-02-01 16:36:05', '2024-02-01 16:36:05'),
(4020, 25, 'Mettre à jour la Progression avec Panne livrée a été vérifiée avec succès. pour la panne ID= 285', '2024-02-01 16:36:09', '2024-02-01 16:36:09'),
(4021, 20, 'l\'utilisateur connecté', '2024-02-05 13:36:54', '2024-02-05 13:36:54'),
(4022, 25, 'l\'utilisateur connecté', '2024-02-05 13:40:12', '2024-02-05 13:40:12'),
(4023, 20, 'l\'utilisateur connecté', '2024-02-05 13:40:31', '2024-02-05 13:40:31'),
(4024, 20, 'l\'utilisateur connecté', '2024-02-05 13:41:46', '2024-02-05 13:41:46'),
(4025, 20, 'l\'utilisateur connecté', '2024-02-05 13:43:59', '2024-02-05 13:43:59'),
(4026, 25, 'l\'utilisateur connecté', '2024-02-06 22:51:42', '2024-02-06 22:51:42'),
(4027, 25, 'joindre une image pour la panne ID= 322', '2024-02-06 22:52:23', '2024-02-06 22:52:23'),
(4028, 25, 'joindre une image pour la panne ID= 322', '2024-02-06 22:53:31', '2024-02-06 22:53:31'),
(4029, 25, 'joindre une image pour la panne ID= 322', '2024-02-06 22:54:14', '2024-02-06 22:54:14'),
(4030, 25, 'joindre une image pour la panne ID= 330', '2024-02-06 22:57:28', '2024-02-06 22:57:28'),
(4031, 20, 'l\'utilisateur connecté', '2024-02-06 23:09:10', '2024-02-06 23:09:10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Email` varchar(55) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Telephone` varchar(255) NOT NULL,
  `Role` varchar(55) NOT NULL,
  `Centre` varchar(55) NOT NULL,
  `Suppression` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `updatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `Nom`, `Prenom`, `Email`, `Password`, `Telephone`, `Role`, `Centre`, `Suppression`, `createdAt`, `updatedAt`) VALUES
(19, 'Boumrar', 'morad', 'morad.boumrar@gmail.com', 'U2FsdGVkX18utpKsqfS7+Tf1cJGp1A7BezyU0J9lwWk=', '0521468753', 'DRCentre', 'BEAU LIEU - ALGER', 0, '2023-09-13', '2024-01-28'),
(20, 'Hakem', 'Yacine', 'yacine.hakem@gmail.com', 'U2FsdGVkX18MzCGTDU2PX79P0Tkjxdn6y5UgsAass9o=', '0512411179', 'Admin', 'BLIDA', 0, '2023-09-13', '2024-01-28'),
(25, 'Ouitisse', 'Youcef', 'Youcef.Ouitisse@gmail.com', 'U2FsdGVkX19fpQBCbMj1hAlm66j5EUoqDvzhAWHADoc=', '0654200013', 'SAV', 'BEAU LIEU - ALGER', 0, '2023-09-13', '2024-01-28');

-- --------------------------------------------------------

--
-- Structure de la table `wilayaofalgeria`
--

CREATE TABLE `wilayaofalgeria` (
  `id` int(11) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `Nom` varchar(55) DEFAULT NULL,
  `longitude` varchar(11) DEFAULT NULL,
  `latitude` varchar(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `wilayaofalgeria`
--

INSERT INTO `wilayaofalgeria` (`id`, `code`, `Nom`, `longitude`, `latitude`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Adrar', '27.976615', '-0.20396', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(2, 2, 'Chlef', '36.164651', '1.3383152', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(3, 3, 'Laghouat', '33.808033', '2.8613457', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(4, 4, 'Oum El Bouaghi', '35.837452', '6.9542028', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(5, 5, 'Batna', '35.550265', '6.1751704', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(6, 6, 'Bejaia', '36.769596', '5.0085855', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(7, 7, 'Biskra', '34.851504', '5.7246709', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(8, 8, 'Bechar', '31.597760', '-1.854044', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(9, 9, 'Blida', '36.480302', '2.8009379', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(10, 10, 'Bouira', '36.208423', '3.925049', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(11, 11, 'Tamanrasset', '22.274622', '5.6754684', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(12, 12, 'Tbessa', '35.411725', '8.110545', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(13, 13, 'Tlemcen', '34.895954', '-1.315097', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(14, 14, 'Tiaret', '35.359989', '1.3916159', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(15, 15, 'Tizi Ouzou', '36.700206', '4.075957', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(16, 16, 'Alger', '36.753825', '3.057841', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(17, 17, 'Djelfa', '34.667246', '3.2993118', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(18, 18, 'Jijel', '36.796271', '5.7504845', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(19, 19, 'Setif', '36.190517', '5.4202134', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(20, 20, 'Saida', '34.841945', '0.1483583', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(21, 21, 'Skikda', '36.877791', '6.9357204', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(22, 22, 'Sidi Bel Abbes', '35.206334', '-0.630136', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(23, 23, 'Annaba', '36.918434', '7.7452755', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(24, 24, 'Guelma', '36.456908', '7.4334312', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(25, 25, 'Constantine', '36.319475', '6.7370571', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(26, 26, 'Medea', '36.283840', '2.7728462', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(27, 27, 'Mostaganem', '35.975184', '0.1149273', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(28, 28, 'M\'Sila', '35.721147', '4.5187283', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(29, 29, 'Mascara', '35.382998', '0.1542592', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(30, 30, 'Ouargla', '32.196196', '4.9634113', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(31, 31, 'Oran', '35.706692', '-0.640586', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(32, 32, 'El Bayadh', '32.572275', '0.950011', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(33, 33, 'Illizi', '26.506599', '8.480587', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(34, 34, 'Bordj Bou Arreridj', '36.068648', '4.7691823', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(35, 35, 'Boumerdes', '36.756418', '3.4917212', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(36, 36, 'El Tarf', '36.753425', '8.2984543', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(37, 37, 'Tindouf', '27.246050', '-6.325289', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(38, 38, 'Tissemsilt', '35.602190', '1.802187', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(39, 39, 'El Oued', '33.371449', '6.8573436', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(40, 40, 'Khenchela', '35.426329', '7.1414137', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(41, 41, 'Souk Ahras', '36.277849', '7.9592299', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(42, 42, 'Tipaza', '36.598096', '2.4085379', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(43, 43, 'Mila', '36.451488', '6.2487316', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(44, 44, 'Ain Defla', '36.128391', '2.1772514', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(45, 45, 'Naama', '33.199560', '-0.802196', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(46, 46, 'Ain Temouchent', '35.404044', '-1.058097', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(47, 47, 'Ghardaefa', '32.589174', '3.7455655', '2023-09-12 19:04:26', '2023-09-12 19:04:26'),
(48, 48, 'Relizane', '35.805019', '0.867381', '2023-09-12 19:04:26', '2023-09-12 19:04:26');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agentsagrees`
--
ALTER TABLE `agentsagrees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pannes`
--
ALTER TABLE `pannes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `savs`
--
ALTER TABLE `savs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statisticscentres`
--
ALTER TABLE `statisticscentres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wilayaofalgeria`
--
ALTER TABLE `wilayaofalgeria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agentsagrees`
--
ALTER TABLE `agentsagrees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `pannes`
--
ALTER TABLE `pannes`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `savs`
--
ALTER TABLE `savs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `statisticscentres`
--
ALTER TABLE `statisticscentres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4032;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wilayaofalgeria`
--
ALTER TABLE `wilayaofalgeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
