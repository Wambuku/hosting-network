-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 04:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lssemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `Admin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `Admin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 0729785654, 'adminuser@gmail.com', 'Test@123', '2022-06-14 12:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `Networkcategory`
--

CREATE TABLE `Network Category` (
  `ID` int(10) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Networkcategory`
--

INSERT INTO `Network Category` (`ID`, `Category`, `CreationDate`) VALUES
(1, 'JTL', '2022-05-29 00:41:22'),
(2, 'Zuku', '2022-05-30 05:41:18'),
(3, 'Safaricom', '2022-05-30 05:41:27'),
(4, 'Telkom', '2022-05-30 05:41:36'),
(5, 'Faiba', '2022-05-30 05:41:46'),
(6, 'Airtel', '2022-05-30 05:41:58'),
(7, 'Test category', '2022-05-10 04:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(50) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">Local</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;search is the use of specialized Internet&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">search engines</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;that allow users to submit geographically constrained searches against a structured database of&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">local business.</span><div><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">This is for testing.</span></div>', NULL, NULL, '2022-06-14 16:58:33'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'test@gmail.com', 8529631478, '2022-06-14 16:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `Attendant`
--

CREATE TABLE `Attendant` (
  `ID` int(10) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblperson`
--

INSERT INTO `Attendant` (`ID`, `Category`, `Name`, `Picture`, `MobileNumber`, `Address`, `City`, `RegDate`) VALUES
(2, 'Zuku', 'John', '1e6ae4ada992769567b71815f124fac51575261441.jpg', 6464564654, 'Vasnat Kunj J&K-2345 New Delhi', 'New Delhi', '2022-05-02 04:42:21'),
(3, 'Faiba', 'Klaesh', 'efc1a80c391be252d7d777a437f868701575261539.jpg', 6464654654, 'p-186, Kasal Plaza New Delhi', 'New Delhi', '2022-05-02 04:42:59'),
(4, 'Telkom', 'Joesph Rana', '1e6ae4ada992769567b71815f124fac51575261598.jpg', 4646546546, 'K-908, Laxmi Nagar New Delhi', 'New Delhi', '2022-05-02 04:42:58'),
(5, 'Safaricom', 'Joginder Das', '55ccf27d26d7b23839986b6ae2e447ab1575261706.jpg', 8787446464, 'J&K-789 Laxmi Nagar New Delhi', 'New Delhi', '2022-05-02 04:42:46'),
(6, 'Airtel', 'Harish Singh', '7fdc1a630c238af0815181f9faa190f51575261743.jpg', 6543486465, 'H-890808,XYX', 'Noida', '2022-05-02 04:42:23'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `networkcategory`
--
ALTER TABLE `Network Category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `CreationDate` (`CreationDate`);

--
-- Indexes for table `page`
--
ALTER TABLE `Page`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `Attendant`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Category_2` (`Category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `Admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Networkcategory`
--
ALTER TABLE `Network Category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `Page`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `Attendant`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
