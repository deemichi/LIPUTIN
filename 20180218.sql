-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 05:21 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_humas`
--
CREATE DATABASE IF NOT EXISTS `ci_humas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ci_humas`;

-- --------------------------------------------------------

--
-- Table structure for table `t_jadwal`
--

CREATE TABLE `t_jadwal` (
  `id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `keg` text NOT NULL,
  `tgl` datetime NOT NULL,
  `unit_kerja` varchar(150) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `jenis_liputan` varchar(50) NOT NULL,
  `petugas` varchar(20) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_jadwal`
--
ALTER TABLE `t_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_jadwal`
--
ALTER TABLE `t_jadwal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
