-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 01:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_kip`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_testing`
--

CREATE TABLE `data_testing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `asalSekolah` varchar(255) NOT NULL,
  `rataRapor` varchar(255) NOT NULL,
  `penghasilanOrtu` enum('1','2','3','4','5') NOT NULL,
  `tanggunganOrtu` int(11) NOT NULL,
  `riwayatOrganisasi` text DEFAULT NULL,
  `riwayatPrestasi` text DEFAULT NULL,
  `KIP` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_testing`
--

INSERT INTO `data_testing` (`id`, `nama`, `asalSekolah`, `rataRapor`, `penghasilanOrtu`, `tanggunganOrtu`, `riwayatOrganisasi`, `riwayatPrestasi`, `KIP`, `created_at`, `updated_at`) VALUES
(1, 'Laura', 'SMK N 1 Kedawung', '1', '1', 2, '2', '2', '1', '2023-08-04 03:01:32', '2023-08-04 03:01:32'),
(5, 'illal', 'asdada', '5', '4', 3, '1', '1', '2', '2023-08-06 07:47:36', '2023-08-07 02:07:07'),
(6, 'Dwi', 'SMA 4', '2', '1', 2, '2', '2', '1', '2023-08-07 02:39:37', '2023-08-07 02:39:37'),
(7, 'Al', 'MAN', '3', '2', 3, '3', '2', '2', '2023-08-07 06:41:56', '2023-08-07 06:41:56'),
(8, 'Sapa', 'MAN', '3', '3', 3, '3', '3', '2', '2023-08-07 07:56:55', '2023-08-07 07:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `data_training`
--

CREATE TABLE `data_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `asalSekolah` varchar(255) NOT NULL,
  `rataRapor` varchar(255) NOT NULL,
  `penghasilanOrtu` int(11) NOT NULL,
  `tanggunganOrtu` int(11) NOT NULL,
  `riwayatOrganisasi` text DEFAULT NULL,
  `riwayatPrestasi` text DEFAULT NULL,
  `KIP` enum('1','2') NOT NULL,
  `Klasifikasi` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_training`
--

INSERT INTO `data_training` (`id`, `nama`, `asalSekolah`, `rataRapor`, `penghasilanOrtu`, `tanggunganOrtu`, `riwayatOrganisasi`, `riwayatPrestasi`, `KIP`, `Klasifikasi`, `created_at`, `updated_at`) VALUES
(2, 'Stephani Trivena', 'SMA N 8 Cirebon', '5', 1, 3, '3', '3', '1', '1', '2023-08-04 03:03:24', '2023-08-04 03:03:24'),
(7, 'Ujumaki', 'Skinfa', '1', 3, 2, '3', '3', '2', '2', '2023-08-07 03:16:30', '2023-08-07 03:16:30'),
(11, 'Dia', 'Anu', '3', 3, 3, '3', '3', '2', '2', '2023-08-07 07:57:45', '2023-08-07 07:57:45'),
(12, 'Saya', 'MTs', '3', 3, 2, '4', '3', '1', '1', '2023-08-07 08:44:12', '2023-08-07 08:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jarak`
--

CREATE TABLE `jarak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testing_id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL,
  `jarak` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_25_053535_create_data_testing_table', 1),
(6, '2023_07_25_054230_create_data_training_table', 1),
(7, '2023_08_04_092949_create_nilai_k_table', 1),
(8, '2023_08_04_093333_create_jarak_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_k`
--

CREATE TABLE `nilai_k` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai_k` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL DEFAULT '2',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$jJd9GJsWlhy6mEOlBx77o.Nn36EM.HAhJ184RSxfvDXpPLjidDo9C', '1', NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$MvtJS38LqaWt7KyngwR1M.AvBM9RkNI3yhS6dz87wmGPMhoIacbCe', '2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_testing`
--
ALTER TABLE `data_testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_training`
--
ALTER TABLE `data_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jarak`
--
ALTER TABLE `jarak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jarak_testing_id_foreign` (`testing_id`),
  ADD KEY `jarak_training_id_foreign` (`training_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_k`
--
ALTER TABLE `nilai_k`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_testing`
--
ALTER TABLE `data_testing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_training`
--
ALTER TABLE `data_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jarak`
--
ALTER TABLE `jarak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilai_k`
--
ALTER TABLE `nilai_k`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jarak`
--
ALTER TABLE `jarak`
  ADD CONSTRAINT `jarak_testing_id_foreign` FOREIGN KEY (`testing_id`) REFERENCES `data_testing` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jarak_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `data_training` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
