-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 11 mars 2020 à 16:18
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pizzeria`
--

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `complement_adresse`, `code_postal`, `ville`, `telephone`, `email`) VALUES
(1, 'BOUCAU', 'SYLVAIN', '2312 RUE JULES GUESDE ', NULL, '59510', 'HEM', '0645000000', 'SBOUCAU@GMAIL.com'),
(2, 'DUEZ', 'ANTHONY', '45 RUE DES FLEURS', 'APT5', '59600', 'CROIX', '062000000000', 'ADUEZ@GMAIL.com'),
(3, 'TORTUE', 'MICHELANGELO', '12 RUE DES EGOUTS', NULL, '59000', 'LILLE', '0630000000', 'MTORTUE@GMAIL.com'),
(4, 'PLATEL', 'ROBERT', '3 allée des cèdres', NULL, '59615', 'Lesquin', '0320000080', 'rplatel@gmail.com'),
(5, 'GAUTHEROT', 'SEBASTIEN', '27 Impasse du colonel', NULL, '596515', 'Lesquin', '0645000000', 'sgautherot@gmail.com');

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `mode_de_livraison`, `dt_commande`, `dt_prise_en_chage`, `dt_debut_livreur`, `dt_fin_livreur`, `montant`, `pizzaïolo_id`, `livreur_id`, `moyen_de_paiement_id`, `client_id`, `point_de_vente_id`) VALUES
(1, 2, '2020-03-09 11:08:17', '2020-03-09 11:10:00', '2020-03-09 11:21:00', '2020-03-09 11:33:00', '9', 1, 3, 1, 3, 1),
(2, 1, '2020-03-11 10:47:00', '2020-03-11 10:48:19', '2020-03-11 11:09:00', '2020-03-11 11:09:00', '28', 1, 1, 2, 5, 1),
(3, 2, '2020-03-11 11:12:06', '2020-03-11 11:19:06', '2020-03-11 11:36:00', '2020-03-11 11:43:00', '36', 2, 3, 1, 4, 2);

--
-- Déchargement des données de la table `commande_has_pizza`
--

INSERT INTO `commande_has_pizza` (`id`, `commande_id`, `pizza_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 1),
(5, 3, 3),
(6, 3, 3),
(7, 3, 2),
(8, 3, 2);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id`, `nom`, `quantite`) VALUES
(1, 'SAUCE TOMATE', 100),
(2, 'JAMBON', 100),
(3, 'CHAMPIGNON', 100),
(4, 'MOZZARELLA', 500),
(5, 'ANANAS', 20),
(6, 'SAUCISSE', 30),
(7, 'LARDON', 100),
(8, 'CREME FRAICHE', 100);

--
-- Déchargement des données de la table `moyen_de_paiement`
--

INSERT INTO `moyen_de_paiement` (`id`, `moyen`) VALUES
(1, 'cb'),
(2, 'espece'),
(3, 'ticket restaurant');

--
-- Déchargement des données de la table `pizza`
--

INSERT INTO `pizza` (`id`, `nom`, `prix`, `recette`) VALUES
(1, 'MARGHARITA', 6, 'BASE SAUCE TOMATE\r\nMOZZARELLA'),
(2, 'REGINA', 8, 'BASE SAUCE TOMATE\r\nJAMBON\r\nCHAMPIGNON\r\nMOZZARELLA'),
(3, 'TARTIFLETTE', 9, 'CREME FRAICHE\r\nLARDON\r\nPOMME DE TERRE\r\nREBLOCHON\r\nMOZZARELLA');

--
-- Déchargement des données de la table `pizza_has_ingredient`
--

INSERT INTO `pizza_has_ingredient` (`id`, `pizza_id`, `ingredient_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 3),
(4, 2, 2),
(5, 2, 4),
(6, 3, 7),
(7, 3, 8),
(8, 3, 4);

--
-- Déchargement des données de la table `point_de_vente`
--

INSERT INTO `point_de_vente` (`id`, `nom`, `adresse`, `code_postal`, `ville`, `telephone`, `email`) VALUES
(1, 'OC LILLE GAMBETTA', '59 rue leon gambetta', '59000', 'LILLE', '0320000000', 'oclillegambetta@gmail.com'),
(2, 'OC LESQUIN', '27 Rue de la gare', '59615', 'Lesquin', '0321000000', 'oclesquin@gmail.com'),
(3, 'OC HEM', '25 Rue Jules Guesde', '59510', 'Hem', '0321000070', 'ochem@gmail.com');

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `nom`, `quantite`, `point_de_vente_id`) VALUES
(1, 'tomate', 20, 1),
(2, 'champignon', 20, 1),
(3, 'jambon', 200, 1),
(4, 'lardons', 200, 1),
(5, 'tomate', 20, 2),
(6, 'champignon', 20, 2),
(7, 'jambon', 200, 2),
(8, 'lardon', 200, 2),
(9, 'tomate', 20, 3),
(10, 'champignon', 20, 3),
(11, 'jambon', 200, 3),
(12, 'lardon', 200, 3);

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login`, `password`, `pizzaiolo`, `livreur`, `responsable`, `actif`) VALUES
(1, 'FISICARO', 'ANTONIO', 'AFISICARO', '446b90362152c438185ec40968878f0457cc1c8b', 1, 0, 0, 1),
(2, 'CORNELIO', 'ANTONIO', 'ACORNELIO', '446b90362152c438185ec40968878f0457cc1c8b', 1, 0, 0, 1),
(3, 'ROUTARD', 'PIERRE', 'PROUTARD', '446b90362152c438185ec40968878f0457cc1c8b', 0, 1, 0, 1),
(4, 'SURY', 'FREDERIC', 'FSURY', '446b90362152c438185ec40968878f0457cc1c8b', 0, 0, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
