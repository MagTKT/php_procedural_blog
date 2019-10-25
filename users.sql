-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le :  ven. 25 oct. 2019 à 08:55
-- Version du serveur :  10.4.8-MariaDB-1:10.4.8+maria~bionic
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blogmag`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`) VALUES
(1, 'mag', '$2y$10$9AeGXaX756/eA7LF.AgxW.lK/qIzPhSU/abTPUWGxzs4FL6C2PkS2', 'magali.gosselinn@gmail.com'),
(2, 'admin', '$2y$10$KoRgZ.cbiAHqdaiwtSusH.Z.NovZtS7QsLyt0o1YCz.OaE/17gUaa', 'magali.gosselinn@gmail.com'),
(3, 'magperso', '$2y$10$vYPYqA1QAV2mx6JU3.LYEu98UtVvjoG15E64b5OYVMbK0xohxYO2q', 'jeuxonlinemag@gmail.com'),
(4, 'simon', '$2y$10$QHEWTDUlmg3SL8V5r9I56Omtyy4iLyleNyc0SrU79nv33k4DSPleW', 'simon@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
