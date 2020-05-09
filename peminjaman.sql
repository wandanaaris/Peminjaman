-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 09:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `gol`) VALUES
('1', 'Heri', 'I'),
('2', 'Wanda', 'I'),
('4', 'Abdul', 'III'),
('5', 'Tini', 'III'),
('6', 'Tono', 'III'),
('7', 'tedi', 'III'),
('8', 'SANI', 'II'),
('9', 'ARMAN', 'IV');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_transaksi` varchar(10) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `kd_unit` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `jlh_pinjam` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_transaksi`, `nik`, `kd_unit`, `tgl_pinjam`, `jlh_pinjam`) VALUES
('1', '2', '2', '2020-05-08', 900000),
('10', '5', '5', '2020-05-09', 800000),
('2', '2', '1', '2020-05-04', 80000),
('3', '1', '1', '2020-05-04', 56),
('4', '5', '3', '2020-05-06', 700000),
('5', '4', '2', '2020-05-06', 40000),
('6', '6', '2', '2020-05-07', 100000),
('7', '9', '1', '2020-05-07', 780000),
('8', '2', '5', '2020-05-07', 300000),
('9', '8', '3', '2020-05-07', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `kd_unit` varchar(10) NOT NULL,
  `nama_unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`kd_unit`, `nama_unit`) VALUES
('1', 'Painting'),
('2', 'Design'),
('3', 'Towel'),
('4', 'Clean'),
('5', 'Office');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`kd_unit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
