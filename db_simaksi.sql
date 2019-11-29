-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 02:15 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simaksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`, `status`) VALUES
(2, '1574879304_8. erd.pdf', 'coba', '2019-11-27 11:28:24', '2019-11-27 12:14:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(5) NOT NULL,
  `desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `belakang` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Menunggu',
  `alasan` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `user_id`, `desa`, `kecamatan`, `keterangan`, `created_at`, `updated_at`, `nama`, `belakang`, `status`, `alasan`) VALUES
(13, 1, '1574879084_logo-unej.png', '1574879084_logo-unej-baku.png', 'cascaca', '2019-11-27 11:24:44', '2019-11-27 17:31:36', 'daigo', '', 'tidak disetujui', NULL),
(14, 8, '1574879207_logo-unej-baku.png', '1574879207_logo-unej.png', 'caca', '2019-11-27 11:26:47', '2019-11-27 11:27:07', 'Irawan', 'Budi', 'disetujui', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporanakhir`
--

CREATE TABLE `laporanakhir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(5) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporanakhir`
--

INSERT INTO `laporanakhir` (`id`, `user_id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 1, '1574885175_8. erd.pdf', 'jajajaja', '2019-11-27 13:06:15', '2019-11-27 13:06:15'),
(3, 8, '1574900022_8. erd.pdf', 'coba coba', '2019-11-27 17:13:42', '2019-11-27 17:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_24_030333_create_tabels_table', 1),
(2, '2019_11_27_192509_create_laporan_akhirs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'daigo', '', 'namikze085@gmail.com', NULL, '$2y$10$o4uV1ZFlHv1SbKu919.lg.qPI1vg8xGJWLo9FZ5S9DG1Sr/4Jzzka', NULL, '2019-10-06 00:57:03', '2019-10-06 00:57:03'),
(2, 'irawan', '', 'ibudi1496@gmail.com', NULL, '$2y$10$AtdG2inFyF7x.UBraJUhCOjlCu.vePemXSWOVBXMi35UZyBT8OUAa', NULL, '2019-10-06 21:16:45', '2019-10-06 21:16:45'),
(3, 'jjj', '', 'jjj@gmail.com', NULL, '$2y$10$28FYu7inJYHT25d34ow/4OY4MeYWTaPV/wR6iVWHmTpq4yPaEfgHO', NULL, '2019-10-06 21:19:54', '2019-10-06 21:19:54'),
(4, 'kkk', '', 'kkk@gmail.com', NULL, '$2y$10$h8m.StO3.CIEsWgFywYZNepj1jy.yMRFh1ooThTZZ/H/uEDHxg88.', NULL, '2019-10-06 21:36:46', '2019-10-06 21:36:46'),
(5, 'bbb', '', 'bbb@gmail.com', NULL, '$2y$10$njUXvFdYEopiz6sKjQgiW.FeGn1PQz0MYzzit5XOyGHVs47HMk4om', NULL, '2019-10-06 21:41:12', '2019-10-06 21:41:12'),
(6, 'uuuu', '', 'uuuu@gmail.com', NULL, '$2y$10$wZmouvIUQuZh/FwSf34Jyuz/FogwNL76Srh9ZjYdNZ/ER1bvBEHti', NULL, '2019-10-06 21:44:00', '2019-10-06 21:44:00'),
(7, 'yyyy', '', 'yyy@gmail.com', NULL, '$2y$10$GkaXVgyzrOKLw80ZczvovOk7RFJtFnwezi.tJ0qh/97IUY7PRhT4i', NULL, '2019-10-06 21:57:09', '2019-10-06 21:57:09'),
(8, 'Irawan', 'Budi', 'budi123@gmail.com', NULL, '$2y$10$FQ0.FBcxHeG9lmHzg6z1uezsRp0SKKZ16fMjii9jEdsjEaXLzUx3C', NULL, '2019-11-27 10:03:24', '2019-11-27 10:03:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporanakhir`
--
ALTER TABLE `laporanakhir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `laporanakhir`
--
ALTER TABLE `laporanakhir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
