-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2016 at 09:41 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NULL,
  `username` varchar(255) NULL,
  `email` varchar(255) NULL,
  `password` varchar(300) NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'xyz@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int(11) NULL,
  `adminid` int(11) NULL,
  `ip` varbinary(16) NULL,
  `logintime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NULL,
  `course_code` varchar(255) NULL,
  `course_sn` varchar(255) NULL,
  `course_fn` varchar(255) NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'BIM', 'Bachelor  of information management', '2023-09-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2023-09-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2023-09-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2023-09-11 19:34:18'),
(5, 'BE765', 'BE', 'Bachelor of Engineering', '2023-09-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NULL,
  `roomno` int(11) NULL,
  `seater` int(11) NULL,
  `feespm` int(11) NULL,
  `foodstatus` int(11) NULL,
  `stayfrom` date NULL,
  `duration` int(11) NULL,
  `course` varchar(500) NULL,
  `regno` int(11) NULL,
  `firstName` varchar(500)  NULL,
  `middleName` varchar(500)  NULL,
  `lastName` varchar(500) NULL,
  `gender` varchar(250) NULL,
  `contactno` bigint(11)  NULL,
  `emailid` varchar(500) NULL,
  `egycontactno` bigint(11) NULL,
  `guardianName` varchar(500) NULL,
  `corresAddress` varchar(500) NULL,
  `corresCIty` varchar(500) NULL,
  `corresState` varchar(500) NULL,
  `pmntAddress` varchar(500) NULL,
  `pmntCity` varchar(500) NULL,
  `pmnatetState` varchar(500)  NULL,
  `pmntPincode` int(11) NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(6, 100, 5, 8000, 0, '2023-08-22', 5, 'Bachelor  of Technology', 10806121, 'Anuj', '', 'kumar', 'male', 8285703354, 'anuj.lpu1@gmail.com', 0, 'XYZ', 'Mother', 8285703354, 'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass', 'Aligarh', 'Uttar Pradesh', 202001, 'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass', 'Aligarh', 'Uttar Pradesh', 202001, '2016-04-16 08:24:09', ''),
(7, 100, 5, 8000, 1, '2023-08-22', 4, 'Bachelor of Engineering', 108061211, 'Anuj', 'test', 'kumar', 'male', 8467067344, 'test@gmail.com', 8285703354, 'test', 'test', 9999857868, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, '2016-06-23 11:54:35', ''),
(8, 112, 3, 4000, 0, '2023-08-22', 5, 'Bachelor  of Science', 102355, 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(9, 132, 5, 2000, 1, '2023-08-22', 6, 'Bachelor of Engineering', 586952, 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', 8285703354, 'demo', 'demo', 8285703354, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'Uttar Pradesh', 202001, '2016-06-26 16:40:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NULL,
  `seater` int(11) NULL,
  `room_no` int(11) NULL,
  `fees` int(11) NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2023-08-22:45:43'),
(2, 2, 201, 6000, '2023-08-22 01:30:47'),
(3, 2, 200, 6000, '2023-08-22 01:30:58'),
(4, 3, 112, 4000, '2023-08-22 01:31:07'),
(5, 5, 132, 2000, '2023-08-22 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--


-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NULL,
  `userId` int(11) NULL,
  `userEmail` varchar(255) NULL,
  `userIp` varbinary(16) NULL,
  `city` varchar(255) NULL,
  `country` varchar(255) NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2023-08-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '',  ' 2023-08-22 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-08-2211:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2023-08-22 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2023-08-2216:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int(11) NULL,
  `regNo` varchar(255) NULL,
  `firstName` varchar(255) NULL,
  `middleName` varchar(255) NULL,
  `lastName` varchar(255) NULL,
  `gender` varchar(255) NULL,
  `contactNo` bigint(20) NULL,
  `email` varchar(255) NULL,
  `password` varchar(255) NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NULL,
  `passUdateDate` varchar(45) NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'ram', ' ', 'kumar', 'male', 8467067344, 'ram@gmail.com', 'Test@123', '2023-08-22 04:21:33', '30-08-2023 11:04:15', '05-09-2023 05:16:49'),
(19, '102355', 'rahul', 'kumar', 'thapa', 'male', 6786786786, 'rahul@gmail.com', '6786786786',' 2023-08-22 16:33:36', '', ''),
(20, '586952', 'sita', '', 'kumari', 'female', 8596185625, 'sita@gmail.com', '8596185625', '2023-08-22 16:40:07', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
