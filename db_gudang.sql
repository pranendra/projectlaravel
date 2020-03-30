-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2020 at 03:30 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `persediaanakhir`
--

CREATE TABLE `persediaanakhir` (
  `id_barang` int(11) NOT NULL,
  `id_persbarang` char(4) NOT NULL,
  `kode_barang` char(3) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_pokok` char(10) NOT NULL,
  `harga_jual` char(10) NOT NULL,
  `jumlah_awal` char(4) NOT NULL,
  `jumlah_penjualan` char(4) NOT NULL,
  `jumlah_masuk` char(4) NOT NULL,
  `total` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persediaanakhir`
--

INSERT INTO `persediaanakhir` (`id_barang`, `id_persbarang`, `kode_barang`, `nama_barang`, `harga_pokok`, `harga_jual`, `jumlah_awal`, `jumlah_penjualan`, `jumlah_masuk`, `total`) VALUES
(1, '01', 'A01', 'Aqua Gelas', '5000', '10000', '100', '50', '20', '70'),
(3, '02', 'A03', 'Tempe', '5000', '10000', '300', '150', '150', '300');

-- --------------------------------------------------------

--
-- Table structure for table `persediaanbarang`
--

CREATE TABLE `persediaanbarang` (
  `id_barang` int(11) NOT NULL,
  `id_persbarang` char(4) NOT NULL,
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(55) NOT NULL,
  `hargapokok` char(6) NOT NULL,
  `hargajualsatuan` char(6) NOT NULL,
  `jumlah` char(4) NOT NULL,
  `nilai` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persediaanbarang`
--

INSERT INTO `persediaanbarang` (`id_barang`, `id_persbarang`, `kodebarang`, `namabarang`, `hargapokok`, `hargajualsatuan`, `jumlah`, `nilai`) VALUES
(1, '01', 'A01', 'Aqua Botoll', '3000', '3500', '100', '350000'),
(4, '02', 'A03', 'Tempee', '100000', '200000', '100', '30000'),
(7, '03', 'A06', 'Tahu', '20000', '50000', '100', '100000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persediaanakhir`
--
ALTER TABLE `persediaanakhir`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `persediaanbarang`
--
ALTER TABLE `persediaanbarang`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persediaanakhir`
--
ALTER TABLE `persediaanakhir`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `persediaanbarang`
--
ALTER TABLE `persediaanbarang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
