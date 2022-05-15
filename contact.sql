-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 03:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `DistrictCode` varchar(10) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `ComplainNo` varchar(45) DEFAULT NULL,
  `CustomerServiceNo` varchar(45) DEFAULT NULL,
  `NewConnectionsNo` varchar(45) DEFAULT NULL,
  `EmergencyNo` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`DistrictCode`, `Description`, `ComplainNo`, `CustomerServiceNo`, `NewConnectionsNo`, `EmergencyNo`, `Address`) VALUES
('A1', 'Ampara,Hingurana branch', '0631267854', '0637896531', '0634594294', '0639087623', 'No.12,Hingurana,Hingurana'),
('B1\n', 'Badulla Main Branch', '0554378921', '0552218976', '0558973465', '0552222474', 'no15,BaduluTower,Badulla'),
('C1', 'Colombo branch Rajagiriya', '0112872779', '0112897658', '0118975427', '0118976347', 'No12/A,Rajagiriya Junction,Rajagiriya'),
('C2', 'Colombo branch Nugegoda', '0112872999', '0112897111', '0118975222', '0118976666', 'No125/A,NugegodaTown,Nugegoda'),
('G1', 'Galle Main Branch', '0912237999', '0911234561', '0912237552', '0912237789', 'no.128,Galle sea roard,Galle'),
('G2', 'Galle Unawatuna Branch', '0912244499', '0916794561', '0912237990', '0912232069', 'no.128,Baggegama roard,Galle'),
('K1', 'Kaluthara Wadduwa Branch', '0342237999', '0342237998', '0342237555', '0342237789', 'HXX5+WC2, Temple road, Wadduwa'),
('K2', 'Kluthara Main branch', '0341251863', '0341368753', '0340987651', '0341789547', 'no.128,Wasskaduwa,Kaluthara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`DistrictCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
