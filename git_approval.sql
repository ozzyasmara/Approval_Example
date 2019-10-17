-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 06:01 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `git_approval`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `nama` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ditujukan_kepada` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Posting',
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`nama`, `ditujukan_kepada`, `keterangan`, `status`, `id`, `created_at`, `updated_at`) VALUES
('pooopopopopopo', '2', NULL, 'Approve', 15, '2019-10-10 00:37:33', '2019-10-13 18:31:16'),
('TEST TEST TEST ', '2', NULL, 'Posting', 22, '2019-10-16 19:37:20', '2019-10-16 20:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-09-05 21:10:21', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-10-14 19:08:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-09-05 21:11:34', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-09/windows_10_wallpaper_black_2.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>ozzy.malang@gmail.com</td></tr><tr><td>password</td><td>$2y$10$bzv9PZTM2Q/74pb8E/CkCuQ2LlyMRBcMhR68rjCmnjap0eUIr5g4W</td><td>$2y$10$dpGmRQYfinUmeJ.lVj8Rfe7PaiLLQY.i.1CiBMc8xfhYr9B0WoDfu</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-09-05 21:12:10', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-05 21:14:15', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-05 21:18:38', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-05 21:31:35', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-05 23:11:59', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Heny at Users Management', '', 1, '2019-09-05 23:16:38', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data accounting at Users Management', '', 1, '2019-09-05 23:17:14', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-05 23:17:22', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-09-05 23:17:43', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-09-05 23:18:04', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-05 23:18:22', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-05 23:18:34', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-05 23:18:54', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 00:42:41', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-06 00:42:59', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-06 00:43:19', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 00:43:35', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 01:21:54', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 01:23:40', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 01:24:17', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 01:31:22', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data SPPD KASBON at Module Generator', '', 1, '2019-09-06 02:09:20', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data SPPD at Module Generator', '', 1, '2019-09-06 02:23:11', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data Lya at SPPD KASBON', '', 1, '2019-09-06 02:35:46', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 02:39:22', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-06 02:39:38', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-06 02:39:45', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 02:39:58', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/3', 'Update data SPPD KASBON at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminSppdControllerGetIndex</td><td>sppd</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2019-09-06 02:40:41', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/3', 'Update data Tambah User at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>SPPD KASBON</td><td>Tambah User</td></tr><tr><td>path</td><td>sppd</td><td>users</td></tr><tr><td>icon</td><td>fa fa-envelope-o</td><td>fa fa-user</td></tr></tbody></table>', 1, '2019-09-06 02:41:19', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 02:41:25', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-06 02:41:38', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-06 02:41:56', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 02:42:08', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data SPPD KASBON at Menu Management', '', 1, '2019-09-06 02:43:04', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/4', 'Update data SPPD KASBON at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-09-06 02:43:42', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 02:43:49', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-06 02:44:12', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-06 02:56:36', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 02:56:50', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data Lya at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nominal_realisasi</td><td>3</td><td>1750000</td></tr><tr><td>nominal_payment</td><td>3</td><td>2000000</td></tr></tbody></table>', 1, '2019-09-06 02:57:20', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 02:58:07', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-09-06 02:58:21', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data Lya at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2019-09-06 03:20:55', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-09-06 03:34:32', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 03:34:46', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 03:36:18', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-09-06 03:36:25', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/sppd/edit/9', 'Try edit the data JOHAN at SPPD KASBON', '', 3, '2019-09-06 03:36:32', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-09-06 03:36:45', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-09-06 03:36:58', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-09-06 03:37:44', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-09-06 03:37:50', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-09-06 03:39:51', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-03 03:07:00', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/action-selected', 'Delete data 5,4,3,2,1 at SPPD KASBON', '', 1, '2019-10-03 03:25:47', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data JOHANT at SPPD KASBON', '', 1, '2019-10-03 03:30:23', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 03:30:32', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td>EAST</td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 03:33:35', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>EAST</td><td>WEST</td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 03:34:39', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>WEST</td><td>1</td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 03:38:09', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>1</td><td>3</td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 03:41:45', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/add-save', 'Add New Data Dokumen 1 at DIREKTORI FILE', '', 1, '2019-10-03 04:08:08', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/add-save', 'Add New Data JOHANT at APPROVAL', '', 1, '2019-10-03 04:16:58', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data JOHANT at SPPD KASBON', '', 1, '2019-10-03 04:31:42', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td>KASBON</td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 04:31:54', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 04:34:19', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/add-save', 'Add New Data JOHANT at APPROVAL', '', 1, '2019-10-03 04:40:51', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/1', 'Update data JOHANT at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 04:41:28', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/1', 'Update data JOHANT at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 04:41:45', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/1', 'Update data JOHANT at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 04:45:02', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-03 04:45:09', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-03 04:45:24', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-03 04:45:53', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-03 04:46:34', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-03 04:46:52', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 04:47:15', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-03 04:47:44', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-03 04:53:37', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-03 04:53:41', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-03 05:04:09', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-03 05:04:12', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 05:06:13', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 05:51:24', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-03 05:56:23', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/add-save', 'Add New Data Dokumen 2 at DIREKTORI FILE', '', 1, '2019-10-03 05:59:11', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-03 06:16:11', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-03 17:58:32', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/1', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-03 18:01:09', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/action-selected', 'Delete data 2,1 at SPPD KASBON', '', 1, '2019-10-03 18:03:39', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data CATUR SUGIYARTO at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>CENTRAL</td><td>3</td></tr><tr><td>periode</td><td>JANUARI</td><td></td></tr><tr><td>tahun</td><td>2018</td><td>13</td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-03 18:19:12', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data CATUR SUGIYARTO at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td>JANUARI</td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td>2019-10-29</td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td>2019-10-29</td></tr><tr><td>nominal_realisasi</td><td></td><td>1750000</td></tr><tr><td>tgl_byr_sppd</td><td></td><td>2019-10-29</td></tr><tr><td>nominal_payment</td><td></td><td>2000000</td></tr><tr><td>tgl_penyelesaian</td><td></td><td>2019-10-22</td></tr></tbody></table>', 1, '2019-10-03 18:20:03', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data CATUR SUGIYARTO at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td>JANUARI</td><td>FEBRUARI</td></tr></tbody></table>', 1, '2019-10-03 18:29:22', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/6', 'Update data CATUR SUGIYARTO at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td>FEBRUARI</td><td>1</td></tr></tbody></table>', 1, '2019-10-03 18:34:05', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/5', 'Update data PHANG ABIE at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>CENTRAL</td><td>4</td></tr><tr><td>periode</td><td>DESEMBER</td><td>8</td></tr><tr><td>tahun</td><td>2017</td><td>13</td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td>2019-11-01</td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td>2019-11-08</td></tr><tr><td>nominal_realisasi</td><td></td><td>1750000</td></tr><tr><td>tgl_byr_sppd</td><td></td><td>2019-11-06</td></tr><tr><td>nominal_payment</td><td></td><td>2000000</td></tr><tr><td>tgl_penyelesaian</td><td></td><td>2019-10-25</td></tr></tbody></table>', 1, '2019-10-03 18:34:39', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/4', 'Update data RAFLIS JULIANTO at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td>EAST</td><td>1</td></tr><tr><td>periode</td><td>DESEMBER</td><td>4</td></tr><tr><td>tahun</td><td>2017</td><td>13</td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td>2019-10-30</td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td>2019-11-06</td></tr><tr><td>nominal_realisasi</td><td></td><td>1750000</td></tr><tr><td>tgl_byr_sppd</td><td></td><td>2019-09-30</td></tr><tr><td>nominal_payment</td><td></td><td>815000</td></tr><tr><td>tgl_penyelesaian</td><td></td><td>2019-10-28</td></tr></tbody></table>', 1, '2019-10-03 18:35:53', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/add-save', 'Add New Data Dokumen 2 at DIREKTORI FILE', '', 1, '2019-10-03 18:37:06', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/add-save', 'Add New Data Dokumen 3 at DIREKTORI FILE', '', 1, '2019-10-03 18:57:15', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/edit-save/3', 'Update data SOP at DIREKTORI FILE', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_file</td><td>Dokumen 3</td><td>SOP</td></tr><tr><td>file</td><td>uploads/1/SOP/b14d441b14abf897ff1133da0f1f3d0d.xls</td><td>uploads/uploads/1/SOP/b14d441b14abf897ff1133da0f1f3d0d.xls</td></tr></tbody></table>', 1, '2019-10-03 19:01:49', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-06 21:51:58', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:18:05', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/delete/6', 'Delete data CATUR SUGIYARTO at SPPD KASBON', '', 1, '2019-10-06 23:22:02', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:23:24', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/8', 'Update data Bobby at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td></td><td>Posting;</td></tr></tbody></table>', 1, '2019-10-06 23:24:50', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/8', 'Update data Bobby at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Posting;</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-06 23:25:02', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/8', 'Update data Bobby at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td></td><td>Posting</td></tr></tbody></table>', 1, '2019-10-06 23:53:27', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit/8', 'Try edit the data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:58:03', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit/7', 'Try edit the data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:58:11', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/delete/8', 'Delete data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:58:46', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/delete/7', 'Delete data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:58:57', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data Bobby at SPPD KASBON', '', 1, '2019-10-06 23:59:39', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data JOHANT at SPPD KASBON', '', 1, '2019-10-07 00:17:09', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/9', 'Update data Joe at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>Bobby</td><td>Joe</td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-07 00:26:49', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-07 00:51:35', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/delete/3', 'Delete data SOP at DIREKTORI FILE', '', 1, '2019-10-07 00:53:40', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/fileservers/add-save', 'Add New Data SOP at DIREKTORI FILE', '', 1, '2019-10-07 00:54:58', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-07 23:38:27', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-07 23:38:51', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-07 23:39:04', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-07 23:49:05', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-07 23:49:18', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-07 23:53:55', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-07 23:54:12', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-07 23:54:28', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-07 23:55:25', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/edit-save/10', 'Update data JOHANT at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-08 00:26:43', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-08 00:26:51', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 00:27:05', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data JOJO NONO at SPPD KASBON', '', 2, '2019-10-08 00:40:49', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 00:41:00', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-08 00:41:17', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-08 00:41:56', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 00:42:10', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 00:48:32', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-08 00:48:41', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-08 00:50:48', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 00:51:02', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 00:55:12', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-08 00:55:26', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/action-selected', 'Delete data 11,4,3 at SPPD KASBON', '', 1, '2019-10-08 00:59:46', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 01:00:38', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 01:15:06', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 01:15:09', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data APPROVAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminApprovalControllerGetIndex</td><td>approval</td></tr><tr><td>color</td><td></td><td>green</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-close</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-08 01:27:34', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:27:43', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:28:13', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:28:53', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data APPROVAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-08 01:29:39', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/add-save', 'Add New Data JOHANT at APPROVAL', '', 1, '2019-10-08 01:29:54', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/1', 'Update data JOHANT at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-08 01:30:09', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/2', 'Update data JOHANT at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Posting;</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-08 01:30:16', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:30:21', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:30:41', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:31:22', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 2, '2019-10-08 01:31:52', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 01:31:56', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 01:31:59', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 01:32:29', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 01:32:33', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data JOJO XIXI at APPROVAL', '', 2, '2019-10-08 01:32:58', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data DODO at APPROVAL', '', 2, '2019-10-08 01:47:00', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data TITI at APPROVAL', '', 2, '2019-10-08 01:49:35', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-08 01:51:41', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-08 01:51:45', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-09 02:39:26', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data WENNY at Users Management', '', 1, '2019-10-09 02:56:30', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data APPROVAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-09 02:58:32', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-09 02:58:42', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'wenny@sekar.co.id login with IP Address 127.0.0.1', '', 4, '2019-10-09 02:58:54', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'wenny@sekar.co.id logout', '', 4, '2019-10-09 03:01:08', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-09 03:03:01', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 03:03:18', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 03:03:25', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 03:03:29', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/2', 'Delete data JOHANT at APPROVAL', '', 1, '2019-10-09 03:04:09', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/3', 'Delete data JOJO XIXI at APPROVAL', '', 1, '2019-10-09 03:04:13', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-09 18:54:29', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 18:55:45', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/5', 'Update data TITI at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td>2</td><td>dsgsdgsgdsgs</td></tr><tr><td>status</td><td>Selesai</td><td></td></tr></tbody></table>', 1, '2019-10-09 19:03:24', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/5', 'Delete data TITI at APPROVAL', '', 2, '2019-10-09 19:05:42', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/4', 'Delete data DODO at APPROVAL', '', 2, '2019-10-09 19:05:46', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data CICIC at APPROVAL', '', 2, '2019-10-09 19:06:05', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 19:11:56', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 19:12:00', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data RRRRRRR at APPROVAL', '', 2, '2019-10-09 19:12:26', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data BBBBBB at APPROVAL', '', 2, '2019-10-09 19:14:09', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/6', 'Delete data CICIC at APPROVAL', '', 2, '2019-10-09 19:14:34', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/1', 'Delete data JOHANT at APPROVAL', '', 2, '2019-10-09 19:14:38', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data VVVV at APPROVAL', '', 2, '2019-10-09 19:15:54', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 19:16:54', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 19:23:39', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 19:29:34', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-09 19:59:41', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:01:12', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/8', 'Update data BBBBBB at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:02:10', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:04:07', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:04:24', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:06:35', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/8', 'Update data BBBBBB at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:06:46', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/9', 'Update data VVVV at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ditujukan_kepada</td><td></td><td></td></tr><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-09 20:13:01', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/delete/4', 'Delete data WENNY at Users Management', '', 1, '2019-10-09 22:01:27', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 23:14:38', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 23:14:47', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 23:21:49', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:21:52', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data APPROVAL at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-10-09 23:22:20', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 3, '2019-10-09 23:22:31', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 3, '2019-10-09 23:22:33', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 3, '2019-10-09 23:22:33', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval', 'Try view the data :name at APPROVAL', '', 3, '2019-10-09 23:23:17', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:23:24', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:23:28', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data FFFFFFFFFFFFFFFFFFF at APPROVAL', '', 3, '2019-10-09 23:25:43', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:26:04', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 23:26:08', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 23:26:43', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:26:47', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:26:55', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 23:27:03', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 23:27:21', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:27:25', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:28:16', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:28:19', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:30:50', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:30:56', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-09 23:32:11', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-09 23:32:14', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-09 23:33:05', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-09 23:33:09', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data KLKLKLKL at APPROVAL', '', 3, '2019-10-10 00:05:01', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:05:08', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:05:12', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:05:50', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:05:55', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:06:23', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:06:26', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:07:25', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:07:29', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:07:45', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:07:50', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:07:58', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:08:02', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/10', 'Delete data FFFFFFFFFFFFFFFFFFF at APPROVAL', '', 2, '2019-10-10 00:08:13', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:09:46', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:09:56', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data HHHNNHHNN at APPROVAL', '', 3, '2019-10-10 00:10:07', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:11:08', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:11:11', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data VVBVBVB at APPROVAL', '', 2, '2019-10-10 00:17:16', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:19:25', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:19:36', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:20:13', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:20:17', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:21:04', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:21:17', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:21:38', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:21:42', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:22:07', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:22:11', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:23:16', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:23:20', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:25:34', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:25:39', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data XCXCXCXCXC at APPROVAL', '', 3, '2019-10-10 00:26:52', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:26:57', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:27:09', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:32:34', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:32:37', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:34:31', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:34:34', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:34:41', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:37:01', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data pooopopopopopo at APPROVAL', '', 3, '2019-10-10 00:37:34', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:37:40', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:37:43', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:39:23', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:39:26', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:44:42', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:44:45', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:48:37', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:48:44', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:49:41', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:49:47', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data accounting at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$DDsm/MR8Wbbg.8LD4FfsKOxtOInY7ZDbpOK.tJlr0Vk1oa9wPc1CO</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-10 00:58:49', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 00:58:59', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 00:59:02', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 00:59:16', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 00:59:19', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data FGFGFGFGFGFG at APPROVAL', '', 2, '2019-10-10 01:11:53', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 01:25:08', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 01:25:12', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 01:26:00', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 01:26:04', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 01:26:10', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 01:26:13', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 01:26:48', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 01:26:51', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 01:28:28', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 01:28:31', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 02:19:32', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 02:19:36', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-10 02:44:59', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 02:45:27', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 02:45:30', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 02:45:51', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 02:45:54', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data BABABABABABABABA at APPROVAL', '', 3, '2019-10-10 02:50:15', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data ASASSASASAS at APPROVAL', '', 3, '2019-10-10 02:51:08', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-10 18:44:35', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 18:45:05', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 18:45:22', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 18:45:26', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 18:45:45', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 18:45:48', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 18:47:15', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 18:47:19', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 18:50:33', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 18:50:36', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 19:07:18', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-10 19:07:21', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/13', 'Delete data VVBVBVB at APPROVAL', '', 1, '2019-10-10 19:18:10', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/12', 'Delete data HHHNNHHNN at APPROVAL', '', 1, '2019-10-10 19:18:16', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/11', 'Delete data KLKLKLKL at APPROVAL', '', 1, '2019-10-10 19:18:22', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/9', 'Delete data VVVV at APPROVAL', '', 1, '2019-10-10 19:18:26', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/action-selected', 'Delete data 8,7 at APPROVAL', '', 1, '2019-10-10 19:18:38', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/15', 'Update data pooopopopopopo at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Approve</td><td>Posting</td></tr></tbody></table>', 1, '2019-10-10 19:18:50', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data NANANANANA se7en at SPPD KASBON', '', 1, '2019-10-10 19:58:28', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-10 20:00:37', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 20:00:41', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 20:02:57', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 20:03:22', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/delete/10', 'Delete data JOHANT at SPPD KASBON', '', 3, '2019-10-10 20:03:31', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data accounting at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$DDsm/MR8Wbbg.8LD4FfsKOxtOInY7ZDbpOK.tJlr0Vk1oa9wPc1CO</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-10 20:04:24', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-10 20:04:38', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-10 20:04:42', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td></td></tr></tbody></table>', 3, '2019-10-10 20:05:00', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 3, '2019-10-10 20:05:17', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-13 18:09:50', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 18:15:50', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 18:20:37', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 18:20:42', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 18:27:14', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 18:27:20', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 18:30:45', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 18:30:49', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/edit-save/15', 'Update data pooopopopopopo at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td></td><td></td></tr><tr><td>status</td><td>Reject</td><td>Posting</td></tr></tbody></table>', 3, '2019-10-13 18:31:16', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 18:31:23', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 18:31:27', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 20:24:28', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 20:24:37', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 20:26:07', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 20:26:10', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 20:54:35', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 20:54:38', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 21:08:38', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 21:08:44', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 21:09:05', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 21:09:10', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 21:11:48', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 21:11:51', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 21:13:20', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 21:13:24', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 21:36:35', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 22:45:38', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 22:45:48', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 22:45:52', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-13 22:52:37', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-13 22:52:55', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-13 23:12:43', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-13 23:12:47', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-13 23:13:31', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-13 23:13:35', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-14 01:25:04', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-14 01:25:46', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-14 01:32:38', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-14 01:32:42', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/approval/delete/18', 'Delete data ASASSASASAS at APPROVAL', '', 1, '2019-10-14 01:32:51', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data RRRRRRTTTTTTTT at APPROVAL', '', 3, '2019-10-14 02:59:01', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-14 02:59:09', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-14 02:59:13', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-14 19:09:20', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-14 19:18:58', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-14 19:19:05', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-14 19:19:08', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-14 19:21:15', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-14 19:21:19', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-14 19:23:10', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-14 19:23:14', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-15 18:58:42', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data adminarea at Users Management', '', 1, '2019-10-15 19:03:22', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/klaim_bs/add-save', 'Add New Data  at KLAIM BS & BARANG', '', 1, '2019-10-15 19:29:26', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/klaim_bs/edit-save/1', 'Update data PT KUNCI SUKSES ABADI at KLAIM BS & BARANG', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td>3</td></tr><tr><td>periode</td><td></td><td>12</td></tr><tr><td>nama_distributor</td><td></td><td>PT KUNCI SUKSES ABADI</td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>up</td><td></td><td>STEFANI</td></tr><tr><td>approval_nsm</td><td></td><td>2019-10-07</td></tr><tr><td>approval_gm</td><td></td><td>2019-10-08</td></tr><tr><td>approval_direksi</td><td></td><td>2019-10-23</td></tr><tr><td>kirim_area</td><td></td><td>2019-10-15</td></tr><tr><td>up_area</td><td></td><td>LELY</td></tr></tbody></table>', 1, '2019-10-15 19:50:40', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-15 21:36:40', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-15 21:37:20', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-15 21:37:24', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-15 21:37:49', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-15 21:37:54', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/klaim_biaya/add-save', 'Add New Data Bobby at KLAIM BIAYA', '', 1, '2019-10-15 21:52:31', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan</td><td>fdsfsdagfgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg</td><td>fdsfsdagfggggggggggg</td></tr></tbody></table>', 1, '2019-10-15 21:52:55', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/5', 'Update data DIREKTORI FILE at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminFileserversControllerGetIndex</td><td>fileservers</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-15 22:08:23', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/7', 'Update data KLAIM BS & BARANG at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminKlaimBsControllerGetIndex</td><td>klaim_bs</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-10-15 22:08:50', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/8', 'Update data KLAIM BIAYA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminKlaimBiayaControllerGetIndex</td><td>klaim_biaya</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-10-15 22:09:09', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/fileservers', 'Try view the data :name at DIREKTORI FILE', '', 3, '2019-10-15 22:09:23', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-15 22:09:28', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-15 22:09:33', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/3', 'Delete data Tambah User at Menu Management', '', 1, '2019-10-15 22:10:46', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya', 'Try view the data :name at KLAIM BIAYA', '', 2, '2019-10-15 22:10:55', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_bs', 'Try view the data :name at KLAIM BS & BARANG', '', 2, '2019-10-15 22:10:57', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/fileservers', 'Try view the data :name at DIREKTORI FILE', '', 2, '2019-10-15 22:11:54', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_bs', 'Try view the data :name at KLAIM BS & BARANG', '', 2, '2019-10-15 22:11:56', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya', 'Try view the data :name at KLAIM BIAYA', '', 2, '2019-10-15 22:11:57', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-15 22:12:01', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-15 22:12:04', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-15 22:12:22', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-15 23:50:55', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-15 23:53:38', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-15 23:53:43', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-15 23:55:55', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of adminarea at Users Management', '', 1, '2019-10-15 23:57:20', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/5', 'Update data adminarea at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-10/apple_icon_72x72.png</td></tr><tr><td>password</td><td>$2y$10$YWyjlCnxpVDIzA8f5XPn4uvuTBKSfeoZ8v0fK7a5dMx63.AOUNRMu</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-15 23:57:47', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 01:00:48', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 01:11:15', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 01:16:02', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr><tr><td>status</td><td></td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 01:22:58', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr></tbody></table>', 2, '2019-10-16 01:23:07', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/4', 'Update data SPPD KASBON at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>light-blue</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 01:27:08', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/5', 'Update data DIREKTORI FILE at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-10-16 01:27:31', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/7', 'Update data KLAIM BS & BARANG at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-10-16 01:27:48', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/8', 'Update data KLAIM BIAYA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>muted</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-10-16 01:28:04', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/8', 'Update data KLAIM BIAYA at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>muted</td><td>green</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-10-16 01:28:30', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 01:29:04', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-16 01:29:32', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 01:36:56', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 01:37:16', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Posting</td><td></td></tr></tbody></table>', 2, '2019-10-16 01:37:42', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 2, '2019-10-16 01:37:53', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td></td></tr></tbody></table>', 2, '2019-10-16 01:38:07', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/add-save', 'Add New Data EEERERRER at SPPD KASBON', '', 2, '2019-10-16 01:38:36', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 01:39:25', NULL),
(441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/13', 'Update data EEERERRER at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr></tbody></table>', 2, '2019-10-16 01:41:59', NULL),
(442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 02:09:43', NULL),
(443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_bs/edit-save/1', 'Update data PT KUNCI SUKSES ABADI at KLAIM BS & BARANG', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 02:11:59', NULL),
(444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_bs/add-save', 'Add New Data  at KLAIM BS & BARANG', '', 2, '2019-10-16 02:12:17', NULL),
(445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/sppd/edit-save/12', 'Update data NANANANANA se7en at SPPD KASBON', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>area</td><td></td><td></td></tr><tr><td>periode</td><td></td><td></td></tr><tr><td>jenis_pembayaran</td><td></td><td></td></tr><tr><td>tahun</td><td></td><td></td></tr><tr><td>tujuan</td><td></td><td></td></tr><tr><td>nominal</td><td></td><td></td></tr><tr><td>tgl_kirim_ke_pabrik</td><td></td><td></td></tr><tr><td>tgl_kirim_lppd_ke_accounting</td><td></td><td></td></tr><tr><td>nominal_realisasi</td><td></td><td></td></tr><tr><td>tgl_byr_sppd</td><td></td><td></td></tr><tr><td>tgl_terima_lppd</td><td></td><td></td></tr><tr><td>nominal_payment</td><td></td><td></td></tr><tr><td>tgl_penyelesaian</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 02:14:40', NULL),
(446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr><tr><td>status</td><td>Selesai</td><td>Posting</td></tr></tbody></table>', 2, '2019-10-16 02:15:46', NULL),
(447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr><tr><td>nominal_bayar</td><td>677777</td><td>1000000</td></tr></tbody></table>', 2, '2019-10-16 02:16:09', NULL),
(448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr></tbody></table>', 2, '2019-10-16 02:17:24', NULL),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/klaim_biaya/edit-save/1', 'Update data Bobby at KLAIM BIAYA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nominal</td><td>2000000</td><td>4000000</td></tr><tr><td>tgl_terima_revisi</td><td></td><td></td></tr><tr><td>jatuh_tempo_pembayaran</td><td></td><td></td></tr><tr><td>fam</td><td></td><td></td></tr><tr><td>gm</td><td></td><td></td></tr><tr><td>finance</td><td></td><td></td></tr><tr><td>tgl_bayar</td><td></td><td></td></tr></tbody></table>', 2, '2019-10-16 02:17:40', NULL),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 18:24:27', NULL),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 19:16:25', NULL),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data OZZY OZZY OZZY  at APPROVAL', '', 3, '2019-10-16 19:18:42', NULL),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-16 19:18:49', NULL),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 19:18:53', NULL),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 19:20:06', NULL),
(456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 19:27:11', NULL),
(457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 19:27:14', NULL),
(458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-16 19:27:21', NULL),
(459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 19:27:25', NULL),
(460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data HJHJHJHJH HJHJHJ HJHJHJ H at APPROVAL', '', 2, '2019-10-16 19:27:54', NULL),
(461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 19:28:02', NULL),
(462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 19:28:05', NULL),
(463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-16 19:28:18', NULL),
(464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 19:28:21', NULL),
(465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 19:28:53', NULL),
(466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 19:28:56', NULL),
(467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/approval/delete/21', 'Delete data HJHJHJHJH HJHJHJ HJHJHJ H at APPROVAL', '', 1, '2019-10-16 19:30:01', NULL),
(468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-16 19:30:09', NULL),
(469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 19:30:14', NULL),
(470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/20', 'Delete data OZZY OZZY OZZY  at APPROVAL', '', 2, '2019-10-16 19:30:20', NULL),
(471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/19', 'Delete data RRRRRRTTTTTTTT at APPROVAL', '', 2, '2019-10-16 19:30:24', NULL),
(472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/17', 'Delete data BABABABABABABABA at APPROVAL', '', 2, '2019-10-16 19:30:27', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/16', 'Delete data FGFGFGFGFGFG at APPROVAL', '', 2, '2019-10-16 19:30:30', NULL),
(474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/delete/14', 'Delete data XCXCXCXCXC at APPROVAL', '', 2, '2019-10-16 19:36:14', NULL),
(475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 19:36:22', NULL),
(476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'accounting@sekar.co.id login with IP Address 127.0.0.1', '', 3, '2019-10-16 19:36:26', NULL),
(477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/approval/add-save', 'Add New Data OZZY OZZY OZZY at APPROVAL', '', 3, '2019-10-16 19:37:20', NULL),
(478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'accounting@sekar.co.id logout', '', 3, '2019-10-16 19:37:33', NULL),
(479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'henyrps@sekar.co.id login with IP Address 127.0.0.1', '', 2, '2019-10-16 19:37:36', NULL),
(480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'henyrps@sekar.co.id logout', '', 2, '2019-10-16 19:38:23', NULL),
(481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'adminarea@sekar.co.id login with IP Address 127.0.0.1', '', 5, '2019-10-16 19:38:43', NULL),
(482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data wenny at Users Management', '', 1, '2019-10-16 19:40:02', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'adminarea@sekar.co.id logout', '', 5, '2019-10-16 19:40:46', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/login', 'wenny@sekar.co.id login with IP Address 127.0.0.1', '', 6, '2019-10-16 19:40:57', NULL),
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'http://localhost:8000/admin/logout', 'wenny@sekar.co.id logout', '', 6, '2019-10-16 19:44:34', NULL),
(486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-16 19:44:39', NULL),
(487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 20:10:10', NULL),
(488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/15', 'Delete data DIREKTORI FILE at Module Generator', '', 1, '2019-10-16 20:10:28', NULL),
(489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/18', 'Delete data KLAIM BIAYA at Module Generator', '', 1, '2019-10-16 20:10:33', NULL),
(490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/17', 'Delete data KLAIM BS & BARANG at Module Generator', '', 1, '2019-10-16 20:10:39', NULL),
(491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data SPPD KASBON at Module Generator', '', 1, '2019-10-16 20:10:44', NULL),
(492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/7', 'Delete data KLAIM BS & BARANG at Menu Management', '', 1, '2019-10-16 20:10:54', NULL),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/8', 'Delete data KLAIM BIAYA at Menu Management', '', 1, '2019-10-16 20:10:58', NULL),
(494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/5', 'Delete data DIREKTORI FILE at Menu Management', '', 1, '2019-10-16 20:11:02', NULL),
(495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/4', 'Delete data SPPD KASBON at Menu Management', '', 1, '2019-10-16 20:11:07', NULL),
(496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'ozzy.malang@gmail.com logout', '', 1, '2019-10-16 20:15:28', NULL),
(497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'ozzy.malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 20:15:49', NULL),
(498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>ozzy.malang@gmail.com</td><td>malang@gmail.com</td></tr><tr><td>password</td><td>$2y$10$dpGmRQYfinUmeJ.lVj8Rfe7PaiLLQY.i.1CiBMc8xfhYr9B0WoDfu</td><td>$2y$10$siDKDBdxB5GErpJbqeQEce/kDUPJBdbuY9Ft1kk1RfDrSX50yLG5q</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-10-16 20:16:13', NULL),
(499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'malang@gmail.com logout', '', 1, '2019-10-16 20:16:18', NULL),
(500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'malang@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 20:16:28', NULL),
(501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of Heny at Users Management', '', 1, '2019-10-16 20:17:03', NULL),
(502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data malangmlg at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Heny</td><td>malangmlg</td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-10/app.jpg</td></tr><tr><td>email</td><td>henyrps@sekar.co.id</td><td>malang2@gmail.com</td></tr><tr><td>password</td><td>$2y$10$TBLmSLCr6R4HP7HTgcnjFuS8qkQQCx3dUBeD.YqsimhmB5bNVjfum</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 20:18:11', NULL),
(503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/delete/5', 'Delete data adminarea at Users Management', '', 1, '2019-10-16 20:18:19', NULL),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/delete/6', 'Delete data wenny at Users Management', '', 1, '2019-10-16 20:18:23', NULL),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of accounting at Users Management', '', 1, '2019-10-16 20:18:41', NULL),
(506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data accounting at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-10/app.jpg</td></tr><tr><td>password</td><td>$2y$10$DDsm/MR8Wbbg.8LD4FfsKOxtOInY7ZDbpOK.tJlr0Vk1oa9wPc1CO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 20:18:49', NULL),
(507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data member at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>accounting</td><td>member</td></tr><tr><td>email</td><td>accounting@sekar.co.id</td><td>member@gmail.com</td></tr><tr><td>password</td><td>$2y$10$DDsm/MR8Wbbg.8LD4FfsKOxtOInY7ZDbpOK.tJlr0Vk1oa9wPc1CO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 20:19:23', NULL),
(508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>malangmlg</td><td>admin</td></tr><tr><td>email</td><td>malang2@gmail.com</td><td>admin@gmail.com</td></tr><tr><td>password</td><td>$2y$10$TBLmSLCr6R4HP7HTgcnjFuS8qkQQCx3dUBeD.YqsimhmB5bNVjfum</td><td>$2y$10$BRqCzJj4U1cOZbu.C5kPnu.OtGIUgwNa8WuFllGiVY.jxdK8pPMiy</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 20:20:18', NULL),
(509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>malang@gmail.com</td><td>superadmin@gmail.com</td></tr><tr><td>password</td><td>$2y$10$siDKDBdxB5GErpJbqeQEce/kDUPJBdbuY9Ft1kk1RfDrSX50yLG5q</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-10-16 20:20:34', NULL),
(510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'superadmin@gmail.com logout', '', 1, '2019-10-16 20:20:39', NULL),
(511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'superadmin@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 20:20:52', NULL),
(512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/approval/edit-save/22', 'Update data TEST TEST TEST  at APPROVAL', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>OZZY OZZY OZZY</td><td>TEST TEST TEST </td></tr><tr><td>keterangan</td><td></td><td></td></tr></tbody></table>', 1, '2019-10-16 20:21:09', NULL),
(513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'superadmin@gmail.com logout', '', 1, '2019-10-16 20:21:31', NULL),
(514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-10-16 20:21:40', NULL),
(515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@gmail.com logout', '', 2, '2019-10-16 20:21:50', NULL),
(516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'member@gmail.com login with IP Address 127.0.0.1', '', 3, '2019-10-16 20:21:59', NULL),
(517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'member@gmail.com logout', '', 3, '2019-10-16 20:22:06', NULL),
(518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/login', 'superadmin@gmail.com login with IP Address 127.0.0.1', '', 1, '2019-10-16 20:22:21', NULL),
(519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'http://localhost:8000/admin/logout', 'superadmin@gmail.com logout', '', 1, '2019-10-16 20:23:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(6, 'APPROVAL', 'Module', 'approval', 'green', 'fa fa-close', 0, 1, 0, 1, 3, '2019-10-03 04:10:14', '2019-10-09 23:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(6, 3, 2),
(7, NULL, 2),
(20, 6, 2),
(21, 6, 3),
(22, 6, 1),
(34, 4, 2),
(35, 4, 3),
(36, 4, 1),
(37, 5, 2),
(38, 5, 3),
(39, 5, 1),
(40, 7, 2),
(41, 7, 3),
(42, 7, 1),
(46, 8, 2),
(47, 8, 3),
(48, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-09-05 21:10:19', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-09-05 21:10:19', NULL, NULL),
(12, 'SPPD KASBON', 'fa fa-pencil', 'sppd', 'sppd', 'AdminSppdController', 0, 0, '2019-09-06 00:51:44', NULL, '2019-09-06 02:09:21'),
(13, 'SPPD', 'fa fa-glass', 'sppd', 'sppd', 'AdminSppdController', 0, 0, '2019-09-06 02:22:43', NULL, '2019-09-06 02:23:11'),
(14, 'SPPD KASBON', 'fa fa-envelope-o', 'sppd', 'sppd', 'AdminSppdController', 0, 0, '2019-09-06 02:24:52', NULL, '2019-10-16 20:10:44'),
(15, 'DIREKTORI FILE', 'fa fa-glass', 'fileservers', 'fileservers', 'AdminFileserversController', 0, 0, '2019-10-03 04:05:02', NULL, '2019-10-16 20:10:28'),
(16, 'APPROVAL', 'fa fa-glass', 'approval', 'approval', 'AdminApprovalController', 0, 0, '2019-10-03 04:10:13', NULL, NULL),
(17, 'KLAIM BS & BARANG', 'fa fa-trash-o', 'klaim_bs', 'klaim_bs', 'AdminKlaimBsController', 0, 0, '2019-10-15 19:20:26', NULL, '2019-10-16 20:10:39'),
(18, 'KLAIM BIAYA', 'fa fa-plus', 'klaim_biaya', 'klaim_biaya', 'AdminKlaimBiayaController', 0, 0, '2019-10-15 20:58:28', NULL, '2019-10-16 20:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green', '2019-09-05 21:10:19', NULL),
(2, 'admin', 0, 'skin-yellow', NULL, NULL),
(3, 'member', 0, 'skin-yellow', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(2, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(4, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(8, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(9, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(17, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(18, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(19, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(20, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(21, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(22, 1, 1, 1, 1, 0, 2, 4, NULL, NULL),
(23, 1, 1, 1, 1, 0, 3, 16, NULL, NULL),
(24, 1, 0, 1, 0, 0, 3, 15, NULL, NULL),
(25, 1, 1, 1, 1, 0, 3, 18, NULL, NULL),
(26, 1, 1, 1, 1, 0, 3, 17, NULL, NULL),
(27, 1, 1, 1, 1, 0, 3, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '', 'text', NULL, 'Input hexacode', '2019-09-05 21:10:20', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '', 'text', NULL, 'Input hexacode', '2019-09-05 21:10:20', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2019-09/a5283e8533f5f71b58fec5b6e268ac58.jpg', 'upload_image', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-09-05 21:10:20', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-09-05 21:10:20', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'III Approval III', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-09-05 21:10:20', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-10/2c9c2f4a95d62e3f0429913f72cfba5f.jpg', 'upload_image', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2019-09-05 21:10:20', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2019-09/windows_10_wallpaper_black_2.jpg', 'superadmin@gmail.com', '$2y$10$siDKDBdxB5GErpJbqeQEce/kDUPJBdbuY9Ft1kk1RfDrSX50yLG5q', 1, '2019-09-05 21:10:19', '2019-10-16 20:20:34', 'Active'),
(2, 'admin', 'uploads/1/2019-10/app.jpg', 'admin@gmail.com', '$2y$10$BRqCzJj4U1cOZbu.C5kPnu.OtGIUgwNa8WuFllGiVY.jxdK8pPMiy', 2, '2019-09-05 23:16:38', '2019-10-16 20:20:18', NULL),
(3, 'member', 'uploads/1/2019-10/app.jpg', 'member@gmail.com', '$2y$10$DDsm/MR8Wbbg.8LD4FfsKOxtOInY7ZDbpOK.tJlr0Vk1oa9wPc1CO', 3, '2019-09-05 23:17:14', '2019-10-16 20:19:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2019_09_06_042157_create_sppd', 2),
(43, '2019_09_06_091127_create_sppd_table', 3),
(44, '2019_09_06_111848_create_area_table', 3),
(45, '2019_09_09_014740_create_thn_table', 3),
(46, '2019_09_09_082739_create_periode_table', 3),
(47, '2019_10_03_104216_create_fileservers_table', 3),
(48, '2019_10_03_105638_create_approval_table', 3),
(49, '2019_10_16_020507_create_klaim_bs_table', 4),
(50, '2019_10_16_034701_create_klaim_biaya_table', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
