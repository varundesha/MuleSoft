-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 12:46 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MovieName` varchar(30) NOT NULL,
  `LeadActor` varchar(30) DEFAULT NULL,
  `LeadActress` varchar(30) DEFAULT NULL,
  `YearOfRelease` int(11) DEFAULT NULL,
  `DirectorName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MovieName`, `LeadActor`, `LeadActress`, `YearOfRelease`, `DirectorName`) VALUES
('3 Idiots', 'Aamir Khan', 'Kareena Kapoor', 2009, 'Rajkumar Hirani'),
('Ajab Prem Ki Ghazab Kahani', 'Ranbir Kapoor', 'Katrina Kaif', 2009, 'Rajkumar Santoshi'),
('Happy Days', 'Varun Sandesh', 'Tamannaah Bhatia', 2007, 'Sekhar Kammula'),
('Julayi', 'Allu Arjun', 'Ileana D\'Cruz', 2012, 'Trivikram Srinivas'),
('K.G.F: Chapter 1', 'Yash', 'Srinidhi Shetty', 2018, 'Prashanth Neel'),
('Lucky', 'Yash', 'Ramya', 2012, 'Soori'),
('Spider-Man: Far from Home', 'Tom Holland', 'Zendaya', 2019, 'Jon Watts'),
('Venom', 'Tom hardy', 'Michelle Williams', 2018, 'Ruben Fleischer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MovieName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
