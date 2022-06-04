-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 04:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_laracamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

CREATE TABLE `camps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`id`, `title`, `slug`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gila Belajar', 'gila-belajar', 280, '2022-04-15 03:06:29', '2022-04-15 03:06:29', NULL),
(2, 'Baru Mulai', 'baru-mulai', 140, '2022-04-15 03:06:29', '2022-04-15 03:06:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `camp_benefits`
--

CREATE TABLE `camp_benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `camp_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `camp_benefits`
--

INSERT INTO `camp_benefits` (`id`, `camp_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pro Techstack Kit', NULL, NULL),
(2, 1, 'iMac Pro 2021 & Display', NULL, NULL),
(3, 1, '1-1 Mentoring Program', NULL, NULL),
(4, 1, 'Final Project Certificate', NULL, NULL),
(5, 1, 'Offline Course Videos', NULL, NULL),
(6, 1, 'Future Job Opportunity', NULL, NULL),
(7, 1, 'Premium Design Kit', NULL, NULL),
(8, 1, 'Website Builder', NULL, NULL),
(9, 2, '1-1 Mentoring Program', NULL, NULL),
(10, 2, 'Final Project Certificate', NULL, NULL),
(11, 2, 'Offline Course Videos', NULL, NULL),
(12, 1, 'Pro Techstack Kit', NULL, NULL),
(13, 1, 'iMac Pro 2021 & Display', NULL, NULL),
(14, 1, '1-1 Mentoring Program', NULL, NULL),
(15, 1, 'Final Project Certificate', NULL, NULL),
(16, 1, 'Offline Course Videos', NULL, NULL),
(17, 1, 'Future Job Opportunity', NULL, NULL),
(18, 1, 'Premium Design Kit', NULL, NULL),
(19, 1, 'Website Builder', NULL, NULL),
(20, 2, '1-1 Mentoring Program', NULL, NULL),
(21, 2, 'Final Project Certificate', NULL, NULL),
(22, 2, 'Offline Course Videos', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `camp_id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired` date NOT NULL,
  `cvc` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `user_id`, `camp_id`, `card_number`, `expired`, `cvc`, `is_paid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '2345678901', '2022-11-30', '222', 1, '2022-04-16 04:00:14', '2022-04-18 03:30:11', NULL),
(2, 2, 2, '45645678', '2022-12-31', '456', 1, '2022-04-27 00:38:18', '2022-04-27 00:45:49', NULL),
(3, 2, 2, '45645678', '2022-12-31', '456', 1, '2022-04-27 00:38:31', '2022-05-08 20:20:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_11_055853_create_table_camps', 1),
(6, '2022_04_11_060720_create_camp_benefits_table', 1),
(7, '2022_04_11_061627_create_checkouts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `occupation`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@laracamp.com', '2022-04-15 03:06:29', '$2y$10$qdysTaFEHCpcUQqs14HQT..ET8tQAF9ByTg6rcmLSVDe2CCLp0m8u', NULL, NULL, 1, 'KdqgpokrL4Z7ELVGVlVq4cMPO1n2nVqlSD2kXnFTKW27pWAOSwxcRUlkIxVF', '2022-04-15 03:06:29', '2022-04-15 03:06:29', NULL),
(2, '3103120076 EVI NIRMALASARI', '3103120076@student.smktelkom-pwt.sch.id', NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJwKH0fL_IrzVa3KPOnK4T2yWLagHi54z1UJYJUt=s96-c', 'Programmer', 0, '9L7EiNAvRZMBshI6XmBduBBEg7VAIqQktTI0TdsFEEmMNIvwETZBH7KmDEFq', '2022-04-15 03:06:50', '2022-04-16 04:00:14', NULL),
(4, 'Evi Nirmalasari', 'evinirmalasarisari@gmail.com', NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJwSTguVUkOX-9JRf6EwUlxWejK-YtGOKw33PEvx=s96-c', NULL, 0, '8qDzzCNX17kvnK0MM5LfWLBLDz9lfnNCeGbSbtEKOHuBTtbi68V1CqkqDpgz', '2022-05-10 03:55:16', '2022-05-10 03:55:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camps`
--
ALTER TABLE `camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp_benefits`
--
ALTER TABLE `camp_benefits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_benefits_camp_id_foreign` (`camp_id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkouts_user_id_foreign` (`user_id`),
  ADD KEY `checkouts_camp_id_foreign` (`camp_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `camps`
--
ALTER TABLE `camps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `camp_benefits`
--
ALTER TABLE `camp_benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camp_benefits`
--
ALTER TABLE `camp_benefits`
  ADD CONSTRAINT `camp_benefits_camp_id_foreign` FOREIGN KEY (`camp_id`) REFERENCES `camps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD CONSTRAINT `checkouts_camp_id_foreign` FOREIGN KEY (`camp_id`) REFERENCES `camps` (`id`),
  ADD CONSTRAINT `checkouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
