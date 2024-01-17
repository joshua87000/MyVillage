-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 17 jan. 2024 à 07:31
-- Version du serveur : 10.5.20-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id21180522_mydatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `Document`
--

CREATE TABLE `Document` (
  `Id` int(11) NOT NULL,
  `Titre` text NOT NULL,
  `Contenu` text NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Langue` text NOT NULL,
  `FileName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Document`
--

INSERT INTO `Document` (`Id`, `Titre`, `Contenu`, `IdUser`, `Langue`, `FileName`) VALUES
(1, 'Langue', 'La langue douala (ba bwambo Duala à Douala) est parlée au Cameroun, elle appartient au groupe des langues bantu. C\'est une langue tonale. Il a quelques dialectes comme le Pongo et le Malimba. Le Douala appartient à la famille des langues bantoues et au groupe des langues sawabantu. Douala est l\'une des premières langues à être écrite par les missionnaires au Cameroun, avec une traduction du Nouveau Testament en 1862 par Alfred Saker. Au fil des années, Douala connaît trois orthographes principales, chacune sous l\'influence de la domination coloniale ou de missionnaires originaux : Allemand, français et anglais.', 1, 'Douala', 'nothing'),
(2, 'Langue', ' Les Bamoun sont un peuple d\'Afrique centrale basé à l\'ouest du Cameroun dans la région des Prairies où vivaient également les Bamileke et les Tikar près d\'eux par leurs ancêtres communs, leurs structures sociales et leurs langues. Leur langue, le bamum, appartient au groupe des langues semi-bantu de la famille des langues Niger-Congo. Le nombre de locuteurs bamoun était estimé à 215.000 en 1982. Les Bamouns sont l\'une des rares personnes en Afrique subsaharienne à avoir développé l\'écriture. Cette écriture a été inventée par le roi Njoya au début du XXe siècle. Le roi Njoya a construit une école pour encourager l\'utilisation du système d\'écriture. Cependant, l\'arrivée des Français a sonné la fin de la monarchie et de l\'écriture Bamun qui a été remplacé par la langue française.', 1, 'Bamoun', 'nothing'),
(3, 'Langue', ' Le Fang est une langue bantoïde du sud du Cameroun. Il est traditionnellement classé comme une langue occidentale Beboid, mais il n\'a pas été démontré qu\'il s\'agit d\'une famille valide. \"Fang\" est le nom du village où la langue est parlée.', 1, 'Fang', 'nothing'),
(7, 'Mairie de bayangam', 'Photo de l\'entrée de la mairie', 2, 'Bayangam', 'Maire de Bayangam.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Expression`
--

CREATE TABLE `Expression` (
  `Id` int(11) NOT NULL,
  `Mots` text NOT NULL,
  `Tr` text NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Expression`
--

INSERT INTO `Expression` (`Id`, `Mots`, `Tr`) VALUES
(2, 'Bonne nuit', '0'),
(3, 'Merci', '0'),
(4, 'S\'il vous plaît', '0'),
(5, 'Excusez-moi', '0'),
(6, 'Oui', '0'),
(7, 'Non', '0'),
(8, 'Comment ça va ?', '0'),
(9, 'Je vais bien.', '0'),
(10, 'Quel est ton nom ?', '0'),
(11, 'Mon nom est...', '0'),
(12, 'Ami', '0'),
(13, 'Famille', '0'),
(14, 'Maison', '0'),
(15, 'Nourriture', '0'),
(16, 'Eau', '0'),
(17, 'Soleil', '0'),
(18, 'Lune', '0'),
(19, 'Étoiles', '0'),
(20, 'Ciel', '0'),
(21, 'Terre', '0'),
(22, 'Montagne', '0'),
(23, 'Rivière', '0'),
(24, 'Forêt', '0'),
(25, 'Animal', '0'),
(26, 'Oiseau', '0'),
(27, 'Arbre', '0'),
(28, 'Fleur', '0'),
(29, 'Fruit', '0'),
(30, 'Légume', '0'),
(31, 'Vent', '0'),
(32, 'Pluie', '0'),
(33, 'Chaleur', '0'),
(34, 'Froid', '0'),
(35, 'Heure', '0'),
(36, 'Jour', '0'),
(37, 'Nuit', '0'),
(38, 'Hier', '0'),
(39, 'Aujourd\'hui', '0'),
(40, 'Demain', '0'),
(41, 'Maintenant', '0'),
(42, 'Plus tard', '0'),
(43, 'Petit', '0'),
(44, 'Grand', '0'),
(45, 'Beau', '0'),
(46, 'Vilain', '0'),
(47, 'Heureux', '0'),
(48, 'Triste', '0'),
(49, 'Fort', '0'),
(50, 'Faible', '0'),
(51, 'Rapide', '0'),
(52, 'Lent', '0'),
(53, 'Long', '0'),
(54, 'Court', '0'),
(55, 'Cher', '0'),
(56, 'Bon', '0'),
(57, 'Mauvais', '0'),
(58, 'Nouveau', '0'),
(59, 'Vieux', '0'),
(60, 'Jeune', '0'),
(61, 'Âgé', '0'),
(62, 'Riche', '0'),
(63, 'Pauvre', '0'),
(64, 'Plein', '0'),
(65, 'Vide', '0'),
(66, 'Propre', '0'),
(67, 'Sale', '0'),
(68, 'Doux', '0'),
(69, 'Amer', '0'),
(70, 'Salé', '0'),
(71, 'Épicé', '0'),
(72, 'Acide', '0'),
(73, 'Fort', '0'),
(74, 'Faible', '0'),
(75, 'Dur', '0'),
(76, 'Mou', '0'),
(77, 'Ouvert', '0'),
(78, 'Fermé', '0'),
(79, 'Lourd', '0'),
(80, 'Léger', '0'),
(81, 'Épais', '0'),
(82, 'Mince', '0'),
(83, 'Haut', '0'),
(84, 'Bas', '0'),
(85, 'Lointain', '0'),
(86, 'Proche', '0'),
(87, 'En avant', '0'),
(88, 'En arrière', '0'),
(89, 'Droit', '0'),
(90, 'Gauche', '0'),
(91, 'Haut', '0'),
(92, 'Bas', '0'),
(93, 'Tôt', '0'),
(94, 'Tard', '0'),
(95, 'Maintenant', '0'),
(96, 'Avant', '0'),
(97, 'Après', '0'),
(98, 'Hier soir', '0'),
(99, 'Demain matin', '0'),
(100, 'Ce matin', '0'),
(101, 'Cette nuit', '0'),
(102, 'Après-midi', '0'),
(103, 'Soirée', '0'),
(104, 'Aube', '0'),
(105, 'Crépuscule', '0'),
(106, 'Étoile du matin', '0'),
(107, 'Étoile du soir', '0'),
(108, 'Coucher du soleil', '0'),
(109, 'Lever du soleil', '0'),
(110, 'Ciel bleu', '0'),
(111, 'Nuages', '0'),
(112, 'Pluie', '0'),
(113, 'Neige', '0'),
(114, 'Vent', '0'),
(115, 'Tempête', '0'),
(116, 'Orage', '0'),
(117, 'Arc-en-ciel', '0'),
(118, 'Brume', '0'),
(119, 'Brouillard', '0'),
(120, 'Gel', '0'),
(121, 'Chaleur', '0'),
(122, 'Froid', '0'),
(123, 'Printemps', '0'),
(124, 'Été', '0'),
(125, 'Automne', '0'),
(126, 'Hiver', '0'),
(127, 'Janvier', '0'),
(128, 'Février', '0'),
(129, 'Mars', '0'),
(130, 'Avril', '0'),
(131, 'Mai', '0'),
(132, 'Juin', '0'),
(133, 'Juillet', '0'),
(134, 'Août', '0'),
(135, 'Septembre', '0'),
(136, 'Octobre', '0'),
(137, 'Novembre', '0'),
(138, 'Décembre', '0'),
(139, 'Jour férié', '0'),
(140, 'Fête', '0'),
(141, 'Anniversaire', '0'),
(142, 'Noël', '0'),
(143, 'Nouvel An', '0'),
(144, 'Pâques', '0'),
(145, 'Halloween', '0'),
(146, 'Saint-Valentin', '0'),
(147, 'Fête des Mères', '0'),
(148, 'Fête des Pères', '0'),
(149, 'Mariage', '0'),
(150, 'Divorce', '0'),
(151, 'Naissance', '0'),
(152, 'Décès', '0'),
(153, 'Hôpital', '0'),
(154, 'Docteur', '0'),
(155, 'Infirmière', '0'),
(156, 'Médicament', '0'),
(157, 'Santé', '0'),
(158, 'Maladie', '0'),
(159, 'Allergie', '0'),
(160, 'Blessure', '0'),
(161, 'Fièvre', '0'),
(162, 'Douleur', '0'),
(163, 'Stress', '0'),
(164, 'Anxiété', '0'),
(165, 'Dépression', '0'),
(166, 'Bonheur', '0'),
(167, 'Amour', '0'),
(168, 'Amitié', '0'),
(169, 'Colère', '0'),
(170, 'Peur', '0'),
(171, 'Surprise', '0'),
(172, 'Tristesse', '0'),
(173, 'Joie', '0'),
(174, 'Rire', '0'),
(175, 'Sourire', '0'),
(176, 'Pleurer', '0'),
(177, 'Chanter', '0'),
(178, 'Danser', '0'),
(179, 'Jouer', '0'),
(180, 'Lire', '0'),
(181, 'Écrire', '0'),
(182, 'Parler', '0'),
(183, 'Écouter', '0'),
(184, 'Regarder', '0'),
(185, 'Toucher', '0'),
(186, 'Sentir', '0'),
(187, 'Goûter', '0'),
(188, 'Apprendre', '0'),
(189, 'Comprendre', '0'),
(190, 'Savoir', '0'),
(191, 'Penser', '0'),
(192, 'Rêver', '0'),
(193, 'Espérer', '0'),
(194, 'Croire', '0'),
(195, 'Douter', '0'),
(196, 'Accepter', '0'),
(197, 'Refuser', '0'),
(198, 'Choisir', '0'),
(199, 'Attendre', '0'),
(200, 'Oublier', '0'),
(201, 'Se souvenir', '0'),
(202, 'Dire', '0'),
(203, 'Poser une question', '0'),
(204, 'Répondre', '0'),
(205, 'Expliquer', '0'),
(206, 'Écouter', '0'),
(207, 'Entendre', '0'),
(208, 'Regarder', '0'),
(209, 'Voir', '0'),
(210, 'Toucher', '0'),
(211, 'Sentir', '0'),
(212, 'Goûter', '0'),
(213, 'Manger', '0'),
(214, 'Boire', '0'),
(215, 'Dormir', '0'),
(216, 'Se réveiller', '0'),
(217, 'Rêver', '0'),
(218, 'Marcher', '0'),
(219, 'Courir', '0'),
(220, 'Sauter', '0'),
(221, 'Nager', '0'),
(222, 'Voler', '0'),
(223, 'Conduire', '0'),
(224, 'Voyager', '0'),
(225, 'Aller', '0'),
(226, 'Venir', '0'),
(227, 'Partir', '0'),
(228, 'Entrer', '0'),
(229, 'Sortir', '0'),
(230, 'Monter', '0'),
(231, 'Descendre', '0'),
(232, 'Arriver', '0'),
(233, 'Départ', '0'),
(234, 'Destination', '0'),
(235, 'Chemin', '0'),
(236, 'Route', '0'),
(237, 'Pont', '0'),
(238, 'Voiture', '0'),
(239, 'Moto', '0'),
(240, 'Vélo', '0'),
(241, 'Bus', '0'),
(242, 'Train', '0'),
(243, 'Avion', '0'),
(244, 'Bateau', '0'),
(245, 'Taxi', '0'),
(246, 'Marché', '0'),
(247, 'Magasin', '0'),
(248, 'Supermarché', '0'),
(249, 'Restaurant', '0'),
(250, 'Café', '0'),
(251, 'Hôtel', '0'),
(252, 'Maison', '0'),
(253, 'Appartement', '0'),
(254, 'Chambre', '0'),
(255, 'Cuisine', '0'),
(256, 'Salle de bains', '0'),
(257, 'Toilettes', '0'),
(258, 'Salon', '0'),
(259, 'Chambre à coucher', '0'),
(260, 'Bureau', '0'),
(261, 'École', '0'),
(262, 'Université', '0'),
(263, 'Bibliothèque', '0'),
(264, 'Musée', '0'),
(265, 'Théâtre', '0'),
(266, 'Cinéma', '0'),
(267, 'Stade', '0'),
(268, 'Parc', '0'),
(269, 'Plage', '0'),
(270, 'Montagne', '0'),
(271, 'Campagne', '0'),
(272, 'Ville', '0'),
(273, 'Capitale', '0'),
(274, 'Village', '0'),
(275, 'Quartier', '0'),
(276, 'Rue', '0'),
(277, 'Maison', '0'),
(278, 'Porte', '0'),
(279, 'Fenêtre', '0'),
(280, 'Toit', '0'),
(281, 'Sol', '0'),
(282, 'Mur', '0'),
(283, 'Escalier', '0'),
(284, 'Plafond', '0'),
(285, 'Étagère', '0'),
(286, 'Lit', '0'),
(287, 'Canapé', '0'),
(288, 'Table', '0'),
(289, 'Chaise', '0'),
(290, 'Armoire', '0'),
(291, 'Tiroir', '0'),
(292, 'Lampe', '0'),
(293, 'Télévision', '0'),
(294, 'Radio', '0'),
(295, 'Ordinateur', '0'),
(296, 'Téléphone', '0'),
(297, 'Smartphone', '0'),
(298, 'Tablette', '0'),
(299, 'Appareil photo', '0'),
(300, 'Musique', '0'),
(301, 'Film', '0'),
(302, 'Livre', '0'),
(303, 'Magazine', '0'),
(304, 'Journal', '0'),
(305, 'Lettre', '0'),
(306, 'Carte', '0'),
(307, 'Dessin', '0'),
(308, 'Peinture', '0'),
(309, 'Sculpture', '0'),
(310, 'Photographie', '0'),
(311, 'Poésie', '0'),
(312, 'Roman', '0'),
(313, 'Théâtre', '0'),
(314, 'Danse', '0'),
(315, 'Musicien', '0'),
(316, 'Acteur', '0'),
(317, 'Artiste', '0'),
(318, 'Écrivain', '0'),
(319, 'Auteur', '0'),
(320, 'Poète', '0'),
(321, 'Héros', '0'),
(322, 'Personnage', '0'),
(323, 'Amour', '0'),
(324, 'Romance', '0'),
(325, 'Aventure', '0'),
(326, 'Mystère', '0'),
(327, 'Fantaisie', '0'),
(328, 'Science-fiction', '0'),
(329, 'Horreur', '0'),
(330, 'Comédie', '0'),
(331, 'Drame', '0'),
(332, 'Action', '0'),
(333, 'Suspense', '0'),
(334, 'Crime', '0'),
(335, 'Guerre', '0'),
(336, 'Paix', '0'),
(337, 'Liberté', '0'),
(338, 'Justice', '0'),
(339, 'Égalité', '0'),
(340, 'Fraternité', '0'),
(341, 'Droits de l\'homme', '0'),
(342, 'Loi', '0'),
(343, 'Politique', '0'),
(344, 'Gouvernement', '0'),
(345, 'Président', '0'),
(346, 'Ministre', '0'),
(347, 'Parlement', '0'),
(348, 'Élection', '0'),
(349, 'Vote', '0'),
(350, 'Démocratie', '0'),
(351, 'Dictature', '0'),
(352, 'Révolution', '0'),
(353, 'Guerre civile', '0'),
(354, 'Armée', '0'),
(355, 'Soldat', '0'),
(356, 'Arme', '0'),
(357, 'Paix', '0'),
(358, 'Amour', '0'),
(359, 'Haine', '0'),
(360, 'Tolérance', '0'),
(361, 'Racisme', '0'),
(362, 'Discrimination', '0'),
(363, 'Immigration', '0'),
(364, 'Réfugié', '0'),
(365, 'Frontière', '0'),
(366, 'Nationalité', '0'),
(367, 'Culture', '0'),
(368, 'Tradition', '0'),
(369, 'Religion', '0'),
(370, 'Dieu', '0'),
(371, 'Prière', '0'),
(372, 'Église', '0'),
(373, 'Temple', '0'),
(374, 'Mosquée', '0'),
(375, 'Synagogue', '0'),
(376, 'Spirituel', '0'),
(377, 'Croyance', '0'),
(378, 'Sacrifice', '0'),
(379, 'Rite', '0'),
(380, 'Mariage', '0'),
(381, 'Divorce', '0'),
(382, 'Naissance', '0'),
(383, 'Décès', '0'),
(384, 'Fête', '0'),
(385, 'Musique', '0'),
(386, 'Danse', '0'),
(387, 'Chant', '0'),
(388, 'Art', '0'),
(389, 'Peinture', '0'),
(390, 'Sculpture', '0'),
(391, 'Cinéma', '0'),
(392, 'Théâtre', '0'),
(393, 'Littérature', '0'),
(394, 'Poésie', '0'),
(395, 'Sport', '0'),
(396, 'Football', '0'),
(397, 'Basketball', '0'),
(398, 'Tennis', '0'),
(399, 'Natation', '0'),
(400, 'Athlétisme', '0'),
(401, 'Cyclisme', '0'),
(402, 'Course', '0'),
(403, 'Gymnastique', '0'),
(404, 'Yoga', '0'),
(405, 'Arts martiaux', '0'),
(406, 'Boxe', '0'),
(407, 'Escrime', '0'),
(408, 'Golf', '0'),
(409, 'Pêche', '0'),
(410, 'Chasse', '0'),
(411, 'Randonnée', '0'),
(412, 'Camping', '0'),
(413, 'Ski', '0'),
(414, 'Planche à neige', '0'),
(415, 'Surf', '0'),
(416, 'Plongée', '0'),
(417, 'Voile', '0'),
(418, 'Équitation', '0'),
(419, 'Agriculture', '0'),
(420, 'Pêche', '0'),
(421, 'Chasse', '0'),
(422, 'Élevage', '0'),
(423, 'Récolte', '0'),
(424, 'Culture', '0'),
(425, 'Jardinage', '0'),
(426, 'Environnement', '0'),
(427, 'Nature', '0'),
(428, 'Animaux', '0'),
(429, 'Plantes', '0'),
(430, 'Terre', '0'),
(431, 'Eau', '0'),
(432, 'Air', '0'),
(433, 'Feu', '0'),
(434, 'Pollution', '0'),
(435, 'Réchauffement climatique', '0'),
(436, 'Énergie', '0'),
(437, 'Électricité', '0'),
(438, 'Gaz', '0'),
(439, 'Pétrole', '0'),
(440, 'Renouvelable', '0'),
(441, 'Non renouvelable', '0'),
(442, 'Recyclage', '0'),
(443, 'Déchet', '0'),
(444, 'Biodiversité', '0'),
(445, 'Écologie', '0'),
(446, 'Écosystème', '0'),
(447, 'Océan', '0'),
(448, 'Mer', '0'),
(449, 'Lac', '0'),
(450, 'Rivière', '0'),
(451, 'Montagne', '0'),
(452, 'Forêt', '0'),
(453, 'Désert', '0'),
(454, 'Île', '0'),
(455, 'Plage', '0'),
(456, 'Cascade', '0'),
(457, 'Volcan', '0'),
(458, 'Étoile', '0'),
(459, 'Lune', '0'),
(460, 'Soleil', '0'),
(461, 'Planète', '0'),
(462, 'Galaxie', '0'),
(463, 'Univers', '0'),
(464, 'Terre', '0'),
(465, 'Continents', '0'),
(466, 'Pays', '0'),
(467, 'Région', '0'),
(468, 'Ville', '0'),
(469, 'Village', '0'),
(470, 'Capitale', '0'),
(471, 'Frontière', '0'),
(472, 'Mer', '0'),
(473, 'Océan', '0'),
(474, 'Montagne', '0'),
(475, 'Plaine', '0'),
(476, 'Désert', '0'),
(477, 'Vallée', '0'),
(478, 'Île', '0'),
(479, 'Lac', '0'),
(480, 'Rivière', '0'),
(481, 'Cascade', '0'),
(482, 'Volcan', '0'),
(483, 'Grotte', '0'),
(485, 'Faune', '0'),
(486, 'Flore', '0'),
(487, 'Espèce', '0'),
(488, 'Prédateur', '0'),
(489, 'Proie', '0'),
(490, 'Migration', '0'),
(491, 'Habitat', '0'),
(492, 'Biodiversité', '0'),
(493, 'Extinction', '0'),
(494, 'Conservation', '0'),
(495, 'Écologie', '0'),
(496, 'Environnemental', '0'),
(497, 'Écosystème', '0'),
(498, 'Climat', '0'),
(499, 'Catastrophe naturelle', '0'),
(500, 'Bonjour, comment ça va ?', 'N'),
(501, 'Quel temps fait-il aujourd\'hui ?', 'N'),
(502, 'Je suis en retard, désolé.', 'N'),
(503, 'Quel est ton plat préféré ?', 'N'),
(504, 'Où est mon téléphone ?', 'N'),
(505, 'Merci pour ton aide précieuse.', 'N'),
(506, 'J\'ai besoin d\'un peu d\'aide.', 'N'),
(507, 'As-tu déjà mangé ce plat ?', 'N'),
(508, 'Ça ne fonctionne pas bien.', 'N'),
(509, 'Où sont mes clés, encore ?', 'N'),
(510, 'Bonne journée, à tout à l\'heure.', 'N'),
(511, 'Je t\'aime plus que tout.', 'N'),
(512, 'Quel est ton film préféré ?', 'N'),
(513, 'C\'est trop cher, non merci.', 'N'),
(514, 'Est-ce que tu veux danser ?', 'N'),
(515, 'Le soleil brille aujourd\'hui.', 'N'),
(516, 'J\'ai besoin de repos maintenant.', 'N'),
(517, 'À demain, au travail !', 'N'),
(518, 'Ma voiture est en panne.', 'N'),
(519, 'Ne t\'inquiète pas, tout ira bien.', 'N'),
(520, 'J\'ai fini mon travail rapidement.', 'N'),
(521, 'Il fait vraiment froid dehors.', 'N'),
(522, 'Peux-tu me prêter de l\'argent ?', 'N'),
(523, 'Quel est ton sport favori ?', 'N'),
(524, 'Mangeons à l\'extérieur ce soir.', 'N'),
(525, 'J\'ai passé une excellente journée.', 'N'),
(526, 'Ouvre la fenêtre, s\'il te plaît.', 'N'),
(527, 'J\'ai un cadeau pour toi.', 'N'),
(528, 'On se voit ce soir.', 'N'),
(529, 'Que veux-tu pour ton anniversaire ?', 'N'),
(530, 'Je n\'aime pas la pluie.', 'N'),
(531, 'Viens chez moi demain matin.', 'N'),
(532, 'Prends soin de toi bien.', 'N'),
(533, 'Tu es vraiment gentil, merci.', 'N'),
(534, 'As-tu un animal de compagnie ?', 'N'),
(535, 'Je me sens fatigué aujourd\'hui.', 'N'),
(536, 'As-tu des projets pour demain ?', 'N'),
(537, 'Les étoiles sont magnifiques ce soir.', 'N'),
(538, 'Comment se passe ta journée ?', 'N'),
(539, 'Laisse-moi te raconter une histoire.', 'N'),
(540, 'Je veux apprendre.', 'N'),
(541, 'Ouvre la porte, s\'il te plaît.', 'N'),
(542, 'C\'est ma chanson préférée.', 'N'),
(543, 'Ce gâteau est vraiment délicieux.', 'N'),
(544, 'Aujourd\'hui, je suis chanceux.', 'N'),
(545, 'Passe une bonne nuit, dors bien.', 'N'),
(546, 'Je veux voyager partout, un jour.', 'N'),
(547, 'Le week-end approche à grands pas.', 'N'),
(548, 'Mon rêve est de devenir célèbre.', 'N'),
(549, 'J\'adore regarder les étoiles.', 'N'),
(550, 'Merci pour ce merveilleux repas.', 'N'),
(551, 'C\'est ton tour de cuisiner.', 'N'),
(552, 'As-tu vu mon portable quelque part ?', 'N'),
(553, 'Allons faire une promenade maintenant.', 'N'),
(554, 'Peux-tu me donner un coup de main ?', 'N'),
(555, 'La vie est pleine de surprises.', 'N'),
(556, 'J\'ai besoin de plus de temps.', 'N'),
(557, 'Apprends de tes erreurs passées.', 'N'),
(558, 'Veux-tu sortir avec moi ce soir ?', 'N'),
(559, 'Ne me laisse jamais partir.', 'N'),
(560, 'Comment vas-tu, mon ami ?', 'N'),
(561, 'Raconte-moi une blague amusante.', 'N'),
(562, 'Quel est ton livre préféré ?', 'N'),
(563, 'Il est temps de se détendre.', 'N'),
(564, 'Aimes-tu les sports extrêmes ?', 'N'),
(565, 'Ne me quitte jamais, s\'il te plaît.', 'N'),
(566, 'Je veux être avec toi.', 'N'),
(567, 'Nous sommes faits l\'un pour l\'autre.', 'N'),
(568, 'Où se trouve la gare ?', 'N'),
(569, 'Quel est ton artiste préféré ?', 'N'),
(570, 'Je ne comprends pas cette question.', 'N'),
(571, 'As-tu des plans pour ce soir ?', 'N'),
(572, 'J\'ai hâte de te voir.', 'N'),
(573, 'Merci pour ces merveilleuses vacances.', 'N'),
(574, 'À quelle heure commence la fête ?', 'N'),
(575, 'J\'espère que tu vas bien.', 'N'),
(576, 'Est-ce que tu veux être mon ami ?', 'N'),
(577, 'Le dîner est prêt, viens manger.', 'N'),
(578, 'Je veux apprendre à cuisiner mieux.', 'N'),
(579, 'As-tu déjà visité ce pays ?', 'N'),
(580, 'Les enfants grandissent si vite.', 'N'),
(581, 'J\'adore écouter de la musique', 'N'),
(582, 'Veux-tu sortir avec moi ce soir ?', 'N'),
(583, 'Comment te sens-tu aujourd\'hui ?', 'N'),
(584, 'Où est la salle de bains ?', 'N'),
(585, 'Quel est le sens de la vie ?', 'N'),
(586, 'Donne-moi un sourire, s\'il te plaît.', 'N'),
(587, 'Je n\'aime pas les araignées.', 'N'),
(588, 'J\'ai peur du noir.', 'N'),
(589, 'Quel est ton rêve le plus fou ?', 'N'),
(590, 'La vie est une aventure incroyable.', 'N'),
(591, 'Il fait trop chaud dehors.', 'N'),
(592, 'La patience est une vertu.', 'N'),
(593, 'J\'aimerais voyager autour du monde.', 'N'),
(594, 'Je veux changer le monde.', 'N'),
(595, 'Quel est ton plat préféré ?', 'N'),
(596, 'As-tu déjà été à Paris ?', 'N'),
(597, 'C\'est une belle journée ensoleillée.', 'N'),
(598, 'La vie est pleine de surprises.', 'N'),
(599, 'N\'oublie pas de sourire aujourd\'hui.', 'N'),
(600, 'J\'ai besoin de plus de temps.', 'N'),
(601, 'La pluie rend tout plus beau.', 'N'),
(602, 'J\'ai de la chance de t\'avoir.', 'N'),
(603, 'Je veux vivre sans regrets.', 'N'),
(604, 'Donne-moi un gros câlin maintenant.', 'N'),
(605, 'Je ne peux pas le croire.', 'N'),
(606, 'C\'est un moment spécial pour nous.', 'N'),
(607, 'J\'adore les vacances d\'été.', 'N'),
(608, 'La vie est un cadeau précieux.', 'N'),
(609, 'Tu es mon héros secret.', 'N'),
(610, 'Ne t\'inquiète pas, tout ira bien.', 'N'),
(611, 'Le temps passe si vite.', 'N'),
(612, 'Apprécie les petites choses simples.', 'N'),
(613, 'Je veux être avec toi.', 'N'),
(614, 'Laisse le passé derrière toi.', 'N'),
(615, 'Le futur est rempli d\'espoir.', 'N'),
(616, 'C\'est un jour ensoleillé aujourd\'hui.', 'N'),
(617, 'Je me sens reconnaissant chaque jour.', 'N'),
(618, 'J\'ai besoin de vacances maintenant.', 'N'),
(619, 'Rêve grand, travaille dur.', 'N'),
(620, 'Aimes-tu la musique classique ?', 'N'),
(621, 'La nuit est pleine de mystères.', 'N'),
(622, 'Où est le restaurant italien ?', 'N'),
(623, 'Le matin est mon moment préféré.', 'N'),
(624, 'Où se trouve la bibliothèque ?', 'N'),
(625, 'C\'est une journée pluvieuse aujourd\'hui.', 'N'),
(626, 'As-tu déjà fait du parachutisme ?', 'N'),
(627, 'J\'ai hâte de te voir.', 'N'),
(628, 'Les câlins rendent tout meilleur.', 'N'),
(629, 'La montagne est si majestueuse.', 'N'),
(630, 'Les sourires sont contagieux, essaie !', 'N'),
(631, 'Les vacances sont un moment spécial.', 'N'),
(632, 'Le rire est la meilleure thérapie.', 'N'),
(633, 'J\'aime faire du shopping en ligne.', 'N'),
(634, 'Où est le cinéma le plus proche ?', 'N'),
(635, 'La musique adoucit les cœurs.', 'N'),
(636, 'La patience est la clé du succès.', 'N'),
(637, 'Le temps guérit toutes les blessures.', 'N'),
(638, 'Les amis sont comme des étoiles.', 'N'),
(639, 'La vie est pleine de défis.', 'N'),
(640, 'Le soleil brille après la pluie.', 'N'),
(641, 'La cuisine réunit les gens.', 'N'),
(642, 'La danse exprime la joie intérieure.', 'N'),
(643, 'Le respect est la clé de l\'amitié.', 'N'),
(644, 'L\'amour rend tout possible.', 'N'),
(645, 'La gratitude ouvre la porte du bonheur.', 'N'),
(646, 'La nature apaise l\'âme agitée.', 'N'),
(647, 'Les erreurs nous font grandir.', 'N'),
(648, 'Le voyage élargit l\'esprit.', 'N'),
(649, 'La musique relie les cœurs.', 'N'),
(650, 'La beauté est dans les détails.', 'N'),
(651, 'La créativité nourrit l\'âme.', 'N');

-- --------------------------------------------------------

--
-- Structure de la table `table_audio`
--

CREATE TABLE `table_audio` (
  `Id` int(11) NOT NULL,
  `audio_blob` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `table_audio`
--

INSERT INTO `table_audio` (`Id`, `audio_blob`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, '');

-- --------------------------------------------------------

--
-- Structure de la table `Traduction`
--

CREATE TABLE `Traduction` (
  `Id` int(11) NOT NULL,
  `Fr` text NOT NULL,
  `Tr` text NOT NULL,
  `UserId` text NOT NULL,
  `Audio` int(11) NOT NULL DEFAULT 0,
  `Langue` text NOT NULL,
  `NmbLike` int(11) NOT NULL DEFAULT 0,
  `NmbDislike` int(11) NOT NULL DEFAULT 0,
  `InfoSup` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Traduction`
--

INSERT INTO `Traduction` (`Id`, `Fr`, `Tr`, `UserId`, `Audio`, `Langue`, `NmbLike`, `NmbDislike`, `InfoSup`) VALUES
(1, 'Merci', 'Na som', '4', 0, 'Douala', 0, 0, NULL),
(2, 'Merci beaucoup', 'Na som jita', '4', 0, 'Douala', 0, 0, NULL),
(3, 'Bonjour', 'Môné', '2', 0, 'Douala', 0, 0, NULL),
(4, 'La chance', 'musima', '4', 0, 'Douala', 0, 0, NULL),
(5, 'La famille', 'Mbia', '4', 0, 'Douala', 0, 0, NULL),
(6, 'J\'ai faim', 'njaï nya le dimba ', '4', 0, 'Douala', 0, 0, NULL),
(7, 'eau', 'madíbá', '4', 0, 'Douala', 0, 0, NULL),
(10, 'bonjour', 'ozilà', '6', 0, 'Bayangam', 0, 0, ''),
(15, 'Tu nous as promis ta paix', 'Nu mabole̱ musango', '2', 0, 'Douala', 0, 0, ''),
(16, 'comment ca va', 'e ma ne', '2', 0, 'Douala', 0, 0, ''),
(17, 'test', 'test', '2', 0, 'Ewondo', 0, 0, ''),
(18, 'test2', 'test2', '2', 0, 'Ewondo', 0, 0, ''),
(19, 'test3', 'test3', '2', 1, 'Douala', 0, 0, ''),
(20, 'Marcher', 'Malibe dombeta', '2', 1, 'Douala', 0, 0, ''),
(21, 'Partir', 'na go', '2', 1, 'Douala', 0, 0, ''),
(22, 'Rivière', 'la coulance', '2', 1, 'Douala', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Username` text NOT NULL,
  `Village` text DEFAULT NULL,
  `Score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`Id`, `Email`, `Username`, `Village`, `Score`) VALUES
(1, 'example@example.com', 'utilisateur123', 'Douala', 100),
(2, 'joshua87000@gmail.com', 'Joshua Joshua', 'Douala', 315),
(3, 'joshua8700@gmail.com', 'jooshuua8', 'Bamoun', 200),
(4, 'jooshuua8@gmail.com', 'joshua ekollo', 'Bamoun', 168),
(5, 'sorrelbasil@gmail.com', 'Basil Sorrel', NULL, 0),
(6, 'jordantchuem@gmail.com', 'JordanT', 'Bayangam', 5);

-- --------------------------------------------------------

--
-- Structure de la table `Village`
--

CREATE TABLE `Village` (
  `Id` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Lat` float NOT NULL,
  `Longitude` float NOT NULL,
  `User` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Village`
--

INSERT INTO `Village` (`Id`, `Nom`, `Lat`, `Longitude`, `User`) VALUES
(1, 'Douala', 4, 9.73, 'Christian'),
(11, 'Ewondo', 3.91, 11.58, 'Admin'),
(13, 'Bamoun', 5.73, 10.89, 'Admin'),
(14, 'Bayangam', 5.3, 10.46, 'admin'),
(15, 'Bassa', 3.78, 10.13, 'admin'),
(16, 'Beti', 3.73, 11.49, 'admin'),
(17, 'Eton', 3.28, 12.06, 'admin'),
(18, 'Fang', 2.4, 11.15, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Document`
--
ALTER TABLE `Document`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Expression`
--
ALTER TABLE `Expression`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `table_audio`
--
ALTER TABLE `table_audio`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Traduction`
--
ALTER TABLE `Traduction`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Village`
--
ALTER TABLE `Village`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Document`
--
ALTER TABLE `Document`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Expression`
--
ALTER TABLE `Expression`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT pour la table `table_audio`
--
ALTER TABLE `table_audio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `Traduction`
--
ALTER TABLE `Traduction`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Village`
--
ALTER TABLE `Village`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
