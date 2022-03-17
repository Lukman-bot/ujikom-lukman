-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2022 pada 12.37
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
(10, 9, 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03'),
(11, 9, 7, '2022-03-12 17:04:47', '2022-03-12 17:04:47'),
(12, 8, 8, '2022-03-13 07:17:37', '2022-03-13 07:17:37'),
(13, 9, 8, '2022-03-13 07:17:37', '2022-03-13 07:17:37'),
(14, 8, 9, '2022-03-14 13:59:57', '2022-03-14 13:59:57'),
(15, 9, 9, '2022-03-14 13:59:57', '2022-03-14 13:59:57'),
(16, 8, 11, '2022-03-14 19:09:46', '2022-03-14 19:09:46'),
(17, 9, 11, '2022-03-14 19:09:46', '2022-03-14 19:09:46');

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
(1, 'Shower', '', '6151-IMG-Picture.jpg', 'HOTEL'),
(2, 'Kamar', '', '8931-IMG-Picture.jpg', 'HOTEL'),
(3, 'Kasur', '', '8345-IMG-Picture.jpg', 'HOTEL'),
(4, 'Shower', '', '3784-IMG-Picture.jpg', 'HOTEL'),
(5, 'Shower', '', '8358-IMG-Picture.jpg', 'HOTEL'),
(6, 'Shower', '', '2421-IMG-Picture.jpg', 'HOTEL'),
(7, 'Shower', '', '5009-IMG-Picture.jpg', 'HOTEL'),
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
(5, 'Kamar 8', 1, 1, 1, '<p>1</p>\r\n', '2022-03-12 11:25:45', '2022-03-12 11:25:45', 3),
(6, 'Kamar 4', 3, 3, 3, '<p>3</p>\r\n', '2022-03-12 11:32:03', '2022-03-12 11:32:03', 1),
(7, 'Kamar 5 new', 1, 1, 1, '<p>1</p>\r\n', '2022-03-12 17:04:47', '2022-03-12 17:04:47', 3),
(8, 'Kamar 1 new 1', 1, 200000, 2, '<p>Sangat Baik</p>\r\n', '2022-03-13 07:17:37', '2022-03-13 07:17:37', 3),
(9, 'Kamar 1', 1, 200000, 12, '<p>Sangat Bagus</p>\r\n', '2022-03-14 13:59:57', '2022-03-14 13:59:57', 3),
(11, 'Kamar 4', 1, 1000, 1, '<p>bagus</p>\r\n', '2022-03-14 19:09:46', '2022-03-14 19:09:46', 3);

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
(4, '7491-IMG-Picture.jpg', '', 'YES', 5, '2022-03-12 11:25:45', '2022-03-12 11:25:45'),
(5, '8841-IMG-Picture.jpg', '', 'YES', 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03'),
(6, '6126-IMG-Picture.jpg', '', 'YES', 7, '2022-03-12 17:04:47', '2022-03-12 17:04:47'),
(7, '9128-IMG-Picture.jpg', '', 'YES', 8, '2022-03-13 07:17:37', '2022-03-13 07:17:37'),
(8, '9915-IMG-Picture.jpg', '', 'YES', 9, '2022-03-14 13:59:57', '2022-03-14 13:59:57'),
(9, '7135-IMG-Picture.jpg', '', 'YES', 11, '2022-03-14 19:09:46', '2022-03-14 19:09:46');

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

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`idrating`, `value`, `created_at`, `updated_at`, `tamuid`, `kamarid`) VALUES
(1, 4, '2022-03-12 19:04:17', '2022-03-12 19:04:17', 1, 5),
(2, 5, '2022-03-12 19:08:57', '2022-03-12 19:08:57', 1, 5),
(3, 1, '2022-03-12 19:09:12', '2022-03-12 19:09:12', 1, 5),
(4, 3, '2022-03-13 07:16:56', '2022-03-13 07:16:56', 2, 6),
(5, 3, '2022-03-13 07:18:07', '2022-03-13 07:18:07', 1, 8),
(6, 5, '2022-03-13 07:29:04', '2022-03-13 07:29:04', 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `idreservasi` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `lama` int(11) NOT NULL,
  `qtykamar` int(11) NOT NULL,
  `status` enum('reservasi','checkin','checkout','cancel') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `canceled_by` int(11) DEFAULT NULL,
  `approved_date` datetime NOT NULL,
  `canceled_date` datetime NOT NULL,
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`idreservasi`, `startdate`, `enddate`, `lama`, `qtykamar`, `status`, `created_at`, `update_at`, `approved_by`, `canceled_by`, `approved_date`, `canceled_date`, `tamuid`, `kamarid`) VALUES
(1, '2022-03-13', '2022-03-13', 1, 1, 'checkout', NULL, NULL, NULL, NULL, '2022-03-13 08:50:23', '2022-03-13 08:50:23', 1, 5);

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
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`idreview`, `review`, `created_at`, `updated_at`, `tamuid`, `kamarid`) VALUES
(1, 'Sangat Bagus', '2022-03-12 19:05:45', '2022-03-12 19:05:45', 1, 5);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`idtamu`, `nik`, `nama`, `jeniskelamin`, `alamat`, `telepon`, `username`, `password`, `ismember`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Lukman Aditiya', 'laki-laki', 'Sindanggalih, Indonesia', '089510396303', 'lukmanadty', '123456789', 'YA', '2022-03-12 18:41:17', '2022-03-12 17:00:00'),
(2, '123456789', 'Lukman', 'laki-laki', 'Indonesia', '08', 'lukman@gmail.com', '12345', 'YA', '2022-03-13 07:16:11', '2022-03-12 17:00:00');

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
  `is_active` char(1) NOT NULL,
  `role` enum('ADMIN','RECEPTIONIST') NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idusers`, `namauser`, `jk`, `alamat`, `notelepon`, `username`, `password`, `is_active`, `role`, `photo`, `created_at`, `update_at`) VALUES
(3, 'Lukman Aditiya', 'laki-laki', 'Sindanggalih', '089510396303', 'lukman@admin.com', '$2y$10$B9.csOPjkB9S4Y59oDpHoefA/M7FxAgg4qGwdBcDfL8/aZvkP.Y7K', 'Y', 'ADMIN', '7209-IMG-Picture.jpg', '2022-03-15 19:14:51', '2022-03-15 19:14:51'),
(4, 'Lukman Aditiya', 'laki-laki', 'Indonesia', '089510396303', 'lukman@resepsionis.com', '$2y$10$G6olfgO4UjB1ZnK81vq7Rud5ekZcdHaySwXHutxWu7ccgN7RAol9W', 'Y', 'RECEPTIONIST', '7224-IMG-Picture.jpg', '2022-03-15 19:28:08', '2022-03-15 19:28:08');

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
  ADD KEY `tamu_id` (`tamuid`),
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
  MODIFY `iddetailfasilitaskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `idkamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  MODIFY `idkamargalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `idreservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `idreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `idtipekamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`tipekamarid`) REFERENCES `tipekamar` (`idtipekamar`);

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
