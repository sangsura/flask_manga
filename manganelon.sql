-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2023 at 06:57 AM
-- Server version: 8.0.34-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manganelon`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_chapter`
--

CREATE TABLE `comment_chapter` (
  `idUser` int DEFAULT NULL,
  `idComment` int NOT NULL,
  `link_chapter` text NOT NULL,
  `link_manga` text,
  `ip_comment` text,
  `device_comment` text,
  `noidungComment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_user`
--

CREATE TABLE `comment_user` (
  `id_user_Bi_Comment` int DEFAULT NULL,
  `id_User_Comment` int DEFAULT NULL,
  `idComment` int NOT NULL,
  `NoiDungComment` text,
  `link_image_attach` text,
  `dateTimeComment` text,
  `nameDevice_Comment` text,
  `IPComment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Create_account`
--

CREATE TABLE `Create_account` (
  `id_user` int NOT NULL,
  `gmail_user` text NOT NULL,
  `name_account` text NOT NULL,
  `name_user` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Create_account`
--

INSERT INTO `Create_account` (`id_user`, `gmail_user`, `name_account`, `name_user`, `password`) VALUES
(1, 'sonnh7289@gmail.com', 'dssddssd', 'dsddsds', '123456'),
(2, 'mekimtan@gmail.com', 'dssddssd', 'dsddsds', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `mangaFavorite`
--

CREATE TABLE `mangaFavorite` (
  `idLike` int NOT NULL,
  `idUser` int NOT NULL,
  `dateTimeLike` text,
  `Link_Manga_like` blob,
  `ip_like` int DEFAULT NULL,
  `name_device` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recent_chapter_readed`
--

CREATE TABLE `recent_chapter_readed` (
  `link_detail_chapter` text,
  `id_readed` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `link_detail_manga` text,
  `ip_readed` text,
  `datetime` text,
  `name_device_readed` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
 `email` text,
  `user_name` text,
  `password` text,
  `link_avatar` text,
  `ip_register` text,
  `device_name_register` text,
  `TimeOnline` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_chapter`
--
ALTER TABLE `comment_chapter`
  ADD PRIMARY KEY (`idComment`,`link_chapter`(255));

--
-- Indexes for table `comment_user`
--
ALTER TABLE `comment_user`
  ADD PRIMARY KEY (`idComment`);

--
-- Indexes for table `Create_account`
--
ALTER TABLE `Create_account`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `mangaFavorite`
--
ALTER TABLE `mangaFavorite`
  ADD PRIMARY KEY (`idLike`);

--
-- Indexes for table `recent_chapter_readed`
--
ALTER TABLE `recent_chapter_readed`
  ADD PRIMARY KEY (`id_readed`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_chapter`
--
ALTER TABLE `comment_chapter`
  MODIFY `idComment` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Create_account`
--
ALTER TABLE `Create_account`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
