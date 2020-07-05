-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 11:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'e358efa489f58062f10dd7316b65649e', '17-01-2020 12:25:41 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'PVPPCOE', 'B+', '2020-01-15 09:16:07', NULL),
(2, 'KJSE', 'B+', '2020-01-15 09:18:34', NULL),
(3, 'VIT', 'B+', '2020-01-15 09:18:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `category`) VALUES
(1, 'Paper Revaluation'),
(2, 'Exam'),
(3, 'Admission'),
(4, 'Finance'),
(5, 'Lecture Time Table'),
(6, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'closed', 'hjk', '2020-01-18 09:30:38'),
(2, 6, 'closed', 'resolved', '2020-01-20 06:48:28'),
(3, 7, 'in process', 'GTGT', '2020-01-20 10:06:27'),
(4, 7, 'closed', 'CASE SOLVED', '2020-01-20 10:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `rem_time` date NOT NULL,
  `complaintNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `lname`) VALUES
(1, 'University'),
(2, 'Institute'),
(3, 'Department');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', '', '2016-10-18 11:35:02', '0000-00-00 00:00:00'),
(4, 'Punjab', 'pbPB', '2016-10-18 11:35:58', '0000-00-00 00:00:00'),
(5, 'Haryana', 'Haryana', '2017-03-28 07:20:36', '0000-00-00 00:00:00'),
(6, 'Delhi', 'Delhi', '2017-06-11 10:54:12', '2019-06-24 07:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 2, 'CS', '2020-01-15 05:53:34', NULL),
(2, 2, 'IT', '2020-01-15 05:53:34', NULL),
(3, 2, 'ELEX', '2019-06-24 07:06:44', '2020-01-15 05:49:34'),
(4, 2, 'EXTC', '2020-01-15 05:53:34', NULL),
(5, 1, 'CS', '2020-01-15 09:52:30', NULL),
(6, 1, 'IT', '2020-01-15 09:52:30', NULL),
(7, 1, 'ELEX', '2020-01-15 09:52:30', NULL),
(8, 1, 'EXTC', '2020-01-15 09:52:30', NULL),
(9, 3, 'CS', '2020-01-15 09:52:30', NULL),
(10, 3, 'IT', '2020-01-15 09:52:30', NULL),
(11, 3, 'ELEX', '2020-01-15 09:52:30', NULL),
(12, 3, 'EXTC', '2020-01-15 09:52:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 3, 'IT', 'Department', 'Delhi', 'abcd', NULL, '2020-01-18 07:19:00', NULL, NULL),
(2, 1, 2, 'CS', 'University', 'Haryana', 'awddca', '', '2020-01-18 09:03:31', 'closed', '2020-01-18 09:30:38'),
(3, 1, 3, 'CS', 'Institute', 'Haryana', 'strikers team :- complaint number 1', '', '2020-01-18 09:04:39', NULL, NULL),
(4, 10, 3, 'IT', 'Institute', 'Uttar Pradesh', 'kjse admission institue up it', 'SIH Document.pdf', '2020-01-18 10:24:36', NULL, NULL),
(5, 1, 2, 'IT', 'University', 'Punjab', 'sfsaf', 'index.php', '2020-01-20 04:15:05', NULL, NULL),
(6, 1, 1, 'CS', 'University', 'Punjab', 'tdetxcfycytyvyt', '', '2020-01-20 06:47:24', 'closed', '2020-01-20 06:48:28'),
(7, 1, 1, 'IT', 'Institute', 'Haryana', 'GRGRH', 'index.php', '2020-01-20 10:06:05', 'closed', '2020-01-20 10:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(63, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 06:50:06', '', 0),
(64, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 06:50:15', '', 0),
(65, 0, 'vedant', 0x3a3a3100000000000000000000000000, '2020-01-17 07:06:43', '', 0),
(66, 0, 'vedant', 0x3a3a3100000000000000000000000000, '2020-01-17 07:06:57', '', 0),
(67, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 07:07:32', '', 0),
(68, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 07:08:11', '', 0),
(69, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 07:08:38', '', 1),
(70, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 08:39:47', '', 0),
(71, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 08:40:29', '', 0),
(72, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 08:49:00', '', 1),
(73, 2, 'afreen@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 09:17:00', '', 1),
(74, 0, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 10:14:07', '', 0),
(75, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 10:16:19', '17-01-2020 04:04:32 PM', 1),
(76, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 10:34:43', '', 1),
(77, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 10:48:40', '17-01-2020 04:22:24 PM', 1),
(78, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 10:52:37', '', 1),
(79, 0, 'vedant@gmali.com', 0x3a3a3100000000000000000000000000, '2020-01-17 11:02:49', '', 0),
(80, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 11:02:59', '', 1),
(81, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-17 17:35:07', '', 1),
(82, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 04:57:38', '', 1),
(83, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 05:28:28', '18-01-2020 11:08:32 AM', 1),
(84, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 05:41:32', '', 1),
(85, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 07:12:32', '18-01-2020 12:44:38 PM', 1),
(86, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 07:15:00', '', 1),
(87, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-18 08:42:55', '', 1),
(88, 3, 'z@g.c', 0x3a3a3100000000000000000000000000, '2020-01-18 09:58:06', '', 1),
(89, 4, 'z@g.c', 0x3a3a3100000000000000000000000000, '2020-01-18 10:06:38', '', 1),
(90, 0, 's@g.c', 0x3a3a3100000000000000000000000000, '2020-01-18 10:19:52', '', 0),
(91, 10, 'z@g.c', 0x3a3a3100000000000000000000000000, '2020-01-18 10:21:04', '18-01-2020 04:45:22 PM', 1),
(92, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-19 08:30:14', '', 1),
(93, 0, 'xyz@gmil.com', 0x3a3a3100000000000000000000000000, '2020-01-19 08:33:10', '', 0),
(94, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-19 08:33:30', '', 1),
(95, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-20 04:07:29', '', 1),
(96, 0, 'a@g.c', 0x3a3a3100000000000000000000000000, '2020-01-20 04:15:54', '', 0),
(97, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-20 04:16:14', '', 0),
(98, 1, 'vedant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-20 04:20:32', '20-01-2020 09:56:01 AM', 1),
(99, 0, 'VU4F1718115', 0x3a3a3100000000000000000000000000, '2020-01-20 05:17:11', '', 0),
(100, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 05:18:12', '20-01-2020 10:48:45 AM', 1),
(101, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 05:19:12', '20-01-2020 10:49:18 AM', 1),
(102, 0, 'true', 0x3a3a3100000000000000000000000000, '2020-01-20 05:28:22', '', 0),
(103, 0, 'True', 0x3a3a3100000000000000000000000000, '2020-01-20 05:28:44', '', 0),
(104, 0, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 05:45:44', '', 0),
(105, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 05:45:59', '20-01-2020 11:25:39 AM', 1),
(106, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 06:30:47', '', 1),
(107, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 06:46:46', '', 1),
(108, 1, '12345678', 0x3a3a3100000000000000000000000000, '2020-01-20 10:04:14', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'VU4F1718115', '12345678', 'e10adc3949ba59abbe56e057f20f883e', 1231231235, 'MUMBAI 40001', 'Uttar Pradesh', 'INDIA', 400009, '959202f7e5bb46f3426a1ce1eedffdeb.jpg', '2020-01-17 06:51:37', '2020-01-20 05:47:36', 1),
(2, 'VU4F1718008', '98765432', 'bc17d0d52b93012c78f327cb744aa95f', 0, NULL, NULL, NULL, NULL, NULL, '2020-01-17 09:16:44', '2020-01-20 05:08:28', 1),
(10, 'VU4F1718093', '12369874', 'c4ca4238a0b923820dcc509a6f75849b', 123456789, NULL, NULL, NULL, NULL, NULL, '2020-01-18 10:18:50', '2020-01-20 05:08:28', 1),
(11, 'VU4F1718103', '14789632', '2309edb436002c8ead69445101bf7425', 123456789, NULL, NULL, NULL, NULL, NULL, '2020-01-19 08:32:16', '2020-01-20 05:08:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
