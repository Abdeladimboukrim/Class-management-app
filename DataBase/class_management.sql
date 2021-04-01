-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 31 mars 2021 à 16:57
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

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `brief` (
  `idtask` int(3) NOT NULL,
  `t.name` varchar(20) NOT NULL,
  `Deadline` date NOT NULL,
  `idformator` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `validate` (`s.validate`, `commantaire`, `idstudent`, `idformator`,'idtask') VALUES
('valide', 'brtrtrt', 2, 2, 3),
('valide', 'kooo', 1, 2, 3),
('valide', 'bdddf', 1, 2, 3),
('valide', 'lmml', 2, 3, 3),


INSERT INTO `task` (`idtask`, `t.name`, `deadline`, `idformator`) VALUES
(1, 'breif 1', '11-11-2012',2),
(2, 'breif 2', '11-11-2012',2),
(3, 'brief', '11-11-2012',2),
(4, 'ayman', '11-11-2012',3),

INSERT INTO `student` (`idstudent`, `name`, `password`, `idformator`) VALUES
(1, 'Amine', '12333','2'),
(2, 'ahmed', '14233','2'),
(3, 'yassin', '32433','2'),
(4, 'ayman', '23231','3'),

INSERT INTO `formator` (`idformator`, `name`, `password`) VALUES
(1, 'Amine', '12333'),
(2, 'Amine', '14233'),
(3, 'ayman', '32433'),
(4, 'ayman', '23231'),
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
  MODIFY `idformator` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `idstudent` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `task`
--
ALTER TABLE `task`
  MODIFY `idtask` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
