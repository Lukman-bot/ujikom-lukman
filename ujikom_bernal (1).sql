-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2022 pada 17.31
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
-- Database: `ujikom_bernal`
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
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailfasilitaskamar`
--

INSERT INTO `detailfasilitaskamar` (`iddetailfasilitaskamar`, `fasilitasid`, `kamarid`, `created_at`, `updated_at`) VALUES
(3, 8, 1, '2022-03-12 10:51:00', '2022-03-12 10:51:00'),
(4, 9, 1, '2022-03-12 10:51:01', '2022-03-12 10:51:01'),
(7, 9, 3, '2022-03-12 11:02:57', '2022-03-12 11:02:57'),
(8, 8, 4, '2022-03-12 11:24:40', '2022-03-12 11:24:40'),
(9, 9, 5, '2022-03-12 11:25:45', '2022-03-12 11:25:45'),
(10, 9, 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `jenisfasilitas` enum('KAMAR','HOTEL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`idfasilitas`, `namafasilitas`, `icon`, `picture`, `jenisfasilitas`) VALUES
(1, 'Shower', '', '7982-IMG-Picture.JPG', 'HOTEL'),
(2, 'Kamar', '', '9512-IMG-Picture.JPG', 'HOTEL'),
(3, 'Kasur', '', '9343-IMG-Picture.JPG', 'HOTEL'),
(4, 'Shower', '', '1000-IMG-Picture.JPG', 'HOTEL'),
(5, 'Shower', '', '6470-IMG-Picture.jpg', 'HOTEL'),
(6, 'Shower', '', '4859-IMG-Picture.jpg', 'HOTEL'),
(7, 'Shower', '', '4524-IMG-Picture.jpg', 'HOTEL'),
(8, 'Kasur', 'fas fa-bed', '', 'KAMAR'),
(9, 'Shower', 'fas fa-shower', '', 'KAMAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` int(11) NOT NULL,
  `namakamar` varchar(100) NOT NULL,
  `jumlahbed` int(11) NOT NULL,
  `harga` double NOT NULL,
  `jumlahqty` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipekamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`idkamar`, `namakamar`, `jumlahbed`, `harga`, `jumlahqty`, `description`, `created_at`, `update_at`, `tipekamarid`) VALUES
(1, 'Kamar 1', 3, 200000, 2, 'Tersedia', '2022-03-11 18:34:38', '2022-03-11 18:34:38', 3),
(2, 'Kamar 2', 2, 200000, 1, 'Sangat Bagus', '2022-03-11 20:12:50', '2022-03-11 20:12:50', 3),
(3, 'Kamar 4', 1, 1, 1, '1', '2022-03-12 10:59:27', '2022-03-12 10:59:27', 1),
(4, 'Kamar 3', 1, 1, 1, '1', '2022-03-12 11:24:40', '2022-03-12 11:24:40', 1),
(5, 'Kamar 8', 1, 1, 1, '1', '2022-03-12 11:25:45', '2022-03-12 11:25:45', 3),
(6, 'Kamar 4', 3, 3, 3, '3', '2022-03-12 11:32:03', '2022-03-12 11:32:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamargalery`
--

CREATE TABLE `kamargalery` (
  `idkamargalery` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `is_active` enum('YES','NO') NOT NULL,
  `kamarid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamargalery`
--

INSERT INTO `kamargalery` (`idkamargalery`, `url`, `text`, `is_active`, `kamarid`, `created_at`, `updated_at`) VALUES
(1, '2155', '0', 'YES', 2, '2022-03-11 20:12:50', '2022-03-11 20:12:50'),
(2, '8100', '0', 'YES', 3, '2022-03-12 10:59:27', '2022-03-12 10:59:27'),
(3, '6352', '0', 'YES', 4, '2022-03-12 11:24:40', '2022-03-12 11:24:40'),
(4, '7825-IMG-Picture.jpg', '', 'YES', 5, '2022-03-12 11:25:45', '2022-03-12 11:25:45'),
(5, '6101-IMG-Picture.jpg', '', 'YES', 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `idreservasi` int(11) NOT NULL,
  `stardate` date NOT NULL,
  `enddate` date NOT NULL,
  `lama` int(11) NOT NULL,
  `userqty` int(11) NOT NULL,
  `status` enum('reservasi','cekin','cekout','cancel') NOT NULL DEFAULT 'reservasi',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_by` int(11) NOT NULL,
  `canceled_by` int(11) NOT NULL,
  `approved_date` datetime NOT NULL,
  `canceled_date` datetime NOT NULL,
  `tamu_id` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `reservasi`
--
DELIMITER $$
CREATE TRIGGER `reservasi` AFTER UPDATE ON `reservasi` FOR EACH ROW BEGIN
IF new.status='cekin' THEN
BEGIN
UPDATE kamar SET jumlah=jumlah-old.jumlah_kamar WHERE idkamar-old.kamarid;
end;
END IF;
IF new.status='cekout' THEN
BEGIN
UPDATE kamar SET jumlah=jumlah+old.jumlah_kamar WHERE idkamar=old.kamarid;
end;
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
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `ismember` enum('YA','NO') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipekamar`
--

CREATE TABLE `tipekamar` (
  `idtipekamar` int(11) NOT NULL,
  `tipekamar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipekamar`
--

INSERT INTO `tipekamar` (`idtipekamar`, `tipekamar`) VALUES
(3, 'Deluxe'),
(1, 'Super Deluxe'),
(4, 'VVIP'),
(5, 'VVIPP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `namauser` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `notelepon` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` enum('ADMIN','RECEPTIONIST') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idusers`, `namauser`, `jk`, `alamat`, `notelepon`, `username`, `password`, `role`, `created_at`, `update_at`) VALUES
(1, 'Bernaldi Rizki Pratama', 'laki-laki', 'Cilacap', '085876398661', 'bernaldirizkipratama@gmail.com', 'kikicici', 'ADMIN', '2022-03-06 06:35:08', '2022-03-06 06:35:08'),
(2, 'Rina Noni Novia', 'perempuan', 'Indonesia', '099999999999', 'rina@gmail.com', '111111', 'ADMIN', '2022-03-08 11:34:51', '2022-03-08 11:34:51');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vw_contoh`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vw_contoh` (
`idkamar` int(11)
,`namakamar` varchar(100)
,`jumlahbed` int(11)
,`url` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vw_contoh`
--
DROP TABLE IF EXISTS `vw_contoh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_contoh`  AS SELECT `kamar`.`idkamar` AS `idkamar`, `kamar`.`namakamar` AS `namakamar`, `kamar`.`jumlahbed` AS `jumlahbed`, `kamargalery`.`url` AS `url` FROM (`kamar` left join `kamargalery` on(`kamar`.`idkamar` = `kamargalery`.`kamarid`)) ;

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
  ADD UNIQUE KEY `reservasiid` (`reservasiid`),
  ADD KEY `extraid` (`extraid`),
  ADD KEY `kamar_idkamar` (`kamar_idkamar`);

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
  ADD KEY `tipekamar` (`tipekamarid`);

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
  ADD KEY `tamu_id` (`tamu_id`);

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
  ADD PRIMARY KEY (`idtipekamar`),
  ADD KEY `tipekamar` (`tipekamar`);

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
  MODIFY `iddetailfasilitaskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `idfasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `idkamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  MODIFY `idkamargalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `idreservasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `idreview` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `idtipekamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`tipekamarid`) REFERENCES `tipekamar` (`idtipekamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
