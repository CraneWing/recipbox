-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2015 at 01:18 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recipebox_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_recipes`
--

CREATE TABLE IF NOT EXISTS `category_recipes` (
  `category_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_recipes`
--

INSERT INTO `category_recipes` (`category_id`, `recipe_id`) VALUES
(7, 1),
(19, 1),
(10, 2),
(19, 2),
(1, 4),
(2, 4),
(11, 4),
(22, 4),
(9, 5),
(19, 5),
(3, 6),
(11, 6),
(22, 6),
(14, 2),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(11, 8),
(16, 8),
(22, 8),
(5, 8),
(19, 9),
(24, 9),
(1, 10),
(11, 10),
(18, 10),
(22, 10),
(5, 11),
(11, 11),
(18, 11),
(22, 11),
(9, 12),
(19, 12),
(25, 13),
(19, 14),
(20, 14),
(8, 15),
(19, 15),
(27, 15),
(5, 16),
(21, 16),
(22, 16),
(29, 16);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
