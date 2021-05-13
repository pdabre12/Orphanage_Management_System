-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 07:49 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `sr_no` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`sr_no`, `username`, `password`) VALUES
(1, 'jay', 'jay123');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(6) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ashal', 'ashal123'),
(2, 'jay', 'jay123');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `admin_id` int(6) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) NOT NULL,
  `complaint` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE `financial` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`sr_no`, `name`, `contact_no`) VALUES
(1, 'ashal', 987654321),
(5, 'sam', 987654323),
(8, 'agnelo', 899474376),
(12, 'jay', 87563902),
(17, 'rion', 987654322),
(18, 'vinay', 987654322);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`sr_no`, `name`, `quantity`) VALUES
(1, 'soap', 70),
(2, 'toothbrush', 100),
(3, 'notebooks', 56),
(4, 'towels', 40),
(5, 'plates', 60),
(6, 'cups', 70),
(7, 'towels', 40),
(10, 'tshirts', 79),
(11, 'shorts', 90);

-- --------------------------------------------------------

--
-- Table structure for table `inventorys`
--

CREATE TABLE `inventorys` (
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventorys`
--

INSERT INTO `inventorys` (`id`, `username`, `password`) VALUES
(1, 'swati', 'swati123'),
(2, 'ramesh', 'ramesh123');

-- --------------------------------------------------------

--
-- Table structure for table `maths_marks`
--

CREATE TABLE `maths_marks` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `maths_marks` int(4) NOT NULL,
  `eng_marks` int(4) NOT NULL,
  `science_marks` int(4) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maths_marks`
--

INSERT INTO `maths_marks` (`id`, `name`, `age`, `gender`, `maths_marks`, `eng_marks`, `science_marks`, `password`) VALUES
(13, 'reynold', 19, 'M', 445, 0, 0, 'Reynold@123'),
(17, 'prince', 12, 'M', 0, 0, 0, 'Prince@123'),
(18, 'prince', 12, 'M', 0, 0, 0, 'Prince@123');

-- --------------------------------------------------------

--
-- Table structure for table `medical_dental`
--

CREATE TABLE `medical_dental` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_dental`
--

INSERT INTO `medical_dental` (`sr_no`, `name`, `contact_no`) VALUES
(2, 'rion', 987654322),
(4, 'ram', 254657342),
(7, 'nash', 982371743),
(8, 'cdcdv', 4444);

-- --------------------------------------------------------

--
-- Table structure for table `medical_eyecheckup`
--

CREATE TABLE `medical_eyecheckup` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_eyecheckup`
--

INSERT INTO `medical_eyecheckup` (`sr_no`, `name`, `contact_no`) VALUES
(2, 'sneh', 2147483647),
(3, 'donald', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `medical_vaccination`
--

CREATE TABLE `medical_vaccination` (
  `sr_no` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_vaccination`
--

INSERT INTO `medical_vaccination` (`sr_no`, `name`, `contact_no`) VALUES
(2, 'sherwin', 987654321);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(6) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `designation` varchar(8) NOT NULL,
  `salary` int(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `designation`, `salary`, `phone`, `password`) VALUES
(1, 'Ramu', 'Cleaner', 5000, 999999999, ''),
(3, 'vinay', 'Teacher', 18000, 87346483, 'vinay123'),
(58, 'vivian', 'teacher', 10000, 82892381, 'vivian123'),
(60, 'shobha', 'teacher', 9000, 84398930, 'shobha123'),
(61, 'pratik', 'doctor', 5000000, 2147483647, 'pratik123'),
(62, 'sham', 'worker', 10000, 989898988, 'sham'),
(63, 'reynold', 'teacher', 20000, 772727272, 'reynold123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `financial`
--
ALTER TABLE `financial`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `inventorys`
--
ALTER TABLE `inventorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maths_marks`
--
ALTER TABLE `maths_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_dental`
--
ALTER TABLE `medical_dental`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `medical_eyecheckup`
--
ALTER TABLE `medical_eyecheckup`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `medical_vaccination`
--
ALTER TABLE `medical_vaccination`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial`
--
ALTER TABLE `financial`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventorys`
--
ALTER TABLE `inventorys`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maths_marks`
--
ALTER TABLE `maths_marks`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4444445;

--
-- AUTO_INCREMENT for table `medical_dental`
--
ALTER TABLE `medical_dental`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medical_eyecheckup`
--
ALTER TABLE `medical_eyecheckup`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medical_vaccination`
--
ALTER TABLE `medical_vaccination`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
