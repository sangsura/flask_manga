-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 24, 2023 lúc 07:22 AM
-- Phiên bản máy phục vụ: 8.0.34-0ubuntu0.20.04.1
-- Phiên bản PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `manga1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_chapter`
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

--
-- Đang đổ dữ liệu cho bảng `comment_chapter`
--

INSERT INTO `comment_chapter` (`idUser`, `idComment`, `link_chapter`, `link_manga`, `ip_comment`, `device_comment`, `noidungComment`) VALUES
(1, 1, '1131.com', '123.com', '1.1.1.1', 'laptop', 'noidungComment'),
(1, 2, '1131.com', '123.com', '1.1.1.1', 'laptop', 'manhdz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_user`
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

--
-- Đang đổ dữ liệu cho bảng `comment_user`
--

INSERT INTO `comment_user` (`id_user_Bi_Comment`, `id_User_Comment`, `idComment`, `NoiDungComment`, `link_image_attach`, `dateTimeComment`, `nameDevice_Comment`, `IPComment`) VALUES
(1, 3, 1, 'manhd ep trai 1233', 'avatar.com', '12/5', 'laptop', '1.1.11'),
(1, 3, 2, 'manhd ep trai 1233', 'avatar.com', '12/5', 'laptop', '1.1.11'),
(1, 3, 3, 'manhd ep trai 1233', 'avatar.com', '12/5', 'laptop', '1.1.11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mangafavorite`
--

CREATE TABLE `mangafavorite` (
  `idLike` int NOT NULL,
  `idUser` int NOT NULL,
  `dateTimeLike` text,
  `Link_Manga_like` text,
  `ip_like` text,
  `name_device` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `mangafavorite`
--

INSERT INTO `mangafavorite` (`idLike`, `idUser`, `dateTimeLike`, `Link_Manga_like`, `ip_like`, `name_device`) VALUES
(4, 1, '05:07:122', 'http:sd', '1.1.1', 'laptop'),
(5, 1, '05:07:122', 'http:sd', '1.1.1', 'laptop'),
(6, 1, '05:07:122', 'http:sd', '1.1.1', 'laptop'),
(7, 1, '05:07:122', 'http:sd', '1.1.1', 'laptop'),
(8, 2, '05:07:122', 'http:sd', '1.1.1', 'laptop'),
(9, 2, '05:07:122', 'http:sd', '1.1.1', 'laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recent_chapter_readed`
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

--
-- Đang đổ dữ liệu cho bảng `recent_chapter_readed`
--

INSERT INTO `recent_chapter_readed` (`link_detail_chapter`, `id_readed`, `id_user`, `link_detail_manga`, `ip_readed`, `datetime`, `name_device_readed`) VALUES
('https://ww5.manganelo.tv/manga/manga-qi993391', 1, 1, 'https://ww5.manganelo.tv/manga/manga-qi9933911121', '1.1.1.2', '12/4', 'laptop'),
('https://ww5.manganelo.tv/manga/manga-qi993391', 2, 1, 'https://ww5.manganelo.tv/manga/manga-qi993391112132131231', '1.1.1.2', '12/4', 'laptop'),
('https://ww5.manganelo.tv/manga/manga-qi993391', 3, 1, 'https://ww5.manganelo.tv/manga/manga-qi993391112132131231', '1.1.1.2', '12/4', 'laptope'),
('https://ww5.manganelo.tv/manga/manga-qi993391', 4, 3, 'https://ww5.manganelo.tv/manga/manga-qi993391112132131231', '1.1.1.2', '12/4', 'laptope');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `email` text,
  `user_name` text,
  `password` text,
  `link_avatar` text,
  `ip_register` text,
  `device_name_register` text,
  `TimeOnline` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `user_name`, `password`, `link_avatar`, `ip_register`, `device_name_register`, `TimeOnline`) VALUES
(1, 'manhntk2@gmail.com', 'manhdz123', '$2b$12$YGePzW0JAqLYMQUf8uNR2eHH01MaIZb8FwnjHFaa3.LSFNfHKc89O', 'avata1r.com', '1.1.1.1', 'iphone', '1'),
(3, 'nguyentienmanh181102@gmail.com', 'manhdz123', '$2b$12$t8H8oeczBbmuVW8MH3UKr..jUWa69/xSDpPHa9GorL2/5dsXcAIJ.', 'image.com', '1.1.1.1', 'iphone', NULL),
(4, '20020439@vnu.edu.vn', 'manhdz123', '$2b$12$86SSgX3ICj6bTirsmFPRVuQPqoJ5krDN7.u.dqGBMzaKRTgcvezQW', 'image.com', '1.1.1.1', 'iphone', NULL),
(5, 'long31122006@gmail.com', 'manhdz123', '$2b$12$6Mv/dZ.UQQKnC77hRfVHs.CLGtUV8OD/5/VC3CizPgHhF2HGiUtIG', 'image.com', '1.1.1.1', 'iphone', NULL),
(6, 'ctylhv1@gmail.com', 'dongnh123', '$2b$12$57UjfGULk1FJY.bjq.jB9Oysq4rxR75Ii0W3iB1s0YhT6chhsGmo2', 'image.com', '1.1.1.1', 'iphone', NULL),
(7, 'dong2810123@gmail.com', 'dong123', '$2b$12$mcc1F5r4mxDLkzhmPNIV5ObwV1WYQvAx9eSoEvTABUVJcflQPpKD.', 'image.com', '1.1.1.1', 'iphone', NULL),
(8, 'nguyenkhacnam06052001@gmail.com', NULL, '$2b$12$lVkTBTK.jsq9vpgaSQO7EOibXyO9M1qjcoRn9f3E8XLBCaYn9ogpC', NULL, NULL, NULL, NULL),
(9, 'namkhac605@gmail.com', 'sangsura', '$2b$12$btmIewM1Zv97RComyFzt4uk8vIkbNY/PEbQLk4FV2RgbnKWR5NWNG', '3', '4', '5', NULL),
(10, 'truonglqth2202004@fpt.edu.vn', NULL, '$2b$12$6CU6YDptEcSzWk3EyHvJK..iPjP/rczV7RUqOXH7ks2YqgnRRWhO.', NULL, NULL, NULL, NULL),
(11, 'sangsura002@gmail.com', 'sangsura', '$2b$12$/.olXmoK.v/1fvJhytepQulSzDG/ujyIRXM6m5.4bf/k55c6.L6BO', '3', '4', '5', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment_chapter`
--
ALTER TABLE `comment_chapter`
  ADD PRIMARY KEY (`idComment`,`link_chapter`(255));

--
-- Chỉ mục cho bảng `comment_user`
--
ALTER TABLE `comment_user`
  ADD PRIMARY KEY (`idComment`);

--
-- Chỉ mục cho bảng `mangafavorite`
--
ALTER TABLE `mangafavorite`
  ADD PRIMARY KEY (`idLike`);

--
-- Chỉ mục cho bảng `recent_chapter_readed`
--
ALTER TABLE `recent_chapter_readed`
  ADD PRIMARY KEY (`id_readed`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment_chapter`
--
ALTER TABLE `comment_chapter`
  MODIFY `idComment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comment_user`
--
ALTER TABLE `comment_user`
  MODIFY `idComment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mangafavorite`
--
ALTER TABLE `mangafavorite`
  MODIFY `idLike` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `recent_chapter_readed`
--
ALTER TABLE `recent_chapter_readed`
  MODIFY `id_readed` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
