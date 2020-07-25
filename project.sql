-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2020 at 10:20 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(10) UNSIGNED NOT NULL,
  `s_time` varchar(50) DEFAULT NULL,
  `e_time` varchar(50) DEFAULT NULL,
  `course` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `s_time`, `e_time`, `course`, `status`) VALUES
(2, '03:00', '04:00', 6, 0),
(3, '01:00', '02:00', 10, 0),
(4, '04:00', '05:00', 5, 1),
(5, '04:00', '05:00', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `course_fee` varchar(50) DEFAULT NULL,
  `course_type` varchar(50) DEFAULT NULL,
  `course_duration` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_fee`, `course_type`, `course_duration`) VALUES
(1, 'python', '3200', 'Certificate', '3 months'),
(2, 'web', '3200', 'Certificate', '3 months'),
(5, '.net', '500', 'Certificate', '6 months'),
(6, 'Machine Learning', '7000', 'Certificate', '6 months'),
(10, 'java', '4500', 'Certificate', '3 months'),
(12, 'Oracle', '12000', 'Certificate', '1 year'),
(14, 'java', '12000', 'Diploma', '1 year');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `f_contact` varchar(50) DEFAULT NULL,
  `f_email` varchar(50) DEFAULT NULL,
  `f_address` varchar(50) DEFAULT NULL,
  `starttime` varchar(50) DEFAULT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  `batch_unique_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `f_name`, `f_contact`, `f_email`, `f_address`, `starttime`, `endtime`, `batch_unique_id`) VALUES
(1, 'Amit Bhatiya', '123456789', 'ab@gmail.com', 'abc', '04:00', '05:00', 4),
(2, 'Amit Bhatiya', '123456789', 'ab@gmail.com', 'abc', '01:00', '02:00', 3),
(5, 'Shubham', '54684848', 'sc@gmail.com', 'kuch ni', '03:00', '04:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `eno` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `course_id` int(3) UNSIGNED DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `course_type` varchar(50) DEFAULT NULL,
  `faculty_name` varchar(50) DEFAULT NULL,
  `s_time` varchar(50) DEFAULT NULL,
  `e_time` varchar(50) DEFAULT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`eno`, `name`, `qualification`, `course_id`, `father_name`, `contact`, `address`, `course`, `course_type`, `faculty_name`, `s_time`, `e_time`, `status`) VALUES
(1, 'Raghav Sharma', 'B.E', 5, 'Atul Sharma', '123456789', 'abc', '.net', 'Certificate', 'Amit Bhatiya', '04:00', '05:00', 1),
(2, 'Shourya', 'B.E', 5, 'Raghav Sharma', '12345679', 'avcv', 'Machine Learning', 'Certificate', 'Shubham', '03:00', '04:00', 1),
(3, 'Rohit', 'BSc', 5, 'Madnsjjfj', '8781214997', 'sefe', '.net', 'Certificate', 'Amit Bhatiya', '04:00', '05:00', 1),
(4, 'ajas', 'hbb', 5, 'hhbhb', '55454', 'ss', '.net', 'Certificate', 'Amit Bhatiya', '04:00', '05:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`,`course`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`,`batch_unique_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`eno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `eno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
