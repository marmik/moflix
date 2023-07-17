-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2023 at 05:29 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `subtitle`, `content`, `status`, `position`) VALUES
(1, 'Header', '(Appears on all pages right under the nav bar)', '<div >\r\n<a href=\"#\">\r\n\r\n</a>\r\n</div>', 1, 'header'),
(2, 'Footer', '(Appears on all pages right before the footer)', '<div >\r\n<a href=\"#\">\r\n\r\n</a>\r\n</div>', 1, 'footer'),
(3, 'Sidebar', '(Appears on all pages right on left bar)', '<div >\r\n<a href=\"#\">\r\n\r\n</a>\r\n</div>', 1, 'sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `st_favicon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'favicon.png',
  `st_whitelogo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'whitelogo.png',
  `st_darklogo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'darklogo.png',
  `st_icon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'icon.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`st_favicon`, `st_whitelogo`, `st_darklogo`, `st_icon`) VALUES
('favicon.png', 'whitelogo.png', 'darklogo.png', 'icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `device_type`
--

DROP TABLE IF EXISTS `device_type`;
CREATE TABLE IF NOT EXISTS `device_type` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `device_type` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `device_type`
--

INSERT INTO `device_type` (`id`, `user_agent`, `device_type`, `visit_date`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 16:50:19'),
(2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:16:28'),
(3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:23:05'),
(4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:24:46'),
(5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:28:18'),
(6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:31:46'),
(7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 17:32:14'),
(8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'PC', '2023-05-14 19:15:25'),
(9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:19:39'),
(10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:26:08'),
(11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:46:45'),
(12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:53:28'),
(13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:57:49'),
(14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:58:24'),
(15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 15:59:02'),
(16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'PC', '2023-05-21 16:01:56'),
(17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'PC', '2023-06-25 18:17:23'),
(18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'PC', '2023-06-25 18:17:48'),
(19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'PC', '2023-06-25 18:18:32'),
(20, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'PC', '2023-07-01 16:12:47'),
(21, 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36 Edg/114.0.0.0', 'Mobile', '2023-07-01 16:46:54'),
(22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:08:56'),
(23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:09:16'),
(24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:09:57'),
(25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:40:57'),
(26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:41:15'),
(27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:43:47'),
(28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:44:05'),
(29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:46:08'),
(30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:46:12'),
(31, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:46:23'),
(32, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:46:33'),
(33, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:47:50'),
(34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:48:12'),
(35, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:49:00'),
(36, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:49:08'),
(37, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 19:56:01'),
(38, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:00:32'),
(39, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:02:34'),
(40, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:08:31'),
(41, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:08:36'),
(42, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:12:44'),
(43, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:13:50'),
(44, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:15:04'),
(45, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:15:10'),
(46, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:33:10'),
(47, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:34:25'),
(48, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:34:56'),
(49, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:35:47'),
(50, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:56:05'),
(51, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 20:56:19'),
(52, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'PC', '2023-07-02 22:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `episode_serie` int NOT NULL,
  `episode_title` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_iframe` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `episode_status` int NOT NULL,
  `episode_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `episode_image` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `episode_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`episode_id`, `episode_serie`, `episode_title`, `episode_link`, `episode_iframe`, `episode_slug`, `episode_downloadable`, `episode_status`, `episode_date`, `episode_image`, `episode_description`) VALUES
(1, 1, 'One Piece Ep-1', 'https://dood.yt/e/qu08ajt32agk', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/qu08ajt32agk\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'one-piece-ep-1', 1, 1, '2023-04-01 10:24:10', 'episode_1680305290.webp', 'The series begins with an attack on a cruise ship at the hands of Alvida. Koby, a chore boy of Alvida, discovers a barrel. One of Alvida\'s pirates attempt to open the barrel, but a young boy emerges and accidentally hits him. The remaining pirates attack him, but the stranger stops them and says that his name is Monkey D. Luffy. Luffy drags Koby to the storage cellar of the ship, where he eats and converses with Koby, who reveals his dream of being a Marine. Alvida confronts Luffy, but he escapes and knocks her pirate crew down with his Devil Fruit power. Luffy explains that he ate the Gomu Gomu no Mi, therefore he has the powers of rubber. Koby, inspired by Luffy, stands up for himself when Alvida confronts them.'),
(2, 1, 'One Piece Ep-2', 'https://dood.yt/e/fcawfhfz26fk', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/fcawfhfz26fk\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'one-piece-ep-2', 1, 1, '2023-04-01 10:23:56', 'episode_1680305337.webp', 'Luffy and Koby find Zoro tied up and starving. A little girl trespasses onto the field to offer him a rice ball when Helmeppo, the son of the Marine base\'s Captain Morgan, demonstrates the fear and power that his father’s name gives him. Rika tells Luffy that the reason why Zoro is tied up is because he stood up for her and her mother and that all three would be spared if he could survive without food for a month, a promise that Helmeppo had no intent of keeping. Luffy then infiltrates the base looking for Zoro’s sword, but finds three, and returns outside just in time to save Koby and Zoro from being shot by Morgan’s men.'),
(3, 1, 'One Piece Ep-3', 'https://dood.yt/e/dx4a35jwgzfu', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/dx4a35jwgzfu\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'one-piece-ep-3', 1, 1, '2023-04-01 10:23:23', 'episode_1680305907.webp', 'Luffy and Zoro fight the Marines captained by Morgan to prevent their execution. They manage to defeat Morgan, which earns them respect from the townspeople and the Marines of that base. Koby is finally able to fulfill his dream of joining the Marines and Luffy sets sail to his next adventure with Zoro as his first crewmember.'),
(4, 1, 'One Piece Ep-4', 'https://dood.yt/e/dbmtq0ia3zvu', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/dbmtq0ia3zvu\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'one-piece-ep-4', 1, 1, '2023-04-01 10:23:10', 'episode_1680305983.webp', 'A view into Luffy\'s past is shown as we are introduced to his hero, the man who gave him the straw hat, Shanks. Shanks and his crew stand up to a group of bandits in the town as young Luffy is taken by the bandits\' leader and thrown into the water, where he cannot swim due to his Devil Fruit. Shanks saves Luffy\'s life.');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `genre_slug` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `genre_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_title`, `genre_slug`, `genre_image`) VALUES
(3, 'Action', 'action', 'genre_1680273190.jpg'),
(4, 'Horror', 'horror', 'genre_1680301887.jpg'),
(5, 'Anime', 'anime', 'genre_1680301971.jpg'),
(6, 'Thriller', 'thriller', 'genre_1680303571.jpg'),
(7, 'Music', 'music', 'genre_1681315651.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `menu_header` tinyint(1) NOT NULL DEFAULT '0',
  `menu_footer` tinyint(1) NOT NULL DEFAULT '0',
  `menu_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_header`, `menu_footer`, `menu_sidebar`, `menu_status`) VALUES
(9, 'Header', 1, 1, 0, 1),
(11, 'Sidebar', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_year` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_duration` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_trailer` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `movie_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_iframe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_stars` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_status` int NOT NULL,
  `movie_featured` int NOT NULL,
  `movie_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `movie_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_description`, `movie_year`, `movie_duration`, `movie_trailer`, `movie_link`, `movie_downloadable`, `movie_slug`, `movie_iframe`, `movie_stars`, `movie_status`, `movie_featured`, `movie_date`, `movie_image`) VALUES
(3, 'Interstellar', 'Interstellar is a 2014 epic science fiction film co-written, directed, and produced by Christopher Nolan. It stars Matthew McConaughey, Anne Hathaway, Jessica Chastain, Bill Irwin, Ellen Burstyn, Matt Damon, and Michael Caine. Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn in search of a new home for mankind.', '2014', '03:00:00', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 'https://dood.yt/e/5wjw6gy1jrz5', 1, 'interstellar', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/5wjw6gy1jrz5\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'TOPMOVIE', 1, 1, '2023-04-01 03:40:55', 'movie_1680300656.jpg'),
(4, 'The NUN', 'The Nun (stylized as †HE NUИ) is a 2018 American gothic supernatural horror film directed by Corin Hardy and written by Gary Dauberman, from a story by Dauberman and James Wan.It is a spin-off/prequel of 2016\'s The Conjuring 2 and the fifth installment in The Conjuring Universe franchise. The film stars Taissa Farmiga, Demián Bichir and Jonas Bloquet, with Bonnie Aarons reprising her role as the Demon Nun, an incarnation of Valak, from The Conjuring 2. The plot follows a Roman Catholic priest and a nun in her novitiate as they uncover an unholy secret in 1952 Romania.', '2018', '02:58:00', 'https://www.youtube.com/watch?v=pzD9zGcUNrw', 'https://dood.yt/e/uqy0o3i8nfho', 1, 'the-nun', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/uqy0o3i8nfho\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'Demián Bichir,Taissa Farmiga,Jonas Bloquet', 1, 1, '2023-04-01 04:13:24', 'movie_1680302604.jpg'),
(5, 'John Wick', 'John Wick is a 2014 American action thriller film directed by Chad Stahelski and written by Derek Kolstad. The film follows John Wick (Keanu Reeves), a legendary hitman who is forced out of retirement to seek revenge against the men who killed his puppy, a final gift from his recently deceased wife. John Wick also stars Michael Nyqvist, Alfie Allen, Adrianne Palicki, Bridget Moynahan, Dean Winters, Ian McShane, John Leguizamo, and Willem Dafoe.\r\nKolstad\'s script drew on his interest in action, revenge, and neo noir films. Titled Scorn, the rights were purchased by producer Basil Iwanyk as his first independent film production. Reeves, who was experiencing a career lull, liked the script and recommended experienced stunt and action choreographers, Stahelski and David Leitch direct the action scenes. Instead, the pair successfully lobbied to co-direct John Wick. Despite the project nearly being cancelled weeks prior to filming, principal photography began on October 7, 2013, on a $20–$30 million budget. Stahelski and Leitch focused on highly-choreographed, long single takes to convey their action, eschewing the rapid cuts and closeup shots of contemporary action films.', '2014', '03:00:00', 'https://www.youtube.com/watch?v=2AUmvWm5ZDQ', 'https://dood.yt/e/38dphwqks8cl', 1, 'john-wick', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/38dphwqks8cl\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'Keanu Reeves,Michael Nyqvist,Alfie Allen,johnwick,boggyman,babayaga,Action', 1, 1, '2023-04-01 04:19:43', 'movie_1680302984.jpg'),
(6, 'Inception', 'Inception is a 2010 science fiction action film[4][5][6] written and directed by Christopher Nolan, who also produced the film with Emma Thomas, his wife. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person\'s idea into a target\'s subconscious.[7] The ensemble cast includes Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Elliot Page,[a] Tom Hardy, Dileep Rao, Cillian Murphy, Tom Berenger, and Michael Caine.', '2010', '02:50:00', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'https://dood.yt/e/7hjf4swi566x', 1, 'inception', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/7hjf4swi566x\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>1\r\n', 'Leonardo DiCaprio,Joseph Gordon-Levitt,Elliot Page,Tom Hardy,Action', 1, 1, '2023-04-01 04:26:03', 'movie_1680303363.jpg'),
(7, 'Avenger InfinityWar', 'Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to The Avengers (2012) and Avengers: Age of Ultron (2015), and the 19th film in the Marvel Cinematic Universe (MCU). Directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, the film features an ensemble cast including Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldaña, Josh Brolin, and Chris Pratt. In the film, the Avengers and the Guardians of the Galaxy attempt to prevent Thanos from collecting the six all-powerful Infinity Stones as part of his quest to kill half of all life in the universe.', '2018', '02:50:00', 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 1, 'avenger-infinitywar', '<iframe width=\"1000\" height=\"411\" src=\"https://www.youtube.com/embed/6ZfuNTqbHE8\" title=\"Marvel Studios&#39; Avengers: Infinity War Official Trailer\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'IronMan,Thor', 1, 1, '2023-04-01 10:29:55', 'movie_1680325196.jfif'),
(8, 'sample', 'jbkjvb', '2023', '00:00:30', 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 'https://dood.yt/e/jtnvj144az08', 1, 'sample', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/jtnvj144az08\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'a,b', 1, 1, '2023-04-01 11:19:57', 'movie_1680328198.jpg'),
(9, 'Super Hero', 'NCS: Music without limitations | artists: @UnknownBrain @chris-linton-1 Spotify/iTunes/Apple Music: http://NCS.lnk.to/Superhero Free Download: http://bit.ly/2ggYkzl Connect with NCS: Snapchat: ncsmusic • @nocopyrightsounds • instagram.com/nocopyrightsounds • facebook.com/NoCopyrightSounds • twitch.tv/nocopyrightsounds • twitter.com/NCSounds • spoti.fi/1Oc1TpI Unknown Brain • @UnknownBrain • https://facebook.com/UnknownBrain Chris Linton • @chris-linton-1 • https://facebook.com/chrislintonmusic\r\n', '2023', '00:03:00', 'https://youtu.be/LHvYrn3FAgI', 'https://on.soundcloud.com/3ncFG', 1, 'super-hero', '<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1492174921&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/unknown-brain-superhero-feat\" title=\"Unknown Brain - Superhero (feat. Chris Linton) [NCS Release]\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Unknown Brain - Superhero (feat. Chris Linton) [NCS Release]</a></div>', 'Unknown Brain', 1, 1, '2023-04-17 10:10:00', 'movie_1684082663.jpg'),
(10, 'Test', 'xyz', '2023', '03:00:00', 'https://www.youtube.com/watch?v=2AUmvWm5ZDQ', 'https://dood.yt/e/38dphwqks8cl', 1, 'test', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/38dphwqks8cl\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'Sample,Test,2023', 1, 1, '2023-04-17 14:18:18', 'movie_1684082642.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movies_favorites`
--

DROP TABLE IF EXISTS `movies_favorites`;
CREATE TABLE IF NOT EXISTS `movies_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `movies_favorites`
--

INSERT INTO `movies_favorites` (`id`, `item`, `user`) VALUES
(1, 5, 'admin@moflix.com'),
(2, 5, 'hetpatel888@gmail.com'),
(3, 6, 'hetpatel888@gmail.com'),
(4, 10, 'admin@moflix.com'),
(5, 5, 'marmik2004@icloud.com'),
(6, 3, 'marmik2004@icloud.com'),
(7, 6, 'marmik2004@icloud.com');

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

DROP TABLE IF EXISTS `movies_genres`;
CREATE TABLE IF NOT EXISTS `movies_genres` (
  `genre_id` int NOT NULL,
  `movie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`genre_id`, `movie_id`) VALUES
(4, 4),
(3, 3),
(6, 7),
(3, 7),
(4, 8),
(3, 5),
(3, 6),
(5, 10),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `movies_reviews`
--

DROP TABLE IF EXISTS `movies_reviews`;
CREATE TABLE IF NOT EXISTS `movies_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `movies_reviews`
--

INSERT INTO `movies_reviews` (`id`, `item`, `user`, `content`, `rating`, `published`) VALUES
(1, 5, 'admin@moflix.com', 'Perfect', 10, '2023-04-01 05:00:33'),
(2, 3, 'admin@moflix.com', 'Nice work of art', 9, '2023-04-01 05:01:14'),
(3, 6, 'admin@moflix.com', 'good', 8, '2023-04-01 05:01:47'),
(4, 4, 'admin@moflix.com', 'good\r\n', 7, '2023-04-01 05:10:38'),
(5, 5, 'hetpatel888@gmail.com', 'Best Movie\r\n', 10, '2023-04-01 05:34:23'),
(6, 7, 'marmik2004@icloud.com', 'Good', 6, '2023-04-01 10:41:12'),
(7, 5, 'marmik2004@icloud.com', 'Best Action', 10, '2023-04-15 17:05:05'),
(8, 9, 'admin@moflix.com', 'Best Song', 9, '2023-04-17 10:11:43'),
(9, 10, 'admin@moflix.com', 'Nice', 10, '2023-04-17 14:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `navigation_id` int NOT NULL AUTO_INCREMENT,
  `navigation_order` int NOT NULL,
  `navigation_url` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_label` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_target` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_menu` int NOT NULL,
  PRIMARY KEY (`navigation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigation_id`, `navigation_order`, `navigation_url`, `navigation_label`, `navigation_target`, `navigation_type`, `navigation_menu`) VALUES
(43, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 9),
(44, 2, '4/asd', 'Privacy Policy', '_self', 'page', 9),
(45, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 9),
(48, 2, '4/asd', 'Privacy Policy', '_self', 'page', 11),
(49, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 11),
(50, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_status` int NOT NULL,
  `page_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_layout` int NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_slug` (`page_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_status`, `page_description`, `page_slug`, `page_date`, `page_layout`) VALUES
(2, 'FAQ\'s', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'faq-s', '2020-05-21 15:34:38', 1),
(3, 'Terms & Conditions', 1, '<h2><strong>Terms and Conditions</strong></h2>\r\n<p>Welcome to moflix!</p>\r\n<p>These terms and conditions outline the rules and regulations for the use of moflix\'s Website, located at moflix.</p>\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use moflix if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of in. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n<h3><strong>Cookies</strong></h3>\r\n<p>We employ the use of cookies. By accessing moflix, you agreed to use cookies in agreement with the moflix\'s Privacy Policy.</p>\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n<h3><strong>License</strong></h3>\r\n<p>Unless otherwise stated, moflix and/or its licensors own the intellectual property rights for all material on moflix. All intellectual property rights are reserved. You may access this from moflix for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n<p>You must not:</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Republish material from moflix</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Sell, rent or sub-license material from moflix</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Reproduce, duplicate or copy material from moflix</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Redistribute content from moflix</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the <a href=\"https://www.termsfeed.com/terms-conditions-generator/\">Terms and Conditions Generator</a>.</p>\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. moflix does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of moflix,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, moflix shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n<p>moflix reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n<p>You warrant and represent that:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>You hereby grant moflix a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Government agencies;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Search engines;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>News organizations;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>commonly-known consumer and/or business information sources;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>dot.com community sites;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>associations or other groups representing charities;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>online directory distributors;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>internet portals;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>accounting, law and consulting firms; and</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>educational institutions and trade associations.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of moflix; and (d) the link is in the context of general resource information.</p>\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to moflix. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>By use of our corporate name; or</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>By use of the uniform resource locator being linked to; or</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>No use of moflix\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n<h3><strong>iFrames</strong></h3>\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n<h3><strong>Content Liability</strong></h3>\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n<h3><strong>Disclaimer</strong></h3>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>&nbsp; &nbsp;\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', 'terms-conditions', '2020-05-21 15:36:36', 0),
(4, 'Privacy Policy', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'asd', '2020-05-21 15:36:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `serie_id` int NOT NULL AUTO_INCREMENT,
  `serie_title` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_year` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_status` int NOT NULL,
  `serie_featured` int NOT NULL,
  `serie_trailer` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_stars` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`serie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`serie_id`, `serie_title`, `serie_description`, `serie_year`, `serie_status`, `serie_featured`, `serie_trailer`, `serie_stars`, `serie_image`, `serie_slug`, `serie_date`) VALUES
(1, 'One Piece', 'One Piece (stylized in all caps) is a Japanese anime television series produced by Toei Animation that premiered on Fuji TV in October 1999. It is based on Eiichiro Oda\'s manga series of the same name. The story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit. With his crew of pirates, named the Straw Hat Pirates, Luffy explores the Grand Line in search of the world\'s ultimate treasure known as \"One Piece\" in order to become the next Pirate King.\r\nSince its premiere in Japan, over 1000 episodes have been aired, and later exported to various countries around the world.', '1999', 1, 1, 'https://www.youtube.com/watch?v=xylh_sJAYdc', 'Luffy,zoro,nami,shanks,devilfruits,gol d roger,pirate king', 'serie_1680302235.jpg', 'one-piece', '2023-04-01 04:07:14'),
(2, 'The Vampire Diaries', 'The Vampire Diaries is an American supernatural teen drama television series developed by Kevin Williamson and Julie Plec, based on the book series of the same name written by L. J. Smith. The series premiered on The CW on September 10, 2009, and concluded on March 10, 2017, having aired 171 episodes over eight seasons.\r\n\r\nThe pilot episode attracted the largest audience for The CW of any series premiere since the network began in 2006;[1] the first season averaged 3.60 million viewers.It became the most-watched series on the network before being supplanted by Arrow. The show has received numerous award nominations, winning four People\'s Choice Awards and many Teen Choice Awards.\r\n\r\nIn April 2015, lead actress Nina Dobrev, who played Elena Gilbert, confirmed that she would be leaving the show after its sixth season. Dobrev returned to record a voiceover for the seventh-season finale and returned as a guest star in the series finale.[3] In March 2016, The CW renewed the series for an eighth season,[4] but in July of that year announced that the eighth season, consisting of 16 episodes, would be the show\'s last.[5] The final season began airing on October 21, 2016, and ended March 10, 2017.', '2017', 1, 1, 'https://www.youtube.com/watch?v=BmVmhjjkN4E', 'Nina,Paul Wesley,Ian Somerhalder,Damon Salvatore,Stefan Salvatore', 'serie_1680303727.jpg', 'the-vampire-diaries', '2023-04-01 04:32:07'),
(3, 'Farzi', 'Farzi (transl. Fake)[1] is an Indian Hindi-language black comedy crime thriller television series created, produced and directed by Raj & DK, who also co-wrote the series with Sita Menon and Suman Kumar. It stars Shahid Kapoor, Vijay Sethupathi, Kay Kay Menon, Raashii Khanna and Bhuvan Arora, and tells the story of a disillusioned artist who decides to make counterfeit money.\r\n\r\nInitially conceived as a film in 2014, Farzi was expanded into a television series by 2019. Principal photography began in Mumbai in July 2021. Filming also took place in Alibaug, Goa, Nepal, and Jordan. Sachin–Jigar and Tanishk Bagchi composed the songs, while Ketan Sodha provided the score. The series shares continuity with Raj & DK\'s spy series The Family Man.\r\n\r\nThe eight-episode series was released on Amazon Prime Video on 10 February 2023. Farzi received positive reviews, and emerged as the most-watched Indian streaming series. By the end of February 2023, Kapoor confirmed that the show would return for a second season.', '2023', 1, 1, 'https://www.youtube.com/watch?v=rcQ_xZdzPBc', 'Shahid Kapoor,Vijay Sethupathi,Kay Kay Menon,Raashii Khanna', 'serie_1680304062.jpg', 'farzi', '2023-04-01 04:37:42'),
(4, 'Family Man', 'The Family Man is an Indian spy thriller streaming television series created by Raj & DK.for the streaming service Amazon Prime Video and features Manoj Bajpayee as Srikant Tiwari, a middle-class man secretly working as an intelligence officer for the Threat Analysis and Surveillance Cell (TASC), a fictitious branch of the National Investigation Agency.It also stars Priyamani, Sharad Kelkar, Neeraj Madhav, Sharib Hashmi, Dalip Tahil, Sunny Hinduja and Shreya Dhanwanthary. The series is produced and directed by Raj & D.K, who also co-wrote the story and screenplay with Suman Kumar, with dialogue penned by Sumit Arora and Kumar. Samantha Ruth Prabhu was hired for the second season of the series as the main antagonist, making her foray into the digital medium with Suparn S. Verma directing a section of the season.', '2019', 1, 1, 'https://www.youtube.com/watch?v=XatRGut65VI', 'Manoj Bajpayee,Srikant Tiwari (Sri),Jayavant Kashinath \"JK\" Talpade,Sharib Hashmi,Suchitra Tiwari (Suchi),Priyamani', 'serie_1680304451.jpg', 'family-man', '2023-04-01 04:44:10'),
(5, 'Naruto', 'Naruto[a] is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village. The story is told in two parts—the first set in Naruto\'s pre-teen years, and the second in his teens. The series is based on two one-shot manga by Kishimoto: Karakuri (1995), which earned Kishimoto an honorable mention in Shueisha\'s monthly Hop Step Award the following year, and Naruto (1997).\r\n\r\nNaruto was serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump from 1999 to 2014, with its chapters collected in 72 tankōbon volumes. The manga was adapted into an anime television series produced by Pierrot and Aniplex, which broadcast 220 episodes from 2002 to 2007; the English dub of the series aired on Cartoon Network and YTV from 2005 to 2009. Naruto: Shippuden, a sequel to the original series, premiered in 2007, and ended in 2017, after 500 episodes. The English dub was broadcast on Disney XD from 2009 to 2011, airing the first 98 episodes, and then switched over to Adult Swim\'s Toonami programming block in January 2014, starting over from the first episode.', '2002', 1, 1, 'https://www.youtube.com/watch?v=-G9BqkgZXRA', 'naruto,itachi,kakshi,obto,madara,sauske,trash,might,nezi', 'serie_1680304593.jpg', 'naruto', '2023-04-01 04:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `series_favorites`
--

DROP TABLE IF EXISTS `series_favorites`;
CREATE TABLE IF NOT EXISTS `series_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `series_genres`
--

DROP TABLE IF EXISTS `series_genres`;
CREATE TABLE IF NOT EXISTS `series_genres` (
  `genre_id` int NOT NULL,
  `serie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `series_genres`
--

INSERT INTO `series_genres` (`genre_id`, `serie_id`) VALUES
(5, 1),
(6, 2),
(4, 2),
(3, 2),
(6, 3),
(3, 3),
(6, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `series_reviews`
--

DROP TABLE IF EXISTS `series_reviews`;
CREATE TABLE IF NOT EXISTS `series_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `series_reviews`
--

INSERT INTO `series_reviews` (`id`, `item`, `user`, `content`, `rating`, `published`) VALUES
(1, 1, 'admin@moflix.com', 'best animations', 10, '2023-04-01 04:59:26'),
(2, 3, 'admin@moflix.com', 'Artist', 9, '2023-04-01 05:02:57'),
(3, 5, 'admin@moflix.com', 'I will became hockage', 8, '2023-04-01 05:04:16'),
(4, 4, 'marmik2004@icloud.com', 'Nice\r\n', 6, '2023-04-01 10:42:01'),
(5, 2, 'marmik2004@icloud.com', 'Nice', 8, '2023-05-21 21:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `st_sitename` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_facebook` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_twitter` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_instagram` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_youtube` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`st_sitename`, `st_facebook`, `st_twitter`, `st_instagram`, `st_youtube`, `st_keywords`, `st_description`) VALUES
('MoFlix', 'https://facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'netflix clon,hbo clone,amazon prime php script,movies download, movies telugu,movies to watch,movies app', 'MoFlix is the most popular website to watch movies and series online for free without the need for registration, enjoy the best content in HD.');

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

DROP TABLE IF EXISTS `smtp`;
CREATE TABLE IF NOT EXISTS `smtp` (
  `st_smtphost` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpemail` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtppassword` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpport` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpencrypt` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`st_smtphost`, `st_smtpemail`, `st_smtppassword`, `st_smtpport`, `st_smtpencrypt`) VALUES
('smtp.gmail.com', 'pubgmate9@gmail.com', 'Marmikpatel412', '587', 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_duration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_link` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `song_slug` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_artists` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_status` int NOT NULL,
  `song_featured` int NOT NULL,
  `song_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `song_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_iframe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_stars` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_title`, `song_description`, `song_duration`, `song_link`, `song_downloadable`, `song_slug`, `song_artists`, `song_status`, `song_featured`, `song_date`, `song_image`, `song_iframe`, `song_stars`, `song_year`) VALUES
(1, 'Ignite', 'Ignite, is about facing your problems in life and not hesitating to fix them. In the music video, it is clearly showing that people have difficulties they need to face in life and how one person can change your whole perspective towards everything (The goggles). Because that person has showed them a way to get past their problems, they\'re now saying that they are invincible and can defeat everything (having a positive mindset). They are telling all those haters that nothing can hurt them, because they\'ve become stronger and if their buttons are pulled they\'ll show them what they are really made of.', '00:03:00', 'https://on.soundcloud.com/PqAmq', 1, 'ignite', '', 1, 1, '2023-04-15 10:10:35', 'song_1681533636.jpg', '<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1490799163&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/ignite\" title=\"Ignite\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Ignite</a></div>', 'Alan Walker,K-391', '2022'),
(2, 'Bad Habit', '“Bad Habit” is the second single released for Steve Lacy’s second album, Gemini Rights. It was released on June 29th, 2022, alongside an official music video. The song is mainly about reflecting on an attraction to someone, and what it could have been if he had expressed how it felt to the person he is singing about.', '00:03:00', 'https://on.soundcloud.com/SNjqc', 1, 'bad-habit', '', 1, 1, '2023-04-17 09:49:54', 'song_1684082591.jpg', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1492174948&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/jeja-bad-habit-ft-zaug-phonk\" title=\"Jéja - Bad Habit (ft. Zaug) - Phonk Version [NCS Release]\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Jéja - Bad Habit (ft. Zaug) - Phonk Version [NCS Release]</a></div>', 'Ed Shreen,jeja', '2019'),
(3, 'Falling Down', '\"Falling Down\" is a song by late American rappers Lil Peep and XXXTentacion. It was included as a bonus track on the deluxe edition of Lil Peep\'s second studio album Come Over When You\'re Sober, Pt. 2 (2018). The song was posthumously released as the lead single from the album on September 19, 2018. The track was produced by IIVI, John Cunningham, and Mike Will Made It. \"Falling Down\" was originally a song by and written by Lil Peep and fellow American rapper iLoveMakonnen under the title \"Sunlight on Your Skin\", with XXXTentacion also receiving a writing credit for the final version.', '00:02:45', 'https://on.soundcloud.com/59Hdj', 1, 'falling-down', '', 1, 1, '2023-04-17 09:53:05', 'song_1684082573.jpg', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1492174978&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/alex-skrindo-falling-down-ncs\" title=\"Alex Skrindo - Falling Down [NCS Release]\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Alex Skrindo - Falling Down [NCS Release]</a></div>', 'xxxtension,pitbull', '2020'),
(4, 'Electro-Light', 'Electro-Light is a music producer who debuted on NCS with his song, Hold On To Me, featuring Sidekicks, which was released April 20, 2014. He is primarily known for his song Symbolism, which is his most famous song and has gotten very popular on NCS.', '00:02:55', 'https://on.soundcloud.com/VBLof', 1, 'electro-light', '', 1, 1, '2023-04-17 09:56:06', 'song_1684082555.jpg', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1492174969&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/electro-light-symbolism-ncs\" title=\"Electro - Light - Symbolism [NCS Release]\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Electro - Light - Symbolism [NCS Release]</a></div>', 'Electro-Light', '2014'),
(5, 'Lost Sky', 'Where We Started is the sixth studio album by American country music singer Thomas Rhett, released by Big Machine Records\' Valory imprint on April 1, 2022. Rhett collaborated with Katy Perry, Riley Green, Tyler Hubbard and Russell Dickerson.\r\n\r\nThe album was preceded by its lead single \"Slow Down Summer\" which peaked at No. 43 on Billboard Hot 100. The album debuted at number 12 on US Billboard 200 with 29,000 album-equivalent units.', '00:03:00', 'https://on.soundcloud.com/NvEEU', 1, 'lost-sky', '', 1, 1, '2023-04-17 10:02:30', 'song_1684082534.jpg', '<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1492174939&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/pubg-mate\" title=\"Pubg Mate\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Pubg Mate</a> · <a href=\"https://soundcloud.com/pubg-mate/lost-sky-fearless-pt-ii-feat\" title=\"Lost Sky - Fearless Pt.II (feat. Chris Linton) [NCS Release]\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Lost Sky - Fearless Pt.II (feat. Chris Linton) [NCS Release]</a></div>', 'Chris Liton', '2015'),
(6, 'Overdrive', 'Conan Gray\'s debut album, Kid Krow, comprises a collection of melancholic tracks inspired by his difficult childhood (\"Affluenza,\" \"The Story\") as well as teenage experiences with toxic relationships (\"The Cut That Always Bleeds,\" \"Maniac\") and unrequited love (\"I Wish You Were Sober,\" \"Heather\"). For his first solo release since Kid Krow, Gray came up with a soaring pop-rock anthem, which is the antithesis to his debut record.\r\n', '00:02:55', 'https://dood.yt/e/jtnvj144az08', 1, 'overdrive', '', 1, 1, '2023-04-17 10:05:01', 'song_1684082484.jpg', '<iframe width=\"1000\" height=\"480\" src=\"https://dood.yt/e/jtnvj144az08\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'Millibrook', '2017'),
(7, 'test22', 'xyz', '00:02:00', 'xyz', 1, 'test22', '', 1, 1, '2023-04-21 14:51:42', 'song_1684082619.jpg', 'xyz', 'test22,2021', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `songs_favorites`
--

DROP TABLE IF EXISTS `songs_favorites`;
CREATE TABLE IF NOT EXISTS `songs_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs_genres`
--

DROP TABLE IF EXISTS `songs_genres`;
CREATE TABLE IF NOT EXISTS `songs_genres` (
  `genre_id` int NOT NULL,
  `song_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs_genres`
--

INSERT INTO `songs_genres` (`genre_id`, `song_id`) VALUES
(7, 17),
(7, 18),
(7, 19),
(7, 1),
(7, 6),
(7, 5),
(7, 4),
(7, 3),
(7, 2),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `songs_reviews`
--

DROP TABLE IF EXISTS `songs_reviews`;
CREATE TABLE IF NOT EXISTS `songs_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strings`
--

DROP TABLE IF EXISTS `strings`;
CREATE TABLE IF NOT EXISTS `strings` (
  `st_aboutus` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_privacypolicy` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_termsofservice` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `strings`
--

INSERT INTO `strings` (`st_aboutus`, `st_privacypolicy`, `st_termsofservice`) VALUES
('<p>About Us</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Privacy Policy</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Terms of Service</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_role` tinyint(1) NOT NULL DEFAULT '2',
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_status`, `user_updated`, `user_created`) VALUES
(2, 'User', 'user@moflix.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, '2023-04-12 15:07:08', '2021-01-10 22:07:17'),
(3, 'Het Patel', 'hetpatel888@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 1, '2023-04-01 03:55:31', '2023-04-01 03:55:31'),
(4, 'Marmik Patel', 'marmik2004@icloud.com', '2cefd0d43fd1db363194682fa891b04494a4993f8fc66533a926ae3cf42f816bd9426075c94644957e51f372e3b3dfcf5304f6f6aa21351fbcb32ee8163c61dc', 1, 1, '2023-07-03 02:27:41', '2023-04-01 03:56:12'),
(5, 'Rishi Soni', 'rishisoni3174@gmail.com', '23693c364d87763e58b17edb154b08cfbcdcd5763689ad6a2973dbe7e602723a4beeb89306911493132e7b127f7011fb441b8015bd1a23d8580fe6016cbb7b53', 2, 1, '2023-04-01 03:57:44', '2023-04-01 03:57:44'),
(6, 'Ayush Patel', 'ayush.pp305@gmail.com', '71f047e597aa682603cfe16f6048341feee583680ffdd85fcd56cf8c1002f1fd4ff6dc96643876bf47e36d760ce5cd4dda43a1b6801e391ab178ef0e9552ab06', 2, 1, '2023-04-01 03:58:33', '2023-04-01 03:58:33'),
(7, 'Admin', 'admin@moflix.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 1, '2023-04-01 05:29:26', '2023-04-01 05:29:26');
--
-- Database: `db_sams`
--
CREATE DATABASE IF NOT EXISTS `db_sams` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_sams`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roll` int NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `roll`, `attend`, `att_time`) VALUES
(1, 1, 'absent', '2019-01-16'),
(2, 2, 'present', '2019-01-16'),
(3, 3, 'absent', '2019-01-16'),
(4, 4, 'absent', '2019-01-16'),
(5, 5, 'present', '2019-01-16'),
(6, 6, 'present', '2019-01-16'),
(7, 7, 'absent', '2019-01-16'),
(9, 1, 'present', '2019-01-17'),
(10, 2, 'present', '2019-01-17'),
(11, 3, 'absent', '2019-01-17'),
(12, 4, 'absent', '2019-01-17'),
(13, 5, 'present', '2019-01-17'),
(14, 6, 'absent', '2019-01-17'),
(15, 7, 'present', '2019-01-17'),
(31, 6, 'absent', '2019-01-18'),
(30, 5, 'absent', '2019-01-18'),
(29, 4, 'present', '2019-01-18'),
(28, 3, 'present', '2019-01-18'),
(27, 2, 'present', '2019-01-18'),
(26, 1, 'present', '2019-01-18'),
(32, 7, 'present', '2019-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE IF NOT EXISTS `tbl_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `roll` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `name`, `roll`) VALUES
(1, 'Md. Shakil Ahmed', 1),
(2, 'Abdullah Al Mamun', 2),
(3, 'Anayet Ullah', 3),
(4, 'Mahmudul Hassan', 4),
(5, 'Mehedi Hasan', 5),
(6, 'Jahirul Islam', 6),
(7, 'Arman Khan', 7);
--
-- Database: `kingcommerce`
--
CREATE DATABASE IF NOT EXISTS `kingcommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kingcommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '0000000000', 'Administrator', '15455012941535429467review-profile.png', '$2y$10$9qkomlAvMPVMjqktEM5ekuPLVjR/xY8Vu04xBAd0jt6Y/fN0MgX.C', 1, '8xb8OGagZkbHlMAIce27TPUWbMCfWESkjn3jgaCYILInKYJGmdA6zNQu3wKR', '2018-02-28 23:27:08', '2018-12-23 05:54:54'),
(2, 'Wu ZI Mu', 'wuzimu@gmail.com', '3242342345436554654645', 'Staff', '1539171190profile3.jpg', '$2y$10$f5TJcOwfSAUu1D.doxAZhuZBZdqrvrN1CVTMn8nPh3EY.XveZEBw2', 1, NULL, '2018-10-10 11:33:10', '2018-10-10 11:33:10'),
(3, 'Ajitbhai', 'ajitvasava@gmail.com', '1234567899', 'Administrator', NULL, '$2y$10$Ke6q/DOog3wEm/Is9oUX8u6Rz0nUg2ZW/H1lL5BXqP5tH4/Dn82ua', 1, NULL, '2023-04-01 12:50:33', '2023-04-01 12:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

DROP TABLE IF EXISTS `admin_user_conversations`;
CREATE TABLE IF NOT EXISTS `admin_user_conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(11, 'gfdg', 13, 'fdgfdgdf', '2018-11-29 08:40:03', '2018-11-29 08:40:03'),
(14, 'jrf', 13, 'dfsdfsdf', '2018-12-04 13:14:33', '2018-12-04 13:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

DROP TABLE IF EXISTS `admin_user_messages`;
CREATE TABLE IF NOT EXISTS `admin_user_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(28, 11, 'fdgfdgdf', NULL, '2018-11-29 08:40:03', '2018-11-29 08:40:03'),
(31, 14, 'dfsdfsdf', NULL, '2018-12-04 13:14:34', '2018-12-04 13:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

DROP TABLE IF EXISTS `advertises`;
CREATE TABLE IF NOT EXISTS `advertises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `script` text,
  `size` varchar(191) NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `type`, `photo`, `alt`, `url`, `script`, `size`, `clicks`, `status`) VALUES
(3, 'banner', '1520953940add.jpg', 'Advertisement', 'http://geniusocean.com/', NULL, '728x90', 5, 1),
(4, 'banner', '1520953955ad1.jpg', 'Advertisement', 'http://geniusocean.com/', NULL, '300x250', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `top1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `top1`, `top2`, `top3`, `top4`, `bottom1`, `bottom2`, `top1l`, `top2l`, `top3l`, `top4l`, `bottom1l`, `bottom2l`) VALUES
(1, '1680273797gallery-1-1.jpg', '1680348668gallery-1-2.jpg', '1680348683gallery-1-3.jpg', '1680348703faq-one-bg.png', '1536060875banner-1.jpg', '1536060875banner-2.jpg', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloodgroups_slug_unique` (`cat_slug`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_slug`, `status`, `photo`) VALUES
(26, 'SEEDS', 'Root of the crops', 1, '1680351163about-v1-img1.jpg'),
(27, 'PESTICIDES', 'To protect crops', 1, '1680351269about-v2-img2.jpg'),
(28, 'FERTILISERS', 'Fertilisers', 1, '1680351472projects-v2-img5.jpg'),
(29, 'MICRONUTRISIENTS', 'Micro', 1, '1680351540projects-v1-img3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

DROP TABLE IF EXISTS `childcategories`;
CREATE TABLE IF NOT EXISTS `childcategories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subcategory_id` int UNSIGNED NOT NULL,
  `child_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int NOT NULL,
  `recieved_user` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE IF NOT EXISTS `counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int NOT NULL DEFAULT '0',
  `todays_count` int NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 2777, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 386, 0, NULL),
(6, 'browser', 'Windows 7', 415, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 348, 0, NULL),
(11, 'browser', 'Mac OS X', 502, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, NULL, 9, 0, '2018-09-01', '2018-12-31'),
(2, 'sdsdsasd', 0, 11, NULL, 1, 0, '2018-09-01', '2018-12-31'),
(3, 'werwd', 0, 22, '46', 3, 0, '2018-09-01', '2018-12-31'),
(4, 'asdasd', 1, 23.5, '76', 1, 0, '2018-09-01', '2018-12-31'),
(5, 'kopakopakopa', 0, 40, NULL, 0, 0, '2018-10-05', '2019-01-31'),
(6, 'rererere', 1, 9, NULL, 0, 1, '2018-12-15', '2018-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(7, 'Rupees', '₹', 82.18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `email_body` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To KingCommerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `text`) VALUES
(1, 'Reducing the visibility of the negative information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(3, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(4, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),
(5, 'Protecting brand integrity', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

DROP TABLE IF EXISTS `favorite_sellers`;
CREATE TABLE IF NOT EXISTS `favorite_sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

DROP TABLE IF EXISTS `generalsettings`;
CREATE TABLE IF NOT EXISTS `generalsettings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `np` int NOT NULL DEFAULT '0',
  `fp` int NOT NULL DEFAULT '0',
  `pb` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ss` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcheck` tinyint NOT NULL DEFAULT '1',
  `scheck` tinyint NOT NULL DEFAULT '1',
  `mcheck` tinyint NOT NULL DEFAULT '1',
  `bcheck` tinyint NOT NULL DEFAULT '1',
  `ccheck` tinyint NOT NULL DEFAULT '1',
  `mmi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship` int UNSIGNED NOT NULL,
  `vid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vidimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sign` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint NOT NULL DEFAULT '1',
  `category` tinyint NOT NULL DEFAULT '1',
  `sb` tinyint NOT NULL DEFAULT '1',
  `hv` tinyint NOT NULL DEFAULT '1',
  `ftp` tinyint NOT NULL DEFAULT '1',
  `lp` tinyint NOT NULL DEFAULT '1',
  `pp` tinyint NOT NULL DEFAULT '1',
  `lb` tinyint NOT NULL DEFAULT '1',
  `bs` tinyint NOT NULL DEFAULT '1',
  `ts` tinyint NOT NULL DEFAULT '1',
  `bl` tinyint NOT NULL DEFAULT '1',
  `colors` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_section` tinyint NOT NULL DEFAULT '0',
  `order_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cart_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_change` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_already` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_charge` int DEFAULT '0',
  `withdraw_fee` int NOT NULL DEFAULT '0',
  `fixed_commission` int DEFAULT '0',
  `percentage_commission` int DEFAULT '0',
  `tax` int DEFAULT '0',
  `ship_info` tinyint NOT NULL DEFAULT '0',
  `multiple_ship` int NOT NULL DEFAULT '0',
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subscribe_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subscribe_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '1',
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `affilate_charge` int NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) DEFAULT '0',
  `affilate_banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '0',
  `footer_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `site`, `bgimg`, `cimg`, `about`, `street`, `phone`, `fax`, `email`, `footer`, `bg_title`, `bg_link`, `bg_text`, `np`, `fp`, `pb`, `sk`, `ss`, `pcheck`, `scheck`, `mcheck`, `bcheck`, `ccheck`, `mmi`, `bi`, `ship`, `vid`, `vidimg`, `tags`, `sign`, `slider`, `category`, `sb`, `hv`, `ftp`, `lp`, `pp`, `lb`, `bs`, `ts`, `bl`, `colors`, `bimg`, `loader`, `count_title`, `count_heading`, `count_date`, `count_link`, `count_image`, `service_section`, `order_title`, `order_text`, `cart_success`, `cart_error`, `wish_success`, `wish_error`, `wish_remove`, `compare_success`, `compare_error`, `compare_remove`, `invalid`, `color_change`, `size_change`, `coupon_found`, `no_coupon`, `coupon_already`, `withdraw_charge`, `withdraw_fee`, `fixed_commission`, `percentage_commission`, `tax`, `ship_info`, `multiple_ship`, `is_talkto`, `talkto`, `subscribe_title`, `subscribe_text`, `subscribe_image`, `is_subscribe`, `is_language`, `reg_vendor`, `rtl`, `is_affilate`, `affilate_charge`, `guest_checkout`, `affilate_banner`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `footer_background`, `is_loader`) VALUES
(1, '1680274937logo-1-old.png', '15455008411525426363favicon (1).ico', 'Online Store', 'https://ecommerce.com/', '1680275216faq-one-bg.png', '1680275298cta-v1-bg.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'admin@ecommerce.com', 'COPYRIGHT 2021&nbsp;<a href=\"http://ecommerce.com/\">ecommerce.com</a>', 'Lorem ipsum dolor sit amet', 'https://ecommerce.com/', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a!', 0, 10, 'shaon143-facilitator-1@gmail.com', 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 1, 0, 0, 1, '<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Faites vos depots sur les numero suivant 42784249 / 78939896 / 04835863</span>', '<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Bank Compte Bancaire</span>', 0, 'https://www.youtube.com/watch?v=ImcZiT4YeUU', '1680347987story-v1-img.jpg', 'a,b,c,d,x,y,z,k', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '#0057ff', '1539851805images.JPG', '15455007811534395815Blocks-1s-125px.gif', 'Deal of The Day', 'GET UP TO 50% OFF', '2019/03/28', 'https://www.google.com/', '1680273921blog-v1-img3.jpg', 0, '<h1 class=\"text-center\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: green;\">Congratulation !!</h1>', '<h2 style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 51, 51); font-size: 36px; text-align: center;\">Your Order Has been Confirmed.</h2>', 'Successfully Added To Cart.', 'Out Of Stock !!', 'Successfully Added To Wishlist.', 'Already Added To Wishlist !!', 'Successfully Remove From Wishlist.', 'Successfully Added To Compare.', 'Already Added To Compare !!', 'Successfully Remove From Compare.', 'Invalid Input !!', 'Color has Changed Successfully.', 'Size Has Changed Successfully.', 'Coupon Applied Successfully', 'No Coupon Found.', 'This Coupon Has Already Been Applied.', 5, 5, 3, 5, 10, 1, 1, 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1680274051blog-s-1-3.jpg', 0, 1, 1, 0, 1, 8, 1, '15455529221538057747banner-2.jpg', 'in-v3.mailjet.com', '587', '0e05029e2dc70da691aa2223aa53c5be', '5df1b6242e86bce602c3fd9adc178460', 'admin@ecommerce.com', 'GeniusOcean', 1, 1, '1545561002footer-bg.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `photo`, `url`) VALUES
(3, '1680273831gallery-1-4.jpg', 'https://www.google.com/'),
(4, '1680273820gallery-1-2.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fht` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `h` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vdn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faqs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `con` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `spe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sucp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reset` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logout` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `np` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hcs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ston` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `s` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `al` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dni` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sbg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doci` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dosp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `don` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `app` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `md` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dotpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dogpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dolpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doeml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doupl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `success` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dttl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ddesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ppr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cremove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cproduct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cedit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cquantity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cupice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cst` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ccs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `odetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bdetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ship` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onow` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ships` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickupss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogsss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contacts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ecpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `acpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ft` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enter_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hot_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `latest_special` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `big_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_arrival` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_now` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `week` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `day` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hour` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `minute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `second` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_processing` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_completed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_all` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `all_categories` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlists` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linked_accounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signinup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_registration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vshop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `owner_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reg_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `optional` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_bonus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_balance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_sold` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_earning` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clear` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `messages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purchased_item` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_orders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sliders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_cost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_apply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `availability` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlist_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quick_view` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_condition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `watch_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_send` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `licence_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_favorite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `update_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_rating` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_vendor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_available` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `to_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_replies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancel_edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_less` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `rtl`, `is_default`, `language`, `home`, `fh`, `fht`, `h`, `vt`, `gt`, `vdn`, `about`, `blog`, `blogs`, `faq`, `faqs`, `maq`, `contact`, `con`, `cop`, `coe`, `cor`, `signin`, `sie`, `spe`, `signup`, `suf`, `suph`, `sue`, `sup`, `sucp`, `dashboard`, `edit`, `reset`, `logout`, `cp`, `np`, `rnp`, `chnp`, `bgs`, `rds`, `hcs`, `lns`, `lm`, `vd`, `ston`, `s`, `fl`, `sm`, `fpw`, `fpt`, `fpe`, `fpb`, `cn`, `al`, `bg`, `dni`, `search`, `ec`, `sbg`, `ss`, `bs`, `dopd`, `doo`, `dol`, `doa`, `doe`, `dor`, `dopr`, `doc`, `doci`, `dosp`, `don`, `doem`, `dom`, `fname`, `cup`, `pp`, `app`, `size`, `md`, `amf`, `doct`, `doad`, `doph`, `dofx`, `dofpl`, `dotpl`, `dogpl`, `dolpl`, `doeml`, `doupl`, `supl`, `success`, `dttl`, `ddesc`, `ppr`, `fpr`, `cremove`, `cimage`, `cproduct`, `cedit`, `cquantity`, `cupice`, `cst`, `ccs`, `cpc`, `odetails`, `bdetails`, `ship`, `onow`, `ships`, `shipss`, `pickup`, `pickups`, `onotes`, `tid`, `pickupss`, `blogss`, `blogsss`, `contacts`, `ctry`, `sctry`, `cpn`, `ecpn`, `acpn`, `ds`, `ft`, `review_title`, `video_title`, `enter_code`, `support`, `product_detail`, `hot_sale`, `latest_special`, `big_sale`, `featured_product`, `new_arrival`, `shop_now`, `week`, `day`, `hour`, `minute`, `second`, `view_website`, `wish_list`, `favorite_product`, `order_processing`, `order_completed`, `view_all`, `all_categories`, `wishlists`, `wish_head`, `others`, `colors`, `shop_name`, `vendor_description`, `linked_accounts`, `signinup`, `vendor_registration`, `vshop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `message`, `optional`, `sale`, `welcome`, `user_dashboard`, `conv`, `new_conv`, `no_conv`, `affilate_bonus`, `current_balance`, `item_sold`, `total_earning`, `clear`, `customer`, `favorite_seller`, `messages`, `purchased_item`, `affilate_settings`, `affilate_withdraw`, `affilate_code`, `vendor_products`, `vendor_orders`, `withdraw`, `settings`, `sliders`, `shop_description`, `shipping_cost`, `social_link`, `vendor_apply`, `availability`, `wishlist_add`, `quick_view`, `compare`, `product_condition`, `shipping_time`, `watch_video`, `add_seller`, `contact_seller`, `phone_number`, `send_message`, `send_to`, `new_message`, `vendor_subject`, `vendor_message`, `vendor_send`, `platform`, `region`, `licence_type`, `comment_login`, `comment_review`, `product_favorite`, `facebook_login`, `google_login`, `digital_login`, `tax`, `comment`, `comments`, `write_comment`, `write_reply`, `edit_button`, `reply_button`, `remove`, `update_comment`, `edit_comment`, `edit_reply`, `compare_title`, `compare_rating`, `compare_vendor`, `compare_description`, `compare_available`, `compare_cart`, `no_compare`, `to_review`, `product_review`, `view_replies`, `cancel_edit`, `see_more`, `see_less`) VALUES
(1, 0, 1, 'English', 'HOME', 'MY ACCOUNT', 'My Cart', 'Your Cart is Empty.', 'Total', 'CHECKOUT', 'VIEW CART', 'ABOUT US', 'BLOG', 'BLOG', 'FAQ', 'FREQUENTLY ASKED QUESTION', 'Most Asked Questions', 'CONTACT US', 'Your Name', 'Your Phone', 'Your Email', 'Write a Reply', 'Sign In', 'LOGIN', 'Sign Up', 'Create a new account', 'Review Description', 'Postal Code', 'HAPPY CUSTOMERS', 'Password', 'Confirm Password', 'Dashboard', 'Edit Profile', 'Change Password', 'Logout', 'Current Password', 'New Password', 'Re-Type New Password', 'Change Password', 'Top Category', 'Top Rate', 'Add To Cart', 'LATEST BLOGS', 'Best Sellers', 'VIEW DETAILS', 'Subscribe Our Newsletter', 'SUBSCRIBE', 'FOOTER LINKS', 'Send Message', 'Forgot your Password?', 'Forgot Password', 'Email Address', 'SUBMIT', 'Orders', 'Already Have Account? Login', 'Featured', 'Out Of Stock', 'Search', 'Search For Product', 'In Stock', 'Search Result', 'Source', 'Qty', 'Size', 'Quick Review', 'Filter Option', 'Sort By Latest Product', 'Sort By Oldest Product', 'Sort By Lowest Price', 'Sort By Highest Price', 'All Categories', 'Price', 'Search', 'Popular Tags', 'Tag', 'Full Name', 'Select Payment Method', 'Paypal', 'Credit Card', 'Submit Review', 'No Review', 'Related Products', 'City', 'Address', 'Phone Number', 'Fax', 'Your rating is', 'Mobile Money', 'Bank Wire', 'Cash On Delivery', 'Email Address', 'Update Profile', 'Enter Your Email', 'Successfully updated your profile', 'Reviews', 'Full Description', 'Return & Policy', 'Write a Review', 'Remove', 'Image', 'Product Name', 'Edit', 'Quantity', 'Unit Price', 'Sub Total', 'Continue Shopping', 'Proceed Checkout', 'Order Details', 'Billing Details', 'Shipping Cost', 'Order Now', 'Ship To Address', 'Ship to a Different Address?', 'Pick Up', 'Select a PickUp Location', 'Order Notes', 'Transaction ID#', 'Pickup From The Location you Selected', 'BLOG DETAILS', 'Recent Posts', 'Contact', 'Country', 'Select Country', 'Coupon Code', 'Enter Your Coupn Code', 'Apply Coupon', 'Discount', 'Final Total', 'What People Are Saying', 'See How it Works', 'Enter Code', 'Tickets', 'Product Details Page', 'Hot Sale', 'Latest Special', 'Big Save', 'FEATURED PRODUCTS', 'NEW ARRIVAL PRODUCTS', 'SHOP NOW!', 'Week(s)', 'Day(s)', 'Hour(s)', 'Minute(s)', 'Second(s)', 'View Website', 'Wishlists', 'Favorite Product(s)', 'Order(s) Processing !', 'Order(s) Completed !', 'View All', 'All Categories', 'WISHLIST', 'Wishlisted Product', 'OTHERS', 'Color', 'Shop Name', 'Description', 'Linked Accounts', 'Sign In / Up', 'Vendor Registration', 'Shop Name', 'Owner Name', 'Shop Contact Number', 'Shop Address', 'Registration Number', 'Message', 'This Field is Optional', 'SELL', 'Welcome !', 'User Dashboard', 'New Conversations.', 'You Have a New Message.', 'No New Message.', 'Affilate Bonus!', 'Current Balance!', 'Total Item Sold!', 'Total Earnings!', 'Clear All', 'Customer', 'Favorite Sellers', 'Messages', 'Purchased Items', 'Affilate Settings', 'Affilate Withdraw', 'Affilate Code', 'Vendor Products', 'Vendor Orders', 'Withdraw', 'Settings', 'Sliders', 'Shop Description', 'Shipping Cost', 'Social Links', 'Apply For Vendor', 'Availability', 'Add To Wishlist', 'Quick View', 'Compare', 'Product Condition', 'Estimated Shipping Time', 'Watch Video', 'Add To Favorite Seller', 'Contact Seller', 'Phone Number', 'Send Message To Seller', 'Send To', 'New Message', 'Subject', 'Message', 'Send', 'Platform:', 'Region:', 'Type:', 'Login', 'To Comment', 'Favorite', 'Login With Facebook', 'Login With Google', 'You must sign in to purchase Digital Product', 'Tax', 'COMMENT', 'COMMENTS', 'Write Your Comments Here...', 'Write Your Replies Here...', 'Edit', 'Reply', 'Remove', 'Update', 'Edit Your Comment...', 'Edit Your Reply...', 'Product Compare', 'Rating', 'Vendor', 'Description', 'Available', 'Cart', 'NO PRODUCTS TO COMPARE.', 'To Review', 'You can not provide review before purchase', 'View Replies', 'Cancel', 'See More', 'See Less');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int DEFAULT NULL,
  `recieved_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 14, NULL, NULL, NULL, 1, '2023-04-01 13:36:29', '2023-04-01 14:11:14'),
(2, 46, NULL, NULL, NULL, NULL, 0, '2023-04-03 13:51:37', '2023-04-03 13:51:37'),
(3, 47, NULL, NULL, NULL, NULL, 0, '2023-04-03 13:53:16', '2023-04-03 13:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `tax` int NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `tax`, `dp`) VALUES
(39, 14, 'BZh91AY&SYaÐZ\0\nPA@Xÿú¿ïÿô¿ÿÿú`\n\0\0\0\0\0\0\0\0\0\0\r4ÁddÂ¦04É\r\Zi\r4ÈÉM\0a4i\0\Z4Ó2\Zi\0ÂhÓ&\048i¦d4Ó#&\r4Ñ¦L\0 hpÓLÈi¦FL \Zh	£L\0@Ð*HA4M& 2<ý\0§ê¢zLÂÂ&ÐÊw_\\ÿ/±î~ý£í{ÃÍ\0ýìhT)º\Zá=ÅFqûF\"¢ô¢úÒ*ªUùÆÚ*?ÔT^ll\\`b(Ü²,hd0lf`±®¦E\Z®±u72E¦S;e8Ág§ÑdÕJU2W··¿ííà~NV¬Þ\ZzTßêxs/³«vEûò	?Ây!ÑÅêx[ÞwÀå)÷¾ó¼§ ç/­¬äs÷ÄwÎ2|NëÔØqcääWläÕv,÷;3#4´¡HØ´bØÕvfk>&oB#\'C±ËC©DÞâ²4YNÒèÂÕÅW\n¢*3¤X¨¹w)xô5dÃçx9[f±ÎÉdºj*°Þ±¢¢¤²3)Û^%¡æº1¾í0ér5fTWS6I7*Q¼¢Æk¬d\r·Ø³Y³fËËMT¥çÑu.nUÎàí9Ù#E81\"KÂßhÔøØÞÑ¦jSe¹éxJ*\rÅîfv7:ì43ñ)ÚR]DP,v·0î¬à§)\'2¦(n¨Z5/cl>çü¿&Í¦Ïg3ªú®(»¬n0]ÜdÕ¢2Å\"£tb1Ñx´e£8º4ÅÊK°¦mfÊÆJYÛh¾d±© PX¨ÌdLÍ´\\Ó,¤Ð&ÍbâÆ\rKFÃt`¬îLÉx±òdIûjTK¤(¢~e$X¨)\"HÀ´K\n)(¤¡Ih±(Rb½¢Ê*%Au,¢YARñÙ½Ë¯\"K²ÒÖZ-b%Ë^IH\\¤Q©Æ7ï(o1ÁojÍ/$?8©;T`ÐÁÌbFE2â.Ì¹vâ³È¨´n-ÔÁ¢m­ñ¸ÍÌYCfVir±&fó5¡©i77c}hË}×+sMjdYML£cyELØÌ±e¥*ØÙ4fjg¢n47ËF&R¥\'+Èþ[Öb=¯¥üàÉøG9_¼ýÚ;xcÎÑò7?gÈÿ§[ü=­#\'Ðô©Ôó®ÃÄöÀ|ï©Þ|ñëuø÷>KÜøc­ÌæYò:c¸þ¥¤î·\Z</ðº½±ço¼üÍÇÖõ<CE\rÄúÙ*s¼¡3aç¸õÇCsï}NGÉxüÈô?¨§ñ9_î8ôÅ¢ä´b&èÀÞw]$YÖ¹äq9Ôt¤ù\"¡³ôÇ+369LÙÄt,\r£ºázÄ~ã&øõ\rFÑ¼¤P¢¢O¹gäõ:bdÙE£ÅÄâq<îwã¸9ò>¨oK#ª\'¼Qî¢ã©¡Ë©kd¶Q×5K<Ê|®·ddÌÆâb<c~9£ª7Fg%EÈÄhq$Ú*1Vl£<_h¨ll;eÍñ=ÏxSÁò>æ|lÝ üÔNÆÑò¸s½RÎêZ/ÌÉï®K²6dv>ÜñQc¸æ8Ü=â$ûiRU-I\'¡¤v\"xÈn#RHó\'âòFiØÄsÇª7Å£y<ËÅá¢n=M$uÆéG¤Õ¶nu§¢wÓÆ%)ÿÏ®2NIãìûÖtÇå<Ñç:âI£¾³¥ÐNe#­ÐÒ0Øê7´b/&¤Ê1Ø¦UGÐÊ0L¼qh±2E2$ùbÑhþ7´é Ã¸¦ó#hEÚ»k>ãPÚ;å5\'ÍD¨é\'ÆÞr\',eQÂ>têÆ;±c*©UZi>XåfÞ<g¾fP÷Ýçh;ñ-Ñá%:bÆãrÅÎ1õs¾*2ÃCÂÁÃTXpÙ¢Ç=ãtp<ç1ÀÜÍðÉëR¢«ÖTXJEHT***aDQB%TX R*H¤¨ã\ZÉ6\'0êtè ñ\ZÄ±F\"ÅÒq´mó ¢Ñ¨îÆóq£Hz[7ÇmËx¢Ñ¤p320¨ÜMÁ¢o2#ÈÖ7OA?ª7êMß%É:#ÞègD+C¹K¦#s$`ûÛØ¼{îS¾TKÇCrÅãìXßSÔ=±ç=ç­ÐõG¢zdJ)R,X²Z¢ÉÿâîH§\n:BÀ', 'Stripe', 'shipto', NULL, '6', 297.11, 'txn_1DfOJzJlIV5dN9n7rmIjop1f', 'ch_1DfOJzJlIV5dN9n7UZ0Syjoy', 'm01o1544346683', 'Completed', 'junnuns@gmail.com', 'Test', 'Angola', '43534564654645', 'Address', 'Washington', '1321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2018-12-09 09:11:29', '2018-12-09 09:11:29', NULL, NULL, '$', 1, 10, 10, 0),
(40, 13, 'BZh91AY&SY³|¥\0ßP Xwø)OüD¿ÿÿú`}B@A\"¡Ì&0a0`\02i cL`Âa4À\0dÓ@Ç0À	Âi\0É¦a0		Ó\0\0	M OI¡¢mIåHÚ¦i¤MI´ÈdéäÈSÔÍA²G©$É$êGÈþgÀø.X£ä})!q²Á<Ý`÷ÁÉ»@þØ:AOéZZRñ7áL¦KÙ»ä¦TÕîaf¬)5läË§É¥ÝXÌå,\ZMÉ¹ýOÑ»Äv¿É³ÆíáÛ-Ø\"êóÃÒ®ù$xê0{pë(ô¯fÎÓíI>äõ2~§áìQD1Pè£­s$¥!JQc¸¿YQiM¥)H©ü(«KM­,õ6.E\ZDr±&$2,dX7[ 1L²eø\\Ô®ªX¡F,ÕrÃÄÔÌÔÄ5/hT¼j½Ju,õ°Íä0¢]g³F\"/,ÅÖiì©(ÁaÝG\'Y´¤©y¬Ä¦8¶iÁÍÅ°ìlÑFA\n2AÈ£±ÌP²¦L¦[¢¥eÃTÊY0Õ£	IeË0ÕvQLÌ+K¦;Ïh!àx^Qù Å!PÉf*.T¥*QQyfE#Ì¤¨\\!ô!\nVS@$H\"]e×®²Y³¤ñrs9³ÔCôZÐIð<whÁ»3,Î30YÚaS1)ºÓ*6a3äjfÓ&Ìaw¸eÉs\r¦ÍÔ³æ\\QÉÃVÕ»g\'%¦2¥*O××=³Õ0ZxÄ¢|çíÞæMÓrãß=Ï¥Á©\Zj\0à»_GµÚÂàû?ô\'ïu½Í6\Zu]ÃCp>ä6:;¥GÂZh}ç¬ç5YÑ¤\"¤å4p)&Æ\'°1\'2E{Ãzæ<åß;«ÈæçDÔÐèt/%ÊNÉ=?´Ñv\Z,yríÃ3­Àq.7Pñuw¹¸Â26?;gAÿ=Î{\Z)cjô½\'ý|ð°9îGÐsiì\\^`Ì,l3v(®Dpzà!ÚkÔõF-8ýa;Þ°ív6v4\"æbOÖ]=\rNàv\'qJygCÍ>jZryÝÓ½ÌòË©ðR^K#/#¦é Ý»Aâoc*`-Å6)Õ²élÒs\0ÐCLTÅây68}oÜ\')¡ÈÙHí~AÎ\'üðh7i={ò4xNgÔô¥w wC¤¢éÖÃWsc¡ßøÄ4cRP!F1¡ó6!úZ7ÙÉÐú&\'iéOS¢4$HÆ\0ÐAa\Z °b#«j.Áô>`àFÚb´&MÚ(çi¼ó»´ËcË<íÚµÄê´¥LÎ\'y3;¦ãcíM§%\'Üæ;§#aµâRÃaÄx7:ç+ad¼kj-<&²ÒA«#ç=Ññýþ)IJK,±j?ø»)ÂÃå(', 'Cash On Delivery', 'shipto', NULL, '16', 1684.54, NULL, NULL, 'HxZy1548061091', 'Processing', 'user@gmail.com', 'User', 'United States', '1232324353', 'Address', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2019-01-21 08:58:11', '2019-01-21 08:58:57', NULL, NULL, '$', 1, 5, 10, 0),
(41, 16, 'BZh91AY&SY°\0ßP`Xwø)OüD¿ÿÿú`~|\0))HJ¨JÂ`\0&	¦\0\0&9À&\0L&L\0\0&M4s	L\0L&\0\0Lhæ\00M0\0\04Ð0	¥OÐ\Z2e\r4a¡G hÐ*H DÔÐÈd¦éG¦Ôzõ=FC4zª»]Ê|úÀí\n éÔ÷	÷Ä.nn½¬$ö³KOñ*^\'LÝú)VjÉ\rY«\\¬läË©Gè³£¥&ÓBònCïnó¯ÄÙçvðíìHIôyð÷+¾I&g¼u>\'Äz\n=Æíì*GÛIäêñ0hüdñCÒ¢^¡ÑGØÃ	ÁfáP.¨`î=\">¢¥JRS>û%Õ7aÂóàÜ²99*%IQMÕu¥Ju,}ÍÌN²(ÊË4\\°ë4360ZQ©hBT´JP²ÏÔÂÒQ,³n0ÌFfW³­×RQtºîg7)¤ÖRT¼ÑÁ¦;[iÅÑÉ±ó6ÑFa\Z3AÍg ¡eLL·EK4Ë\r©²a«FËaªì¢7VM%´u\0C´í¶)=¤ 0b-!ÃÑ0NéC\0\\)B­DXDJTe^\ZT.¹d³gIæäæsg¨8\"µ´~¦ØhÁv\'[3LÌe£fTÌJl´ÊJlu,ÁçhÈáFp»v\\0ÚlÝK8^eÁe.ËftnËÓR\'åã<§Â`´ð>²>Ròá^¹¡´Ý7.>SâýÈ@Ü6Cpí~ÍFcè~Ï»ü}Gë>éÔùit´êyBxÜz9ï´ÐúÏÕgF=*ÑÀ¤>¦Æ7¤27BEzÃtC¡Üóss¢jht:å\'dÒÚh»\rzßù«&&\rÉÑÄùîuN¹´ÉIL#)ÌØÁtcù¶ê?0ðéÀÄÔÔ8K6¯qîß£ÚõÈæ~F(ÉÉãïm\rð\"¡å@qyEÞ!ÔÌ÷c&Îðmâ{ÁÔìmÚ4ÒYC Ðâ|æ²éíjtyØÅ)ê\\ù©iÉìwN÷3Õ,RR¦CÁIy,L½,J¦Aõ,Î&+ce6S¹´,lgïéÒPàÞdi\"¢¦¹úËãÎdAó	Âj~M©¯à9ÿ]íD)¢Oµäûô=Æîcº%<27<\r¯£MXâ£]XÐÀï¶&cú´q[©à9Ì£÷O\"4$HÆ\0ÐAa\Z °b#¹Ä7°gºÈÀ:ÍÁ¢±í7Çblz§±»V±±8V¢ÉÄâïIfgq3tÜlr³3	´ä¤ðý\ræs6^pb69÷åp8XùÅñ©èTZxMe¥&VGÎ{]£óýþØ)IJK,±j?ø»)Â\rLX', 'Paypal', 'shipto', NULL, '2', 215.38, NULL, NULL, 'e9J41548344273', 'Pending', 'shaoneel@gmail.com', 'Test Name', 'United States', '0000000000', 'Test Address', 'Los Angels', '6600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-24 15:37:53', '2019-01-24 15:37:53', NULL, NULL, '$', 1, 5, 10, 0),
(42, 16, 'BZh91AY&SY±°\0!ßP Xwø)OüD¿ÿÿúP¾Ë¢³6Z44SCb`#LÂ0\0\00¦#SJ=@2\0\0\Z04C !SH hÐ\0i¦d\0\0b`#LÂ0\0\00¤2hL¦2\Z5CÑ14ýP\Z\Zhd\Z=L\ZQâûÞçÁuÖSâðB`]=ñòm±µ`MÌ Ê¹9Ì\"ÌÙÌ´-:TÊ|I¼>!6+YHé~Ì9£´\\°Íù?L÷8~í=9ïpÞ	Sâõ¸¢0zMC4Æp+Æè}q®SÐ°£+Í4µqÌ©I°qu0â¬UTTÑE©¦ìîÉQ©Fj*eloi)/VöK´°mRáTSE­Ö6ÌZWc)Ò+*ëã. D±DV\"JB¢¦4*ei0^^û´1QMlX,¦¥Öhib¹ÍaßÄKàI°ÿ-À@èZty4³´bðÉÃÆ-,(4!^Ívñç`nA)&Ã½¢\ZMÓE6ØÆ¡AMEö¡°h*\0$0i&Ò¿tÆ¢÷-§lÕ­¯\rÐÑ$÷)kèÁædÖ!Ì©ÉEC*6I)àíÞC(fÚN¶\"Ñ>lNGF®F\"juË)1·ÞszØ,ñz§¶CËªíbÒÎf¹í~µ2ªZ¥Ú\0\\Óè1âÓ:£Ç¸È}ª$t°jÚ=-ÕØé¥OrÌ^·±±¶ât6µ±ÔTy­2rb4ÑJ¡Íæ4X;Ý\r6NÉkjåÔo<ú±¾Û·þËL+t¼4\'ìÜ6H		Ìh&jæ,e¿%=M;U5jn¾³÷ôø9¯\Zu2ú:T³lXºTÞº¯å9ªPë$Èàíáüg¡K·;\\®×,´½\Zqijy2\\ïÉ´÷ºçr«k±åK5ö÷8ìv,¢© xÔ¹hÁ¢õËV*(ä¢¦ì\rTÁ0ZJ$%,¬Íª5&ÍÑT¦L\\~KñqT§±Î7jØºS[ÉÕëzÞj¬k7ØÑâÖåça]Æãº:¼éV;õ7}´jSBÒÅêÚµ)iNõÒºÄhÉtÌß×³oÈ1ÞB14Æ4Pª*¤KTRT§CC¢LçÚßJ9bZ2`µ¦øÙfníõf.Çvy2dÔè²á&LÛº<ÄhÚ6§|Szê)¶ö2Ï[R^^c7°ëu°Ü§Ibó\'UK<Y,©ÉáÀø ïð\'E­ijZâîH§\n6³@', 'Paypal', 'shipto', NULL, '1', 110.44, NULL, NULL, '2K6o1548344328', 'Pending', 'shaoneel@gmail.com', 'Test Name', 'United States', '0000000000', 'Test Address', 'Los Angels', '6600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-24 15:38:48', '2019-01-24 15:38:48', NULL, NULL, '$', 1, 5, 10, 0),
(43, 13, 'BZh91AY&SY«]\0!ßP Xwø)OüD¿ÿÿúP¾ËÛ26\n2ÐæÓ0\0\0\0L#$M)õ\ZF\Z\0\0ÓÑ\Z\0I©)£z£`\'¤ÑèÀ\0@9¦&4À#\0\0\0À*ÐM\ny225CÒié4ýP\ZÒ\Z?T¹`3Gð{UQ/7¸ª?h|àÞÅ$bs`fú.9Ì1	g4¤´èj¦{Ñ9´½åñ­M3¶\\QÕ,@Åù¿\\v86ã½Ãx\"cäñrB=FkÇ0hºcFá,Í8Gs|&é0NÜ3È2Q®hÊ8Á#+ð£ÉzÉ0XbÔµi¥\"QY¤G*$F §{@áµX¥°¹	,ci©+~ÍÑ$ª½¡(«Wíb¥É%X­t²b²ôªËKTh`²§B{§¸Ì®þ\0`v(¥Z	µNê©½¥2xosBZÐ¬ªô}Ð.~tÁi\"c\ndPÂå\n¢2¥PaóbÜP`^¤A,Uv`VdD\'ÆÕMgÔ@%ô¼T¨ÝCIªØ¼±I6¦1)°naäêÚ,Lf4­`Ñ0VGc\\¶×W*¿Ñë\\£Åä½±^OrÌÆ*×ãÏ%ó&Î\0 øÅw\0OÁì~ºÎsörKV(Ôb¹±ég¥=­±ä÷(³Öö3_MvGdm+dL?¼TÜÖEì$Èèô®wµ3Ï8ÔÖkkTªMç}ëVëS»þ¾êEËvÊV\'Àé62ag/ É`c¼AøKÉ´ÆY6WIÁÃ{ú|ûýR£K,ÚõS\\p±ÌBf\"æáÙ4^pwp²¼£éJ­ç6*´ÅÉ2u^©ß{YïvGÏ·k¬¨ÓÝÅË7j&ZÅJBåpÈÆÊIé$»Pä9°@B^¥TF1­&HÏd,]¬³É^QÊÉ{!³,ÕD´º·CýoSÑ3i³ì}­-.~ÓÄØq¤«SlÚÜÙ÷IZeTw­&@ÊV¿w_ßÚs¹ F\"0 ,Y	L$b`b0:}McQIÎÅ!zå)á¸ï4`íqÆõñFMT3dÌpG%\Z-S°Q!V^#úÆ#_jüt¹\"QX¬Z7®ìv.ØÒböé<W¨±~«ÃæßàG%)H¤©ø»)ÂZìà', 'Paypal', 'shipto', NULL, '1', 110.44, NULL, NULL, 'L76V1548531839', 'Pending', 'user@gmail.com', 'User', 'United States', '1232324353', 'Address', 'Washington, DC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-01-26 19:43:59', '2019-01-26 19:43:59', NULL, NULL, '$', 1, 5, 10, 0),
(44, 0, 'BZh91AY&SYú|i\01_@\0Pø)Éü¿ÿÿú`_>(	\0(\0\00\0\0\0\Z\0\0\0\00\0\0\0\Z\0\0\0\00\0\0\0\Z\0\0\0\00\0\0\0\Z\0\0\0\0$i\'©#@\Zh\0h@\0©\"!¦)i)å<Òi²G¦RÄEÈ{ö}éþàñP¬aI÷O¦ÒQÿ\n/QÿJZUUn2âè0w»#ß[ªmÓN\r½Þ´örÄ;<<¶åÍ·>GMC¢Â;4hé(óÓ8ëÂ\"ÆOÙã×í<|ÒÓ0Eø;`Ñ-\ZÒªô1]%R1O\r d£`YBRå¼1ËÃ>;c`RpÓFpö6`» ÆÚiÓÑýétXõáÇ,;aH1îº|49#Àz·iWÃ#cÁf[4\"0)Å8iÖVè´èÄ¼ØÌÐ¡F&2.XÄÌÈ¸ÿEËLMÊ]£s<&«*mÃ`4À±´-àXêÜ»-\nC/¡§N^6¬r\rÃ,ÖÒà)ò¾SÖþ©\00©ÓÀ4L[\Z1°()¶0<í4A¨4$m¢- 	IB¬(±4Ð:ÓgÈ9zðªt\"¸òqQ=A­·#ål4Øc!Ý§NÞ\r[ÚaÙÊã{9îÞÃC#æi\r¶òÁÆNÅi\'s¸vycNÜ`öpCòíáÓÝ ÊY$eÔ~ýïï<Ï\"ç¤I=y{Jähø¨äÔùÊlJP¼©¤\nFãîZ~ÅOMVMï¹ú~\'ô}¨\\ô,^:±m7ÉìNò*N×\"æ¦3ç:fÙ(Nc)v´í59¯\räÑ55)\"HÐp\'yà:yy]¡Øê\nÎ\'¾1üCÙpæg-8Í&s	sGRëN&0Êaº}æ3yü(¬\rfâ¢7·91>eI´Ù8KÍÄã;Ï±õ-$ÀÊvNrÍêX¢çq/22&³XzÉíDåJ¥ªNÂ;Dâ©g\Z£¹ÊqO:ÍBÅ¤¼¤e1MO©ï3&ò}[çRT©Ää{²vÂxÙÈ¤¡RÎT.ZIÞc7ÍX1/¡dÿì\nayb^/,u6>/ö¼2D\\¹d\\£tMå¡\ZN¹\'öhENÐòÉyÎæJ\Zs|Ý:KWi=Nóc©TÎTÌ¼æl3ÜJ:INQ?¥p*g7çaÕÊÉÐXÉ:×È¼ÝÒQhyó-4¹º{§ÊyÍ	>%_C@bÀh`b(HZTE\n\nN£s4éÝlöO).¼BÅ¥¡Ý:¬jxNéRÆ2\'Âk3g\r Øé±RÃSkÎô´ÄÀ¦¦Î67¬¥CàO]aÓ8M§AÅ=ëCgã	ÚvN-?E§l©,|ËWäÖdOCÎr\'öAÏÍ\"¥\n---¢Ñþ¹\"(H@}>4', 'Paypal', 'shipto', NULL, '3', 39.63, NULL, NULL, 'WS7D1680353878', 'Pending', 'asdfasdf@gmail.com', 'asdf', 'India', '23142134', 'SDFGASDF', 'Anand', '387001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-04-01 13:27:58', '2023-04-01 13:27:58', NULL, NULL, '₹', 82.18, 410.9, 10, 0),
(45, 14, 'BZh91AY&SYÄ_fg\0äß@\0ø)	ô¿ïÿúP[=¬1,hRÍ¡\r\r\0\r\0\0\0\0@\"=M\'¨\0i Ð)¨zF\0\Z\0\Z\Z\Z\02\Z\0\0\0\0BI	¦jmPÐÊ21\r?SM B&ÊìHz¾Ù¦æ`{!hù¬ú.9ö@ÚÔI#f»zkÑ\Z´½ñLé±µM3ÏÆ\\c2[ÒoºBGQSS3GÐ§µÑd®bb\"4©ZñH$Á4\rÜ H]f,Á%ÂQ|ÕØ1YpL-MnóÎvX°ã]NP0m1S¤C	ÜH)&ã³ÜCc Ê.Xè z÷»ç@ÀìQJ°&Õ9ªN¦öÉày¼R\ZAÌÖeV+FV\r<\"TY\0¹ADSWH±¸GA( $¬K­CJ5s8å2ß]*#)%òÞm$IT^ÚóRÅÁ°åbU°nA­`s©YbpÆqX)ÖLìÏ´3ØÎÙ½´åÌDôß;s9ÑOî³F¬à0;ÎMBò¶¨ÅùWÙ>iLKÉù}§£«lYæ¥¢LW2Ü5¹»#É1õSßÎËÂFÆKñ&rh´bÍRJdn1;,æÜÛ³dnmb~£ ò\rÚr»óÅæI1ÌR¤þçsM0É1¥¢Ípña¹1MöÖrrîu~ð_¥%Oµ5TöÇ¬tBf\"çhãD`r{9^·8S{ÁE*-%ú¿ÞóÃqÞâOsÚõ85÷ógìJIÃ	*²¹HÆU9=dI\n8de!tG½e%nI­oÁM[ÌýÎ3½1,^[ömYØí:§ÑÉ\\}^·Å?ræàÑ£ÂºF¶Üâ{ÙhbQ:ñ[)[V5sðaÉÎ÷IÓ\nHc@(H E03\rÖyÞN*£ÚdÏÓV.öy`Â1ÖÝI\Z5cÑ&ëG¡HXÓ/Iýc2ùØÍ+E¢øî]ÅÅwbRWT°vÌSÅ\\z´ï?H4#I&JªGì]ÉáBC}', 'Paypal', 'shipto', NULL, '2', 8.03, NULL, NULL, 'zIIW1680354563', 'Pending', 'rudra@gmail.com', 'Rudra', 'India', '09998202023', 'Anand', 'asd', '387001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-04-01 13:39:23', '2023-04-01 13:39:23', NULL, NULL, '₹', 82.18, 0, 10, 0),
(46, 0, 'BZh91AY&SYøw\0_@\0Pø)Éü¿ÿÿúPòU	\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0$hÓE=0)°¦ÒmiíI\ZIh%OÕ¤ôDfL OSªÙUúÁú½¨üÃÈ<n<HÞÿíÌmý`õ$Å«iÿÙK3ËÇ*µjÎ\Z0é¦m\'\r»2Ã,LÝrÞwic3´³-JZ94ÓÈÁÙ±·`ÕZo8w\'7BÁÜæe>u(»-/	Â¡©¥aJp´0£ÝHÂ£)RTU¥12ÂòRôpQÒ¤cK.»M¹gè¦¥ ¥\n2´³Ðò<¦ö)Q%*ÛÅL¾É¡Ö]WiãaDºÆNNì0Ê)P©ìç··3,´»©¹Ì¤©¹iSyiÄÔºwft¦Ú³k)µÝ,©)ÑRÍe#ÊY0á¦ËaÂì¢9V®L¯,órSÄ\"ìQ¢&@¥  D\ZhÈH0Kê20±±JRA\r£)uªP¦Þ\'gäÏrQççi\"OÂTÞ\\0rÌá|NiÓ²©i)ÒÓ*mÇ:0tç®K=\r§fZQmm·®vjréK;/2R®éNìåÃN3J¡þ>G¾î->Ù!ú{ç»zÏÞ§Êæ|\'ÚùÝR	u;Ì§ÆQôaïaCOäü¾/åûºFÏ¹¦ÃN¸399x\'Gï?aöJÚõÌ¾ìHôPyN¦ÉÌ÷.1Á¹ÉIE*IOÌ:ËîA`i\rþrñ|ÝØp³Õ·.ÄÚÊzÌ&XLOùOÒndÔ¢ÃF\\àbÁs±õ6t!ìrêb``ëÁào~ïV¹¼ØÞzElíÛÇcL5sPOTG#°]¢èeÞð7P§SÍÊÓÓIb-æ@Ìõo{Ç¤§hnHG{Áõd(Öâv^G\nJTÀp¤¼²=/Üåié¤ÌÌ°YµS¹°Ø¦Å:[8nïlÐÜ©Ê;Êùh©ö,ÓÌn{OÃcò/ Ç3î5[)_3hO¥p³w¾t|Ï¤Å+¸ùaÿÝ§µ=%4ÅÐØØúúÐÐÓxR\\XÈ3ècCÑ°sFË9\\OYÄ¼î3Äö±Éí#BAD`A¢)\'¡¼4u»NÖÐ½hL­Í;4ó=¯blõ×.FÉÔïiJ,N®öfbSiM§É5&3¥\'Ô?M§w)À#a°Þ;[ÆãS4|å\rdJ{Ü­0|ÌÆ@<¤ÒÏDA\Z( ¨Ð~ÅÜN$>¥ÝÀ', 'Cash On Delivery', 'shipto', NULL, '5', 65.59, NULL, NULL, 'YibB1680528096', 'Pending', 'ashdh@gmail.com', 'sadasd', 'India', '102932341', 'sfdaasdf', 'Anand', '387001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-04-03 13:51:36', '2023-04-03 13:51:36', NULL, NULL, '₹', 82.18, 0, 10, 0),
(47, 0, 'BZh91AY&SYøw\0_@\0Pø)Éü¿ÿÿúPòU	\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0$hÓE=0)°¦ÒmiíI\ZIh%OÕ¤ôDfL OSªÙUúÁú½¨üÃÈ<n<HÞÿíÌmý`õ$Å«iÿÙK3ËÇ*µjÎ\Z0é¦m\'\r»2Ã,LÝrÞwic3´³-JZ94ÓÈÁÙ±·`ÕZo8w\'7BÁÜæe>u(»-/	Â¡©¥aJp´0£ÝHÂ£)RTU¥12ÂòRôpQÒ¤cK.»M¹gè¦¥ ¥\n2´³Ðò<¦ö)Q%*ÛÅL¾É¡Ö]WiãaDºÆNNì0Ê)P©ìç··3,´»©¹Ì¤©¹iSyiÄÔºwft¦Ú³k)µÝ,©)ÑRÍe#ÊY0á¦ËaÂì¢9V®L¯,órSÄ\"ìQ¢&@¥  D\ZhÈH0Kê20±±JRA\r£)uªP¦Þ\'gäÏrQççi\"OÂTÞ\\0rÌá|NiÓ²©i)ÒÓ*mÇ:0tç®K=\r§fZQmm·®vjréK;/2R®éNìåÃN3J¡þ>G¾î->Ù!ú{ç»zÏÞ§Êæ|\'ÚùÝR	u;Ì§ÆQôaïaCOäü¾/åûºFÏ¹¦ÃN¸399x\'Gï?aöJÚõÌ¾ìHôPyN¦ÉÌ÷.1Á¹ÉIE*IOÌ:ËîA`i\rþrñ|ÝØp³Õ·.ÄÚÊzÌ&XLOùOÒndÔ¢ÃF\\àbÁs±õ6t!ìrêb``ëÁào~ïV¹¼ØÞzElíÛÇcL5sPOTG#°]¢èeÞð7P§SÍÊÓÓIb-æ@Ìõo{Ç¤§hnHG{Áõd(Öâv^G\nJTÀp¤¼²=/Üåié¤ÌÌ°YµS¹°Ø¦Å:[8nïlÐÜ©Ê;Êùh©ö,ÓÌn{OÃcò/ Ç3î5[)_3hO¥p³w¾t|Ï¤Å+¸ùaÿÝ§µ=%4ÅÐØØúúÐÐÓxR\\XÈ3ècCÑ°sFË9\\OYÄ¼î3Äö±Éí#BAD`A¢)\'¡¼4u»NÖÐ½hL­Í;4ó=¯blõ×.FÉÔïiJ,N®öfbSiM§É5&3¥\'Ô?M§w)À#a°Þ;[ÆãS4|å\rdJ{Ü­0|ÌÆ@<¤ÒÏDA\Z( ¨Ð~ÅÜN$>¥ÝÀ', 'Cash On Delivery', 'shipto', NULL, '5', 65.59, NULL, NULL, 'VDoz1680528196', 'Pending', 'ashdh@gmail.com', 'sadasd', 'India', '102932341', 'sfdaasdf', 'Anand', '387001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-04-03 13:53:16', '2023-04-03 13:53:16', NULL, NULL, '₹', 82.18, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` tinyint NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `text`, `pos`, `meta_tag`, `meta_description`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 2, NULL, NULL),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1</h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as the\"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 3<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 1, NULL, NULL),
(3, 'Service', 'services', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 3, 't,t1,t2,t3,t4', 't has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.'),
(4, 'Test', 'test', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elit est, gravida et dolor vel, sollicitudin facilisis magna. Suspendisse justo erat, interdum a mi eleifend, aliquet commodo odio. Morbi fermentum sapien nisi, convallis vehicula tortor mattis a. Sed sed erat eget lorem porttitor accumsan sed in arcu. Curabitur imperdiet, nisi ac fermentum semper, neque urna tempus odio, quis ultrices felis dolor non ipsum. Nullam quam ligula, imperdiet semper aliquet ut, consectetur eget magna. Etiam interdum massa non odio finibus, ut convallis orci porttitor. Duis eu maximus urna. Praesent dignissim, felis ut congue sagittis, nibh tellus placerat augue, suscipit porttitor enim urna blandit orci. Aliquam vestibulum velit quis tortor maximus posuere. Praesent laoreet, lectus aliquam blandit consectetur, dolor enim venenatis metus, nec sollicitudin eros quam non orci. Vestibulum tempor, diam non convallis molestie, est nibh posuere lacus, et blandit quam mauris eu diam. Suspendisse vitae ante rhoncus, molestie erat et, pulvinar dolor. Donec nec nulla libero. Vivamus lobortis magna eget mi dignissim, sed viverra diam tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Donec in eros viverra nunc congue porta. Integer lacus urna, tristique et imperdiet et, malesuada nec felis. Ut vitae neque sed magna tristique ultricies finibus et nisl. Quisque aliquam tortor erat, id molestie lectus faucibus at. Cras in quam sit amet metus egestas mollis. Ut ligula felis, dapibus ac tortor sed, sodales ultricies nisl. Pellentesque id ipsum nec elit placerat tincidunt sed sit amet magna. Morbi vel odio in enim porta iaculis quis nec magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Curabitur sodales ut lorem vel cursus. Morbi pretium ut mauris non laoreet. Sed a ipsum eu nibh elementum commodo gravida iaculis metus. Ut mollis a magna ut ultrices. Nullam non vestibulum ipsum. Donec in lectus in lacus gravida sagittis. Mauris commodo dictum neque, commodo pulvinar massa vulputate vitae. Aenean eget purus vehicula, convallis elit sit amet, ullamcorper felis. Nulla sed mi porttitor, suscipit ligula in, consequat odio. Duis feugiat nulla sed erat auctor, id cursus sem ullamcorper. Nulla accumsan leo sit amet maximus aliquam. Integer at arcu vehicula massa iaculis hendrerit ac at turpis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Fusce quis sollicitudin nibh. Donec ut pulvinar nulla, nec volutpat ipsum. Duis non consequat nisi, condimentum fermentum quam. Aliquam quis efficitur nisl. Nunc gravida cursus eros in dignissim. Integer ut sodales justo. Mauris eget magna auctor, tristique nulla at, aliquet ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed elementum, nibh eu pharetra placerat, urna mauris congue erat, et tincidunt tortor elit nec elit. Quisque a turpis a ligula cursus dapibus sit amet sit amet metus. Fusce nisl eros, dapibus sed nunc vitae, luctus dapibus risus. Cras at mattis diam.</p>', 0, 'a,a1,a2', 'Integer sit amet erat a tellus facilisis faucibus vitae nec tellus. Nam aliquam diam et dui convallis consequat. Sed viverra finibus fermentum. Donec viverra lacus mauris. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi at ante et ipsum congue consectetur. Pellentesque sit amet nisl urna. Aenean vel sagittis sapien, hendrerit vulputate nisi. Duis rhoncus, neque ac egestas fermentum, ipsum dolor porta metus, ut rutrum sapien orci quis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed viverra, ipsum sit amet maximus elementum, turpis nisi fringilla sapien, eu volutpat sapien augue vitae dolor. Sed auctor, libero et rutrum egestas, neque velit gravida magna, in ultrices orci nibh vel orci. Etiam eget justo suscipit, efficitur dolor vitae, rutrum risus.');

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

DROP TABLE IF EXISTS `pagesettings`;
CREATE TABLE IF NOT EXISTS `pagesettings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_status` tinyint NOT NULL DEFAULT '1',
  `a_status` tinyint NOT NULL DEFAULT '1',
  `f_status` tinyint NOT NULL DEFAULT '1',
  `bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bnimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `about`, `faq`, `c_status`, `a_status`, `f_status`, `bn`, `bnimg`, `is_currency`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@ecommerce.com', 'Drop Us a line', '<div style=\"text-align: justify;\">Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have to be managed to isolate ancient human DNA without turning up a single bone.</div>', '<div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 1<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 2<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 3<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 style=\"box-sizing: border-box; font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">Title number 9<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>', 1, 1, 1, 'https://www.google.com/', '1525536094Banner1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `paid_amount` int NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `process_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `txnid`, `paid_amount`, `payment_status`, `payment_id`, `featured`, `method`, `charge_id`, `process_time`) VALUES
(5, 24, 'txn_1CAM4hJlIV5dN9n7wuIhtbMO', 10, 'Completed', 'Vo1522173546', 'no', 'Stripe', 'ch_1CAM4gJlIV5dN9n74exxkQUJ', '2018-03-27 23:59:10'),
(6, 24, 'txn_1CAM9BJlIV5dN9n7L95Yg4RU', 10, 'Completed', 'wp1522173824', 'yes', 'Stripe', 'ch_1CAM9AJlIV5dN9n7GA4akuVa', '2018-03-28 00:03:48'),
(8, 13, '9V52144530246673F', 10, 'Completed', 'nm1522227283', 'no', 'Paypal', NULL, '2018-03-28 14:54:43'),
(9, 13, '4TL74232C9274030Y', 10, 'Completed', 'YM1522227864', 'yes', 'Paypal', NULL, '2018-03-28 15:04:24'),
(10, 22, 'txn_1CAhOaJlIV5dN9n7SscUvo5B', 20, 'Completed', '6R1522255501', 'yes', 'Stripe', 'ch_1CAhOaJlIV5dN9n740fbr6Rf', '2018-03-28 22:45:08'),
(16, 7, 'txn_1CAipgJlIV5dN9n75bFj2vtM', 10, 'Completed', '1Y1522261025', 'no', 'Stripe', 'ch_1CAipfJlIV5dN9n7OlUy3ugI', '2018-03-29 00:17:12'),
(17, 10, 'txn_1CB5PGJlIV5dN9n7CCj5x5mf', 10, 'Completed', 'cw1522347801', 'yes', 'Stripe', 'ch_1CB5PFJlIV5dN9n7EL0KpPKJ', '2018-03-30 00:23:25'),
(18, 10, 'txn_1CB5VOJlIV5dN9n75O7lhQvU', 10, 'Completed', '1N1522348180', 'yes', 'Stripe', 'ch_1CB5VOJlIV5dN9n7PEuwYLuy', '2018-03-30 00:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE IF NOT EXISTS `payment_gateways` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `title`, `text`, `status`) VALUES
(2, 'Rocket', '<b>Rocket Mobile No: 01728068515<br>Rocket Reference No: 6622</b>', 1),
(3, 'bKash', '<div style=\"text-align: left;\"><b>Mobile Number: 01732716885</b></div><b><div style=\"text-align: left;\"><b>Reference Number: 778899</b></div></b>', 1),
(4, 'QuickCash', '<b>MOBILE NUMBER: 9038423432849</b>', 0),
(5, 'Easy Cash', '<b>Please Call at 98989898989</b>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

DROP TABLE IF EXISTS `pickups`;
CREATE TABLE IF NOT EXISTS `pickups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `client`, `photo`, `review`) VALUES
(3, 'David Smith', '1547893517review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),
(4, 'EBangladesh', '1547893510review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),
(5, 'The Usual Suspects', '1547893504review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit'),
(6, 'Mr. XYZ', '1547893498review-profile.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `subcategory_id` int UNSIGNED DEFAULT NULL,
  `childcategory_id` int UNSIGNED DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cprice` float NOT NULL,
  `pprice` float DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `user_id`, `name`, `photo`, `size`, `color`, `cprice`, `pprice`, `description`, `stock`, `policy`, `status`, `views`, `tags`, `created_at`, `updated_at`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `file`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`) VALUES
(53, 26, NULL, NULL, 0, 'Hybrid Tomato Seed', '1680351880TomatoSeeds.jpg', NULL, NULL, 13.9937, 14.3587, '<br>', 45, '<br>', 1, 8, NULL, '2023-04-01 12:54:40', '2023-04-03 13:51:37', 0, 0, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gram'),
(56, 26, NULL, NULL, 0, '4-Control', '16803523284-control-500x500.png', NULL, NULL, 3.65052, 4.01558, '<br>', 16, '<br>', 1, 7, NULL, '2023-04-01 13:02:08', '2023-04-11 05:02:07', 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 27, NULL, NULL, 0, 'Amistar Syngenta Fungicide', '1680352544Amritsar.png', NULL, NULL, 13.3853, 0, '<br>', NULL, '<br>', 1, 3, NULL, '2023-04-01 13:05:44', '2023-04-01 13:48:54', 0, 0, 0, 1, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 29, NULL, NULL, 0, 'Agrophos - Micronitrient Mixture', '1680352746Agrophos.jpg', NULL, NULL, 10.9516, 11.56, '<br>', NULL, '<br>', 1, 0, NULL, '2023-04-01 13:09:06', '2023-04-11 05:06:37', 0, 0, 1, 0, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

DROP TABLE IF EXISTS `product_clicks`;
CREATE TABLE IF NOT EXISTS `product_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=846 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 29, '2018-09-01'),
(2, 29, '2018-11-18'),
(3, 29, '2018-11-18'),
(8, 29, '2018-11-18'),
(9, 28, '2018-11-18'),
(10, 28, '2018-11-18'),
(15, 30, '2018-11-18'),
(16, 30, '2018-11-18'),
(17, 30, '2018-11-18'),
(18, 30, '2018-11-18'),
(19, 30, '2018-11-18'),
(20, 27, '2018-11-18'),
(22, 29, '2018-11-18'),
(23, 28, '2018-11-18'),
(24, 30, '2018-11-18'),
(25, 30, '2018-11-18'),
(26, 30, '2018-11-18'),
(27, 30, '2018-11-18'),
(28, 21, '2018-11-18'),
(29, 7, '2018-11-18'),
(30, 21, '2018-11-19'),
(31, 1, '2018-11-19'),
(32, 27, '2018-11-19'),
(33, 27, '2018-11-20'),
(34, 22, '2018-11-22'),
(35, 22, '2018-11-22'),
(36, 22, '2018-11-22'),
(46, 27, '2018-11-25'),
(47, 29, '2018-11-25'),
(48, 29, '2018-11-25'),
(49, 29, '2018-11-25'),
(50, 29, '2018-11-25'),
(51, 28, '2018-11-25'),
(52, 28, '2018-11-25'),
(53, 22, '2018-11-25'),
(54, 26, '2018-11-25'),
(55, 29, '2018-11-25'),
(56, 27, '2018-11-25'),
(57, 27, '2018-11-25'),
(58, 27, '2018-11-25'),
(59, 27, '2018-11-25'),
(61, 30, '2018-11-25'),
(62, 13, '2018-11-25'),
(115, 1, '2018-12-08'),
(116, 1, '2018-12-08'),
(118, 29, '2018-12-08'),
(119, 29, '2018-12-08'),
(120, 29, '2018-12-08'),
(121, 29, '2018-12-08'),
(122, 29, '2018-12-08'),
(123, 29, '2018-12-08'),
(138, 30, '2018-12-08'),
(139, 30, '2018-12-08'),
(140, 29, '2018-12-08'),
(141, 30, '2018-12-08'),
(142, 30, '2018-12-08'),
(143, 30, '2018-12-08'),
(144, 30, '2018-12-08'),
(145, 30, '2018-12-08'),
(146, 30, '2018-12-08'),
(147, 30, '2018-12-08'),
(148, 30, '2018-12-08'),
(149, 29, '2018-12-08'),
(151, 29, '2018-12-08'),
(152, 29, '2018-12-08'),
(153, 29, '2018-12-08'),
(154, 29, '2018-12-08'),
(155, 29, '2018-12-08'),
(156, 30, '2018-12-08'),
(157, 30, '2018-12-08'),
(158, 30, '2018-12-08'),
(159, 30, '2018-12-08'),
(160, 30, '2018-12-08'),
(161, 30, '2018-12-08'),
(162, 30, '2018-12-08'),
(163, 30, '2018-12-08'),
(164, 30, '2018-12-08'),
(165, 30, '2018-12-08'),
(166, 30, '2018-12-08'),
(167, 30, '2018-12-08'),
(168, 30, '2018-12-08'),
(169, 30, '2018-12-08'),
(170, 30, '2018-12-08'),
(171, 30, '2018-12-08'),
(172, 30, '2018-12-08'),
(173, 30, '2018-12-08'),
(174, 30, '2018-12-08'),
(175, 30, '2018-12-08'),
(176, 30, '2018-12-08'),
(177, 30, '2018-12-08'),
(178, 30, '2018-12-08'),
(179, 30, '2018-12-08'),
(180, 30, '2018-12-08'),
(181, 30, '2018-12-08'),
(182, 30, '2018-12-08'),
(183, 30, '2018-12-08'),
(184, 30, '2018-12-08'),
(185, 30, '2018-12-08'),
(186, 30, '2018-12-08'),
(187, 30, '2018-12-08'),
(188, 30, '2018-12-08'),
(189, 30, '2018-12-08'),
(190, 30, '2018-12-08'),
(191, 30, '2018-12-08'),
(199, 29, '2018-12-08'),
(200, 29, '2018-12-08'),
(201, 29, '2018-12-08'),
(213, 30, '2018-12-08'),
(214, 30, '2018-12-08'),
(215, 30, '2018-12-08'),
(216, 30, '2018-12-08'),
(217, 29, '2018-12-08'),
(218, 29, '2018-12-08'),
(219, 29, '2018-12-08'),
(220, 30, '2018-12-08'),
(221, 30, '2018-12-08'),
(222, 30, '2018-12-08'),
(223, 30, '2018-12-08'),
(224, 30, '2018-12-08'),
(225, 30, '2018-12-08'),
(226, 30, '2018-12-08'),
(227, 30, '2018-12-08'),
(228, 30, '2018-12-08'),
(229, 30, '2018-12-08'),
(230, 30, '2018-12-08'),
(231, 30, '2018-12-08'),
(232, 30, '2018-12-08'),
(233, 30, '2018-12-08'),
(234, 30, '2018-12-08'),
(235, 30, '2018-12-08'),
(236, 30, '2018-12-08'),
(237, 30, '2018-12-08'),
(238, 30, '2018-12-08'),
(239, 30, '2018-12-08'),
(240, 30, '2018-12-08'),
(241, 30, '2018-12-08'),
(242, 30, '2018-12-08'),
(243, 30, '2018-12-08'),
(244, 30, '2018-12-08'),
(245, 30, '2018-12-08'),
(246, 30, '2018-12-08'),
(247, 30, '2018-12-08'),
(277, 30, '2018-12-09'),
(302, 30, '2018-12-09'),
(303, 30, '2018-12-09'),
(315, 4, '2018-12-19'),
(316, 29, '2018-12-19'),
(317, 29, '2018-12-19'),
(318, 29, '2018-12-19'),
(319, 29, '2018-12-19'),
(320, 29, '2018-12-19'),
(321, 29, '2018-12-19'),
(322, 29, '2018-12-19'),
(323, 29, '2018-12-19'),
(324, 29, '2018-12-19'),
(325, 29, '2018-12-19'),
(326, 29, '2018-12-19'),
(327, 29, '2018-12-19'),
(328, 29, '2018-12-19'),
(329, 29, '2018-12-19'),
(330, 29, '2018-12-19'),
(331, 29, '2018-12-19'),
(332, 29, '2018-12-19'),
(333, 29, '2018-12-19'),
(334, 30, '2018-12-19'),
(335, 30, '2018-12-19'),
(336, 30, '2018-12-19'),
(337, 30, '2018-12-19'),
(338, 30, '2018-12-19'),
(339, 30, '2018-12-19'),
(340, 30, '2018-12-19'),
(341, 30, '2018-12-19'),
(342, 30, '2018-12-19'),
(371, 30, '2018-12-19'),
(372, 30, '2018-12-19'),
(376, 28, '2018-12-19'),
(395, 1, '2018-12-20'),
(396, 1, '2018-12-20'),
(397, 1, '2018-12-20'),
(398, 1, '2018-12-20'),
(399, 1, '2018-12-20'),
(400, 5, '2018-12-20'),
(401, 1, '2018-12-20'),
(402, 1, '2018-12-20'),
(403, 1, '2018-12-20'),
(404, 1, '2018-12-20'),
(828, 53, '2023-04-01'),
(829, 53, '2023-04-01'),
(830, 56, '2023-04-01'),
(831, 57, '2023-04-01'),
(832, 57, '2023-04-01'),
(833, 53, '2023-04-01'),
(834, 53, '2023-04-01'),
(835, 56, '2023-04-01'),
(836, 56, '2023-04-01'),
(837, 56, '2023-04-01'),
(838, 53, '2023-04-01'),
(839, 57, '2023-04-01'),
(840, 56, '2023-04-03'),
(841, 53, '2023-04-03'),
(842, 53, '2023-04-03'),
(843, 53, '2023-04-03'),
(844, 56, '2023-04-11'),
(845, 56, '2023-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `comment_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(3, 14, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sollicitudin erat est, et mollis massa pharetra at. Fusce interdum leo nec faucibus elementum. Nam rutrum justo vel nisl porttitor, tempus convallis ex pellentesque. Nullam gravida velit eu magna dapibus pellentesque. Fusce euismod enim et venenatis ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque efficitur dapibus tortor commodo aliquet.', '2018-12-08 09:18:07', '2018-12-08 09:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint NOT NULL,
  `review_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

DROP TABLE IF EXISTS `seotools`;
CREATE TABLE IF NOT EXISTS `seotools` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keys` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `text`, `photo`) VALUES
(2, 'FREE SHIPPING', 'Free Shipping All Order', '1539837332delivery-van.png'),
(3, 'PAYMENT METHOD', 'Secure Payment', '1539837356checked.png'),
(4, '30 DAY RETURNS', '30-Day Return Policy', '1539837376refresh-button.png'),
(5, 'HELP CENTER', '24/7 Support System', '1539837442customer-support.png');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `photo`, `position`, `title_size`, `title_color`, `title_anime`, `desc_size`, `desc_color`, `desc_anime`) VALUES
(1, 'Not a moment of life is wasted on a farm', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1680273724main-slider-v2-2.jpg', 'slide_style_left', '72', '#bd0954', 'fadeInLeft', '19', '#920000', 'fadeInLeft'),
(2, 'At the very heart of agriculture is the drive to feed the world.', 'ttLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1680273708main-slider-v2-3.jpg', 'slide_style_center', '74', '#bd497a', 'rollIn', '21', '#00c021', 'flipInY'),
(3, 'Farming is intrinsically about sustaining land, family, and community.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry', '1680273464blog-v2-img2.jpg', 'slide_style_right', '72', '#e6cf06', 'flipInX', '19', '#b30000', 'fadeInDown');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

DROP TABLE IF EXISTS `sociallinks`;
CREATE TABLE IF NOT EXISTS `sociallinks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_status` tinyint NOT NULL DEFAULT '1',
  `g_status` tinyint NOT NULL DEFAULT '1',
  `t_status` tinyint NOT NULL DEFAULT '1',
  `l_status` tinyint NOT NULL DEFAULT '1',
  `fcheck` tinyint DEFAULT NULL,
  `gcheck` tinyint DEFAULT NULL,
  `fclient_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fredirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gclient_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gredirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `f_status`, `g_status`, `t_status`, `l_status`, `fcheck`, `gcheck`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/updated/kingfinal/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/updated/kingfinal/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

DROP TABLE IF EXISTS `social_providers`;
CREATE TABLE IF NOT EXISTS `social_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `sub_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(1, 'Basic', '$', 'USD', 0, 30, 1, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>');

-- --------------------------------------------------------

--
-- Table structure for table `sub_replies`
--

DROP TABLE IF EXISTS `sub_replies`;
CREATE TABLE IF NOT EXISTS `sub_replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reply_id` int NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint NOT NULL DEFAULT '0',
  `shop_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint NOT NULL DEFAULT '0',
  `shop_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `f_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_check` tinyint DEFAULT '0',
  `g_check` tinyint DEFAULT '0',
  `t_check` tinyint DEFAULT '0',
  `l_check` tinyint DEFAULT '0',
  `shipping_cost` int NOT NULL DEFAULT '0',
  `current_balance` int NOT NULL DEFAULT '0',
  `affilate_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double DEFAULT '0',
  `date` date DEFAULT NULL,
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `donors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `residency`, `city`, `address`, `phone`, `fax`, `email`, `password`, `created_at`, `updated_at`, `is_provider`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `is_vendor`, `shop_details`, `f_url`, `g_url`, `t_url`, `l_url`, `f_check`, `g_check`, `t_check`, `l_check`, `shipping_cost`, `current_balance`, `affilate_code`, `affilate_income`, `date`, `mail_sent`) VALUES
(13, 'User', '1547699934500x600-size.jpg', '1234', 'Rain', 'Washington, DC', 'Address', '1232324353', '23123121', 'user@gmail.com', '$2y$10$80VuwakMupDVA21UQ37S1.igEVvP7QCP0/nBtuK78nBqkXfz3meZW', '2018-03-07 18:05:44', '2021-10-02 10:46:55', 0, 'Laravel Store', 'Alexander J Curtis', '6434534432423', '39 D/A, Washington DC.', '5345345435', 'Hiiiiii', 1, '<div style=\"text-align: justify;\"><b style=\"font-family: Roboto, sans-serif;\">Lorem</b><span style=\"font-family: Roboto, sans-serif;\"> ipsum dolor sit amet, consectetur adipisicing elit. Error hic unde soluta necessitatibus ad odit, dolores in. Omnis laborum, et nisi!7</span></div>', 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 1, 1, 1, 1, 5, 0, '33899bafa30292165430cb90b545728a', 0, '2021-06-26', 0),
(14, 'Rudra', NULL, NULL, NULL, NULL, 'Anand', '9991212333', NULL, 'rudra@gmail.com', '$2y$10$hF/RSE7.RxqnQOCvILnx2eYBxkXwI5lfnW.s.Z5clJJhY54sk0nRC', '2023-04-01 13:36:05', '2023-04-01 13:36:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, '26c2989ee433aaf02de75c72b0faecaf', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `conversation_id` int NOT NULL DEFAULT '0',
  `conversation1_id` int NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
CREATE TABLE IF NOT EXISTS `user_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 13, 1, 'Basic', '$', 'USD', 0, 30, 1, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, '2019-01-28 16:47:08', '2019-01-28 16:47:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

DROP TABLE IF EXISTS `vendor_orders`;
CREATE TABLE IF NOT EXISTS `vendor_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(1, 13, 40, 5, 477, 'HxZy1548061091', 'processing'),
(2, 13, 40, 11, 1049, 'HxZy1548061091', 'processing'),
(3, 13, 41, 1, 95, 'e9J41548344273', 'pending'),
(4, 13, 41, 1, 95, 'e9J41548344273', 'pending'),
(5, 13, 42, 1, 95, '2K6o1548344328', 'pending'),
(6, 13, 43, 1, 95, 'L76V1548531839', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_sliders`
--

DROP TABLE IF EXISTS `vendor_sliders`;
CREATE TABLE IF NOT EXISTS `vendor_sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_sliders`
--

INSERT INTO `vendor_sliders` (`id`, `user_id`, `photo`) VALUES
(5, 13, '1547892877flower-4.jpg'),
(6, 13, '1547892868flower-3.jpg'),
(7, 13, '1547892861flower-2.jpg'),
(15, 13, '1547892853flower-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `moflix`
--
CREATE DATABASE IF NOT EXISTS `moflix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `moflix`;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `subtitle`, `content`, `status`, `position`) VALUES
(1, 'Header', '(Appears on all pages right under the nav bar)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"https://wicombit.com/demo/banner.jpg\"/>\r\n</a>\r\n</div>', 1, 'header'),
(2, 'Footer', '(Appears on all pages right before the footer)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"https://wicombit.com/demo/banner.jpg\"/>\r\n</a>\r\n</div>', 1, 'footer'),
(3, 'Sidebar', '(Appears on all pages right on left bar)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"https://wicombit.com/demo/sidebar.jpg\"/>\r\n</a>\r\n</div>', 1, 'sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `st_favicon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'favicon.png',
  `st_whitelogo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'whitelogo.png',
  `st_darklogo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'darklogo.png',
  `st_icon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'icon.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`st_favicon`, `st_whitelogo`, `st_darklogo`, `st_icon`) VALUES
('favicon.png', 'whitelogo.png', 'darklogo.png', 'icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `episode_serie` int NOT NULL,
  `episode_title` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_iframe` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `episode_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `episode_status` int NOT NULL,
  `episode_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `episode_image` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `episode_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `genre_slug` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `genre_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_title`, `genre_slug`, `genre_image`) VALUES
(1, 'Horror', 'horror', 'genre_1680267286.jpg'),
(2, 'Action', 'action', 'genre_1679851797.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `menu_header` tinyint(1) NOT NULL DEFAULT '0',
  `menu_footer` tinyint(1) NOT NULL DEFAULT '0',
  `menu_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_header`, `menu_footer`, `menu_sidebar`, `menu_status`) VALUES
(9, 'Header', 1, 1, 0, 1),
(11, 'Sidebar', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_year` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_duration` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_trailer` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `movie_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_iframe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_stars` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `movie_status` int NOT NULL,
  `movie_featured` int NOT NULL,
  `movie_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `movie_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies_favorites`
--

DROP TABLE IF EXISTS `movies_favorites`;
CREATE TABLE IF NOT EXISTS `movies_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

DROP TABLE IF EXISTS `movies_genres`;
CREATE TABLE IF NOT EXISTS `movies_genres` (
  `genre_id` int NOT NULL,
  `movie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`genre_id`, `movie_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies_reviews`
--

DROP TABLE IF EXISTS `movies_reviews`;
CREATE TABLE IF NOT EXISTS `movies_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `navigation_id` int NOT NULL AUTO_INCREMENT,
  `navigation_order` int NOT NULL,
  `navigation_url` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_label` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_target` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `navigation_menu` int NOT NULL,
  PRIMARY KEY (`navigation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigation_id`, `navigation_order`, `navigation_url`, `navigation_label`, `navigation_target`, `navigation_type`, `navigation_menu`) VALUES
(43, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 9),
(44, 2, '4/asd', 'Privacy Policy', '_self', 'page', 9),
(45, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 9),
(48, 2, '4/asd', 'Privacy Policy', '_self', 'page', 11),
(49, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 11),
(50, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_status` int NOT NULL,
  `page_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_layout` int NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_slug` (`page_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_status`, `page_description`, `page_slug`, `page_date`, `page_layout`) VALUES
(2, 'FAQ\'s', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'faq-s', '2020-05-21 15:34:38', 1),
(3, 'Terms & Conditions', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'terms-conditions', '2020-05-21 15:36:36', 0),
(4, 'Privacy Policy', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'asd', '2020-05-21 15:36:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `serie_id` int NOT NULL AUTO_INCREMENT,
  `serie_title` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_year` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_status` int NOT NULL,
  `serie_featured` int NOT NULL,
  `serie_trailer` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_stars` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_slug` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `serie_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`serie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series_favorites`
--

DROP TABLE IF EXISTS `series_favorites`;
CREATE TABLE IF NOT EXISTS `series_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `series_genres`
--

DROP TABLE IF EXISTS `series_genres`;
CREATE TABLE IF NOT EXISTS `series_genres` (
  `genre_id` int NOT NULL,
  `serie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `series_reviews`
--

DROP TABLE IF EXISTS `series_reviews`;
CREATE TABLE IF NOT EXISTS `series_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `st_sitename` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_facebook` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_twitter` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_instagram` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_youtube` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_keywords` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`st_sitename`, `st_facebook`, `st_twitter`, `st_instagram`, `st_youtube`, `st_keywords`, `st_description`) VALUES
('MoFlix - Ultimate PHP Script For Movie & TV Shows', 'https://facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'php movies script,php series script,streaming php script,netflix clon,hbo clone,amazon prime php script,movies download, movies telugu,movies to watch,movies app', 'MoFlix is the most popular website to watch movies and series online for free without the need for registration, enjoy the best content in HD.');

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

DROP TABLE IF EXISTS `smtp`;
CREATE TABLE IF NOT EXISTS `smtp` (
  `st_smtphost` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpemail` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtppassword` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpport` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_smtpencrypt` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`st_smtphost`, `st_smtpemail`, `st_smtppassword`, `st_smtpport`, `st_smtpencrypt`) VALUES
('Google', 'pubgmate9@gmail.com', 'Marmikpatel412', '465', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_duration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_link` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `song_slug` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_artists` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_status` int NOT NULL,
  `song_featured` int NOT NULL,
  `song_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `song_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs_favorites`
--

DROP TABLE IF EXISTS `songs_favorites`;
CREATE TABLE IF NOT EXISTS `songs_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs_genres`
--

DROP TABLE IF EXISTS `songs_genres`;
CREATE TABLE IF NOT EXISTS `songs_genres` (
  `genre_id` int NOT NULL,
  `song_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs_reviews`
--

DROP TABLE IF EXISTS `songs_reviews`;
CREATE TABLE IF NOT EXISTS `songs_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strings`
--

DROP TABLE IF EXISTS `strings`;
CREATE TABLE IF NOT EXISTS `strings` (
  `st_aboutus` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_privacypolicy` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `st_termsofservice` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `strings`
--

INSERT INTO `strings` (`st_aboutus`, `st_privacypolicy`, `st_termsofservice`) VALUES
('<p>About Us</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Privacy Policy</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Terms of Service</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_role` tinyint(1) NOT NULL DEFAULT '2',
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_status`, `user_updated`, `user_created`) VALUES
(1, 'Admin', 'admin@moflix.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 1, '2021-01-10 22:07:51', '2020-04-14 20:33:33'),
(2, 'User', 'user@moflix.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, '2021-01-10 22:08:04', '2021-01-10 22:07:17');
--
-- Database: `playlab`
--
CREATE DATABASE IF NOT EXISTS `playlab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `playlab`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'marmik2004@icloud.com', 'admin', NULL, '6238276ac25d11647847274.png', '$2y$10$6B5syo/ovj5AFBqhn0wy9OKKTkUAKTBv6T39b57o4/QpolG6pVu6a', 'Usf3lfRpyFHWrPJFuEn3NOqo8pG9NLuA3V7Pzd96sGHPCUpIQf61B84O41W6', NULL, '2022-03-28 08:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
CREATE TABLE IF NOT EXISTS `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

DROP TABLE IF EXISTS `advertises`;
CREATE TABLE IF NOT EXISTS `advertises` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `device` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>web, 2=>app',
  `ads_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>popup,2=>section',
  `ads_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `click` int NOT NULL DEFAULT '0',
  `impression` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Action', 1, '2023-05-23 03:48:08', '2023-05-23 03:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `subscription_id` int UNSIGNED NOT NULL DEFAULT '0',
  `method_code` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `method_currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `final_amo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_try` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `admin_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
CREATE TABLE IF NOT EXISTS `device_tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `is_app` tinyint(1) NOT NULL DEFAULT '0',
  `token` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `version` tinyint(1) DEFAULT '0' COMMENT '0 = free, 1 = paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
CREATE TABLE IF NOT EXISTS `extensions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, '2019-10-18 23:16:05', '2022-03-22 05:22:24'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, '2019-10-18 23:16:05', '2022-11-16 05:57:08'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, '2019-10-18 23:16:05', '2022-05-30 05:53:07'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, '2021-05-04 10:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

DROP TABLE IF EXISTS `frontends`;
CREATE TABLE IF NOT EXISTS `frontends` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"PlayLab\",\"Movie\",\"Movie Platform\",\"Video On-Demand Movie Streaming Platform\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"PlayTube - On-Demand Movie Streaming Platform\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"62c6efa21035d1657204642.png\"}', '2020-07-04 23:42:52', '2022-07-07 08:37:22'),
(41, 'cookie.data', '{\"short_desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">What information do we collect?<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">How do we protect your information?<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">All provided delicate\\/credit data is sent through Stripe.<br>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">Do we disclose any information to outside parties?<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">Children\'s Online Privacy Protection Act Compliance<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">Changes to our Privacy Policy<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">How long we retain your information?<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/font><\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">What we don\\u2019t do with your data<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/font><\\/p><\\/div>\",\"status\":1}', '2020-07-04 23:42:52', '2022-07-04 12:48:45'),
(42, 'footer.content', '{\"has_image\":\"1\",\"about_us\":\"Playlab has a broad library of highlight films, narratives, TV shows, anime, and so on! Watch as much as you want, whenever you need it at any time. LabFlix is an American over-the-top content platform streaming service and production company headquartered in Los Gatos, California\",\"subscribe_title\":\"Subscrbe News Letter\",\"background_image\":\"62aad5d5eeb5d1655363029.jpg\"}', '2021-06-06 05:20:03', '2022-06-16 05:33:50'),
(43, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-linkedin\\\"><\\/i>\",\"social_link\":\"https:\\/\\/linkedin.com\"}', '2021-06-06 05:23:13', '2021-06-09 17:25:40'),
(44, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"social_link\":\"www.instagram.com\"}', '2021-06-06 05:23:23', '2021-06-06 05:23:23'),
(45, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"social_link\":\"www.twitter.com\"}', '2021-06-06 05:23:32', '2021-06-06 05:23:32'),
(46, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"social_link\":\"www.facebook.com\"}', '2021-06-06 05:23:45', '2021-06-06 05:23:45'),
(47, 'policy_pages.element', '{\"title\":\"Terms and Condition\",\"description\":\"<h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Overview<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Nullam turpis dolorem, vivamus placerat in donec est, nonummy tristique massa a, dui felis in. Nulla lorem aenean montes varius massula sed, ut at ante, quis velit, at amet amet placerat. Vestibulum in porttitsum eros vel in, imperdiet amet aliquam et purus dictum. In nunc nulla orci. A massa curabitur, etiam iure ulum, blandit ullamcorper, justo at aenean pulvinar. Felis aliquam hac duis et feugiat eu. Duis feugiat volutpat bibendum, eget a nisl est eros, nibh metus placerat faucibus penatibus, natoque diam.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Consent and Information Collection and Use<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Rictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egesttupdebitis, placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaodo audales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor amet peiet feugi nim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna. Porttitor praesent facilisis aliquet.<\\/p><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Eictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna diconpbus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpurgna debplarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor ametperdiet fgiat. Enim lacus eu duisest.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Cookies and Log Files<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Dictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongen pebus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpmagbitis plarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaselsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodoostie dolor amet imperdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;\\\"><li><span style=\\\"color:rgb(151,175,213);\\\">Aras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placat in scelerisque, purus metus est, scelerisque quis purusi<\\/span><\\/li><li><span style=\\\"color:rgb(151,175,213);\\\"><br \\/><\\/span><\\/li><\\/ul><span style=\\\"color:rgb(151,175,213);\\\">Cras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumiulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scesque, purus metus est, scelerisque quis purusi<\\/span><\\/div><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><font color=\\\"#97afd5\\\"><br \\/><\\/font><span style=\\\"color:rgb(151,175,213);\\\">Qras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scelerisque, purus metus est, scelerisque quis purus i<\\/span><br \\/><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Data Security and Retention<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rebiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus m.modo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie doloremrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus tesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Information Form Customer<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rubiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsodo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolemrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pelltesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div>\"}', '2021-06-06 05:29:14', '2021-06-07 09:10:32'),
(48, 'policy_pages.element', '{\"title\":\"Privacy and Policy\",\"description\":\"<h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Overview<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Nullam turpis dolorem, vivamus placerat in donec est, nonummy tristique massa a, dui felis in. Nulla lorem aenean montes varius massula sed, ut at ante, quis velit, at amet amet placerat. Vestibulum in porttitsum eros vel in, imperdiet amet aliquam et purus dictum. In nunc nulla orci. A massa curabitur, etiam iure ulum, blandit ullamcorper, justo at aenean pulvinar. Felis aliquam hac duis et feugiat eu. Duis feugiat volutpat bibendum, eget a nisl est eros, nibh metus placerat faucibus penatibus, natoque diam.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Consent and Information Collection and Use<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Rictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egesttupdebitis, placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaodo audales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor amet peiet feugi nim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna. Porttitor praesent facilisis aliquet.<\\/p><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Eictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna diconpbus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpurgna debplarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor ametperdiet fgiat. Enim lacus eu duisest.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Cookies and Log Files<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Dictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongen pebus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpmagbitis plarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaselsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodoostie dolor amet imperdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;\\\"><li><span style=\\\"color:rgb(151,175,213);\\\">Aras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placat in scelerisque, purus metus est, scelerisque quis purusi<\\/span><\\/li><li><span style=\\\"color:rgb(151,175,213);\\\"><br \\/><\\/span><\\/li><\\/ul><span style=\\\"color:rgb(151,175,213);\\\">Cras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumiulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scesque, purus metus est, scelerisque quis purusi<\\/span><\\/div><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><font color=\\\"#97afd5\\\"><br \\/><\\/font><span style=\\\"color:rgb(151,175,213);\\\">Qras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scelerisque, purus metus est, scelerisque quis purus i<\\/span><br \\/><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Data Security and Retention<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rebiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus m.modo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie doloremrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus tesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Information Form Customer<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rubiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsodo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolemrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pelltesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div>\"}', '2021-06-06 05:29:27', '2021-06-07 09:10:41'),
(49, 'short_links.element', '{\"title\":\"Our Vision\",\"description\":\"<div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;\\\"><h3 class=\\\"title\\\" style=\\\"margin:0px 0px 15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\">Overview<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"color:rgb(33,37,41);font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Nullam turpis dolorem, vivamus placerat in donec est, nonummy tristique massa a, dui felis in. Nulla lorem aenean montes varius massula sed, ut at ante, quis velit, at amet amet placerat. Vestibulum in porttitsum eros vel in, imperdiet amet aliquam et purus dictum. In nunc nulla orci. A massa curabitur, etiam iure ulum, blandit ullamcorper, justo at aenean pulvinar. Felis aliquam hac duis et feugiat eu. Duis feugiat volutpat bibendum, eget a nisl est eros, nibh metus placerat faucibus penatibus, natoque diam.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\">Consent and Information Collection and Use<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"margin-top:25px;color:rgb(33,37,41);font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Rictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egesttupdebitis, placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaodo audales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor amet peiet feugi nim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna. Porttitor praesent facilisis aliquet.<\\/p><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Eictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna diconpbus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpurgna debplarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor ametperdiet fgiat. Enim lacus eu duisest.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\">Cookies and Log Files<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"margin-top:25px;color:rgb(33,37,41);font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Dictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongen pebus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpmagbitis plarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaselsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodoostie dolor amet imperdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;\\\"><li><span style=\\\"color:rgb(151,175,213);\\\">Aras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placat in scelerisque, purus metus est, scelerisque quis purusi<\\/span><\\/li><li><span style=\\\"color:rgb(151,175,213);\\\"><br \\/><\\/span><\\/li><\\/ul><span style=\\\"color:rgb(151,175,213);\\\">Cras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumiulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scesque, purus metus est, scelerisque quis purusi<\\/span><\\/div><div class=\\\"block-content\\\" style=\\\"margin-top:25px;font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><font color=\\\"#97afd5\\\"><br \\/><\\/font><span style=\\\"color:rgb(151,175,213);\\\">Qras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scelerisque, purus metus est, scelerisque quis purus i<\\/span><br \\/><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\">Data Security and Retention<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"margin-top:25px;color:rgb(33,37,41);font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rebiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus m.modo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie doloremrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus tesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\">Information Form Customer<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-family:Poppins, sans-serif;font-weight:600;line-height:1.5;color:rgb(255,255,255);font-size:24px;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"margin-top:25px;color:rgb(33,37,41);font-family:Roboto, sans-serif;font-size:16px;font-weight:400;\\\"><p style=\\\"margin-right:0px;margin-left:0px;font-size:16px;color:rgb(151,175,213);\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rubiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsodo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolemrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pelltesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><\\/div>\"}', '2021-06-06 05:37:50', '2021-06-07 09:09:48'),
(50, 'short_links.element', '{\"title\":\"Our Mission\",\"description\":\"<h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Overview<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Nullam turpis dolorem, vivamus placerat in donec est, nonummy tristique massa a, dui felis in. Nulla lorem aenean montes varius massula sed, ut at ante, quis velit, at amet amet placerat. Vestibulum in porttitsum eros vel in, imperdiet amet aliquam et purus dictum. In nunc nulla orci. A massa curabitur, etiam iure ulum, blandit ullamcorper, justo at aenean pulvinar. Felis aliquam hac duis et feugiat eu. Duis feugiat volutpat bibendum, eget a nisl est eros, nibh metus placerat faucibus penatibus, natoque diam.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Consent and Information Collection and Use<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Rictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egesttupdebitis, placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaodo audales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor amet peiet feugi nim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna. Porttitor praesent facilisis aliquet.<\\/p><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Eictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna diconpbus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpurgna debplarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor ametperdiet fgiat. Enim lacus eu duisest.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Cookies and Log Files<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Dictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongen pebus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpmagbitis plarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaselsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodoostie dolor amet imperdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;\\\"><li><span style=\\\"color:rgb(151,175,213);\\\">Aras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placat in scelerisque, purus metus est, scelerisque quis purusi<\\/span><\\/li><li><span style=\\\"color:rgb(151,175,213);\\\"><br \\/><\\/span><\\/li><\\/ul><span style=\\\"color:rgb(151,175,213);\\\">Cras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumiulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scesque, purus metus est, scelerisque quis purusi<\\/span><\\/div><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><font color=\\\"#97afd5\\\"><br \\/><\\/font><span style=\\\"color:rgb(151,175,213);\\\">Qras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scelerisque, purus metus est, scelerisque quis purus i<\\/span><br \\/><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Data Security and Retention<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rebiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus m.modo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie doloremrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus tesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Information Form Customer<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rubiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsodo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolemrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pelltesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div>\"}', '2021-06-06 05:38:03', '2021-06-07 09:10:15'),
(51, 'short_links.element', '{\"title\":\"About Us\",\"description\":\"<h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Overview<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Nullam turpis dolorem, vivamus placerat in donec est, nonummy tristique massa a, dui felis in. Nulla lorem aenean montes varius massula sed, ut at ante, quis velit, at amet amet placerat. Vestibulum in porttitsum eros vel in, imperdiet amet aliquam et purus dictum. In nunc nulla orci. A massa curabitur, etiam iure ulum, blandit ullamcorper, justo at aenean pulvinar. Felis aliquam hac duis et feugiat eu. Duis feugiat volutpat bibendum, eget a nisl est eros, nibh metus placerat faucibus penatibus, natoque diam.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Consent and Information Collection and Use<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Rictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egesttupdebitis, placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaodo audales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor amet peiet feugi nim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna. Porttitor praesent facilisis aliquet.<\\/p><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Eictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna diconpbus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpurgna debplarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolor ametperdiet fgiat. Enim lacus eu duisest.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Cookies and Log Files<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Dictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongen pebus suspendissjusto, eget adipiscing, eros in donec ligula cursus integer. Accumsan egestas tpmagbitis plarat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phaselsum.coogue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodoostie dolor amet imperdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pellentesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><ul class=\\\"cmn-list\\\" style=\\\"margin-top:20px;\\\"><li><span style=\\\"color:rgb(151,175,213);\\\">Aras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placat in scelerisque, purus metus est, scelerisque quis purusi<\\/span><\\/li><li><span style=\\\"color:rgb(151,175,213);\\\"><br \\/><\\/span><\\/li><\\/ul><span style=\\\"color:rgb(151,175,213);\\\">Cras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumiulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scesque, purus metus est, scelerisque quis purusi<\\/span><\\/div><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><font color=\\\"#97afd5\\\"><br \\/><\\/font><span style=\\\"color:rgb(151,175,213);\\\">Qras mi ac facilisis nec turpis maecenas, curabitur penatibus bibendum nibh nec, lorem integer donec a, risus quis ullamcorper, ante sapien wisi integer. Neque accumsan vestibulum. Vestibulum venenatis sem sit. Mauris eu curabitur eros, turpis elit alias in morbi, ac natoque quis, porttitor amet ut, eu eu aenean aliquam augue vel. Sed placerat in scelerisque, purus metus est, scelerisque quis purus i<\\/span><br \\/><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Data Security and Retention<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dicongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rebiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus m.modo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie doloremrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus tesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\">Information Form Customer<\\/h3><h3 class=\\\"title\\\" style=\\\"margin-bottom:15px;font-weight:600;line-height:1.5;font-size:24px;color:rgb(255,255,255);font-family:Poppins, sans-serif;\\\"><\\/h3><div class=\\\"block-content\\\" style=\\\"font-family:Roboto, sans-serif;margin-top:25px;\\\"><p style=\\\"margin-right:0px;margin-left:0px;color:rgb(151,175,213);font-size:16px;\\\">Aictumst molestie dui nulla bibendum tellus. Purus tincidunt amet pellentesque dis aliquet, urna dtucongue penatibus suspendisjusget adipiscing, eros in donec ligula cursus integer. Accumsan egestas turpis rubiti placerat vestibulum commodo nascetur odio at, tortor dui posuere ornare donec mauris, phasellus ipsodo augue. A sodales venenatis, amet massa fringilla, euismod elit tellus amet. Commodo molestie dolemrdiet feugiat. Enim lacus eu duis est. Risus gravida eget, consequat tortor, felis elit dolor mauris purus pelltesque augue, leo nisl dis vehicula, vehicula magna.<\\/p><\\/div>\"}', '2021-06-06 05:38:30', '2021-06-07 09:10:23'),
(52, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"World\'s Best\",\"sub_heading\":\"MOVIES OF THIS SEASON\",\"button_1\":\"Sign In\",\"button_1_link\":\"user\\/login\",\"button_2\":\"Sign Up\",\"button_2_link\":\"user\\/register\",\"background_image\":\"628a12b93737b1653215929.jpg\"}', '2021-06-06 05:48:22', '2022-05-22 09:10:19'),
(53, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"62aacd8125c1b1655360897.png\"}', '2021-06-07 04:47:16', '2022-06-16 04:58:17'),
(54, 'account.content', '{\"has_image\":\"1\",\"background_image\":\"60bdf05f110db1623060575.jpg\"}', '2021-06-07 09:39:35', '2021-06-07 09:39:35'),
(55, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2022-05-25 10:31:48', '2022-05-25 10:31:48'),
(56, 'social_icon.element', '{\"title\":\"Twitter\",\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\\/\"}', '2022-05-25 10:32:22', '2022-05-25 10:32:22'),
(57, 'social_icon.element', '{\"title\":\"Instagram\",\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/\"}', '2022-05-25 10:33:37', '2022-05-25 10:33:37'),
(58, 'social_icon.element', '{\"title\":\"Linkedin\",\"social_icon\":\"<i class=\\\"lab la-linkedin\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}', '2022-05-25 10:34:07', '2022-05-25 10:34:07'),
(59, 'login.content', '{\"has_image\":\"1\",\"background_image\":\"62920081836521653735553.jpg\"}', '2022-05-28 09:29:13', '2022-05-28 09:29:13'),
(60, 'register.content', '{\"has_image\":\"1\",\"background_image\":\"62920368a68be1653736296.jpg\"}', '2022-05-28 09:41:36', '2022-05-28 09:41:36'),
(61, 'code_verify.content', '{\"has_image\":\"1\",\"background_image\":\"62920e53857211653739091.jpg\"}', '2022-05-28 10:28:11', '2022-05-28 10:28:11'),
(62, 'email_verify.content', '{\"has_image\":\"1\",\"background_image\":\"62920e56dabf91653739094.jpg\"}', '2022-05-28 10:28:14', '2022-05-28 10:28:15'),
(63, 'reset_password_email.content', '{\"has_image\":\"1\",\"background_image\":\"62920e5d5edfb1653739101.jpg\"}', '2022-05-28 10:28:21', '2022-05-28 10:28:21'),
(64, 'sms_verify.content', '{\"has_image\":\"1\",\"background_image\":\"62920e60e3c0c1653739104.jpg\"}', '2022-05-28 10:28:24', '2022-05-28 10:28:25'),
(65, 'reset_password.content', '{\"has_image\":\"1\",\"background_image\":\"6292131bcf52b1653740315.jpg\"}', '2022-05-28 10:48:35', '2022-05-28 10:48:36');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(66, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"text-align: center; font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">Sorry! we are down for maintenance.<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"text-align: center; margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We will be back soon<\\/font><\\/p><\\/div>\"}', NULL, '2022-06-19 11:09:06'),
(67, 'app_welcome.content', '{\"has_image\":\"1\",\"screen_1_heading\":\"Sit laboriosam inc\",\"screen_1_subheading\":\"Elit elit sit exer\",\"screen_2_heading\":\"Doloremque quis saep\",\"screen_2_subheading\":\"Sunt id earum dolor\",\"screen_3_heading\":\"Asperiores fugiat ve\",\"screen_3_subheading\":\"Aspernatur ratione d\",\"background_image\":\"62c567b3dde201657104307.png\"}', '2022-06-07 05:07:07', '2022-07-06 20:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
CREATE TABLE IF NOT EXISTS `gateways` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` int UNSIGNED NOT NULL DEFAULT '0',
  `code` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal', 'Paypal', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 0, 102, 'Perfect Money', 'PerfectMoney', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
(3, 0, 103, 'Stripe Hosted', 'Stripe', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
(4, 0, 104, 'Skrill', 'Skrill', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
(5, 0, 105, 'PayTM', 'Paytm', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
(6, 0, 106, 'Payeer', 'Payeer', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 0, 107, 'PayStack', 'Paystack', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
(8, 0, 108, 'VoguePay', 'Voguepay', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
(9, 0, 109, 'Flutterwave', 'Flutterwave', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
(10, 0, 110, 'RazorPay', 'Razorpay', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 0, 111, 'Stripe Storefront', 'StripeJs', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
(12, 0, 112, 'Instamojo', 'Instamojo', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
(13, 0, 501, 'Blockchain', 'Blockchain', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2022-03-21 07:41:56'),
(15, 0, 503, 'CoinPayments', 'Coinpayments', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2022-05-23 07:51:27'),
(16, 0, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
(17, 0, 505, 'Coingate', 'Coingate', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2022-03-30 09:24:57'),
(18, 0, 506, 'Coinbase Commerce', 'CoinbaseCommerce', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
(24, 0, 113, 'Paypal Express', 'PaypalSdk', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
(25, 0, 114, 'Stripe Checkout', 'StripeV3', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 0, 115, 'Mollie', 'Mollie', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
(30, 0, 116, 'Cashmaal', 'Cashmaal', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, '2021-06-22 08:05:04'),
(36, 0, 119, 'Mercado Pago', 'MercadoPago', 1, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2021-07-17 09:44:29'),
(44, 0, 120, 'Authorize.net', 'Authorize', 1, '{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"3Vee5S2F\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2021-07-17 09:44:29'),
(45, 0, 121, 'NMI', 'NMI', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------\"}}', '{\"AED\":\"AED\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"RUB\":\"RUB\",\"SEC\":\"SEC\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2022-08-28 10:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

DROP TABLE IF EXISTS `gateway_currencies`;
CREATE TABLE IF NOT EXISTS `gateway_currencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int DEFAULT NULL,
  `gateway_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `global_shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kv` tinyint(1) NOT NULL DEFAULT '0',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_cron` datetime DEFAULT NULL,
  `system_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `socialite_credentials` text COLLATE utf8mb4_unicode_ci,
  `wasabi` text COLLATE utf8mb4_unicode_ci,
  `pn` tinyint(1) NOT NULL DEFAULT '0',
  `skip_time` int NOT NULL DEFAULT '0',
  `tmdb_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `multi_language` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_body`, `sms_from`, `base_color`, `secondary_color`, `server`, `mail_config`, `sms_config`, `global_shortcodes`, `kv`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `maintenance_mode`, `secure_password`, `agree`, `registration`, `active_template`, `ftp`, `last_cron`, `system_info`, `socialite_credentials`, `wasabi`, `pn`, `skip_time`, `tmdb_api`, `push_config`, `multi_language`, `created_at`, `updated_at`) VALUES
(1, 'PlayLab', 'USD', '$', 'do-not-reply@viserlab.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">{{site_name}}</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{fullname}} ({{username}}), {{message}}', 'ViserAdmin', 'D50055', '1B1B3F', 'current', '{\"name\":\"php\"}', '{\"name\":\"nexmo\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"------------8888888\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 'basic', '{\"domain\":\"https:\\/\\/yourdomain.com\",\"host\":\"yourhost.com\",\"username\":\"username\",\"password\":\"password\",\"port\":\"port\",\"root\":\"\\/public_html\\/foldername\"}', NULL, '[]', '{\"google\":{\"client_id\":\"----------\",\"client_secret\":\"---------\",\"status\":1},\"facebook\":{\"client_id\":\"----------\",\"client_secret\":\"---------------\",\"status\":1},\"linkedin\":{\"client_id\":\"----------\",\"client_secret\":\"----------\",\"status\":1}}', NULL, 0, 5, 'fb7afc0823aa9e6cf8870d64f524418b', '{\"serverKey\":\"AAAA14oqxFc:APA91bE9uJdrjU_FX3gg_EtCfApRqoNojV71m6J-9yCQC7GoL2pBFcN9pdJjLLQxEAUcNxxatfWKLcnl5qCuLsmpPdr_3QRtH9XzfIu1MrLUJU3dHkBc4CGIkYMM9EWgXCNFjudhhQmH\",\"apiKey\":\"AIzaSyAFa29KVWMFvpvLnYOz_-K4xOqbSx9Ku3g\",\"authDomain\":\"playlab-b6af0.firebaseapp.com\",\"projectId\":\"playlab-b6af0\",\"storageBucket\":\"playlab-b6af0.appspot.com\",\"messagingSenderId\":\"925736027223\",\"appId\":\"1:925736027223:web:a385db1794e61cfc7ecf12\",\"measurementId\":\"G-5NPTB9V12K\"}', 0, NULL, '2023-05-22 21:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
CREATE TABLE IF NOT EXISTS `histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int UNSIGNED NOT NULL DEFAULT '0',
  `episode_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL DEFAULT '0',
  `sub_category_id` int DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `team` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = single item, 2 = Episode Item,3 = trailer',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `version` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = free, 1 = paid, 2 = episode item',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ratings` decimal(5,2) NOT NULL DEFAULT '0.00',
  `view` int NOT NULL DEFAULT '0',
  `is_trailer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2020-07-06 03:47:55', '2022-04-09 03:47:04'),
(5, 'Hindi', 'hn', 0, '2020-12-29 02:20:07', '2022-04-09 03:47:04'),
(9, 'Bangla', 'bn', 0, '2021-03-14 04:37:41', '2022-03-30 12:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `live_televisions`
--

DROP TABLE IF EXISTS `live_televisions`;
CREATE TABLE IF NOT EXISTS `live_televisions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_14_061757_create_support_tickets_table', 3),
(5, '2020_06_14_061837_create_support_messages_table', 3),
(6, '2020_06_14_061904_create_support_attachments_table', 3),
(7, '2020_06_14_062359_create_admins_table', 3),
(8, '2020_06_14_064604_create_transactions_table', 4),
(9, '2020_06_14_065247_create_general_settings_table', 5),
(12, '2014_10_12_100000_create_password_resets_table', 6),
(13, '2020_06_14_060541_create_user_logins_table', 6),
(14, '2020_06_14_071708_create_admin_password_resets_table', 7),
(15, '2020_09_14_053026_create_countries_table', 8),
(16, '2021_03_15_084721_create_admin_notifications_table', 9),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(20, '2016_06_01_000004_create_oauth_clients_table', 10),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(22, '2021_05_08_103925_create_sms_gateways_table', 11),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 12),
(24, '2021_05_23_111859_create_email_logs_table', 13),
(25, '2022_02_26_061836_create_forms_table', 14),
(26, '2022_06_01_175202_create_histories_table', 15),
(27, '2022_06_01_180853_create_wishlists_table', 15),
(28, '2022_06_02_151031_create_live_televisions_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

DROP TABLE IF EXISTS `notification_logs`;
CREATE TABLE IF NOT EXISTS `notification_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notification_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

DROP TABLE IF EXISTS `notification_templates`;
CREATE TABLE IF NOT EXISTS `notification_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `push_notification_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_status` tinyint(1) NOT NULL DEFAULT '1',
  `sms_status` tinyint(1) NOT NULL DEFAULT '1',
  `push_notification_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `push_notification_body`, `shortcodes`, `email_status`, `sms_status`, `push_notification_status`, `created_at`, `updated_at`) VALUES
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '<div>Your deposit of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been completed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#000000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Received : {{method_amount}} {{method_currency}}<br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit successfully by {{method_name}}', NULL, '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-04-03 02:25:43'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Your Deposit is Approved', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>is Approved .<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Admin Approve Your {{amount}} {{site_currency}} payment request by {{method_name}} transaction : {{trx}}', NULL, '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-04-03 02:26:07'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Your Deposit Request is Rejected', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}} has been rejected</span>.<span style=\"font-weight: bolder;\"><br></span></div><div><br></div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge: {{charge}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number was : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">if you have any queries, feel free to contact us.<br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><br><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">{{rejection_message}}</span><br>', 'Admin Rejected Your {{amount}} {{site_currency}} payment request by {{method_name}}\r\n\r\n{{rejection_message}}', NULL, '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-04-05 03:45:27'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>submitted successfully<span style=\"font-weight: bolder;\">&nbsp;.<br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}}<br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit requested by {{method_name}}. Charge: {{charge}} . Trx: {{trx}}', NULL, '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-04-03 02:29:19'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '<div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">{{time}} .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">{{code}}</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div>', 'Your account recovery code is: {{code}}', NULL, '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 0, 0, '2021-11-03 12:00:00', '2022-03-20 20:47:05'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'You have reset your password', '<p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{time}}</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p>', 'Your password has been changed successfully', NULL, '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-04-05 03:46:35'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Reply Support Ticket', '<div><p><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\">A member from our support team has replied to the following ticket:</span></span></p><p><span style=\"font-weight: bolder;\"><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\"><br></span></span></span></p><p><span style=\"font-weight: bolder;\">[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</span></p><p>----------------------------------------------</p><p>Here is the reply :<br></p><p>{{reply}}<br></p></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', 'Your Ticket#{{ticket_id}} :  {{ticket_subject}} has been replied.', NULL, '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 1, 1, 0, '2021-11-03 12:00:00', '2022-03-20 20:47:51'),
(10, 'EVER_CODE', 'Verification - Email', 'Please verify your email address', '<br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;{{code}}</span></font></div></div>', '---', NULL, '{\"code\":\"Email verification code\"}', 1, 0, 0, '2021-11-03 12:00:00', '2022-04-03 02:32:07'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', '---', 'Your phone verification code is: {{code}}', NULL, '{\"code\":\"SMS Verification Code\"}', 0, 1, 0, '2021-11-03 12:00:00', '2022-03-20 19:24:37'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{message}}', '{{message}}', NULL, '{\"subject\":\"Subject\",\"message\":\"Message\"}', 1, 1, 0, '2019-09-14 13:14:22', '2021-11-04 09:38:55'),
(18, 'SUBSCRIBE_PLAN', 'Subscribe Plan', 'Subscribe Plan', '<div><span style=\"color: rgb(33, 37, 41); font-size: 1rem; text-align: var(--bs-body-text-align);\"><b>{{plan}}</b>&nbsp;plan&nbsp;</span>subscribed successfully</div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your plan:<br></span></div><div><br></div><div><div>Plan Name: {{plan}}</div></div><div><span style=\"color: rgb(33, 37, 41);\">Package Duration: {{duration}} Days</span><br></div><div>Price: {{price}} {{site_currency}}</div>', '{{plan}} plan subscribed successfully', NULL, '{\"plan\":\"plan\",\"price\":\"price\",\"duration\":\"duration\"}', 1, 1, 0, NULL, '2022-05-24 04:40:33'),
(19, 'SEND_ITEM_NOTIFICATION', 'Send Item Notification', '{{title}}', '{{title}}', '{{title}}', '{{title}}', '{\"title\":\"Item Title\"}', 0, 0, 1, NULL, '2022-11-15 08:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `duration` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_show` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `plan_id` int NOT NULL DEFAULT '0',
  `expired_date` datetime DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtitles`
--

DROP TABLE IF EXISTS `subtitles`;
CREATE TABLE IF NOT EXISTS `subtitles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL DEFAULT '0',
  `episode_id` int UNSIGNED NOT NULL DEFAULT '0',
  `video_id` int UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

DROP TABLE IF EXISTS `support_attachments`;
CREATE TABLE IF NOT EXISTS `support_attachments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `support_message_id` int UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

DROP TABLE IF EXISTS `support_messages`;
CREATE TABLE IF NOT EXISTS `support_messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `support_ticket_id` int UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int UNSIGNED NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
CREATE TABLE IF NOT EXISTS `support_tickets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `plan_id` int UNSIGNED NOT NULL DEFAULT '0',
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `exp` datetime DEFAULT NULL,
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `episode_id` int DEFAULT '0',
  `item_id` int DEFAULT '0',
  `video_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=video,0=link',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `server` tinyint(1) DEFAULT '0' COMMENT '0 = current server, 1 = other server, 2 = link',
  `ads_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seconds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_advertises`
--

DROP TABLE IF EXISTS `video_advertises`;
CREATE TABLE IF NOT EXISTS `video_advertises` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `content` text,
  `server` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int UNSIGNED NOT NULL DEFAULT '0',
  `episode_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `ppd`
--
CREATE DATABASE IF NOT EXISTS `ppd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ppd`;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_employees`
--

DROP TABLE IF EXISTS `deleted_employees`;
CREATE TABLE IF NOT EXISTS `deleted_employees` (
  `id` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `salary` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deleted_employees`
--

INSERT INTO `deleted_employees` (`id`, `name`, `city`, `salary`) VALUES
(2, 'rishi', 'anand', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `salary` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `city`, `salary`) VALUES
(1, 'marmik', 'dakor', 11000),
(2, 'rishi', 'anand', 120000),
(3, 'jay', 'xyz', 1000),
(4, 'ved', 'xyz', 900),
(5, 'keval', 'abc', 950);

--
-- Triggers `employees`
--
DROP TRIGGER IF EXISTS `before_delete_employee`;
DELIMITER $$
CREATE TRIGGER `before_delete_employee` BEFORE DELETE ON `employees` FOR EACH ROW BEGIN
	Insert into `deleted_employees` (`id`,`name`,`city`,`salary`) VALUES (OLD.id, OLD.name, OLD.city, OLD.salary);
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `designation`, `salary`, `department`) VALUES
('03', 'Rishi', 'CEO', '10000.00', 'I.T'),
('02', 'Ayush', 'COO', '9000.00', 'Computer'),
('01', 'Marmik', 'CEO', '10000.00', 'Computer'),
('04', 'Het', 'COO', '9000.00', 'I.T');

--
-- Triggers `staff`
--
DROP TRIGGER IF EXISTS `update_salary_history`;
DELIMITER $$
CREATE TRIGGER `update_salary_history` AFTER UPDATE ON `staff` FOR EACH ROW BEGIN
  DECLARE salary_difference DECIMAL(10, 2);
  
  IF NEW.salary <> OLD.salary THEN
    SET salary_difference = NEW.salary - OLD.salary;
    
    INSERT INTO staff_history (emp_no, old_salary, new_salary, difference)
    VALUES (OLD.sid, OLD.salary, NEW.salary, salary_difference);
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
CREATE TABLE IF NOT EXISTS `staff_details` (
  `sid` varchar(50) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`sid`, `sname`, `designation`, `salary`, `department`) VALUES
('01', 'marmik', 'ceo', '8000.00', 'computer'),
('02', 'rishi', 'coo', '7999.20', 'IT'),
('03', 'ayush', 'coo', '15000.00', 'Civil');

-- --------------------------------------------------------

--
-- Table structure for table `staff_history`
--

DROP TABLE IF EXISTS `staff_history`;
CREATE TABLE IF NOT EXISTS `staff_history` (
  `emp_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `old_salary` decimal(10,2) DEFAULT NULL,
  `new_salary` decimal(10,2) DEFAULT NULL,
  `difference` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
