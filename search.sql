-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2021 pada 16.48
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_search`
--

CREATE TABLE `tb_search` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_search`
--

INSERT INTO `tb_search` (`id`, `firstname`, `username`, `email`, `gender`) VALUES
(1, 'ali', 'sakti', 'asepslow477@gmail.com', 'Pria'),
(2, 'mbuh', 'mbuhlah', 'mbuh@gmail.com', 'Pria'),
(3, 'siti', 'sitinurbayah', 'sit@gmail.com', 'Wanita'),
(4, 'sigreta', 'gretasepty', 'patricstar24@yahoo.co.id', 'Wanita');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_search`
--
ALTER TABLE `tb_search`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_search`
--
ALTER TABLE `tb_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
