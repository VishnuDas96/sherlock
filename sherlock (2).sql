-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 05:47 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sherlock`
--

-- --------------------------------------------------------

--
-- Table structure for table `limit_check`
--

CREATE TABLE `limit_check` (
  `id` int(25) NOT NULL,
  `limit_qus` int(10) NOT NULL,
  `qus_time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `limit_check`
--

INSERT INTO `limit_check` (`id`, `limit_qus`, `qus_time`) VALUES
(1, 1, '22/08/2020 8:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `phone` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course` varchar(75) NOT NULL,
  `password` varchar(25) NOT NULL,
  `answered` tinyint(4) NOT NULL DEFAULT 0,
  `last_answered` timestamp NOT NULL DEFAULT current_timestamp(),
  `ktu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`phone`, `name`, `course`, `password`, `answered`, `last_answered`, `ktu`) VALUES
('1234567890', 'vishnu', 'mca', 'vishnu', 0, '2020-08-21 03:42:53', 'Kte17mca059'),
('7736555321', 'vishnu', 'mca', '12345678', 0, '2020-08-21 03:43:28', 'Kte17mca059'),
('8089150299', 'vishnu', 'mca', '12345', 0, '2020-05-20 06:29:36', 'Kte17mca059'),
('9061333221', 'vishnu', 'mca', '1234', 2, '2020-05-20 06:14:10', 'Kte17mca059'),
('9595959595', 'Siny', 'MCA', '1234567890', 4, '2020-02-23 02:12:13', ''),
('9745489348', 'sarath m', '9995031469', '1111', 0, '2020-05-05 10:45:42', ''),
('987654321', 'Jeny', 'M.Tech', '1234567890', 14, '2020-02-23 02:51:45', ''),
('9895123456', 'sarath m', 'ccc', '1234', 0, '2020-05-05 05:47:48', ''),
('9895845304', 'Sarath m', 'mca', '12123', 1, '2020-05-05 11:44:40', ''),
('9898989898', 'Sily', 'MCA', '1234567890', 19, '2020-02-23 01:50:42', ''),
('9995031469', 'sarath m', 'mma', '1111', 0, '2020-05-05 05:14:17', ''),
('9999999999', 'Danny', 'B.Tech', '1234567890', 19, '2020-02-23 02:54:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `no` int(11) NOT NULL,
  `questions` varchar(500) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`no`, `questions`, `answer`, `img`) VALUES
(1, 'Who is the Actor of Iron Man ?', '1729', 3),
(2, 'Who is the founder of Avengers ?', 'good going hunter', 3),
(3, 'Who is the Actor of Iron Man ?', 'kepler-452b', 4),
(4, 'Who is the Actor of Iron Man ?', 'rafael nadal', 3),
(5, 'Who is the Actor of Iron Man ?', 'michelle payne', 5),
(6, 'Who is the Actor of Iron Man ?', 'cold play', 6),
(7, 'Who is the Actor of Iron Man ?', 'horcruxes', 3),
(8, 'Who is the Actor of Iron Man ?', 'eroica', 0),
(9, 'Who is the Actor of Iron Man ?', 'mariana trench', 0),
(10, 'Who is the Actor of Iron Man ?', '221b baker street', 0),
(11, 'Who is the Actor of Iron Man ?', 'ans', 0),
(12, 'Who is the Actor of Iron Man ?', 'ans', 0),
(13, 'Who is the Actor of Iron Man ?', 'ans', 0),
(14, 'Who is the Actor of Iron Man ?', 'ans', 0),
(15, 'Who is the Actor of Iron Man ?', 'ans', 0),
(16, 'Who is the Actor of Iron Man ?', 'ans', 0),
(17, 'Who is the Actor of Iron Man ?', 'ans', 0),
(18, 'Who is the Actor of Iron Man ?', 'ans', 0),
(19, 'Who is the Actor of Iron Man ?', 'ans', 0),
(20, 'Who is the Actor of Terminator ?', 'ans', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `limit_check`
--
ALTER TABLE `limit_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `limit_check`
--
ALTER TABLE `limit_check`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
