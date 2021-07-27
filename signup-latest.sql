-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 06:24 PM
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
(11, 'a:19:{i:1;i:48;i:2;i:11;i:3;i:85;i:4;i:96;i:5;i:74;i:8;i:47;i:9;i:72;i:10;i:59;i:11;i:61;i:12;i:17;i:13;i:93;i:14;i:61;i:15;i:29;i:16;i:79;i:17;i:48;i:18;i:71;i:19;i:88;i:20;i:45;i:21;i:51;}', 0),
(12, 'a:19:{i:1;i:16;i:2;i:88;i:3;i:29;i:4;i:10;i:5;i:77;i:8;i:18;i:9;i:14;i:10;i:92;i:11;i:33;i:12;i:31;i:13;i:74;i:14;i:75;i:15;i:18;i:16;i:28;i:17;i:81;i:18;i:95;i:19;i:81;i:20;i:26;i:21;i:58;}', 0),
(13, 'a:19:{i:1;i:62;i:2;i:74;i:3;i:25;i:4;i:98;i:5;i:49;i:8;i:70;i:9;i:58;i:10;i:90;i:11;i:46;i:12;i:76;i:13;i:20;i:14;i:69;i:15;i:70;i:16;i:48;i:17;i:47;i:18;i:22;i:19;i:64;i:20;i:22;i:21;i:23;}', 0),
(14, 'a:19:{i:1;i:49;i:2;i:64;i:3;i:42;i:4;i:54;i:5;i:65;i:8;i:85;i:9;i:67;i:10;i:18;i:11;i:11;i:12;i:77;i:13;i:89;i:14;i:17;i:15;i:17;i:16;i:19;i:17;i:68;i:18;i:52;i:19;i:82;i:20;i:88;i:21;i:13;}', 1),
(15, 'a:19:{i:1;i:44;i:2;i:60;i:3;i:64;i:4;i:73;i:5;i:64;i:8;i:94;i:9;i:91;i:10;i:52;i:11;i:20;i:12;i:65;i:13;i:38;i:14;i:34;i:15;i:19;i:16;i:63;i:17;i:24;i:18;i:81;i:19;i:82;i:20;i:16;i:21;i:25;}', 1),
(16, 'a:19:{i:1;i:59;i:2;i:59;i:3;i:55;i:4;i:66;i:5;i:40;i:8;i:39;i:9;i:86;i:10;i:77;i:11;i:31;i:12;i:66;i:13;i:10;i:14;i:29;i:15;i:13;i:16;i:10;i:17;i:42;i:18;i:33;i:19;i:27;i:20;i:11;i:21;i:45;}', 1),
(17, 'a:19:{i:1;i:91;i:2;i:24;i:3;i:97;i:4;i:99;i:5;i:25;i:8;i:83;i:9;i:53;i:10;i:24;i:11;i:10;i:12;i:36;i:13;i:83;i:14;i:67;i:15;i:69;i:16;i:28;i:17;i:40;i:18;i:55;i:19;i:27;i:20;i:48;i:21;i:73;}', 1),
(18, 'a:19:{i:1;i:82;i:2;i:81;i:3;i:53;i:4;i:61;i:5;i:96;i:8;i:99;i:9;i:93;i:10;i:71;i:11;i:20;i:12;i:53;i:13;i:86;i:14;i:83;i:15;i:88;i:16;i:16;i:17;i:17;i:18;i:18;i:19;i:98;i:20;i:80;i:21;i:94;}', 0),
(19, 'a:19:{i:1;i:84;i:2;i:44;i:3;i:71;i:4;i:22;i:5;i:95;i:8;i:18;i:9;i:44;i:10;i:99;i:11;i:32;i:12;i:91;i:13;i:50;i:14;i:44;i:15;i:69;i:16;i:87;i:17;i:30;i:18;i:88;i:19;i:35;i:20;i:26;i:21;i:41;}', 0),
(20, 'a:19:{i:1;i:57;i:2;i:48;i:3;i:10;i:4;i:92;i:5;i:89;i:8;i:68;i:9;i:71;i:10;i:79;i:11;i:72;i:12;i:72;i:13;i:29;i:14;i:33;i:15;i:36;i:16;i:38;i:17;i:34;i:18;i:15;i:19;i:51;i:20;i:39;i:21;i:54;}', 0),
(21, 'a:19:{i:1;i:72;i:2;i:20;i:3;i:16;i:4;i:18;i:5;i:69;i:8;i:25;i:9;i:26;i:10;i:67;i:11;i:71;i:12;i:30;i:13;i:40;i:14;i:56;i:15;i:57;i:16;i:36;i:17;i:55;i:18;i:64;i:19;i:67;i:20;i:27;i:21;i:37;}', 0),
(22, 'a:19:{i:1;i:23;i:2;i:26;i:3;i:44;i:4;i:37;i:5;i:87;i:8;i:20;i:9;i:57;i:10;i:40;i:11;i:16;i:12;i:88;i:13;i:51;i:14;i:27;i:15;i:23;i:16;i:18;i:17;i:17;i:18;i:77;i:19;i:10;i:20;i:46;i:21;i:21;}', 0),
(23, 'a:19:{i:1;i:64;i:2;i:75;i:3;i:33;i:4;i:80;i:5;i:96;i:8;i:89;i:9;i:64;i:10;i:81;i:11;i:10;i:12;i:93;i:13;i:32;i:14;i:75;i:15;i:28;i:16;i:35;i:17;i:66;i:18;i:39;i:19;i:99;i:20;i:58;i:21;i:99;}', 0),
(24, 'a:19:{i:1;i:47;i:2;i:54;i:3;i:38;i:4;i:77;i:5;i:88;i:8;i:77;i:9;i:87;i:10;i:88;i:11;i:63;i:12;i:50;i:13;i:94;i:14;i:37;i:15;i:45;i:16;i:18;i:17;i:14;i:18;i:15;i:19;i:66;i:20;i:27;i:21;i:31;}', 0),
(25, 'a:19:{i:1;i:81;i:2;i:15;i:3;i:44;i:4;i:43;i:5;i:70;i:8;i:60;i:9;i:38;i:10;i:11;i:11;i:48;i:12;i:22;i:13;i:68;i:14;i:20;i:15;i:42;i:16;i:22;i:17;i:37;i:18;i:93;i:19;i:64;i:20;i:29;i:21;i:83;}', 0),
(26, 'a:19:{i:1;i:26;i:2;i:76;i:3;i:56;i:4;i:53;i:5;i:44;i:8;i:32;i:9;i:26;i:10;i:25;i:11;i:48;i:12;i:78;i:13;i:16;i:14;i:59;i:15;i:79;i:16;i:46;i:17;i:68;i:18;i:57;i:19;i:38;i:20;i:57;i:21;i:15;}', 0),
(27, 'a:19:{i:1;i:51;i:2;i:40;i:3;i:63;i:4;i:55;i:5;i:23;i:8;i:34;i:9;i:82;i:10;i:53;i:11;i:13;i:12;i:72;i:13;i:63;i:14;i:17;i:15;i:27;i:16;i:83;i:17;i:95;i:18;i:86;i:19;i:46;i:20;i:20;i:21;i:55;}', 0),
(28, 'a:19:{i:1;i:70;i:2;i:67;i:3;i:84;i:4;i:61;i:5;i:77;i:8;i:53;i:9;i:32;i:10;i:20;i:11;i:75;i:12;i:60;i:13;i:85;i:14;i:64;i:15;i:83;i:16;i:90;i:17;i:15;i:18;i:84;i:19;i:17;i:20;i:90;i:21;i:78;}', 0),
(29, 'a:19:{i:1;i:61;i:2;i:19;i:3;i:19;i:4;i:61;i:5;i:24;i:8;i:24;i:9;i:11;i:10;i:56;i:11;i:71;i:12;i:63;i:13;i:21;i:14;i:91;i:15;i:68;i:16;i:98;i:17;i:57;i:18;i:39;i:19;i:19;i:20;i:70;i:21;i:95;}', 0),
(30, 'a:19:{i:1;i:27;i:2;i:10;i:3;i:81;i:4;i:99;i:5;i:94;i:8;i:57;i:9;i:49;i:10;i:77;i:11;i:62;i:12;i:84;i:13;i:93;i:14;i:49;i:15;i:83;i:16;i:18;i:17;i:19;i:18;i:35;i:19;i:63;i:20;i:73;i:21;i:11;}', 0),
(31, 'a:19:{i:1;i:35;i:2;i:71;i:3;i:22;i:4;i:10;i:5;i:36;i:8;i:53;i:9;i:14;i:10;i:34;i:11;i:32;i:12;i:10;i:13;i:97;i:14;i:15;i:15;i:24;i:16;i:67;i:17;i:38;i:18;i:45;i:19;i:98;i:20;i:84;i:21;i:95;}', 0),
(32, 'a:19:{i:1;i:50;i:2;i:85;i:3;i:63;i:4;i:31;i:5;i:49;i:8;i:14;i:9;i:76;i:10;i:86;i:11;i:95;i:12;i:28;i:13;i:55;i:14;i:34;i:15;i:81;i:16;i:63;i:17;i:74;i:18;i:62;i:19;i:71;i:20;i:48;i:21;i:81;}', 0),
(33, 'a:19:{i:1;i:52;i:2;i:61;i:3;i:37;i:4;i:29;i:5;i:50;i:8;i:90;i:9;i:41;i:10;i:91;i:11;i:45;i:12;i:98;i:13;i:39;i:14;i:89;i:15;i:98;i:16;i:30;i:17;i:27;i:18;i:14;i:19;i:30;i:20;i:28;i:21;i:46;}', 0),
(34, 'a:19:{i:1;i:22;i:2;i:23;i:3;i:57;i:4;i:79;i:5;i:83;i:8;i:48;i:9;i:44;i:10;i:81;i:11;i:72;i:12;i:35;i:13;i:46;i:14;i:89;i:15;i:20;i:16;i:77;i:17;i:85;i:18;i:84;i:19;i:82;i:20;i:67;i:21;i:31;}', 0),
(35, 'a:19:{i:1;i:48;i:2;i:92;i:3;i:34;i:4;i:85;i:5;i:83;i:8;i:62;i:9;i:71;i:10;i:72;i:11;i:65;i:12;i:22;i:13;i:71;i:14;i:64;i:15;i:95;i:16;i:86;i:17;i:70;i:18;i:35;i:19;i:14;i:20;i:98;i:21;i:35;}', 0),
(36, 'a:19:{i:1;i:39;i:2;i:59;i:3;i:46;i:4;i:25;i:5;i:74;i:8;i:74;i:9;i:16;i:10;i:65;i:11;i:19;i:12;i:87;i:13;i:38;i:14;i:30;i:15;i:40;i:16;i:85;i:17;i:46;i:18;i:26;i:19;i:73;i:20;i:67;i:21;i:81;}', 0),
(37, 'a:19:{i:1;i:20;i:2;i:36;i:3;i:64;i:4;i:51;i:5;i:86;i:8;i:85;i:9;i:27;i:10;i:64;i:11;i:75;i:12;i:69;i:13;i:48;i:14;i:68;i:15;i:79;i:16;i:97;i:17;i:35;i:18;i:93;i:19;i:41;i:20;i:46;i:21;i:31;}', 0),
(38, 'a:19:{i:1;i:70;i:2;i:55;i:3;i:11;i:4;i:72;i:5;i:47;i:8;i:82;i:9;i:31;i:10;i:24;i:11;i:14;i:12;i:50;i:13;i:95;i:14;i:40;i:15;i:23;i:16;i:76;i:17;i:18;i:18;i:45;i:19;i:81;i:20;i:82;i:21;i:25;}', 0),
(39, 'a:19:{i:1;i:76;i:2;i:74;i:3;i:34;i:4;i:83;i:5;i:82;i:8;i:51;i:9;i:31;i:10;i:53;i:11;i:96;i:12;i:10;i:13;i:97;i:14;i:51;i:15;i:39;i:16;i:39;i:17;i:52;i:18;i:18;i:19;i:43;i:20;i:73;i:21;i:35;}', 0),
(40, 'a:19:{i:1;i:12;i:2;i:23;i:3;i:98;i:4;i:93;i:5;i:54;i:8;i:32;i:9;i:39;i:10;i:56;i:11;i:76;i:12;i:38;i:13;i:46;i:14;i:91;i:15;i:37;i:16;i:12;i:17;i:28;i:18;i:97;i:19;i:32;i:20;i:67;i:21;i:16;}', 0),
(41, 'a:19:{i:1;i:72;i:2;i:72;i:3;i:70;i:4;i:52;i:5;i:60;i:8;i:79;i:9;i:58;i:10;i:75;i:11;i:93;i:12;i:33;i:13;i:40;i:14;i:36;i:15;i:90;i:16;i:71;i:17;i:73;i:18;i:27;i:19;i:23;i:20;i:27;i:21;i:25;}', 0),
(42, 'a:19:{i:1;i:96;i:2;i:39;i:3;i:52;i:4;i:22;i:5;i:36;i:8;i:59;i:9;i:10;i:10;i:32;i:11;i:70;i:12;i:14;i:13;i:90;i:14;i:46;i:15;i:29;i:16;i:21;i:17;i:16;i:18;i:51;i:19;i:41;i:20;i:84;i:21;i:17;}', 0),
(43, 'a:19:{i:1;i:53;i:2;i:67;i:3;i:85;i:4;i:58;i:5;i:23;i:8;i:37;i:9;i:53;i:10;i:92;i:11;i:57;i:12;i:53;i:13;i:83;i:14;i:42;i:15;i:58;i:16;i:17;i:17;i:95;i:18;i:94;i:19;i:23;i:20;i:97;i:21;i:29;}', 0),
(44, 'a:19:{i:1;i:65;i:2;i:10;i:3;i:69;i:4;i:49;i:5;i:12;i:8;i:34;i:9;i:53;i:10;i:78;i:11;i:65;i:12;i:92;i:13;i:42;i:14;i:17;i:15;i:69;i:16;i:88;i:17;i:93;i:18;i:83;i:19;i:65;i:20;i:94;i:21;i:60;}', 0),
(45, 'a:19:{i:1;i:33;i:2;i:96;i:3;i:22;i:4;i:62;i:5;i:31;i:8;i:16;i:9;i:23;i:10;i:13;i:11;i:62;i:12;i:23;i:13;i:96;i:14;i:72;i:15;i:26;i:16;i:95;i:17;i:12;i:18;i:66;i:19;i:39;i:20;i:23;i:21;i:98;}', 0),
(46, 'a:19:{i:1;i:50;i:2;i:54;i:3;i:98;i:4;i:53;i:5;i:93;i:8;i:90;i:9;i:82;i:10;i:11;i:11;i:86;i:12;i:62;i:13;i:86;i:14;i:77;i:15;i:84;i:16;i:54;i:17;i:12;i:18;i:36;i:19;i:88;i:20;i:55;i:21;i:44;}', 0),
(47, 'a:19:{i:1;i:41;i:2;i:17;i:3;i:22;i:4;i:28;i:5;i:26;i:8;i:66;i:9;i:78;i:10;i:41;i:11;i:62;i:12;i:58;i:13;i:62;i:14;i:56;i:15;i:43;i:16;i:81;i:17;i:38;i:18;i:47;i:19;i:41;i:20;i:80;i:21;i:69;}', 0),
(48, 'a:19:{i:1;i:90;i:2;i:17;i:3;i:36;i:4;i:88;i:5;i:48;i:8;i:76;i:9;i:26;i:10;i:81;i:11;i:38;i:12;i:13;i:13;i:22;i:14;i:36;i:15;i:13;i:16;i:48;i:17;i:97;i:18;i:28;i:19;i:76;i:20;i:66;i:21;i:76;}', 0),
(49, 'a:19:{i:1;i:27;i:2;i:58;i:3;i:70;i:4;i:72;i:5;i:78;i:8;i:23;i:9;i:69;i:10;i:23;i:11;i:12;i:12;i:21;i:13;i:54;i:14;i:83;i:15;i:68;i:16;i:56;i:17;i:77;i:18;i:88;i:19;i:88;i:20;i:35;i:21;i:72;}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `signup_tb`
--

CREATE TABLE `signup_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup_tb`
--

INSERT INTO `signup_tb` (`id`, `name`, `phone`, `email`, `password`, `otp`, `otp_created_at`) VALUES
(5, 'Alea Good', '9447408809', 'ananthu@test.com', '543', NULL, NULL),
(6, 'Wilma Hurley', '9447408809', 'rakuka@mailinator.com', '124', NULL, NULL);

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
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `signup_tb`
--
ALTER TABLE `signup_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
