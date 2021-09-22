-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 12:30 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `state` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(225) COLLATE utf8_bin NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `phone`, `name`, `state`, `address`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '0917', 'علی', '', '', '2021-09-02 06:05:51', NULL, NULL),
(2, '0917', 'یوسف', '', '', '2021-09-02 06:36:25', NULL, NULL),
(10, '0917', 'ماشاالله', '', '', '2021-09-05 11:27:19', NULL, NULL),
(11, '0917', 'mehran', '', '', '2021-09-21 00:10:17', NULL, NULL),
(12, '0917', 'mehran', 'kh', 'bousher kh', '2021-09-21 00:11:09', NULL, NULL),
(13, '0917', 'mehran', 'kh', 'bousher kh', '2021-09-21 16:21:20', NULL, NULL),
(14, '0917', 'mehran', 'kh', 'bousher kh', '2021-09-21 16:22:14', NULL, NULL),
(15, '09376489525', 'علیرضا کارگر', 'عالی شهر', 'بوشهر خیابان ساحلی', '2021-09-21 16:25:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factors`
--

CREATE TABLE `factors` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `date` varchar(20) COLLATE utf8_bin NOT NULL,
  `year` varchar(20) COLLATE utf8_bin NOT NULL,
  `month` varchar(20) COLLATE utf8_bin NOT NULL,
  `day` varchar(20) COLLATE utf8_bin NOT NULL,
  `hour` varchar(11) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `factors`
--

INSERT INTO `factors` (`id`, `customer_id`, `total_price`, `date`, `year`, `month`, `day`, `hour`) VALUES
(1, 15, 165000, '', '', '', '', ''),
(2, 15, 21000, '', '', '', '', ''),
(3, 15, 21000, '1400/6/30', '', '', '', ''),
(4, 15, 21000, '1400/6/30', '', '', '', '23:48'),
(5, 15, 21000, '1400/6/30', '1400', '6', '30', '23:51'),
(6, 10, 10000, '1400/6/31', '1400', '6', '31', '0:20'),
(7, 10, 200000, '1400/6/31', '1400', '6', '31', '2:13'),
(8, 10, 20000, '1400/6/31', '1400', '6', '31', '4:46'),
(9, 10, 20000, '1400/6/31', '1400', '6', '31', '4:46');

-- --------------------------------------------------------

--
-- Table structure for table `livestock`
--

CREATE TABLE `livestock` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `natinal_id` bigint(20) NOT NULL,
  `father` varchar(100) COLLATE utf8_bin NOT NULL,
  `type_work` varchar(100) COLLATE utf8_bin NOT NULL,
  `veterinary_address` varchar(100) COLLATE utf8_bin NOT NULL,
  `state` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(100) COLLATE utf8_bin NOT NULL,
  `booklet_number` bigint(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livestock`
--

INSERT INTO `livestock` (`id`, `name`, `lastname`, `natinal_id`, `father`, `type_work`, `veterinary_address`, `state`, `city`, `booklet_number`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'علی', 'کشاورز', 354, 'عبدالله', 'عشایر', '1', 'دشتی', 'کاکی', 88942, '2021-09-02 06:06:49', '2021-09-02 06:06:49', NULL),
(2, 'majid', 'hoseini', 357, 'عبدالله', 'عشایری', '1', 'بوشهر', 'خورموج', 846846, '2021-09-04 13:49:04', '2021-09-04 13:49:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livestock_information`
--

CREATE TABLE `livestock_information` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `vaccine_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `type_livestock` varchar(100) COLLATE utf8_bin NOT NULL,
  `number_livestock` bigint(20) NOT NULL,
  `number_eligible_livestock` bigint(20) NOT NULL,
  `vaccinated_number` bigint(20) NOT NULL,
  `date` varchar(20) COLLATE utf8_bin NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livestock_information`
--

INSERT INTO `livestock_information` (`id`, `employee_id`, `livestock_id`, `vaccine_id`, `type`, `type_livestock`, `number_livestock`, `number_eligible_livestock`, `vaccinated_number`, `date`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, 1, 1, 1, 'ecip', 'cow', 30, 20, 19, '1400/02/11', '2021-09-02 06:08:37', NULL, NULL),
(3, 2, 1, 1, 'ecip', 'cow', 20, 10, 6, '1400/02/11', '2021-09-04 13:50:01', NULL, NULL),
(4, 1, 2, 1, 'person', 'dog', 100, 90, 50, '1400/02/06', '2021-09-05 06:47:59', NULL, NULL),
(5, 1, 1, 1, 'فردی', 'گاو', 30, 45, 30, '1400', '2021-09-20 18:39:22', NULL, NULL),
(6, 1, 1, 1, 'فردی', 'گاو', 30, 45, 30, '1400', '2021-09-20 18:39:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livestock_type`
--

CREATE TABLE `livestock_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livestock_type`
--

INSERT INTO `livestock_type` (`id`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'گاو', '2021-09-20 18:24:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `factor_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `factor_id`, `product_id`, `number`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, 2, 8, '2021-09-21 19:06:02', '2021-09-21 19:06:02', '2021-09-21 19:06:02'),
(2, 1, 1, 5, '2021-09-21 19:06:02', '2021-09-21 19:06:02', '2021-09-21 19:06:02'),
(3, 2, 2, 8, '2021-09-21 19:07:36', '2021-09-21 19:07:36', '2021-09-21 19:07:36'),
(4, 2, 1, 5, '2021-09-21 19:07:36', '2021-09-21 19:07:36', '2021-09-21 19:07:36'),
(5, 3, 2, 8, '2021-09-21 19:16:09', '2021-09-21 19:16:09', '2021-09-21 19:16:09'),
(6, 3, 1, 5, '2021-09-21 19:16:09', '2021-09-21 19:16:09', '2021-09-21 19:16:09'),
(7, 4, 2, 8, '2021-09-21 19:18:20', '2021-09-21 19:18:20', '2021-09-21 19:18:20'),
(8, 4, 1, 5, '2021-09-21 19:18:20', '2021-09-21 19:18:20', '2021-09-21 19:18:20'),
(9, 5, 2, 8, '2021-09-21 19:21:00', '2021-09-21 19:21:00', '2021-09-21 19:21:00'),
(10, 5, 1, 5, '2021-09-21 19:21:00', '2021-09-21 19:21:00', '2021-09-21 19:21:00'),
(11, 6, 1, 10, '2021-09-21 20:50:28', '2021-09-21 20:50:28', '2021-09-21 20:50:28'),
(12, 7, 1, 20, '2021-09-21 22:43:44', '2021-09-21 22:43:44', '2021-09-21 22:43:44'),
(13, 7, 2, 90, '2021-09-21 22:43:44', '2021-09-21 22:43:44', '2021-09-21 22:43:44'),
(14, 8, 1, 10, '2021-09-22 01:16:14', '2021-09-22 01:16:14', '2021-09-22 01:16:14'),
(15, 8, 2, 5, '2021-09-22 01:16:14', '2021-09-22 01:16:14', '2021-09-22 01:16:14'),
(16, 9, 1, 10, '2021-09-22 01:16:17', '2021-09-22 01:16:17', '2021-09-22 01:16:17'),
(17, 9, 2, 5, '2021-09-22 01:16:17', '2021-09-22 01:16:17', '2021-09-22 01:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` bigint(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'پرده', 1000, '2021-09-21 19:05:23', '2021-09-21 19:05:23', NULL),
(2, 'لباس عروس', 2000, '2021-09-21 19:05:45', '2021-09-21 19:05:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `veterinary_address`
--

CREATE TABLE `veterinary_address` (
  `id` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `veterinary_address`
--

INSERT INTO `veterinary_address` (`id`, `address`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(3, 'عالی شهر', '2021-09-21 15:59:47', NULL, NULL),
(4, 'بوشهر', '2021-09-21 16:10:38', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factors`
--
ALTER TABLE `factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestock`
--
ALTER TABLE `livestock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestock_information`
--
ALTER TABLE `livestock_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestock_type`
--
ALTER TABLE `livestock_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veterinary_address`
--
ALTER TABLE `veterinary_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `factors`
--
ALTER TABLE `factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `livestock`
--
ALTER TABLE `livestock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `livestock_information`
--
ALTER TABLE `livestock_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `livestock_type`
--
ALTER TABLE `livestock_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `veterinary_address`
--
ALTER TABLE `veterinary_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
