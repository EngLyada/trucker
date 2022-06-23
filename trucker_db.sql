-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2022 at 05:14 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u829526653_trucker`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(9) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `name`, `type`) VALUES
(1, 'Drugs', 'car'),
(4, 'FP Contraceptives ', 'car'),
(5, 'Pain Killers', 'car');

-- --------------------------------------------------------

--
-- Table structure for table `my_log`
--

CREATE TABLE `my_log` (
  `log_id` int(11) NOT NULL,
  `remote_addr` varchar(255) NOT NULL DEFAULT '',
  `request_uri` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL DEFAULT current_timestamp(),
  `mytime` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_log`
--

INSERT INTO `my_log` (`log_id`, `remote_addr`, `request_uri`, `message`, `log_date`, `mytime`) VALUES
(1, '127.0.0.1', '/tuzimbe/loginck.php', 'SALESPOINT', '2021-07-19 13:56:15', '1:56 pm'),
(2, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-20 10:17:45', '10:17 am'),
(3, '127.0.0.1', '/tuzimbe/loginck.php', 'SALESPOINT', '2021-07-20 12:33:26', '12:33 pm'),
(4, '::1', '/tuzimbe/loginck.php', 'SALESPOINT', '2017-11-01 23:36:33', '9:36 am'),
(5, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2017-11-02 00:02:05', '10:02 am'),
(6, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-20 15:12:15', '1:12 am'),
(7, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-20 16:21:19', '2:21 am'),
(8, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-20 16:27:34', '2:27 am'),
(9, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-20 16:57:14', '2:57 am'),
(10, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-20 17:02:11', '3:02 am'),
(11, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 19:50:10', '5:50 am'),
(12, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 20:01:15', '6:01 am'),
(13, '::1', '/tuzimbe/loginck.php', 'system', '2021-07-21 20:31:02', '6:31 am'),
(14, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 20:41:21', '6:41 am'),
(15, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 21:04:56', '7:04 am'),
(16, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-21 13:41:59', '11:41 pm'),
(17, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 04:43:33', '2:43 pm'),
(18, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-21 06:54:08', '4:54 pm'),
(19, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-21 07:07:47', '5:07 pm'),
(20, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-22 05:38:31', '3:38 pm'),
(21, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-22 05:40:44', '3:40 pm'),
(22, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-22 18:17:36', '6:17 pm'),
(23, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 23:34:28', '11:34 pm'),
(24, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 23:22:00', '11:22 pm'),
(25, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 23:23:48', '11:23 pm'),
(26, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 23:38:16', '11:38 pm'),
(27, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 23:33:56', '11:33 pm'),
(28, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-24 00:01:47', '12:01 am'),
(29, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-24 02:25:01', '2:25 am'),
(30, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-26 04:39:52', '4:39 am'),
(31, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-26 09:05:33', '9:05 am'),
(32, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-30 03:04:01', '3:04 am'),
(33, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-30 03:05:32', '3:05 am'),
(34, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-30 03:23:05', '3:23 am'),
(35, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-24 03:25:00', '3:25 am'),
(36, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-24 18:29:51', '6:29 pm'),
(37, '::1', '/tuzimbe/loginck.php', 'SYSTEM', '2021-07-24 18:34:35', '6:34 pm'),
(38, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-30 16:00:51', '4:00 pm'),
(39, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-31 08:21:57', '8:21 am'),
(40, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-07-31 09:24:30', '9:24 am'),
(41, '::1', '/tuzimbe/loginck.php', 'system', '2021-08-23 13:53:08', '11:53 pm'),
(42, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-23 14:38:06', '12:38 am'),
(43, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-23 04:08:30', '2:08 pm'),
(44, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-23 23:15:27', '9:15 am'),
(45, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 21:02:08', '7:02 am'),
(46, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 16:27:13', '2:27 am'),
(47, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 16:38:32', '2:38 am'),
(48, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-01 15:06:43', '1:06 am'),
(49, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 17:18:22', '3:18 am'),
(50, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 05:21:32', '3:21 pm'),
(51, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-25 05:22:04', '3:22 pm'),
(52, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-26 06:27:34', '4:27 pm'),
(53, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-27 07:12:25', '5:12 pm'),
(54, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-28 03:08:49', '1:08 pm'),
(55, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-28 04:01:31', '2:01 pm'),
(56, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-30 04:14:57', '2:14 pm'),
(57, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-31 00:31:55', '10:31 am'),
(58, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-31 02:30:15', '12:30 pm'),
(59, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-01 03:12:26', '1:12 pm'),
(60, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-01 04:20:07', '2:20 pm'),
(61, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-01 04:20:34', '2:20 pm'),
(62, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-04 00:23:42', '10:23 am'),
(63, '192.168.43.113', '/tuzimbe/loginck.php', 'system', '2021-09-04 00:37:08', '10:37 am'),
(64, '192.168.43.113', '/tuzimbe/loginck.php', 'salespoint', '2021-09-04 01:12:13', '11:12 am'),
(65, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-04 01:15:25', '11:15 am'),
(66, '192.168.43.113', '/tuzimbe/loginck.php', 'salespoint', '2021-09-04 02:04:19', '12:04 pm'),
(67, '192.168.43.113', '/tuzimbe/loginck.php', 'system', '2021-09-04 02:21:53', '12:21 pm'),
(68, '::1', '/tuzimbe/loginck.php', 'system', '2021-09-04 04:01:02', '2:01 pm'),
(69, '::1', '/tuzimbe/loginck.php', 'system', '2021-09-04 05:48:07', '3:48 pm'),
(70, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-04 06:18:30', '4:18 pm'),
(71, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 00:38:38', '10:38 am'),
(72, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-06 11:01:02', '9:01 pm'),
(73, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 12:55:29', '10:55 pm'),
(74, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-07 01:15:43', '11:15 am'),
(75, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 02:18:42', '12:18 pm'),
(76, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 02:42:41', '12:42 pm'),
(77, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-06 03:08:47', '1:08 pm'),
(78, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 03:32:07', '1:32 pm'),
(79, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-06 03:50:30', '1:50 pm'),
(80, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-06 05:26:27', '3:26 pm'),
(81, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-07 03:42:06', '1:42 pm'),
(82, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-07 04:37:27', '2:37 pm'),
(83, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-07 04:04:07', '2:04 pm'),
(84, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-07 05:15:35', '3:15 pm'),
(85, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-07 06:21:16', '4:21 pm'),
(86, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-07 06:30:38', '4:30 pm'),
(87, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-07 06:37:27', '4:37 pm'),
(88, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-07 06:39:55', '4:39 pm'),
(89, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-07 06:51:46', '4:51 pm'),
(90, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-07 07:57:46', '5:57 pm'),
(91, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-08 07:01:15', '5:01 pm'),
(92, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-08 02:02:36', '12:02 pm'),
(93, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-08 02:33:44', '12:33 pm'),
(94, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-09 05:03:21', '3:03 pm'),
(95, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-10 02:13:21', '12:13 pm'),
(96, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-09 04:11:13', '2:11 pm'),
(97, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-10 03:01:27', '1:01 pm'),
(98, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-11 03:25:55', '1:25 pm'),
(99, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-13 03:31:42', '1:31 pm'),
(100, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-13 21:08:54', '7:08 am'),
(101, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-13 21:11:54', '7:11 am'),
(102, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-13 10:35:07', '8:35 pm'),
(103, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-14 02:34:01', '12:34 pm'),
(104, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-14 02:44:21', '12:44 pm'),
(105, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-14 02:53:21', '12:53 pm'),
(106, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-15 02:59:41', '12:59 pm'),
(107, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint ', '2021-09-15 03:43:26', '1:43 pm'),
(108, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-14 03:44:24', '1:44 pm'),
(109, '::1', '/tuzimbe/loginck.php', 'system', '2021-09-14 05:07:58', '3:07 pm'),
(110, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-16 01:01:34', '11:01 am'),
(111, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-16 01:44:50', '11:44 am'),
(112, '::1', '/tuzimbe2/loginck.php', 'system', '2021-09-16 02:08:58', '12:08 pm'),
(113, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-16 02:09:54', '12:09 pm'),
(114, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-16 23:45:39', '9:45 am'),
(115, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-16 10:14:31', '8:14 pm'),
(116, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-16 13:20:48', '11:20 pm'),
(117, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-16 14:07:14', '12:07 am'),
(118, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-17 03:22:01', '1:22 pm'),
(119, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-20 00:28:33', '10:28 am'),
(120, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-20 01:40:42', '11:40 am'),
(121, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-20 01:57:46', '11:57 am'),
(122, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-20 02:16:01', '12:16 pm'),
(123, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-20 23:23:40', '9:23 am'),
(124, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-21 02:08:03', '12:08 pm'),
(125, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-21 02:10:38', '12:10 pm'),
(126, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-21 02:13:14', '12:13 pm'),
(127, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-21 02:54:23', '12:54 pm'),
(128, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-22 02:25:09', '12:25 pm'),
(129, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-22 04:31:12', '2:31 pm'),
(130, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-22 04:56:54', '2:56 pm'),
(131, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-22 02:11:17', '12:11 pm'),
(132, '127.0.0.1', '/tuzimbe/loginck.php', 'Salespoint', '2021-09-23 01:30:07', '11:30 am'),
(133, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-23 03:42:32', '1:42 pm'),
(134, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-24 07:06:54', '5:06 pm'),
(135, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-25 01:04:25', '11:04 am'),
(136, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-27 01:53:18', '11:53 am'),
(137, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-27 20:51:49', '6:51 am'),
(138, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-29 08:04:06', '6:04 pm'),
(139, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-28 13:10:31', '11:10 pm'),
(140, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-29 01:19:56', '11:19 am'),
(141, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-29 01:48:23', '11:48 am'),
(142, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-29 01:58:59', '11:58 am'),
(143, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-29 10:40:46', '8:40 pm'),
(144, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-30 01:02:32', '11:02 am'),
(145, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-09-30 01:16:13', '11:16 am'),
(146, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-30 01:50:35', '11:50 am'),
(147, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-09-30 03:52:40', '1:52 pm'),
(148, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-30 05:00:02', '3:00 pm'),
(149, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-30 06:55:27', '4:55 pm'),
(150, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-09-30 09:11:11', '7:11 pm'),
(151, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-01 08:26:34', '6:26 pm'),
(152, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-01 12:42:23', '10:42 pm'),
(153, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-02 16:27:35', '2:27 am'),
(154, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-04 15:02:47', '1:02 am'),
(155, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-04 03:04:03', '1:04 pm'),
(156, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-04 21:05:59', '7:05 am'),
(157, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-04 03:08:16', '1:08 pm'),
(158, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-05 08:36:15', '6:36 pm'),
(159, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-06 04:17:46', '2:17 pm'),
(160, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-05 03:18:48', '1:18 pm'),
(161, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-06 02:38:25', '12:38 pm'),
(162, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-06 07:33:17', '5:33 pm'),
(163, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-06 01:04:59', '11:04 am'),
(164, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-06 04:01:33', '2:01 pm'),
(165, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-10-07 04:32:28', '2:32 pm'),
(166, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-10-07 04:52:59', '2:52 pm'),
(167, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-07 23:56:54', '9:56 am'),
(168, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-07 09:51:05', '7:51 pm'),
(169, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-07 10:49:11', '8:49 pm'),
(170, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-10-07 16:14:40', '2:14 am'),
(171, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-10-08 07:58:45', '5:58 pm'),
(172, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-08 08:07:22', '6:07 pm'),
(173, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-08 09:49:34', '7:49 pm'),
(174, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-10-08 11:31:16', '9:31 pm'),
(175, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-10 22:16:32', '8:16 am'),
(176, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-12 08:16:18', '6:16 pm'),
(177, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-11 09:08:11', '7:08 pm'),
(178, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-12 15:04:37', '1:04 am'),
(179, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-12 15:06:19', '1:06 am'),
(180, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-12 02:07:28', '12:07 pm'),
(181, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-12 02:09:23', '12:09 pm'),
(182, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-13 02:02:44', '12:02 pm'),
(183, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-15 01:20:37', '11:20 am'),
(184, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-14 02:16:25', '12:16 pm'),
(185, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-14 01:20:29', '11:20 am'),
(186, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-14 02:16:11', '12:16 pm'),
(187, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-15 02:29:13', '12:29 pm'),
(188, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-15 02:19:30', '12:19 pm'),
(189, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-16 01:04:21', '11:04 am'),
(190, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 02:07:58', '12:07 pm'),
(191, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 04:40:20', '2:40 pm'),
(192, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 05:29:18', '3:29 pm'),
(193, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 23:32:16', '9:32 am'),
(194, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 23:33:10', '9:33 am'),
(195, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-18 02:34:46', '12:34 pm'),
(196, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-19 02:47:11', '12:47 pm'),
(197, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-21 08:51:08', '6:51 pm'),
(198, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-20 02:02:55', '12:02 pm'),
(199, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-20 05:17:45', '3:17 pm'),
(200, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-21 06:17:09', '4:17 pm'),
(201, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 09:28:01', '7:28 pm'),
(202, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-22 02:04:07', '12:04 pm'),
(203, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-22 03:42:33', '1:42 pm'),
(204, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 09:08:14', '7:08 pm'),
(205, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 09:29:01', '7:29 pm'),
(206, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 02:34:05', '12:34 pm'),
(207, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-13 01:14:23', '11:14 am'),
(208, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-13 01:47:50', '11:47 am'),
(209, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-14 02:36:21', '12:36 pm'),
(210, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-14 03:47:51', '1:47 pm'),
(211, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-14 05:25:33', '3:25 pm'),
(212, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 02:06:34', '12:06 pm'),
(213, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 02:09:05', '12:09 pm'),
(214, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 02:09:55', '12:09 pm'),
(215, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 20:25:22', '6:25 am'),
(216, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 02:03:30', '12:03 pm'),
(217, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-23 03:06:42', '1:06 pm'),
(218, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 02:13:04', '12:13 pm'),
(219, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 02:57:31', '12:57 pm'),
(220, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 03:58:43', '1:58 pm'),
(221, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-25 04:21:40', '2:21 pm'),
(222, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-26 01:30:24', '11:30 am'),
(223, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-26 22:10:47', '8:10 am'),
(224, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-26 02:11:48', '12:11 pm'),
(225, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-17 09:14:50', '7:14 pm'),
(226, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-18 11:43:04', '9:43 pm'),
(227, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-08-19 12:41:07', '10:41 pm'),
(228, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-28 02:08:13', '12:08 pm'),
(229, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-27 02:09:13', '12:09 pm'),
(230, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-27 22:46:10', '8:46 am'),
(231, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-28 02:02:16', '12:02 pm'),
(232, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-28 03:15:19', '1:15 pm'),
(233, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-28 03:41:50', '1:41 pm'),
(234, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-28 03:56:02', '1:56 pm'),
(235, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-10-29 19:33:39', '5:33 am'),
(236, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-10-29 21:31:16', '7:31 am'),
(237, '192.168.43.113', '/tuzimbe/loginck.php', 'system ', '2021-10-29 22:00:19', '8:00 am'),
(238, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-10-30 00:39:38', '10:39 am'),
(239, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-30 02:37:49', '12:37 pm'),
(240, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-31 21:30:10', '7:30 am'),
(241, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-29 15:08:21', '1:08 am'),
(242, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-10-29 02:09:12', '12:09 pm'),
(243, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-01 02:18:42', '12:18 pm'),
(244, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-01 18:05:46', '4:05 am'),
(245, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-01 01:07:41', '11:07 am'),
(246, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-01 04:41:55', '2:41 pm'),
(247, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 02:16:50', '12:16 pm'),
(248, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 20:06:53', '6:06 am'),
(249, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 02:07:57', '12:07 pm'),
(250, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 02:05:24', '12:05 pm'),
(251, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 02:50:40', '12:50 pm'),
(252, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-03 02:03:46', '12:03 pm'),
(253, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 03:42:44', '1:42 pm'),
(254, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-02 05:21:18', '3:21 pm'),
(255, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-05 09:20:37', '7:20 pm'),
(256, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-04 11:04:33', '9:04 pm'),
(257, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-06 02:12:36', '12:12 pm'),
(258, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-06 02:01:42', '12:01 pm'),
(259, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-06 06:17:36', '4:17 pm'),
(260, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-08 02:03:24', '1:03 pm'),
(261, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-08 03:15:46', '2:15 pm'),
(262, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-09 02:02:46', '1:02 pm'),
(263, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-10 04:00:50', '3:00 pm'),
(264, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-10 22:05:33', '9:05 am'),
(265, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-09 10:54:44', '9:54 pm'),
(266, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-11 14:12:03', '1:12 am'),
(267, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-11 23:09:51', '10:09 am'),
(268, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-11 02:12:01', '1:12 pm'),
(269, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-12 03:23:53', '2:23 pm'),
(270, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-12 11:37:16', '10:37 pm'),
(271, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-12 12:10:47', '11:10 pm'),
(272, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-12 12:39:36', '11:39 pm'),
(273, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint ', '2021-11-14 08:10:45', '7:10 pm'),
(274, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-14 08:12:34', '7:12 pm'),
(275, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-14 08:41:49', '7:41 pm'),
(276, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 06:54:35', '5:54 pm'),
(277, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 02:30:39', '1:30 pm'),
(278, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-13 02:15:51', '1:15 pm'),
(279, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 02:01:44', '1:01 pm'),
(280, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-15 02:27:41', '1:27 pm'),
(281, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 19:28:38', '6:28 am'),
(282, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-14 15:27:38', '2:27 am'),
(283, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 15:37:24', '2:37 am'),
(284, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-15 17:25:38', '4:25 am'),
(285, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-18 00:22:02', '12:22 am'),
(286, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-18 12:33:21', '12:33 pm'),
(287, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-19 09:39:16', '9:39 am'),
(288, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-21 16:04:46', '4:04 pm'),
(289, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-19 02:05:34', '2:05 am'),
(290, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-19 02:23:52', '2:23 am'),
(291, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-19 02:37:37', '2:37 am'),
(292, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-21 16:18:49', '4:18 pm'),
(293, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-20 02:07:25', '2:07 am'),
(294, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-21 16:06:27', '4:06 pm'),
(295, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-21 16:07:34', '4:07 pm'),
(296, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-20 02:10:13', '2:10 am'),
(297, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-22 02:20:53', '2:20 am'),
(298, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-23 02:06:23', '2:06 am'),
(299, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-23 06:09:25', '6:09 am'),
(300, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-23 06:34:04', '6:34 am'),
(301, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-23 06:56:21', '6:56 am'),
(302, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-23 07:24:58', '7:24 am'),
(303, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-24 00:34:49', '12:34 am'),
(304, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-25 02:01:51', '2:01 am'),
(305, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-25 04:01:29', '4:01 am'),
(306, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-25 23:28:13', '11:28 pm'),
(307, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-25 23:44:57', '11:44 pm'),
(308, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-11-26 01:23:23', '1:23 am'),
(309, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-11-27 14:42:54', '2:42 pm'),
(310, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-27 14:58:40', '2:58 pm'),
(311, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-26 02:17:41', '2:17 am'),
(312, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-29 08:16:52', '8:16 am'),
(313, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-26 02:17:56', '2:17 am'),
(314, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-26 02:19:50', '2:19 am'),
(315, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-26 04:26:38', '4:26 am'),
(316, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-27 01:50:46', '1:50 am'),
(317, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-29 02:02:08', '2:02 am'),
(318, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-11-30 00:58:34', '12:58 am'),
(319, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-02 02:09:42', '2:09 am'),
(320, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-02 17:33:01', '5:33 pm'),
(321, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-12-03 20:23:30', '8:23 pm'),
(322, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-05 18:18:32', '6:18 pm'),
(323, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-05 09:20:20', '9:20 am'),
(324, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-04 02:16:16', '2:16 am'),
(325, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-04 02:43:20', '2:43 am'),
(326, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-03 02:45:57', '2:45 am'),
(327, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-03 03:39:24', '3:39 am'),
(328, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-06 02:25:11', '2:25 am'),
(329, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-07 05:02:55', '5:02 am'),
(330, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-09 03:01:08', '3:01 am'),
(331, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-10 01:39:41', '1:39 am'),
(332, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-09 02:02:56', '2:02 am'),
(333, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-12-10 03:42:04', '3:42 am'),
(334, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-11 22:25:28', '10:25 pm'),
(335, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-14 14:31:18', '2:31 pm'),
(336, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-13 02:05:15', '2:05 am'),
(337, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-12-13 03:10:13', '3:10 am'),
(338, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-13 03:44:51', '3:44 am'),
(339, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-14 02:14:48', '2:14 am'),
(340, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-14 02:30:09', '2:30 am'),
(341, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-14 03:06:37', '3:06 am'),
(342, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-15 02:37:40', '2:37 am'),
(343, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-17 02:05:25', '2:05 am'),
(344, '127.0.0.1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-17 20:39:33', '8:39 pm'),
(345, '127.0.0.1', '/tuzimbe/loginck.php', 'system', '2021-12-17 20:44:49', '8:44 pm'),
(346, '192.168.43.95', '/tuzimbe/loginck.php', 'system', '2021-12-17 21:04:42', '9:04 pm'),
(347, '::1', '/tuzimbe/loginck.php', 'salespoint', '2021-12-17 21:20:11', '9:20 pm'),
(348, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-04 22:28:30', '10:28 pm'),
(349, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-09 21:36:11', '9:36 pm'),
(350, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-11 09:37:12', '9:37 am'),
(351, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-11 12:29:43', '12:29 pm'),
(352, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-13 09:21:18', '9:21 am'),
(353, '::1', '/iee/cpanel/loginck.php', 'eric', '2022-01-13 19:32:06', '7:32 pm'),
(354, '::1', '/iee/cpanel/loginck.php', 'eric', '2022-01-13 19:36:05', '7:36 pm'),
(355, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-14 09:46:30', '9:46 am'),
(356, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-14 14:07:06', '2:07 pm'),
(357, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-14 15:48:26', '3:48 pm'),
(358, '::1', '/iee/cpanel/loginck.php', 'emma', '2022-01-14 15:51:16', '3:51 pm'),
(359, '::1', '/iee/cpanel/loginck.php', 'emma', '2022-01-14 15:54:34', '3:54 pm'),
(360, '::1', '/iee/cpanel/loginck.php', 'emma', '2022-01-14 15:56:14', '3:56 pm'),
(361, '::1', '/iee/cpanel/loginck.php', 'emma', '2022-01-14 15:57:37', '3:57 pm'),
(362, '::1', '/iee/cpanel/loginck.php', 'system', '2022-01-14 17:08:03', '5:08 pm'),
(363, '::1', '/uprs_sys/loginck.php', 'system', '2022-02-28 15:36:01', '3:36 pm'),
(364, '::1', '/uprs_sys/loginck.php', 'system', '2022-02-28 16:03:08', '4:03 pm'),
(365, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-01 14:14:16', '2:14 pm'),
(366, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-01 14:39:11', '2:39 pm'),
(367, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-06 12:33:16', '12:33 pm'),
(368, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-06 20:03:32', '8:03 pm'),
(369, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-07 10:43:50', '10:43 am'),
(370, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-07 11:58:42', '11:58 am'),
(371, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-07 13:08:38', '1:08 pm'),
(372, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-07 21:04:04', '9:04 pm'),
(373, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-08 10:31:39', '10:31 am'),
(374, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-08 12:52:28', '12:52 pm'),
(375, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-09 09:36:37', '9:36 am'),
(376, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-09 13:46:23', '1:46 pm'),
(377, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-10 17:34:30', '5:34 pm'),
(378, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-12 11:54:19', '11:54 am'),
(379, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-16 14:48:20', '2:48 pm'),
(380, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-17 21:58:40', '9:58 pm'),
(381, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-18 09:14:09', '9:14 am'),
(382, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-18 10:42:39', '10:42 am'),
(383, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-18 12:01:38', '12:01 pm'),
(384, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-20 16:37:12', '4:37 pm'),
(385, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-22 08:53:27', '8:53 am'),
(386, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-22 19:32:03', '7:32 pm'),
(387, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-24 23:22:28', '11:22 pm'),
(388, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-27 09:48:38', '9:48 am'),
(389, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-27 13:56:10', '1:56 pm'),
(390, '::1', '/uprs_sys/loginck.php', 'system', '2022-03-28 10:53:58', '10:53 am'),
(391, '::1', '/proj/loginck.php', 'system', '2022-04-08 13:27:12', '1:27 pm'),
(392, '::1', '/proj/loginck.php', 'system', '2022-04-08 20:33:15', '8:33 pm'),
(393, '::1', '/proj/loginck.php', 'system', '2022-04-09 08:33:41', '8:33 am'),
(394, '::1', '/proj/loginck.php', 'system', '2022-04-09 09:29:39', '9:29 am'),
(395, '::1', '/proj/loginck.php', 'system', '2022-04-12 14:12:42', '2:12 pm'),
(396, '::1', '/proj/loginck.php', 'system', '2022-04-12 14:13:08', '2:13 pm'),
(397, '::1', '/proj/loginck.php', 'system', '2022-04-12 18:41:27', '6:41 pm'),
(398, '::1', '/proj/loginck.php', 'system', '2022-04-15 12:04:17', '12:04 pm'),
(399, '::1', '/proj/loginck.php', 'system', '2022-04-15 15:02:35', '3:02 pm'),
(400, '::1', '/proj/loginck.php', 'system', '2022-04-15 19:43:33', '7:43 pm'),
(401, '41.210.155.161', '/trucker/loginck.php', 'system', '2022-04-15 18:42:17', '9:42 pm'),
(402, '41.210.155.161', '/trucker/loginck.php', 'system', '2022-04-16 04:21:41', '7:21 am'),
(403, '158.37.216.27', '/trucker/loginck.php', 'system', '2022-04-18 11:38:39', '2:38 pm'),
(404, '41.210.154.248', '/trucker/loginck.php', 'system ', '2022-04-19 10:23:46', '1:23 pm'),
(405, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 10:25:48', '1:25 pm'),
(406, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 10:31:18', '1:31 pm'),
(407, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 12:03:33', '3:03 pm'),
(408, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 12:04:22', '3:04 pm'),
(409, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 12:57:38', '3:57 pm'),
(410, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 12:57:39', '3:57 pm'),
(411, '158.37.216.20', '/trucker/loginck.php', 'system', '2022-04-19 15:22:39', '6:22 pm'),
(412, '158.37.216.19', '/trucker/loginck.php', 'system', '2022-04-19 15:23:14', '6:23 pm'),
(413, '41.210.154.248', '/trucker/loginck.php', 'system', '2022-04-19 15:31:37', '6:31 pm'),
(414, '102.134.149.16', '/trucker/loginck.php', 'system', '2022-04-19 15:49:02', '6:49 pm'),
(415, '134.195.198.223', '/trucker/loginck.php', 'system', '2022-04-19 16:39:24', '7:39 pm'),
(416, '158.37.216.30', '/trucker/loginck.php', 'system', '2022-04-21 12:01:59', '3:01 pm'),
(417, '158.37.216.17', '/trucker/loginck.php', 'system', '2022-04-22 13:19:30', '4:19 pm'),
(418, '78.31.205.167', '/trucker/loginck.php', 'system', '2022-05-06 20:37:53', '11:37 pm'),
(419, '41.210.145.106', '/trucker/loginck.php', 'system', '2022-05-07 11:09:34', '2:09 pm'),
(420, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-07 11:14:30', '2:14 pm'),
(421, '41.210.154.151', '/trucker/loginck.php', 'system', '2022-05-07 19:40:47', '10:40 pm'),
(422, '41.210.154.52', '/trucker/loginck.php', 'system', '2022-05-08 07:56:50', '10:56 am'),
(423, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-08 13:35:26', '4:35 pm'),
(424, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-08 15:38:15', '6:38 pm'),
(425, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-08 18:10:43', '9:10 pm'),
(426, '41.210.155.66', '/trucker/loginck.php', 'system', '2022-05-09 06:51:04', '9:51 am'),
(427, '41.210.154.13', '/trucker/loginck.php', 'system', '2022-05-09 07:49:18', '10:49 am'),
(428, '102.134.149.104', '/trucker/loginck.php', 'system', '2022-05-09 13:48:49', '4:48 pm'),
(429, '102.134.149.104', '/trucker/loginck.php', 'system', '2022-05-09 14:14:32', '5:14 pm'),
(430, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-09 16:20:55', '7:20 pm'),
(431, '102.134.149.103', '/trucker/loginck.php', 'system', '2022-05-09 16:37:54', '7:37 pm'),
(432, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-09 17:03:33', '8:03 pm'),
(433, '196.188.74.51', '/trucker/loginck.php', 'system', '2022-05-09 17:17:01', '8:17 pm'),
(434, '41.210.145.95', '/trucker/loginck.php', 'system', '2022-05-10 08:00:02', '11:00 am'),
(435, '41.210.145.95', '/trucker/loginck.php', 'system', '2022-05-10 11:12:00', '2:12 pm'),
(436, '102.134.149.103', '/trucker/loginck.php', 'system', '2022-05-12 11:43:12', '2:43 pm');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `sno` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `qty` int(12) NOT NULL,
  `company` text NOT NULL,
  `type` text NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`sno`, `name`, `ref`, `qty`, `company`, `type`, `code`) VALUES
(9, 'Paracetamol', 'UAX-991F', 400, 'USA', 'P', '5E3KUBMLFC0YVAJ'),
(10, 'Mama Kit', 'UBA-278A', 1000, 'USA', 'P', 'O2F5CY0U43XAQTR'),
(11, 'MRDTs', 'UAZ-221N', 30, 'UK', 'M', 'YT6CK3ZXV95NS8G'),
(12, 'ARVs', 'UBA-278A', 440, 'JAPAN', 'D', 'JP3SZ819I7FMYXR'),
(13, 'Mabendazles', 'UBA-278A', 670, 'Uganda', 'D', 'J52A0QURTPL1MZ7'),
(14, 'ECP', 'UBA-278A', 50, 'USA', 'F', 'JCRUIDF6MLGZW9V');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `client` text NOT NULL,
  `dos` text NOT NULL,
  `bid` int(20) NOT NULL,
  `status` varchar(40) NOT NULL,
  `user_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `currency` varchar(6) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `address`, `address2`, `email`, `phone`, `country`, `currency`, `logo`, `level`, `timezone`) VALUES
(1, 'Product Tracking system', 'P.O.Box 7062 Kampala', 'Gayaza', 'info@lysmultd.com', '0788679203', 'Uganda', 'UGX', '396211.png', '', 'Africa/Kampala');

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` int(12) NOT NULL,
  `ref` text NOT NULL,
  `date` text NOT NULL,
  `weight` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_results`
--

INSERT INTO `test_results` (`id`, `ref`, `date`, `weight`, `latitude`, `longitude`) VALUES
(16, 'v3853', '2022-5-7 16:58:47', '45', '0.268167', '32.568649'),
(17, 'v3853', '2022-5-7 16:58:47', '45', '0.268167', '32.568649'),
(18, 'v3853', '2022-4-20 5:33:47', '45', '0.267980', '32.568443'),
(19, 'v3843', '2022-5-7 17:47:46', '42', '0.268944', '32.565319'),
(20, 'v3843', '2022-5-7 17:47:46', '32', '0.268944', '32.565319'),
(21, 'v3843', '2022-5-7 17:47:46', '32', '0.268944', '32.565317'),
(22, 'v3843', '2022-5-8 17:47:46', '32', '0.268934', '32.565317');

-- --------------------------------------------------------

--
-- Table structure for table `transporter`
--

CREATE TABLE `transporter` (
  `id` int(20) NOT NULL,
  `organization` text NOT NULL,
  `origin` text NOT NULL,
  `destn` text NOT NULL,
  `t_name` text NOT NULL,
  `t_tel` text NOT NULL,
  `supervisor` text NOT NULL,
  `category` text NOT NULL,
  `nin` text NOT NULL,
  `ref` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transporter`
--

INSERT INTO `transporter` (`id`, `organization`, `origin`, `destn`, `t_name`, `t_tel`, `supervisor`, `category`, `nin`, `ref`) VALUES
(5, '', 'LivingGoods Uganda Ltd', 'Kawempe', 'Kayemba Moses', '0774364701', 'Kalanda Emmanuel', 'Drugs', 'CDWJKLMN111', 'UBA-278A'),
(6, '', 'LivingGoods Uganda Ltd', 'Wobulenzi', 'Kasato John', '0701700900', 'Mukembo Martin ', 'Drugs', 'CFJKLMN91111', 'UAX-991F'),
(7, '', 'LivingGoods Uganda Ltd', 'Lira Branch', 'Phillips Gira', '0775228922', 'Robinah Akullo', 'Drugs', 'CGJMNF1122', 'UAZ-221N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `salary` varchar(9) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `pid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `userid`, `password`, `level`, `mail`, `salary`, `dept`, `user_image`, `pid`) VALUES
(23, 'Administrator', 'SYSTEM', '73a054cc528f91ca1bbdda3589b6a22d', 1, 'info@lysmultd.com', '4000000', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `id` int(12) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_category`
--

INSERT INTO `user_category` (`id`, `name`) VALUES
(1, 'Hotel and Restaurant'),
(2, 'Bar & Pub'),
(3, 'Supermarket');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `token` varchar(80) NOT NULL,
  `timemodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_log`
--
ALTER TABLE `my_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter`
--
ALTER TABLE `transporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `my_log`
--
ALTER TABLE `my_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transporter`
--
ALTER TABLE `transporter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_category`
--
ALTER TABLE `user_category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
