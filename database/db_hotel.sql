-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 10:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` varchar(15) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
('A11.2021.13252', 'Muhammad Fariz Fadhilah Aditya', 'admin1', 'admin1'),
('A11.2021.13328', 'Muhammad Faisal Zuhair', 'admin2', 'admin2'),
('A11.2021.13442', 'Dani Ahmad Izzul Haq', 'admin3', 'admin3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_history_tamu`
--

CREATE TABLE `tb_history_tamu` (
  `no_tamu` varchar(17) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `kode_kamar` varchar(8) NOT NULL,
  `lantai` varchar(10) NOT NULL,
  `no_kamar` varchar(10) NOT NULL,
  `tipe_kamar` varchar(8) NOT NULL,
  `harga_permalam` int(15) NOT NULL,
  `cek_in` varchar(10) NOT NULL,
  `cek_out` varchar(10) NOT NULL,
  `lama_menginap` int(15) NOT NULL,
  `total_biaya` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_history_tamu`
--

INSERT INTO `tb_history_tamu` (`no_tamu`, `nama_tamu`, `jenis_kelamin`, `alamat`, `no_tlp`, `kode_kamar`, `lantai`, `no_kamar`, `tipe_kamar`, `harga_permalam`, `cek_in`, `cek_out`, `lama_menginap`, `total_biaya`) VALUES
('14140003243', 'mbasdf', 'Laki-laki', 'asvdsadvsd', '0868578', '2002', 'Lantai 2', '002', 'Ekonomi', 200000, '15-12-2016', '23-12-2016', 8, 1600000),
('11223344', 'skddkfn', 'Perempuan', 'sffgsdfgsdgf', '0835356456', '2003', 'Lantai 2', '003', 'VIP', 300000, '23-12-2016', '24-12-2016', 1, 300000),
('141400013', 'Joni Herianto', 'Laki-laki', 'Padang', '0345938745', '1001', 'Lantai 1', '001', 'Ekonomi', 300000, '14-11-2016', '26-12-2016', 42, 12600000),
('12345', 'test', 'Laki-laki', 'jalan jalan', '123456', '1001', 'Lantai 1', '001', 'Ekonomi', 300000, '08-07-2023', '08-07-2023', 0, 300000),
('1234', 'test kamar', 'Laki-laki', 'qowefuhgdhcoqwuasdgbcvkaghjfv', '7263517963', '2003', 'Lantai 2', '003', 'VIP', 300000, '11-07-2023', '11-07-2023', 0, 300000),
('647107041-', 'coba check in', 'Laki-laki', 'hwqgjflqjhwvfjhv.', '02551321354', '2002', 'Lantai 2', '002', 'Ekonomi', 200000, '11-07-2023', '11-07-2023', 0, 200000),
('234213', 'ssdgfsd', 'Laki-laki', 'dfgsdfg', '59679579', '2001', 'Lantai 2', '002', 'Bisnis', 250000, '13-12-2016', '11-07-2023', 2401, 600250000),
('5di', 'rtdyity', 'Laki-laki', 'ytfiytd', '564227', '2001', 'Lantai 2', '002', 'Bisnis', 250000, '12-07-2023', '12-07-2023', 0, 250000),
('123434', 'FGRdsadgfgag', 'Laki-laki', 'afdhdfhdfhhdh', '142351345', '2001', 'Lantai 2', '002', 'Bisnis', 250000, '13-07-2023', '13-07-2023', 0, 250000),
('31121', 'Dani Y', 'Laki-laki', 'demak', '0812345', '2003', 'Lantai 2', '003', 'VIP', 300000, '13-07-2023', '13-07-2023', 0, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `kode_kamar` varchar(10) NOT NULL,
  `lantai` varchar(10) NOT NULL,
  `no_kamar` varchar(5) NOT NULL,
  `tipe_kamar` varchar(15) NOT NULL,
  `harga_permalam` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`kode_kamar`, `lantai`, `no_kamar`, `tipe_kamar`, `harga_permalam`) VALUES
('1001', 'Lantai 1', '001', 'Ekonomi', 200000),
('2001', 'Lantai 2', '002', 'Bisnis', 250000),
('2002', 'Lantai 2', '002', 'Ekonomi', 200000),
('2003', 'Lantai 2', '003', 'VIP', 300000),
('3001', 'Lantai 3', '001', 'Bisnis', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` varchar(20) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_kelamin`, `alamat`, `no_tlp`, `password`) VALUES
('141400011', 'NOVA', 'Perempuan', 'PADANG SUMATERA BARAT', '083418364', '12345'),
('141400012', 'DANI YEN', 'Laki-laki', 'DEMAK', '08123654987', 'karyawan'),
('141400013', 'JONI HERIANTO', 'Laki-laki', 'PADANG', '08913932234', 'password'),
('141400014', 'user', 'Laki-laki', 'Sadewasatu', '081234567890', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tamu`
--

CREATE TABLE `tb_tamu` (
  `no_tamu` varchar(17) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `kode_kamar` varchar(8) NOT NULL,
  `tgl_cek_in` varchar(10) NOT NULL,
  `jam_cek_in` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tamu`
--

INSERT INTO `tb_tamu` (`no_tamu`, `nama_tamu`, `jenis_kelamin`, `alamat`, `no_tlp`, `kode_kamar`, `tgl_cek_in`, `jam_cek_in`) VALUES
('131300012343', 'JONI', 'Laki-laki', 'JAKARTA', '0812391374', '3001', '24-12-2016', '01:00:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_history_tamu`
--
ALTER TABLE `tb_history_tamu`
  ADD KEY `no_tamu` (`no_tamu`),
  ADD KEY `kode_kamar` (`kode_kamar`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`kode_kamar`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
