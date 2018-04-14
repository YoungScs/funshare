-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2018 at 09:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 NOT NULL,
  `comment_sender_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`, `image`) VALUES
(1, 0, 'hi', 'ss', '2018-04-05 22:57:49', ''),
(2, 0, 'hello', 'a', '2018-04-05 22:58:12', ''),
(3, 0, 'funshare', 'Yang', '2018-04-05 23:07:04', ''),
(4, 0, 'piu~', 'you', '2018-04-05 23:07:31', ''),
(5, 0, 'e', 'ssss', '2018-04-05 23:08:23', ''),
(6, 0, 'jjjjjj', 'w', '2018-04-05 23:09:56', ''),
(7, 6, 'fsdfsf', 'dasddadsasd', '2018-04-05 23:15:17', ''),
(8, 7, '3', 'll', '2018-04-05 23:15:54', ''),
(9, 0, 'hi', 'c', '2018-04-06 03:55:36', ''),
(10, 9, 'hello', 'Yang', '2018-04-06 03:55:56', ''),
(11, 8, 'good afternoon', 'rose', '2018-04-08 22:36:44', ''),
(12, 9, 'good night', 'david', '2018-04-11 03:01:27', ''),
(13, 0, 'halo', 'zhang', '2018-04-11 03:55:23', ''),
(14, 13, 'hhhhhhh', 'y', '2018-04-11 03:55:35', ''),
(15, 0, 'yeah', 'lee', '2018-04-11 05:20:48', ''),
(16, 0, 'hi', 'lee', '2018-04-11 20:35:46', ''),
(17, 16, 'good afternonn', 'lily', '2018-04-11 20:36:00', ''),
(18, 16, 'haloha', 'zhou', '2018-04-13 00:56:30', ''),
(19, 0, 'HI', 'LUCY', '2018-04-13 01:26:16', ''),
(20, 19, 'HALO', 'LILY', '2018-04-13 01:26:27', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
