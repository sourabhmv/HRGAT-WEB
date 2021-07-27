-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 08:14 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `photo_tb`
--

CREATE TABLE `photo_tb` (
  `id` int(11) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo_tb`
--

INSERT INTO `photo_tb` (`id`, `cat`, `image`) VALUES
(1, 'Actors', 'photo/varun.jpg'),
(2, 'Actors', 'photo/mohan.jpg'),
(3, 'Actors', 'photo/prithvi.jpg'),
(4, 'Actors', 'photo/mammooty.jpg'),
(5, 'Actors', 'photo/jayasurya.jpg'),
(8, 'Animal', 'photo/a.jpg'),
(9, 'Animal', 'photo/b.jpg'),
(10, 'Animal', 'photo/c.jpg'),
(11, 'Animal', 'photo/d.jpg'),
(12, 'Animal', 'photo/e.jpg'),
(13, 'Animal', 'photo/f.jpg'),
(14, 'Sports', 'photo/1.jpg'),
(15, 'Sports', 'photo/2.jpg'),
(16, 'Sports', 'photo/3.jpg'),
(17, 'Sports', 'photo/4.jpg'),
(18, 'Sports', 'photo/5.jpg'),
(19, 'Sports', 'photo/6.jpg'),
(20, 'Sports', 'photo/jubin xla 1331.JPG'),
(21, 'Friend', 'photo/4835  sarath.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signup_tb`
--

CREATE TABLE `signup_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup_tb`
--

INSERT INTO `signup_tb` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'jubin', '9744322933', 'getjubinkonline@gmail.com', ''),
(2, 'jubin', '9744322933', 'getjubinkonlin12e@gmail.com', ''),
(3, 'jubin', '9744322933', 'get@gmail.com', ''),
(4, 'jubin', '9744322933', 'getjubinkonline@gmail.com', '34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_tb`
--
ALTER TABLE `photo_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup_tb`
--
ALTER TABLE `signup_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo_tb`
--
ALTER TABLE `photo_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `signup_tb`
--
ALTER TABLE `signup_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
