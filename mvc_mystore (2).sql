-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 02:27 PM
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
-- Database: `mvc_mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `created_at`, `category_id`) VALUES
(1, 'Laptop Lenovo', 7500000.00, 2, '2026-10-16 20:52:42', 1),
(2, 'Mouse Logitech', 250000.00, 10, '2026-10-16 20:52:42', 2),
(3, 'Keyboard Mechanical', 850000.00, 5, '2026-10-16 20:52:42', 3),
(4, 'Laptop Lenovo', 7500000.00, 2, '2026-10-17 02:21:18', 1),
(5, 'Mouse Logitech', 250000.00, 10, '2026-10-17 02:21:18', 2),
(6, 'Keyboard Mechanical', 850000.00, 5, '2026-10-17 02:21:18', 3),
(7, 'Laptop Lenovo', 7500000.00, 2, '2026-10-17 02:21:18', 1),
(8, 'Mouse Logitech', 250000.00, 10, '2026-10-17 02:21:18', 2),
(9, 'Keyboard Mechanical', 850000.00, 5, '2026-10-17 02:21:18', 3),
(10, 'Laptop Lenovo', 7500000.00, 2, '2026-10-17 05:24:03', 1),
(11, 'Mouse Logitech', 250000.00, 10, '2026-10-17 05:24:03', 2),
(12, 'Keyboard Mechanical', 850000.00, 5, '2026-10-17 05:24:03', 3),
(13, 'Monitor Samsung 24 Inch', 2200000.00, 8, '2026-11-03 10:09:44', 1),
(14, 'Printer Epson L3210', 2500000.00, 6, '2026-11-03 10:09:44', 1),
(15, 'Flashdisk Sandisk 32GB', 75000.00, 50, '2026-11-03 10:09:44', 2),
(16, 'Flashdisk Sandisk 64GB', 120000.00, 40, '2026-11-03 10:09:44', 2),
(17, 'Harddisk External 1TB', 850000.00, 15, '2026-11-03 10:09:44', 2),
(18, 'SSD Kingston 240GB', 450000.00, 20, '2026-11-03 10:09:44', 2),
(19, 'SSD Kingston 480GB', 750000.00, 15, '2026-11-03 10:09:44', 2),
(20, 'Webcam Logitech C270', 350000.00, 12, '2026-11-03 10:09:44', 2),
(21, 'Headset Gaming Fantech', 275000.00, 18, '2026-11-03 10:09:44', 2),
(22, 'Speaker Logitech Z213', 450000.00, 10, '2026-11-03 10:09:44', 2),
(23, 'Keyboard Gaming RGB', 325000.00, 14, '2026-11-03 10:09:44', 3),
(24, 'Mouse Gaming RGB', 200000.00, 25, '2026-11-03 10:09:44', 2),
(25, 'Mousepad Gaming XL', 85000.00, 30, '2026-11-03 10:09:44', 2),
(26, 'Laptop Asus VivoBook', 8500000.00, 5, '2026-11-03 10:09:44', 1),
(27, 'Laptop Acer Aspire 5', 7800000.00, 7, '2026-11-03 10:09:44', 1),
(28, 'Laptop HP 14', 7200000.00, 6, '2026-11-03 10:09:44', 1),
(29, 'Laptop Dell Inspiron', 8900000.00, 4, '2026-11-03 10:09:44', 1),
(30, 'Monitor LG 22 Inch', 1800000.00, 9, '2026-11-03 10:09:44', 1),
(31, 'Monitor AOC 24 Inch', 2100000.00, 7, '2026-11-03 10:09:44', 1),
(32, 'Printer Canon Pixma', 1900000.00, 5, '2026-11-03 10:09:44', 1),
(33, 'Kabel HDMI 2 Meter', 50000.00, 50, '2026-11-03 10:09:44', 2),
(34, 'Kabel LAN Cat6', 45000.00, 60, '2026-11-03 10:09:44', 2),
(35, 'Router TP-Link', 350000.00, 20, '2026-11-03 10:09:44', 2),
(36, 'Access Point Mikrotik', 1200000.00, 8, '2026-11-03 10:09:44', 2),
(37, 'UPS APC 650VA', 850000.00, 10, '2026-11-03 10:09:44', 2),
(38, 'Proyektor Epson', 5200000.00, 3, '2026-11-03 10:09:44', 1),
(39, 'Scanner Canon', 2400000.00, 5, '2026-11-03 10:09:44', 1),
(40, 'RAM DDR4 8GB', 350000.00, 25, '2026-11-03 10:09:44', 2),
(41, 'RAM DDR4 16GB', 650000.00, 15, '2026-11-03 10:09:44', 2),
(42, 'Processor Intel i3', 1500000.00, 10, '2026-11-03 10:09:44', 2),
(43, 'Processor Intel i5', 2800000.00, 8, '2026-11-03 10:09:44', 2),
(44, 'Processor Ryzen 5', 3000000.00, 7, '2026-11-03 10:09:44', 2),
(45, 'Motherboard ASUS', 1600000.00, 10, '2026-11-03 10:09:44', 2),
(46, 'VGA GTX 1650', 3200000.00, 6, '2026-11-03 10:09:44', 2),
(47, 'VGA RTX 3060', 5600000.00, 4, '2026-11-03 10:09:44', 2),
(48, 'Casing Gaming', 450000.00, 12, '2026-11-03 10:09:44', 2),
(49, 'Power Supply 500W', 550000.00, 10, '2026-11-03 10:09:44', 2),
(51, 'Meja Komputer', 750000.00, 8, '2026-11-03 10:09:44', 1),
(52, 'Kursi Gaming', 1450000.00, 49, '2026-11-03 10:09:44', 1),
(55, 'Acer', 1000000.00, 3, '2026-11-03 12:34:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'riana', '$2y$10$vDYQqGH8PqA.4EoqLl0viuY4DFBJ42eCnvAoEHbsVNf0svmKeToPK'),
(2, 'jessheiu', '$2y$10$bFie4lMYR3o1k14HlR0W/e0kwZGGACzS38b1qeib4T3DDIwiV1ezm'),
(3, 'jesshei1', '$2y$10$bp.JK1poqyVS3ffolr8qPu99Jlhr5szs5TCRmWLd.zrNPQDGUOP3q'),
(4, 'jessheijuntak', '$2y$10$GsCkWJAhup8rVvE6Q2qlaOOZPSOfRuiP6vQsdpiFePuuNjKIuA22S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
