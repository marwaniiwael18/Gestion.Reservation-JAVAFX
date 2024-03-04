-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 mars 2024 à 13:27
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
-- Base de données : `sportify`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `ID_Reservation` int(11) NOT NULL,
  `ID_utilisateur` int(11) DEFAULT NULL,
  `id_Terrain` int(11) DEFAULT NULL,
  `Date_Heure` datetime DEFAULT NULL,
  `Duree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `terrain`
--

CREATE TABLE `terrain` (
  `id_Terrain` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type_surface` varchar(255) DEFAULT NULL,
  `Localisation` varchar(255) DEFAULT NULL,
  `Prix` double(10,2) DEFAULT NULL,
  `ID_Proprietaire` int(11) DEFAULT NULL,
  `image_ter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `terrain`
--

INSERT INTO `terrain` (`id_Terrain`, `Nom`, `Type_surface`, `Localisation`, `Prix`, `ID_Proprietaire`, `image_ter`) VALUES
(44, 'Terrain L\'aouina', 'CLair', 'L\'aouina', 150.50, NULL, 'C:\\Users\\wael\\Downloads\\prix-terrain-de-tennis.jpg'),
(46, 'Happy-teniss', 'Estendu', 'Ariana', 100.00, NULL, 'C:\\Users\\wael\\Downloads\\téléchargé (1).jpg'),
(47, 'Golden_Tennis', 'Clair', 'Rades', 75.00, NULL, 'C:\\Users\\wael\\Downloads\\téléchargé.jpg'),
(49, 'TenissForYou', 'Couvert', 'Sousse', 87.00, 0, 'C:\\Users\\wael\\Downloads\\images (1).jpg'),
(73, 'Test', 'Test', 'AAAAAAAAAAA', 1234.00, 0, 'C:\\Users\\wael\\Pictures\\Untitled-2023-11-27-2123.png'),
(74, 'CHedly', 'CHedly', 'CHedly', 786878.00, NULL, 'C:\\Users\\wael\\Pictures\\IMG_0558.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`) VALUES
(1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID_Reservation`),
  ADD KEY `ID_utilisateur` (`ID_utilisateur`),
  ADD KEY `ID_terrain` (`id_Terrain`);

--
-- Index pour la table `terrain`
--
ALTER TABLE `terrain`
  ADD PRIMARY KEY (`id_Terrain`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID_Reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT pour la table `terrain`
--
ALTER TABLE `terrain`
  MODIFY `id_Terrain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`ID_utilisateur`) REFERENCES `utilisateur` (`ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_Terrain`) REFERENCES `terrain` (`id_Terrain`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
