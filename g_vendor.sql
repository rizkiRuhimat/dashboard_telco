-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 02:31 AM
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
-- Database: `telco`
--

-- --------------------------------------------------------

--
-- Table structure for table `g_vendor`
--

CREATE TABLE `g_vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `status` int(2) DEFAULT 1 COMMENT '0=Non Active, 1= Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `g_vendor`
--

INSERT INTO `g_vendor` (`id`, `vendor_name`, `created_date`, `last_update`, `status`) VALUES
(1, 'CAKRA FLASH', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(2, 'SISKOM', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(3, 'GSM MODEM', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(4, 'EXCELCOM', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(5, 'MD MEDIA', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(6, 'UNKNOWN', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(7, 'JATIS (inactive)', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(8, 'INFOBIP', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(9, 'NUSA RELOAD', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(10, 'BHINEKA', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(11, 'TELKOMSEL', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(12, 'DIRECT', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(13, 'INDOSAT', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(14, 'MITRACOMM', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(15, 'IMS', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(16, 'SSP LITE', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(17, 'SMARTFREN', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(18, 'HUTCHINSON', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(19, 'INTERNATIONAL', '2020-06-03 01:18:14', '2020-06-03 01:18:14', 1),
(20, 'VERIHUBS', '2021-08-04 14:10:08', '2021-08-04 14:10:46', 1),
(21, 'Genx1', '2022-11-30 22:04:46', '2022-11-30 22:04:46', 1),
(22, 'ADAI', '2023-02-03 15:33:16', '2023-02-03 15:33:16', 1),
(23, 'Monty', '2023-09-23 00:28:32', '2023-09-23 00:28:32', 1),
(24, 'Vonage', '2023-10-31 16:19:50', '2023-10-31 16:19:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `g_vendor`
--
ALTER TABLE `g_vendor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `g_vendor`
--
ALTER TABLE `g_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
