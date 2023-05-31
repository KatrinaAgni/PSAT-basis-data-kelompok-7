-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2023 pada 23.32
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_komputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `No_user` int(5) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `No_hp` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`No_user`, `Nama`, `Username`, `No_hp`) VALUES
(34560, 'Katrina Agni H', 'Katrina', '081238835599'),
(34561, 'Narendra Sakya T', 'Sakya', '085761354588'),
(34562, 'Nilam Ramadhani', 'Nilam', '087654279851'),
(34563, 'Anindya Putri', 'Anindya', '082763548189'),
(34564, 'Cahaya Putri', 'Cahaya', '087968755443'),
(34565, 'Cindi Aulia', 'Cindi', '087666778983'),
(34566, 'Nabila Mayang', 'Nabila', '087654221342'),
(34567, 'Dinda Ralla S', 'Dinda', '0895413456238'),
(34568, 'Dzihni Nisrina H', 'Dzihni', '085747518479'),
(34569, 'Fernanda Ayu', 'Fernanda', '081911796522');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `No_user` int(5) NOT NULL,
  `No_produk` int(4) DEFAULT NULL,
  `jumlah_transfer` text,
  `bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`No_user`, `No_produk`, `jumlah_transfer`, `bank`) VALUES
(34560, 1234, '3.600.000', 'BRI'),
(34561, 1235, '9.650.000', 'BRI'),
(34562, 1236, '3.900.000', 'BRI'),
(34563, 1237, '4.200.000', 'BRI'),
(34564, 1238, '6.000.000', 'BRI'),
(34565, 1239, '4.600.000', 'BRI'),
(34566, 1230, '3.450.000', 'BRI'),
(34567, 1232, '3.400.000', 'BRI'),
(34568, 1231, '3.400.000', 'BRI'),
(34569, 1233, '11.000.000', 'BRI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `No_produk` int(4) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `berat` varchar(100) DEFAULT NULL,
  `Harga` text,
  `Stok` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`No_produk`, `nama_produk`, `berat`, `Harga`, `Stok`) VALUES
(1230, 'LENOVO IP 330', '4kg', '3.440.000', 30),
(1231, 'LENOVO IDEAPAD 130', '4kg', '3.375.000', 25),
(1232, 'HP Elitebook folio', '4kg', '3.350.000', 25),
(1233, 'DELL G3-3579 I5-8300H', '7kg', '10.990.000', 30),
(1234, 'HP 14-CM0071AU', '5kg', '3.599.000', 25),
(1235, 'ASUS VivoBook S330FA', '4kg', '9.650.000', 19),
(1236, 'ASUS A407MA', '5kg', '3.899.000', 5),
(1237, 'Acer ES1 14', '5kg', '4.150.000', 20),
(1238, 'Asus A407UA', '5kg', '5.999.000', 25),
(1239, 'Acer ASPIRE 2in1 R7 372RT', '4kg', '4.500.000', 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`No_user`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`No_user`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`No_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
