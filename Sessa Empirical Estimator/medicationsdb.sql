-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2025 at 04:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicationsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `med_events`
--

CREATE TABLE `med_events` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `per_day` decimal(10,2) NOT NULL,
  `category` varchar(10) NOT NULL,
  `category_l1` varchar(255) NOT NULL,
  `category_l2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `med_events`
--

INSERT INTO `med_events` (`id`, `patient_id`, `event_date`, `duration`, `per_day`, `category`, `category_l1`, `category_l2`) VALUES
(1, 1, '2024-02-01', 30, 1.50, 'A02', 'ALIMENTARY TRACT AND METABOLISM', 'DRUGS FOR ACID RELATED DISORDERS'),
(2, 2, '2024-02-05', 10, 2.00, 'B01', 'BLOOD AND BLOOD FORMING ORGANS', 'ANTITHROMBOTIC AGENTS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `med_events`
--
ALTER TABLE `med_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_patient` (`patient_id`),
  ADD KEY `idx_category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `med_events`
--
ALTER TABLE `med_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
