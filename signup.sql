-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 07:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `session_tb`
--

CREATE TABLE `session_tb` (
  `session_id` int(11) NOT NULL,
  `session_map` longtext DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_tb`
--

INSERT INTO `session_tb` (`session_id`, `session_map`, `type`) VALUES
(1, 'a:19:{i:1;i:12;i:2;i:98;i:3;i:19;i:4;i:93;i:5;i:57;i:8;i:14;i:9;i:47;i:10;i:36;i:11;i:40;i:12;i:70;i:13;i:32;i:14;i:95;i:15;i:24;i:16;i:61;i:17;i:57;i:18;i:72;i:19;i:47;i:20;i:60;i:21;i:85;}', 0),
(2, 'a:19:{i:1;i:27;i:2;i:11;i:3;i:55;i:4;i:44;i:5;i:18;i:8;i:56;i:9;i:39;i:10;i:82;i:11;i:71;i:12;i:59;i:13;i:74;i:14;i:86;i:15;i:51;i:16;i:15;i:17;i:40;i:18;i:51;i:19;i:95;i:20;i:81;i:21;i:94;}', 1),
(3, 'a:19:{i:1;i:25;i:2;i:61;i:3;i:34;i:4;i:26;i:5;i:54;i:8;i:17;i:9;i:42;i:10;i:92;i:11;i:92;i:12;i:22;i:13;i:17;i:14;i:25;i:15;i:68;i:16;i:77;i:17;i:43;i:18;i:72;i:19;i:67;i:20;i:82;i:21;i:48;}', 1),
(4, 'a:19:{i:1;i:29;i:2;i:30;i:3;i:57;i:4;i:25;i:5;i:10;i:8;i:37;i:9;i:48;i:10;i:76;i:11;i:51;i:12;i:50;i:13;i:37;i:14;i:90;i:15;i:17;i:16;i:17;i:17;i:96;i:18;i:21;i:19;i:37;i:20;i:58;i:21;i:37;}', 1),
(5, 'a:19:{i:1;i:19;i:2;i:14;i:3;i:12;i:4;i:87;i:5;i:47;i:8;i:47;i:9;i:25;i:10;i:92;i:11;i:20;i:12;i:17;i:13;i:18;i:14;i:59;i:15;i:88;i:16;i:96;i:17;i:44;i:18;i:50;i:19;i:32;i:20;i:57;i:21;i:36;}', 0),
(6, 'a:19:{i:1;i:25;i:2;i:92;i:3;i:90;i:4;i:81;i:5;i:43;i:8;i:25;i:9;i:88;i:10;i:66;i:11;i:63;i:12;i:88;i:13;i:97;i:14;i:23;i:15;i:39;i:16;i:68;i:17;i:20;i:18;i:52;i:19;i:54;i:20;i:61;i:21;i:33;}', 0),
(7, 'a:19:{i:1;i:49;i:2;i:98;i:3;i:56;i:4;i:91;i:5;i:59;i:8;i:60;i:9;i:38;i:10;i:57;i:11;i:45;i:12;i:11;i:13;i:50;i:14;i:36;i:15;i:84;i:16;i:42;i:17;i:95;i:18;i:63;i:19;i:80;i:20;i:93;i:21;i:19;}', 0),
(8, 'a:19:{i:1;i:91;i:2;i:42;i:3;i:86;i:4;i:56;i:5;i:54;i:8;i:56;i:9;i:53;i:10;i:83;i:11;i:62;i:12;i:77;i:13;i:69;i:14;i:91;i:15;i:24;i:16;i:48;i:17;i:21;i:18;i:31;i:19;i:67;i:20;i:12;i:21;i:23;}', 0),
(9, 'a:19:{i:1;i:25;i:2;i:94;i:3;i:93;i:4;i:44;i:5;i:99;i:8;i:18;i:9;i:99;i:10;i:18;i:11;i:99;i:12;i:91;i:13;i:79;i:14;i:81;i:15;i:18;i:16;i:87;i:17;i:17;i:18;i:42;i:19;i:90;i:20;i:70;i:21;i:73;}', 0),
(10, 'a:19:{i:1;i:86;i:2;i:11;i:3;i:39;i:4;i:56;i:5;i:81;i:8;i:84;i:9;i:31;i:10;i:83;i:11;i:65;i:12;i:92;i:13;i:75;i:14;i:52;i:15;i:85;i:16;i:63;i:17;i:14;i:18;i:13;i:19;i:99;i:20;i:17;i:21;i:35;}', 0),
(11, 'a:19:{i:1;i:48;i:2;i:11;i:3;i:85;i:4;i:96;i:5;i:74;i:8;i:47;i:9;i:72;i:10;i:59;i:11;i:61;i:12;i:17;i:13;i:93;i:14;i:61;i:15;i:29;i:16;i:79;i:17;i:48;i:18;i:71;i:19;i:88;i:20;i:45;i:21;i:51;}', 0);

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
(5, 'Alea Good', '9447408809', 'ananthu@gmail.com', '123');

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
-- Indexes for table `session_tb`
--
ALTER TABLE `session_tb`
  ADD PRIMARY KEY (`session_id`);

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
-- AUTO_INCREMENT for table `session_tb`
--
ALTER TABLE `session_tb`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signup_tb`
--
ALTER TABLE `signup_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
