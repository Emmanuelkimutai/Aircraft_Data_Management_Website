-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 08:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `ACModel` varchar(255) NOT NULL,
  `ACType` varchar(255) NOT NULL,
  `FlightSpeed` int(11) NOT NULL,
  `FuelCapacity` int(11) NOT NULL,
  `MissionRange` int(11) NOT NULL,
  `WaterCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`ACModel`, `ACType`, `FlightSpeed`, `FuelCapacity`, `MissionRange`, `WaterCapacity`) VALUES
('DC-10', 'Heavy', 876, 21700, 6500, 12000),
('C-130', 'Medium', 541, 6900, 3800, 3000),
('P-3', 'Medium', 607, 2500, 9200, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `airfield`
--

CREATE TABLE `airfield` (
  `AFID` varchar(255) NOT NULL,
  `Runways` int(11) NOT NULL,
  `Hangers` int(11) NOT NULL,
  `LOC_LAT` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `LOC_LONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airfield`
--

INSERT INTO `airfield` (`AFID`, `Runways`, `Hangers`, `LOC_LAT`, `Image`, `LOC_LONG`) VALUES
('AF-Alpha', 2, 12, 10, '10', 0),
('AF-Beta', 1, 6, 50, '30', 0),
('AF-Gamma', 2, 10, 80, '20', 0),
('AF-Delta', 1, 9, 20, '80', 0),
('AF-Sigma', 1, 8, 70, '10', 0),
('AF-Tau', 2, 10, 90, '70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `availableaircraft`
--

CREATE TABLE `availableaircraft` (
  `ACID` varchar(255) NOT NULL,
  `ACModel` varchar(255) NOT NULL,
  `AFAssigned` varchar(255) NOT NULL,
  `ACStatus` enum('Scheduled','Delayed','Departed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availableaircraft`
--

INSERT INTO `availableaircraft` (`ACID`, `ACModel`, `AFAssigned`, `ACStatus`) VALUES
('DC-10-1', 'DC-10', 'AF-Alpha', ''),
('DC-10-2', 'DC-10', 'AF-Alpha', ''),
('DC-10-3', 'DC-10', 'AF-Alpha', ''),
('P-3-1', 'P-3', 'AF-Beta', ''),
('P-3-2', 'P-3', 'AF-Beta', ''),
('P-3-3', 'P-3', 'AF-Beta', ''),
('P-3-4', 'P-3', 'AF-Sigma', ''),
('P-3-5', 'P-3', 'AF-Sigma', ''),
('P-3-6', 'P-3', 'AF-Sigma', ''),
('C-130-1', 'C-130', 'AF-Delta', ''),
('C-130-2', 'C-130', 'AF-Delta', ''),
('C-130-3', 'C-130', 'AF-Gamma', ''),
('C-130-4', 'C-130', 'AF-Gamma', ''),
('DC-10-1', 'DC-10', 'AF-Alpha', ''),
('DC-10-2', 'DC-10', 'AF-Alpha', ''),
('DC-10-3', 'DC-10', 'AF-Alpha', ''),
('P-3-1', 'P-3', 'AF-Beta', ''),
('P-3-2', 'P-3', 'AF-Beta', ''),
('P-3-3', 'P-3', 'AF-Beta', ''),
('P-3-4', 'P-3', 'AF-Sigma', ''),
('P-3-5', 'P-3', 'AF-Sigma', ''),
('P-3-6', 'P-3', 'AF-Sigma', ''),
('C-130-1', 'C-130', 'AF-Delta', ''),
('C-130-2', 'C-130', 'AF-Delta', ''),
('C-130-3', 'C-130', 'AF-Gamma', ''),
('C-130-4', 'C-130', 'AF-Gamma', '');

-- --------------------------------------------------------

--
-- Table structure for table `firetarget`
--

CREATE TABLE `firetarget` (
  `FireNumber` bigint(20) UNSIGNED NOT NULL,
  `FireID` varchar(255) NOT NULL,
  `FireLocation` varchar(255) NOT NULL,
  `FireStatus` enum('Contained','Uncontained') NOT NULL,
  `FireSize` enum('Large','Small') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `firetarget`
--

INSERT INTO `firetarget` (`FireNumber`, `FireID`, `FireLocation`, `FireStatus`, `FireSize`) VALUES
(1, 'Fire-1', 'Sector-1', 'Uncontained', 'Large'),
(2, 'Fire-2', 'Sector-2', '', 'Small'),
(3, 'Fire-3', 'Sector-3', 'Contained', ''),
(4, 'Fire-4', 'Sector-4', 'Uncontained', '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` varchar(255) NOT NULL,
  `Vegetation` enum('Corn','small grains','hay') NOT NULL,
  `Terrain` enum('Plateau','Mountain','Plain') NOT NULL,
  `LOC_LAT` int(11) NOT NULL,
  `LOC_LONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `firetarget`
--
ALTER TABLE `firetarget`
  ADD UNIQUE KEY `FireNumber_3` (`FireNumber`),
  ADD KEY `FireNumber` (`FireNumber`),
  ADD KEY `FireNumber_2` (`FireNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `firetarget`
--
ALTER TABLE `firetarget`
  MODIFY `FireNumber` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
