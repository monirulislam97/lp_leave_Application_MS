-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 12:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `newapplication`
--

CREATE TABLE `newapplication` (
  `id` varchar(15) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Sdate` varchar(15) DEFAULT NULL,
  `Edate` varchar(15) DEFAULT NULL,
  `days` int(2) DEFAULT NULL,
  `reason` text NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newapplication`
--

INSERT INTO `newapplication` (`id`, `name`, `Sdate`, `Edate`, `days`, `reason`, `status`, `applicationId`) VALUES
('1004', 'Beth', '2021-09-15', '2021-09-16', 2, 'Hospital', 'New Application', 1),
('1005', 'Chad', '2021-09-15', '2021-09-17', 3, 'Travel', 'New Application', 2),
('1006', 'Cindy', '2021-08-15', '2021-08-19', 5, 'Travel', 'New Application', 3);

-- --------------------------------------------------------

--
-- Table structure for table `previousapplication`
--

CREATE TABLE `previousapplication` (
  `id` varchar(15) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Sdate` varchar(15) DEFAULT NULL,
  `Edate` varchar(15) DEFAULT NULL,
  `days` int(2) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `applicationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previousapplication`
--

INSERT INTO `previousapplication` (`id`, `name`, `Sdate`, `Edate`, `days`, `reason`, `status`, `applicationId`) VALUES
('1003', 'Bobby', '2018-03-15', '2018-03-16', 2, 'Hospital', 'Approved', 1),
('1003', 'Bobby', '2019-03-15', '2019-03-19', 5, 'Tired', 'Approved', 2),
('1004', 'Beth', '2018-07-15', '2018-07-17', 3, 'Travel', 'Rejected', 3),
('1006', 'Cindy', '2018-04-15', '2018-04-16', 2, 'Hospital', 'Approved', 4),
('1005', 'Chad', '2018-05-15', '2018-05-17', 3, 'Tired', 'Approved', 5),
('1004', 'Beth', '2019-01-15', '2019-01-16', 2, 'Hospital', 'Approved', 6),
('1005', 'Chad', '2019-03-15', '2019-03-17', 3, 'Travel', 'Approved', 7),
('1006', 'Cindy', '2019-03-15', '2019-03-16', 2, 'Hospital', 'Approved', 8),
('1005', 'Chad', '2019-06-15', '2019-06-17', 3, 'Tired', 'Rejected', 9),
('1006', 'Cindy', '2019-04-15', '2019-04-16', 2, 'Hospital', 'Approved', 10),
('1005', 'Chad', '2019-07-15', '2019-07-17', 3, 'Travel', 'Approved', 11),
('1004', 'Beth', '2019-02-15', '2019-02-16', 2, 'Hospital', 'Approved', 12),
('1005', 'Chad', '2019-09-15', '2019-09-17', 3, 'Tired', 'Rejected', 13),
('1006', 'Cindy', '2019-06-15', '2019-06-16', 2, 'Hospital', 'Approved', 14),
('1005', 'Chad', '2019-11-15', '2019-11-17', 3, 'Travel', 'Approved', 15),
('1006', 'Cindy', '2019-07-15', '2019-07-16', 2, 'Hospital', 'Approved', 16),
('1005', 'Chad', '2020-01-15', '2020-01-17', 3, 'Tired', 'Rejected', 17),
('1006', 'Cindy', '2020-02-15', '2020-02-19', 5, 'Travel', 'Approved', 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) DEFAULT NULL,
  `id` varchar(15) DEFAULT NULL,
  `password` varchar(13) DEFAULT NULL,
  `level` int(3) DEFAULT NULL,
  `userno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `id`, `password`, `level`, `userno`) VALUES
('Annie', '1001', 'admin1', 1, 1),
('Adam', '1002', 'admin2', 1, 2),
('Bobby', '1003', 'manager1', 2, 3),
('Beth', '1004', 'manager2', 2, 4),
('Chad', '1005', 'staff1', 3, 5),
('Cindy', '1006', 'staff5', 3, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newapplication`
--
ALTER TABLE `newapplication`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `previousapplication`
--
ALTER TABLE `previousapplication`
  ADD PRIMARY KEY (`applicationId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newapplication`
--
ALTER TABLE `newapplication`
  MODIFY `applicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `previousapplication`
--
ALTER TABLE `previousapplication`
  MODIFY `applicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
