-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2018 at 10:10 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `t_kategori_data`
--

CREATE TABLE `t_kategori_data` (
  `KATEGORI_DATA_ID` int(11) NOT NULL,
  `KATEGORI_DATA_NAMA` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori_kegiatan`
--

CREATE TABLE `t_kategori_kegiatan` (
  `KATEGORI_KEGIATAN_ID` int(11) NOT NULL,
  `KATEGORI_KEGIATAN_NAMA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori_lokasi`
--

CREATE TABLE `t_kategori_lokasi` (
  `KATEGORI_LOKASI_ID` int(11) NOT NULL,
  `KATEGORI_LOKASI_NAMA` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori_user`
--

CREATE TABLE `t_kategori_user` (
  `KATEGORI_USER_ID` int(11) NOT NULL,
  `KATEGORI_USER_NAMA` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_kegiatan`
--

CREATE TABLE `t_kegiatan` (
  `KEGIATAN_ID` varchar(30) NOT NULL,
  `KEGIATAN_NAMA` varchar(150) NOT NULL,
  `KEGIATAN_TANGGAL` date NOT NULL,
  `KEGIATAN_JAM` time NOT NULL,
  `KEGIATAN_KATEGORI_KEGIATAN_ID` int(11) NOT NULL,
  `KEGIATAN_KATEGORI_LOKASI_ID` int(11) NOT NULL,
  `KEGIATAN_ANGGARAN` varchar(50) NOT NULL,
  `KEGIATAN_PUBLIKASI` varchar(50) NOT NULL,
  `KEGIATAN_LAPORAN_NO` varchar(100) NOT NULL,
  `KEGIATAN_LAPORAN_TGL` date NOT NULL,
  `KEGIATAN_WAKTU_SELESAI` varchar(150) NOT NULL,
  `KEGIATAN_PERMOHONAN_PELIPUTAN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_peliput`
--

CREATE TABLE `t_peliput` (
  `PELIPUT_ID` int(11) NOT NULL,
  `PELIPUT_KEGIATAN_ID` int(11) NOT NULL,
  `PELIPUT_PERMOHONAN_ID` int(11) NOT NULL,
  `PELIPUT_TUGAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_permohonan_peliputan`
--

CREATE TABLE `t_permohonan_peliputan` (
  `PERMOHONAN_ID` int(11) NOT NULL,
  `PERMOHONAN_USER_UNIT_KERJA` int(11) NOT NULL,
  `PERMOHONAN_KEGIATAN_NAMA` text NOT NULL,
  `PERMOHONAN_KEGIATAN_TANGGAL` date NOT NULL,
  `PERMOHONAN_KEGIATAN_JAM` time NOT NULL,
  `PERMOHONAN_KEGIATAN_ANGGARAN` int(1) NOT NULL,
  `PERMOHONAN_SUMBER_ANGGARAN` varchar(50) NOT NULL,
  `PERMOHONAN_KEGIATAN_PUBLIKASI` varchar(50) NOT NULL,
  `PERMOHONAN_CATATAN` text NOT NULL,
  `PERMOHONAN_KEGIATAN_KATEGORI_KEGIATAN_ID` int(11) NOT NULL,
  `PERMOHONAN_KEGIATAN_KATEGORI_LOKASI_ID` int(11) NOT NULL,
  `PERMOHONAN_STATUS` int(1) NOT NULL,
  `PERMOHONAN_OTORISASI` int(11) NOT NULL,
  `PERMOHONAN_ACC_ASDEP` int(1) NOT NULL,
  `PERMOHONAN_DISPOSISI_ASDEP` text NOT NULL,
  `PERMOHONAN_ACC_KABID` int(1) NOT NULL,
  `PERMOHONAN_DISPOSISI_KABID` text NOT NULL,
  `PERMOHONAN_PENUGASAN` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `USER_ID` int(11) NOT NULL,
  `USER_PASSWORD` varchar(35) NOT NULL,
  `USER_NAMA` varchar(50) NOT NULL,
  `KATEGORI_USER_ID` int(11) NOT NULL,
  `USER_NO_ID` varchar(50) NOT NULL,
  `USER_ORGANISASI` text NOT NULL,
  `USER_ORGANISASI_ALAMAT` text NOT NULL,
  `USER_UNIT_KERJA` varchar(250) NOT NULL,
  `USER_JABATAN` varchar(150) NOT NULL,
  `USER_EMAIL` varchar(100) NOT NULL,
  `USER_NO_TELP` varchar(50) NOT NULL,
  `USER_ID_SCAN` varchar(100) NOT NULL,
  `USER_PIN` int(10) NOT NULL,
  `USER_STATUS` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_kategori_data`
--
ALTER TABLE `t_kategori_data`
  ADD PRIMARY KEY (`KATEGORI_DATA_ID`);

--
-- Indexes for table `t_kategori_kegiatan`
--
ALTER TABLE `t_kategori_kegiatan`
  ADD PRIMARY KEY (`KATEGORI_KEGIATAN_ID`);

--
-- Indexes for table `t_kategori_lokasi`
--
ALTER TABLE `t_kategori_lokasi`
  ADD PRIMARY KEY (`KATEGORI_LOKASI_ID`);

--
-- Indexes for table `t_kategori_user`
--
ALTER TABLE `t_kategori_user`
  ADD PRIMARY KEY (`KATEGORI_USER_ID`);

--
-- Indexes for table `t_kegiatan`
--
ALTER TABLE `t_kegiatan`
  ADD PRIMARY KEY (`KEGIATAN_ID`);

--
-- Indexes for table `t_peliput`
--
ALTER TABLE `t_peliput`
  ADD PRIMARY KEY (`PELIPUT_ID`);

--
-- Indexes for table `t_permohonan_peliputan`
--
ALTER TABLE `t_permohonan_peliputan`
  ADD PRIMARY KEY (`PERMOHONAN_ID`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_kategori_data`
--
ALTER TABLE `t_kategori_data`
  MODIFY `KATEGORI_DATA_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_kategori_kegiatan`
--
ALTER TABLE `t_kategori_kegiatan`
  MODIFY `KATEGORI_KEGIATAN_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_kategori_lokasi`
--
ALTER TABLE `t_kategori_lokasi`
  MODIFY `KATEGORI_LOKASI_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_kategori_user`
--
ALTER TABLE `t_kategori_user`
  MODIFY `KATEGORI_USER_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_peliput`
--
ALTER TABLE `t_peliput`
  MODIFY `PELIPUT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_permohonan_peliputan`
--
ALTER TABLE `t_permohonan_peliputan`
  MODIFY `PERMOHONAN_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
