-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2025 at 02:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_part`
--

CREATE TABLE `pc_part` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `last_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pc_part`
--

INSERT INTO `pc_part` (`id`, `name`, `quantity`, `price`, `brand`, `model`, `created_by`, `last_update`) VALUES
(1, 'Motherboard', 1, 23000, 'Asus', 'ROG STRIX B850-I GAMING WIFI', '', ''),
(2, 'Motherboard', 1, 70000, 'MSI', 'MEG Z890 GODLIKE', '', ''),
(3, 'Motherboard', 1, 48000, 'GigaByte', 'X870E AORUS MASTER X3D ICE', '', ''),
(4, 'Motherboard', 1, 29000, 'Asrock', 'X870E TAICHI OCF', '', ''),
(5, 'Motherboard', 1, 24000, 'Biostar', '890A-SILVER ', '', ''),
(6, 'CPU', 1, 40000, 'Intel', 'Intel Ultra 9 285 5.6ghz Cpu', '', ''),
(7, 'CPU', 1, 35000, 'Intel', 'Intel Core Ultra 9 285K', '', ''),
(8, 'CPU', 1, 44500, 'Intel', 'Intel Core I9-14900ks 4.5ghz Cpu', '', ''),
(9, 'CPU', 1, 47000, 'AMD', 'AMD Ryzen 9 9950X3D 16-Core Processor', '', ''),
(10, 'CPU', 1, 33000, 'AMD', 'AMD Ryzen 7 9800X3D Desktop Processor', '', ''),
(11, 'Fans', 1, 2200, 'Noctua', 'NOCTUA NF-A12x25', '', ''),
(12, 'Fans', 1, 1200, 'Corsair', 'RS120 ARGB 120mm PWM Fan', '', ''),
(13, 'Fans', 1, 3150, 'Lian Li', 'UNI FAN CL WIRELESS', '', ''),
(14, 'Fans', 1, 750, 'Arctic', 'P12 PWM PST A-RGB', '', ''),
(15, 'Fans', 1, 975, 'Cooler Master', 'Coolman CM-03 Infinity Mirror Led A-RGB Cooling Fan', '', ''),
(16, 'Case', 1, 2050, 'Antec', 'ANTEC AX20 Elite Black RGB Mid-Tower Gaming Case', '', ''),
(17, 'Case', 1, 3500, 'Asus', 'ASUS A21 (90DC00H0-B00000) Tempered Glass Micro-ATX Gaming Chassis', '', ''),
(18, 'Case', 1, 4400, 'Cooler Master', 'COOLER MASTER MASTERBOX TD500 V2 (TD500V2-KGNN-S00) Mesh Chassis', '', ''),
(19, 'Case', 1, 2100, 'Gamdias', 'GAMDIAS AURA GC1 ELITE Mesh RGB Mid-tower Case', '', ''),
(20, 'Case', 1, 2900, 'MSI', 'MSI MAG FORGE 120A AIRFLOW Tempered Glass ARGB MId Tower Gaming Chassis', '', ''),
(21, 'RAM', 1, 1900, 'Kingston', 'KINGSTON 8GB DDR4 3200MHZ FURY BEAST RAM', '', ''),
(22, 'RAM', 1, 3600, 'Team Group', 'TEAM 16GB DDR4 3200MHZ TFORCE DELTA TUF RGB RAM', '', ''),
(23, 'RAM', 1, 1400, 'Transcend', 'TRANSCEND 8GB DDR4 PC3200MHZ SODIMM RAM', '', ''),
(24, 'RAM', 1, 1400, 'Lexar', 'LEXAR 8GB DDR4 3200MHz (LD4AS008G-B3200GSST) CL22 SODIMM Memory', '', ''),
(25, 'RAM', 1, 2750, 'AGI', 'AGI Gear 16GB DDR4 3200MHz (2x 8GB) CL22 UDIMM Desktop Memory', '', ''),
(26, 'Graphics Card', 1, 24350, 'MSI', 'MSI GeForce RTX? 5060 GAMING TRIO OC 8GB GDDR7 128-bit Graphics Card', '', ''),
(27, 'Graphics Card', 1, 79750, 'Inno3D', 'INNO3D GeForce RTX? 5080 X3 16GB GDDR7 256-bit Graphics Card', '', ''),
(28, 'Graphics Card', 1, 17850, 'Asus', 'ASUS Dual Radeon? RX 7600 EVO OC Edition 8GB GDDR6 128-bit Graphics Card', '', ''),
(29, 'Graphics Card', 1, 10700, 'GigaByte', 'GIGABYTE GeForce RTX? 3050 WINDFORCE OC V2 6GB GDDR6 96-bit Graphics Card', '', ''),
(30, 'Graphics Card', 1, 28600, 'Sapphire', 'SAPPHIRE NITRO+ AMD Radeon? RX 9060 XT 16GB GDDR6 Graphics Card', '', ''),
(31, 'SSD', 1, 4800, 'Samsung', 'SAMSUNG 1TB 980 M.2 PCIE NVME (MZ-V8V1T0BW) Solid State Drive', '', ''),
(32, 'SSD', 1, 6950, 'Kingston', 'KINGSTON 2TB XS1000 (SXS1000/2000G) Black Portable External Solid State Drive -SSD', '', ''),
(33, 'SSD', 1, 3550, 'ADATA', 'ADATA 1TB LEGEND 710 M.2 PCIe NVMe (ALEG-710-1TCS) Solid State Drive', '', ''),
(34, 'SSD', 1, 16300, 'Western Digital', 'WESTERN DIGITAL 4TB SN7100 M.2 PCIe NMVe Solid State Drive', '', ''),
(35, 'SSD', 1, 3600, 'SanDisk', 'SANDISK 1TB PLUS 2.5\" Solid State Drive', '', ''),
(36, 'Keyboard', 1, 4950, 'Asus', 'ASUS ROG Falchion Ace (90MP0346-BKUA00) NX Red Switch Gaming Keyboard', '', ''),
(37, 'Keyboard', 1, 3600, 'Logitech', 'LOGITECH G413 SE Mechanical Keyboard', '', ''),
(38, 'Keyboard', 1, 3100, 'Aula', 'AULA F99 PRO Wireless Mechanical Keyboard', '', ''),
(39, 'Keyboard', 1, 2450, 'HyperX', 'HYPER X Alloy Core RGB Gaming Keyboard', '', ''),
(40, 'Keyboard', 1, 1050, 'Rapoo', 'RAPOO V500 PRO-87 TKL Mechanical Wireless Gaming Keyboard', '', ''),
(41, 'Keyboard', 1, 10450, 'Razer', 'RAZER BlackWidow V4 75% Black RGB Hot-swappable Mechanical Gaming Keyboard', '', ''),
(42, 'Mouse', 1, 980, 'Logitech', 'LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE', '', ''),
(43, 'Mouse', 1, 2100, 'Asus', 'ASUS TUF Gaming M4 Air Mouse', '', ''),
(44, 'Mouse', 1, 2695, 'Razer', 'RAZER COBRA (RZ01-04650100-R3M1) Wired Gaming Mouse', '', ''),
(45, 'Mouse', 1, 4400, 'HyperX', 'HyperX Pulsefire Saga Gaming Mouse', '', ''),
(46, 'Mouse', 1, 2150, 'Rapoo', 'RAPOO VT9 PRO Wireless Gaming Mouse', '', ''),
(47, 'Monitor', 1, 12100, 'MSI', 'MSI 27\" OPTIX G27C4X Curved Monitor', '', ''),
(48, 'Monitor', 1, 10000, 'Asus', 'ASUS 27\" VG279Q3A IPS TUF Gaming Monitor', '', ''),
(49, 'Monitor', 1, 10700, 'Acer', 'ACER 32\" Nitro ED320QR S3 Curved Gaming Monitor', '', ''),
(50, 'Monitor', 1, 33150, 'Samsung', 'SAMSUNG LS32DM801UEXXP 32\" Smart Monitor M8 M80D UHD', '', ''),
(51, 'Monitor', 1, 5150, 'HP', 'HP 23.8\" 524SF (94C18AA) IPS Monitor', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `id`, `last_update`, `created_by`, `position`, `fullname`) VALUES
('qwerty', 'qwert', 1, '2025-10-02 22:05:50', '2025-10-02', 'Admin', 'qwertyuiopasdfghjkl'),
('qwertyu', 'qwerty', 2, '2025-10-02 22:30:51', '2025-10-02', 'Admin', 'qwertyu'),
('eqwweqwewqe', 'qwerty', 3, '2025-10-02 22:31:16', '2025-10-02', 'employiee', 'qwertyu'),
('1234', '123123', 4, '2025-10-02 22:34:38', '2025-10-02', 'Admin', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_part`
--
ALTER TABLE `pc_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pc_part`
--
ALTER TABLE `pc_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
