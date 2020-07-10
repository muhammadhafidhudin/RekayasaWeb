-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 17.17
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `hp`, `alamat`, `email`) VALUES
(52, 'Dicky  Dwi Guniarta', '086789999988', 'klaten', 'diky@gmail.com'),
(53, 'Adnan Bayu Setiaji', '0888555888', 'jogja', 'ABS@gmail.com'),
(54, 'Alfian Dwi Cahyo', '0866666666', 'prambanan', 'alfian@gmail.com'),
(55, 'Ahmad Adi Prayetno', '0855555555', 'wonogiri', 'ahmad@gmail.com'),
(56, 'fauzan adi', '087777777777', 'klaten', 'fauzan@gmail');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `namakegiatan` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(11) NOT NULL,
  `lokasi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `namakegiatan`, `tanggal`, `jam`, `lokasi`) VALUES
(1, 'Rapat pembentukan tim survai', '2020-07-09', '10.00 wib', 'balai kota jogja'),
(2, 'Rapat Anggaran 2021', '2020-08-12', '07.00 wib', 'Kantor bpkp jogja'),
(3, 'penyuluhan', '2020-07-17', '10.00 wib', 'desa brajan'),
(4, 'penyuluhan', '2020-06-18', '16.00 wib', 'desa juwiring');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `email`, `password`, `nama`) VALUES
(1, 'admin_satu@gmail.com', '123456', 'Admin satu nih'),
(2, 'admin_dua@gmail.com', '123456', 'admin dua nih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nim` char(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mahasiswa`
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
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
