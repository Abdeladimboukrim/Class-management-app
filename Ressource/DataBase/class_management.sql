-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 01 avr. 2021 à 17:25
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `class_management`
--

-- --------------------------------------------------------

--
-- Structure de la table `formator`
--

CREATE TABLE `formator` (
  `idformator` int(2) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formator`
--

INSERT INTO `formator` (`idformator`, `name`, `password`) VALUES
(1, 'Amine', '12333'),
(3, 'ayman', '32433');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `idstudent` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `idformator` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`idstudent`, `name`, `password`, `idformator`) VALUES
(1, 'Amine', '12333', 2),
(2, 'ahmed', '14233', 2),
(3, 'yassin', '32433', 2),
(4, 'ayman', '23231', 3);

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `idtask` int(3) NOT NULL,
  `t.name` varchar(20) NOT NULL,
  `Deadline` date NOT NULL,
  `idformator` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`idtask`, `t.name`, `Deadline`, `idformator`) VALUES
(1, 'breif 1', '0000-00-00', 2),
(2, 'breif 2', '0000-00-00', 2),
(3, 'brief', '0000-00-00', 2),
(4, 'ayman', '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Structure de la table `validate`
--

CREATE TABLE `validate` (
  `s.validate` varchar(40) NOT NULL,
  `commantaire` varchar(100) NOT NULL,
  `idstudent` int(2) NOT NULL,
  `idformator` int(2) NOT NULL,
  `idtask` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `formator`
--
ALTER TABLE `formator`
  ADD PRIMARY KEY (`idformator`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idstudent`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`idtask`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formator`
--
ALTER TABLE `formator`
  MODIFY `idformator` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `idstudent` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `task`
--
ALTER TABLE `task`
  MODIFY `idtask` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
