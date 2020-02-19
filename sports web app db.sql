-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2020 at 05:56 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_name`, `image_path`, `order_date`, `user_name`) VALUES
(1, 'mineralwater-blueberry', 'images/mineralwater-blueberry.jpg', '2017-03-07', 'admin'),
(2, 'mineralwater-lemonlime', 'images/mineralwater-lemonlime.jpg', '2017-06-01', 'admin'),
(3, 'mineralwater-blueberry', 'images/mineralwater-blueberry.jpg', '2017-10-23', 'admin'),
(4, 'vitamin-bcomplex.jpg', 'images/vitamin-bcomplex.jpg', '2016-12-02', 'admin'),
(5, 'proteinbar-peanutbutter.jpg', 'images/proteinbar-peanutbutter.jpg', '2015-07-15', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image_path`) VALUES
(1, 'mineralwater-blueberry', 'images/mineralwater-blueberry.jpg'),
(2, 'mineralwater-lemonlime', 'images/mineralwater-lemonlime.jpg'),
(3, 'mineralwater-orange', 'images/mineralwater-orange.jpg'),
(4, 'mineralwater-peach', 'images/mineralwater-peach.jpg'),
(5, 'mineralwater-raspberry', 'images/mineralwater-raspberry.jpg'),
(6, 'mineralwater-strawberry', 'images/mineralwater-strawberry.jpg'),
(7, 'proteinbar-chocolate', 'images/proteinbar-chocolate.jpg'),
(8, 'proteinbar-lemon', 'images/proteinbar-lemon.jpg'),
(9, 'proteinbar-peanutbutter', 'images/proteinbar-peanutbutter.jpg'),
(10, 'vitamin-a', 'images/vitamin-a.jpg'),
(11, 'vitamin-bcomplex', 'images/vitamin-bcomplex.jpg'),
(12, 'vitamin-calcium', 'images/vitamin-c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `first_name`, `last_name`, `age`, `activity`) VALUES
('admin', 'admin', 'admin', 'admin', 23, 'gym'),
('admin1', 'admin1', 'admin1', 'admin1', 32, 'Playing a sport'),
('King', 'klkfldaf', 'Prince', 'Dafe', 84, 'Playing a sport'),
('kingdom', 'king123', 'king', 'queen', 25, 'Exercise in Gym');
