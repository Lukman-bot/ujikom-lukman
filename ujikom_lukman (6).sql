-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2022 pada 22.16
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_lukman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailfasilitaskamar`
--

CREATE TABLE `detailfasilitaskamar` (
  `iddetailfasilitaskamar` int(11) NOT NULL,
  `fasilitasid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailfasilitaskamar`
--

INSERT INTO `detailfasilitaskamar` (`iddetailfasilitaskamar`, `fasilitasid`, `kamarid`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-03-22 18:53:34', NULL),
(2, 1, 2, '2022-03-22 18:55:08', NULL),
(3, 1, 3, '2022-03-22 18:56:17', NULL),
(4, 2, 3, '2022-03-22 18:56:17', NULL),
(5, 1, 4, '2022-03-22 18:57:01', NULL),
(6, 1, 5, '2022-03-22 18:57:47', NULL),
(7, 1, 6, '2022-03-22 18:58:31', NULL),
(8, 2, 6, '2022-03-22 18:58:31', NULL),
(9, 1, 7, '2022-03-22 18:59:11', NULL),
(10, 2, 7, '2022-03-22 18:59:11', NULL),
(11, 2, 8, '2022-03-22 18:59:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailreservasi`
--

CREATE TABLE `detailreservasi` (
  `iddetailreservasi` int(11) NOT NULL,
  `reservasiid` int(11) NOT NULL,
  `kamar_idkamar` int(11) NOT NULL,
  `extraid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `extra`
--

CREATE TABLE `extra` (
  `idextra` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `idfasilitas` int(11) NOT NULL,
  `namafasilitas` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `jenisfasilitas` enum('KAMAR','HOTEL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`idfasilitas`, `namafasilitas`, `icon`, `picture`, `is_active`, `jenisfasilitas`) VALUES
(1, 'TV LED', 'fa fa-tv', '', 'Yes', 'KAMAR'),
(2, 'wifi', 'fa fa-wifi', '', 'Yes', 'KAMAR'),
(3, 'Kolam Renang', '', '7148-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(4, 'Kolam Renang 2', '', '3134-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(5, 'Restaurant', '', '1345-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(6, 'Gym', '', '2161-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(7, 'Restaurant 2', '', '8717-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(8, 'Restaurant 3', '', '1469-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(9, 'Kolam Renang 2', '', '9020-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(10, 'Kolam Renang 3', '', '1908-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(11, 'Billiard', '', '6707-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(12, 'Gym 2', '', '5977-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(13, 'Gym 3', '', '5466-IMG-Picture.jpg', 'Yes', 'HOTEL'),
(14, 'Spa', '', '4254-IMG-Picture.jpg', 'Yes', 'HOTEL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` int(11) NOT NULL,
  `tipekamarid` int(11) NOT NULL,
  `namakamar` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `jumlahqty` int(11) NOT NULL,
  `description` text NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`idkamar`, `tipekamarid`, `namakamar`, `harga`, `jumlahqty`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 8, 'Twin Room', 300000, 2, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:53:34', NULL),
(2, 7, 'Single Room', 200000, 2, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:55:08', NULL),
(3, 3, 'Deluxe Room', 350000, 2, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:56:17', NULL),
(4, 5, 'Suite Room', 350000, 4, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:57:01', NULL),
(5, 1, 'Standard Room', 200000, 5, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:57:47', NULL),
(6, 6, 'Presidential Suite', 1000000, 3, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:58:31', NULL),
(7, 3, 'Deluxe Room 2', 500000, 2, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:59:11', NULL),
(8, 1, 'Standard Room 2', 250000, 5, '<p>Tersedia</p>\r\n', 'Yes', '2022-03-22 18:59:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamargalery`
--

CREATE TABLE `kamargalery` (
  `idkamargalery` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `is_active` enum('YES','NO') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamargalery`
--

INSERT INTO `kamargalery` (`idkamargalery`, `kamarid`, `url`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '9558-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:53:34', NULL),
(2, 2, '2106-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:55:08', NULL),
(3, 3, '5275-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:56:17', NULL),
(4, 4, '8981-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:57:01', NULL),
(5, 5, '6078-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:57:47', NULL),
(6, 6, '5762-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:58:31', NULL),
(7, 7, '1048-IMG-Picture.jpg', '', 'YES', '2022-03-22 18:59:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`idrating`, `tamuid`, `kamarid`, `value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 5, 'Yes', '2022-03-22 19:16:58', NULL),
(2, 1, 2, 4, 'Yes', '2022-03-22 19:17:31', NULL),
(3, 2, 2, 3, 'Yes', '2022-03-22 19:17:56', NULL),
(4, 2, 5, 4, 'Yes', '2022-03-22 19:17:56', NULL),
(5, 4, 4, 3, 'Yes', '2022-03-22 19:18:13', NULL),
(6, 9, 6, 3, 'Yes', '2022-03-22 19:18:13', NULL),
(7, 1, 5, 4, 'Yes', '2022-03-22 19:18:37', NULL),
(8, 7, 7, 4, 'Yes', '2022-03-22 19:18:37', NULL),
(9, 4, 5, 5, 'Yes', '2022-03-22 19:18:54', NULL),
(10, 5, 5, 4, 'Yes', '2022-03-22 19:18:54', NULL),
(11, 5, 5, 3, 'Yes', '2022-03-22 20:57:32', NULL),
(12, 7, 7, 2, 'Yes', '2022-03-22 20:58:10', NULL),
(13, 7, 8, 4, 'Yes', '2022-03-22 20:58:10', NULL),
(14, 6, 1, 2, 'Yes', '2022-03-22 20:59:26', NULL),
(15, 6, 1, 4, 'Yes', '2022-03-22 20:59:26', NULL),
(16, 7, 3, 5, 'Yes', '2022-03-22 21:00:04', NULL),
(17, 3, 3, 1, 'Yes', '2022-03-22 21:00:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `idreservasi` int(11) NOT NULL,
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `lama` int(11) NOT NULL,
  `qtykamar` int(11) NOT NULL,
  `status` enum('reservaasi','checkin','checkout','cancel') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `canceled_by` int(11) DEFAULT NULL,
  `approved_date` datetime NOT NULL,
  `canceled_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`idreservasi`, `tamuid`, `kamarid`, `startdate`, `enddate`, `lama`, `qtykamar`, `status`, `created_at`, `updated_at`, `approved_by`, `canceled_by`, `approved_date`, `canceled_date`) VALUES
(1, 1, 6, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:04:41', NULL, NULL, NULL, '2022-03-22 22:04:20', '2022-03-22 22:04:20'),
(2, 2, 2, '2022-03-13', '2022-03-13', 1, 1, 'checkout', '2022-03-22 21:05:17', NULL, NULL, NULL, '2022-03-22 22:04:43', '2022-03-22 22:04:43'),
(3, 7, 7, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:05:17', NULL, NULL, NULL, '2022-03-22 22:04:43', '2022-03-22 22:04:43'),
(4, 6, 2, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:05:52', NULL, NULL, NULL, '2022-03-22 22:05:24', '2022-03-22 22:05:24'),
(5, 5, 4, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:05:52', NULL, NULL, NULL, '2022-03-22 22:05:24', '2022-03-22 22:05:24'),
(6, 8, 7, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:06:52', NULL, NULL, NULL, '2022-03-22 22:06:13', '2022-03-22 22:06:13'),
(7, 9, 8, '2022-03-13', '2022-03-14', 1, 1, 'checkout', '2022-03-22 21:06:52', NULL, NULL, NULL, '2022-03-22 22:06:13', '2022-03-22 22:06:13');

--
-- Trigger `reservasi`
--
DELIMITER $$
CREATE TRIGGER `trigger_hotel` AFTER UPDATE ON `reservasi` FOR EACH ROW BEGIN
	IF new.status='checkin' THEN
    	UPDATE kamar SET jumlahqty=jumlahqty-old.qtykamar WHERE idkamar = old.kamarid;
    END IF;
    IF new.status='checkout' THEN
    	UPDATE kamar SET jumlahqty=jumlahqty+old.qtykamar WHERE idkamar = old.kamarid;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `idreview` int(11) NOT NULL,
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `review` text NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`idreview`, `tamuid`, `kamarid`, `review`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Sangat Nyaman', 'Yes', '2022-03-22 21:01:45', NULL),
(2, 9, 6, 'Bagus', 'Yes', '2022-03-22 21:02:11', NULL),
(3, 5, 4, 'Kurang', 'Yes', '2022-03-22 21:02:11', NULL),
(4, 7, 5, 'Bagus', 'Yes', '2022-03-22 21:02:32', NULL),
(5, 9, 3, 'Bagus', 'Yes', '2022-03-22 21:02:32', NULL),
(6, 6, 6, 'Bagus', 'Yes', '2022-03-22 21:02:51', NULL),
(7, 3, 3, 'Kurang', 'Yes', '2022-03-22 21:02:51', NULL),
(8, 7, 4, 'Bagus', 'Yes', '2022-03-22 21:03:16', NULL),
(9, 5, 6, 'Kurang', 'Yes', '2022-03-22 21:03:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jeniskelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `ismember` enum('YA','NO') NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`idtamu`, `nik`, `nama`, `jeniskelamin`, `alamat`, `telepon`, `username`, `password`, `ismember`, `is_active`, `photo`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Lukman Aditiya Anggara', 'laki-laki', 'Sindanggalih, Indonesia', '089510396303', 'lukman@hotel.com', '123456789', 'YA', 'Yes', '5238-IMG-Picture.jpg', '2022-03-22 19:02:37', NULL),
(2, '123456789', 'Syahrun Nijam', 'laki-laki', 'Sampih Rt 003 Rw 008 003/008 Rejasari Langensari Kota Banjar Jawa Barat', '08', 'syahrun@hotel.com', '123456789', 'YA', 'Yes', '3499-IMG-Picture.jpg', '2022-03-22 19:03:52', NULL),
(3, '123456789', 'Aditya Risqi Firmansyah', 'laki-laki', 'Cikawung 032/09 Cintaratu Lakbok Kab. Ciamis Jawa Barat', '08', 'adit@hotel.com', '123456789', 'YA', 'Yes', '9009-IMG-Picture.jpg', '2022-03-22 19:04:36', NULL),
(4, '123456789', 'Fredi Almas', 'laki-laki', 'Cibodas 021/005 Cintaratu Lakbok Kab. Ciamis Jawa Barat', '08', 'fredi@hotel.com', '123456789', 'YA', 'Yes', '3454-IMG-Picture.jpg', '2022-03-22 19:05:29', NULL),
(5, '123456789', 'Ari Riski', 'laki-laki', 'Purwodadi 012/004 Waringinsari Langensari Kota Banjar Jawa Barat', '08', 'ari@hotel.com', '123456789', 'NO', 'No', '9490-IMG-Picture.jpg', '2022-03-22 19:06:04', NULL),
(6, '123456789', 'Zeni Destia Ningsih', 'perempuan', 'Dusu Cikondang 002/006 Kunci Sidareja Kab. Cilacap Jawa Tengah', '08', 'zeni@hotel.com', '123456789', 'YA', 'Yes', '2844-IMG-Picture.jpg', '2022-03-22 19:06:45', NULL),
(7, '123456789', 'Lilis Suryani', 'perempuan', 'Jl. Kelapa Sawit 003/002 Gunungreja Sidareja Kab. Cilacap Jawa Tengah', '08', 'lilis@hotel.com', '123456789', 'YA', 'Yes', '4672-IMG-Picture.jpg', '2022-03-22 19:07:30', NULL),
(8, '123456789', 'Alpiah', 'perempuan', 'Sindangmulya 001/009 Kujangsari Langensari Kota Banjar Jawa Barat', '08', 'alpiah@hotel.com', '123456789', 'YA', 'Yes', '4999-IMG-Picture.jpg', '2022-03-22 19:08:02', NULL),
(9, '123456789', 'Arsyah Fathurrahman', 'laki-laki', 'Sinargalih 004/002 Langensari Langensari Kota Banjar Jawa Barat', '08', 'fatur@hotel.com', '123456789', 'YA', 'Yes', '8299-IMG-Picture.jpg', '2022-03-22 19:08:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipekamar`
--

CREATE TABLE `tipekamar` (
  `idtipekamar` int(11) NOT NULL,
  `tipekamar` varchar(45) NOT NULL,
  `is_active` enum('Yes','No') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipekamar`
--

INSERT INTO `tipekamar` (`idtipekamar`, `tipekamar`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Standard Room', 'Yes', '2022-03-22 18:44:12', NULL),
(2, 'Superior Room', 'Yes', '2022-03-22 18:44:43', NULL),
(3, 'Deluxe Room', 'Yes', '2022-03-22 18:44:58', NULL),
(4, 'Junior Suite Room', 'Yes', '2022-03-22 18:45:17', NULL),
(5, 'Suite Room', 'Yes', '2022-03-22 18:45:55', NULL),
(6, 'Presidential Suite', 'Yes', '2022-03-22 18:46:14', NULL),
(7, 'Single Room', 'Yes', '2022-03-22 18:46:26', NULL),
(8, 'Twin Room', 'Yes', '2022-03-22 18:46:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `namauser` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `notelepon` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `is_active` char(1) NOT NULL,
  `role` enum('ADMIN','RECEPTIONIST') NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idusers`, `namauser`, `jk`, `alamat`, `notelepon`, `username`, `password`, `is_active`, `role`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Lukman Aditiya', 'laki-laki', 'Sindanggalih, Indonesia', '089510396303', 'lukman@admin.com', '$2y$10$arN3TKVx08I.NFrLAIKT5ez6B1UeaOLPfe327UlH9ksTuws0cHlU6', 'Y', 'ADMIN', '7971-IMG-Picture.jpg', '2022-03-22 18:42:23', NULL),
(2, 'Lukman Aditiya', 'laki-laki', 'Sindanggalih, Indonesia', '089510396303', 'lukman@resepsionis.com', '$2y$10$QEtXh6B9FIZHli4zdVkFeueubv0XWw8he57tjhWpviMQhhj0nljle', 'Y', 'RECEPTIONIST', '4169-IMG-Picture.jpg', '2022-03-22 18:42:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailfasilitaskamar`
--
ALTER TABLE `detailfasilitaskamar`
  ADD PRIMARY KEY (`iddetailfasilitaskamar`),
  ADD KEY `fasilitasid` (`fasilitasid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `detailreservasi`
--
ALTER TABLE `detailreservasi`
  ADD PRIMARY KEY (`iddetailreservasi`),
  ADD KEY `reservasiid` (`reservasiid`),
  ADD KEY `kamar_idkamar` (`kamar_idkamar`),
  ADD KEY `extraid` (`extraid`);

--
-- Indeks untuk tabel `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`idextra`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`idfasilitas`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idkamar`),
  ADD KEY `tipekamarid` (`tipekamarid`);

--
-- Indeks untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  ADD PRIMARY KEY (`idkamargalery`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`),
  ADD KEY `tamuid` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`idreservasi`),
  ADD KEY `tamuid` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idreview`),
  ADD KEY `tamuid` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- Indeks untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  ADD PRIMARY KEY (`idtipekamar`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailfasilitaskamar`
--
ALTER TABLE `detailfasilitaskamar`
  MODIFY `iddetailfasilitaskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `detailreservasi`
--
ALTER TABLE `detailreservasi`
  MODIFY `iddetailreservasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `extra`
--
ALTER TABLE `extra`
  MODIFY `idextra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `idfasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `idkamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  MODIFY `idkamargalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `idreservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `idreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `idtipekamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
