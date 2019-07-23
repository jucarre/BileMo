-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 23, 2019 at 12:48 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bilemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `email`, `roles`, `password`, `username`) VALUES
(7, 'client@sfr.fr', '[\"ROLE_USER\"]', '$2y$13$krxp6p2tCc8nWwN1v6hZ1uMMtdC3ZnctYyM0SuqrvmrN.hfEvj59S', 'sfr'),
(8, 'client@free.fr', '[\"ROLE_USER\"]', '$2y$13$krxp6p2tCc8nWwN1v6hZ1uMMtdC3ZnctYyM0SuqrvmrN.hfEvj59S', 'free'),
(9, 'admin@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$krxp6p2tCc8nWwN1v6hZ1uMMtdC3ZnctYyM0SuqrvmrN.hfEvj59S', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190625125437', '2019-06-25 12:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `builder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` double NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `builder`, `model`, `color`, `capacity`, `price`, `description`) VALUES
(2, 'XIAOMI', 'Redmi Note 7', 'Black', 64, 165.85, 'Achetez le Redmi Note 7 sur le site officiel. La nouvelle expérience du haut-de-gamme. Capturez tout avec 48 MP. 4000mAh(typ). Batterie ultra-haute capacité.'),
(3, 'Huawei', 'P20 Lite', 'Black', 64, 188.34, 'Le Huawei P20 Lite est le petit frère du Huawei P20 reprenant quelques fonctionnalités disponibles sur son grand-frère à un prix plus abordable.'),
(4, 'Samsung', 'Galaxy A50', 'Black', 128, 275.99, 'Si pour vous les Galaxy S10 sont vraiment trop onéreux, alors peut-être que le Galaxy A50 pourrait être le bon choix.'),
(5, 'Huawei', 'P Smart 2019', 'Black', 64, 164.9, 'Le Huawei P Smart 2019 est un smartphone de milieu de gamme annoncé en décembre 2018 et est le successeur de la gamme P8 Lite.'),
(6, 'Apple', 'Iphone 7', 'Black', 32, 254, 'Sans se presser, Apple fait évoluer son concept formel d\'iPhone 6 lancé en 2014. Suppression de la prise mini-Jack.'),
(7, 'Honor', '8X', 'Black', 64, 199, 'Au final, ce Honor 8X offre des performances tout à fait honnêtes dans un corps plutôt élégant. '),
(8, 'Nokia', '105', 'Black', 32, 19.9, 'Avec ses formes courbées et ergonomiques ainsi que son clavier Island qui facilite la saisie et la composition.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `client_id`, `name`) VALUES
(9, 7, 'Guilbert1'),
(10, 8, 'Bouvier2'),
(11, 8, 'Bousquet3'),
(12, 8, 'Reynaud4'),
(13, 7, 'Maurice5'),
(14, 7, 'Allain6'),
(15, 7, 'Roger7'),
(16, 7, 'Dumas8'),
(17, 8, 'Robin9'),
(18, 7, 'Chevallier10'),
(19, 7, 'Pascal11'),
(20, 8, 'Dupre12'),
(21, 7, 'Jacob13'),
(22, 8, 'Salmon14'),
(23, 8, 'Lefort15'),
(24, 7, 'Marques16'),
(25, 8, 'Leclerc17'),
(26, 8, 'Gaillard18'),
(27, 8, 'Lacombe19'),
(28, 8, 'Paris20'),
(29, 8, 'Maury21'),
(30, 8, 'Lamy22'),
(31, 7, 'Lecomte23'),
(32, 7, 'Dijoux24'),
(33, 8, 'Georges25'),
(34, 8, 'Jean26'),
(35, 7, 'Michaud27'),
(36, 8, 'Dupuy28'),
(37, 7, 'Masse29'),
(38, 7, 'Brunel30'),
(39, 7, 'Gomez31'),
(40, 8, 'Rossi32'),
(41, 8, 'Bonnet33'),
(42, 8, 'Henry34'),
(43, 7, 'Chauvin35'),
(44, 7, 'Bruneau36'),
(45, 7, 'Seguin37'),
(46, 8, 'Peron38'),
(47, 8, 'Courtois39'),
(48, 8, 'Lopez40'),
(49, 7, 'Lacombe41'),
(50, 7, 'Faivre42'),
(51, 8, 'Leger43'),
(52, 7, 'Faivre44'),
(53, 7, 'Marin45'),
(54, 8, 'Pruvost46'),
(55, 8, 'Besnard47'),
(56, 8, 'Tessier48'),
(57, 8, 'Hernandez49'),
(58, 7, 'Prevost50'),
(59, 7, 'Reynaud51'),
(60, 7, 'Duhamel52'),
(61, 7, 'Dumont53'),
(62, 7, 'Bouvier54'),
(63, 7, 'Olivier55'),
(64, 7, 'Barbe56'),
(65, 8, 'Chretien57'),
(66, 8, 'Bouvier58'),
(67, 7, 'Texier59'),
(68, 7, 'Fleury60'),
(69, 8, 'Baudry61'),
(70, 8, 'Laurent62'),
(71, 8, 'Klein63'),
(72, 8, 'Durand64'),
(73, 7, 'Potier65'),
(74, 8, 'Deschamps66'),
(75, 7, 'Barbier67'),
(76, 7, 'Hamel68'),
(77, 7, 'Pineau69'),
(78, 8, 'Dumas70'),
(79, 8, 'Lecomte71'),
(80, 7, 'Lemoine72'),
(81, 7, 'Marchal73'),
(82, 8, 'Roger74'),
(83, 7, 'Laporte75'),
(84, 7, 'Muller76'),
(85, 7, 'Pasquier77'),
(86, 7, 'Rey78'),
(87, 7, 'Martineau79'),
(88, 8, 'Moulin80'),
(89, 8, 'Marechal81'),
(90, 8, 'Francois82'),
(91, 8, 'Potier83'),
(92, 8, 'Verdier84'),
(93, 8, 'Morel85'),
(94, 7, 'Weber86'),
(95, 8, 'Millet87'),
(96, 7, 'Gallet88'),
(97, 7, 'Leroux89'),
(98, 8, 'Weber90'),
(99, 7, 'Royer91'),
(100, 7, 'Carre92'),
(101, 7, 'Neveu93'),
(102, 7, 'Fouquet94'),
(103, 8, 'Leleu95'),
(104, 8, 'Delannoy96'),
(105, 8, 'Leleu97'),
(106, 8, 'Gerard98'),
(107, 7, 'Fournier99'),
(108, 7, 'Cordier100'),
(109, 7, 'Gosselin101'),
(110, 7, 'David102'),
(111, 7, 'Guyon103'),
(112, 8, 'Rodrigues104'),
(113, 7, 'superbob'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C7440455E7927C74` (`email`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D93D64919EB6921` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64919EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
