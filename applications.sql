-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 03:32 PM
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
-- Database: `applications`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `ServiceType` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Link` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ServiceType`, `Description`, `Link`) VALUES
('A1', 'How to complete applications.Fill all the applications with correct format.', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FInstructions%20to%20Complete%20the%20Application%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('A11', 'How to complete applications.Fill all the applications with correct format.', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FInstructions%20to%20Complete%20the%20Application%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('A2', 'Application to obtain New Connection', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FApplication%20for%20obtaining%20New%20Service%20Connections%20%20Temporary%20Connections%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('A3', 'Standared Arrangement For new service', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FStandard%20Arrangement%20for%20Connecting%20a%20New%20Service%20Connection%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('A9', 'How to complete applications.Fill all the applications with correct format.', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FInstructions%20to%20Complete%20the%20Application%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('B1', 'Addendum to the Standard Agreement for Service Connections Solar', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FSolarPanelDetails%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('C1', 'Standared Agreement for service connection', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FStandard%20Agreement%20for%20Service%20Connections%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('D1', 'How to complete applications.Fill all the applications with correct format.', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FInstructions%20to%20Complete%20the%20Application%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download'),
('h1', 'How to complete applications.Fill all the applications with correct format.', 'https://mysliit-my.sharepoint.com/personal/it20212186_my_sliit_lk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download%2FInstructions%20to%20Complete%20the%20Application%2Epdf&parent=%2Fpersonal%2Fit20212186%5Fmy%5Fsliit%5Flk%2FDocuments%2FElectricityGrid%20%2D%20Download');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`ServiceType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
