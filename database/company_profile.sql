-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2026 at 10:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `meeting_at` date NOT NULL,
  `budget` bigint(20) UNSIGNED NOT NULL,
  `brief` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:9:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"manage statistics\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"manage products\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:16:\"manage princiles\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:19:\"manage testimonials\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"manage clients\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"manage teams\";s:1:\"c\";s:3:\"web\";}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"manage abouts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:19:\"manage appointments\";s:1:\"c\";s:3:\"web\";}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:20:\"manage hero sections\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"design_manager\";s:1:\"c\";s:3:\"web\";}}}', 1779262482);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_abouts`
--

CREATE TABLE `company_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_abouts`
--

INSERT INTO `company_abouts` (`id`, `name`, `thumbnail`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Build Gorgeous Buildings Yet Also Family Friendly', 'thumbnail/SVRWvWjEhGDy1dRV74f5LGPrfHIfgyVu6alAZjV7.png', 'Visions', NULL, '2026-05-19 01:30:29', '2026-05-19 01:30:29'),
(2, 'Deliver Safe, Beautiful, and Sustainable Family Spaces', 'thumbnail/piwfqXhWEXsYCLHnpZpqBkIIvEdfYyHfnd0hTMMy.png', 'Missions', NULL, '2026-05-19 01:35:06', '2026-05-19 01:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `company_keypoints`
--

CREATE TABLE `company_keypoints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keypoint` varchar(255) NOT NULL,
  `company_about_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_keypoints`
--

INSERT INTO `company_keypoints` (`id`, `keypoint`, `company_about_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Commit to delivering the highest quality in every project. Set the standard for excellence world', 1, NULL, '2026-05-19 01:30:29', '2026-05-19 01:30:29'),
(2, 'Focus on building strong, lasting relationships with clients by understanding their needs', 1, NULL, '2026-05-19 01:30:29', '2026-05-19 01:30:29'),
(3, 'Embrace innovative construction methods and sustainable practices to minimize environmt', 1, NULL, '2026-05-19 01:30:29', '2026-05-19 01:30:29'),
(4, 'Integrate functional design with exceptional aesthetic appeal to create environments where families can thrive.', 2, NULL, '2026-05-19 01:35:06', '2026-05-19 01:35:06'),
(5, 'Maintain open, transparent communication to ensure every client\'s unique vision is realized with precision.', 2, NULL, '2026-05-19 01:35:06', '2026-05-19 01:35:06'),
(6, 'Utilize eco-friendly materials and modern engineering to build safe, efficient, and future-proof structures.', 2, NULL, '2026-05-19 01:35:06', '2026-05-19 01:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `company_statistics`
--

CREATE TABLE `company_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_statistics`
--

INSERT INTO `company_statistics` (`id`, `name`, `goal`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Award-winning Buildings', '189.409', 'icon/pjh6cdImyPkaE3njplpz1wu0Hf39Tebu42KQ6eES.svg', NULL, '2026-05-19 00:49:49', '2026-05-19 00:50:07'),
(2, 'HQ Worldwide', '198', 'icon/kJUVQhhmcD7NUyYWeELoD5mSUn4p2xuVhnWCCyTu.svg', NULL, '2026-05-19 00:50:45', '2026-05-19 00:50:45'),
(3, 'Success Investments', '$512bn', 'icon/g9fd9p3VHx5sSU2J3o2WOQ3sIjXbNG7y1glXhNI2.svg', NULL, '2026-05-19 00:51:00', '2026-05-19 00:57:11'),
(4, 'Honest Reviews', '4.9/5', 'icon/IA4gMzHBtcGYzG3S2SvohRNPqh6ykIj1QPHjGkqq.svg', NULL, '2026-05-19 00:51:18', '2026-05-19 00:51:18');

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
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `path_video` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `achievement`, `subheading`, `heading`, `path_video`, `banner`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'We reached 10,000 huge buildings in 2026', 'Shayna is an award-winning construction company with a team of skilled craftsmen and women who have over 100 years of combined experience.', 'Help Build Biggest Dream From Scratch', '#', 'banner/Bv5HzjSSmk7hM4WeC4BD2xAeVWo62hg8Sr3cvw16.jpg', NULL, '2026-05-19 00:38:39', '2026-05-19 00:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_23_135617_create_permission_tables', 1),
(5, '2025_09_23_142358_create_project_clients_table', 1),
(6, '2025_09_23_142430_create_testimonials_table', 1),
(7, '2025_09_23_142440_create_products_table', 1),
(8, '2025_09_23_142453_create_appointments_table', 1),
(9, '2025_09_23_142510_create_our_principles_table', 1),
(10, '2025_09_23_142524_create_hero_sections_table', 1),
(11, '2025_09_23_142533_create_our_teams_table', 1),
(12, '2025_09_23_142549_create_company_abouts_table', 1),
(13, '2025_09_23_142557_create_company_keypoints_table', 1),
(14, '2025_09_23_143049_create_company_statistics_table', 1),
(15, '2026_05_19_082132_change_columns_to_text_in_multiple_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `our_principles`
--

CREATE TABLE `our_principles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_principles`
--

INSERT INTO `our_principles` (`id`, `subtitle`, `name`, `thumbnail`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Shayna is an award-winning ametia construction company with lorem', 'Prioritize Trust', 'thumbnail/kmdw1BqfCANQv7KFa5KZxHbrz5rOxyNXBv7PULsd.jpg', 'icon/7FNWOlU8CqikV5drpDxr730ZFUxxuy0GWu414Z0U.svg', NULL, '2026-05-19 00:43:46', '2026-05-19 00:47:05'),
(2, 'Shayna is an award-winning ametia construction company with lorem', 'Professional People', 'thumbnail/pUqotJ98kCHdB62b4KnVpK5nNE1xwZjBOLgCXjWy.jpg', 'icon/8kPRErkVgA0wpyxQ79nWT7M78wAOatCwEk3vZMuV.svg', NULL, '2026-05-19 00:46:46', '2026-05-19 00:46:46'),
(3, 'Shayna is an award-winning ametia construction company with lorem', 'Eco Friendly Concept', 'thumbnail/DZ1Oh1eGUrnLxi4SkWehuIMll3M0I9TaIQ8DKK8o.jpg', 'icon/Zau6Fjb3jIpzViMjWZZayVhnj3QpmwMUUpPZ27c0.svg', NULL, '2026-05-19 00:47:43', '2026-05-19 00:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `occupation`, `name`, `avatar`, `location`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chief Executive Officer', 'Angga Setiawan', 'avatar/gy3dY1DorbaLkcyfahZetkwSxIwFSr8tJME8rChK.png', 'Shanghai, China', NULL, '2026-05-19 00:51:54', '2026-05-19 00:51:54'),
(2, 'Product Manager', 'Shayna Liza', 'avatar/Z8PMHt0c0M9M4WDbPtcGFG9yVUI7Cb2pKEvl5gSz.png', 'Bali, Indonesia', NULL, '2026-05-19 00:52:12', '2026-05-19 00:52:12'),
(3, 'Customer Relations', 'Bruno Oleo', 'avatar/Kqq3h435aH5t3Z21ywG0V2EAuPvoPUj9J6sGT48H.png', 'Orchard, Singapore', NULL, '2026-05-19 00:52:33', '2026-05-19 00:52:33'),
(4, 'Senior 3D Designer', 'Sami Kimi', 'avatar/MBCDBSlcG8C6hiGol9hUs1Ib2LBwmyI6TWg8YFuk.png', 'Ho Chi Min, Vietnam', NULL, '2026-05-19 00:52:54', '2026-05-19 00:52:54'),
(5, 'Senior 3D Designer', 'Wibowo Putra', 'avatar/zqu8f8LjSvaRQFcVKClWhizieU5zCFqQcohZipKH.png', 'Ho Chi Min, Vietnam', NULL, '2026-05-19 00:53:14', '2026-05-19 00:53:14'),
(6, 'Chief Executive Officer', 'Putri Emily', 'avatar/lIVfD966wBkJHgXu6KnJUYt8eltBz65yb2WzBTij.png', 'Shanghai, China', NULL, '2026-05-19 00:53:32', '2026-05-19 00:53:32'),
(7, 'Product Manager', 'Yuyan Chin', 'avatar/Q4fYii1uL3kqJrHFVvBC8k4XOvDL2SKMrongPTUl.png', 'Bali, Indonesia', NULL, '2026-05-19 00:53:49', '2026-05-19 00:53:49');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage statistics', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(2, 'manage products', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(3, 'manage princiles', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(4, 'manage testimonials', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(5, 'manage clients', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(6, 'manage teams', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(7, 'manage abouts', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(8, 'manage appointments', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(9, 'manage hero sections', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `tagline`, `thumbnail`, `about`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'WORLD TRADE CENTER', 'Office Integrated with Biggest Data Server Center', 'thumbnail/HAFASWCPFpRKm7FwbNsv8vUnwzQ4jjU7klK5Jagv.png', 'Lorem ipsum angga’s framework researching amet dolor metrics and perfomance burning rate random says.', NULL, '2026-05-19 00:55:57', '2026-05-19 00:56:14'),
(2, 'FAMILY HARMONY', 'Beautiful Theme Park Family and Kids Friendly', 'thumbnail/b1GeDJPkqARRJ2eAoHeLn5CVBFmN3uRxGTOkAH7k.png', 'Lorem ipsum angga’s framework researching amet dolor metrics and perfomance burning rate random says.', NULL, '2026-05-19 01:11:53', '2026-05-19 01:11:53'),
(3, 'ECO-FRIENDLY SPACE', 'Public City Center Park with Super Mall & Airport', 'thumbnail/LhZPh8qIsEZR99etK6uOePHtGi2AnO0ppHUViAJe.png', 'Lorem ipsum angga’s framework researching amet dolor metrics and perfomance burning rate random says.', NULL, '2026-05-19 01:12:29', '2026-05-19 01:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `project_clients`
--

CREATE TABLE `project_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_clients`
--

INSERT INTO `project_clients` (`id`, `name`, `occupation`, `avatar`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Budi S.', 'Pemilik Bisnis Retail', 'avatar/3KaDTLiIG4RgOXvTn2FFuF0JslispKutajI5c71z.png', 'logo/5NOt2a86qvUQv4APTgOuUsSqlmhdJefi8ylLWYmK.svg', NULL, '2026-05-19 01:18:35', '2026-05-19 01:18:35'),
(2, 'Andi M.', 'Manajer Operasional', 'avatar/b3zAVzVjfYIq3ee8eAKsTHchocT3K8GUh7pCBQhh.png', 'logo/DcGomFuGcWJaOioBe1k35k8CGvZBWJuAduzKQLbg.svg', NULL, '2026-05-19 01:19:03', '2026-05-19 01:19:03'),
(3, 'Citra W', 'Direktur Startup', 'avatar/Xzu6I3BsaeZe1rgypoAEV4u0dKfbV7JAxWGepfHL.png', 'logo/lQpOzbkNDH23te7YzX1gRN1XautU10aUWq2N93ic.svg', NULL, '2026-05-19 01:19:31', '2026-05-19 01:19:31'),
(4, 'Reza F', 'Digital Marketer', 'avatar/aWgl89Sj8YHlivWShpv7NaD5znVlef4YISnjEfxJ.png', 'logo/xcgJBYPczrXUPIqNKpAOK3ku6KR8zzbXWyg71UtB.svg', NULL, '2026-05-19 01:20:05', '2026-05-19 01:20:05'),
(5, 'Dina A.', 'Pendiri UMKM Kreatif', 'avatar/8CT8b8l1xQlxKR2yO3ilb3JSEgoXtebxFNo7xn2N.png', 'logo/PXOWWTpmkEdXATf0xkKtDyaQD4yZ6XFGwsJFC74A.svg', NULL, '2026-05-19 01:20:33', '2026-05-19 01:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'design_manager', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25'),
(2, 'super_admin', 'web', '2026-05-19 00:32:25', '2026-05-19 00:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(7, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('55aqqA3bYoA5e4liLiY3krryv9QLBNI7BUI7bLNb', NULL, '127.0.0.1', 'curl/8.20.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMEpvd1BkS2hCTWVJTVhqWnlZcmJuVkYzVEQxVjFNYXJLcTJBZzZYMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779175953),
('9NP1wHWeeN0W6cPgFRpPcj2R0tGncJPIckIoyax3', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:150.0) Gecko/20100101 Firefox/150.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYUF0NnNDMTV4a0ZIZmFsODJyckJMemJKSldwZ2NQeDhSU2V2WklXSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0cy9jcmVhdGUiO3M6NToicm91dGUiO3M6MjE6ImFkbWluLnByb2R1Y3RzLmNyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1779178159),
('m9HGs01WNrOF4aUFbfMZVeboF8gkVIpnHZqnziV3', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:150.0) Gecko/20100101 Firefox/150.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY00yUzhFUzVURVZKTGFsN3c3eHFaZnZ2RkxMc3k3R2IwMWF6MzkzbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcHBvaW50bWVudCI7czo1OiJyb3V0ZSI7czoxNzoiZnJvbnQuYXBwb2ludG1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1779179918),
('XCQdxHlsE55uLWsLfWgtoKDHhsbja6t08gDBbaK1', NULL, '127.0.0.1', 'curl/8.20.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYUpPa20zTDRoc05MYzhBeUFNcmxZN0hKcEpWbWJ0ek82RE5CRFZIVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1779178111);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `project_client_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `thumbnail`, `message`, `project_client_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'thumbnail/ni9dhoFmh9U7BXGI78yJFOEJI8aS5EwDuh5Qnyak.png', 'Inumacomp sangat profesional! Proyek selesai tepat waktu, hasilnya rapi, dan sesuai dengan spesifikasi yang diminta.', 1, NULL, '2026-05-19 01:25:28', '2026-05-19 01:27:00'),
(2, 'thumbnail/xraIkBiC9ApwwACKEXOkYmD9Ku3PEIw8370tSgwR.png', 'Kinerja tim Inumacomp luar biasa. Pengerjaan cepat, komunikasi lancar, dan kualitas hasil sangat memuaskan kami.', 2, NULL, '2026-05-19 01:27:25', '2026-05-19 01:27:25'),
(3, 'thumbnail/GiCHtAevjwH8gA3KH72eAGAEhxM4O4q6eaPFBv6A.png', 'Pelayanan Inumacomp sungguh terbaik. Solusi yang diberikan sangat inovatif, efisien, dan amat membantu bisnis saya.', 3, NULL, '2026-05-19 01:27:43', '2026-05-19 01:27:43'),
(4, 'thumbnail/sNZX71pC9oWC8QO0eVKa03FVDPvpr7n029ZtnIJh.png', 'Kami sangat puas bermitra dengan Inumacomp. Mereka sangat andal, responsif, dan selalu memberikan kualitas terbaik.', 4, NULL, '2026-05-19 01:28:10', '2026-05-19 01:28:29'),
(5, 'thumbnail/nKMePtAwMQCOq7NCLDlihotnvPnGetmkYY1PuDr8.png', 'Inumacomp adalah pilihan tepat. Harga kompetitif, namun kualitas dan layanan purna jualnya tetap sangat terjamin.', 5, NULL, '2026-05-19 01:28:53', '2026-05-19 01:28:53');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'InumaComp', 'superadmin@admin.com', NULL, '$2y$12$PQRQGmp79.JaMYXegsVBoO/nWQJwLP1Oej0bVn1aAhqLwgs2t1Bva', NULL, '2026-05-19 00:32:25', '2026-05-19 00:32:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_product_id_foreign` (`product_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `company_abouts`
--
ALTER TABLE `company_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_keypoints_company_about_id_foreign` (`company_about_id`);

--
-- Indexes for table `company_statistics`
--
ALTER TABLE `company_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `our_principles`
--
ALTER TABLE `our_principles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_clients`
--
ALTER TABLE `project_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_project_client_id_foreign` (`project_client_id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_abouts`
--
ALTER TABLE `company_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_statistics`
--
ALTER TABLE `company_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `our_principles`
--
ALTER TABLE `our_principles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_clients`
--
ALTER TABLE `project_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  ADD CONSTRAINT `company_keypoints_company_about_id_foreign` FOREIGN KEY (`company_about_id`) REFERENCES `company_abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_project_client_id_foreign` FOREIGN KEY (`project_client_id`) REFERENCES `project_clients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
