-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 30, 2020 at 06:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mismatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `mismatch_user`
--

DROP TABLE IF EXISTS `mismatch_user`;
CREATE TABLE IF NOT EXISTS `mismatch_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mismatch_user`
--

INSERT INTO `mismatch_user` (`id`, `username`, `password`, `joined`, `first_name`, `last_name`, `gender`, `birth_date`, `city`, `state`, `picture`) VALUES
(1, 'jnettles', 'tatlover', '2020-06-25 11:52:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'jnettles', '7936ee10da1d33b1d22d03a3cc41433f6c28c0c4', '2020-06-25 11:54:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'peter', '474ba67bdb289c6263b36dfd8a7bed6c85b04943', '2020-06-25 12:22:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'paul', 'a51dda7c7ff50b61eaea0444371f4a6a9301e501', '2020-06-25 12:22:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'tom', '96835dd8bfa718bd6447ccc87af89ae1675daeca', '2020-06-30 14:41:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
