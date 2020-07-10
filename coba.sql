-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 07:39 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `hp`, `alamat`, `email`) VALUES
(1, 'Adhi Prahara, S.Si., M.Cs.', '060150841', 'Softcomputing and Multimedia', 'adhi.prahara@tif.uad.ac.id'),
(2, 'Supriyanto, S.T., M.T.', '60160952', 'Media Digital dan Game', 'supriyanto@tif.uad.ac.id'),
(3, 'Dinan Yulianto, S.T., M.Eng.', '601609524', 'Multimedia, Interaksi Manusia dan Komputer, dan IT in Education', 'dinan.yulianto@tif.uad.ac.id'),
(4, 'Fiftin Noviyanto, S.T., M. Cs', '198011152005011002', 'Web Programming, Multimedia', 'fiftin.noviyanto@tif.uad.ac.id'),
(49, 'S', 'dsd', 'sdfsdf', 'sdfsf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nim` char(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nama`, `nim`, `semester`, `email`) VALUES
(1, 'Aslamadin Alvian Haz', '1600018001', 8, 'alvinsukamtis@gmail.com'),
(2, 'Muhammad N.W Lutfiantoro', '1600018002', 8, 'Lutfiantoro@gmail.com'),
(3, 'kholis ', '1600018003', 8, 'kholis @gmail.com'),
(4, 'gema antika hariadi', '1600018004', 8, 'gema@gmail.com'),
(5, 'Brian P.', '1600018005', 8, 'brian@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
