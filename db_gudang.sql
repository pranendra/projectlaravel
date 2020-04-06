-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2020 at 10:12 AM
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
  `kode_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `harga_pokok` char(6) NOT NULL,
  `harga_jual` char(6) NOT NULL,
  `jumlah_awal` char(4) NOT NULL,
  `jumlah_penjualan` char(4) NOT NULL,
  `jumlah_masuk` char(4) NOT NULL,
  `total` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persediaanakhir`
--

INSERT INTO `persediaanakhir` (`id_barang`, `kode_barang`, `nama_barang`, `tanggal`, `harga_pokok`, `harga_jual`, `jumlah_awal`, `jumlah_penjualan`, `jumlah_masuk`, `total`) VALUES
(1, 'A01', 'Aqua Botol', '2020-04-06', '3000', '3500', '100', '50', '100', '150'),
(3, 'A02', 'Stella Home Air Freshener Apple Fiesta', '2020-04-06', '27000', '29000', '50', '25', '50', '75'),
(8, 'A03', 'Kursi Mainan', '2020-04-06', '30000', '35000', '100', '20', '20', '100'),
(9, 'A04', 'Sosro Fruit Tea Apel', '2020-04-06', '3200', '3000', '100', '50', '100', '150'),
(10, 'A05', 'Lampu Bohlam', '2020-04-06', '15000', '14500', '100', '50', '100', '150'),
(12, 'A06', 'Kopi Kapal API', '2020-04-06', '14000', '12500', '100', '50', '100', '150'),
(13, 'A07', 'Buku Komik Petruk Gareng', '2020-04-06', '6199', '35366', '61', '11', '50', '100'),
(14, 'A08', 'Gelas Kaca', '2020-04-06', '39201', '44989', '25', '15', '90', '100'),
(15, 'A09', 'Piring Kaca', '2020-04-06', '36182', '19746', '40', '20', '80', '100'),
(16, 'A10', 'Keset Lantai', '2020-04-06', '20521', '12112', '81', '11', '80', '150'),
(17, 'A11', 'Marjan Melon', '2020-04-06', '48143', '26401', '81', '11', '80', '150'),
(18, 'A12', 'Plastik Bungkus', '2020-04-06', '46170', '9402', '42', '12', '70', '100'),
(19, 'A13', 'Wadah Es Batu', '2020-04-06', '48393', '64077', '66', '16', '50', '100'),
(20, 'A14', 'Freshcare', '2020-04-06', '35467', '12328', '14', '4', '90', '100'),
(21, 'A15', 'Permen Frozz', '2020-04-06', '35522', '50838', '43', '3', '60', '100'),
(22, 'B01', 'Gantungan Baju', '2020-04-07', '37028', '64367', '70', '20', '50', '100'),
(23, 'B02', 'Pulpen', '2020-04-07', '19182', '44284', '100', '50', '50', '100'),
(24, 'B03', 'Spidol', '2020-04-07', '29713', '8913', '73', '3', '30', '100'),
(25, 'B04', 'Lampu Bohlam', '2020-04-07', '22186', '42612', '73', '3', '30', '100'),
(26, 'B05', 'Energen Coklat', '2020-04-07', '42232', '39678', '77', '7', '30', '100'),
(27, 'B06', 'Energen Vanilla', '2020-04-07', '28582', '62184', '53', '3', '50', '100'),
(28, 'B07', 'Energen Kacang HIjau', '2020-04-07', '36601', '18793', '35', '5', '70', '100'),
(29, 'B08', 'Energen Jahe', '2020-04-07', '42621', '48206', '20', '10', '90', '100'),
(30, 'B09', 'Luwak White Coffee', '2020-04-07', '10750', '45544', '100', '50', '50', '100'),
(31, 'B10', 'Luwak White Coffee Arabic', '2020-04-07', '46156', '49392', '78', '8', '30', '100'),
(32, 'B11', 'Anget Sari Susu Jahe', '2020-04-07', '41128', '65451', '59', '9', '50', '100'),
(33, 'B12', 'Freshco Kopi Susu', '2020-04-07', '37001', '42150', '74', '4', '30', '100'),
(34, 'B13', 'Freshco Mocca', '2020-04-07', '43522', '50299', '64', '4', '40', '100'),
(35, 'B14', 'Kopi ABC susu', '2020-04-07', '17109', '10051', '62', '2', '40', '100'),
(36, 'B15', 'Kopi ABC Mocca', '2020-04-07', '11630', '14232', '11', '11', '100', '100'),
(37, 'C01', 'Kabel Listrik', '2020-04-07', '32483', '11248', '60', '60', '100', '100'),
(38, 'C02', 'Baterai ABC AAA', '2020-04-07', '32514', '15892', '49', '9', '60', '100'),
(39, 'C03', 'Baterai ABC AA', '2020-04-07', '11082', '21418', '84', '14', '30', '100'),
(40, 'C04', 'Baterai ABC A', '2020-04-07', '8485', '26226', '51', '11', '60', '100'),
(41, 'C05', 'Baterai ABC Alkaline', '2020-04-07', '39645', '57886', '2', '2', '50', '50'),
(42, 'C06', 'Sekarung Beras Tani', '2020-04-08', '38371', '5921', '67', '17', '50', '100'),
(43, 'C07', 'youC1000 Lemon Water', '2020-04-08', '15855', '57568', '87', '37', '50', '100'),
(44, 'C08', 'youC1000 Orange Water', '2020-04-08', '15467', '16105', '56', '6', '50', '100'),
(45, 'C09', 'youC1000 Apple', '2020-04-08', '23037', '21637', '27', '17', '90', '100'),
(46, 'C10', 'youC1000 Orange', '2020-04-08', '49726', '61055', '28', '8', '80', '100'),
(47, 'C11', 'youC1000 Lemon', '2020-04-08', '20427', '28220', '78', '28', '50', '100'),
(48, 'C12', 'Aqua Gelas', '2020-04-08', '44107', '65374', '76', '26', '50', '100'),
(49, 'C13', 'Yakult', '2020-04-08', '23596', '23177', '28', '8', '80', '100'),
(50, 'C14', 'Teh Gelas', '2020-04-08', '38472', '46253', '50', '20', '70', '100'),
(51, 'C15', 'Teh RIO', '2020-04-08', '5271', '11844', '84', '4', '20', '100'),
(52, 'D01', 'Teh Sisri', '2020-04-08', '11252', '14223', '74', '24', '50', '100'),
(53, 'D02', 'Tea Jus', '2020-04-08', '13479', '57909', '77', '27', '50', '100'),
(54, 'D03', 'Jas Jus', '2020-04-08', '37594', '51143', '66', '16', '50', '100'),
(55, 'D04', 'Marimas', '2020-04-08', '28780', '30967', '99', '49', '50', '100'),
(56, 'D05', 'Milkuat', '2020-04-08', '16631', '64121', '42', '12', '70', '100'),
(57, 'D06', 'Pulpen Standard Hitam', '2020-04-08', '16355', '63222', '87', '37', '50', '50'),
(58, 'D07', 'Pulpen Standard Biru', '2020-04-08', '31041', '36268', '25', '5', '80', '100'),
(59, 'D08', 'Pulpen Standard Merah', '2020-04-08', '17084', '55754', '41', '11', '70', '100'),
(60, 'D09', 'Pulpen PILOT', '2020-04-08', '11196', '50701', '67', '17', '50', '100'),
(61, 'D10', 'Pulpen PILOT BIRU', '2020-04-08', '49002', '17354', '39', '19', '80', '100'),
(62, 'D11', 'Garnier ', '2020-04-09', '20700', '17070', '87', '37', '50', '100'),
(63, 'D12', 'Garnier Vitamin C', '2020-04-09', '13776', '66395', '89', '9', '20', '100'),
(64, 'D13', 'Garnier Men Ice Charcool', '2020-04-09', '46546', '43921', '40', '10', '70', '100'),
(65, 'D14', 'Garnier Men Wasabi', '2020-04-09', '18802', '62164', '61', '1', '40', '100'),
(66, 'D15', 'Garnier Men', '2020-04-09', '9226', '12348', '14', '4', '90', '100'),
(67, 'E01', 'Ponds White', '2020-04-09', '5896', '36827', '38', '8', '70', '100'),
(68, 'E02', 'Ponds', '2020-04-09', '21750', '56789', '25', '5', '80', '100'),
(69, 'E03', 'Ponds Men', '2020-04-09', '29571', '66994', '74', '4', '30', '100'),
(70, 'E04', 'Ponds Men Ice', '2020-04-09', '10271', '34542', '83', '33', '50', '100'),
(71, 'E05', 'Ponds Men Oil', '2020-04-09', '19345', '33314', '9', '4', '95', '100'),
(72, 'E06', 'Sabun LIfebuoy', '2020-04-09', '18453', '54079', '6', '1', '95', '100'),
(73, 'E07', 'Sabun Nuvo', '2020-04-09', '36201', '44704', '4', '1', '97', '100'),
(74, 'E08', 'Sabun Lux', '2020-04-09', '36040', '51125', '76', '6', '30', '100'),
(75, 'E09', 'Sabun GIV', '2020-04-09', '20666', '50567', '6', '1', '95', '100'),
(76, 'E10', 'Sabun Wangi', '2020-04-09', '18201', '31682', '37', '7', '70', '100'),
(77, 'E11', 'Shampoo Clear', '2020-04-09', '14765', '5989', '64', '4', '40', '100'),
(78, 'E12', 'Shampoo Lifebuoy', '2020-04-09', '41997', '27379', '6', '1', '95', '100'),
(79, 'E13', 'Shampoo Sunsilk', '2020-04-09', '44014', '24271', '76', '6', '30', '100'),
(80, 'E14', 'Shampoo Clear Men', '2020-04-09', '42165', '65580', '98', '8', '10', '100'),
(81, 'E15', 'Shampoo Rejoice', '2020-04-09', '7029', '24638', '60', '10', '50', '100'),
(82, 'F01', 'Pomade Clear', '2020-04-10', '40707', '53896', '16', '6', '90', '100'),
(83, 'F02', 'Pomade Gatsby Merah', '2020-04-10', '40361', '24081', '8', '3', '95', '100'),
(84, 'F03', 'Pomade Gatsby Biru', '2020-04-10', '44352', '18971', '26', '6', '80', '100'),
(85, 'F04', 'Pomade Gatsby Biru', '2020-04-10', '12266', '40594', '93', '3', '10', '100'),
(86, 'F05', 'Pomade Gatsby Ungu', '2020-04-10', '32561', '21562', '31', '1', '70', '100'),
(87, 'F06', 'Earphone Pionner SE-C3T', '2020-04-10', '7661', '5014', '54', '4', '50', '100'),
(88, 'F07', 'Earphone Zenith', '2020-04-10', '19262', '28882', '50', '10', '60', '100'),
(89, 'F08', ' Earphone RM-580', '2020-04-10', '20337', '22351', '89', '9', '20', '100'),
(90, 'F09', 'Earphone In Ear JBL', '2020-04-10', '36946', '55449', '17', '7', '90', '100'),
(91, 'F10', 'Earphone Armageddon Mark 5', '2020-04-10', '24143', '32716', '62', '2', '40', '100'),
(92, 'F11', 'Earphone KB-Ear KBEAR F1', '2020-04-10', '8526', '69529', '14', '4', '90', '100'),
(93, 'F12', 'Earphone Zenith Pure Balance Armature Earphone', '2020-04-10', '23603', '55521', '32', '2', '70', '100'),
(94, 'F13', 'Earphone Earbuds Headset Sennheiser', '2020-04-10', '36338', '57997', '63', '3', '40', '100'),
(95, 'F14', 'Earphone Philips Headphone in Ear', '2020-04-10', '21774', '66608', '90', '40', '50', '100'),
(96, 'F15', 'Earphone Sony in-Ear Phone', '2020-04-10', '5241', '55057', '71', '21', '50', '100'),
(97, 'G01', 'Nabati Richeese Wafer', '2020-04-11', '33364', '50969', '78', '8', '30', '100'),
(98, 'G02', 'Nabati Richoco Wafer', '2020-04-11', '29955', '55590', '53', '3', '50', '100'),
(99, 'G03', 'Nabati Richoco Wafer White', '2020-04-11', '49080', '21002', '86', '6', '20', '100'),
(100, 'G04', 'Nabati Richeese Wafer Kelapa', '2020-04-11', '27931', '21575', '11', '1', '90', '100'),
(101, 'G05', 'Nabati Richeese Wafer Pink Lava', '2020-04-11', '26805', '16431', '23', '3', '80', '100'),
(102, 'G06', 'Taro Net Pizza Italian', '2020-04-11', '43137', '18767', '56', '6', '50', '100'),
(103, 'G07', 'Taro Net Cowboy Stick', '2020-04-11', '43132', '62221', '75', '5', '30', '100'),
(104, 'G08', 'Taro Net Snack Potato', '2020-04-11', '29103', '67897', '74', '4', '30', '100'),
(105, 'G09', 'Taro Net Seaweed', '2020-04-11', '42106', '22794', '70', '20', '50', '100'),
(106, 'G10', 'French Fries 2000', '2020-04-11', '26401', '16906', '14', '4', '90', '100'),
(113, 'G11', 'Sunlight', '2020-04-11', '7000', '7500', '100', '50', '50', '100'),
(114, 'G12', 'Sponge Cuci Piring', '2020-04-11', '6500', '7000', '1000', '900', '50', '150'),
(116, 'G13', 'Spatula Pengoreng', '2020-04-11', '10000', '11000', '100', '50', '50', '100'),
(119, 'G14', 'Minyak Goreng', '2020-04-11', '15000', '14500', '100', '50', '50', '100'),
(120, 'G15', 'Mie Indomie', '2020-04-11', '2000', '2500', '100', '50', '50', '100');

-- --------------------------------------------------------

--
-- Table structure for table `persediaanbarang`
--

CREATE TABLE `persediaanbarang` (
  `id_barang` int(11) NOT NULL,
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `hargapokok` char(6) NOT NULL,
  `hargajualsatuan` char(6) NOT NULL,
  `jumlah` char(4) NOT NULL,
  `nilai` char(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persediaanbarang`
--

INSERT INTO `persediaanbarang` (`id_barang`, `kodebarang`, `namabarang`, `tanggal`, `hargapokok`, `hargajualsatuan`, `jumlah`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'A01', 'Aqua Botol', '2020-04-06', '3000', '3500', '100', '350000', NULL, NULL),
(3, 'A02', 'Stella Home Air Freshener Apple Fiesta', '2020-04-06', '27000', '29000', '50', '1450000', NULL, NULL),
(8, 'A03', 'Kursi Mainan', '2020-04-06', '30000', '35000', '100', '3500000', NULL, NULL),
(9, 'A04', 'Sosro Fruit Tea Apel', '2020-04-06', '3200', '3000', '100', '3000000', NULL, NULL),
(10, 'A05', 'Lampu Bohlam', '2020-04-06', '15000', '14500', '100', '1450000', NULL, NULL),
(12, 'A06', 'Kopi Kapal API', '2020-04-06', '14000', '12500', '100', '12500000', NULL, NULL),
(13, 'A07', 'Buku Komik Petruk Gareng', '2020-04-06', '6199', '35366', '61', '6674051', NULL, NULL),
(14, 'A08', 'Gelas Kaca', '2020-04-06', '39201', '44989', '25', '4750521', NULL, NULL),
(15, 'A09', 'Piring Kaca', '2020-04-06', '36182', '19746', '40', '7205701', NULL, NULL),
(16, 'A10', 'Keset Lantai', '2020-04-06', '20521', '12112', '81', '7069293', NULL, NULL),
(17, 'A11', 'Marjan Melon', '2020-04-06', '48143', '26401', '81', '7276066', NULL, NULL),
(18, 'A12', 'Plastik Bungkus', '2020-04-06', '46170', '9402', '42', '6554336', NULL, NULL),
(19, 'A13', 'Wadah Es Batu', '2020-04-06', '48393', '64077', '66', '4783705', NULL, NULL),
(20, 'A14', 'Freshcare', '2020-04-06', '35467', '12328', '14', '4617547', NULL, NULL),
(21, 'A15', 'Permen Frozz', '2020-04-06', '35522', '50838', '43', '6410683', NULL, NULL),
(22, 'B01', 'Gantungan Baju', '2020-04-07', '37028', '64367', '70', '1160636', NULL, NULL),
(23, 'B02', 'Pulpen', '2020-04-07', '19182', '44284', '3', '3604897', NULL, NULL),
(24, 'B03', 'Spidol', '2020-04-07', '29713', '8913', '73', '3826828', NULL, NULL),
(25, 'B04', 'Lampu Bohlam', '2020-04-07', '22186', '42612', '73', '6301171', NULL, NULL),
(26, 'B05', 'Energen Coklat', '2020-04-07', '42232', '39678', '77', '4465449', NULL, NULL),
(27, 'B06', 'Energen Vanilla', '2020-04-07', '28582', '62184', '53', '8014791', NULL, NULL),
(28, 'B07', 'Energen Kacang HIjau', '2020-04-07', '36601', '18793', '35', '3675864', NULL, NULL),
(29, 'B08', 'Energen Jahe', '2020-04-07', '42621', '48206', '20', '1575941', NULL, NULL),
(30, 'B09', 'Luwak White Coffee', '2020-04-07', '10750', '45544', '4', '5542780', NULL, NULL),
(31, 'B10', 'Luwak White Coffee Arabic', '2020-04-07', '46156', '49392', '78', '4310103', NULL, NULL),
(32, 'B11', 'Anget Sari Susu Jahe', '2020-04-07', '41128', '65451', '59', '4562336', NULL, NULL),
(33, 'B12', 'Freshco Kopi Susu', '2020-04-07', '37001', '42150', '74', '5885692', NULL, NULL),
(34, 'B13', 'Freshco Mocca', '2020-04-07', '43522', '50299', '64', '2353581', NULL, NULL),
(35, 'B14', 'Kopi ABC susu', '2020-04-07', '17109', '10051', '62', '2145757', NULL, NULL),
(36, 'B15', 'Kopi ABC Mocca', '2020-04-07', '11630', '14232', '11', '8752878', NULL, NULL),
(37, 'C01', 'Kabel Listrik', '2020-04-07', '32483', '11248', '60', '5929527', NULL, NULL),
(38, 'C02', 'Baterai ABC AAA', '2020-04-07', '32514', '15892', '49', '8072588', NULL, NULL),
(39, 'C03', 'Baterai ABC AA', '2020-04-07', '11082', '21418', '84', '4670971', NULL, NULL),
(40, 'C04', 'Baterai ABC A', '2020-04-07', '8485', '26226', '51', '5146295', NULL, NULL),
(41, 'C05', 'Baterai ABC Alkaline', '2020-04-07', '39645', '57886', '2', '8720629', NULL, NULL),
(42, 'C06', 'Sekarung Beras Tani', '2020-04-08', '38371', '5921', '67', '3502343', NULL, NULL),
(43, 'C07', 'youC1000 Lemon Water', '2020-04-08', '15855', '57568', '87', '4195347', NULL, NULL),
(44, 'C08', 'youC1000 Orange Water', '2020-04-08', '15467', '16105', '56', '7899358', NULL, NULL),
(45, 'C09', 'youC1000 Apple', '2020-04-08', '23037', '21637', '27', '3540738', NULL, NULL),
(46, 'C10', 'youC1000 Orange', '2020-04-08', '49726', '61055', '28', '5673552', NULL, NULL),
(47, 'C11', 'youC1000 Lemon', '2020-04-08', '20427', '28220', '78', '7983668', NULL, NULL),
(48, 'C12', 'Aqua Gelas', '2020-04-08', '44107', '65374', '76', '7926046', NULL, NULL),
(49, 'C13', 'Yakult', '2020-04-08', '23596', '23177', '28', '9873277', NULL, NULL),
(50, 'C14', 'Teh Gelas', '2020-04-08', '38472', '46253', '50', '3492571', NULL, NULL),
(51, 'C15', 'Teh RIO', '2020-04-08', '5271', '11844', '84', '3090808', NULL, NULL),
(52, 'D01', 'Teh Sisri', '2020-04-08', '11252', '14223', '74', '6964036', NULL, NULL),
(53, 'D02', 'Tea Jus', '2020-04-08', '13479', '57909', '77', '5817340', NULL, NULL),
(54, 'D03', 'Jas Jus', '2020-04-08', '37594', '51143', '66', '9070092', NULL, NULL),
(55, 'D04', 'Marimas', '2020-04-08', '28780', '30967', '99', '5760268', NULL, NULL),
(56, 'D05', 'Milkuat', '2020-04-08', '16631', '64121', '42', '3140261', NULL, NULL),
(57, 'D06', 'Pulpen Standard Hitam', '2020-04-08', '16355', '63222', '87', '4892362', NULL, NULL),
(58, 'D07', 'Pulpen Standard Biru', '2020-04-08', '31041', '36268', '25', '5581321', NULL, NULL),
(59, 'D08', 'Pulpen Standard Merah', '2020-04-08', '17084', '55754', '41', '1088178', NULL, NULL),
(60, 'D09', 'Pulpen PILOT', '2020-04-08', '11196', '50701', '67', '8818078', NULL, NULL),
(61, 'D10', 'Pulpen PILOT BIRU', '2020-04-08', '49002', '17354', '39', '8108940', NULL, NULL),
(62, 'D11', 'Garnier ', '2020-04-09', '20700', '17070', '87', '5413603', NULL, NULL),
(63, 'D12', 'Garnier Vitamin C', '2020-04-09', '13776', '66395', '89', '5749522', NULL, NULL),
(64, 'D13', 'Garnier Men Ice Charcool', '2020-04-09', '46546', '43921', '40', '7206527', NULL, NULL),
(65, 'D14', 'Garnier Men Wasabi', '2020-04-09', '18802', '62164', '61', '1363500', NULL, NULL),
(66, 'D15', 'Garnier Men', '2020-04-09', '9226', '12348', '14', '7940750', NULL, NULL),
(67, 'E01', 'Ponds White', '2020-04-09', '5896', '36827', '38', '7757772', NULL, NULL),
(68, 'E02', 'Ponds', '2020-04-09', '21750', '56789', '25', '1328494', NULL, NULL),
(69, 'E03', 'Ponds Men', '2020-04-09', '29571', '66994', '74', '9954312', NULL, NULL),
(70, 'E04', 'Ponds Men Ice', '2020-04-09', '10271', '34542', '83', '1788086', NULL, NULL),
(71, 'E05', 'Ponds Men Oil', '2020-04-09', '19345', '33314', '9', '1403358', NULL, NULL),
(72, 'E06', 'Sabun LIfebuoy', '2020-04-09', '18453', '54079', '6', '7998376', NULL, NULL),
(73, 'E07', 'Sabun Nuvo', '2020-04-09', '36201', '44704', '4', '7548614', NULL, NULL),
(74, 'E08', 'Sabun Lux', '2020-04-09', '36040', '51125', '76', '6607237', NULL, NULL),
(75, 'E09', 'Sabun GIV', '2020-04-09', '20666', '50567', '6', '2679082', NULL, NULL),
(76, 'E10', 'Sabun Wangi', '2020-04-09', '18201', '31682', '37', '5017943', NULL, NULL),
(77, 'E11', 'Shampoo Clear', '2020-04-09', '14765', '5989', '64', '2762508', NULL, NULL),
(78, 'E12', 'Shampoo Lifebuoy', '2020-04-09', '41997', '27379', '6', '1358252', NULL, NULL),
(79, 'E13', 'Shampoo Sunsilk', '2020-04-09', '44014', '24271', '76', '5185071', NULL, NULL),
(80, 'E14', 'Shampoo Clear Men', '2020-04-09', '42165', '65580', '98', '9842112', NULL, NULL),
(81, 'E15', 'Shampoo Rejoice', '2020-04-09', '7029', '24638', '60', '8065905', NULL, NULL),
(82, 'F01', 'Pomade Clear', '2020-04-10', '40707', '53896', '16', '3131893', NULL, NULL),
(83, 'F02', 'Pomade Gatsby Merah', '2020-04-10', '40361', '24081', '8', '1333061', NULL, NULL),
(84, 'F03', 'Pomade Gatsby Biru', '2020-04-10', '44352', '18971', '26', '8647432', NULL, NULL),
(85, 'F04', 'Pomade Gatsby Biru', '2020-04-10', '12266', '40594', '93', '8298711', NULL, NULL),
(86, 'F05', 'Pomade Gatsby Ungu', '2020-04-10', '32561', '21562', '31', '7248059', NULL, NULL),
(87, 'F06', 'Earphone Pionner SE-C3T', '2020-04-10', '7661', '5014', '54', '8289688', NULL, NULL),
(88, 'F07', 'Earphone Zenith', '2020-04-10', '19262', '28882', '50', '7509417', NULL, NULL),
(89, 'F08', ' Earphone RM-580', '2020-04-10', '20337', '22351', '89', '6578576', NULL, NULL),
(90, 'F09', 'Earphone In Ear JBL', '2020-04-10', '36946', '55449', '17', '4635630', NULL, NULL),
(91, 'F10', 'Earphone Armageddon Mark 5', '2020-04-10', '24143', '32716', '62', '5638693', NULL, NULL),
(92, 'F11', 'Earphone KB-Ear KBEAR F1', '2020-04-10', '8526', '69529', '14', '9696782', NULL, NULL),
(93, 'F12', 'Earphone Zenith Pure Balance Armature Earphone', '2020-04-10', '23603', '55521', '32', '9833367', NULL, NULL),
(94, 'F13', 'Earphone Earbuds Headset Sennheiser', '2020-04-10', '36338', '57997', '63', '1308731', NULL, NULL),
(95, 'F14', 'Earphone Philips Headphone in Ear', '2020-04-10', '21774', '66608', '90', '3908787', NULL, NULL),
(96, 'F15', 'Earphone Sony in-Ear Phone', '2020-04-10', '5241', '55057', '71', '8013801', NULL, NULL),
(97, 'G01', 'Nabati Richeese Wafer', '2020-04-11', '33364', '50969', '78', '1891594', NULL, NULL),
(98, 'G02', 'Nabati Richoco Wafer', '2020-04-11', '29955', '55590', '53', '9470976', NULL, NULL),
(99, 'G03', 'Nabati Richoco Wafer White', '2020-04-11', '49080', '21002', '86', '8602017', NULL, NULL),
(100, 'G04', 'Nabati Richeese Wafer Kelapa', '2020-04-11', '27931', '21575', '11', '5682804', NULL, NULL),
(101, 'G05', 'Nabati Richeese Wafer Pink Lava', '2020-04-11', '26805', '16431', '23', '3712916', NULL, NULL),
(102, 'G06', 'Taro Net Pizza Italian', '2020-04-11', '43137', '18767', '56', '2100119', NULL, NULL),
(103, 'G07', 'Taro Net Cowboy Stick', '2020-04-11', '43132', '62221', '75', '2460805', NULL, NULL),
(104, 'G08', 'Taro Net Snack Potato', '2020-04-11', '29103', '67897', '74', '5132372', NULL, NULL),
(105, 'G09', 'Taro Net Seaweed', '2020-04-11', '42106', '22794', '70', '6310065', NULL, NULL),
(106, 'G10', 'French Fries 2000', '2020-04-11', '26401', '16906', '14', '7112893', NULL, NULL),
(113, 'G11', 'Sunlight', '2020-04-11', '7000', '7500', '100', '7500000', NULL, NULL),
(114, 'G12', 'Sponge Cuci Piring', '2020-04-11', '6500', '7000', '1000', '7000000', NULL, NULL),
(116, 'G13', 'Spatula Pengoreng', '2020-04-11', '10000', '11000', '100', '1100000', NULL, NULL),
(119, 'G14', 'Minyak Goreng', '2020-04-11', '15000', '14500', '100', '1450000', NULL, NULL),
(120, 'G15', 'Mie Indomie', '2020-04-11', '2000', '2500', '100', '2500000', NULL, NULL);

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
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `persediaanbarang`
--
ALTER TABLE `persediaanbarang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
