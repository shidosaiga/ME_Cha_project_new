-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 03:45 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6228438`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'icon_mecha.png', '2021-12-28 03:34:42', '2021-12-28 03:34:42'),
(3, 'logo.png', '2021-12-28 03:34:51', '2021-12-28 03:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Me\'Cha ชานมไข่มุก', '12.png', 'สำหรับเรื่องรสชาติของชาไข่มุกมีชานั้น จะเน้นไปที่กลิ่นชานมที่มีความมัน กลมกล่อมไม่หวานมากจนเกินไปลูกค้า สามารถเพิ่มหรือลดระดับความหวานได้เองอีกด้วยและที่สำคัญวัตถุดิบของเรา ไม่มีส่วนผสมของไขมันทรานส์จึงมั่นใจได้ว่าปลอดภัยต่อสุขภาพ', '2021-12-28 02:36:44', '2021-12-28 02:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `text`, `popular`, `promotion`, `productname`, `background`, `price`, `created_at`, `updated_at`) VALUES
(1, 'นมสด', '02.png', 'pro9.jpg', 'นมสด', 'icon_mecha.png', '25.00', '2021-12-28 04:17:20', '2021-12-28 04:17:40');

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
(4, '2021_08_17_103030_create_products_table', 1),
(5, '2021_11_19_095823_create_typeproducts_table', 1),
(6, '2021_11_25_145032_create_promotions_table', 1),
(7, '2021_11_26_100407_create_backgrounds_table', 1),
(8, '2021_11_26_102706_create_contents_table', 1),
(9, '2021_11_30_112739_create_homepages_table', 1),
(10, '2021_12_28_103912_add_admin_field', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `typeproduct_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `typeproduct_id`, `created_at`, `updated_at`) VALUES
(1, 'นมสด', '+ไข่มุก 5฿.', '03.PNG', '25.00', 1, '2021-12-28 02:35:26', '2021-12-28 02:40:18'),
(2, 'โซดาแดง', '+ไขมุก 5฿.', '12.png', '25.00', 1, '2021-12-28 02:40:05', '2021-12-28 02:40:05'),
(3, 'ชานม', '+ไข่มุก 5฿ใ', '02.png', '25.00', 1, '2021-12-28 02:41:43', '2021-12-28 02:41:43'),
(4, 'โกโก้', '+ไข่มุก 5฿.', '04.png', '25.00', 1, '2021-12-28 02:42:27', '2021-12-28 02:42:27'),
(5, 'ชาเขียว', '+ไข่มุก 5฿', '05.png', '25.00', 1, '2021-12-28 02:42:49', '2021-12-28 02:42:49'),
(6, 'ชาเขียว แอปเปิ้ล', '+ไข่มุก 5฿', '06.png', '25.00', 1, '2021-12-28 02:43:23', '2021-12-28 02:43:23'),
(7, 'นมเย็น', '+ไข่มุก 5฿', '07.png', '25.00', 1, '2021-12-28 02:43:52', '2021-12-28 02:43:52'),
(8, 'นมแอปเปิ้ล', '+ไข่มุก 5.บาท฿', '09.png', '25.00', 1, '2021-12-28 02:44:33', '2021-12-28 02:44:33'),
(9, 'บราวชูกา', '+ไข่มุก 5฿', '10.png', '25.00', 1, '2021-12-28 02:45:11', '2021-12-28 02:45:11'),
(10, 'กาแฟ', '+ไข่มุก 5.บาท฿', '01.png', '25.00', 1, '2021-12-28 02:45:46', '2021-12-28 02:45:46'),
(11, 'ชามะลิ', '+ไข่มุก 5฿', '08.png', '25.00', 1, '2021-12-28 03:28:39', '2021-12-28 03:28:39'),
(12, 'ชานมเย็น', '+ไข่มุก 5฿', '11.png', '25.00', 1, '2021-12-28 03:30:42', '2021-12-28 03:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'pro10.jpg', '2021-12-28 03:35:37', '2021-12-28 03:35:37'),
(2, 'pro1.jpg', '2021-12-28 03:35:44', '2021-12-28 04:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `typeproducts`
--

CREATE TABLE `typeproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typeproducts`
--

INSERT INTO `typeproducts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'เครื่องดื่ม', '2021-12-28 03:35:14', '2021-12-28 03:35:14'),
(2, 'ขนม', '2021-12-28 03:35:24', '2021-12-28 03:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `email_verified_at`, `password`, `address`, `isAdmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '084-698-0472', NULL, '$2y$10$eE0nfRQdXEZXT1bQFNMUzuwuAJggu.CTOwNA/tGsee8yzl25CCDgK', 'นนทบุรี', 1, NULL, '2021-12-28 02:33:43', '2021-12-28 02:33:43'),
(2, 'user', 'user', 'user@gmail.com', '066-9996-543', NULL, '$2y$10$0lZCk7pnTMsFBa1kPIcteOrH9dq4nJnD08JXBcbG3zbUPy5dAjs56', 'นนทบุรี', 0, NULL, '2021-12-28 03:48:53', '2022-01-11 02:20:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeproducts`
--
ALTER TABLE `typeproducts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `typeproducts`
--
ALTER TABLE `typeproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
