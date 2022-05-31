-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 10:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_db_mp`
--

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `id_band` bigint(20) NOT NULL,
  `nom_band` varchar(255) DEFAULT NULL,
  `typemband` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`id_band`, `nom_band`, `typemband`) VALUES
(1, 'The Beatles', 'Rock'),
(2, '21 Pilots', 'Indie Rock'),
(3, 'One Direction', 'Popular'),
(4, 'Queen', 'Rock'),
(10, 'Linkin Park', 'Metal / Rock');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'AGENT'),
(3, 'USER'),
(4, 'USER2');

-- --------------------------------------------------------

--
-- Table structure for table `singer`
--

CREATE TABLE `singer` (
  `id_singer` bigint(20) NOT NULL,
  `nom_singer` varchar(255) DEFAULT NULL,
  `prenom_singer` varchar(255) DEFAULT NULL,
  `datensinger` datetime DEFAULT NULL,
  `band_id_band` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `singer`
--

INSERT INTO `singer` (`id_singer`, `nom_singer`, `prenom_singer`, `datensinger`, `band_id_band`) VALUES
(55, 'Bennington', 'Chester', '1976-03-20 00:00:00', 10),
(58, 'Mercury', 'Freddie', '1946-09-05 00:00:00', 4),
(59, 'Deacon', 'John', '1951-08-19 00:00:00', 4),
(61, 'lennon', 'John', '1940-10-09 00:00:00', 1),
(63, 'Harrison', 'George', '1943-02-25 00:00:00', 1),
(64, 'Styles', 'Harry', '1994-02-10 00:00:00', 3),
(65, 'Joseph', 'Tyler', '1988-12-01 00:00:00', 2),
(66, 'Tomlinson', 'louis', '1991-12-24 00:00:00', 3),
(67, 'Starr', 'Ringo', '1940-07-07 00:00:00', 1),
(68, 'Grose ', 'Mike', '1941-03-16 00:00:00', 4),
(69, 'Malik', 'Zayn', '1993-01-12 00:00:00', 3),
(70, 'Dunn', 'Josh', '1988-06-18 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `enabled`, `password`, `username`) VALUES
(1, b'1', '$2a$10$kdgeunv7LelRvepT.nMWju1YkXq0whV5P.GyRbzUBFoYIgB2ZNjwq', 'wej'),
(2, b'1', '$2a$10$kdgeunv7LelRvepT.nMWju1YkXq0whV5P.GyRbzUBFoYIgB2ZNjwq', 'admin'),
(3, b'1', '$2a$10$kdgeunv7LelRvepT.nMWju1YkXq0whV5P.GyRbzUBFoYIgB2ZNjwq', 'user1'),
(10, b'0', '$2a$10$gh/D/iu4u3T77gEtp3zNoeEuejU9WCJO9mLn.q4E.6.n2jN/qqZWS', 'azeaz');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(2, 1),
(1, 2),
(3, 3),
(10, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id_band`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id_singer`),
  ADD KEY `FK18ice7jucom9lid4rgodrajiq` (`band_id_band`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `band`
--
ALTER TABLE `band`
  MODIFY `id_band` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id_singer` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `singer`
--
ALTER TABLE `singer`
  ADD CONSTRAINT `FK18ice7jucom9lid4rgodrajiq` FOREIGN KEY (`band_id_band`) REFERENCES `band` (`id_band`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
