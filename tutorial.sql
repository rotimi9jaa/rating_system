-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 11, 2020 at 02:17 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `username`, `password`) VALUES
(1, 'admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `link`) VALUES
(1, 'Speech Rate', 'Speech Rate', 'speech.php'),
(2, 'Body Language', 'Body Language', 'body.php'),
(3, 'Class Engagement', 'Class Engagement', 'class.php'),
(4, 'Course Material Content', 'Course Material Content', 'mat.php'),
(5, 'Percentage Assimilation', 'Percentage Assimilation', 'perc.php');

-- --------------------------------------------------------

--
-- Table structure for table `post_rating`
--

CREATE TABLE `post_rating` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `rating` int(2) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_rating`
--

INSERT INTO `post_rating` (`id`, `userid`, `postid`, `rating`, `timestamp`) VALUES
(1, 2, 1, 3, '2017-07-02 18:02:11'),
(2, 2, 3, 3, '2017-07-02 18:06:10'),
(3, 2, 4, 5, '2017-07-02 18:06:14'),
(4, 2, 5, 4, '2017-07-02 18:06:16'),
(5, 3, 2, 5, '2017-07-02 18:11:33'),
(6, 4, 2, 5, '2020-03-11 16:53:54'),
(7, 4, 1, 4, '2020-03-11 18:14:57'),
(8, 4, 10, 5, '2017-07-03 02:14:29'),
(9, 4, 11, 3, '2017-07-03 02:14:37'),
(10, 1, 1, 4, '2020-05-10 13:25:31'),
(11, 1, 4, 9, '2020-05-10 11:50:12'),
(12, 1, 3, 8, '2020-05-10 11:50:09'),
(13, 1, 10, 3, '2017-07-03 04:07:18'),
(14, 1, 9, 4, '2017-07-03 04:07:23'),
(15, 1, 11, 5, '2017-07-03 04:07:27'),
(16, 1, 19, 4, '2017-07-03 04:18:27'),
(17, 1, 18, 5, '2017-07-03 04:18:29'),
(18, 1, 20, 3, '2017-07-03 04:18:31'),
(19, 1, 17, 4, '2017-07-03 04:18:35'),
(20, 1, 16, 5, '2017-07-03 04:18:37'),
(21, 1, 15, 4, '2017-07-03 04:18:38'),
(22, 1, 14, 4, '2017-07-03 04:18:40'),
(23, 1, 13, 4, '2017-07-03 04:18:41'),
(24, 1, 12, 5, '2017-07-03 04:18:43'),
(25, 1, 8, 5, '2017-07-03 04:18:47'),
(26, 1, 7, 4, '2017-07-03 04:18:49'),
(27, 1, 6, 3, '2017-07-03 04:18:51'),
(28, 1, 5, 10, '2020-05-10 11:50:17'),
(29, 1, 2, 3, '2020-05-10 13:25:44'),
(30, 2, 2, 5, '2017-07-03 04:21:30'),
(31, 2, 6, 3, '2017-07-03 04:21:35'),
(32, 2, 7, 4, '2017-07-03 04:21:37'),
(33, 2, 8, 4, '2017-07-03 04:21:39'),
(34, 2, 9, 3, '2017-07-03 04:21:40'),
(35, 2, 10, 5, '2017-07-03 04:21:42'),
(36, 2, 11, 4, '2017-07-03 04:21:44'),
(37, 2, 12, 5, '2017-07-03 04:21:46'),
(38, 2, 13, 4, '2017-07-03 04:21:47'),
(39, 2, 14, 4, '2017-07-03 04:21:50'),
(40, 2, 15, 3, '2017-07-03 04:21:52'),
(41, 2, 16, 4, '2017-07-03 04:21:56'),
(42, 2, 17, 5, '2017-07-03 04:21:59'),
(43, 2, 18, 3, '2017-07-03 04:22:02'),
(44, 2, 19, 4, '2017-07-03 04:22:05'),
(45, 2, 20, 4, '2017-07-03 04:22:07'),
(46, 3, 1, 4, '2017-07-03 04:22:32'),
(47, 3, 3, 4, '2017-07-03 04:22:35'),
(48, 3, 4, 4, '2017-07-03 04:22:37'),
(49, 3, 5, 5, '2017-07-03 04:22:38'),
(50, 3, 6, 4, '2017-07-03 04:22:40'),
(51, 3, 7, 5, '2017-07-03 04:22:45'),
(52, 3, 8, 4, '2017-07-03 04:22:47'),
(53, 3, 9, 4, '2017-07-03 04:22:49'),
(54, 3, 10, 4, '2017-07-03 04:22:51'),
(55, 3, 11, 5, '2017-07-03 04:22:52'),
(56, 3, 12, 4, '2017-07-03 04:22:54'),
(57, 3, 13, 5, '2017-07-03 04:22:56'),
(58, 3, 14, 4, '2017-07-03 04:22:57'),
(59, 3, 15, 4, '2017-07-03 04:22:59'),
(60, 3, 16, 4, '2017-07-03 04:23:00'),
(61, 3, 17, 4, '2017-07-03 04:23:02'),
(62, 3, 18, 4, '2017-07-03 04:23:03'),
(63, 3, 19, 5, '2017-07-03 04:23:05'),
(64, 3, 20, 4, '2017-07-03 04:23:11'),
(65, 4, 3, 5, '2017-07-03 04:23:33'),
(66, 4, 4, 4, '2017-07-03 04:23:35'),
(67, 4, 20, 4, '2017-07-03 04:23:40'),
(68, 4, 19, 4, '2017-07-03 04:23:41'),
(69, 4, 18, 5, '2017-07-03 04:23:45'),
(70, 4, 17, 3, '2017-07-03 04:23:46'),
(71, 4, 16, 4, '2017-07-03 04:23:48'),
(72, 4, 15, 4, '2017-07-03 04:23:50'),
(73, 4, 13, 4, '2017-07-03 04:23:51'),
(74, 4, 14, 5, '2017-07-03 04:23:53'),
(75, 4, 12, 3, '2017-07-03 04:23:55'),
(76, 4, 8, 4, '2017-07-03 04:23:58'),
(77, 4, 9, 4, '2017-07-03 04:24:00'),
(78, 4, 7, 4, '2017-07-03 04:24:02'),
(79, 4, 6, 5, '2017-07-03 04:24:03'),
(80, 4, 5, 4, '2017-07-03 04:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`id`, `title`, `description`, `rating`) VALUES
(1, 'Class Engagement', '', 3),
(2, 'Speech Rate', '', 5),
(3, 'Body Language', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(1, 'user', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `rating` int(2) NOT NULL,
  `avg_rating` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `userid`, `postid`, `rating`, `avg_rating`, `timestamp`, `datetime`) VALUES
(5, 1, 1, 4, 0, '2020-03-11 20:33:21', '2020-03-11 20:33:21'),
(6, 1, 4, 2, 0, '2020-03-11 20:33:32', '2020-03-11 20:33:32'),
(7, 1, 2, 4, 0, '2020-03-12 12:46:26', '2020-03-12 12:46:26'),
(8, 1, 2, 5, 0, '2020-03-12 12:46:28', '2020-03-12 12:46:28'),
(9, 1, 3, 5, 0, '2020-03-12 12:46:29', '2020-03-12 12:46:29'),
(10, 1, 4, 5, 0, '2020-03-12 12:46:31', '2020-03-12 12:46:31'),
(11, 1, 5, 5, 0, '2020-03-12 12:46:33', '2020-03-12 12:46:33'),
(12, 1, 1, 5, 0, '2020-03-12 12:46:36', '2020-03-12 12:46:36'),
(13, 1, 1, 4, 0, '2020-03-12 12:56:21', '2020-03-12 12:56:21'),
(14, 1, 1, 3, 0, '2020-03-12 12:56:22', '2020-03-12 12:56:22'),
(15, 1, 1, 4, 0, '2020-03-12 12:56:25', '2020-03-12 12:56:25'),
(16, 1, 1, 2, 0, '2020-03-12 12:56:27', '2020-03-12 12:56:27'),
(17, 1, 2, 4, 0, '2020-03-12 12:56:30', '2020-03-12 12:56:30'),
(18, 1, 3, 4, 0, '2020-03-12 12:56:35', '2020-03-12 12:56:35'),
(19, 1, 5, 3, 0, '2020-03-12 12:56:37', '2020-03-12 12:56:37'),
(20, 1, 4, 2, 0, '2020-03-12 13:07:24', '2020-03-12 13:07:24'),
(21, 1, 4, 2, 0, '2020-03-12 13:07:24', '2020-03-12 13:07:24'),
(22, 1, 4, 3, 0, '2020-03-12 13:07:25', '2020-03-12 13:07:25'),
(23, 1, 4, 4, 0, '2020-03-12 13:07:26', '2020-03-12 13:07:26'),
(24, 1, 5, 4, 0, '2020-03-12 13:07:28', '2020-03-12 13:07:28'),
(25, 1, 4, 3, 0, '2020-03-12 13:12:19', '2020-03-12 13:12:19'),
(26, 1, 5, 5, 0, '2020-03-12 13:12:21', '2020-03-12 13:12:21'),
(27, 1, 1, 4, 0, '2020-03-12 13:12:33', '2020-03-12 13:12:33'),
(28, 1, 3, 3, 0, '2020-03-12 13:14:49', '2020-03-12 13:14:49'),
(29, 1, 4, 5, 0, '2020-03-12 13:14:50', '2020-03-12 13:14:50'),
(30, 1, 5, 3, 0, '2020-03-12 13:14:53', '2020-03-12 13:14:53'),
(31, 1, 2, 5, 0, '2020-03-12 13:14:56', '2020-03-12 13:14:56'),
(32, 1, 1, 5, 0, '2020-03-12 13:14:57', '2020-03-12 13:14:57'),
(33, 1, 3, 5, 0, '2020-03-12 13:14:59', '2020-03-12 13:14:59'),
(34, 1, 5, 5, 0, '2020-03-12 13:15:01', '2020-03-12 13:15:01'),
(35, 1, 3, 1, 0, '2020-03-12 13:16:19', '2020-03-12 13:16:19'),
(36, 1, 2, 1, 0, '2020-03-12 13:16:20', '2020-03-12 13:16:20'),
(37, 1, 4, 1, 0, '2020-03-12 13:16:22', '2020-03-12 13:16:22'),
(38, 1, 5, 1, 0, '2020-03-12 13:16:23', '2020-03-12 13:16:23'),
(39, 1, 1, 1, 0, '2020-03-12 13:16:26', '2020-03-12 13:16:26'),
(40, 1, 1, 3, 0, '2020-03-12 13:20:37', '2020-03-12 13:20:37'),
(41, 1, 1, 4, 0, '2020-03-12 13:20:38', '2020-03-12 13:20:38'),
(42, 1, 1, 3, 0, '2020-03-12 13:21:47', '2020-03-12 13:21:47'),
(43, 1, 2, 4, 0, '2020-03-12 13:21:49', '2020-03-12 13:21:49'),
(44, 1, 3, 3, 0, '2020-03-12 13:22:13', '2020-03-12 13:22:13'),
(45, 1, 4, 4, 0, '2020-03-12 13:22:19', '2020-03-12 13:22:19'),
(46, 1, 4, 3, 0, '2020-03-12 13:22:24', '2020-03-12 13:22:24'),
(47, 1, 1, 4, 0, '2020-03-12 13:22:59', '2020-03-12 13:22:59'),
(48, 1, 4, 5, 0, '2020-03-12 13:23:42', '2020-03-12 13:23:42'),
(49, 1, 3, 4, 0, '2020-03-12 13:23:44', '2020-03-12 13:23:44'),
(50, 1, 2, 3, 0, '2020-03-12 13:23:47', '2020-03-12 13:23:47'),
(51, 1, 2, 2, 0, '2020-03-12 13:23:50', '2020-03-12 13:23:50'),
(52, 1, 1, 2, 0, '2020-04-30 13:12:26', '2020-04-30 14:12:26'),
(53, 1, 1, 4, 0, '2020-04-30 13:12:27', '2020-04-30 14:12:27'),
(54, 1, 2, 4, 0, '2020-04-30 13:12:29', '2020-04-30 14:12:29'),
(55, 1, 2, 4, 0, '2020-04-30 13:12:30', '2020-04-30 14:12:30'),
(56, 1, 1, 6, 0, '2020-04-30 13:12:59', '2020-04-30 14:12:59'),
(57, 1, 1, 8, 0, '2020-04-30 13:13:00', '2020-04-30 14:13:00'),
(58, 1, 1, 10, 0, '2020-04-30 13:13:02', '2020-04-30 14:13:02'),
(59, 1, 1, 6, 0, '2020-04-30 13:13:20', '2020-04-30 14:13:20'),
(60, 1, 1, 5, 0, '2020-04-30 13:13:22', '2020-04-30 14:13:22'),
(61, 1, 2, 10, 0, '2020-04-30 13:14:57', '2020-04-30 14:14:57'),
(62, 1, 3, 10, 0, '2020-04-30 13:14:59', '2020-04-30 14:14:59'),
(63, 1, 4, 10, 0, '2020-04-30 13:15:00', '2020-04-30 14:15:00'),
(64, 1, 1, 8, 0, '2020-04-30 13:34:25', '2020-04-30 14:34:25'),
(65, 1, 4, 6, 0, '2020-04-30 13:34:37', '2020-04-30 14:34:37'),
(66, 1, 1, 4, 0, '2020-04-30 13:51:16', '2020-04-30 14:51:16'),
(67, 1, 1, 2, 0, '2020-04-30 13:51:16', '2020-04-30 14:51:16'),
(68, 1, 1, 6, 0, '2020-04-30 13:51:17', '2020-04-30 14:51:17'),
(69, 1, 1, 7, 0, '2020-04-30 13:51:18', '2020-04-30 14:51:18'),
(70, 1, 1, 9, 0, '2020-04-30 13:51:21', '2020-04-30 14:51:21'),
(71, 1, 2, 6, 0, '2020-04-30 13:51:23', '2020-04-30 14:51:23'),
(72, 1, 2, 4, 0, '2020-04-30 13:51:23', '2020-04-30 14:51:23'),
(73, 1, 5, 7, 0, '2020-04-30 13:51:49', '2020-04-30 14:51:49'),
(74, 1, 5, 8, 0, '2020-04-30 13:51:49', '2020-04-30 14:51:49'),
(75, 1, 5, 9, 0, '2020-04-30 13:51:50', '2020-04-30 14:51:50'),
(76, 1, 3, 2, 0, '2020-04-30 14:00:47', '2020-04-30 15:00:47'),
(77, 1, 3, 4, 0, '2020-04-30 14:00:49', '2020-04-30 15:00:49'),
(78, 1, 3, 5, 0, '2020-04-30 14:00:50', '2020-04-30 15:00:50'),
(79, 1, 4, 2, 0, '2020-04-30 14:00:52', '2020-04-30 15:00:52'),
(80, 1, 4, 8, 0, '2020-04-30 14:00:55', '2020-04-30 15:00:55'),
(81, 1, 5, 8, 0, '2020-04-30 14:00:56', '2020-04-30 15:00:56'),
(82, 1, 5, 3, 0, '2020-04-30 14:00:58', '2020-04-30 15:00:58'),
(83, 1, 5, 8, 0, '2020-04-30 14:30:39', '2020-04-30 15:30:39'),
(84, 1, 5, 9, 0, '2020-04-30 14:30:40', '2020-04-30 15:30:40'),
(85, 1, 2, 6, 0, '2020-05-02 18:01:37', '2020-05-02 19:01:37'),
(86, 1, 3, 7, 0, '2020-05-02 18:01:39', '2020-05-02 19:01:39'),
(87, 1, 1, 4, 0, '2020-05-02 18:01:45', '2020-05-02 19:01:45'),
(88, 1, 1, 8, 0, '2020-05-02 19:07:49', '2020-05-02 20:07:49'),
(89, 1, 1, 9, 0, '2020-05-02 19:07:50', '2020-05-02 20:07:50'),
(90, 1, 2, 8, 0, '2020-05-02 19:45:42', '2020-05-02 20:45:42'),
(91, 1, 1, 10, 0, '2020-05-02 19:45:50', '2020-05-02 20:45:50'),
(92, 1, 1, 3, 0, '2020-05-02 19:45:56', '2020-05-02 20:45:56'),
(93, 1, 1, 8, 0, '2020-05-02 20:00:04', '2020-05-02 21:00:04'),
(94, 1, 1, 2, 0, '2020-05-02 20:03:07', '2020-05-02 21:03:07'),
(95, 1, 1, 2, 0, '2020-05-02 20:03:07', '2020-05-02 21:03:07'),
(96, 1, 1, 2, 0, '2020-05-02 20:03:07', '2020-05-02 21:03:07'),
(97, 1, 1, 1, 0, '2020-05-02 20:03:08', '2020-05-02 21:03:08'),
(98, 1, 4, 4, 0, '2020-05-10 11:23:36', '2020-05-10 12:23:36'),
(99, 1, 4, 6, 0, '2020-05-10 11:23:37', '2020-05-10 12:23:37'),
(100, 1, 4, 7, 0, '2020-05-10 11:23:38', '2020-05-10 12:23:38'),
(101, 1, 4, 10, 0, '2020-05-10 11:23:40', '2020-05-10 12:23:40'),
(102, 1, 3, 10, 0, '2020-05-10 11:23:42', '2020-05-10 12:23:42'),
(103, 1, 2, 10, 0, '2020-05-10 11:23:44', '2020-05-10 12:23:44'),
(104, 1, 1, 10, 0, '2020-05-10 11:23:45', '2020-05-10 12:23:45'),
(105, 1, 5, 10, 0, '2020-05-10 11:23:50', '2020-05-10 12:23:50'),
(106, 1, 5, 10, 0, '2020-05-10 11:23:51', '2020-05-10 12:23:51'),
(107, 1, 1, 1, 0, '2020-05-10 11:23:54', '2020-05-10 12:23:54'),
(108, 1, 2, 1, 0, '2020-05-10 11:23:56', '2020-05-10 12:23:56'),
(109, 1, 3, 1, 0, '2020-05-10 11:24:01', '2020-05-10 12:24:01'),
(110, 1, 4, 1, 0, '2020-05-10 11:24:02', '2020-05-10 12:24:02'),
(111, 1, 5, 1, 0, '2020-05-10 11:24:05', '2020-05-10 12:24:05'),
(112, 1, 1, 8, 0, '2020-05-10 11:38:49', '2020-05-10 12:38:49'),
(113, 1, 1, 9, 0, '2020-05-10 11:50:04', '2020-05-10 12:50:04'),
(114, 1, 2, 5, 0, '2020-05-10 11:50:06', '2020-05-10 12:50:06'),
(115, 1, 2, 7, 0, '2020-05-10 11:50:06', '2020-05-10 12:50:06'),
(116, 1, 3, 6, 0, '2020-05-10 11:50:07', '2020-05-10 12:50:07'),
(117, 1, 3, 7, 0, '2020-05-10 11:50:08', '2020-05-10 12:50:08'),
(118, 1, 3, 8, 0, '2020-05-10 11:50:09', '2020-05-10 12:50:09'),
(119, 1, 4, 9, 0, '2020-05-10 11:50:12', '2020-05-10 12:50:12'),
(120, 1, 5, 9, 0, '2020-05-10 11:50:16', '2020-05-10 12:50:16'),
(121, 1, 5, 10, 0, '2020-05-10 11:50:17', '2020-05-10 12:50:17'),
(122, 1, 1, 6, 0, '2020-05-10 11:55:27', '2020-05-10 12:55:27'),
(123, 1, 1, 4, 0, '2020-05-10 13:25:31', '2020-05-10 14:25:31'),
(124, 1, 2, 5, 0, '2020-05-10 13:25:43', '2020-05-10 14:25:43'),
(125, 1, 2, 3, 0, '2020-05-10 13:25:44', '2020-05-10 14:25:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_rating`
--
ALTER TABLE `post_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_rating`
--
ALTER TABLE `post_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;