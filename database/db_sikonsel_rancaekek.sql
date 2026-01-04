-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 10:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sikonsel_rancaekek`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan_bk`
--

CREATE TABLE `laporan_bk` (
  `id_laporan` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `judul_laporan` varchar(150) NOT NULL,
  `isi_laporan` text NOT NULL,
  `kategori` enum('Bullying','Masalah Belajar','Pribadi','Sosial') NOT NULL,
  `status` enum('Pending','Diproses','Selesai') DEFAULT 'Pending',
  `tgl_laporan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_bk`
--

INSERT INTO `laporan_bk` (`id_laporan`, `id_siswa`, `id_guru`, `judul_laporan`, `isi_laporan`, `kategori`, `status`, `tgl_laporan`) VALUES
(8, 1, 1, 'Masalah Belajar', 'ZI0GKWv0b4qefhuuzgJUO0ZxbnJkbFBya3VTZnhFYms2cEwyem5mRHYxNWRGNnpKa0g1U1J0cWJaZFZUcU5hTW0yQ1Vtb3NaZHh6U2FkZTErSHArQzVORXpZL2svVFVjVWJlMm9sblIxcGo4N1dQWTFobSsxMzU2d1ZNPQ==', '', 'Selesai', '2026-01-03 16:30:49'),
(9, 1, 1, 'Laporan Orang Tua: Budi malas ke sekolah pengen k...', 'tlAM6zayVJYL1lfDhA26LHM1TDc0WWo0VzFwNTF6T2cybzE0QVNJZjV2aHo4Skc5c1kxOWIyTHRhTFJBYjRQek5Ob2ozS2RqNmtzUk5BRWIyOVdoNm96U3hNVXdCRVdZZWRvUmsvMVpnMHdnVzNld0lTVDJ3SS9XSDUxK1pDRzJMcXlOSy9CTzhzQUtSdWpOb2xtelNpVUJOeVJCYzNsclRIU1lsWGM5Zk9mcWlvSGxkTFJOcEtlMW9mOFUrVkI3SlJsYlhrd0NBT0lFWFFkVk5FSFcrVDRJUkFRalIzMHRUR1VmczVUZHFrSkt1UUU3TllSWlh3UE5SK2tGdXdoZlJtdU5COXFTajVZTVNXRnpoaFBYZ3hpZWtUSThPT0NjVWkycVZiMG1RRVVWcnRLbi9TZDZBT0x0VWV3ZSsweVRwcmk4WC83ODdjdGlaYVBUTUorRlBZcUJJSTVHZ29WU0VBazdUUT09', 'Pribadi', 'Selesai', '2026-01-03 16:34:17'),
(10, 1, 1, 'Masalah Belajar', '8KRWBxWB0vogHTLBRsmlR2RQVVNPWWRYSU5XbHRYU3lLLzFwSXJ5QjhLZ3Y1cUxZcUxOMjRFMjVvNkU9', '', 'Selesai', '2026-01-04 04:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_temu` date NOT NULL,
  `jam_temu` time NOT NULL,
  `keperluan` text NOT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak','Selesai') DEFAULT 'Menunggu',
  `catatan_guru` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `id_siswa`, `tgl_temu`, `jam_temu`, `keperluan`, `status`, `catatan_guru`, `created_at`) VALUES
(1, 1, '2026-01-03', '00:00:00', 'Konseling Pribadi', 'Ditolak', 'skip dah malem', '2026-01-02 16:30:42'),
(2, 1, '2026-01-12', '14:00:00', 'Masalah Belajar', 'Disetujui', 'baik, mari jadwalkan konseling di sekolah ya', '2026-01-04 04:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `user_id`, `nisn`, `kelas`, `alamat`) VALUES
(1, 6, '12345', 'IX-B', 'Soehatta raceway');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','guru_bk','siswa','orang_tua') NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `nama_lengkap`, `created_at`) VALUES
(1, 'admin_bk', '$2y$10$aLgjXWMEjeTq1jVPOwMMU.A/9XaAkcEj/lzUwv.LUzrK5nsZ..Lri', 'guru_bk', 'Ibu Guru BK', '2025-12-31 16:58:18'),
(6, '12345', '$2y$10$6TZOr2NyDfnn58lQB69hyuEaakYqMoukuuvvYp/ZOCJXZn5EDPukq', 'siswa', 'Budi Speed', '2025-12-31 18:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan_bk`
--
ALTER TABLE `laporan_bk`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan_bk`
--
ALTER TABLE `laporan_bk`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan_bk`
--
ALTER TABLE `laporan_bk`
  ADD CONSTRAINT `laporan_bk_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE,
  ADD CONSTRAINT `laporan_bk_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
