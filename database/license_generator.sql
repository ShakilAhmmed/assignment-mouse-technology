-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 01, 2020 at 12:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `license_generator`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_exp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `org_name`, `street`, `city`, `mobile`, `license_key`, `license_exp_date`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sunny', 'Hermann', 'Kirlin-Barton', 'Ludie Crossroad', 'Gutkowskiside', '+1333011831071', 'MS02LXROa3JTdFpY', '2021-05-01', 'bo.thompson@example.com', '2020-11-01 01:11:00', '$2y$10$LcT6EO4WQ9V1VYpvLcp3FefiFl5f.HIWbcLki4NeMJRYzUd4T0HLi', '0FenfeJXXZ2mtDZBq7XJd1o7jUf0XGgRHBRFQSxs4N6Ea3QJx3ltUcyVjBKk', '2020-11-01 01:11:00', '2020-11-01 05:20:04'),
(2, 'Nelda', 'Kunde', 'Goodwin Ltd', 'Hills Lodge', 'Maggioview', '+8787724102053', NULL, NULL, 'jakubowski.alvah@example.net', '2020-11-01 01:11:00', '$2y$10$a9/37mFsDkGo/W4gMOBKaeQheRk1ndk/yJp.2bjelWPsm5FUIc36W', 'cnjKy7CWGW', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(3, 'Leanne', 'Feeney', 'Lind, Zemlak and Gottlieb', 'Bartell Divide', 'Claudberg', '+1816910929919', NULL, NULL, 'helen36@example.net', '2020-11-01 01:11:00', '$2y$10$EmTWN.uxH.zEBC6hIsOEBOcHGUql/TzqZ37VtRQotNO8hdS4QIzIS', 'gDBJRaADkM', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(4, 'Karli', 'Feil', 'Crooks, Kirlin and Schneider', 'Miller Roads', 'Harmonymouth', '+8041017973565', NULL, NULL, 'bednar.monte@example.net', '2020-11-01 01:11:00', '$2y$10$OnNWEANldiLZwpgAamsXW.2diRDujATKMcywPywWaYlE3SOQ6S5CC', 'cDXJki7Ela', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(5, 'Viviane', 'Zemlak', 'Hauck PLC', 'Jerde Plain', 'Susietown', '+8882734219359', NULL, NULL, 'batz.raquel@example.org', '2020-11-01 01:11:00', '$2y$10$GCYkSq72IeTA.FSe1/7XVu63SLRhG6ElYwfne.4oBxBvC5.twC0dG', 'kn72xX3wwV', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(6, 'Alena', 'Grimes', 'Romaguera, Kihn and Spinka', 'Anna Dale', 'Domenicatown', '+3518696622325', NULL, NULL, 'goyette.dayne@example.org', '2020-11-01 01:11:00', '$2y$10$s6tyLaYnBKQnLHa431TFUu1kOI84cP.67RDBgOSaAt99Ce8BtiiBy', 'rg0NHuki0r', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(7, 'Simone', 'McKenzie', 'Weissnat, Hammes and Nader', 'Alessia Ferry', 'East Viviane', '+8010904578696', NULL, NULL, 'hillard.gibson@example.com', '2020-11-01 01:11:00', '$2y$10$ov3pLo6rEU.Pi7aCNvGzMu2ZxZPTKKIzRQFnRjLPSBBzieA3jvZR.', 'SrbcyMRlHY', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(8, 'Calista', 'Bode', 'Oberbrunner-McDermott', 'Ankunding Ways', 'Hobartbury', '+2110093354369', NULL, NULL, 'elinor.dubuque@example.org', '2020-11-01 01:11:00', '$2y$10$gcRl3qnheeSr17R.raTS0uwxWJpctG58ZgsG6hLyVDUcVy00oljR.', 'm0gTqUwAar', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(9, 'Selmer', 'Hill', 'Batz-Vandervort', 'Simeon Summit', 'Parisianland', '+7279338188104', NULL, NULL, 'sawayn.karen@example.org', '2020-11-01 01:11:00', '$2y$10$I2BbmehLrf8UTKH6znLFsuUCGDONFYqWO6.SSinU0zYfHwlzVn4OK', 'gqFCXzoZzo', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(10, 'Amani', 'Schaden', 'Crooks, Hirthe and Kautzer', 'Wolff Fords', 'Lake Marianehaven', '+4646118000260', NULL, NULL, 'broderick89@example.net', '2020-11-01 01:11:00', '$2y$10$BD5fpmY.bKMFcHctmJb6LeCkKJB5BDBoJgiBlAWhvHqkQTy.4LP4C', 'BwAdPKukzk', '2020-11-01 01:11:00', '2020-11-01 01:11:00'),
(11, 'Shakil', 'Ahmmed', 'SoftArch', 'Dhaka', 'Dhaka', '01849942053', 'MTEtMy1pZk9UVGtJbw==', '2021-02-01', 'shakilfci461@gmail.com', NULL, '$2y$10$2aHm9lIo9PJV6AeripjMoeADdZ3GljaSo.o2Wsgadn9vxjUxsVyDy', NULL, '2020-11-01 01:19:27', '2020-11-01 05:00:28');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
