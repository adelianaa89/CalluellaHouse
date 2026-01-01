-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2025 at 06:09 AM
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
-- Database: `db_hotel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_whatsapp` varchar(255) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `jumlah_tamu` int(11) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `no_hp` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `no_hp`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, 'Admin', 'admin', 'admin@example.com', NULL, '$2y$10$sJsyIxg18afLZNEPlMgtMOK4mfryWLKA2o3/nxNaUeURs2PIxBuGG', 'admin', NULL, NULL, NULL, '2025-05-30 15:02:17', '2025-05-30 15:02:17'),
(21, 'Pembeli', 'pembeli', 'pembeli@example.com', NULL, '$2y$10$sJsyIxg18afLZNEPlMgtMOK4mfryWLKA2o3/nxNaUeURs2PIxBuGG', 'user', '089622981080', 'pontianak', NULL, '2025-05-30 15:02:17', '2025-05-30 15:02:17'),
(22, 'windi fikri', 'admin123', 'diwin321@gmail.com', NULL, '$2y$10$rST7.r5KVhYD3ZnpQmulPOd56mTFK5r.lv40wM27XsvlklnlTvWYm', 'user', NULL, NULL, NULL, '2025-05-31 03:04:03', '2025-05-31 03:04:03'),
(23, 'test', 'test', 'test@gmail.com', NULL, '$2y$10$8yQ9hI1hDLHvif0LwYGXNOypRGATNyoUf.wj1Vwy8xjhEJL5tfilq', 'user', '08972867676', 'test', NULL, '2025-05-31 03:06:28', '2025-05-31 03:06:28'),
(24, 'Lena Liana', 'Liaa', 'lenaliana88@gmail.com', NULL, '$2y$10$m/yT.uaHhUNCf0lR1pCkpO75EfhVGA6lIxH3P0qmzBiwZVgnF.Fru', 'user', '081228192998', 'Jl. Melati', NULL, '2025-05-31 16:07:18', '2025-05-31 16:07:18'),
(25, 'Adelia Eka Putriana', 'adel', 'adeliaeka88@gmail.com', NULL, '$2y$10$lWcQiDGwOvwDqsop4ebNu.0.xKSuH/VnSk/XbCkfyfheFbdXMKABG', 'user', '081228192998', 'Jl. Perum Saga Baru, Blok A1', NULL, '2025-05-31 17:17:58', '2025-05-31 17:17:58'),
(26, 'yessi', 'oliviasaripurba', '2311103120@ittelkom-pwt.ac.id', NULL, '$2y$10$QQDBiKV6xilB58KnLtEix.5LACZ1/HtO7eHB2pkIVaHgJqmm1478u', 'user', '0887773724795', 'JL.Sudagaran', NULL, '2025-05-31 17:28:48', '2025-05-31 17:28:48'),
(27, 'abc', 'abc123', 'khadeejatatbhista@gmail.com', NULL, '$2y$10$r6GN/.cqURAVlynVinuGFeLT6pYc67Vm5CsliuTRN4PZjZWKGAxDe', 'user', '088232593317', 'purwokerto', NULL, '2025-05-31 17:33:17', '2025-05-31 17:33:17'),
(28, 'Navaryn', 'varyn', 'navaryn@gmail.com', NULL, '$2y$10$2PV97KR6xLDUIBGVwKWUiO/RRsrfFYmHT40Ep2pWPKwn1oT3mSq9i', 'user', '08232935859', 'Jl. Mawar', NULL, '2025-05-31 22:24:15', '2025-05-31 22:24:15'),
(29, 'meio', 'meio', 'meio25@gmail', NULL, '$2y$10$g3Tu.A.GMvoYcDDFtHQmwuDSNKj6LXnIwku1dMZX0pj7RWzwPk39i', 'user', '08342154667', 'Telkom', NULL, '2025-05-31 22:56:36', '2025-05-31 22:56:36'),
(30, 'Anya Forger', 'anyaisme', 'kanggdaniell81@gmail.com', NULL, '$2y$10$sF/Zu2oP5srWYz2UvBEjiOT1TldF8ncSMZZfSm98MeRiKd5NRX4xi', 'user', '-', 'Jalan Weling Raya CtVIII, Sleman', NULL, '2025-05-31 23:15:23', '2025-05-31 23:15:23'),
(31, 'rido eido', 'ridodo', 'rido@gmail.com', NULL, '$2y$10$Kj8ZzNk/6I8S17A3SdMkzuOIdtt7C.PVjg4zdtXkU2lQUvqKKbQrm', 'user', '081455748967', 'purwokerto', NULL, '2025-06-01 00:15:35', '2025-06-01 00:15:35'),
(32, 'bbb', 'bbbb3459', 'bbbb3459@gmail.com', NULL, '$2y$10$Hcr039PIC3mbdHm8VkO8vefNcwlqo1q6YNQyphsT.8bzNdwteiZVq', 'user', '089937465334', 'amrik', NULL, '2025-06-01 09:34:26', '2025-06-01 09:34:26'),
(33, 'saturnus', 'saturnus20000', 'saturnus@gmail.com', NULL, '$2y$10$y2niqmIcEFbSbSSndOvqa.dsFWwyMyHISaPwUTXWfKnv2lMH6y.jC', 'user', '082136981230', 'tegal', NULL, '2025-06-01 09:35:29', '2025-06-01 09:35:29'),
(34, 'bulibalibol', 'bulibalibol121212', 'miaw@gmail.com', NULL, '$2y$10$L5/L2/stpAOrhaLvueDq7u/TA1EEJllBZEFSSZA9X0zTo1LZ/EToO', 'user', '082137213823', 'purwokerto', NULL, '2025-06-01 09:36:28', '2025-06-01 09:36:28'),
(35, 'bastiansteel', 'bastiancowokekar', 'bastian@gmail.com', NULL, '$2y$10$6N52p7TCS4NyTXeLE9BUzOvDyLvI7Qkw4lzMjxPJGGaF7guALYFsW', 'user', '081213237634', 'jakarta', NULL, '2025-06-01 09:37:17', '2025-06-01 09:37:17'),
(36, 'randi', 'princerandi', 'gatau@gmail.com', NULL, '$2y$10$7UELsW9riNkxOuMR5BPLpuWc2Hr7ZDNOeOKN19f23TwnC2SOrqTHq', 'user', '0812637527637', 'cilacap', NULL, '2025-06-01 09:38:11', '2025-06-01 09:38:11'),
(37, 'wahyu', 'whyu9813798163', 'wahyu@gmail.com', NULL, '$2y$10$DxRZleMwmZ7NzT7l1fScSeQpUGfGr24x6ztDtVE3aCGDu4z.JNdqO', 'user', '083129137974', 'bandung', NULL, '2025-06-01 09:39:39', '2025-06-01 09:39:39'),
(38, 'ECI', 'oliviasaripurba', 'yessiolivia010405@gmail.com', NULL, '$2y$10$7Qcn5IGMv./Cw8mEjwwuteBwnCP13igk077dJl4b4wComzGP.6WA2', 'user', '0887773724795', 'JL,SUDAGARAN', NULL, '2025-06-02 01:02:39', '2025-06-02 01:02:39'),
(39, 'dfg567', 'dfg5678910', 'dfg@Gmail.com', NULL, '$2y$10$icOm5y3bYrtU08U3p4PtzeKWitYp0eGtXmHo.4BXkI5n0FosC.aMi', 'user', '082367854912', 'malang', NULL, '2025-06-02 08:26:06', '2025-06-02 08:26:06'),
(40, 'qwueowi213810923', 'qwueowi', 'qwueowi@gmail.com', NULL, '$2y$10$H1eUzz0pMU6milDzD56Tvux1DqIGCOT4f.Ix/HQQ3v8JVU9X1KX0C', 'user', '08366248193213', 'surabaya', NULL, '2025-06-02 08:27:12', '2025-06-02 08:27:12'),
(41, 'rangga budi', 'ranggab102938', 'ranggab@gmail.com', NULL, '$2y$10$Zd0VddV.F3N9H.oJy.ci8en5qKTsPctmX8fop38YqnYwSK8vpSSX6', 'user', '089172635401', 'cirebon', NULL, '2025-06-02 08:29:15', '2025-06-02 08:29:15'),
(42, 'hongdaeguy', 'hongdaeguy0398012', 'hongdaemosthandsomeguy@gmail.com', NULL, '$2y$10$LoCRvT60mA1kp9Pw/ids7.1XdWK7a0hVpAZl36jC.zWK/G1PbUS8y', 'user', '0836164782356', 'jakarta', NULL, '2025-06-02 08:30:33', '2025-06-02 08:30:33'),
(43, 'jennie kim', 'jennie', 'jenniekim@gmail.com', NULL, '$2y$10$0tzwuD0QYe/go5uNT0eZWeKq1.NUf9QfxNS6oyObYl3F5PGuG9lza', 'user', '0831648237982', 'jakarta', NULL, '2025-06-02 08:31:52', '2025-06-02 08:31:52'),
(44, 'chucky', 'theworstdoll', 'chucky@gmail.com', NULL, '$2y$10$d5LsSfLH3TQ8Lk4NVXqSc.85TGbw.nHbwcuEbDydS6UHwLbPxvAGy', 'user', '082136813444', 'bandung', NULL, '2025-06-02 08:33:05', '2025-06-02 08:33:05'),
(45, 'cassel', 'cassel321', 'cassel@gmail.com', NULL, '$2y$10$AJTiPI6tFmd9KFkaUp2w4OB/e/CJeAFFvKl44JX4ddO1i6tRBGk9K', 'user', '0817625349221', 'bogor', NULL, '2025-06-02 08:35:55', '2025-06-02 08:35:55'),
(46, 'Adelia Putri', 'adelia123', 'adelia1749639508871@example.com', NULL, '$2y$10$GwT9X3xOIKRGzxPJ2zsILeRGhhMc3F/ZYpsQTNeEfZgxeYdIhguTu', 'user', '081234567890', 'Purwokerto', NULL, '2025-06-11 10:58:32', '2025-06-11 10:58:32'),
(47, 'Adelia Eka Putriana', 'adelia', 'adwad@gmail.com', NULL, '$2y$10$RZkNkT3uwwN7RgWPVkwpp.f3oMdgWTLKqBDb7yGwRzTYosr.jWnJW', 'user', '081228192998', 'Jl. Perum Saga Baru, Blok A1', NULL, '2025-06-12 14:01:43', '2025-06-12 14:01:43'),
(48, 'User Baru', 'userlama', 'adelia1749779162923@example.com', NULL, '$2y$10$22it2xpITAmuAFBqrYACYu5sCniJ7EUofWo44AltG39kAXEPTubUK', 'user', '089999999999', 'Alamat', NULL, '2025-06-13 01:46:15', '2025-06-13 01:46:15'),
(49, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$vXqsh6bv7dAq3N.1r35cou6evSz9.H94XyghKUy4geJ6TLimKd.ly', 'user', '0987654321', 'bebas', NULL, '2025-11-25 03:48:15', '2025-11-25 03:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;