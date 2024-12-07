-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 08:23 PM
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
-- Database: `cees`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `jenis_transaksi` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tujuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `username`, `jenis_transaksi`, `nominal`, `tanggal`, `tujuan`) VALUES
(1, 'Martino', 'Tarik', 10000, '2024-12-05 09:07:06', ''),
(2, 'Martino', 'Setor', 20000, '2024-12-05 09:07:11', ''),
(3, 'Najib', 'Tarik', 10000, '2024-12-05 09:11:03', ''),
(5, 'Martino', 'Transfer Keluar', 22222, '2024-12-05 09:21:48', 'Najib'),
(6, 'Najib', 'Transfer Masuk', 22222, '2024-12-05 09:21:48', 'Martino'),
(7, 'Martino', 'Transfer Keluar', 20000, '2024-12-05 09:24:12', 'Najib'),
(8, 'Najib', 'Transfer Masuk', 20000, '2024-12-05 09:24:12', 'Martino'),
(9, 'Martino', 'Tarik', 22222, '2024-12-05 09:25:34', NULL),
(10, 'Martino', 'Setor', 20000, '2024-12-05 09:25:42', NULL),
(11, 'Martino', 'Transfer Keluar', 5555, '2024-12-05 09:26:10', 'Najib'),
(12, 'Najib', 'Transfer Masuk', 5555, '2024-12-05 09:26:10', 'Martino'),
(15, 'Martino', 'Setor', 20000000, '2024-12-05 09:32:47', NULL),
(16, 'Martino', 'Tarik', 21212, '2024-12-05 09:32:51', NULL),
(17, 'martino', 'Tarik', 2000000, '2024-12-06 17:57:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` int(50) DEFAULT NULL,
  `saldo` int(50) DEFAULT 100000,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `password`, `saldo`, `tanggal`) VALUES
(9, 'Martino', 203, 18008789, '2024-12-05 09:06:53'),
(10, 'Najib', 231, 137777, '2024-12-05 09:09:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
