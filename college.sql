-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 18, 2022 at 10:21 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `UserName`, `Password`, `Email_id`, `Phone_no`) VALUES
(101, 'Praneeta', '1234', 'praneeta@gmail.com', '7779995540'),
(102, 'Nancy', '1234', 'nancy123@gmail.com', '7778009722');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `User_id` int(10) NOT NULL,
  `User_name` varchar(30) NOT NULL,
  `Res_id` int(10) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Cat_id` int(20) NOT NULL,
  `Cat_name` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery guy`
--

DROP TABLE IF EXISTS `delivery guy`;
CREATE TABLE IF NOT EXISTS `delivery guy` (
  `Delivery_id` int(10) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone no` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Address` varchar(10) NOT NULL,
  PRIMARY KEY (`Delivery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback details`
--

DROP TABLE IF EXISTS `feedback details`;
CREATE TABLE IF NOT EXISTS `feedback details` (
  `Seller_id` int(10) NOT NULL,
  `User_id` int(10) NOT NULL,
  `Comment` varchar(30) NOT NULL,
  `Review star` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `Dish_id` int(10) NOT NULL,
  `Rest_id` int(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Details` varchar(30) NOT NULL,
  `Price` int(10) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Image_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Dish_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order track`
--

DROP TABLE IF EXISTS `order track`;
CREATE TABLE IF NOT EXISTS `order track` (
  `Order_id` int(10) NOT NULL,
  `Track_id` int(10) NOT NULL,
  `User_id` int(10) NOT NULL,
  `Delivery_id` int(10) NOT NULL,
  `Track location` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `Status` varchar(20) NOT NULL,
  `Remark` varchar(20) NOT NULL,
  `Remark_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `Res_id` int(10) NOT NULL,
  `Cat_id` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Phone-no` int(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Url` varchar(30) NOT NULL,
  `Open_hrs` varchar(10) NOT NULL,
  `Close_hrs` varchar(10) NOT NULL,
  `Open days` varchar(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Images` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `Seller_id` int(10) NOT NULL,
  `Res_id` int(10) NOT NULL,
  `User name` varchar(20) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Total_sell` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Cat_id` int(10) NOT NULL,
  PRIMARY KEY (`Seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_id` int(10) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(30) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Image` varchar(256) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `user` (`User_name`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_name`, `F_name`, `L_name`, `Email_id`, `Phone`, `Password`, `Address`, `Image`) VALUES
(201, 'Priya', 'Priya', 'Singh', 'priya123@gmail.com', '6664530032', '1234', 'vesu,surat', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
CREATE TABLE IF NOT EXISTS `user_order` (
  `Order_Id` int(10) NOT NULL,
  `User_Id` int(10) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Track_id` int(10) NOT NULL,
  PRIMARY KEY (`Order_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
