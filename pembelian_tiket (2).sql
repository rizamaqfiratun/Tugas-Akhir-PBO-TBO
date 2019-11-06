-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 02:37 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembelian_tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `nama` varchar(30) NOT NULL,
  `pertandingan` varchar(30) NOT NULL,
  `jenis_tiket` varchar(10) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `total_bayar` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`nama`, `pertandingan`, `jenis_tiket`, `jumlah`, `total_bayar`) VALUES
('sasa', 'AREMA VS PERSIB', 'VIP', 2, 200000),
('riza', 'AREMA VS PERSIB', 'VIP', 2, 200000),
('imma', 'AREMA VS PERSIB', 'VIP', 2, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id`, `username`, `password`) VALUES
(1, 'riza', 'riza1234');

-- --------------------------------------------------------

--
-- Table structure for table `login_minimarket`
--

CREATE TABLE `login_minimarket` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_minimarket`
--

INSERT INTO `login_minimarket` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_tlp` int(18) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `nama`, `no_tlp`, `username`, `password`) VALUES
(1, 'Riza Maqfiratun N', 812162143, 'rizaxmn', '123'),
(2, 'sasa', 768, 'sasa', 'sasa'),
(3, 'caca', 87776, 'caca', 'caca'),
(4, 'nafisah', 977908, 'nafis', 'nafis'),
(7, 'kaka', 8577648, 'kaka', 'kaka'),
(8, 'xxx', 70098, 'xxx', 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `tim` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `tempat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`tim`, `tanggal`, `tempat`) VALUES
('AREMA VS PERSIB', '03-11-2019', 'Stadion Kanjuruhan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
