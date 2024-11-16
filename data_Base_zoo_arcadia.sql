-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 14 nov. 2024 à 14:07
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zoo_arcadia`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE `animaux` (
  `id` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `race` varchar(50) NOT NULL,
  `habitat_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `popularite` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id`, `prenom`, `race`, `habitat_id`, `photo`, `popularite`) VALUES
(1, 'Simba', 'Lion', 1, 'images/animaux/lion-3289124_640.jpg', 36),
(2, 'Ziggy', 'Zèbre', 1, 'images/animaux/zebra-163052_640.jpg', 10),
(3, 'Gina', 'Girafe', 1, 'images/animaux/sunset-3750152_640.jpg', 6),
(4, 'George', 'Gorille', 3, 'images/animaux/gorilla-448731_640.jpg', 1),
(5, 'Kiki', 'Koala', 3, 'images/animaux/koala-4450420_640.jpg', 1),
(6, 'Mimi', 'Singe capucin', 3, 'images/animaux/monkey-4164889_640.jpg', 1),
(7, 'Crocky', 'Crocodile', 2, 'images/animaux/nile-crocodile-245013_640.jpg', 6),
(8, 'Happy', 'Hippopotame', 2, 'images/animaux/hippopotamus-2260681_640.jpg', 4),
(9, 'Lottie', 'Loutre', 2, 'images/animaux/otter-1438381_640.jpg', 4),
(13, 'Eli', 'Eléphant', 1, 'images/animaux/67349fec07d65-6732102bebb56-elephant-5146752_640.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `avis_client`
--

CREATE TABLE `avis_client` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avis` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved') COLLATE utf8mb4_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avis_client`
--

INSERT INTO `avis_client` (`id`, `pseudo`, `avis`, `status`) VALUES
(1, 'maxime', 'Cool', 'approved'),
(3, 'Léa', 'Trop chou les animaux', 'approved'),
(5, 'pépé', 'Le lion m\\\'a croqué le bras!!', 'approved'),
(7, 'marine', 'super!!!! j\\\'ai beaucoup aimée le marais !', 'approved');

-- --------------------------------------------------------

--
-- Structure de la table `etats_animaux`
--

CREATE TABLE `etats_animaux` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `nourriture` varchar(100) NOT NULL,
  `grammage` int(11) NOT NULL,
  `date_passage` date NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etats_animaux`
--

INSERT INTO `etats_animaux` (`id`, `animal_id`, `etat`, `nourriture`, `grammage`, `date_passage`, `details`) VALUES
(1, 1, 'bon', 'Viande rouge', 2500, '2024-11-12', 'Il est très joueur en ce moment '),
(2, 2, 'moyen', 'fruit', 1000, '2024-11-12', 'Il se tient a l\'écart de tout le monde aujourd\'hui');

-- --------------------------------------------------------

--
-- Structure de la table `habitats`
--

CREATE TABLE `habitats` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `habitats`
--

INSERT INTO `habitats` (`id`, `nom`, `description`, `image`) VALUES
(1, 'Savane', 'La savane du zoo est un espace vaste et ensoleillé qui recrée les paysages emblématiques de l’Afrique. Ce cadre naturel, avec ses herbes hautes et ses zones ombragées, est conçu pour offrir aux animaux un environnement proche de leur habitat d’origine. Les visiteurs peuvent y découvrir des espèces majestueuses comme les zèbres, les lions et les girafes, vivant en harmonie dans cet espace ouvert. Des points d’observation bien placés permettent de suivre le comportement de chaque animal, notamment lors des moments de nourrissage ou de repos sous les arbres. La savane du zoo invite à une immersion unique dans le quotidien de ces animaux sauvages, tout en sensibilisant le public à la préservation de leur écosystème naturel.', 'images/habitats/6734ca033e1d2-sunset-3750152_640.jpg'),
(2, 'Marais', 'Le marais du zoo est un environnement fascinant qui reproduit les écosystèmes humides où la vie s’épanouit autour de l’eau. Cet espace luxuriant est conçu pour accueillir des animaux adaptés aux zones marécageuses, tels que les crocodiles, les hippopotames et les loutres. Dans ce cadre, les animaux évoluent entre plans d’eau, végétation dense et petites îles, créant un équilibre naturel. Les visiteurs peuvent observer les comportements uniques de ces espèces aquatiques, depuis les paisibles bains de l’hippopotame jusqu’aux déplacements furtifs du crocodile. Le marais offre une plongée captivante dans cet habitat, permettant d’apprécier la diversité et l’importance de ces milieux pour la faune sauvage.', 'images/habitats/6734c9fa59e3b-crocodile-8003179_640.jpg'),
(3, 'Jungle', 'La jungle du zoo est un espace riche en verdure, inspiré des forêts tropicales denses et exotiques. Conçue pour recréer l’atmosphère humide et ombragée de ces régions, elle abrite des animaux emblématiques comme les gorilles, les koalas et les singes. Ici, la végétation abondante, les arbres imposants et les lianes offrent aux animaux des zones de repos, de jeu et d’exploration, reproduisant fidèlement leur habitat naturel. Les visiteurs peuvent observer les interactions sociales des singes, les mouvements majestueux des gorilles et les comportements uniques des koalas, profitant de points d’observation discrets pour un regard authentique sur cette biodiversité. La jungle du zoo promet une immersion totale dans le mystère et la richesse de cet environnement sauvage.', 'images/habitats/6734c960b3b12-gorilla-7708352_640.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `horaires_ouverture`
--

CREATE TABLE `horaires_ouverture` (
  `id` int(11) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `ouverture` time NOT NULL,
  `fermeture` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `horaires_ouverture`
--

INSERT INTO `horaires_ouverture` (`id`, `jour`, `ouverture`, `fermeture`) VALUES
(15, 'lundi', '00:00:00', '00:00:00'),
(16, 'mardi', '10:00:00', '19:00:00'),
(17, 'mercredi', '10:00:00', '19:00:00'),
(18, 'jeudi', '10:00:00', '19:00:00'),
(19, 'vendredi', '10:00:00', '19:00:00'),
(20, 'samedi', '10:00:00', '19:00:00'),
(21, 'dimanche', '10:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`) VALUES
(1, 'administrateur'),
(2, 'vétérinaire'),
(3, 'employé');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `nom`, `description`, `photo`) VALUES
(1, 'Le petit train', 'La balade en petit train du Zoo Arcadia est une expérience immersive et relaxante, idéale pour découvrir les merveilles du parc en toute tranquillité. Ce train écologique, entièrement électrique, parcourt les différents habitats du zoo, offrant aux visiteurs une vue privilégiée sur la faune et la flore. Depuis les wagons ouverts, les passagers peuvent observer des animaux majestueux tels que les éléphants, les lions, et bien d’autres, tout en se déplaçant confortablement à travers les paysages verdoyants. La balade est ponctuée de commentaires informatifs qui permettent d’en apprendre davantage sur les espèces animales, leur mode de vie, et l’engagement écologique du zoo. Adaptée à tous les âges, cette promenade est une manière ludique et pédagogique de profiter de l’environnement exceptionnel du Zoo Arcadia, tout en respectant les valeurs de durabilité et de protection de la nature', 'images/services/67349d0044c62-Image.webp'),
(2, 'Visite guidée', 'La visite guidée du Zoo Arcadia, proposée gratuitement à tous les visiteurs, est une occasion unique de découvrir le parc sous un angle privilégié. Accompagnés par un guide passionné et expert en faune sauvage, les visiteurs sont plongés dans les secrets des différents habitats et des espèces qui peuplent le zoo. Le guide partage des anecdotes fascinantes sur la vie des animaux, leurs comportements, et les efforts de conservation mis en place par le zoo. Il répond également aux questions des visiteurs, rendant l’expérience à la fois interactive et enrichissante. Cette visite permet d’en apprendre davantage sur les initiatives écologiques du zoo, notamment l’autosuffisance énergétique et les actions en faveur de la protection des espèces menacées. Que vous soyez curieux d’en savoir plus sur les éléphants, les lions ou encore les reptiles des marais, la visite guidée offre une immersion complète, adaptée à tous les âges, dans l’univers fascinant de la biodiversité du Zoo Arcadia.', 'images/services/67332d0d6428a-tour-guide-6816049_640.jpg'),
(3, 'Restauration', 'La restauration au Zoo Arcadia offre aux visiteurs une pause gourmande au cœur de la nature. Le restaurant du zoo propose une variété de plats, préparés à partir d’ingrédients frais et locaux, mettant en avant les produits de saison. Que vous ayez envie d’un repas complet ou d’une collation rapide, le menu s’adapte à tous les goûts avec des options végétariennes, des plats classiques, ainsi que des encas sucrés et salés. En accord avec l’engagement écologique du zoo, le restaurant utilise des emballages biodégradables et privilégie les circuits courts pour réduire son empreinte carbone. Vous pourrez profiter de votre repas tout en admirant les paysages naturels qui entourent la zone de restauration, créant ainsi un moment de détente idéal après une journée d’exploration. C’est l’endroit parfait pour se ressourcer avant de continuer la visite du parc !', 'images/services/67332d2ce009d-cooking-2509027_640.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `mdp`) VALUES
(1, 'José', '$2y$10$ZIGeH1SVoatdLU0AFcgvK.zgftTy7YCY0xB6.1vU7aA85pYWMWaAi'),
(2, 'Enrique', '$2y$10$fVp2wLm/.w/inum7f1jjHuFVehGHMyu3Kz5HadwvuSAZLBn2Jb2qG'),
(3, 'Rodrigue', '$2y$10$vC11ktE1DeicH7ctU8.wmO01NsVyu46Ff14aPuf7VFhvOaPt7u8Je');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_roles`
--

CREATE TABLE `utilisateur_roles` (
  `utilisateur_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur_roles`
--

INSERT INTO `utilisateur_roles` (`utilisateur_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `habitat_id` (`habitat_id`);

--
-- Index pour la table `avis_client`
--
ALTER TABLE `avis_client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etats_animaux`
--
ALTER TABLE `etats_animaux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Index pour la table `habitats`
--
ALTER TABLE `habitats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaires_ouverture`
--
ALTER TABLE `horaires_ouverture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur_roles`
--
ALTER TABLE `utilisateur_roles`
  ADD PRIMARY KEY (`utilisateur_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `avis_client`
--
ALTER TABLE `avis_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `etats_animaux`
--
ALTER TABLE `etats_animaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `habitats`
--
ALTER TABLE `habitats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `horaires_ouverture`
--
ALTER TABLE `horaires_ouverture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD CONSTRAINT `cle_habitat_id` FOREIGN KEY (`habitat_id`) REFERENCES `habitats` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etats_animaux`
--
ALTER TABLE `etats_animaux`
  ADD CONSTRAINT `cle_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animaux` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur_roles`
--
ALTER TABLE `utilisateur_roles`
  ADD CONSTRAINT `utilisateur_roles_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `utilisateur_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
