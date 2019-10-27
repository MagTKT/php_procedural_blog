-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le :  Dim 27 oct. 2019 à 20:33
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
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_cat`, `name`) VALUES
(1, 'avion de chasse'),
(2, 'avion simple'),
(5, 'autre'),
(7, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `author`, `comment`, `post_id`) VALUES
(5, 'mag', 'essai', 4),
(6, 'mag', 'test', 9),
(7, 'magperso', 'ceci est un test', 3);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `img_posting` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `img_posting`, `title`, `author`, `content`, `idCategory`, `idUser`) VALUES
(3, 'public/img/aircraft-4511344_1920.jpg', 'Avion de chasse ', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 1, NULL),
(4, 'public/img/aircraft-4511347_1920.jpg', 'crash', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 2, NULL),
(5, 'public/img/airport-351472_1920.jpg', 'Avion de chasse ', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 1, NULL),
(6, 'public/img/typewriter-1248088_1920.jpg', 'machine a ecrire', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 2, NULL),
(9, 'public/img/plane-314366_1280.jpg', 'superbe avion', 'admin', '<p><span style=\"color: #5e5737; font-size: 10px;\">Nunc vero inanes flatus quorundam vile esse quicquid extra urbis pomerium nascitur aestimant praeter orbos et caelibes, nec credi potest qua obsequiorum diversitate coluntur homines sine liberis Romae.</span></p>', 1, NULL),
(10, 'public/img/plane-3938241_1920.jpg', 'essai', 'admin', '<p><span style=\"color: #5e5737; font-size: 10px;\">Nunc vero inanes flatus quorundam vile esse quicquid extra urbis pomerium nascitur aestimant praeter orbos et caelibes, nec credi potest qua obsequiorum diversitate coluntur homines sine liberis Romae.</span></p>', 1, NULL),
(11, 'public/img/crash-landing-63011_1920.jpg', 'un gÃ©ant traverse le ciel', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 5, NULL),
(12, 'public/img/plane-314366_1280.jpg', 'image test', 'magperso', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 2, NULL),
(13, 'public/img/aircraft-4511344_1920.jpg', 'ne sais plus quoi mettre', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 1, NULL),
(14, 'public/img/aircraft-4511347_1920.jpg', 'ne sais plus quoi mettre 2eme', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 2, NULL),
(15, 'public/img/plane-3938241_1920.jpg', 'ne sais plus quoi mettre 3eme', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 1, NULL),
(16, 'public/img/plane-314366_1280.jpg', 'dernier pour voir si les 10 passe', 'admin', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non fringilla ligula. In quis diam volutpat, egestas nulla at, elementum nibh.</span></p>', 5, NULL);

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
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPost` (`post_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id_cat`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
