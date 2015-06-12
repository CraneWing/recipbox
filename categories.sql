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
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Beef'),
(2, 'Pork'),
(3, 'Poultry'),
(4, 'Fish & Seafood'),
(5, 'Vegetarian'),
(6, 'Fruit'),
(7, 'Muffins/Rolls'),
(8, 'Pie'),
(9, 'Bread'),
(10, 'Cake'),
(11, 'Entree'),
(12, 'Side Dish'),
(13, 'Salad'),
(14, 'Dessert'),
(15, 'Appetizer'),
(16, 'Asian'),
(17, 'Latin'),
(18, 'Italian'),
(19, 'Baking'),
(20, 'Breakfast/Brunch'),
(21, 'Luncheon'),
(22, 'Dinner'),
(23, 'Vegetable Dish'),
(24, 'Cookies'),
(25, 'Mixed Drink'),
(26, 'Vegan'),
(27, 'Thanksgiving/Fall'),
(28, 'Christmas'),
(29, 'Soup');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
