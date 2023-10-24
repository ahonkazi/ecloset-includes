-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 05:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecloset-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `creator_id`, `name`, `slug`, `is_approved`, `created_at`, `updated_at`, `icon_id`) VALUES
(11, 22, 'Electronics Devices', 'electronics-devices', 1, '2023-10-16 06:02:00', '2023-10-16 06:03:01', 6),
(12, 22, 'Groceries', 'groceries', 1, '2023-10-21 08:18:25', '2023-10-21 08:19:27', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category_icons`
--

CREATE TABLE `category_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `svg_code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_icons`
--

INSERT INTO `category_icons` (`id`, `svg_code`, `created_at`, `updated_at`) VALUES
(3, '<svg stroke=\"currentColor\" fill=\"currentColor\" stroke-width=\"0\" viewBox=\"0 0 24 24\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path fill=\"none\" d=\"M0 0h24v24H0z\"></path><path d=\"M10.5 13H8v-3h2.5V7.5h3V10H16v3h-2.5v2.5h-3V13zM12 2L4 5v6.09c0 5.05 3.41 9.76 8 10.91 4.59-1.15 8-5.86 8-10.91V5l-8-3z\"></path></svg>', '2023-10-16 05:50:02', '2023-10-16 05:50:02'),
(4, '<svg stroke=\"currentColor\" fill=\"currentColor\" stroke-width=\"0\" viewBox=\"0 0 512 512\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M151 23v9c0 21.038-3.39 52.724-8.523 85.336 31.097-25.51 70.354-41.053 111.2-40.756 5.227-.05 10.467.13 15.696.547 36.83 2.13 71.78 16.79 99.924 39.824-5.164-32.6-8.523-64.168-8.297-84.852l.1-9.098H151zm105 72.488c-88.543 0-160.514 71.967-160.514 160.51 0 88.543 71.97 160.516 160.514 160.516 88.543 0 160.514-71.973 160.514-160.516 0-88.543-71.97-160.51-160.514-160.51zm0 17.998c78.815 0 142.514 63.697 142.514 142.512S334.814 398.516 256 398.516c-78.815 0-142.514-63.703-142.514-142.518S177.186 113.486 256 113.486zM174.115 161.3l-12.734 12.72 76.48 76.558a18.94 18.94 0 0 0-.8 5.422A18.94 18.94 0 0 0 256 274.94a18.94 18.94 0 0 0 16.66-9.94h59.096v-17.998h-59.11a18.94 18.94 0 0 0-16.646-9.94 18.94 18.94 0 0 0-5.398.8l-76.487-76.563zm253.233 61.32v64.003h21.306V222.62h-21.306zm-57.96 172.888c-49.015 40.244-119.824 51.034-178.92 27.547-17.515-6.406-33.528-15.775-47.663-27.375 5.107 32.376 8.42 63.672 8.195 84.222l-.1 9.098H361v-9c0-20.857 3.33-52.178 8.39-84.492z\"></path></svg>', '2023-10-16 05:56:07', '2023-10-16 05:56:07'),
(5, '<svg stroke=\"currentColor\" fill=\"currentColor\" stroke-width=\"0\" viewBox=\"0 0 1024 1024\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M832 312H696v-16c0-101.6-82.4-184-184-184s-184 82.4-184 184v16H192c-17.7 0-32 14.3-32 32v536c0 17.7 14.3 32 32 32h640c17.7 0 32-14.3 32-32V344c0-17.7-14.3-32-32-32zm-432-16c0-61.9 50.1-112 112-112s112 50.1 112 112v16H400v-16zm392 544H232V384h96v88c0 4.4 3.6 8 8 8h56c4.4 0 8-3.6 8-8v-88h224v88c0 4.4 3.6 8 8 8h56c4.4 0 8-3.6 8-8v-88h96v456z\"></path></svg>', '2023-10-16 05:57:04', '2023-10-16 05:57:04'),
(6, '<svg stroke=\"currentColor\" fill=\"currentColor\" stroke-width=\"0\" viewBox=\"0 0 1024 1024\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M956.9 845.1L896.4 632V168c0-17.7-14.3-32-32-32h-704c-17.7 0-32 14.3-32 32v464L67.9 845.1C60.4 866 75.8 888 98 888h828.8c22.2 0 37.6-22 30.1-42.9zM200.4 208h624v395h-624V208zm228.3 608l8.1-37h150.3l8.1 37H428.7zm224 0l-19.1-86.7c-.8-3.7-4.1-6.3-7.8-6.3H398.2c-3.8 0-7 2.6-7.8 6.3L371.3 816H151l42.3-149h638.2l42.3 149H652.7z\"></path></svg>', '2023-10-16 06:00:57', '2023-10-16 06:00:57'),
(7, '<svg stroke=\"currentColor\" fill=\"currentColor\" stroke-width=\"0\" viewBox=\"0 0 24 24\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path fill=\"none\" d=\"M0 0h24v24H0z\"></path><path d=\"M20 3H9v2.4l1.81 1.45c.12.09.19.24.19.39v4.26c0 .28-.22.5-.5.5h-4c-.28 0-.5-.22-.5-.5V7.24c0-.15.07-.3.19-.39L8 5.4V3H4v10c0 2.21 1.79 4 4 4h6c2.21 0 4-1.79 4-4v-3h2a2 2 0 002-2V5c0-1.11-.89-2-2-2zm0 5h-2V5h2v3zM4 19h16v2H4z\"></path></svg>', '2023-10-21 08:17:37', '2023-10-21 08:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `change_email_otps`
--

CREATE TABLE `change_email_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_email_otps`
--

INSERT INTO `change_email_otps` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'jispozelmi@gufum.com', 671921, '2023-10-19 07:35:24', '2023-10-19 07:35:24'),
(4, 'timinef720@unbiex.com', 655350, '2023-10-19 07:51:37', '2023-10-19 07:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `sub_district` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `appartment_number` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_type_no` int(11) NOT NULL DEFAULT 3 COMMENT '1->home\r\n2->office\r\n3->default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `country`, `district`, `sub_district`, `street_address`, `appartment_number`, `postal_code`, `phone`, `address_type_no`, `created_at`, `updated_at`) VALUES
(2, 23, 'Bangladesh', 'Rangpur', 'Peerganj', 'Bhendabari,from center to routh Road', '803', '5502', '+8801313386702', 1, '2023-10-24 03:48:04', '2023-10-24 03:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `display_variations`
--

CREATE TABLE `display_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `display_variations`
--

INSERT INTO `display_variations` (`id`, `name`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 'Model', 1, '2023-10-22 04:04:53', '2023-10-22 04:04:53'),
(2, 'Weight', 1, '2023-10-22 04:06:03', '2023-10-22 04:06:03'),
(3, 'Size', 1, '2023-10-22 04:06:09', '2023-10-22 04:06:09'),
(4, 'Color', 0, '2023-10-22 04:06:19', '2023-10-22 04:06:19'),
(5, 'Flavour', 0, '2023-10-22 04:06:45', '2023-10-22 04:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `display_variation_options`
--

CREATE TABLE `display_variation_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `display_variation_id` bigint(20) UNSIGNED NOT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `display_variation_options`
--

INSERT INTO `display_variation_options` (`id`, `value`, `display_variation_id`, `color_code`, `created_at`, `updated_at`) VALUES
(1, '50 gm', 2, NULL, '2023-10-22 04:44:11', '2023-10-22 04:44:11'),
(2, '100 gm', 2, NULL, '2023-10-22 04:44:49', '2023-10-22 04:44:49'),
(3, '150 gm', 2, NULL, '2023-10-22 04:50:10', '2023-10-22 04:50:10'),
(4, 'Red', 4, '#ff0000', '2023-10-22 04:54:03', '2023-10-22 04:54:03'),
(5, 'Green', 4, '#00ff00', '2023-10-22 04:56:04', '2023-10-22 04:56:04'),
(6, 'Chicken', 5, '#FF7F50', '2023-10-22 09:22:13', '2023-10-22 09:22:13'),
(7, 'Vegetable', 5, '#3b8132', '2023-10-22 09:25:18', '2023-10-22 09:25:18'),
(8, 'Robotics', 1, NULL, '2023-10-22 09:57:25', '2023-10-22 09:57:25'),
(9, 'Superman', 1, NULL, '2023-10-22 09:57:45', '2023-10-22 09:57:45');

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
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL DEFAULT '',
  `platform` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `ip`, `browser`, `platform`, `version`, `created_at`, `updated_at`, `user_id`) VALUES
(2, '127.0.0.1', '0', '0', '0', '2023-10-16 04:17:26', '2023-10-16 04:17:26', 21),
(3, '127.0.0.1', '0', '0', '0', '2023-10-16 04:21:44', '2023-10-16 04:21:44', 22),
(4, '127.0.0.1', '0', '0', '0', '2023-10-19 06:50:40', '2023-10-19 06:50:40', 23),
(5, '127.0.0.1', '0', '0', '0', '2023-10-19 06:50:55', '2023-10-19 06:50:55', 23),
(6, '127.0.0.1', '0', '0', '0', '2023-10-19 06:54:22', '2023-10-19 06:54:22', 23),
(7, '127.0.0.1', '0', '0', '0', '2023-10-21 02:53:53', '2023-10-21 02:53:53', 21);

-- --------------------------------------------------------

--
-- Table structure for table `login_otps`
--

CREATE TABLE `login_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_otps`
--

INSERT INTO `login_otps` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(2, 'aohinuzzaman420@gmail.com', 623610, '2023-08-29 04:07:36', '2023-08-29 04:07:36'),
(4, 'aohinuzzamanahon@gmail.com', 574840, '2023-08-29 04:17:40', '2023-08-29 04:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(255) NOT NULL,
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_08_27_121708_create_user_roles_table', 1),
(11, '2023_08_27_122338_create_roles_table', 2),
(12, '2023_08_27_122641_create_user_details_table', 3),
(14, '2023_08_28_012334_create_register_otps_table', 4),
(15, '2023_08_28_104222_create_login_otps_table', 5),
(16, '2023_08_28_114246_create_vendor_lists_table', 6),
(17, '2023_08_28_143306_create_notification_types_table', 7),
(19, '2023_08_28_143859_create_notifications_table', 8),
(20, '2023_08_28_153250_create_admin_lists_table', 9),
(28, '2023_08_29_090539_drop_roles_table', 10),
(29, '2023_08_29_090633_drop_vendor_lists_table', 10),
(30, '2023_08_29_090800_drop_admin_lists_table', 10),
(31, '2023_08_29_092451_drop_user_role_users_table', 11),
(32, '2023_08_29_092652_add_user_role_users_table', 12),
(33, '2023_08_29_092851_add_is_approved_users_table', 13),
(35, '2023_08_29_112232_create_categories_table', 14),
(36, '2023_08_29_152430_create_sub_categories_table', 15),
(37, '2023_08_30_100545_create_variations_table', 16),
(38, '2023_08_30_102921_create_products_table', 17),
(39, '2023_08_30_103332_create_media_table', 18),
(40, '2023_08_30_103513_create_product_variations_table', 19),
(41, '2023_08_30_114827_add_slug_products_table', 20),
(42, '2023_08_30_122733_add_is_featured_products_table', 21),
(43, '2023_09_04_083209_drop_product_variations_table', 22),
(44, '2023_09_04_083331_drop_variation_table', 23),
(45, '2023_09_04_083423_drop_product_table', 24),
(46, '2023_09_04_083935_create_sub_sub_categories_table', 25),
(47, '2023_09_04_114622_create_variations_table', 26),
(49, '2023_09_04_122509_create_products_table', 27),
(50, '2023_09_05_131610_create_product_variation_options_table', 28),
(51, '2023_09_05_152628_create_product_variations_table', 29),
(52, '2023_09_05_153800_drop_product_variation_options_table', 30),
(53, '2023_09_05_153912_create_product_variation_options_table', 31),
(54, '2023_09_05_160048_add_is_primary_product_variations_table', 32),
(56, '2023_09_06_115144_create_product_stocks_table', 33),
(57, '2019_09_01_000000_create_logins_table', 34),
(58, '2023_10_16_094810_add_unique_id_users_table', 35),
(59, '2023_10_16_095925_create_logins_table', 36),
(60, '2023_10_16_101445_add_user_id_logins_table', 37),
(61, '2023_10_16_103326_create_category_icons_table', 38),
(62, '2023_10_16_110631_add_icon_id_categories_table', 39),
(63, '2023_10_16_183938_add_is_primary_product_variation_options_table', 40),
(64, '2023_10_17_103508_drop_image_product_stocks_table', 41),
(65, '2023_10_17_113527_create_specifications_table', 42),
(66, '2023_10_17_122228_create_product_features_table', 43),
(67, '2023_10_18_072506_create_tags_table', 44),
(68, '2023_10_18_072740_create_product_tags_table', 45),
(69, '2023_10_19_130834_create_change_email_otps_table', 46),
(70, '2023_10_19_173039_create_wish_lists_table', 47),
(71, '2023_10_22_100144_create_display_variations_table', 48),
(72, '2023_10_22_100248_add_display_variation_id_variations_table', 49),
(73, '2023_10_22_101135_create_display_variation_options_table', 50),
(74, '2023_10_22_101805_add_display_variation_option_id_product_variation_options_table', 51),
(75, '2023_10_24_084905_create_customer_addresses_table', 52),
(76, '2023_10_24_090757_create_address_types_table', 53),
(77, '2023_10_24_091208_drop_customer_address_table', 54),
(78, '2023_10_24_091252_create_customer_address_table', 55),
(79, '2023_10_24_092658_drop_address_types_table', 56);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_type_id` bigint(20) UNSIGNED NOT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_role_id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` int(11) NOT NULL,
  `tamplate` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_type_id`, `read_status`, `from_id`, `receiver_id`, `receiver_role_id`, `ref_id`, `tamplate`, `created_at`, `updated_at`) VALUES
(36, 2, 0, 21, NULL, 3, 21, 'Ahon Created an account as an admin.Review his details and approve', '2023-10-16 04:17:26', '2023-10-16 04:17:26'),
(37, 1, 0, 22, NULL, 3, 22, 'Daraz Created an account.Review his details and approve', '2023-10-16 04:21:44', '2023-10-16 04:21:44'),
(38, 3, 0, 21, 22, 2, 22, 'You are approved by Admin.Now you can add product and so on.', '2023-10-16 04:29:35', '2023-10-16 04:29:35'),
(39, 4, 0, 22, NULL, 3, 11, 'Daraz Created a category.Review his category and approve', '2023-10-16 06:02:00', '2023-10-16 06:02:00'),
(40, 5, 0, 21, 22, 2, 11, 'An admin approved your category..!Now you can add this category to your product', '2023-10-16 06:03:01', '2023-10-16 06:03:01'),
(41, 6, 0, 22, NULL, 3, 3, 'Daraz added a product.Review his product and approve', '2023-10-16 06:28:37', '2023-10-16 06:28:37'),
(42, 7, 0, 21, 22, 2, 3, 'An Admin approved your product.', '2023-10-16 06:29:24', '2023-10-16 06:29:24'),
(43, 4, 0, 22, NULL, 3, 12, 'Daraz Created a category.Review his category and approve', '2023-10-21 08:18:25', '2023-10-21 08:18:25'),
(44, 5, 0, 21, 22, 2, 12, 'An admin approved your category..!Now you can add this category to your product', '2023-10-21 08:19:27', '2023-10-21 08:19:27'),
(45, 4, 0, 22, NULL, 3, 9, 'Daraz Created a sub category.Review his sub category and approve', '2023-10-21 08:23:29', '2023-10-21 08:23:29'),
(46, 5, 0, 21, 22, 2, 9, 'An admin approved your sub category..!Now you can add this sub category to your product', '2023-10-21 08:26:48', '2023-10-21 08:26:48'),
(47, 8, 0, 22, NULL, 3, 6, 'Daraz Created a sub sub category.Review his sub category and approve', '2023-10-21 08:29:49', '2023-10-21 08:29:49'),
(48, 8, 0, 22, NULL, 3, 7, 'Daraz Created a sub sub category.Review his sub category and approve', '2023-10-21 08:33:38', '2023-10-21 08:33:38'),
(49, 9, 0, 21, 22, 2, 7, 'An admin approved your sub sub category..!Now you can add this sub category to your product', '2023-10-21 08:33:55', '2023-10-21 08:33:55'),
(50, 6, 0, 22, NULL, 3, 4, 'Daraz added a product.Review his product and approve', '2023-10-21 08:43:13', '2023-10-21 08:43:13'),
(51, 7, 0, 21, 22, 2, 4, 'An Admin approved your product.', '2023-10-21 08:43:45', '2023-10-21 08:43:45'),
(52, 6, 0, 22, NULL, 3, 5, 'Daraz added a product.Review his product and approve', '2023-10-22 09:12:10', '2023-10-22 09:12:10'),
(53, 7, 0, 21, 22, 2, 5, 'An Admin approved your product.', '2023-10-22 09:12:20', '2023-10-22 09:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_no` int(11) NOT NULL,
  `command` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `type_no`, `command`, `created_at`, `updated_at`) VALUES
(1, 1, 'vendorAdded', NULL, NULL),
(2, 2, 'adminAdded', NULL, NULL),
(3, 3, 'vendorApproved', NULL, NULL),
(4, 4, 'addedCategory', NULL, NULL),
(5, 5, 'categoryApproved', NULL, NULL),
(6, 6, 'addedProduct', NULL, NULL),
(7, 7, 'approvedProduct', NULL, NULL),
(8, 8, 'addedSubSubCategory', NULL, NULL),
(9, 9, 'approvedSubSubCategory', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1e40f6f4d374715b842ba036430c983244a276d2df2c4512ddcc6148fce9abbbf4b7389645a294ec', 17, 3, 'accessToken', '[]', 0, '2023-09-29 13:47:02', '2023-09-29 13:47:02', '2024-09-29 19:47:02'),
('37ab7abf3d4f0226ed0339b05d8933d095ef75a4bc0c02007188fa390baab95cfcd5c4fdc37c9424', 20, 3, 'accessToken', '[]', 0, '2023-10-16 04:13:18', '2023-10-16 04:13:18', '2024-10-16 10:13:18'),
('448b4f21c3bc7257d58a0a55cdbee8a25a379f5dc9988aad5c47c1decca4a98485fee04b027d4f86', 22, 3, 'accessToken', '[]', 0, '2023-10-16 04:21:44', '2023-10-16 04:21:44', '2024-10-16 10:21:44'),
('4838e87ae7bec05f1f23d10db48c07f39b152abf6ae47b9322d9abb75479e3bacdcfa8f8b9633707', 21, 3, 'accessToken', '[]', 0, '2023-10-21 02:53:53', '2023-10-21 02:53:53', '2024-10-21 08:53:53'),
('55cbd256183aa278db88641bee3ff59008ebac66a432d0036a6a11086864024e17cf55d3adee8b0b', 17, 3, 'accessToken', '[]', 0, '2023-09-29 13:43:32', '2023-09-29 13:43:32', '2024-09-29 19:43:32'),
('8161b2b6c4f37d586b1c183cfec6a17ff7cbc67bdf445327c65fffe190d70004a2cbf23ca404f4f1', 21, 3, 'accessToken', '[]', 0, '2023-10-16 04:17:26', '2023-10-16 04:17:26', '2024-10-16 10:17:26'),
('8cb6e4c77157e76c05887f85ccab96e4db5e2891fcb1857ddb2d8f41037d30fe3d0e946b2cf13bbd', 23, 3, 'accessToken', '[]', 0, '2023-10-19 06:50:41', '2023-10-19 06:50:41', '2024-10-19 12:50:41'),
('94fdce8c364998c8dcf69525b9f5dae3d564f68db785118517aad3c0b78ffc2241eb7472a2e542e4', 16, 3, 'accessToken', '[]', 0, '2023-10-02 16:07:32', '2023-10-02 16:07:32', '2024-10-02 22:07:32'),
('99c561c5d46fec30fce59a4ba23b4f0fd838964e7eeb62b3994db4bd41dfcdb4dd5b57814e357f9a', 23, 3, 'accessToken', '[]', 0, '2023-10-19 06:50:55', '2023-10-19 06:50:55', '2024-10-19 12:50:55'),
('9ff3b4509bbf2cbab7c3ef4126eb557e4a173727487542f99fc1c38804c54be9fbab50a1db94f4dd', 19, 3, 'accessToken', '[]', 0, '2023-10-16 03:58:14', '2023-10-16 03:58:14', '2024-10-16 09:58:14'),
('a0a58d5f1351b27523563151f3ea955e1da14dca69a3e84cb08ed172fe8960dd5c20969056d37a94', 17, 3, 'accessToken', '[]', 0, '2023-10-02 15:39:18', '2023-10-02 15:39:18', '2024-10-02 21:39:18'),
('a4aee01d97c34793ce1edc558531dd9e41b7135ce9cd2d5e89fc29451d371aa8e566ae3784043bf4', 17, 3, 'accessToken', '[]', 0, '2023-10-02 15:50:04', '2023-10-02 15:50:04', '2024-10-02 21:50:04'),
('a51f056a4504a3506aee4cc2a5070e7346bddf763d9541ea02b4d292f3754c363b9662dbcd4eeda5', 17, 3, 'accessToken', '[]', 0, '2023-09-29 13:38:24', '2023-09-29 13:38:24', '2024-09-29 19:38:24'),
('a88086284fa50f9d1f9c90aa108b4bb29e51b9a14b20888f116bab760da8255490c4b4df5fa5a92b', 23, 3, 'accessToken', '[]', 0, '2023-10-19 06:54:22', '2023-10-19 06:54:22', '2024-10-19 12:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'E-closet Personal Access Client', 'R8RbaTNabypkig63jN2BjIqhgz7aHgbIuNqiN4oH', NULL, 'http://localhost', 1, 0, 0, '2023-08-28 04:18:35', '2023-08-28 04:18:35'),
(2, NULL, 'E-closet Password Grant Client', 'aAprYEceFixGVrt4yd1QaTBEMz1jpqw9jrVQ1Ws2', 'users', 'http://localhost', 0, 1, 0, '2023-08-28 04:18:35', '2023-08-28 04:18:35'),
(3, NULL, 'accessToken', 'T3RSt9KogiORcSbZ5qWqfHf22eUmen0Ec2OYBaBW', NULL, 'http://localhost', 1, 0, 0, '2023-08-28 04:19:03', '2023-08-28 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-28 04:18:35', '2023-08-28 04:18:35'),
(2, 3, '2023-08-28 04:19:03', '2023-08-28 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discription` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `product_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendor_id`, `title`, `code`, `discription`, `slug`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `is_approved`, `is_published`, `is_featured`, `product_image`, `created_at`, `updated_at`) VALUES
(3, 22, 'A4tech Bloody M590i ENC Wired Gaming Headphone', 'p6883ElEaPlex', 'The M590i Gaming Headphone with 50mm M.O.C.I. Hybrid Diaphragm Technology is a cutting-edge biotechnology that mixes carbon fiber and mycelium culture. provides a distinct sound that blends crisp trebles, crisp midrange tones, and deep, satisfying bass to give gamers a competitive gaming edge', 'electronics-devices-earphones-plextone-g25-35mm-gaming-earphones', 11, 8, 5, 1, 0, 0, '/storage/images/ecloset_pd_img89311697539074.jpg', '2023-10-16 06:28:37', '2023-10-17 10:37:54'),
(4, 22, 'Red Apple (Net Weight ± 50 gm)', 'p4270GrFrRed ', 'Red Delicious apples are medium-sized and have a conical shape. They are broadly round at the top and taper at the base. The thick skin turns bright red well before the fruits are fully ripe, which can lead to early harvests.', 'groceries-fruits-meat-frozen-red-apple-net-weight-50-gm', 12, 9, 7, 1, 0, 0, '/storage/images/ecloset_pdimg21131697877792.jpg', '2023-10-21 08:43:13', '2023-10-21 08:43:45'),
(5, 22, 'California burger (Net Weight ± 200 gm)', 'p4913GrFrCali', 'A hamburger, or simply burger, is a food consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.', 'groceries-fruits-meat-frozen-california-burger-net-weight-200-gm', 12, 9, 7, 1, 0, 0, '/storage/images/ecloset_pdimg33871697965929.jpg', '2023-10-22 09:12:10', '2023-10-22 09:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `item` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `vendor_id`, `item`, `created_at`, `updated_at`) VALUES
(1, 3, 22, 'Frequency Response 20 Hz – 20 kHz.Headphones fit type:Over-Ear.Sensitivity 109 dB (1 kHz).Specific uses for product : Music', '2023-10-17 06:37:53', '2023-10-17 06:37:53'),
(2, 3, 22, 'Stream-Responsive RGB Lighting: Features Razer Chroma lighting on kitty ear and triple-headed snake logo areas, able to intereact with audience emoticons and alerts mid-stream via the Razer Streamer Companion app', '2023-10-17 06:38:05', '2023-10-17 06:38:05'),
(3, 3, 22, 'THX 7.1 Surround Sound Capable: Provides industry-leading audio realism for in-game immersion by providing accurate spatial audio information beyond standard 7.1 surround sound directional cues', '2023-10-17 06:38:15', '2023-10-17 06:38:15'),
(4, 3, 22, 'All-Day Comfort: Oval, cooling gel-infused cushions that prevent overheating and pressure build-up', '2023-10-17 06:38:28', '2023-10-17 06:38:28'),
(5, 3, 22, 'Retractable, Active Noise Cancelling Microphone: An improved cardioid mic with active noise cancellation reduces background and ambient noises for crystal-clear communication', '2023-10-17 06:38:42', '2023-10-17 06:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `primary_option_id` bigint(20) UNSIGNED NOT NULL,
  `secondary_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `discount_in_percent` double(8,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `vendor_id`, `primary_option_id`, `secondary_option_id`, `price`, `discount_in_percent`, `stock`, `created_at`, `updated_at`) VALUES
(7, 4, 22, 58, 60, 87, 0.00, 600, '2023-10-22 05:04:37', '2023-10-22 05:04:37'),
(8, 5, 22, 61, 64, 150, 0.00, 90, '2023-10-22 09:28:21', '2023-10-22 09:28:21'),
(9, 5, 22, 61, 63, 125, 0.00, 100, '2023-10-22 09:31:14', '2023-10-22 09:31:14'),
(10, 3, 22, 66, 67, 125, 5.00, 60, '2023-10-22 10:00:52', '2023-10-22 10:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `tag_id`, `vendor_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 2, 22, 3, '2023-10-18 02:11:47', '2023-10-18 02:11:47'),
(4, 1, 22, 3, '2023-10-18 02:12:16', '2023-10-18 02:12:16'),
(5, 3, 22, 4, '2023-10-21 09:13:47', '2023-10-21 09:13:47'),
(6, 4, 22, 4, '2023-10-21 09:13:53', '2023-10-21 09:13:53'),
(7, 5, 22, 4, '2023-10-21 09:14:05', '2023-10-21 09:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `product_id`, `vendor_id`, `variation_id`, `created_at`, `updated_at`, `is_primary`) VALUES
(20, 4, 22, 13, '2023-10-22 04:09:27', '2023-10-22 04:09:27', 0),
(21, 4, 22, 11, '2023-10-22 04:09:35', '2023-10-22 04:09:35', 1),
(22, 5, 22, 11, '2023-10-22 09:15:33', '2023-10-22 09:15:33', 1),
(23, 5, 22, 14, '2023-10-22 09:15:41', '2023-10-22 09:15:41', 0),
(24, 3, 22, 10, '2023-10-22 09:54:00', '2023-10-22 09:54:00', 1),
(25, 3, 22, 13, '2023-10-22 09:54:05', '2023-10-22 09:54:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_variation_options`
--

CREATE TABLE `product_variation_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `color_code` varchar(10) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `display_variation_option_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variation_options`
--

INSERT INTO `product_variation_options` (`id`, `product_id`, `vendor_id`, `product_variation_id`, `value`, `created_at`, `updated_at`, `is_primary`, `color_code`, `product_image`, `display_variation_option_id`) VALUES
(54, 4, 22, 21, '50 gm', '2023-10-22 04:44:11', '2023-10-22 04:44:11', 1, NULL, NULL, 1),
(55, 4, 22, 21, '100 gm', '2023-10-22 04:44:49', '2023-10-22 04:44:49', 1, NULL, NULL, 2),
(58, 4, 22, 21, '150 gm', '2023-10-22 04:50:10', '2023-10-22 04:50:10', 1, NULL, NULL, 3),
(59, 4, 22, 20, 'Red', '2023-10-22 04:54:03', '2023-10-22 04:54:03', 0, '#ff0000', '/storage/images/ecloset_pd_img-15141697950443.jpg', 4),
(60, 4, 22, 20, 'Green', '2023-10-22 04:56:04', '2023-10-22 04:56:04', 0, '#00ff00', '/storage/images/ecloset_pd_img-26981697950564.jpg', 5),
(61, 5, 22, 22, '150 gm', '2023-10-22 09:17:43', '2023-10-22 09:17:43', 1, NULL, NULL, 3),
(62, 5, 22, 22, '100 gm', '2023-10-22 09:18:32', '2023-10-22 09:18:32', 1, NULL, NULL, 2),
(63, 5, 22, 23, 'Chicken', '2023-10-22 09:22:13', '2023-10-22 09:22:13', 0, '#FF7F50', '/storage/images/ecloset_pd_img-43851697966533.jpg', 6),
(64, 5, 22, 23, 'Vegetable', '2023-10-22 09:25:19', '2023-10-22 09:25:19', 0, '#3b8132', '/storage/images/ecloset_pd_img-91941697966718.jpg', 7),
(65, 3, 22, 24, 'Robotics', '2023-10-22 09:57:25', '2023-10-22 09:57:25', 1, NULL, NULL, 8),
(66, 3, 22, 24, 'Superman', '2023-10-22 09:57:45', '2023-10-22 09:57:45', 1, NULL, NULL, 9),
(67, 3, 22, 25, 'Red', '2023-10-22 09:58:01', '2023-10-22 09:58:01', 0, '#ff0000', '/storage/images/ecloset_pd_img-67921697968681.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `register_otps`
--

CREATE TABLE `register_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_otps`
--

INSERT INTO `register_otps` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(15, 'jahidatamanna8573@gmail.com', 702260, '2023-09-09 15:13:41', '2023-09-09 15:13:41'),
(18, 'aohinuzzaman420@gmail.com', 619919, '2023-10-16 04:17:11', '2023-10-16 04:17:11'),
(19, 'aohinuzzamanahon@gmail.com', 705488, '2023-10-16 04:21:10', '2023-10-16 04:21:10'),
(20, 'timinef720@unbiex.com', 458903, '2023-10-19 06:48:55', '2023-10-19 06:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `product_id`, `vendor_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 3, 22, 'Brand', 'Razer', '2023-10-17 06:16:54', '2023-10-17 06:16:54'),
(2, 3, 22, 'Model Name', 'Kraken', '2023-10-17 06:17:38', '2023-10-17 06:17:38'),
(3, 3, 22, 'Color', 'Quartz Pink', '2023-10-17 06:18:06', '2023-10-17 06:18:06'),
(4, 3, 22, 'Form Factor', 'Over Ear', '2023-10-17 06:18:29', '2023-10-17 06:18:29'),
(5, 3, 22, 'Connectivity Technology', 'HDMI', '2023-10-17 06:18:48', '2023-10-17 06:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `creator_id`, `name`, `slug`, `is_approved`, `created_at`, `updated_at`) VALUES
(6, 11, 21, 'Smartphone', 'smartphone', 1, '2023-10-16 06:09:11', '2023-10-16 06:09:11'),
(7, 11, 21, 'Laptops', 'laptops', 1, '2023-10-16 06:09:25', '2023-10-16 06:09:25'),
(8, 11, 21, 'Earphones', 'earphones', 1, '2023-10-16 06:23:20', '2023-10-16 06:23:20'),
(9, 12, 22, 'Fruits, Meat & Frozen', 'fruits-meat-frozen', 1, '2023-10-21 08:23:29', '2023-10-21 08:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `creator_id`, `name`, `slug`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 7, 21, 'Microsoft Laptop', 'microsoft-laptop', 1, '2023-10-16 06:17:38', '2023-10-16 06:17:38'),
(3, 7, 21, 'Dell Laptop', 'dell-laptop', 1, '2023-10-16 06:17:59', '2023-10-16 06:17:59'),
(4, 7, 21, 'Hp Laptop', 'hp-laptop', 1, '2023-10-16 06:18:07', '2023-10-16 06:18:07'),
(5, 8, 21, 'Gaming Earphones', 'gaming-earphones', 1, '2023-10-16 06:24:25', '2023-10-16 06:24:25'),
(7, 9, 22, 'Fruits', 'fruits', 1, '2023-10-21 08:33:38', '2023-10-21 08:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'headphone', 'headphone', '2023-10-18 01:52:46', '2023-10-18 01:52:46'),
(2, 'computer headphone', 'computer-headphone', '2023-10-18 01:54:17', '2023-10-18 01:54:17'),
(3, 'red', 'red', '2023-10-21 09:13:47', '2023-10-21 09:13:47'),
(4, 'green', 'green', '2023-10-21 09:13:53', '2023-10-21 09:13:53'),
(5, 'redapple', 'redapple', '2023-10-21 09:14:05', '2023-10-21 09:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `two_step_verification` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_role` bigint(20) UNSIGNED NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `profile_pic`, `two_step_verification`, `remember_token`, `created_at`, `updated_at`, `user_role`, `is_approved`, `unique_id`) VALUES
(21, 'Ahon', 'Khan', 'aohinuzzaman420@gmail.com', NULL, '$2y$10$Q60.fB4T1fyKxPnPlKryKuaNKex5o9xOiTCQdBxZ7CacdXXJCXhJ2', '/storage/images/ecloset_img22781697429846.jpg', 0, NULL, '2023-10-16 04:17:26', '2023-10-16 04:17:26', 3, 1, 711151697429846),
(22, 'Daraz', 'BD', 'aohinuzzamanahon@gmail.com', NULL, '$2y$10$oiERR7GE0ouUQG18vifEJek7Rr0wlYvmSkVHP5YC/tc7pm.D/Swa6', '/storage/images/ecloset_img60661697430104.jpg', 0, NULL, '2023-10-16 04:21:44', '2023-10-16 04:29:35', 2, 1, 776271697430104),
(23, 'Md', 'Ahon', 'timinef720@unbiex.com', NULL, '$2y$10$lMeEyEm2at6WDZFUr8pwhe0j3ohxQgl4GaK7.1V1zpUUNPYNALwHe', '/storage/images/ecloset_img81381697698239.png', 0, NULL, '2023-10-19 06:50:40', '2023-10-19 07:52:10', 1, 1, 343141697698240);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gander` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `country`, `city`, `profession`, `date_of_birth`, `gander`, `created_at`, `updated_at`) VALUES
(18, 21, 'Bangladesh', 'Rangpur', 'Web Designer', '2005-12-27', 'Male', '2023-10-16 04:17:26', '2023-10-16 04:17:26'),
(19, 22, 'Bangladesh', 'Rangpur', 'Web Designer', '2005-12-27', 'Male', '2023-10-16 04:21:44', '2023-10-16 04:21:44'),
(20, 23, 'Bangladesh', 'Rangpur', 'Web Designer and developer', '2005-12-27', 'Male', '2023-10-19 06:50:40', '2023-10-19 06:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roll` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `roll`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'customer', NULL, NULL),
(2, 2, 'vendor', NULL, NULL),
(3, 3, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `name`, `vendor_id`, `is_primary`, `created_at`, `updated_at`, `display_variation_id`) VALUES
(10, 'Model', 22, 1, '2023-10-22 04:04:53', '2023-10-22 04:04:53', 1),
(11, 'Weight', 22, 1, '2023-10-22 04:06:03', '2023-10-22 04:06:03', 2),
(12, 'Size', 22, 1, '2023-10-22 04:06:09', '2023-10-22 04:06:09', 3),
(13, 'Color', 22, 0, '2023-10-22 04:06:19', '2023-10-22 04:06:19', 4),
(14, 'Flavour', 22, 0, '2023-10-22 04:06:45', '2023-10-22 04:06:45', 5);

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 23, 3, '2023-10-19 12:12:45', '2023-10-19 12:12:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_creator_id_foreign` (`creator_id`),
  ADD KEY `categories_icon_id_foreign` (`icon_id`);

--
-- Indexes for table `category_icons`
--
ALTER TABLE `category_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_email_otps`
--
ALTER TABLE `change_email_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `display_variations`
--
ALTER TABLE `display_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `display_variation_options`
--
ALTER TABLE `display_variation_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_variation_options_display_variation_id_foreign` (`display_variation_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logins_user_id_foreign` (`user_id`);

--
-- Indexes for table `login_otps`
--
ALTER TABLE `login_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notification_type_id_foreign` (`notification_type_id`),
  ADD KEY `notifications_from_id_foreign` (`from_id`),
  ADD KEY `notifications_receiver_role_id_foreign` (`receiver_role_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_product_id_foreign` (`product_id`),
  ADD KEY `product_features_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_vendor_id_foreign` (`vendor_id`),
  ADD KEY `product_stocks_primary_option_id_foreign` (`primary_option_id`),
  ADD KEY `product_stocks_secondary_option_id_foreign` (`secondary_option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `product_tags_vendor_id_foreign` (`vendor_id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`),
  ADD KEY `product_variations_vendor_id_foreign` (`vendor_id`),
  ADD KEY `product_variations_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `product_variation_options`
--
ALTER TABLE `product_variation_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variation_options_product_id_foreign` (`product_id`),
  ADD KEY `product_variation_options_vendor_id_foreign` (`vendor_id`),
  ADD KEY `product_variation_options_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `product_variation_options_display_variation_option_id_foreign` (`display_variation_option_id`);

--
-- Indexes for table `register_otps`
--
ALTER TABLE `register_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`),
  ADD KEY `specifications_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `sub_categories_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_categories_subcategory_id_foreign` (`sub_category_id`),
  ADD KEY `sub_sub_categories_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_role_foreign` (`user_role`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_vendor_id_foreign` (`vendor_id`),
  ADD KEY `variations_display_variation_id_foreign` (`display_variation_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_lists_customer_id_foreign` (`customer_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category_icons`
--
ALTER TABLE `category_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `change_email_otps`
--
ALTER TABLE `change_email_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `display_variations`
--
ALTER TABLE `display_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `display_variation_options`
--
ALTER TABLE `display_variation_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_otps`
--
ALTER TABLE `login_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_variation_options`
--
ALTER TABLE `product_variation_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `register_otps`
--
ALTER TABLE `register_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `categories_icon_id_foreign` FOREIGN KEY (`icon_id`) REFERENCES `category_icons` (`id`);

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `display_variation_options`
--
ALTER TABLE `display_variation_options`
  ADD CONSTRAINT `display_variation_options_display_variation_id_foreign` FOREIGN KEY (`display_variation_id`) REFERENCES `display_variations` (`id`);

--
-- Constraints for table `logins`
--
ALTER TABLE `logins`
  ADD CONSTRAINT `logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_notification_type_id_foreign` FOREIGN KEY (`notification_type_id`) REFERENCES `notification_types` (`id`),
  ADD CONSTRAINT `notifications_receiver_role_id_foreign` FOREIGN KEY (`receiver_role_id`) REFERENCES `user_roles` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`),
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_features_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_primary_option_id_foreign` FOREIGN KEY (`primary_option_id`) REFERENCES `product_variation_options` (`id`),
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_stocks_secondary_option_id_foreign` FOREIGN KEY (`secondary_option_id`) REFERENCES `product_variation_options` (`id`),
  ADD CONSTRAINT `product_stocks_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `product_tags_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`),
  ADD CONSTRAINT `product_variations_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_variation_options`
--
ALTER TABLE `product_variation_options`
  ADD CONSTRAINT `product_variation_options_display_variation_option_id_foreign` FOREIGN KEY (`display_variation_option_id`) REFERENCES `display_variation_options` (`id`),
  ADD CONSTRAINT `product_variation_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variation_options_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`),
  ADD CONSTRAINT `product_variation_options_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `specifications_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sub_categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD CONSTRAINT `sub_sub_categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sub_sub_categories_subcategory_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_role_foreign` FOREIGN KEY (`user_role`) REFERENCES `user_roles` (`id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `variations_display_variation_id_foreign` FOREIGN KEY (`display_variation_id`) REFERENCES `display_variations` (`id`),
  ADD CONSTRAINT `variations_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
