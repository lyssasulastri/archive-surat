-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2023 pada 00.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archive_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `archive`
--

CREATE TABLE `archive` (
  `id_archive` int(11) UNSIGNED NOT NULL,
  `id_surat` int(11) UNSIGNED NOT NULL,
  `nama_folder` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '203.78.119.126', 'Mozilla/5.0 (Linux; U; Android 12; in-id; CPH2219 Build/RKQ1.211119.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.1.1', 'e4f1677518511056c9941da8cd069e5b', '2023-06-18 20:05:12'),
(2, '203.78.119.126', 'Mozilla/5.0 (Linux; U; Android 12; in-id; CPH2219 Build/RKQ1.211119.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.1.1', 'e4f1677518511056c9941da8cd069e5b', '2023-06-18 20:05:45'),
(3, '203.78.119.126', 'Mozilla/5.0 (Linux; U; Android 12; in-id; CPH2219 Build/RKQ1.211119.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.1.1', 'e4f1677518511056c9941da8cd069e5b', '2023-06-18 20:09:48'),
(4, '182.1.18.134', 'Mozilla/5.0 (Linux; Android 9; vivo 1902 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/10.5.0.0', '0b3d82345fdce8fc6bd66850ec636c5a', '2023-06-24 14:19:20'),
(5, '103.26.211.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '0b3d82345fdce8fc6bd66850ec636c5a', '2023-06-24 14:19:25'),
(6, '114.125.14.54', 'Mozilla/5.0 (Linux; Android 9; vivo 1902 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/10.5.0.0', '0b3d82345fdce8fc6bd66850ec636c5a', '2023-06-24 14:31:38'),
(7, '182.1.5.225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'eef85ef63e46eea604f9e8d285b2400a', '2023-06-24 14:40:38'),
(8, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'eef85ef63e46eea604f9e8d285b2400a', '2023-06-24 14:40:46'),
(9, '110.50.81.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'eef85ef63e46eea604f9e8d285b2400a', '2023-06-24 14:40:46'),
(10, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'eef85ef63e46eea604f9e8d285b2400a', '2023-06-24 15:22:50'),
(11, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'eef85ef63e46eea604f9e8d285b2400a', '2023-06-24 15:23:21'),
(12, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '599753c32958a9daa5a312854acfe564', '2023-06-24 15:24:38'),
(13, '110.50.80.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '599753c32958a9daa5a312854acfe564', '2023-06-24 15:24:50'),
(14, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '1e4e6203d0518fec781ce0767a8173cd', '2023-06-24 15:29:46'),
(15, '202.43.172.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '1e4e6203d0518fec781ce0767a8173cd', '2023-06-24 15:29:53'),
(16, '110.50.81.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '1e4e6203d0518fec781ce0767a8173cd', '2023-06-24 15:29:54'),
(17, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'edbc99cd4d0ef08f7140eef43239ac72', '2023-06-24 15:33:33'),
(18, '110.50.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'edbc99cd4d0ef08f7140eef43239ac72', '2023-06-24 15:33:42'),
(19, '110.50.81.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'edbc99cd4d0ef08f7140eef43239ac72', '2023-06-24 15:33:44'),
(20, '182.1.22.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '83e02fbb6910e8ebfa79342a45bebd76', '2023-06-24 15:37:27'),
(21, '182.1.18.134', 'Mozilla/5.0 (Linux; Android 9; vivo 1902 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/10.5.0.0', '0b3d82345fdce8fc6bd66850ec636c5a', '2023-06-24 15:40:40'),
(22, '182.1.18.134', 'Mozilla/5.0 (Linux; Android 9; vivo 1902 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/10.5.0.0', '4b2ca7e6c35b31ee9f6b12b1491f991d', '2023-06-24 15:43:10'),
(23, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '4b2ca7e6c35b31ee9f6b12b1491f991d', '2023-06-24 15:43:14'),
(24, '114.125.52.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '9ca83795e1dd8b32eb475cbe71e5b31a', '2023-06-24 15:58:47'),
(25, '113.197.108.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '9ca83795e1dd8b32eb475cbe71e5b31a', '2023-06-24 15:58:50'),
(26, '202.43.172.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '9ca83795e1dd8b32eb475cbe71e5b31a', '2023-06-24 15:58:51'),
(27, '110.50.81.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '0b3d82345fdce8fc6bd66850ec636c5a', '2023-06-24 16:12:32'),
(28, '110.50.81.197', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '83e02fbb6910e8ebfa79342a45bebd76', '2023-06-24 17:57:28'),
(29, '110.50.80.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '4b2ca7e6c35b31ee9f6b12b1491f991d', '2023-06-24 20:23:25'),
(30, '103.26.211.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '4b2ca7e6c35b31ee9f6b12b1491f991d', '2023-06-24 21:19:23'),
(31, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '83e02fbb6910e8ebfa79342a45bebd76', '2023-06-25 03:16:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'login', 'user yang sudah login');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '203.78.119.126', 'camat@gmail.com', NULL, '2023-06-18 07:54:42', 0),
(2, '203.78.119.126', 'admin', NULL, '2023-06-18 07:54:54', 0),
(3, '203.78.119.126', 'Admin', NULL, '2023-06-18 19:03:49', 0),
(4, '203.78.119.126', 'admin', NULL, '2023-06-18 19:03:57', 0),
(5, '203.78.119.126', 'admin.', NULL, '2023-06-18 19:04:05', 0),
(6, '203.78.119.126', 'admin', NULL, '2023-06-18 19:05:17', 0),
(7, '140.213.146.195', 'camat@gmail.com', NULL, '2023-06-18 19:06:17', 0),
(8, '140.213.146.195', 'admin', NULL, '2023-06-18 19:06:28', 0),
(9, '140.213.146.195', 'admin@gmail.com', 1, '2023-06-18 19:09:59', 1),
(10, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 19:16:13', 1),
(11, '182.1.22.88', 'camat@gmail.com', NULL, '2023-06-18 19:47:10', 0),
(12, '114.125.12.88', 'camat@gmail.com', NULL, '2023-06-18 19:47:24', 0),
(13, '114.125.12.88', 'evasusanti@gmail.com', NULL, '2023-06-18 19:47:51', 0),
(14, '114.125.12.88', 'Admin', NULL, '2023-06-18 19:54:02', 0),
(15, '114.125.12.88', 'Admin', NULL, '2023-06-18 19:54:25', 0),
(16, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 19:55:55', 1),
(17, '114.125.12.88', 'Admin', NULL, '2023-06-18 19:56:42', 0),
(18, '114.125.12.88', 'admin@gmail.com', 1, '2023-06-18 19:57:08', 1),
(19, '203.78.119.126', 'pengguna', NULL, '2023-06-18 19:59:32', 0),
(20, '203.78.119.126', 'user@gmail.com', 2, '2023-06-18 19:59:47', 1),
(21, '114.125.12.88', 'lyssahayani43@gmail.com', 4, '2023-06-18 20:05:25', 0),
(22, '203.78.119.126', 'Kasi kessos ', 3, '2023-06-18 20:05:25', 0),
(23, '203.78.119.126', 'aldinagalery@gmail.com', 3, '2023-06-18 20:05:35', 0),
(24, '203.78.119.126', 'aldinagalery@gmail.com', 3, '2023-06-18 20:05:59', 0),
(25, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 20:07:23', 1),
(26, '203.78.119.126', 'aldinagalery@gmail.com', 5, '2023-06-18 20:10:30', 0),
(27, '203.78.119.126', 'aldinagalery@gmail.com', 5, '2023-06-18 20:10:42', 0),
(28, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 20:11:40', 1),
(29, '203.78.119.126', 'user@gmail.com', 2, '2023-06-18 20:14:43', 1),
(30, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 20:19:26', 1),
(31, '203.78.119.126', 'Kaspem', NULL, '2023-06-18 20:35:38', 0),
(32, '203.78.119.126', 'kaspem', NULL, '2023-06-18 20:35:51', 0),
(33, '203.78.119.126', 'KasPem', NULL, '2023-06-18 20:36:05', 0),
(34, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 20:36:18', 1),
(35, '203.78.119.126', 'User', NULL, '2023-06-18 20:36:48', 0),
(36, '203.78.119.126', 'Kaspem', NULL, '2023-06-18 20:37:06', 0),
(37, '203.78.119.126', 'user@gmail.com', 2, '2023-06-18 20:38:08', 1),
(38, '203.78.119.126', 'Kasikessos ', 5, '2023-06-18 20:42:20', 0),
(39, '203.78.119.126', 'aldinagalery@gmail.com', 5, '2023-06-18 20:42:32', 0),
(40, '203.78.119.126', 'admin@gmail.com', 1, '2023-06-18 20:42:51', 1),
(41, '114.125.12.88', 'admin ', NULL, '2023-06-18 20:44:57', 0),
(42, '114.125.12.88', 'admin@gmail.com', 1, '2023-06-18 20:45:18', 1),
(43, '203.78.119.126', 'kasikessos ', NULL, '2023-06-18 20:53:20', 0),
(44, '203.78.119.126', 'aldinagalery@gmail.com', 5, '2023-06-18 20:53:30', 0),
(45, '203.78.119.126', 'user@gmail.com', 2, '2023-06-18 21:28:15', 1),
(46, '114.125.27.175', 'admin@gmail.com', 1, '2023-06-19 11:24:08', 1),
(47, '114.125.8.65', 'admin@gmail.com', 1, '2023-06-19 11:51:36', 1),
(48, '114.125.8.65', 'admin@gmail.com', 1, '2023-06-19 11:53:15', 1),
(49, '114.125.8.65', 'user@gmail.com', 2, '2023-06-19 11:54:12', 1),
(50, '114.125.27.175', 'admin@gmail.com', 1, '2023-06-19 11:55:45', 1),
(51, '114.125.27.175', 'user@gmail.com', 2, '2023-06-19 12:01:46', 1),
(52, '114.125.27.175', 'KasiEkbang', NULL, '2023-06-19 12:02:14', 0),
(53, '114.125.27.175', 'admin@gmail.com', 1, '2023-06-19 12:05:46', 1),
(54, '140.213.158.29', 'admin', NULL, '2023-06-20 05:58:53', 0),
(55, '103.209.185.254', 'admin@gmail.com', 1, '2023-06-20 09:50:52', 1),
(56, '110.137.77.90', 'admin@gmail.com', 1, '2023-06-20 19:05:36', 1),
(57, '110.137.77.90', 'user@gmail.com', 2, '2023-06-20 19:10:57', 1),
(58, '36.69.116.188', 'admin@gmail.com', 1, '2023-06-21 13:55:01', 1),
(59, '182.1.16.73', 'admin@gmail.com', 1, '2023-06-23 11:30:48', 1),
(60, '182.1.16.73', 'user@gmail.com', 2, '2023-06-23 11:55:37', 1),
(61, '182.1.16.73', 'admin@gmail.com', 1, '2023-06-23 11:57:58', 1),
(62, '182.1.16.73', 'user@gmail.com', 2, '2023-06-23 12:17:21', 1),
(63, '36.69.117.90', 'admin@gmail.com', 1, '2023-06-23 14:44:38', 1),
(64, '112.215.200.64', 'admin@gmail.com', 1, '2023-06-23 17:17:51', 1),
(65, '182.1.21.241', 'user@gmail.com', 2, '2023-06-24 14:15:51', 1),
(66, '182.1.18.134', 'Kasi Kessoss ', NULL, '2023-06-24 14:19:42', 0),
(67, '182.1.18.134', 'Kasi Kessoss', NULL, '2023-06-24 14:34:08', 0),
(68, '182.1.18.134', 'admin@gmail.com', 1, '2023-06-24 14:34:38', 1),
(69, '182.1.5.225', 'Sub Bagian Tata Usaha ', 7, '2023-06-24 14:34:44', 0),
(70, '182.1.5.225', 'Sub Bagian Tata Usaha ', 7, '2023-06-24 14:35:54', 0),
(71, '182.1.5.225', 'Sub Bagian Tata Usaha ', 7, '2023-06-24 14:39:09', 0),
(72, '182.1.5.225', 'Sub Bagian Tata Usaha ', 7, '2023-06-24 14:40:26', 0),
(73, '182.1.5.225', 'stri3112@gmail.com', 7, '2023-06-24 14:40:57', 1),
(74, '182.1.18.134', 'stri3112@gmail.com', 7, '2023-06-24 14:45:05', 1),
(75, '182.1.18.134', 'admin@gmail.com', 1, '2023-06-24 14:50:56', 1),
(76, '182.1.22.125', 'Seksi Pemberdayaan Masyarakat ', 8, '2023-06-24 15:23:54', 0),
(77, '182.1.22.125', 'stri3112@gmail.com', 8, '2023-06-24 15:25:12', 1),
(78, '114.125.14.54', 'stri3112@gmail.com', 8, '2023-06-24 15:26:57', 1),
(79, '182.1.22.125', 'tris95301@gmail.com', 9, '2023-06-24 15:30:13', 1),
(80, '182.1.22.125', 'Seksi Ekonomi Dan Pembangunan ', NULL, '2023-06-24 15:33:59', 0),
(81, '182.1.22.125', 'tri653140@gmail.com', 10, '2023-06-24 15:34:20', 1),
(82, '182.1.22.125', 'sungaikantorcamat@gmail.com', 11, '2023-06-24 15:37:52', 1),
(83, '182.1.18.134', 'admin@gmail.com', 1, '2023-06-24 15:45:55', 1),
(84, '114.125.39.90', 'dedesantika1995@gmail.com', 14, '2023-06-24 15:59:26', 1),
(85, '182.1.4.97', 'admin@gmail.com', 1, '2023-06-24 16:38:18', 1),
(86, '182.1.4.97', 'admin@gmail.com', 1, '2023-06-24 17:00:16', 1),
(87, '182.1.18.134', 'dedesantika1995@gmail.com', 14, '2023-06-24 17:10:00', 1),
(88, '114.125.13.29', 'admin@gmail.com', 1, '2023-06-24 21:21:11', 1),
(89, '182.1.7.245', 'admin@gmail.com', 1, '2023-06-24 21:36:58', 1),
(90, '112.215.175.110', 'admin@gmail.com', 1, '2023-06-24 22:07:27', 1),
(91, '182.1.17.154', 'dedesantika1995@gmail.com', 14, '2023-06-25 08:22:21', 1),
(92, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 08:35:07', 1),
(93, '182.1.17.154', 'Sub Bagian Tata Usaha', 13, '2023-06-25 08:51:40', 0),
(94, '182.1.17.154', 'dedesantika1995@gmail.com', 14, '2023-06-25 08:52:08', 1),
(95, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 08:52:46', 1),
(96, '182.1.17.154', 'dedesantika1995@gmail.com', 14, '2023-06-25 10:37:45', 1),
(97, '182.1.17.154', 'tris95301@gmail.com', 9, '2023-06-25 10:40:48', 1),
(98, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 10:48:54', 1),
(99, '182.1.17.154', 'stri3112@gmail.com', 8, '2023-06-25 10:52:04', 1),
(100, '182.1.17.154', 'tri653140@gmail.com', 10, '2023-06-25 11:03:51', 1),
(101, '182.1.47.168', 'petugas', NULL, '2023-06-25 11:09:49', 0),
(102, '182.1.47.168', 'petugas', NULL, '2023-06-25 11:09:51', 0),
(103, '182.1.47.168', 'petugas', NULL, '2023-06-25 11:09:55', 0),
(104, '182.1.47.168', 'user', NULL, '2023-06-25 11:10:09', 0),
(105, '182.1.47.168', 'user@gmail.com', 2, '2023-06-25 11:10:35', 1),
(106, '112.215.245.83', 'admin@gmail.com', 1, '2023-06-25 11:11:25', 1),
(107, '182.1.17.154', 'sungaikantorcamat@gmail.com', 11, '2023-06-25 11:11:58', 1),
(108, '114.125.62.244', 'seksi peru\'', NULL, '2023-06-25 11:15:43', 0),
(109, '182.1.47.168', 'seksi  ekonomi dan pembangunan', NULL, '2023-06-25 11:18:32', 0),
(110, '182.1.47.168', 'tri653140@gmail.com', 10, '2023-06-25 11:19:39', 1),
(111, '182.1.17.154', 'lyssahayani43@gmail.com', 12, '2023-06-25 11:22:23', 1),
(112, '182.1.17.154', 'user@gmail.com', 2, '2023-06-25 11:29:15', 1),
(113, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 11:32:03', 1),
(114, '114.125.14.54', 'tris95301@gmail.com', 9, '2023-06-25 11:49:42', 1),
(115, '114.125.14.54', 'tris95301@gmail.com', 9, '2023-06-25 11:50:40', 1),
(116, '182.1.17.154', 'tris95301@gmail.com', 9, '2023-06-25 11:51:33', 1),
(117, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 11:55:37', 1),
(118, '182.1.17.154', 'dedesantika1995@gmail.com', 14, '2023-06-25 11:58:17', 1),
(119, '114.125.11.84', 'tri653140@gmail.com', 10, '2023-06-25 12:06:32', 1),
(120, '182.1.17.154', 'admin@gmail.com', 1, '2023-06-25 12:13:02', 1),
(121, '114.125.11.84', 'tris95301@gmail.com', 9, '2023-06-25 12:18:04', 1),
(122, '182.1.17.154', 'tris95301@gmail.com', 9, '2023-06-25 12:25:29', 1),
(123, '114.125.27.76', 'tris95301@gmail.com', 9, '2023-06-25 12:36:51', 1),
(124, '114.125.8.0', 'dedesantika1995@gmail.com', 14, '2023-06-25 12:57:59', 1),
(125, '114.125.57.40', 'dedesantika1995@gmail.com', 14, '2023-06-25 13:01:47', 1),
(126, '114.125.58.64', 'tris95301@gmail.com', 9, '2023-06-25 13:03:57', 1),
(127, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 15:21:20', 1),
(128, '203.153.20.41', 'subbagianTU', NULL, '2023-06-25 15:23:50', 0),
(129, '114.125.58.64', 'dedesantika1995@gmail.com', 14, '2023-06-25 15:24:38', 1),
(130, '203.153.20.41', 'subbagiantu', NULL, '2023-06-25 15:24:50', 0),
(131, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 15:25:42', 1),
(132, '114.125.58.64', 'tris95301@gmail.com', 9, '2023-06-25 15:33:40', 1),
(133, '114.125.58.64', 'dedesantika1995@gmail.com', 14, '2023-06-25 16:26:28', 1),
(134, '114.125.58.64', 'tris95301@gmail.com', 9, '2023-06-25 16:35:44', 1),
(135, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 16:39:37', 1),
(136, '203.153.20.41', 'SubSagianTU', NULL, '2023-06-25 16:41:45', 0),
(137, '203.153.20.41', 'SubBagianTu', NULL, '2023-06-25 16:41:56', 0),
(138, '203.153.20.41', 'SubBagianTu', NULL, '2023-06-25 16:42:05', 0),
(139, '203.153.20.41', 'SubBagianTU', NULL, '2023-06-25 16:42:19', 0),
(140, '203.153.20.41', 'dedesantika1995@gmail.com', 14, '2023-06-25 16:43:41', 1),
(141, '203.153.20.41', 'tris95301@gmail.com', 9, '2023-06-25 16:45:23', 1),
(142, '114.125.57.40', 'tris95301@gmail.com', 9, '2023-06-25 16:47:02', 1),
(143, '114.125.58.64', 'tris95301@gmail.com', 9, '2023-06-25 16:52:04', 1),
(144, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 16:55:34', 1),
(145, '114.125.58.64', 'dedesantika1995@gmail.com', 14, '2023-06-25 16:56:27', 1),
(146, '182.1.18.45', 'dedesantika1995@gmail.com', 14, '2023-06-25 16:57:46', 1),
(147, '182.1.18.45', 'admin@gmail.com', 1, '2023-06-25 17:00:56', 1),
(148, '203.153.20.41', 'dedesantika1995@gmail.com', 14, '2023-06-25 17:13:07', 1),
(149, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 19:09:12', 1),
(150, '112.215.245.83', 'admin@gmail.com', 1, '2023-06-25 19:47:11', 1),
(151, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-25 19:49:26', 1),
(152, '112.215.245.83', 'user@gmail.com', 2, '2023-06-25 19:52:53', 1),
(153, '112.215.245.83', 'admin@gmail.com', 1, '2023-06-25 19:54:50', 1),
(154, '182.1.34.236', 'admin@gmail.com', 1, '2023-06-25 20:26:13', 1),
(155, '182.1.34.236', 'tris95301@gmail.com', 9, '2023-06-25 20:32:36', 1),
(156, '182.1.34.236', 'admin@gmail.com', 1, '2023-06-25 21:02:53', 1),
(157, '182.1.34.236', 'tris95301@gmail.com', 9, '2023-06-25 21:07:12', 1),
(158, '203.153.20.0', 'admin', NULL, '2023-06-25 22:19:30', 0),
(159, '203.153.20.0', 'admin@gmail.com', 1, '2023-06-25 22:19:43', 1),
(160, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 10:04:20', 1),
(161, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 10:08:06', 1),
(162, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 10:27:09', 1),
(163, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 10:30:03', 1),
(164, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 10:35:27', 1),
(165, '103.209.187.29', 'tris95301@gmail.com', 9, '2023-06-26 10:36:55', 1),
(166, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 10:38:39', 1),
(167, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 10:43:02', 1),
(168, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 11:44:10', 1),
(169, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 12:10:17', 1),
(170, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 12:17:29', 1),
(171, '103.209.187.29', 'tri653140@gmail.com', 10, '2023-06-26 13:58:03', 1),
(172, '103.209.187.29', 'admin@gmail.com', 1, '2023-06-26 14:00:09', 1),
(173, '103.209.187.186', 'admin@gmail.com', 1, '2023-06-26 14:09:05', 1),
(174, '114.125.46.35', 'admin@gmail.com', 1, '2023-06-26 14:53:17', 1),
(175, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-26 18:12:23', 1),
(176, '114.125.8.217', 'admin@gmail.com', 1, '2023-06-26 20:24:57', 1),
(177, '114.125.8.217', 'admin@gmail.com', 1, '2023-06-26 21:17:28', 1),
(178, '182.1.21.24', 'admin@gmail.com', 1, '2023-06-26 21:17:43', 1),
(179, '114.125.31.112', 'admin@gmail.com', 1, '2023-06-26 21:18:04', 1),
(180, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-26 21:38:32', 1),
(181, '114.125.31.112', 'Seksi Pemberdayaan Pemerintan', NULL, '2023-06-26 21:59:20', 0),
(182, '114.125.31.112', 'Seksi Pemberdayaan Pemerintahan', NULL, '2023-06-26 21:59:48', 0),
(183, '114.125.31.112', 'stri3112@gmail.com', 8, '2023-06-26 22:00:35', 1),
(184, '114.125.31.112', 'admin@gmail.com', 1, '2023-06-26 22:02:58', 1),
(185, '112.215.200.82', 'admin@gmail.com', 1, '2023-06-26 22:08:37', 1),
(186, '112.215.200.82', 'user@gmail.com', 2, '2023-06-26 22:11:08', 1),
(187, '112.215.200.82', 'admin@gmail.com', 1, '2023-06-26 22:13:57', 1),
(188, '114.125.31.112', 'stri3112@gmail.com', 8, '2023-06-26 22:14:43', 1),
(189, '114.125.31.112', 'tris95301@gmail.com', 9, '2023-06-26 22:18:42', 1),
(190, '114.125.31.112', 'admin@gmail.com', 1, '2023-06-26 22:22:22', 1),
(191, '112.215.200.82', 'admin@gmail.com', 1, '2023-06-26 22:44:45', 1),
(192, '112.215.200.82', 'user@gmail.com', 2, '2023-06-26 22:55:01', 1),
(193, '112.215.200.82', 'admin@gmail.com', 1, '2023-06-26 22:57:43', 1),
(194, '112.215.200.82', 'user@gmail.com', 2, '2023-06-26 22:58:45', 1),
(195, '112.215.200.82', 'admin@gmail.com', 1, '2023-06-26 23:01:58', 1),
(196, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-27 05:58:31', 1),
(197, '203.153.20.41', 'tris95301@gmail.com', 9, '2023-06-27 05:59:00', 1),
(198, '203.153.20.41', 'Sub Bagian TU', NULL, '2023-06-27 06:00:19', 0),
(199, '203.153.20.41', 'tris95301@gmail.com', 9, '2023-06-27 06:00:36', 1),
(200, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-27 06:00:38', 1),
(201, '203.153.20.41', 'tris95301@gmail.com', 9, '2023-06-27 06:01:04', 1),
(202, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-27 06:01:48', 1),
(203, '203.153.20.41', 'tris95301@gmail.com', 9, '2023-06-27 06:03:55', 1),
(204, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-27 06:09:14', 1),
(205, '103.209.185.254', 'admin@gmail.com', 1, '2023-06-27 08:55:11', 1),
(206, '103.209.185.254', 'admin@gmail.com', 1, '2023-06-27 10:32:20', 1),
(207, '103.209.185.254', 'tris95301@gmail.com', 9, '2023-06-27 10:45:50', 1),
(208, '103.209.185.254', 'tris95301@gmail.com', 9, '2023-06-27 10:53:16', 1),
(209, '103.209.185.254', 'admin@gmail.com', 1, '2023-06-27 11:12:00', 1),
(210, '103.209.185.254', 'tris95301@gmail.com', 9, '2023-06-27 11:13:21', 1),
(211, '103.209.187.186', 'tris95301@gmail.com', 9, '2023-06-27 14:26:27', 1),
(212, '103.209.187.30', 'tris95301@gmail.com', 9, '2023-06-27 14:47:34', 1),
(213, '182.1.62.9', 'tris95301@gmail.com', 9, '2023-06-27 20:07:51', 1),
(214, '182.1.62.9', 'admin@gmail.com', 1, '2023-06-27 20:44:09', 1),
(215, '114.125.24.36', 'stri3112@gmail.com', 8, '2023-06-28 16:28:28', 1),
(216, '114.125.24.36', 'admin@gmail.com', 1, '2023-06-28 16:51:52', 1),
(217, '114.125.24.36', 'sungaikantorcamat@gmail.com', 11, '2023-06-28 16:53:29', 1),
(218, '114.125.24.36', 'admin@gmail.com', 1, '2023-06-28 17:17:37', 1),
(219, '114.125.24.36', 'user@gmail.com', 2, '2023-06-28 17:19:08', 1),
(220, '114.125.24.36', 'user@gmail.com', 2, '2023-06-28 17:20:12', 1),
(221, '114.125.24.36', 'admin@gmail.com', 1, '2023-06-28 17:43:08', 1),
(222, '182.2.4.29', 'tris95301@gmail.com', 9, '2023-06-29 16:33:08', 1),
(223, '182.2.4.29', 'admin@gmail.com', 1, '2023-06-29 16:46:53', 1),
(224, '182.2.4.29', 'dedesantika1995@gmail.com', 14, '2023-06-29 16:48:57', 1),
(225, '182.2.4.29', 'admin@gmail.com', 1, '2023-06-29 17:10:12', 1),
(226, '182.2.4.29', 'dedesantika1995@gmail.com', 14, '2023-06-29 17:15:13', 1),
(227, '182.2.4.29', 'admin@gmail.com', 1, '2023-06-29 17:23:42', 1),
(228, '203.153.20.41', 'admin@gmail.com', 1, '2023-06-29 19:22:16', 1),
(229, '103.166.122.98', 'admin@gmail.com', 1, '2023-06-30 07:43:20', 1),
(230, '36.69.126.54', 'admin@gmail.com', 1, '2023-07-01 09:19:49', 1),
(231, '36.69.126.54', 'dedesantika1995@gmail.com', 14, '2023-07-01 09:33:50', 1),
(232, '36.69.126.54', 'admin@gmail.com', 1, '2023-07-01 09:47:31', 1),
(233, '36.69.126.54', 'dedesantika1995@gmail.com', 14, '2023-07-01 09:54:54', 1),
(234, '36.69.126.54', 'admin@gmail.com', 1, '2023-07-01 09:58:18', 1),
(235, '103.209.187.186', 'Kasi Pemerintahan', NULL, '2023-07-04 08:44:45', 0),
(236, '103.209.187.30', 'user@gmail.com', 2, '2023-07-04 08:45:37', 1),
(237, '103.209.187.186', 'admin@gmail.com', 1, '2023-07-04 08:53:59', 1),
(238, '103.209.187.30', 'user@gmail.com', 2, '2023-07-05 13:48:06', 1),
(239, '103.209.187.186', 'admin@gmail.com', 1, '2023-07-05 13:50:34', 1),
(240, '103.209.187.186', 'user@gmail.com', 2, '2023-07-05 13:51:43', 1),
(241, '103.209.187.186', 'tri653140@gmail.com', 10, '2023-07-05 13:57:01', 1),
(242, '103.209.187.186', 'user@gmail.com', 2, '2023-07-06 10:00:28', 1),
(243, '103.209.187.30', 'user@gmail.com', 2, '2023-07-06 10:09:09', 1),
(244, '103.209.187.186', 'user@gmail.com', 2, '2023-07-06 11:11:30', 1),
(245, '103.209.187.30', 'admin@gmail.com', 1, '2023-07-06 11:14:55', 1),
(246, '103.209.187.30', 'tri653140@gmail.com', 10, '2023-07-06 11:15:39', 1),
(247, '103.209.187.30', 'tri653140@gmail.com', 10, '2023-07-06 14:07:17', 1),
(248, '103.209.187.30', 'user@gmail.com', 2, '2023-07-06 14:09:59', 1),
(249, '103.209.187.30', 'admin@gmail.com', 1, '2023-07-06 14:13:40', 1),
(250, '140.213.148.10', 'admin@gmail.com', 1, '2023-07-07 13:33:42', 1),
(251, '103.209.187.30', 'tris95301@gmail.com', 9, '2023-07-07 14:05:55', 1),
(252, '103.209.187.186', 'tris95301@gmail.com', 9, '2023-07-07 14:10:24', 1),
(253, '103.209.187.186', 'tris95301@gmail.com', 9, '2023-07-07 14:37:32', 1),
(254, '103.209.187.186', 'admin@gmail.com', 1, '2023-07-07 14:42:41', 1),
(255, '203.153.20.3', 'admin', NULL, '2023-07-07 16:03:48', 0),
(256, '203.153.20.3', 'admin', NULL, '2023-07-07 16:03:49', 0),
(257, '203.153.20.3', 'admin', NULL, '2023-07-07 16:04:00', 0),
(258, '203.153.20.43', 'admin@gmail.com', 1, '2023-07-11 12:36:25', 1),
(259, '203.153.20.43', 'admin@gmail.com', 1, '2023-07-11 13:03:27', 1),
(260, '182.1.0.168', 'admin@gmail.com', 1, '2023-07-11 14:24:44', 1),
(261, '182.1.0.168', 'dedesantika1995@gmail.com', 14, '2023-07-11 15:29:58', 1),
(262, '182.1.0.168', 'admin@gmail.com', 1, '2023-07-11 15:30:55', 1),
(263, '182.1.17.164', 'admin@gmail.com', 1, '2023-07-12 09:44:05', 1),
(264, '182.1.17.164', 'dedesantika1995@gmail.com', 14, '2023-07-12 09:45:48', 1),
(265, '182.1.17.164', 'tris95301@gmail.com', 9, '2023-07-12 09:55:54', 1),
(266, '182.1.17.164', 'admin@gmail.com', 1, '2023-07-12 10:04:36', 1),
(267, '103.209.187.30', 'admin@gmail.com', 1, '2023-07-12 10:13:54', 1),
(268, '::1', 'admin@gmail.com', 1, '2023-07-23 23:37:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `count_surat`
--

CREATE TABLE `count_surat` (
  `id_count` int(11) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `count_surat`
--

INSERT INTO `count_surat` (`id_count`, `jenis`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'surat masuk', '2023-06-18 20:47:25', '2023-06-18 20:47:25', NULL),
(2, 'surat masuk', '2023-06-18 21:22:41', '2023-06-18 21:22:41', NULL),
(3, 'surat masuk', '2023-06-18 21:22:43', '2023-06-18 21:22:43', NULL),
(4, 'surat masuk', '2023-06-18 21:24:18', '2023-06-18 21:24:18', NULL),
(5, 'surat masuk', '2023-06-18 21:24:34', '2023-06-18 21:24:34', NULL),
(6, 'surat masuk', '2023-06-18 21:25:03', '2023-06-18 21:25:03', NULL),
(7, 'surat masuk', '2023-06-18 21:30:10', '2023-06-18 21:30:10', NULL),
(8, 'surat masuk', '2023-06-19 11:32:58', '2023-06-19 11:32:58', NULL),
(9, 'surat masuk', '2023-06-19 12:00:30', '2023-06-19 12:00:30', NULL),
(10, 'surat masuk', '2023-06-20 19:09:32', '2023-06-20 19:09:32', NULL),
(11, 'surat masuk', '2023-06-20 19:15:11', '2023-06-20 19:15:11', NULL),
(12, 'surat masuk', '2023-06-23 11:46:07', '2023-06-23 11:46:07', NULL),
(13, 'surat masuk', '2023-06-23 11:57:27', '2023-06-23 11:57:27', NULL),
(14, 'surat masuk', '2023-06-23 12:16:47', '2023-06-23 12:16:47', NULL),
(15, 'surat masuk', '2023-06-24 16:17:50', '2023-06-24 16:17:50', NULL),
(16, 'surat masuk', '2023-06-24 16:24:47', '2023-06-24 16:24:47', NULL),
(17, 'surat masuk', '2023-06-24 16:32:08', '2023-06-24 16:32:08', NULL),
(18, 'surat masuk', '2023-06-24 16:35:34', '2023-06-24 16:35:34', NULL),
(19, 'surat masuk', '2023-06-24 16:41:19', '2023-06-24 16:41:19', NULL),
(20, 'surat masuk', '2023-06-24 16:44:44', '2023-06-24 16:44:44', NULL),
(21, 'surat masuk', '2023-06-24 16:49:36', '2023-06-24 16:49:36', NULL),
(22, 'surat masuk', '2023-06-24 16:54:16', '2023-06-24 16:54:16', NULL),
(23, 'surat masuk', '2023-06-24 17:02:36', '2023-06-24 17:02:36', NULL),
(24, 'surat masuk', '2023-06-24 17:08:49', '2023-06-24 17:08:49', NULL),
(25, 'surat masuk', '2023-06-25 08:48:20', '2023-06-25 08:48:20', NULL),
(26, 'surat masuk', '2023-06-25 08:59:28', '2023-06-25 08:59:28', NULL),
(27, 'surat masuk', '2023-06-25 09:04:24', '2023-06-25 09:04:24', NULL),
(28, 'surat masuk', '2023-06-25 09:08:24', '2023-06-25 09:08:24', NULL),
(29, 'surat masuk', '2023-06-25 09:12:04', '2023-06-25 09:12:04', NULL),
(30, 'surat masuk', '2023-06-25 09:14:35', '2023-06-25 09:14:35', NULL),
(31, 'surat masuk', '2023-06-25 09:17:32', '2023-06-25 09:17:32', NULL),
(32, 'surat masuk', '2023-06-25 09:25:07', '2023-06-25 09:25:07', NULL),
(33, 'surat masuk', '2023-06-25 09:30:53', '2023-06-25 09:30:53', NULL),
(34, 'surat masuk', '2023-06-25 09:38:23', '2023-06-25 09:38:23', NULL),
(35, 'surat masuk', '2023-06-25 09:43:42', '2023-06-25 09:43:42', NULL),
(36, 'surat masuk', '2023-06-25 09:43:42', '2023-06-25 09:43:42', NULL),
(37, 'surat masuk', '2023-06-25 09:47:14', '2023-06-25 09:47:14', NULL),
(38, 'surat masuk', '2023-06-25 09:53:11', '2023-06-25 09:53:11', NULL),
(39, 'surat masuk', '2023-06-25 09:58:19', '2023-06-25 09:58:19', NULL),
(40, 'surat masuk', '2023-06-25 10:01:22', '2023-06-25 10:01:22', NULL),
(41, 'surat masuk', '2023-06-25 10:08:00', '2023-06-25 10:08:00', NULL),
(42, 'surat masuk', '2023-06-25 10:11:23', '2023-06-25 10:11:23', NULL),
(43, 'surat masuk', '2023-06-25 10:16:22', '2023-06-25 10:16:22', NULL),
(44, 'surat masuk', '2023-06-25 10:23:13', '2023-06-25 10:23:13', NULL),
(45, 'surat masuk', '2023-06-25 10:26:33', '2023-06-25 10:26:33', NULL),
(46, 'surat masuk', '2023-06-25 10:48:24', '2023-06-25 10:48:24', NULL),
(47, 'surat masuk', '2023-06-25 11:54:36', '2023-06-25 11:54:36', NULL),
(48, 'surat masuk', '2023-06-25 12:41:14', '2023-06-25 12:41:14', NULL),
(49, 'surat masuk', '2023-06-25 12:41:20', '2023-06-25 12:41:20', NULL),
(50, 'surat masuk', '2023-06-25 12:41:46', '2023-06-25 12:41:46', NULL),
(51, 'surat masuk', '2023-06-25 15:43:37', '2023-06-25 15:43:37', NULL),
(52, 'surat masuk', '2023-06-25 15:43:56', '2023-06-25 15:43:56', NULL),
(53, 'surat masuk', '2023-06-25 15:44:48', '2023-06-25 15:44:48', NULL),
(54, 'surat masuk', '2023-06-25 15:51:34', '2023-06-25 15:51:34', NULL),
(55, 'surat masuk', '2023-06-25 15:52:09', '2023-06-25 15:52:09', NULL),
(56, 'surat masuk', '2023-06-25 16:32:28', '2023-06-25 16:32:28', NULL),
(57, 'surat masuk', '2023-06-25 16:33:19', '2023-06-25 16:33:19', NULL),
(58, 'surat masuk', '2023-06-25 16:49:05', '2023-06-25 16:49:05', NULL),
(59, 'surat masuk', '2023-06-25 16:49:38', '2023-06-25 16:49:38', NULL),
(60, 'surat masuk', '2023-06-25 16:56:39', '2023-06-25 16:56:39', NULL),
(61, 'surat masuk', '2023-06-25 17:58:40', '2023-06-25 17:58:40', NULL),
(62, 'surat masuk', '2023-06-25 19:54:15', '2023-06-25 19:54:15', NULL),
(63, 'surat masuk', '2023-06-26 10:11:49', '2023-06-26 10:11:49', NULL),
(64, 'surat masuk', '2023-06-26 10:16:00', '2023-06-26 10:16:00', NULL),
(65, 'surat masuk', '2023-06-26 10:23:04', '2023-06-26 10:23:04', NULL),
(66, 'surat masuk', '2023-06-26 10:40:39', '2023-06-26 10:40:39', NULL),
(67, 'surat masuk', '2023-06-26 10:45:16', '2023-06-26 10:45:16', NULL),
(68, 'surat masuk', '2023-06-26 11:53:50', '2023-06-26 11:53:50', NULL),
(69, 'surat masuk', '2023-06-26 11:59:10', '2023-06-26 11:59:10', NULL),
(70, 'surat masuk', '2023-06-26 12:04:04', '2023-06-26 12:04:04', NULL),
(71, 'surat masuk', '2023-06-26 13:50:48', '2023-06-26 13:50:48', NULL),
(72, 'surat masuk', '2023-06-26 13:55:45', '2023-06-26 13:55:45', NULL),
(73, 'surat masuk', '2023-06-26 14:05:54', '2023-06-26 14:05:54', NULL),
(74, 'surat masuk', '2023-06-26 14:59:16', '2023-06-26 14:59:16', NULL),
(75, 'surat masuk', '2023-06-26 15:05:28', '2023-06-26 15:05:28', NULL),
(76, 'surat masuk', '2023-06-26 15:12:45', '2023-06-26 15:12:45', NULL),
(77, 'surat masuk', '2023-06-26 15:17:30', '2023-06-26 15:17:30', NULL),
(78, 'surat masuk', '2023-06-26 15:21:55', '2023-06-26 15:21:55', NULL),
(79, 'surat masuk', '2023-06-26 15:27:29', '2023-06-26 15:27:29', NULL),
(80, 'surat masuk', '2023-06-26 15:37:44', '2023-06-26 15:37:44', NULL),
(81, 'surat masuk', '2023-06-26 20:32:02', '2023-06-26 20:32:02', NULL),
(82, 'surat masuk', '2023-06-26 20:38:40', '2023-06-26 20:38:40', NULL),
(83, 'surat masuk', '2023-06-26 20:43:36', '2023-06-26 20:43:36', NULL),
(84, 'surat masuk', '2023-06-26 20:48:48', '2023-06-26 20:48:48', NULL),
(85, 'surat masuk', '2023-06-26 20:52:50', '2023-06-26 20:52:50', NULL),
(86, 'surat masuk', '2023-06-26 21:12:06', '2023-06-26 21:12:06', NULL),
(87, 'surat masuk', '2023-06-26 21:28:50', '2023-06-26 21:28:50', NULL),
(88, 'surat masuk', '2023-06-26 21:32:42', '2023-06-26 21:32:42', NULL),
(89, 'surat masuk', '2023-06-26 21:37:00', '2023-06-26 21:37:00', NULL),
(90, 'surat masuk', '2023-06-26 21:40:59', '2023-06-26 21:40:59', NULL),
(91, 'surat masuk', '2023-06-26 21:44:15', '2023-06-26 21:44:15', NULL),
(92, 'surat masuk', '2023-06-26 21:49:03', '2023-06-26 21:49:03', NULL),
(93, 'surat masuk', '2023-06-26 21:55:33', '2023-06-26 21:55:33', NULL),
(94, 'surat masuk', '2023-06-26 22:06:10', '2023-06-26 22:06:10', NULL),
(95, 'surat masuk', '2023-06-26 22:10:01', '2023-06-26 22:10:01', NULL),
(96, 'surat masuk', '2023-06-26 22:10:24', '2023-06-26 22:10:24', NULL),
(97, 'surat keluar', '2023-06-26 22:13:18', '2023-06-26 22:13:18', NULL),
(98, 'surat keluar', '2023-06-26 22:22:01', '2023-06-26 22:22:01', NULL),
(99, 'surat masuk', '2023-06-27 06:05:14', '2023-06-27 06:05:14', NULL),
(100, 'surat masuk', '2023-06-27 06:06:16', '2023-06-27 06:06:16', NULL),
(101, 'surat masuk', '2023-06-27 06:10:11', '2023-06-27 06:10:11', NULL),
(102, 'surat keluar', '2023-06-27 06:15:01', '2023-06-27 06:15:01', NULL),
(103, 'surat keluar', '2023-06-27 06:15:06', '2023-06-27 06:15:06', NULL),
(104, 'surat keluar', '2023-06-27 06:15:17', '2023-06-27 06:15:17', NULL),
(105, 'surat keluar', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(106, 'surat keluar', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(107, 'surat keluar', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(108, 'surat keluar', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(109, 'surat keluar', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(110, 'surat keluar', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(111, 'surat keluar', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(112, 'surat keluar', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(113, 'surat keluar', '2023-06-27 06:15:35', '2023-06-27 06:15:35', NULL),
(114, 'surat keluar', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(115, 'surat keluar', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(116, 'surat keluar', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(117, 'surat keluar', '2023-06-27 06:16:20', '2023-06-27 06:16:20', NULL),
(118, 'surat keluar', '2023-06-27 06:16:55', '2023-06-27 06:16:55', NULL),
(119, 'surat masuk', '2023-06-27 10:39:25', '2023-06-27 10:39:25', NULL),
(120, 'surat keluar', '2023-06-27 11:17:12', '2023-06-27 11:17:12', NULL),
(121, 'surat keluar', '2023-06-27 11:24:05', '2023-06-27 11:24:05', NULL),
(122, 'surat keluar', '2023-06-27 11:36:10', '2023-06-27 11:36:10', NULL),
(123, 'surat keluar', '2023-06-27 14:29:27', '2023-06-27 14:29:27', NULL),
(124, 'surat keluar', '2023-06-27 14:37:13', '2023-06-27 14:37:13', NULL),
(125, 'surat keluar', '2023-06-27 14:42:37', '2023-06-27 14:42:37', NULL),
(126, 'surat keluar', '2023-06-27 20:12:50', '2023-06-27 20:12:50', NULL),
(127, 'surat keluar', '2023-06-27 20:17:56', '2023-06-27 20:17:56', NULL),
(128, 'surat keluar', '2023-06-27 20:23:05', '2023-06-27 20:23:05', NULL),
(129, 'surat keluar', '2023-06-27 20:27:21', '2023-06-27 20:27:21', NULL),
(130, 'surat keluar', '2023-06-27 20:31:32', '2023-06-27 20:31:32', NULL),
(131, 'surat keluar', '2023-06-27 20:36:03', '2023-06-27 20:36:03', NULL),
(132, 'surat keluar', '2023-06-27 20:39:17', '2023-06-27 20:39:17', NULL),
(133, 'surat keluar', '2023-06-27 20:42:40', '2023-06-27 20:42:40', NULL),
(134, 'surat keluar', '2023-06-28 16:33:00', '2023-06-28 16:33:00', NULL),
(135, 'surat keluar', '2023-06-28 16:35:49', '2023-06-28 16:35:49', NULL),
(136, 'surat keluar', '2023-06-28 16:37:21', '2023-06-28 16:37:21', NULL),
(137, 'surat keluar', '2023-06-28 16:39:52', '2023-06-28 16:39:52', NULL),
(138, 'surat keluar', '2023-06-28 16:42:06', '2023-06-28 16:42:06', NULL),
(139, 'surat keluar', '2023-06-28 16:44:30', '2023-06-28 16:44:30', NULL),
(140, 'surat keluar', '2023-06-28 16:46:32', '2023-06-28 16:46:32', NULL),
(141, 'surat keluar', '2023-06-28 16:49:02', '2023-06-28 16:49:02', NULL),
(142, 'surat keluar', '2023-06-28 16:50:47', '2023-06-28 16:50:47', NULL),
(143, 'surat keluar', '2023-06-28 16:57:41', '2023-06-28 16:57:41', NULL),
(144, 'surat keluar', '2023-06-28 17:03:12', '2023-06-28 17:03:12', NULL),
(145, 'surat keluar', '2023-06-28 17:13:36', '2023-06-28 17:13:36', NULL),
(146, 'surat keluar', '2023-06-28 17:15:03', '2023-06-28 17:15:03', NULL),
(147, 'surat keluar', '2023-06-28 17:17:09', '2023-06-28 17:17:09', NULL),
(148, 'surat keluar', '2023-06-28 17:22:51', '2023-06-28 17:22:51', NULL),
(149, 'surat keluar', '2023-06-28 17:25:23', '2023-06-28 17:25:23', NULL),
(150, 'surat keluar', '2023-06-28 17:28:12', '2023-06-28 17:28:12', NULL),
(151, 'surat keluar', '2023-06-28 17:31:42', '2023-06-28 17:31:42', NULL),
(152, 'surat keluar', '2023-06-28 17:34:38', '2023-06-28 17:34:38', NULL),
(153, 'surat keluar', '2023-06-28 17:37:00', '2023-06-28 17:37:00', NULL),
(154, 'surat keluar', '2023-06-28 17:39:13', '2023-06-28 17:39:13', NULL),
(155, 'surat keluar', '2023-06-29 16:38:13', '2023-06-29 16:38:13', NULL),
(156, 'surat keluar', '2023-06-29 16:41:00', '2023-06-29 16:41:00', NULL),
(157, 'surat keluar', '2023-06-29 16:43:36', '2023-06-29 16:43:36', NULL),
(158, 'surat keluar', '2023-06-29 16:46:14', '2023-06-29 16:46:14', NULL),
(159, 'surat keluar', '2023-06-29 16:54:44', '2023-06-29 16:54:44', NULL),
(160, 'surat keluar', '2023-06-29 17:00:32', '2023-06-29 17:00:32', NULL),
(161, 'surat keluar', '2023-06-29 17:04:00', '2023-06-29 17:04:00', NULL),
(162, 'surat keluar', '2023-06-29 17:06:43', '2023-06-29 17:06:43', NULL),
(163, 'surat keluar', '2023-06-29 17:09:16', '2023-06-29 17:09:16', NULL),
(164, 'surat keluar', '2023-06-29 17:17:14', '2023-06-29 17:17:14', NULL),
(165, 'surat keluar', '2023-06-29 17:21:47', '2023-06-29 17:21:47', NULL),
(166, 'surat masuk', '2023-07-01 09:32:33', '2023-07-01 09:32:33', NULL),
(167, 'surat keluar', '2023-07-01 09:57:46', '2023-07-01 09:57:46', NULL),
(168, 'surat keluar', '2023-07-06 10:04:09', '2023-07-06 10:04:09', NULL),
(169, 'surat keluar', '2023-07-06 10:11:39', '2023-07-06 10:11:39', NULL),
(170, 'surat keluar', '2023-07-06 11:17:25', '2023-07-06 11:17:25', NULL),
(171, 'surat keluar', '2023-07-06 14:09:31', '2023-07-06 14:09:31', NULL),
(172, 'surat keluar', '2023-07-06 14:11:25', '2023-07-06 14:11:25', NULL),
(173, 'surat keluar', '2023-07-07 14:07:32', '2023-07-07 14:07:32', NULL),
(174, 'surat keluar', '2023-07-07 14:41:14', '2023-07-07 14:41:14', NULL),
(175, 'surat masuk', '2023-07-11 15:29:11', '2023-07-11 15:29:11', NULL),
(176, 'surat keluar', '2023-07-12 09:58:59', '2023-07-12 09:58:59', NULL),
(177, 'surat keluar', '2023-07-12 10:02:14', '2023-07-12 10:02:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) UNSIGNED NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `jabatan_pengirim` varchar(255) NOT NULL,
  `jabatan_penerima` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `nomor_surat`, `jabatan_pengirim`, `jabatan_penerima`, `pengirim`, `penerima`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, '470/050/DISDUKCAPIL/PDIP/', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 08:59:28', '2023-06-25 08:59:28', NULL),
(27, '048/640/DISKOMINFOTIKSAN', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:04:24', '2023-06-25 09:04:24', NULL),
(28, 'R/11/I/KA/PM.00.02/2023/BNNK', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:08:24', '2023-06-25 09:08:24', NULL),
(29, '019/700/SATPOLPP', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:12:04', '2023-06-25 09:12:04', NULL),
(30, '019/699/SATPOLPP', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:14:35', '2023-06-25 09:14:35', NULL),
(31, '045/059/DISPERSIP', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:17:32', '2023-06-25 09:17:32', NULL),
(32, '100/208/TAPEM', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:25:07', '2023-06-25 09:25:07', NULL),
(33, '365/Un.04/L.I/PP.06/03/2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:30:53', '2023-06-25 09:30:53', NULL),
(34, '045.4/734/DISPERSIP', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:38:23', '2023-06-25 09:38:23', NULL),
(35, '280/PII/GM/IV-2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:43:42', '2023-06-25 09:43:42', NULL),
(36, '280/PII/GM/IV-2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:43:42', '2023-06-25 09:43:42', NULL),
(37, '557/840/DISKOMINFOTIKSAN', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:47:14', '2023-06-25 09:47:14', NULL),
(38, '000/202/DISKOMINFOTIKSAN-APK', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:53:11', '2023-06-25 09:53:11', NULL),
(39, '800/821/BKPSDM', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 09:58:19', '2023-06-25 09:58:19', NULL),
(40, '626/SPT/2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:01:22', '2023-06-25 10:01:22', NULL),
(41, 'W4.U6/2163/HK.02/V/2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:08:00', '2023-06-25 10:08:00', NULL),
(42, '64/SET-LG/2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:11:23', '2023-06-25 10:11:23', NULL),
(43, '070/260/BAPPEDALITBANG-LITBANG', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:16:22', '2023-06-25 10:16:22', NULL),
(44, '070/264/BAPPEDALITBANG-LITBANG', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:23:13', '2023-06-25 10:23:13', NULL),
(45, '01.001/DPK-KNPI/MCM/VI/2023', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-06-25 10:26:33', '2023-06-25 10:26:33', NULL),
(63, '300/25/LG-TRANTIB', 'Kasubag Tata Usaha', 'Kasi Kessos', 'Eva Susanti ', 'Fauzan Gusman AM.S.TP', '2023-06-26 10:11:49', '2023-06-26 10:11:49', NULL),
(64, '524.3/01.04/DKPP-F.1/II.23', 'Kasubag Tata Usaha', 'Kasi Kessos', 'Eva Susanti ', 'Fauzan Gusman AM.S.TP', '2023-06-26 10:16:00', '2023-06-26 10:16:00', NULL),
(65, '37/01.03.04/UTD-PMI/V/2023', 'Kasubag Tata Usaha', 'Kasi Kessos', 'Eva Susanti ', 'Fauzan Gusman AM.S.TP', '2023-06-26 10:23:04', '2023-06-26 10:23:04', NULL),
(66, '03/PWA-BB/2023', 'Kasubag Tata Usaha', 'Kasi Kessos', 'Eva Susanti ', 'Fauzan Gusman AM.S.TP', '2023-06-26 10:40:39', '2023-06-26 10:40:39', NULL),
(67, '400/LG-PM&KESSOS/50', 'Kasubag Tata Usaha', 'Kasi Kessos', 'Eva Susanti ', 'Fauzan Gusman AM.S.TP', '2023-06-26 10:45:16', '2023-06-26 10:45:16', NULL),
(68, '005/481/DISPERKIMTAN', 'Kasubag Tata Usaha', 'Kasi Ekbang', 'Eva Susanti ', 'Muhammad Dino Lubis, S.Sos', '2023-06-26 11:53:50', '2023-06-26 11:53:50', NULL),
(69, '31/PM-KESSOS-SG/2023', 'Kasubag Tata Usaha', 'Kasi Ekbang', 'Eva Susanti ', 'Muhammad Dino Lubis, S.Sos', '2023-06-26 11:59:10', '2023-06-26 11:59:10', NULL),
(70, '000/136/DPUPR-TR', 'Kasubag Tata Usaha', 'Kasi Ekbang', 'Eva Susanti ', 'Muhammad Dino Lubis, S.Sos', '2023-06-26 12:04:04', '2023-06-26 12:04:04', NULL),
(71, '021/KJTKBM-TPPMD/V/2023', 'Kasubag Tata Usaha', 'Kasi Ekbang', 'Eva Susanti ', 'Muhammad Dino Lubis, S.Sos', '2023-06-26 13:50:48', '2023-06-26 13:50:48', NULL),
(73, '671/86/PMKESSOS-TJP/2023', 'Kasubag Tata Usaha', 'Kasi Ekbang', 'Eva Susanti ', 'Muhammad Dino Lubis, S.Sos', '2023-06-26 14:05:54', '2023-06-26 14:05:54', NULL),
(74, 'W.4-UM.01.01-0359', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 14:59:16', '2023-06-26 14:59:16', NULL),
(75, '000/855/DISDUKCAPIL', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:05:28', '2023-06-26 15:05:28', NULL),
(76, '800/873/BKPSDM', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:12:45', '2023-06-26 15:12:45', NULL),
(77, '402/150/DINSOSPM-PM', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:17:30', '2023-06-26 15:17:30', NULL),
(78, '521.1/05.01/DKPP.C.V.2023', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:21:55', '2023-06-26 15:21:55', NULL),
(79, '750/423.1/PEREKO', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:27:29', '2023-06-26 15:27:29', NULL),
(80, '70/56/2023', 'Kasubag Tata Usaha', 'Kasi Pem', 'Eva Susanti ', 'Ismail, S.Sos', '2023-06-26 15:37:44', '2023-06-26 15:37:44', NULL),
(81, '441/409/2023', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 20:32:02', '2023-06-26 20:32:02', NULL),
(82, '048/061/DISDUKCAPIL/SEKR/', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 20:38:40', '2023-06-26 20:38:40', NULL),
(83, '524/14.13/DKPP-E.1/V.2023', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 20:43:36', '2023-06-26 20:43:36', NULL),
(84, '005/61/KESBANGPOL', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 20:48:48', '2023-06-26 20:48:48', NULL),
(85, '005.108/DISPERKIMTAN-KP', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 20:52:50', '2023-06-26 20:52:50', NULL),
(86, '005.108/DISPERKIMTAN-KP', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-26 21:12:06', '2023-06-26 21:12:06', NULL),
(87, '526.22/77/DKPP-B.2/I.2023', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:28:50', '2023-06-26 21:28:50', NULL),
(88, '048/110/SATPOLPP-SDA', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:32:42', '2023-06-26 21:32:42', NULL),
(89, '01/B/P.GR/FPM/LG/I/2023', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:37:00', '2023-06-26 21:37:00', NULL),
(90, '300/TRANTIB-BSA/I/2023/08', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:40:59', '2023-06-26 21:40:59', NULL),
(91, '524/TRANTIB-BB/11', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:44:15', '2023-06-26 21:44:15', NULL),
(92, '360/044/BPBD', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:49:03', '2023-06-26 21:49:03', NULL),
(93, '2552/DISHUB/551.1', 'Kasubag Tata Usaha', 'Kasi Trantib', 'Eva Susanti ', 'Ahmad Maulana, S.Sy', '2023-06-26 21:55:33', '2023-06-26 21:55:33', NULL),
(100, '005.108/DISPERKIMTAN-KP', 'Kasubag Tata Usaha', 'Kasi PM', 'Eva Susanti ', 'W.Imelda S.Sos', '2023-06-27 10:39:25', '2023-06-27 10:39:25', NULL),
(101, '948/KPT/I/2019', 'Kasubag Tata Usaha', 'Sub Bagian TU', 'Eva Susanti ', 'Staf Kecamatan Sungai Sembiilan', '2023-07-01 09:32:33', '2023-07-01 09:32:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `document`
--

CREATE TABLE `document` (
  `id_document` int(11) UNSIGNED NOT NULL,
  `id_surat` int(11) UNSIGNED NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `tanggal_surat` varchar(255) NOT NULL,
  `name_document` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `archive` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `document`
--

INSERT INTO `document` (`id_document`, `id_surat`, `nomor_surat`, `perihal`, `asal_surat`, `jenis_surat`, `tanggal_surat`, `name_document`, `penerima`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2747373', 'Undangan ', 'Walikota ', 'surat masuk', '2023-06-18', 'Paper1_LyssaHayani_2193005.pdf', '5', '', '2023-06-18 20:47:33', '2023-06-18 20:47:33', NULL),
(2, 2, '124542', 'Djdjjc', 'Skdjdjf', 'surat masuk', '2023-06-18', 'TgsEtikaProfesi_LyssaHayani.pdf', '2', '', '2023-06-18 21:25:03', '2023-06-18 21:25:03', NULL),
(3, 7, 'Gdc', 'Vfhh', 'Vfcb', 'surat masuk', '2023-06-20', 'uu28-2014bt (1).pdf', '1', '', '2023-06-18 21:30:12', '2023-06-18 21:30:12', NULL),
(4, 8, '000/931/SETDA-UM', 'Peringatan Hari Anti Narkotika Internasional 2023', 'Sekretariat Daerah', 'surat masuk', '2023-12-06', 'UAS_ManajemenPerubahan.pdf', '4', '', '2023-06-19 11:32:59', '2023-06-19 11:32:59', NULL),
(5, 9, '000/931/SETDA-UM', 'Peringatan hari anti narkotika internasional 2023', 'Sekretariat Daerah', 'surat masuk', '2023-06-15', 'SekretariatDaerah_2.pdf', '4', '', '2023-06-19 12:00:31', '2023-06-19 12:00:31', NULL),
(6, 10, '000/931/SEKDA-UM', 'Peringatan Hari Tingkatan Nasional 2023', 'Sekretariat Daerah', 'surat masuk', '2023-06-20', 'SekretariatDaerah_3.pdf', '2', '', '2023-06-20 19:09:34', '2023-06-20 19:09:34', NULL),
(7, 11, '001/932/SEKDA-UM', 'Hari Nasional', 'Kantor Camat Sungai Sembilan', 'surat masuk', '2023-06-20', 'surat tugas.pdf', '1', '1', '2023-06-20 19:15:13', '2023-06-21 14:18:50', NULL),
(8, 12, '2426424', 'dgdsh', 'sash', 'surat masuk', '2023-06-23', '61-117-1-SM.pdf', '2', '', '2023-06-23 11:46:09', '2023-06-23 11:46:09', NULL),
(9, 13, '74226', 'dhjwh', 'hdasjh', 'surat masuk', '2023-06-23', '1820-5628-2-SP.pdf', '1', '', '2023-06-23 11:57:28', '2023-06-23 11:57:28', NULL),
(10, 14, '1', 'd', 'd', 'surat masuk', '2023-06-23', 'jurnal 1.pdf', '2', '', '2023-06-23 12:16:49', '2023-06-23 12:16:49', NULL),
(11, 15, '470/050/DISDUKCAPIL/PDIP', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun2023', 'DISDUKCAPIL', 'surat masuk', '2023-03-01', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun 2023.pdf', '14', '', '2023-06-24 16:17:51', '2023-06-24 16:17:51', NULL),
(12, 16, '048/640/DISKOMINFOTIKSAN', 'Permintaan Data Informasi', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-01-24', 'Permintaan Data Informasi.pdf', '14', '', '2023-06-24 16:24:50', '2023-06-24 16:24:50', NULL),
(13, 17, 'R/11/KA/PM.00.02/2023/BNNK', 'Hasil Pemeriksaan Sampel Urine', 'BNN.RI', 'surat masuk', '2023-02-01', 'Hasil Pemeriksaan Sampel Urine.pdf', '14', '', '2023-06-24 16:32:12', '2023-06-24 16:32:12', NULL),
(14, 18, '019/700/SATPOLPP', 'Permintaan Sebagai Peserta Upacara', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-03-02', 'Permintaan Sebagai Peserta Upacara.pdf', '14', '', '2023-06-24 16:35:37', '2023-06-24 16:35:37', NULL),
(15, 19, '15/LPTQ-KD/III/2023', 'UNDANGAN', 'LPTQ Kota Dumai', 'surat masuk', '2023-03-02', 'Undangan.pdf', '14', '', '2023-06-24 16:41:23', '2023-06-24 16:41:23', NULL),
(16, 20, '019/699/satpolpp', 'Permintaan Peserta Upaca OPD', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-03-02', 'Permintaan Peserta Upacara OPD.pdf', '14', '', '2023-06-24 16:44:50', '2023-06-24 16:44:50', NULL),
(17, 21, '045/059/DISPERSIP', 'BIMBINGAN TEKNIS PENGAWASAN KEARSIPAN', 'Dinas Perpustakaan dan Kearsipan', 'surat masuk', '2023-03-06', 'Bimbingan Teknis Pengawasan Kearsipan.pdf', '14', '', '2023-06-24 16:49:38', '2023-06-24 16:49:38', NULL),
(18, 22, '100/208/TAPEM', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023', 'Sekretariat Daerah', 'surat masuk', '2023-03-09', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023.pdf', '14', '', '2023-06-24 16:54:20', '2023-06-24 16:54:20', NULL),
(19, 23, '365/un.04/L.1/pp.06/03/2023', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata', 'UIN SUSKA RIAU', 'surat masuk', '2023-03-16', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata.pdf', '14', '', '2023-06-24 17:02:40', '2023-06-24 17:02:40', NULL),
(20, 24, '045.4/734/DISPERSIP', 'Pembentukan Unit Kearsipan dan Unit Pengolah', 'Walikota Dumai', 'surat masuk', '2023-03-13', 'Pembentukan Unit Kearsipan dan Unit Pengolah.pdf', '14', '', '2023-06-24 17:08:52', '2023-06-24 17:08:52', NULL),
(21, 25, '100/LG-PEM/12', 'Permohonan Peminjaman Proyektor Infokus Dan Layar Infokus', 'KEL.LUBUK GAUNG', 'surat masuk', '2023-01-30', 'Permohonan Peminjaman Proyektor Infokus dan Layar Infokus.pdf', '12', '2', '2023-06-25 08:48:22', '2023-06-25 12:19:53', NULL),
(22, 26, '470/050/DISDUKCAPIL/PDIP/', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun 2023', 'DISDUKCAPIL', 'surat masuk', '2023-01-30', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun 2023_1.pdf', '14', '2', '2023-06-25 08:59:35', '2023-06-25 12:19:49', NULL),
(23, 27, '048/640/DISKOMINFOTIKSAN', 'Permintaan Data Informasi', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-01-24', 'Permintaan Data Informasi_1.pdf', '14', '2', '2023-06-25 09:04:42', '2023-06-25 12:19:38', NULL),
(24, 28, 'R/11/I/KA/PM.00.02/2023/BNNK', 'Hasil Pemeriksaan Sampel Urine', 'BNN.RI', 'surat masuk', '2023-02-01', 'Hasil Pemeriksaan Sampel Urine_1.pdf', '14', '2', '2023-06-25 09:08:52', '2023-06-25 12:19:33', NULL),
(25, 29, '019/700/SATPOLPP', 'Permintaan Sebagai Peserta Upacara', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-03-02', 'Permintaan Sebagai Peserta Upacara_1.pdf', '14', '2', '2023-06-25 09:12:14', '2023-06-25 12:19:28', NULL),
(26, 30, '019/699/SATPOLPP', 'Permintaan Peserta Upacara OPD', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-03-02', 'Permintaan Peserta Upacara OPD_1.pdf', '14', '2', '2023-06-25 09:14:54', '2023-06-25 12:19:24', NULL),
(27, 31, '045/059/DISPERSIP', 'BIMBINGAN TEKNIS PENGAWASAN KEARSIPAN', 'Dinas Perpustakaan dan Kearsipan', 'surat masuk', '2023-03-06', 'Bimbingan Teknis Pengawasan Kearsipan_2.pdf', '14', '2', '2023-06-25 09:18:09', '2023-06-25 12:19:11', NULL),
(28, 32, '100/208/TAPEM', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023', 'SEKRETARIAT DAERAHY', 'surat masuk', '2023-03-09', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023_1.pdf', '14', '2', '2023-06-25 09:25:18', '2023-06-25 12:19:07', NULL),
(29, 33, '365/Un.04/L.I/PP.06/03/2023', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata', 'UIN SUSKA RIAU', 'surat masuk', '2023-03-16', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata_1.pdf', '14', '2', '2023-06-25 09:31:00', '2023-06-25 12:19:02', NULL),
(30, 34, '045.4/734/DISPERSIP', 'Pembentukan Unit Kearsipan dan Unit Pengolah', 'WALIKOTA DUMAI', 'surat masuk', '2023-03-13', 'Pembentukan Unit Kearsipan dan Unit Pengolah_1.pdf', '14', '2', '2023-06-25 09:38:28', '2023-06-25 12:18:57', NULL),
(31, 35, '280/PII/GM/IV-2023', 'Gift For Idul Fitri 1444 H', 'INDOPALAM', 'surat masuk', '2023-04-11', 'Gift For Idul Fitri 1444 H.pdf', '14', '2', '2023-06-25 09:43:47', '2023-06-25 12:18:45', NULL),
(32, 36, '280/PII/GM/IV-2023', 'Gift For Idul Fitri 1444 H', 'INDOPALAM', 'surat masuk', '2023-04-11', 'Gift For Idul Fitri 1444 H_1.pdf', '14', '2', '2023-06-25 09:43:47', '2023-06-25 12:18:40', NULL),
(33, 37, '557/840/DISKOMINFOTIKSAN', 'Pembangunan dan Pengembangan Aplikasi TIK SPBE', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-04-11', 'Pembangunan dan Pengembangan Aplikasi TIK SPBE.pdf', '14', '2', '2023-06-25 09:47:28', '2023-06-25 12:18:35', NULL),
(34, 38, '000/202/DISKOMINFOTIKSAN-APK', 'Evaluasi Penggunaan Aplikasi E-office', 'DISKOMINFO', 'surat masuk', '2023-03-28', 'Evaluasi Penggunaan Aplikasi e-ofiice_1.pdf', '14', '2', '2023-06-25 09:53:18', '2023-06-25 12:18:29', NULL),
(35, 39, '800/821/BKPSDM', 'Surat Edaran Pelaksanaan Apel Gabungan Pasca Cuti Bersama Hari Raya Idul Fitri dan Pemberian Cuti Tahunan Bagi ASN dan TKPK', 'WALIKOTA DUMAI', 'surat masuk', '2023-04-10', 'Surat Edaran Pelaksanaan Apel Gabungan Pasca Cuti Bersama Hari Raya Idul Fitri.pdf', '14', '2', '2023-06-25 09:58:25', '2023-06-25 12:18:15', NULL),
(36, 40, '626/SPT/2023', 'Surat Perintah Tugas', 'SEKRETARIAT DAERAH', 'surat masuk', '2023-05-02', 'Surat Perintah Tugas.pdf', '14', '2', '2023-06-25 10:03:29', '2023-06-25 12:18:10', NULL),
(37, 41, 'W4.U6/2163/HK.02/V/2023', 'Pemberitahuan Pelaksanaan Pemeriksaan Setempat (Sidang Ditempat Objek Perkara)', 'Pengadilan Negri Dumai Kelas 1A', 'surat masuk', '2023-05-15', 'Pemberitahuan Pelaksanaan Pemeriksaan Setempat.pdf', '14', '2', '2023-06-25 10:08:09', '2023-06-25 12:18:04', NULL),
(38, 42, '64/SET-LG/2023', 'Peminjaman Infocus', 'KEL.LUBUK GAUNG', 'surat masuk', '2023-05-25', 'peminjaman infocus.pdf', '14', '2', '2023-06-25 10:11:26', '2023-06-25 12:17:59', NULL),
(39, 43, '070/260/BAPPEDALITBANG-LITBANG', 'Pengukuran dan penilaian indeks inovasi daerah 2023 serta penyaringan melalui pelaporan secara elektronik dengan aplikasi indeks inovasi daerah', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH PENELITIAN DAN PENGEMBANGAN ', 'surat masuk', '2023-05-30', 'pengukuran dan penilaian indeks inovasi daerah 2023 serta penyaringan melalui pelaporan secara elektronik dengan aplikasi indeks.pdf', '14', '2', '2023-06-25 10:16:44', '2023-06-25 12:17:40', NULL),
(40, 44, '070/264/BAPPEDALITBANG-LITBANG', 'Sosialisasi persiapan pengukuran dan penilaian indeks inovasi daerah danpemberian penghargaan innovatiue government award (IGA) tahun 2023', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH PENELITIAN DAN PENGEMBANGAN', 'surat masuk', '2023-06-06', 'sosialisasi Persiapan pengukuran dan penilaian indeks inovasi daerah dan pemberian penghargaan innovative government award (IGA).pdf', '14', '2', '2023-06-25 10:23:21', '2023-06-25 12:17:26', NULL),
(41, 45, '01.001/DPK-KNPI/MCM/VI/2023', 'Permohonan Pinjaman Tempat Dan Alat Pendukung Lainnya', 'KNPI DEWAN PENGURUS KECAMATAN KOMITE NASIONAL', 'surat masuk', '2023-06-09', 'Permohonan Pinjaman Tempat dan Alat Pendukung Lainnya.pdf', '14', '2', '2023-06-25 10:26:38', '2023-06-25 12:17:18', NULL),
(42, 0, '', '', '', '', '', '', '', '0', '2023-06-25 10:28:08', '2023-06-25 10:28:08', NULL),
(43, 0, '', '', '', '', '', '', '', '0', '2023-06-25 10:28:15', '2023-06-25 10:28:15', NULL),
(44, 0, '', '', '', '', '', '', '', '0', '2023-06-25 10:28:31', '2023-06-25 10:28:31', NULL),
(45, 46, '1', '2', '3', 'surat masuk', '2023-06-25', '61-117-1-SM_1.pdf', '1', '', '2023-06-25 10:48:25', '2023-06-25 10:48:25', NULL),
(46, 47, '1', '2', '3', 'surat masuk', '2023-06-25', '61-117-1-SM_2.pdf', '1', '', '2023-06-25 11:54:40', '2023-06-25 11:54:40', NULL),
(47, 0, '', '', '', '', '', '', '', '0', '2023-06-25 12:13:46', '2023-06-25 12:13:46', NULL),
(48, 0, '', '', '', '', '', '', '', '0', '2023-06-25 12:14:03', '2023-06-25 12:14:03', NULL),
(49, 48, '/;.llp,l', 'dsferfer', 'dsdsfdfs', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO.pdf', '14', '', '2023-06-25 12:41:33', '2023-06-25 12:41:33', NULL),
(50, 49, '/;.llp,l', 'dsferfer', 'dsdsfdfs', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_1.pdf', '14', '', '2023-06-25 12:41:35', '2023-06-25 12:41:35', NULL),
(51, 51, '450/321/KEC-SS-KESSOS', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Bidang Kessos', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_2.pdf', '14', '', '2023-06-25 15:43:43', '2023-06-25 15:43:43', NULL),
(52, 52, '450/321/KEC-SS-KESSOS', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Bidang Kessos', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_3.pdf', '14', '', '2023-06-25 15:44:00', '2023-06-25 15:44:00', NULL),
(53, 53, '450/321/KEC-SS-KESSOS', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Seksi Kesehjateraan Sosial', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_4.pdf', '14', '', '2023-06-25 15:44:53', '2023-06-25 15:44:53', NULL),
(54, 54, '450/317/KEC-SS-KESSOS', 'Dispensasi Izin Menikah A.n Fakhroni khairullah/aizatnika nasution', 'Sesksi Kesejahteraan Sosial', 'surat masuk', '2023-06-08', 'Dispensasi Izin Menikah A.n.  FAKHRONI KHAIRULLAH &AYIZANTIKA NASUTION.pdf', '14', '', '2023-06-25 15:52:13', '2023-06-25 15:52:13', NULL),
(55, 55, '450/317/KEC-SS-KESSOS', 'Dispensasi Izin Menikah A.n Fakhroni khairullah/aizatnika nasution', 'Sesksi Kesejahteraan Sosial', 'surat masuk', '2023-06-08', 'Dispensasi Izin Menikah A.n.  FAKHRONI KHAIRULLAH &AYIZANTIKA NASUTION_1.pdf', '14', '', '2023-06-25 15:52:54', '2023-06-25 15:52:54', NULL),
(56, 57, '450/317/KEC-SS-KESSSOS', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Sub Bagian TU', 'surat masuk', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_5.pdf', '9', '', '2023-06-25 16:34:09', '2023-06-25 16:34:09', NULL),
(57, 62, '123', 'Aaa', 'Kasipem', 'surat masuk', '2023-06-25', 'Panduan-Penyusunan-Tugas-Akhir-DIII-TM-DTM-SV-UGM.pdf', '1', '', '2023-06-25 19:54:17', '2023-06-25 19:54:17', NULL),
(58, 63, '300/25/LG-TRANTIB', 'Permhonan Bantuan', 'Kel.Lubuk Gaung', 'surat masuk', '2023-02-23', 'Permohonan Bantuan.pdf', '9', '2', '2023-06-26 10:11:53', '2023-06-26 11:44:28', NULL),
(59, 64, '524.3/01.04/DKPP-F.1/II.23', 'Pelaksanaan Kegiatan Vaksinisasi Rabies Massal Kota Dumai Tahun 2023', 'Dinas Ketahanan Pangan dan Pertanian', 'surat masuk', '2023-03-01', 'Pelaksanaan Kegiatan Vaksinasi Rabies Massal Kota Dumai Tahun 2023.pdf', '9', '2', '2023-06-26 10:16:04', '2023-06-26 11:44:40', NULL),
(60, 65, '37/01.03.04/UTD-PMI/V/2023', 'Penyampaian Biaya Pengganti Pengolahan Daerah (DPPD)', 'Palang Merah Indonesia', 'surat masuk', '2023-03-30', 'Penyampaian Biaya Pengganti Pengolahan Daerah.pdf', '9', '', '2023-06-26 10:23:31', '2023-06-26 10:23:31', NULL),
(61, 66, '03/PWA-BB/2023', 'UNDANGAN', 'Persatuan Wirit Akbar Kel. Basilam Baru', 'surat masuk', '2023-06-07', 'Undangan (1).pdf', '9', '', '2023-06-26 10:40:45', '2023-06-26 10:40:45', NULL),
(62, 67, '400/LG-PM&KESSOS/50', 'Pengiriman Data Mustahik Muslim', 'Kel.Lubuk Gaung', 'surat masuk', '2023-06-07', 'Pengiriman Data Mustahik Muslim.pdf', '9', '2', '2023-06-26 10:45:38', '2023-06-26 11:45:04', NULL),
(63, 68, '005/481/DISPERKIMTAN', 'UNDANGAN', 'Walikota', 'surat masuk', '2023-04-17', 'Undangan Ekbang.pdf', '10', '2', '2023-06-26 11:53:57', '2023-06-26 12:10:32', NULL),
(64, 69, '31/PM-KESSOS-SG/2023', 'Permohonan Usulan Nama-Nama RSLH Terdampak Banjir Di AS Harun RT.05 Kel.Sungai Geniot Kecamatan Sungai Sembilan', 'Kel.Sei.Geniot', 'surat masuk', '2023-04-03', 'Permohonan Usulan Nama2 RSLH Terdampak Banjir.pdf', '10', '2', '2023-06-26 11:59:27', '2023-06-26 12:10:37', NULL),
(65, 70, '000/136/DPUPR-TR', 'Surat Peringatan 1', 'DPURP-TR', 'surat masuk', '2023-05-09', 'Surat Peringatan 1.pdf', '10', '2', '2023-06-26 12:04:12', '2023-06-26 12:10:42', NULL),
(66, 71, '021/KJTKBM-TPPMD/V/2023', 'Surat Penawaran Kerja Sama', 'Koperasi Jasa TKBM Tiga Putra Mandiri Dumai', 'surat masuk', '2023-05-16', 'Surat Penawaran Kerja Sama.pdf', '10', '2', '2023-06-26 13:50:51', '2023-06-26 14:53:46', NULL),
(67, 72, '671/KEL-BT/192', 'Pengiriman Data Rumah Tangga Belum Berlistrik dan Non PLN', 'Kel.Batu Teritip', 'surat masuk', '2023-05-30', 'Pengiriman Data Rumah Tangga Belum Berlistrik dan Non PLN.pdf', '10', '', '2023-06-26 13:56:00', '2023-06-26 13:56:00', NULL),
(68, 73, '671/86/PMKESSOS-TJP/2023', 'Pengiriman Data Rumah Tangga Belum Berlistrik dan Non PLN', 'Kel. Tanjung Penyembal', 'surat masuk', '2023-05-29', 'Pengiriman Data Rumah Tangga Belum Berlistrik dan Non PLN_1.pdf', '10', '2', '2023-06-26 14:07:25', '2023-06-26 14:53:56', NULL),
(69, 74, 'W.4-UM.01.01-0359', 'Permintaan Data Anak Berkewarganegaraan Ganda ', 'Kantor Wilayah Riau', 'surat masuk', '2023-05-03', 'Permintaan Data Anak Berkembang Ganda.pdf', '2', '2', '2023-06-26 14:59:23', '2023-06-26 15:39:22', NULL),
(70, 75, '000/855/DISDUKCAPIL', 'Pemberitahuan Perpindahan Layanan Dukcapil Ke MPP', 'Walikota Dumai', 'surat masuk', '2023-05-16', 'perkembangan perpindahan layanan dukcapil ke mpp.pdf', '2', '2', '2023-06-26 15:06:16', '2023-06-26 15:39:29', NULL),
(71, 76, '800/873/BKPSDM', 'Pedoman Pembinaan dan Pengawasan Netralitas Pegawai Pemerintah Non Pegawai Negri Dalam Penyelenggaraan Pemilihan Umum dan Pemilihan', 'Walikota Dumai', 'surat masuk', '2023-05-29', 'pedoman pembinaan dan pengawasan netralitas pegawai.pdf', '2', '2', '2023-06-26 15:12:50', '2023-06-26 15:39:34', NULL),
(72, 77, '402/150/DINSOSPM-PM', 'Penggatian Pengurus LKK yang Mendaftar Sebagai Calon Legislatif', 'Dinas Sosial Dan Pemberdayaan Masyarakat', 'surat masuk', '2023-05-25', 'penggantian pengurus LKK yang mendaftar sebagai calon legislatif.pdf', '2', '2', '2023-06-26 15:17:34', '2023-06-26 15:39:45', NULL),
(73, 78, '521.1/05.01/DKPP.C.V.2023', 'Usulan Kawasan Pertanian Pangan Berkelanjutan(KP2B) Kota Dumai', 'Dinas Ketahanan Pangan Dan Pertanian', 'surat masuk', '2023-05-23', 'usulan kawasan pertanian pangan berkelanjutan (KP2B) kota dumai.pdf', '2', '2', '2023-06-26 15:23:01', '2023-06-26 15:39:50', NULL),
(74, 79, '750/423.1/PEREKO', 'Instruksi walikota dumai tentang pelaksanaan sensus pertanian 2023(ST2023) kota dumai', 'Walikota Dumai', 'surat masuk', '2023-05-31', 'instruksi walikota Dumai tentang pelaksanaan sensus pertanian 2023.pdf', '2', '2', '2023-06-26 15:27:34', '2023-06-26 15:39:55', NULL),
(75, 80, '70/56/2023', 'Penutupan Buku Register Sporadik Kelurahan Sungai Geniot', 'Kel.Sungai Geniot', 'surat masuk', '2023-06-16', 'Penutupan buku register sporadik kelurahan sungai geniot.pdf', '2', '2', '2023-06-26 15:37:56', '2023-06-26 15:39:59', NULL),
(76, 81, '441/409/2023', 'Tentang Kampung Gerakan Masyarakat Hidup Sehat Perdana Dikota Dumai Tahun 2023', 'Walikota Dumai', 'surat masuk', '2023-05-16', 'Teniang Kampung Gerakan Masyarakat Hidup Sehat Perdana Dikota Dumai.pdf', '8', '2', '2023-06-26 20:34:35', '2023-06-26 22:03:38', NULL),
(77, 82, '048/061/DISDUKCAPIL/SEKR/', 'Balasan Permintaan Data', 'Dinas Kependudukan dan Pencatatan Sipil', 'surat masuk', '2023-06-09', '\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n	<!--begin::Head-->\r\n	<head><base href=\"../\">\r\n		<title>Archive: Demo</title>\r\n		<meta charset=\"utf-8\" />\r\n		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n\r\n        <!--begin::Global Styleshee', '8', '', '2023-06-26 20:39:38', '2023-06-26 20:39:38', NULL),
(78, 83, '524/14.13/DKPP-E.1/V.2023', 'Pendataan Ternak Tahun 2023', 'Dinas Ketahanan Pangan Dan Pertanian', 'surat masuk', '2023-05-31', 'Pendataan Ternak Tahun 2023.pdf', '8', '2', '2023-06-26 20:45:04', '2023-06-26 22:03:44', NULL),
(79, 84, '005/61/KESBANGPOL', 'Permintaan Nama Peserta', 'Badan Kesatuan Bangka Dan Politik Kota Dumai', 'surat masuk', '2023-06-21', 'Permintaan Nama Peserta.pdf', '8', '2', '2023-06-26 20:49:31', '2023-06-26 22:03:49', NULL),
(80, 86, '005.108/DISPERKIMTAN-KP', 'Undangan', 'Dinas Perumahan Rakyat Kawasan Permukiman Dan Pertahanan', 'surat masuk', '2023-06-06', '<!doctype html>\r\n<html lang=\"en\">\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <title>Archive Surat: demo</title>\r\n    <link href=\"https://inbox.getbitlab.com/vendor/bootstrap-5.3.0-a', '8', '', '2023-06-26 21:16:46', '2023-06-26 21:16:46', NULL),
(81, 87, '526.22/77/DKPP-B.2/I.2023', 'Permintaan Jadwal Turun Lapangan Tentang Daerah Terdampak Banjir Di Kecamatan Sei Sembilan', 'Dinas Ketahanan Pangan Dan Pertanian', 'surat masuk', '2023-01-10', 'Permintaan Jadwal Turun Lapangan Tentang Daerah Terdampak Banjir Di kecamatan sungai sembilan.pdf', '11', '2', '2023-06-26 21:29:29', '2023-06-26 21:29:56', NULL),
(82, 88, '048/110/SATPOLPP-SDA', 'Permintaan Pengisian Data', 'Satpol pp', 'surat masuk', '2023-02-06', 'Permintaan Pengisian Data.pdf', '11', '2', '2023-06-26 21:34:00', '2023-06-26 21:34:15', NULL),
(83, 89, '01/B/P.GR/FPM/LG/I/2023', 'Pemberitahuan Kegiatan Gotong Royong', 'Forum Masyarakat Lubuk Gaung', 'surat masuk', '2023-01-17', 'Pemberitahuan Kegiatan Gotong Royong.pdf', '11', '2', '2023-06-26 21:37:45', '2023-06-26 21:37:56', NULL),
(84, 90, '300/TRANTIB-BSA/I/2023/08', 'Mohon Bantuan Keamanan', 'Kel. Bangsal Aceh', 'surat masuk', '2023-01-27', 'Mohon Bantuan Keamanan.pdf', '11', '2', '2023-06-26 21:41:25', '2023-06-26 21:41:37', NULL),
(85, 91, '524/TRANTIB-BB/11', 'Himbauan', 'Kel. Basilam Baru', 'surat masuk', '2023-01-02', 'Himbauan.pdf', '11', '2', '2023-06-26 21:44:56', '2023-06-26 21:45:09', NULL),
(86, 92, '360/044/BPBD', 'Permintaan Data Personal Dan Data Sarpas (Alat Kelengkapan Pendukung Pemadam Kebakaran) Tahun 2023', 'Badan Penanggulangan Bencana Daerah', 'surat masuk', '2023-02-21', 'Permintaan Data Personal dan Data Sarpas Tahun 2023.pdf', '11', '2', '2023-06-26 21:50:03', '2023-06-26 21:50:47', NULL),
(87, 93, '2552/DISHUB/551.1', 'Surat Edaran Larangan Operasional Kendaraan Angkutan Barang Selama Bulan Suci Ramadan Dan Hari Raya Idul Fitri 1444 H/2023 Di Wilayah Kota Dumai', 'Walikota Dumai', 'surat masuk', '2023-03-24', 'Surat Edaran Larangan Operasional Kendaraan Angkutan Barang.pdf', '11', '2', '2023-06-26 21:56:17', '2023-06-26 21:56:28', NULL),
(88, 94, '048/061/DISDUKCAPIL/SEKR/', 'Balasan Permintaan Data', 'Dinas Kependudukan Dan Pencatatan Sipil', 'surat masuk', '2023-06-09', 'Balasan Permintaan Data.pdf', '8', '2', '2023-06-26 22:06:32', '2023-06-26 22:06:56', NULL),
(89, 96, 'aaa', 'aaaa', 'aaaaa', 'surat masuk', '2023-06-26', 'PERENCANAAN UNTUK PERBAIKAN SATUAN PENDIDIKAN.pdf', '2', '', '2023-06-26 22:10:45', '2023-06-26 22:10:45', NULL),
(90, 95, '005.108/DISPERKIMTAN-KP', 'Undangan', 'Dinas Perumahan Rakyat Kawasan Permukiman Dan Pertanahan', 'surat masuk', '2023-06-06', '\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n	<!--begin::Head-->\r\n	<head><base href=\"../\">\r\n		<title>Archive: Demo</title>\r\n		<meta charset=\"utf-8\" />\r\n		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n\r\n        <!--begin::Global Styleshee', '8', '', '2023-06-26 22:12:53', '2023-06-26 22:12:53', NULL),
(91, 97, 'aaaa', 'bbbb', 'ccc', 'surat keluar', '2023-06-26', 'PERENCANAAN UNTUK PERBAIKAN SATUAN PENDIDIKAN_1.pdf', '1', '', '2023-06-26 22:13:30', '2023-06-26 22:13:30', NULL),
(92, 98, '450/321/KEC-SS-KESSOS', 'Dispensansi Izin Nikah A.n RENI JUWITA/RONALDO', 'KUA', 'surat keluar', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_6.pdf', '1', '', '2023-06-26 22:22:08', '2023-06-26 22:22:08', NULL),
(93, 117, '321', 'surat', 'admin', 'surat keluar', '2023-06-27', 'COVER.pdf', '9', '', '2023-06-27 06:16:21', '2023-06-27 06:16:21', NULL),
(94, 118, '321', 'surat', 'admin', 'surat keluar', '2023-06-27', 'COVER_1.pdf', '9', '', '2023-06-27 06:16:56', '2023-06-27 06:16:56', NULL),
(95, 119, '005.108/DISPERKIMTAN-KP', 'UNDANGAN', 'Dinas Perumahan Rakyat Kawasan Permukiman Dan Pertahanan', 'surat masuk', '2023-06-06', 'Undangan PM.pdf', '8', '2', '2023-06-27 10:39:59', '2023-06-27 10:40:40', NULL),
(96, 120, '450/302/KEC-SS-KESSOS', 'Dispensansi Izin Nikah A.n. RIAN ARIANTO/NURUL ERLIYANA', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-17', 'Dispensasi Izin Menikah a.n RIAN ARIANTO & NURUL ERLIYANI.pdf', '1', '3', '2023-06-27 11:17:13', '2023-07-06 14:20:30', NULL),
(97, 121, '450/296/KEC-SS-KESSOS', 'Rekomendasi Pendaftaran, Penerbitan No Registrasi Musholla AL-Iklas Kel.Sungai Geniot', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-09', 'Rekomendasi Pendaftaran penertiban No Registrasi Musholla AL-IKLAS Kel. Sungai geniot.pdf', '1', '3', '2023-06-27 11:24:12', '2023-07-06 14:20:36', NULL),
(98, 122, '450/297/KEC-SS-KESSOOS', 'Rekomendasi Pendaftaran, penerbitan No Registrasi Musholla Nurul Iman Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-09', 'Rekomendasi Pendaftaran penertiban No Registrasi Mushola Nurul Iman Kel. Sungai Geniot.pdf', '1', '3', '2023-06-27 11:36:13', '2023-07-06 14:20:42', NULL),
(99, 123, '450/303/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n ZUBAIDAH / TARMIZI', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-17', 'Dispensasi Izin Menikah A.n. Zubaidah & Tarmizi.pdf', '1', '3', '2023-06-27 14:29:29', '2023-07-06 14:20:51', NULL),
(100, 124, '450/306/KEC-SS-KESSOS', 'Rekomendasi Pendaftaran, penerbitan No Registrasi Masjid Darussalam Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-26', 'Rekomendasi Pendaftaran, Penertiban No Registrasi Masjid Darrusalam Kel. Sungai Geniot_1.pdf', '1', '3', '2023-06-27 14:37:35', '2023-07-06 14:21:16', NULL),
(101, 125, '450/307/KEC-SS-KESSOS', 'Rekomendasi pendaftaran penerbitan No Registrasi masjid Al-Muallamah Kel. Tanjung Penyembal', 'Seksi Kesejahteraan Sosial ', 'surat keluar', '2023-05-26', 'Rekomendasi Pendaftaran, Penertiban No Registrasi Masjid AL-Muallamah Kep. Tanjung Penyembal.pdf', '1', '3', '2023-06-27 14:42:42', '2023-07-12 10:06:57', NULL),
(102, 126, '420/310/KEC-SS-KESSOS', 'Rekomendasi Izin Operasional Yayasan TK AL-DZAKI Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-30', 'Rekomendasi Izin Operasional Yayasan TK AL-DZAKI Kel. sungai genioy.pdf', '1', '3', '2023-06-27 20:14:04', '2023-07-12 10:07:06', NULL),
(103, 127, '420/311/KEC-SS-KESSOS', 'Rekomendasi Operasional Yayasan MDA AL-DZAKI Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-05-30', 'Rekomendasi Izin Operasional Yayasan MDA AL-DZAKI Kel. sungai geniot.pdf', '1', '3', '2023-06-27 20:18:16', '2023-07-12 10:07:15', NULL),
(104, 128, '450/314/KEC-SS-KESSOS', 'Dispensasi Izin Nkah A.n. RUDI EFFENDI/ ERNI SARIMAH', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-06', 'Dispensasi Izin Menikah A.n. RUDI EFFENDI.pdf', '1', '3', '2023-06-27 20:23:27', '2023-07-12 10:07:37', NULL),
(105, 129, '300/162/KEC-SS-TRANTIB', 'Laporan Pertambangan Dan Penampungan Tanah Tanpa Izin', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-08', 'Laporan Pertambangan dan Penampungan Tanah Tanpa Izin.pdf', '1', '3', '2023-06-27 20:27:40', '2023-07-12 10:07:44', NULL),
(106, 130, '450/319/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n SAMSUDDIN/SITI HOLISA', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-14', 'Dispensasi Izin Menikah A.n. SAMSUDDIN.pdf', '1', '3', '2023-06-27 20:32:21', '2023-07-12 10:07:51', NULL),
(107, 131, '450/316/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. SARIPUDIN/ SRI ARBAIAH', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-08', 'Dispensasi Izin Menikah A.n.  SARIPUDIN.pdf', '1', '3', '2023-06-27 20:36:33', '2023-07-12 10:08:39', NULL),
(108, 132, '450/317/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. FAKHRONI KHAIRULLAH/ AYIZATNIKA NASUTION', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-08', 'Dispensasi Izin Menikah A.n.  FAKHRONI KHAIRULLAH &AYIZANTIKA NASUTION_2.pdf', '1', '3', '2023-06-27 20:39:33', '2023-07-12 10:08:47', NULL),
(109, 133, '450/321/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. RENI JUWITA/ RONALDO', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-06-20', 'Dispensasi Izin Menikah A.n. RENDI JUWITA& RONALDO_7.pdf', '1', '3', '2023-06-27 20:43:03', '2023-07-12 10:08:56', NULL),
(110, 134, '411/298/KEC-SS-PM', 'Permohonan Peminjaman Ember atau Tong', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-12', 'permohonan Peminjaman ember atau tong.pdf', '1', '3', '2023-06-28 16:33:18', '2023-07-12 10:09:12', NULL),
(111, 135, '411/299/KEC-SS-PM', 'Permohonan Bantuan Ember atau Tong dan Benih Ikan', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-12', 'permohonan bantuan ember atau tong dan benih ikan.pdf', '1', '3', '2023-06-28 16:35:55', '2023-07-12 10:09:21', NULL),
(112, 136, '005/290/KEC-SS-PM', 'Undangan', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-04-12', 'Undangan_pm.pdf', '1', '3', '2023-06-28 16:37:24', '2023-07-12 10:09:30', NULL),
(113, 137, '402/294/KEC-SS-PM', 'Pengiriman Peserta Lomba kelurahan Tahun 2023', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-02', 'Pengiriman Peserta Lomba Kelurahan Tahun 2023.pdf', '1', '3', '2023-06-28 16:39:57', '2023-07-12 10:09:47', NULL),
(114, 138, '411/301/KEC-SS-PM', 'Permohonan Bantuan Bibit Tanaman Obat-obatan (Toga)', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-12', 'Permohonan Bantuan Bibit Tanaman Obat-obatan (toga).pdf', '1', '3', '2023-06-28 16:42:10', '2023-07-12 10:09:56', NULL),
(115, 139, '411/304/KEC-SS-PM', 'Bantuan Kue Kotak', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-24', 'Bantuan Kue Kotak.pdf', '1', '3', '2023-06-28 16:44:40', '2023-07-12 10:10:04', NULL),
(116, 140, '440/309/KEC-SS-PM', 'Undangan', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-05-29', 'Undangan_Pm (1).pdf', '1', '3', '2023-06-28 16:46:38', '2023-07-12 10:10:23', NULL),
(117, 141, '470/312/KEC-SS-PM', 'Permintaan Data', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-06-06', 'Permintaan Data_Pm.pdf', '1', '3', '2023-06-28 16:49:10', '2023-07-12 10:10:32', NULL),
(118, 142, '600/150/KEC-SS-PM', 'HIMBAUAN', 'Seksi Pemberdayaan Masyarakat', 'surat keluar', '2023-06-06', 'Himbauan_pm.pdf', '1', '3', '2023-06-28 16:51:16', '2023-07-12 10:10:38', NULL),
(119, 143, '300/137/KEC-SS-TRANTIB', 'Permintaan laporan bulanan ketertiban umum dan ketentraman masyarakat kelurahan', 'Seksi Trantib', 'surat keluar', '2023-05-09', 'Permintaan Laporan Bulanan Ketertiban Umum.pdf', '1', '3', '2023-06-28 16:57:43', '2023-07-12 10:11:01', NULL),
(120, 144, '32/300/KEC-SS-TRANTIB', 'UNDANGAN', 'Seksi Trantib', 'surat keluar', '2023-06-08', 'Undangan_Trantib.pdf', '1', '3', '2023-06-28 17:03:15', '2023-07-12 10:11:08', NULL),
(121, 145, '300/62/KEC-SS-TRANTIB', 'Laporan Pertambangan Dan Penampungan Tanah Tanpa izin', 'Seksi Trantib', 'surat keluar', '2023-06-08', 'Laporan Pertambangan Dan Penampungan Tanah Tanpa Izin (1)_1.pdf', '1', '3', '2023-06-28 17:13:39', '2023-07-12 10:11:15', NULL),
(122, 146, '300172/KEC-SS-TRANTIB', 'Laporan Kamtibnas', 'Seksi Trantib', 'surat keluar', '2023-05-13', 'Laporan Kamtibmas.pdf', '1', '3', '2023-06-28 17:15:13', '2023-07-12 10:11:22', NULL),
(123, 147, '300/174/KEC-SS-TRANTIB', 'Laporan Kamtibmas', 'Seksi Trantib', 'surat keluar', '2023-05-10', 'Laporan Kamtibmas_1.pdf', '1', '3', '2023-06-28 17:17:18', '2023-07-12 10:12:03', NULL),
(124, 148, '590/151/KEC-SS-PEM', 'Larangan Penerbitan Sporadik', 'Seksi Pemerintahan', 'surat keluar', '2023-05-24', 'larangan penerbitan sporadik.pdf', '1', '3', '2023-06-28 17:22:55', '2023-07-12 10:12:15', NULL),
(125, 149, '402/161/KEC-SS-PEM', 'Penggantian pengurus LKK yang mendaftar sebagai calon legislatif', 'Seksi Pemerintahan', 'surat keluar', '2023-05-29', 'penggantian pengurus LKK yang mendaftar sebagai calon legislatif (1).pdf', '1', '3', '2023-06-28 17:25:25', '2023-07-12 10:12:28', NULL),
(126, 150, '100/179/KEC-SS-PEM', 'Pendataan Akta Kelahiran', 'Seksi Pemerintahan', 'surat keluar', '2023-06-26', 'pendataan akta kelahiran.pdf', '1', '3', '2023-06-28 17:28:14', '2023-07-12 10:12:35', NULL),
(127, 151, '590/160/KEC-SS-PEM', 'Penutupan Buku Register Sporadik', 'Seksi Pemerintahan', 'surat keluar', '2023-06-07', 'Penutupan buku register sporadik kelurahan sungai geniot_1.pdf', '1', '3', '2023-06-28 17:32:03', '2023-07-12 10:12:56', NULL),
(128, 152, '590/160/KEC-SS-PEM', 'Penutupan Buku Register Sporadik', 'Seksi Pemerintahan', 'surat keluar', '2023-06-07', 'penutupan buku register sporadik.pdf', '1', '3', '2023-06-28 17:34:39', '2023-07-12 10:16:30', NULL),
(129, 153, '470/158/KEC-SS-PEM', 'Permintaan Blanko Kartu Tanda Penduduk(KTP)', 'Seksi Pemerintahan', 'surat keluar', '2023-06-05', 'permintaan blanko kartu tanda penduduk (KTP).pdf', '1', '3', '2023-06-28 17:37:02', '2023-07-12 10:16:36', NULL),
(130, 154, '100/157/KEC-SS-PEM', 'Permintaan Ribbon Printer KTP Elektronik', 'Seksi Pemerintahan', 'surat keluar', '2023-06-05', 'permintaan ribbon printer KTP elektronik.pdf', '1', '3', '2023-06-28 17:39:20', '2023-07-12 10:16:43', NULL),
(131, 155, '450/229/KEC-SS-KESSOS', 'Rekomendasi Pendaftaran dan Penerbitan No Registrasi Musholla Al-Istiqomah', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-01-31', 'Rekomendasi Pendaftaran dan penerbitan no registrasi musholla Al-Istiqomah.pdf', '1', '3', '2023-06-29 16:38:16', '2023-07-12 10:16:59', NULL),
(132, 156, '450/226/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. ARIP SAHPUTRA/ MEGAWATI', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-01-24', 'Dispensasi Izin Nikah A.n Megawati.pdf', '1', '3', '2023-06-29 16:41:07', '2023-07-12 10:17:06', NULL),
(133, 157, '450/227/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. SARJU/MISWATI', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-01-24', 'Dispensasi Izin Nikah A.n Sarju.pdf', '1', '3', '2023-06-29 16:43:46', '2023-07-12 10:17:14', NULL),
(134, 158, '450/228/KEC-SS-KESSOS', 'Rekomendasi Penerbitan No Registrasi Musholla Al-Muhajirin', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-01-31', 'Rekomendasi Penerbitan No registrasi musholla Al-Muhajirin.pdf', '1', '3', '2023-06-29 16:46:20', '2023-07-12 10:17:20', NULL),
(135, 159, '862/22/KEC-SS-SET', 'Rekomendasi Penerbitan Surat Tidak Pernah dan atau Tidak Sedang Menjalani Proses Hukum', 'Sub Bagian TU', 'surat keluar', '2023-01-01', 'Rekomendasi Penerbitan Surat Tidak Pernah.pdf', '1', '3', '2023-06-29 16:54:49', '2023-07-12 10:19:56', NULL),
(136, 160, '861/24/KEC-SS-SET', 'Pengiriman Berkas Persyaratan Kenaikan Pangkat Periode April Tahun 2023, Kecamatan Sungai Sembilan an. Eva Susanti', 'Sub Bagian TU', 'surat keluar', '2023-01-07', 'Pengiriman Berkas Persyaratan.pdf', '1', '3', '2023-06-29 17:00:38', '2023-07-12 10:20:11', NULL),
(137, 161, '944/41/KEC-SS-SET', 'Usulan Calon Pengurus Barang Pembantu Kelurahan SKPD TA.2023', 'Sub Bagian TU', 'surat keluar', '2023-02-16', 'usulan calon pengurus barang pembantu kelurahan SKPD TA.2023.pdf', '1', '3', '2023-06-29 17:04:06', '2023-07-12 10:22:54', NULL),
(138, 162, '800/55/KEC-SS-SET', 'Pengiriman Berita Acara Serah Terima Barang, Dan Usulan Penghapusan Barang Milik Daerah', 'Sub Bagian TU', 'surat keluar', '2023-03-02', 'Pengiriman barang acara serah terima barang.pdf', '1', '', '2023-06-29 17:06:45', '2023-06-29 17:06:45', NULL),
(139, 163, '400/66/KEC-SS-SET', 'Permohonan Bantuan', 'Sub Bagian TU', 'surat keluar', '2023-03-21', 'Permohonan Bantuan (1).pdf', '1', '2', '2023-06-29 17:09:24', '2023-07-12 10:23:49', NULL),
(140, 164, '560/38/KEC-SS-SET', 'Rekomendasi Tenaga Kerja', 'Sub Bagian TU', 'surat keluar', '2023-02-10', 'Rekomendasi Tenaga Kerja.pdf', '1', '3', '2023-06-29 17:17:21', '2023-07-12 10:23:56', NULL),
(141, 165, '862/220/KEC-SS-SET', 'Surat Panggilan I', 'Sub Bagian TU', 'surat keluar', '2023-01-04', 'Surat Panggilan I.pdf', '1', '3', '2023-06-29 17:21:57', '2023-07-12 10:24:02', NULL),
(142, 166, '948/KPT/I/2019', 'Berdaasarkan Izin Kementristekdikti', 'Staf Kecamatan Sungai Sembilan', 'surat masuk', '2023-07-01', 'brosur 2023.pdf', '14', '', '2023-07-01 09:32:35', '2023-07-01 09:32:35', NULL),
(143, 167, '948/KTP/I/2019', 'Materi Ujian', 'Sub bagian tu', 'surat keluar', '2023-07-01', 'brosur 2023_1.pdf', '1', '0', '2023-07-01 09:57:48', '2023-07-06 14:19:05', NULL),
(144, 168, '100/SS-PEM/122', 'Permintaan Register Sporadik 3 Tahun Terakhir', 'Seksi Pemerintahan ', 'surat keluar', '2023-04-06', 'Permintaan Register Sporadik 3 tahun terakhir.pdf', '1', '3', '2023-07-06 10:04:23', '2023-07-12 10:24:20', NULL),
(145, 170, '500/308/KEC-SS-EKBANG', 'Permohonan Bantuan Cat Minyak', 'Seksi Ekonomi Dan Pembangunan', 'surat keluar', '2023-05-26', 'Permohonan Bantuan Cat minyak.pdf', '1', '3', '2023-07-06 11:17:26', '2023-07-12 10:24:26', NULL),
(146, 171, '01/RT 04/LG-SS/IV/2023', 'Permohonan bantuan perbaikan turap dengan ukuran 10 m X 2,10 m X 0,20 M', 'Seksi Ekonomi Dan Pembangunan ', 'surat keluar', '2023-05-03', 'Permohonan bantuan perbaikan turap dngn uk 10mX2,10.pdf', '1', '3', '2023-07-06 14:09:34', '2023-07-12 10:24:33', NULL),
(147, 172, '183.1/126/KEC-SS/PEM', 'Mohon Bantuan Hukum ', 'Seksi Pemerintahan', 'surat keluar', '2023-05-02', 'Mohon Bantuan Hukum.pdf', '1', '3', '2023-07-06 14:12:24', '2023-07-12 10:24:48', NULL),
(148, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:16:48', '2023-07-06 14:16:48', NULL),
(149, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:16:53', '2023-07-06 14:16:53', NULL),
(150, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:17:15', '2023-07-06 14:17:15', NULL),
(151, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:01', '2023-07-06 14:18:01', NULL),
(152, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:27', '2023-07-06 14:18:27', NULL),
(153, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:32', '2023-07-06 14:18:32', NULL),
(154, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:39', '2023-07-06 14:18:39', NULL),
(155, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:48', '2023-07-06 14:18:48', NULL),
(156, 0, '', '', '', '', '', '', '', '0', '2023-07-06 14:18:53', '2023-07-06 14:18:53', NULL),
(157, 173, '450/331/KEC-SS-KESSOS', 'UNDANGAN', 'Seksi Kesejahteraan Sosial ', 'surat keluar', '2023-07-05', 'Undangan_Kessos.pdf', '1', '3', '2023-07-07 14:07:35', '2023-07-12 10:24:55', NULL),
(158, 174, '450/340/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. SAFRIL/ LESTARI ', 'Seksi Kesejahteraan Sosial ', 'surat keluar', '2023-07-06', 'Dispensasi izin nikah a.n. Safrillestari.pdf', '1', '3', '2023-07-07 14:41:27', '2023-07-12 10:25:05', NULL),
(159, 175, '12', 'sk', 'Pt sinar mas', 'surat masuk', '2023-07-11', 'artikelku.pdf', '14', '', '2023-07-11 15:29:17', '2023-07-11 15:29:17', NULL),
(160, 176, '460/221/KEC-SS-KESSOS', 'Jadwal Turun Lapangan Tentang Daerah Terdampak Banjir Dikecamatan Sungai Sembilan', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-01-13', 'jadwal turun lapangan.pdf', '1', '3', '2023-07-12 09:59:17', '2023-07-12 10:25:18', NULL),
(161, 177, '450/333/KEC-SS-KESSOS', 'Dispensasi Izin Nikah A.n. DEDEK ISKANDAR/NUR QOMARIYAH', 'Seksi Kesejahteraan Sosial', 'surat keluar', '2023-07-05', 'Dispensasi Izin Nikah.A.n.Dedek Iskandar.pdf', '1', '3', '2023-07-12 10:02:20', '2023-07-12 10:25:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foldername`
--

CREATE TABLE `foldername` (
  `id_foldername` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `foldername` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `foldername`
--

INSERT INTO `foldername` (`id_foldername`, `id_user`, `foldername`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'Arsip Surat Masuk', '2023-06-25 12:16:33', '2023-06-25 12:16:33', NULL),
(3, 1, 'Arsip Surat Keluar', '2023-06-29 17:34:38', '2023-06-29 17:34:38', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `id_jenissurat` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `jenis_surat`
--

INSERT INTO `jenis_surat` (`id_jenissurat`, `user_id`, `jenis_surat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Pengantar ', '2023-06-18 19:59:56', '2023-06-24 21:46:22', NULL),
(2, '1', 'Biasa', '2023-06-18 20:00:12', '2023-06-24 15:53:35', NULL),
(3, '1', 'Undangan ', '2023-06-18 20:00:20', '2023-06-24 15:53:48', NULL),
(4, '1', 'Segera ', '2023-06-18 20:00:37', '2023-06-24 15:53:58', NULL),
(5, '2', 'Biasa', '2023-06-20 19:15:49', '2023-06-20 19:15:49', NULL),
(6, '2', 'Segera', '2023-06-20 19:15:59', '2023-06-20 19:15:59', NULL),
(7, '2', 'Undangan', '2023-06-20 19:16:08', '2023-06-20 19:16:08', NULL),
(8, '2', 'Perintah', '2023-06-20 19:16:19', '2023-06-20 19:16:19', NULL),
(9, '2', 'Umum', '2023-06-20 19:16:38', '2023-06-20 19:16:38', NULL),
(10, '2', 'Penting', '2023-06-20 19:16:38', '2023-06-28 17:28:40', NULL),
(11, '2', 'Rahasia', '2023-06-20 19:16:43', '2023-06-28 17:28:57', NULL),
(12, '1', 'Umum', '2023-06-24 16:09:29', '2023-06-24 16:09:29', NULL),
(13, '1', 'Penting', '2023-06-24 17:00:30', '2023-06-24 17:00:30', NULL),
(14, '14', 'Rahasia', '2023-06-25 08:30:15', '2023-06-25 08:30:15', NULL),
(15, '14', 'Biasa', '2023-06-25 08:30:46', '2023-06-25 08:30:46', NULL),
(16, '14', 'Penting', '2023-06-25 08:31:42', '2023-06-25 08:31:42', NULL),
(17, '14', 'Perintah', '2023-06-25 08:32:46', '2023-06-25 08:32:46', NULL),
(18, '14', 'Edaran', '2023-06-25 08:33:54', '2023-06-25 08:33:54', NULL),
(19, '14', 'Permohonan', '2023-06-25 08:34:21', '2023-06-25 08:34:21', NULL),
(20, '1', 'Rahasia', '2023-06-25 08:35:53', '2023-06-25 08:35:53', NULL),
(21, '9', 'Biasa', '2023-06-25 10:46:24', '2023-06-25 10:46:24', NULL),
(22, '9', 'Segera', '2023-06-25 10:46:34', '2023-06-25 10:46:34', NULL),
(23, '9', 'Undangan', '2023-06-25 10:46:44', '2023-06-25 10:46:44', NULL),
(24, '9', 'Perintah', '2023-06-25 10:46:56', '2023-06-25 10:46:56', NULL),
(25, '9', 'Umum', '2023-06-25 10:47:06', '2023-06-25 10:47:06', NULL),
(26, '9', 'Penting', '2023-06-25 10:47:20', '2023-06-25 10:47:20', NULL),
(27, '9', 'Rahasia', '2023-06-25 10:47:37', '2023-06-25 10:47:37', NULL),
(28, '8', 'Biasa', '2023-06-25 10:58:27', '2023-06-25 10:58:27', NULL),
(29, '8', 'Perintah', '2023-06-25 10:58:46', '2023-06-25 10:58:46', NULL),
(30, '8', 'Segera', '2023-06-25 10:58:57', '2023-06-25 10:58:57', NULL),
(31, '8', 'UJndangan', '2023-06-25 10:59:13', '2023-06-25 10:59:13', NULL),
(32, '8', 'Umum', '2023-06-25 11:00:25', '2023-06-25 11:00:25', NULL),
(33, '8', 'Rahasia', '2023-06-25 11:00:42', '2023-06-25 11:00:42', NULL),
(34, '8', 'Penting', '2023-06-25 11:02:51', '2023-06-25 11:02:51', NULL),
(35, '10', 'Perintah', '2023-06-25 11:06:06', '2023-06-25 11:06:06', NULL),
(36, '10', 'Segera', '2023-06-25 11:06:20', '2023-06-25 11:06:20', NULL),
(37, '10', 'Umum', '2023-06-25 11:06:47', '2023-06-25 11:06:47', NULL),
(38, '10', 'Biasa', '2023-06-25 11:06:59', '2023-06-25 11:06:59', NULL),
(39, '10', 'Undangan', '2023-06-25 11:07:19', '2023-06-25 11:07:19', NULL),
(40, '10', 'Penting', '2023-06-25 11:07:37', '2023-06-25 11:07:37', NULL),
(41, '10', 'Rahasia', '2023-06-25 11:09:23', '2023-06-25 11:09:23', NULL),
(42, '11', 'Biasa', '2023-06-25 11:14:21', '2023-06-25 11:14:21', NULL),
(43, '11', 'Perintah', '2023-06-25 11:14:35', '2023-06-25 11:14:35', NULL),
(44, '11', 'Segera', '2023-06-25 11:14:54', '2023-06-25 11:14:54', NULL),
(45, '11', 'Penting', '2023-06-25 11:15:09', '2023-06-25 11:15:09', NULL),
(46, '11', 'Rahasia', '2023-06-25 11:17:21', '2023-06-25 11:17:21', NULL),
(47, '11', 'Umum', '2023-06-25 11:17:43', '2023-06-25 11:17:43', NULL),
(48, '11', 'Undangan', '2023-06-25 11:20:46', '2023-06-25 11:20:46', NULL),
(49, '12', 'Biasa', '2023-06-25 11:26:26', '2023-06-25 11:26:26', NULL),
(50, '12', 'Penting', '2023-06-25 11:26:40', '2023-06-25 11:26:40', NULL),
(51, '12', 'Segera', '2023-06-25 11:26:57', '2023-06-25 11:26:57', NULL),
(52, '12', 'Perintah', '2023-06-25 11:27:06', '2023-06-25 11:27:06', NULL),
(53, '12', 'Undangan', '2023-06-25 11:27:26', '2023-06-25 11:27:26', NULL),
(54, '12', 'Rahasia', '2023-06-25 11:27:46', '2023-06-25 11:27:46', NULL),
(55, '12', 'Umum', '2023-06-25 11:28:12', '2023-06-25 11:28:12', NULL),
(56, '14', 'Pengantar', '2023-06-29 16:56:23', '2023-06-29 16:56:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-03-13-222227', 'App\\Database\\Migrations\\User', 'default', 'App', 1687035215, 1),
(2, '2023-03-13-223327', 'App\\Database\\Migrations\\JenisSurat', 'default', 'App', 1687035216, 1),
(3, '2023-03-13-223725', 'App\\Database\\Migrations\\Surat', 'default', 'App', 1687035216, 1),
(4, '2023-03-13-223728', 'App\\Database\\Migrations\\archive', 'default', 'App', 1687035217, 1),
(5, '2023-03-13-230232', 'App\\Database\\Migrations\\RecentActivity', 'default', 'App', 1687035217, 1),
(6, '2023-03-13-230857', 'App\\Database\\Migrations\\FolderName', 'default', 'App', 1687035217, 1),
(7, '2023-03-21-044213', 'App\\Database\\Migrations\\Riwayat', 'default', 'App', 1687035218, 1),
(8, '2023-03-23-045324', 'App\\Database\\Migrations\\Document', 'default', 'App', 1687035218, 1),
(9, '2023-03-24-064717', 'App\\Database\\Migrations\\Notifikasi', 'default', 'App', 1687035219, 1),
(10, '2023-03-25-112402', 'App\\Database\\Migrations\\CountSurat', 'default', 'App', 1687035221, 1),
(11, '2023-04-30-025540', 'App\\Database\\Migrations\\Disposisi', 'default', 'App', 1687035221, 1),
(12, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1687035226, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(11) UNSIGNED NOT NULL,
  `id_surat` int(11) UNSIGNED NOT NULL,
  `penerima` int(11) UNSIGNED NOT NULL,
  `pengirim` int(11) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `is_read` varchar(255) NOT NULL,
  `is_ready` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id_notifikasi`, `id_surat`, `penerima`, `pengirim`, `jenis`, `is_read`, `is_ready`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 1, 'surat masuk', 'no', 'siap', '2023-06-18 20:47:25', '2023-06-18 20:47:34', NULL),
(2, 2, 2, 1, 'surat masuk', 'read', 'siap', '2023-06-18 21:22:41', '2023-06-18 21:32:32', NULL),
(3, 3, 2, 1, 'surat masuk', 'read', '', '2023-06-18 21:22:43', '2023-06-18 21:32:44', NULL),
(4, 4, 2, 1, 'surat masuk', 'read', '', '2023-06-18 21:24:18', '2023-06-18 21:32:44', NULL),
(5, 5, 2, 1, 'surat masuk', 'read', '', '2023-06-18 21:24:34', '2023-06-18 21:32:44', NULL),
(6, 6, 2, 1, 'surat masuk', 'read', '', '2023-06-18 21:25:03', '2023-06-18 21:32:44', NULL),
(8, 8, 4, 1, 'surat masuk', 'no', 'siap', '2023-06-19 11:32:58', '2023-06-19 11:32:59', NULL),
(9, 9, 4, 1, 'surat masuk', 'no', 'siap', '2023-06-19 12:00:30', '2023-06-19 12:00:31', NULL),
(10, 10, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-20 19:09:32', '2023-06-20 19:09:34', NULL),
(12, 12, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-23 11:46:07', '2023-06-23 11:46:09', NULL),
(14, 14, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-23 12:16:47', '2023-06-23 12:16:49', NULL),
(15, 15, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:17:50', '2023-06-24 16:17:51', NULL),
(16, 16, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:24:47', '2023-06-24 16:24:50', NULL),
(17, 17, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:32:08', '2023-06-24 16:32:12', NULL),
(18, 18, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:35:34', '2023-06-24 16:35:37', NULL),
(19, 19, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:41:19', '2023-06-24 16:41:24', NULL),
(20, 20, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:44:44', '2023-06-24 16:44:51', NULL),
(21, 21, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:49:36', '2023-06-24 16:49:38', NULL),
(22, 22, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 16:54:16', '2023-06-24 16:54:20', NULL),
(23, 23, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 17:02:36', '2023-06-24 17:02:40', NULL),
(24, 24, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-24 17:08:49', '2023-06-24 17:08:52', NULL),
(25, 25, 12, 1, 'surat masuk', 'no', 'siap', '2023-06-25 08:48:20', '2023-06-25 08:48:23', NULL),
(26, 26, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 08:59:28', '2023-06-25 08:59:36', NULL),
(27, 27, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:04:24', '2023-06-25 09:04:43', NULL),
(28, 28, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:08:24', '2023-06-25 09:08:52', NULL),
(29, 29, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:12:04', '2023-06-25 09:12:14', NULL),
(30, 30, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:14:35', '2023-06-25 09:14:54', NULL),
(31, 31, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:17:32', '2023-06-25 09:18:09', NULL),
(32, 32, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:25:07', '2023-06-25 09:25:18', NULL),
(33, 33, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:30:53', '2023-06-25 09:31:01', NULL),
(34, 34, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:38:23', '2023-06-25 09:38:28', NULL),
(35, 35, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:43:42', '2023-06-25 09:43:47', NULL),
(36, 36, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:43:42', '2023-06-25 09:43:47', NULL),
(37, 37, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:47:14', '2023-06-25 09:47:28', NULL),
(38, 38, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:53:11', '2023-06-25 09:53:18', NULL),
(39, 39, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 09:58:19', '2023-06-25 09:58:25', NULL),
(40, 40, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:01:22', '2023-06-25 10:03:29', NULL),
(41, 41, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:08:00', '2023-06-25 10:08:09', NULL),
(42, 42, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:11:23', '2023-06-25 10:11:26', NULL),
(43, 43, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:16:22', '2023-06-25 10:16:44', NULL),
(44, 44, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:23:13', '2023-06-25 10:23:22', NULL),
(45, 45, 14, 1, 'surat masuk', 'no', 'siap', '2023-06-25 10:26:33', '2023-06-25 10:26:38', NULL),
(46, 46, 1, 9, 'surat masuk', 'no', 'siap', '2023-06-25 10:48:24', '2023-06-25 10:48:25', NULL),
(47, 47, 1, 9, 'surat masuk', 'read', 'siap', '2023-06-25 11:54:36', '2023-06-25 16:55:46', NULL),
(48, 48, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 12:41:14', '2023-06-25 12:41:33', NULL),
(49, 49, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 12:41:20', '2023-06-25 12:41:35', NULL),
(50, 50, 14, 9, 'surat masuk', 'no', '', '2023-06-25 12:41:46', '2023-06-25 12:41:46', NULL),
(51, 51, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 15:43:37', '2023-06-25 15:43:44', NULL),
(52, 52, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 15:43:56', '2023-06-25 15:44:00', NULL),
(53, 53, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 15:44:48', '2023-06-25 15:44:53', NULL),
(54, 54, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 15:51:34', '2023-06-25 15:52:14', NULL),
(55, 55, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 15:52:09', '2023-06-25 15:52:54', NULL),
(58, 58, 14, 9, 'surat masuk', 'no', 'siap', '2023-06-25 16:49:05', '2023-06-25 16:49:06', NULL),
(59, 59, 14, 9, 'surat masuk', 'read', 'siap', '2023-06-25 16:49:38', '2023-06-25 16:53:44', NULL),
(60, 60, 1, 14, 'surat masuk', 'no', 'siap', '2023-06-25 16:56:39', '2023-06-25 16:56:40', NULL),
(61, 61, 1, 14, 'surat masuk', 'read', 'siap', '2023-06-25 17:58:40', '2023-06-25 19:49:32', NULL),
(62, 62, 1, 2, 'surat masuk', 'no', 'siap', '2023-06-25 19:54:15', '2023-06-25 19:54:18', NULL),
(63, 63, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-26 10:11:49', '2023-06-26 10:11:53', NULL),
(64, 64, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-26 10:16:00', '2023-06-26 10:16:04', NULL),
(65, 65, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-26 10:23:04', '2023-06-26 10:23:31', NULL),
(66, 66, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-26 10:40:39', '2023-06-26 10:40:45', NULL),
(67, 67, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-26 10:45:16', '2023-06-26 10:45:38', NULL),
(68, 68, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 11:53:50', '2023-06-26 11:53:57', NULL),
(69, 69, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 11:59:10', '2023-06-26 11:59:27', NULL),
(70, 70, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 12:04:04', '2023-06-26 12:04:12', NULL),
(71, 71, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 13:50:48', '2023-06-26 13:50:51', NULL),
(72, 72, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 13:55:45', '2023-06-26 13:56:00', NULL),
(73, 73, 10, 1, 'surat masuk', 'no', 'siap', '2023-06-26 14:05:54', '2023-06-26 14:07:25', NULL),
(74, 74, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 14:59:16', '2023-06-26 14:59:23', NULL),
(75, 75, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:05:28', '2023-06-26 15:06:16', NULL),
(76, 76, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:12:45', '2023-06-26 15:12:51', NULL),
(77, 77, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:17:30', '2023-06-26 15:17:34', NULL),
(78, 78, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:21:55', '2023-06-26 15:23:01', NULL),
(79, 79, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:27:29', '2023-06-26 15:27:34', NULL),
(80, 80, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 15:37:44', '2023-06-26 15:37:56', NULL),
(87, 87, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:28:50', '2023-06-26 21:29:29', NULL),
(88, 88, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:32:42', '2023-06-26 21:34:00', NULL),
(89, 89, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:37:00', '2023-06-26 21:37:45', NULL),
(90, 90, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:40:59', '2023-06-26 21:41:25', NULL),
(91, 91, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:44:15', '2023-06-26 21:44:56', NULL),
(92, 92, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:49:03', '2023-06-26 21:50:03', NULL),
(93, 93, 11, 1, 'surat masuk', 'no', 'siap', '2023-06-26 21:55:33', '2023-06-26 21:56:17', NULL),
(96, 96, 2, 1, 'surat masuk', 'no', 'siap', '2023-06-26 22:10:24', '2023-06-26 22:10:45', NULL),
(97, 97, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-26 22:13:18', '2023-06-26 22:13:30', NULL),
(98, 98, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-26 22:22:01', '2023-06-26 22:22:08', NULL),
(99, 99, 1, 9, 'surat masuk', 'no', 'siap', '2023-06-27 06:05:14', '2023-06-27 06:05:14', NULL),
(100, 100, 9, 1, 'surat masuk', 'no', 'siap', '2023-06-27 06:06:16', '2023-06-27 06:06:16', NULL),
(101, 101, 1, 9, 'surat masuk', 'no', 'siap', '2023-06-27 06:10:11', '2023-06-27 06:15:37', NULL),
(102, 102, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:01', '2023-06-27 06:15:01', NULL),
(103, 103, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:06', '2023-06-27 06:15:06', NULL),
(104, 104, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:17', '2023-06-27 06:15:17', NULL),
(105, 105, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(106, 106, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(107, 107, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(108, 108, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(109, 109, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(110, 110, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(111, 111, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(112, 112, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(113, 113, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:35', '2023-06-27 06:15:35', NULL),
(114, 114, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(115, 115, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(116, 116, 9, 1, 'surat keluar', 'no', '', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(117, 117, 9, 1, 'surat keluar', 'no', 'siap', '2023-06-27 06:16:20', '2023-06-27 06:16:21', NULL),
(118, 118, 9, 1, 'surat keluar', 'no', 'siap', '2023-06-27 06:16:55', '2023-06-27 06:16:56', NULL),
(119, 119, 8, 1, 'surat masuk', 'no', 'siap', '2023-06-27 10:39:25', '2023-06-27 10:40:00', NULL),
(120, 120, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 11:17:12', '2023-06-27 11:17:13', NULL),
(121, 121, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 11:24:05', '2023-06-27 11:24:14', NULL),
(122, 122, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 11:36:10', '2023-06-27 11:36:13', NULL),
(123, 123, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 14:29:27', '2023-06-27 14:29:29', NULL),
(124, 124, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 14:37:13', '2023-06-27 14:37:35', NULL),
(125, 125, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 14:42:37', '2023-06-27 14:42:42', NULL),
(126, 126, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:12:50', '2023-06-27 20:14:04', NULL),
(127, 127, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:17:56', '2023-06-27 20:18:16', NULL),
(128, 128, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:23:05', '2023-06-27 20:23:28', NULL),
(129, 129, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:27:21', '2023-06-27 20:27:40', NULL),
(130, 130, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:31:32', '2023-06-27 20:32:22', NULL),
(131, 131, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:36:03', '2023-06-27 20:36:33', NULL),
(132, 132, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:39:17', '2023-06-27 20:39:33', NULL),
(133, 133, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-27 20:42:40', '2023-06-27 20:43:03', NULL),
(134, 134, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:33:00', '2023-06-28 16:33:19', NULL),
(135, 135, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:35:49', '2023-06-28 16:35:56', NULL),
(136, 136, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:37:21', '2023-06-28 16:37:24', NULL),
(137, 137, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:39:52', '2023-06-28 16:39:57', NULL),
(138, 138, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:42:06', '2023-06-28 16:42:10', NULL),
(139, 139, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:44:30', '2023-06-28 16:44:40', NULL),
(140, 140, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:46:32', '2023-06-28 16:46:38', NULL),
(141, 141, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:49:02', '2023-06-28 16:49:11', NULL),
(142, 142, 1, 8, 'surat keluar', 'no', 'siap', '2023-06-28 16:50:47', '2023-06-28 16:51:17', NULL),
(143, 143, 1, 11, 'surat keluar', 'no', 'siap', '2023-06-28 16:57:41', '2023-06-28 16:57:43', NULL),
(144, 144, 1, 11, 'surat keluar', 'no', 'siap', '2023-06-28 17:03:12', '2023-06-28 17:03:15', NULL),
(145, 145, 1, 11, 'surat keluar', 'no', 'siap', '2023-06-28 17:13:36', '2023-06-28 17:13:40', NULL),
(146, 146, 1, 11, 'surat keluar', 'no', 'siap', '2023-06-28 17:15:03', '2023-06-28 17:15:13', NULL),
(147, 147, 1, 11, 'surat keluar', 'no', 'siap', '2023-06-28 17:17:09', '2023-06-28 17:17:18', NULL),
(148, 148, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:22:51', '2023-06-28 17:22:55', NULL),
(149, 149, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:25:23', '2023-06-28 17:25:26', NULL),
(150, 150, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:28:12', '2023-06-28 17:28:14', NULL),
(151, 151, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:31:42', '2023-06-28 17:32:03', NULL),
(152, 152, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:34:38', '2023-06-28 17:34:39', NULL),
(153, 153, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:37:00', '2023-06-28 17:37:02', NULL),
(154, 154, 1, 2, 'surat keluar', 'no', 'siap', '2023-06-28 17:39:13', '2023-06-28 17:39:20', NULL),
(155, 155, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-29 16:38:13', '2023-06-29 16:38:16', NULL),
(156, 156, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-29 16:41:00', '2023-06-29 16:41:07', NULL),
(157, 157, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-29 16:43:36', '2023-06-29 16:43:46', NULL),
(158, 158, 1, 9, 'surat keluar', 'no', 'siap', '2023-06-29 16:46:14', '2023-06-29 16:46:20', NULL),
(159, 159, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 16:54:44', '2023-06-29 16:54:49', NULL),
(160, 160, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:00:32', '2023-06-29 17:00:39', NULL),
(161, 161, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:04:00', '2023-06-29 17:04:06', NULL),
(162, 162, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:06:43', '2023-06-29 17:06:45', NULL),
(163, 163, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:09:16', '2023-06-29 17:09:24', NULL),
(164, 164, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:17:14', '2023-06-29 17:17:21', NULL),
(165, 165, 1, 14, 'surat keluar', 'no', 'siap', '2023-06-29 17:21:47', '2023-06-29 17:21:57', NULL),
(166, 166, 14, 1, 'surat masuk', 'no', 'siap', '2023-07-01 09:32:33', '2023-07-01 09:32:35', NULL),
(167, 167, 1, 14, 'surat keluar', 'no', 'siap', '2023-07-01 09:57:46', '2023-07-01 09:57:48', NULL),
(168, 168, 1, 2, 'surat keluar', 'no', 'siap', '2023-07-06 10:04:09', '2023-07-06 10:04:29', NULL),
(169, 169, 1, 2, 'surat keluar', 'no', '', '2023-07-06 10:11:39', '2023-07-06 10:11:39', NULL),
(170, 170, 1, 10, 'surat keluar', 'no', 'siap', '2023-07-06 11:17:25', '2023-07-06 11:17:26', NULL),
(171, 171, 1, 10, 'surat keluar', 'no', 'siap', '2023-07-06 14:09:31', '2023-07-06 14:09:35', NULL),
(172, 172, 1, 2, 'surat keluar', 'no', 'siap', '2023-07-06 14:11:25', '2023-07-06 14:12:24', NULL),
(173, 173, 1, 9, 'surat keluar', 'no', 'siap', '2023-07-07 14:07:32', '2023-07-07 14:07:35', NULL),
(174, 174, 1, 9, 'surat keluar', 'no', 'siap', '2023-07-07 14:41:14', '2023-07-07 14:41:32', NULL),
(175, 175, 14, 1, 'surat masuk', 'no', 'siap', '2023-07-11 15:29:11', '2023-07-11 15:29:18', NULL),
(176, 176, 1, 9, 'surat keluar', 'no', 'siap', '2023-07-12 09:58:59', '2023-07-12 09:59:17', NULL),
(177, 177, 1, 9, 'surat keluar', 'no', 'siap', '2023-07-12 10:02:14', '2023-07-12 10:02:20', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `recent_activity`
--

CREATE TABLE `recent_activity` (
  `id_recent` int(11) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `id_surat` int(11) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `is_ready` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `user_id`, `id_surat`, `judul`, `message`, `is_read`, `type`, `jenis`, `penerima`, `is_ready`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 1, 25, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '12', 'siap', '2023-06-25 08:48:20', '2023-06-25 08:53:25', NULL),
(26, 1, 26, '', 'Perintahkan Informasi Tersebut dan Sebarkan Kepada Masyarakat Agar Mengisi SKM Tersebut', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 08:59:28', '2023-06-25 09:53:40', NULL),
(27, 1, 27, '', 'Siapkan Data yang dimaksud', 'read', 'Umum', 'surat masuk', '14', 'siap', '2023-06-25 09:04:24', '2023-06-25 09:53:40', NULL),
(28, 1, 28, '', 'Arsipkan', 'read', 'Rahasia', 'surat masuk', '14', 'siap', '2023-06-25 09:08:24', '2023-06-25 09:53:40', NULL),
(29, 1, 29, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-25 09:12:04', '2023-06-25 09:53:40', NULL),
(30, 1, 30, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-25 09:14:35', '2023-06-25 09:53:40', NULL),
(31, 1, 31, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 09:17:32', '2023-06-25 09:53:40', NULL),
(32, 1, 32, '', 'Siapkan Data yang diminta', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 09:25:07', '2023-06-25 09:53:40', NULL),
(33, 1, 33, '', 'Untuk dikoordinasikan dengan pihak lembaga tentang KKN', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 09:30:53', '2023-06-25 09:53:40', NULL),
(34, 1, 34, '', 'Untuk Membentuk Unit dimasing-masing OPD', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 09:38:23', '2023-06-25 09:53:40', NULL),
(35, 1, 35, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 09:43:42', '2023-06-25 09:53:40', NULL),
(36, 1, 36, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 09:43:42', '2023-06-25 09:53:40', NULL),
(37, 1, 37, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 09:47:14', '2023-06-25 09:53:40', NULL),
(38, 1, 38, '', 'Arsipkan', 'read', 'Umum', 'surat masuk', '14', 'siap', '2023-06-25 09:53:11', '2023-06-25 09:53:40', NULL),
(39, 1, 39, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 09:58:19', '2023-06-25 10:27:30', NULL),
(40, 1, 40, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 10:01:22', '2023-06-25 10:27:30', NULL),
(41, 1, 41, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-25 10:08:00', '2023-06-25 10:27:30', NULL),
(42, 1, 42, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-25 10:11:23', '2023-06-25 10:27:30', NULL),
(43, 1, 43, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 10:16:22', '2023-06-25 10:27:30', NULL),
(44, 1, 44, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-06-25 10:23:13', '2023-06-25 10:27:30', NULL),
(45, 1, 45, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-25 10:26:32', '2023-06-25 10:27:30', NULL),
(56, 14, 56, '', 'Surat prial permohonan dispensasi izin menikah', 'read', 'Permohonan', 'surat masuk', '9', 'siap', '2023-06-25 16:32:28', '2023-06-25 16:37:53', NULL),
(57, 14, 57, '', 'Surat prial permohonan dispensasi izin menikah', 'read', 'Permohonan', 'surat masuk', '9', 'siap', '2023-06-25 16:33:19', '2023-06-25 16:37:53', NULL),
(61, 14, 61, '', 'mencoba surat', 'read', 'Biasa', 'surat masuk', '1', 'siap', '2023-06-25 17:58:40', '2023-06-25 18:05:49', NULL),
(63, 1, 63, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '9', 'siap', '2023-06-26 10:11:49', '2023-06-26 10:27:14', NULL),
(64, 1, 64, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '9', 'siap', '2023-06-26 10:16:00', '2023-06-26 10:27:14', NULL),
(65, 1, 65, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '9', 'siap', '2023-06-26 10:23:04', '2023-06-26 10:27:14', NULL),
(66, 1, 66, '', 'Arsipkan', 'read', 'Undangan ', 'surat masuk', '9', 'siap', '2023-06-26 10:40:39', '2023-06-26 10:43:22', NULL),
(67, 1, 67, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '9', 'siap', '2023-06-26 10:45:16', '2023-06-26 10:45:53', NULL),
(68, 1, 68, '', 'Hadiri Undangan Tersebut dan Sampaikan Ke PT Tsb', 'read', 'Segera ', 'surat masuk', '10', 'siap', '2023-06-26 11:53:50', '2023-06-26 12:10:23', NULL),
(69, 1, 69, '', 'Teruskan Kedinas Perekonomian', 'read', 'Segera ', 'surat masuk', '10', 'siap', '2023-06-26 11:59:10', '2023-06-26 12:10:23', NULL),
(70, 1, 70, '', 'Arsipkan', 'read', 'Umum', 'surat masuk', '10', 'siap', '2023-06-26 12:04:04', '2023-06-26 12:10:23', NULL),
(71, 1, 71, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '10', 'siap', '2023-06-26 13:50:48', '2023-06-26 13:56:44', NULL),
(73, 1, 73, '', 'Arsipkan', 'read', '', 'surat masuk', '10', 'siap', '2023-06-26 14:05:54', '2023-06-26 14:53:31', NULL),
(74, 1, 74, '', 'Siapkan Data Tersebut', 'read', 'Segera ', 'surat masuk', '2', 'siap', '2023-06-26 14:59:16', '2023-06-26 15:39:13', NULL),
(75, 1, 75, '', 'Exfail Pemberitahuan', 'read', 'Umum', 'surat masuk', '2', 'siap', '2023-06-26 15:05:28', '2023-06-26 15:39:13', NULL),
(76, 1, 76, '', 'Evaluasi Keseluruh ASN&TKPK', 'read', 'Penting', 'surat masuk', '2', 'siap', '2023-06-26 15:12:45', '2023-06-26 15:39:13', NULL),
(77, 1, 77, '', 'Edarkan ke lurah-lurah tentang hal tsb', 'read', 'Biasa', 'surat masuk', '2', 'siap', '2023-06-26 15:17:30', '2023-06-26 15:39:13', NULL),
(78, 1, 78, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '2', 'siap', '2023-06-26 15:21:55', '2023-06-26 15:39:13', NULL),
(79, 1, 79, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '2', 'siap', '2023-06-26 15:27:29', '2023-06-26 15:39:13', NULL),
(80, 1, 80, '', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '2', 'siap', '2023-06-26 15:37:44', '2023-06-26 15:39:13', NULL),
(81, 1, 81, '', 'Persiapkan Hal Tsb', 'read', 'Segera ', 'surat masuk', '8', 'siap', '2023-06-26 20:32:02', '2023-06-26 21:18:05', NULL),
(83, 1, 83, '', 'Sampaikan Surat Ini Ke Lurah-Lurah', 'read', 'Biasa', 'surat masuk', '8', 'siap', '2023-06-26 20:43:36', '2023-06-26 21:18:05', NULL),
(84, 1, 84, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '8', 'siap', '2023-06-26 20:48:48', '2023-06-26 21:18:05', NULL),
(87, 1, 87, '', 'Proses Lebih Lanjut', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:28:50', '2023-06-26 21:29:41', NULL),
(88, 1, 88, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:32:42', '2023-06-26 21:34:06', NULL),
(89, 1, 89, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:37:00', '2023-06-26 21:37:52', NULL),
(90, 1, 90, '', 'Disesuaikan Tembusan Ini', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:40:59', '2023-06-26 21:41:31', NULL),
(91, 1, 91, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:44:15', '2023-06-26 21:45:05', NULL),
(92, 1, 92, '', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '11', 'siap', '2023-06-26 21:49:03', '2023-06-26 21:50:33', NULL),
(93, 1, 93, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '11', 'siap', '2023-06-26 21:55:33', '2023-06-26 21:56:23', NULL),
(94, 1, 94, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '8', 'siap', '2023-06-26 22:06:10', '2023-06-26 22:06:50', NULL),
(119, 1, 119, '', 'Arsipkan', 'read', 'Penting', 'surat masuk', '8', 'siap', '2023-06-27 10:39:25', '2023-06-27 10:40:29', NULL),
(120, 9, 120, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-27 11:17:12', '2023-06-27 11:18:33', NULL),
(121, 9, 121, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 11:24:05', '2023-06-27 20:08:41', NULL),
(122, 9, 122, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 11:36:10', '2023-06-27 20:08:41', NULL),
(123, 9, 123, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-27 14:29:27', '2023-06-27 20:08:41', NULL),
(124, 9, 124, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 14:37:13', '2023-06-27 20:08:41', NULL),
(125, 9, 125, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 14:42:37', '2023-06-27 20:08:41', NULL),
(126, 9, 126, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-27 20:12:50', '2023-06-27 20:44:37', NULL),
(127, 9, 127, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-27 20:17:56', '2023-06-27 20:44:37', NULL),
(128, 9, 128, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-27 20:23:05', '2023-06-27 20:44:37', NULL),
(129, 9, 129, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 20:27:21', '2023-06-27 20:44:37', NULL),
(130, 9, 130, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 20:31:32', '2023-06-27 20:44:37', NULL),
(131, 9, 131, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 20:36:03', '2023-06-27 20:44:37', NULL),
(132, 9, 132, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-27 20:39:17', '2023-06-27 20:44:37', NULL),
(133, 9, 133, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-27 20:42:40', '2023-06-27 20:44:37', NULL),
(134, 8, 134, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:33:00', '2023-06-28 16:51:34', NULL),
(135, 8, 135, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:35:49', '2023-06-28 16:51:34', NULL),
(136, 8, 136, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:37:21', '2023-06-28 16:51:34', NULL),
(137, 8, 137, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 16:39:52', '2023-06-28 16:51:34', NULL),
(138, 8, 138, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:42:06', '2023-06-28 16:51:34', NULL),
(139, 8, 139, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:44:30', '2023-06-28 16:51:34', NULL),
(140, 8, 140, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:46:32', '2023-06-28 16:51:34', NULL),
(141, 8, 141, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 16:49:02', '2023-06-28 16:51:34', NULL),
(142, 8, 142, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 16:50:47', '2023-06-28 16:51:34', NULL),
(143, 11, 143, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 16:57:41', '2023-06-28 17:32:32', NULL),
(144, 11, 144, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:03:12', '2023-06-28 17:32:32', NULL),
(145, 11, 145, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:13:36', '2023-06-28 17:32:32', NULL),
(146, 11, 146, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-28 17:15:03', '2023-06-28 17:32:32', NULL),
(147, 11, 147, '', '', 'read', 'Perintah', 'surat keluar', '1', 'siap', '2023-06-28 17:17:09', '2023-06-28 17:32:32', NULL),
(148, 2, 148, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:22:51', '2023-06-28 17:32:32', NULL),
(149, 2, 149, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:25:23', '2023-06-28 17:32:32', NULL),
(150, 2, 150, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:28:12', '2023-06-28 17:32:32', NULL),
(152, 2, 152, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:34:38', '2023-06-28 17:39:37', NULL),
(153, 2, 153, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:37:00', '2023-06-28 17:39:37', NULL),
(154, 2, 154, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-28 17:39:13', '2023-06-28 17:39:37', NULL),
(155, 9, 155, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 16:38:13', '2023-06-29 19:29:39', NULL),
(156, 9, 156, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-29 16:41:00', '2023-06-29 19:29:39', NULL),
(157, 9, 157, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-06-29 16:43:36', '2023-06-29 19:29:39', NULL),
(158, 9, 158, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 16:46:14', '2023-06-29 19:29:39', NULL),
(159, 14, 159, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 16:54:44', '2023-06-29 19:29:39', NULL),
(160, 14, 160, '', '', 'read', 'Pengantar', 'surat keluar', '1', 'siap', '2023-06-29 17:00:32', '2023-06-29 19:29:39', NULL),
(161, 14, 161, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 17:04:00', '2023-06-29 19:29:39', NULL),
(162, 14, 162, '', '', 'read', 'Pengantar', 'surat keluar', '1', 'siap', '2023-06-29 17:06:43', '2023-06-29 19:29:39', NULL),
(163, 14, 163, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 17:09:16', '2023-06-29 19:29:39', NULL),
(164, 14, 164, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-29 17:17:14', '2023-06-29 19:29:39', NULL),
(165, 14, 165, '', '', 'read', 'Penting', 'surat keluar', '1', 'siap', '2023-06-29 17:21:47', '2023-06-29 19:29:39', NULL),
(167, 14, 167, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-07-01 09:57:46', '2023-07-01 09:57:56', NULL),
(168, 2, 168, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-07-06 10:04:09', '2023-07-06 14:12:34', NULL),
(170, 10, 170, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-07-06 11:17:25', '2023-07-06 14:12:34', NULL),
(171, 10, 171, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-07-06 14:09:31', '2023-07-06 14:12:34', NULL),
(172, 2, 172, '', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-07-06 14:11:25', '2023-07-06 14:12:34', NULL),
(173, 9, 173, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-07 14:07:32', '2023-07-11 15:29:27', NULL),
(174, 9, 174, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-07 14:41:14', '2023-07-11 15:29:27', NULL),
(175, 1, 175, '', 'diperiksa', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-07-11 15:29:11', '2023-07-11 15:29:27', NULL),
(176, 9, 176, '', '', 'read', 'Umum', 'surat keluar', '1', 'siap', '2023-07-12 09:58:59', '2023-07-12 10:03:56', NULL),
(177, 9, 177, '', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-12 10:02:14', '2023-07-12 10:03:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `is_ready` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`id_surat`, `user_id`, `no_surat`, `judul`, `perihal`, `asal_surat`, `message`, `is_read`, `type`, `jenis`, `penerima`, `is_ready`, `date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2747373', '', 'Undangan ', 'Walikota ', 'Mohon di periksa', 'no', 'Surat Undangan ', 'surat masuk', '5', 'siap', '2023-06-18', '2023-06-18 20:47:25', '2023-06-18 20:47:34', NULL),
(3, 1, '124542', '', 'Djdjjc', 'Skdjdjf', 'Zjxj', 'no', 'Surat Undangan ', 'surat masuk', '2', '', '2023-06-18', '2023-06-18 21:22:43', '2023-06-18 21:22:43', NULL),
(4, 1, '124542', '', 'Djdjjc', 'Skdjdjf', 'Zjxj', 'no', 'Surat Undangan ', 'surat masuk', '2', '', '2023-06-18', '2023-06-18 21:24:18', '2023-06-18 21:24:18', NULL),
(5, 1, '124542', '', 'Djdjjc', 'Skdjdjf', 'Zjxj', 'no', 'Surat Undangan ', 'surat masuk', '2', '', '2023-06-18', '2023-06-18 21:24:34', '2023-06-18 21:24:34', NULL),
(6, 1, '124542', '', 'Djdjjc', 'Skdjdjf', 'Zjxj', 'no', 'Surat Undangan ', 'surat masuk', '2', '', '2023-06-18', '2023-06-18 21:25:03', '2023-06-18 21:25:03', NULL),
(8, 1, '000/931/SETDA-UM', '', 'Peringatan Hari Anti Narkotika Internasional 2023', 'Sekretariat Daerah', 'Mohon Diperiksa', 'no', 'Surat Biasa', 'surat masuk', '4', 'siap', '2023-12-06', '2023-06-19 11:32:58', '2023-06-19 11:32:59', NULL),
(9, 1, '000/931/SETDA-UM', '', 'Peringatan hari anti narkotika internasional 2023', 'Sekretariat Daerah', 'tindak Lanjuti', 'no', 'Surat Biasa', 'surat masuk', '4', 'siap', '2023-06-15', '2023-06-19 12:00:30', '2023-06-19 12:00:31', NULL),
(15, 1, '470/050/DISDUKCAPIL/PDIP', '', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun2023', 'DISDUKCAPIL', 'Perintahkan Informasi tersebut dan sebarkan kepada masyarakat agar mengisi SKM tersebut', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-03-01', '2023-06-24 16:17:50', '2023-06-24 16:17:51', NULL),
(16, 1, '048/640/DISKOMINFOTIKSAN', '', 'Permintaan Data Informasi', 'SEKRETARIAT DAERAH', 'Siap Data Yang Dimaksud', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-01-24', '2023-06-24 16:24:47', '2023-06-24 16:24:50', NULL),
(17, 1, 'R/11/KA/PM.00.02/2023/BNNK', '', 'Hasil Pemeriksaan Sampel Urine', 'BNN.RI', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-02-01', '2023-06-24 16:32:08', '2023-06-24 16:32:12', NULL),
(18, 1, '019/700/SATPOLPP', '', 'Permintaan Sebagai Peserta Upacara', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-02', '2023-06-24 16:35:34', '2023-06-24 16:35:37', NULL),
(19, 1, '15/LPTQ-KD/III/2023', '', 'UNDANGAN', 'LPTQ Kota Dumai', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-02', '2023-06-24 16:41:19', '2023-06-24 16:41:24', NULL),
(20, 1, '019/699/satpolpp', '', 'Permintaan Peserta Upaca OPD', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-02', '2023-06-24 16:44:44', '2023-06-24 16:44:51', NULL),
(21, 1, '045/059/DISPERSIP', '', 'BIMBINGAN TEKNIS PENGAWASAN KEARSIPAN', 'Dinas Perpustakaan dan Kearsipan', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-03-06', '2023-06-24 16:49:36', '2023-06-24 16:49:38', NULL),
(22, 1, '100/208/TAPEM', '', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023', 'Sekretariat Daerah', 'Siapkan Data Yang Diminta', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-03-09', '2023-06-24 16:54:16', '2023-06-24 16:54:20', NULL),
(23, 1, '365/un.04/L.1/pp.06/03/2023', '', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata', 'UIN SUSKA RIAU', 'Untuk dikoordinasikan dengan pihak Terkait tentang Pelaksanaan KKN', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-16', '2023-06-24 17:02:36', '2023-06-25 16:53:14', NULL),
(24, 1, '045.4/734/DISPERSIP', '', 'Pembentukan Unit Kearsipan dan Unit Pengolah', 'Walikota Dumai', 'Untuk Membentuk Unit Di Masing-Masing OPD', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-03-13', '2023-06-24 17:08:49', '2023-06-24 17:08:52', NULL),
(25, 1, '100/LG-PEM/12', '', 'Permohonan Peminjaman Proyektor Infokus Dan Layar Infokus', 'KEL.LUBUK GAUNG', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '12', 'siap', '2023-01-30', '2023-06-25 08:48:20', '2023-06-25 08:48:23', NULL),
(26, 1, '470/050/DISDUKCAPIL/PDIP/', '', 'Pemberitahuan Survei Kepuasan Masyarakat Periode Tahun 2023', 'DISDUKCAPIL', 'Perintahkan Informasi Tersebut dan Sebarkan Kepada Masyarakat Agar Mengisi SKM Tersebut', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-01-30', '2023-06-25 08:59:28', '2023-06-25 08:59:36', NULL),
(27, 1, '048/640/DISKOMINFOTIKSAN', '', 'Permintaan Data Informasi', 'SEKRETARIAT DAERAH', 'Siapkan Data yang dimaksud', 'no', 'Umum', 'surat masuk', '14', 'siap', '2023-01-24', '2023-06-25 09:04:24', '2023-06-25 09:04:43', NULL),
(28, 1, 'R/11/I/KA/PM.00.02/2023/BNNK', '', 'Hasil Pemeriksaan Sampel Urine', 'BNN.RI', 'Arsipkan', 'no', 'Rahasia', 'surat masuk', '14', 'siap', '2023-02-01', '2023-06-25 09:08:24', '2023-06-25 09:08:52', NULL),
(29, 1, '019/700/SATPOLPP', '', 'Permintaan Sebagai Peserta Upacara', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-02', '2023-06-25 09:12:04', '2023-06-25 09:12:14', NULL),
(30, 1, '019/699/SATPOLPP', '', 'Permintaan Peserta Upacara OPD', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-03-02', '2023-06-25 09:14:35', '2023-06-25 09:14:54', NULL),
(31, 1, '045/059/DISPERSIP', '', 'BIMBINGAN TEKNIS PENGAWASAN KEARSIPAN', 'Dinas Perpustakaan dan Kearsipan', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-03-06', '2023-06-25 09:17:32', '2023-06-25 09:18:09', NULL),
(32, 1, '100/208/TAPEM', '', 'Permintaan Data Pembuatan Buku Monografi dan Potensi Daerah Kota Dumai Tahun 2023', 'SEKRETARIAT DAERAHY', 'Siapkan Data yang diminta', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-03-09', '2023-06-25 09:25:07', '2023-06-25 09:25:18', NULL),
(33, 1, '365/Un.04/L.I/PP.06/03/2023', '', 'Mohon Dukungan Pelaksanaan Kuliah Kerja Nyata', 'UIN SUSKA RIAU', 'Untuk dikoordinasikan dengan pihak lembaga tentang KKN', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-03-16', '2023-06-25 09:30:53', '2023-06-25 09:31:01', NULL),
(34, 1, '045.4/734/DISPERSIP', '', 'Pembentukan Unit Kearsipan dan Unit Pengolah', 'WALIKOTA DUMAI', 'Untuk Membentuk Unit dimasing-masing OPD', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-03-13', '2023-06-25 09:38:23', '2023-06-25 09:38:28', NULL),
(35, 1, '280/PII/GM/IV-2023', '', 'Gift For Idul Fitri 1444 H', 'INDOPALAM', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-04-11', '2023-06-25 09:43:42', '2023-06-25 09:43:47', NULL),
(36, 1, '280/PII/GM/IV-2023', '', 'Gift For Idul Fitri 1444 H', 'INDOPALAM', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-04-11', '2023-06-25 09:43:42', '2023-06-25 09:43:47', NULL),
(37, 1, '557/840/DISKOMINFOTIKSAN', '', 'Pembangunan dan Pengembangan Aplikasi TIK SPBE', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-04-11', '2023-06-25 09:47:14', '2023-06-25 09:47:28', NULL),
(38, 1, '000/202/DISKOMINFOTIKSAN-APK', '', 'Evaluasi Penggunaan Aplikasi E-office', 'DISKOMINFO', 'Arsipkan', 'no', 'Umum', 'surat masuk', '14', 'siap', '2023-03-28', '2023-06-25 09:53:11', '2023-06-25 09:53:18', NULL),
(39, 1, '800/821/BKPSDM', '', 'Surat Edaran Pelaksanaan Apel Gabungan Pasca Cuti Bersama Hari Raya Idul Fitri dan Pemberian Cuti Tahunan Bagi ASN dan TKPK', 'WALIKOTA DUMAI', 'Arsipkan', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-04-10', '2023-06-25 09:58:19', '2023-06-25 09:58:25', NULL),
(40, 1, '626/SPT/2023', '', 'Surat Perintah Tugas', 'SEKRETARIAT DAERAH', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '14', 'siap', '2023-05-02', '2023-06-25 10:01:22', '2023-06-25 10:03:29', NULL),
(41, 1, 'W4.U6/2163/HK.02/V/2023', '', 'Pemberitahuan Pelaksanaan Pemeriksaan Setempat (Sidang Ditempat Objek Perkara)', 'Pengadilan Negri Dumai Kelas 1A', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-05-15', '2023-06-25 10:08:00', '2023-06-25 10:08:09', NULL),
(42, 1, '64/SET-LG/2023', '', 'Peminjaman Infocus', 'KEL.LUBUK GAUNG', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-05-25', '2023-06-25 10:11:23', '2023-06-25 10:11:26', NULL),
(43, 1, '070/260/BAPPEDALITBANG-LITBANG', '', 'Pengukuran dan penilaian indeks inovasi daerah 2023 serta penyaringan melalui pelaporan secara elektronik dengan aplikasi indeks inovasi daerah', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH PENELITIAN DAN PENGEMBANGAN ', 'Arsipkan', 'read', 'Penting', 'surat masuk', '14', 'siap', '2023-05-30', '2023-06-25 10:16:22', '2023-06-29 17:15:31', NULL),
(44, 1, '070/264/BAPPEDALITBANG-LITBANG', '', 'Sosialisasi persiapan pengukuran dan penilaian indeks inovasi daerah danpemberian penghargaan innovatiue government award (IGA) tahun 2023', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH PENELITIAN DAN PENGEMBANGAN', 'Arsipkan', 'no', 'Penting', 'surat masuk', '14', 'siap', '2023-06-06', '2023-06-25 10:23:13', '2023-06-25 10:23:22', NULL),
(45, 1, '01.001/DPK-KNPI/MCM/VI/2023', '', 'Permohonan Pinjaman Tempat Dan Alat Pendukung Lainnya', 'KNPI DEWAN PENGURUS KECAMATAN KOMITE NASIONAL', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '14', 'siap', '2023-06-09', '2023-06-25 10:26:32', '2023-06-25 12:11:48', NULL),
(50, 9, '/;.llp,l', '', 'dsferfer', 'dsdsfdfs', 'sdssds', 'no', 'Segera', 'surat masuk', '14', '', '2023-06-20', '2023-06-25 12:41:46', '2023-06-25 12:41:46', NULL),
(51, 9, '450/321/KEC-SS-KESSOS', '', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Bidang Kessos', 'Surat prihal permohonan dispensasi izin menikah ', 'no', 'Segera', 'surat masuk', '14', 'siap', '2023-06-20', '2023-06-25 15:43:37', '2023-06-25 15:43:44', NULL),
(52, 9, '450/321/KEC-SS-KESSOS', '', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Bidang Kessos', 'Surat prihal permohonan dispensasi izin menikah ', 'no', 'Segera', 'surat masuk', '14', 'siap', '2023-06-20', '2023-06-25 15:43:56', '2023-06-25 15:44:00', NULL),
(53, 9, '450/321/KEC-SS-KESSOS', '', 'Dispensasi Izin Menikah A.n Reni Juwita/Ronaldo', 'Seksi Kesehjateraan Sosial', 'Surat prihal permohonan dispensasi izin menikah ', 'read', 'Segera', 'surat masuk', '14', 'siap', '2023-06-20', '2023-06-25 15:44:48', '2023-06-25 16:28:18', NULL),
(54, 9, '450/317/KEC-SS-KESSOS', '', 'Dispensasi Izin Menikah A.n Fakhroni khairullah/aizatnika nasution', 'Sesksi Kesejahteraan Sosial', 'Surat prihal permohonan dispensansi izin menikah', 'no', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-08', '2023-06-25 15:51:34', '2023-06-25 15:52:14', NULL),
(55, 9, '450/317/KEC-SS-KESSOS', '', 'Dispensasi Izin Menikah A.n Fakhroni khairullah/aizatnika nasution', 'Sesksi Kesejahteraan Sosial', 'Surat prihal permohonan dispensansi izin menikah', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-06-08', '2023-06-25 15:52:09', '2023-06-25 16:26:59', NULL),
(63, 1, '300/25/LG-TRANTIB', '', 'Permhonan Bantuan', 'Kel.Lubuk Gaung', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '9', 'siap', '2023-02-23', '2023-06-26 10:11:49', '2023-06-26 10:11:53', NULL),
(64, 1, '524.3/01.04/DKPP-F.1/II.23', '', 'Pelaksanaan Kegiatan Vaksinisasi Rabies Massal Kota Dumai Tahun 2023', 'Dinas Ketahanan Pangan dan Pertanian', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '9', 'siap', '2023-03-01', '2023-06-26 10:16:00', '2023-06-26 10:16:04', NULL),
(65, 1, '37/01.03.04/UTD-PMI/V/2023', '', 'Penyampaian Biaya Pengganti Pengolahan Daerah (DPPD)', 'Palang Merah Indonesia', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '9', 'siap', '2023-03-30', '2023-06-26 10:23:04', '2023-06-26 10:23:31', NULL),
(66, 1, '03/PWA-BB/2023', '', 'UNDANGAN', 'Persatuan Wirit Akbar Kel. Basilam Baru', 'Arsipkan', 'no', 'Undangan ', 'surat masuk', '9', 'siap', '2023-06-07', '2023-06-26 10:40:39', '2023-06-26 10:40:45', NULL),
(67, 1, '400/LG-PM&KESSOS/50', '', 'Pengiriman Data Mustahik Muslim', 'Kel.Lubuk Gaung', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '9', 'siap', '2023-06-07', '2023-06-26 10:45:16', '2023-06-27 05:59:20', NULL),
(68, 1, '005/481/DISPERKIMTAN', '', 'UNDANGAN', 'Walikota', 'Hadiri Undangan Tersebut dan Sampaikan Ke PT Tsb', 'no', 'Segera ', 'surat masuk', '10', 'siap', '2023-04-17', '2023-06-26 11:53:50', '2023-06-26 11:53:57', NULL),
(69, 1, '31/PM-KESSOS-SG/2023', '', 'Permohonan Usulan Nama-Nama RSLH Terdampak Banjir Di AS Harun RT.05 Kel.Sungai Geniot Kecamatan Sungai Sembilan', 'Kel.Sei.Geniot', 'Teruskan Kedinas Perekonomian', 'no', 'Segera ', 'surat masuk', '10', 'siap', '2023-04-03', '2023-06-26 11:59:10', '2023-06-26 11:59:27', NULL),
(70, 1, '000/136/DPUPR-TR', '', 'Surat Peringatan 1', 'DPURP-TR', 'Arsipkan', 'no', 'Umum', 'surat masuk', '10', 'siap', '2023-05-09', '2023-06-26 12:04:04', '2023-06-26 12:04:12', NULL),
(71, 1, '021/KJTKBM-TPPMD/V/2023', '', 'Surat Penawaran Kerja Sama', 'Koperasi Jasa TKBM Tiga Putra Mandiri Dumai', 'Arsipkan', 'read', 'Biasa', 'surat masuk', '10', 'siap', '2023-05-16', '2023-06-26 13:50:48', '2023-06-26 13:59:03', NULL),
(73, 1, '671/86/PMKESSOS-TJP/2023', '', 'Pengiriman Data Rumah Tangga Belum Berlistrik dan Non PLN', 'Kel. Tanjung Penyembal', 'Arsipkan', 'no', '', 'surat masuk', '10', 'siap', '2023-05-29', '2023-06-26 14:05:54', '2023-06-26 14:07:25', NULL),
(74, 1, 'W.4-UM.01.01-0359', '', 'Permintaan Data Anak Berkewarganegaraan Ganda ', 'Kantor Wilayah Riau', 'Siapkan Data Tersebut', 'no', 'Segera ', 'surat masuk', '2', 'siap', '2023-05-03', '2023-06-26 14:59:16', '2023-06-26 14:59:23', NULL),
(75, 1, '000/855/DISDUKCAPIL', '', 'Pemberitahuan Perpindahan Layanan Dukcapil Ke MPP', 'Walikota Dumai', 'Exfail Pemberitahuan', 'no', 'Umum', 'surat masuk', '2', 'siap', '2023-05-16', '2023-06-26 15:05:28', '2023-06-26 15:06:16', NULL),
(76, 1, '800/873/BKPSDM', '', 'Pedoman Pembinaan dan Pengawasan Netralitas Pegawai Pemerintah Non Pegawai Negri Dalam Penyelenggaraan Pemilihan Umum dan Pemilihan', 'Walikota Dumai', 'Evaluasi Keseluruh ASN&TKPK', 'no', 'Penting', 'surat masuk', '2', 'siap', '2023-05-29', '2023-06-26 15:12:45', '2023-06-26 15:12:51', NULL),
(77, 1, '402/150/DINSOSPM-PM', '', 'Penggatian Pengurus LKK yang Mendaftar Sebagai Calon Legislatif', 'Dinas Sosial Dan Pemberdayaan Masyarakat', 'Edarkan ke lurah-lurah tentang hal tsb', 'no', 'Biasa', 'surat masuk', '2', 'siap', '2023-05-25', '2023-06-26 15:17:30', '2023-06-26 15:17:34', NULL),
(78, 1, '521.1/05.01/DKPP.C.V.2023', '', 'Usulan Kawasan Pertanian Pangan Berkelanjutan(KP2B) Kota Dumai', 'Dinas Ketahanan Pangan Dan Pertanian', 'Arsipkan', 'no', 'Penting', 'surat masuk', '2', 'siap', '2023-05-23', '2023-06-26 15:21:55', '2023-06-26 15:23:01', NULL),
(79, 1, '750/423.1/PEREKO', '', 'Instruksi walikota dumai tentang pelaksanaan sensus pertanian 2023(ST2023) kota dumai', 'Walikota Dumai', 'Arsipkan', 'no', 'Segera ', 'surat masuk', '2', 'siap', '2023-05-31', '2023-06-26 15:27:29', '2023-06-26 15:27:34', NULL),
(80, 1, '70/56/2023', '', 'Penutupan Buku Register Sporadik Kelurahan Sungai Geniot', 'Kel.Sungai Geniot', 'Arsipkan', 'read', 'Segera ', 'surat masuk', '2', 'siap', '2023-06-16', '2023-06-26 15:37:44', '2023-06-28 17:41:08', NULL),
(81, 1, '441/409/2023', '', 'Tentang Kampung Gerakan Masyarakat Hidup Sehat Perdana Dikota Dumai Tahun 2023', 'Walikota Dumai', 'Persiapkan Hal Tsb', 'no', 'Segera ', 'surat masuk', '8', 'siap', '2023-05-16', '2023-06-26 20:32:02', '2023-06-26 20:34:36', NULL),
(83, 1, '524/14.13/DKPP-E.1/V.2023', '', 'Pendataan Ternak Tahun 2023', 'Dinas Ketahanan Pangan Dan Pertanian', 'Sampaikan Surat Ini Ke Lurah-Lurah', 'no', 'Biasa', 'surat masuk', '8', 'siap', '2023-05-31', '2023-06-26 20:43:36', '2023-06-26 20:45:05', NULL),
(84, 1, '005/61/KESBANGPOL', '', 'Permintaan Nama Peserta', 'Badan Kesatuan Bangka Dan Politik Kota Dumai', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '8', 'siap', '2023-06-21', '2023-06-26 20:48:48', '2023-06-26 20:49:31', NULL),
(85, 1, '005.108/DISPERKIMTAN-KP', '', 'UNDANGAN', 'Dinas Perumahan Rakyat Kawasan Permukiman Dan Pertahanan', 'Arsipkan', 'no', 'Penting', 'surat masuk', '8', '', '2023-06-06', '2023-06-26 20:52:50', '2023-06-26 20:52:50', NULL),
(87, 1, '526.22/77/DKPP-B.2/I.2023', '', 'Permintaan Jadwal Turun Lapangan Tentang Daerah Terdampak Banjir Di Kecamatan Sei Sembilan', 'Dinas Ketahanan Pangan Dan Pertanian', 'Proses Lebih Lanjut', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-01-10', '2023-06-26 21:28:50', '2023-06-26 21:29:29', NULL),
(88, 1, '048/110/SATPOLPP-SDA', '', 'Permintaan Pengisian Data', 'Satpol pp', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-02-06', '2023-06-26 21:32:42', '2023-06-26 21:34:00', NULL),
(89, 1, '01/B/P.GR/FPM/LG/I/2023', '', 'Pemberitahuan Kegiatan Gotong Royong', 'Forum Masyarakat Lubuk Gaung', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-01-17', '2023-06-26 21:37:00', '2023-06-26 21:37:45', NULL),
(90, 1, '300/TRANTIB-BSA/I/2023/08', '', 'Mohon Bantuan Keamanan', 'Kel. Bangsal Aceh', 'Disesuaikan Tembusan Ini', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-01-27', '2023-06-26 21:40:59', '2023-06-26 21:41:25', NULL),
(91, 1, '524/TRANTIB-BB/11', '', 'Himbauan', 'Kel. Basilam Baru', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-01-02', '2023-06-26 21:44:15', '2023-06-26 21:44:56', NULL),
(92, 1, '360/044/BPBD', '', 'Permintaan Data Personal Dan Data Sarpas (Alat Kelengkapan Pendukung Pemadam Kebakaran) Tahun 2023', 'Badan Penanggulangan Bencana Daerah', 'Arsipkan', 'no', 'Biasa', 'surat masuk', '11', 'siap', '2023-02-21', '2023-06-26 21:49:03', '2023-06-26 21:50:03', NULL),
(93, 1, '2552/DISHUB/551.1', '', 'Surat Edaran Larangan Operasional Kendaraan Angkutan Barang Selama Bulan Suci Ramadan Dan Hari Raya Idul Fitri 1444 H/2023 Di Wilayah Kota Dumai', 'Walikota Dumai', 'Arsipkan', 'read', 'Penting', 'surat masuk', '11', 'siap', '2023-03-24', '2023-06-26 21:55:33', '2023-06-28 16:55:21', NULL),
(94, 1, '048/061/DISDUKCAPIL/SEKR/', '', 'Balasan Permintaan Data', 'Dinas Kependudukan Dan Pencatatan Sipil', 'Arsipkan', 'read', 'Penting', 'surat masuk', '8', 'siap', '2023-06-09', '2023-06-26 22:06:10', '2023-06-26 22:16:00', NULL),
(102, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:01', '2023-06-27 06:15:01', NULL),
(103, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:06', '2023-06-27 06:15:06', NULL),
(104, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:17', '2023-06-27 06:15:17', NULL),
(105, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(106, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(107, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:18', '2023-06-27 06:15:18', NULL),
(108, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(109, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(110, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(111, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(112, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:19', '2023-06-27 06:15:19', NULL),
(113, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:35', '2023-06-27 06:15:35', NULL),
(114, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(115, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(116, 1, '321', '', 'surat', 'admin', '', 'no', 'Biasa', 'surat keluar', '9', '', '2023-06-27', '2023-06-27 06:15:36', '2023-06-27 06:15:36', NULL),
(119, 1, '005.108/DISPERKIMTAN-KP', '', 'UNDANGAN', 'Dinas Perumahan Rakyat Kawasan Permukiman Dan Pertahanan', 'Arsipkan', 'read', 'Penting', 'surat masuk', '8', 'siap', '2023-06-06', '2023-06-27 10:39:25', '2023-06-28 16:40:11', NULL),
(120, 9, '450/302/KEC-SS-KESSOS', '', 'Dispensansi Izin Nikah A.n. RIAN ARIANTO/NURUL ERLIYANA', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-05-17', '2023-06-27 11:17:12', '2023-06-27 11:17:13', NULL),
(121, 9, '450/296/KEC-SS-KESSOS', '', 'Rekomendasi Pendaftaran, Penerbitan No Registrasi Musholla AL-Iklas Kel.Sungai Geniot', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-09', '2023-06-27 11:24:05', '2023-06-27 11:24:14', NULL),
(122, 9, '450/297/KEC-SS-KESSOOS', '', 'Rekomendasi Pendaftaran, penerbitan No Registrasi Musholla Nurul Iman Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-09', '2023-06-27 11:36:10', '2023-06-27 11:36:13', NULL),
(123, 9, '450/303/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n ZUBAIDAH / TARMIZI', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-05-17', '2023-06-27 14:29:27', '2023-06-27 14:29:29', NULL),
(124, 9, '450/306/KEC-SS-KESSOS', '', 'Rekomendasi Pendaftaran, penerbitan No Registrasi Masjid Darussalam Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-26', '2023-06-27 14:37:13', '2023-06-27 14:37:35', NULL),
(125, 9, '450/307/KEC-SS-KESSOS', '', 'Rekomendasi pendaftaran penerbitan No Registrasi masjid Al-Muallamah Kel. Tanjung Penyembal', 'Seksi Kesejahteraan Sosial ', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-26', '2023-06-27 14:42:37', '2023-06-29 19:22:50', NULL),
(126, 9, '420/310/KEC-SS-KESSOS', '', 'Rekomendasi Izin Operasional Yayasan TK AL-DZAKI Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-30', '2023-06-27 20:12:50', '2023-06-27 20:14:04', NULL),
(127, 9, '420/311/KEC-SS-KESSOS', '', 'Rekomendasi Operasional Yayasan MDA AL-DZAKI Kel. Sungai Geniot', 'Seksi Kesejahteraan Sosial', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-30', '2023-06-27 20:17:56', '2023-06-27 20:18:16', NULL),
(128, 9, '450/314/KEC-SS-KESSOS', '', 'Dispensasi Izin Nkah A.n. RUDI EFFENDI/ ERNI SARIMAH', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-06-06', '2023-06-27 20:23:05', '2023-06-27 20:23:28', NULL),
(129, 9, '300/162/KEC-SS-TRANTIB', '', 'Laporan Pertambangan Dan Penampungan Tanah Tanpa Izin', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-08', '2023-06-27 20:27:21', '2023-06-27 20:27:40', NULL),
(130, 9, '450/319/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n SAMSUDDIN/SITI HOLISA', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-14', '2023-06-27 20:31:32', '2023-06-27 20:32:22', NULL),
(131, 9, '450/316/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. SARIPUDIN/ SRI ARBAIAH', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-08', '2023-06-27 20:36:03', '2023-06-27 20:36:33', NULL),
(132, 9, '450/317/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. FAKHRONI KHAIRULLAH/ AYIZATNIKA NASUTION', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-08', '2023-06-27 20:39:17', '2023-06-27 20:39:33', NULL),
(133, 9, '450/321/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. RENI JUWITA/ RONALDO', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-06-20', '2023-06-27 20:42:40', '2023-06-27 20:43:03', NULL),
(134, 8, '411/298/KEC-SS-PM', '', 'Permohonan Peminjaman Ember atau Tong', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-12', '2023-06-28 16:33:00', '2023-06-28 16:33:19', NULL),
(135, 8, '411/299/KEC-SS-PM', '', 'Permohonan Bantuan Ember atau Tong dan Benih Ikan', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-12', '2023-06-28 16:35:49', '2023-06-28 16:35:56', NULL),
(136, 8, '005/290/KEC-SS-PM', '', 'Undangan', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-04-12', '2023-06-28 16:37:21', '2023-06-28 16:37:24', NULL),
(137, 8, '402/294/KEC-SS-PM', '', 'Pengiriman Peserta Lomba kelurahan Tahun 2023', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-02', '2023-06-28 16:39:52', '2023-06-28 16:39:57', NULL),
(138, 8, '411/301/KEC-SS-PM', '', 'Permohonan Bantuan Bibit Tanaman Obat-obatan (Toga)', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-12', '2023-06-28 16:42:06', '2023-06-28 16:42:10', NULL),
(139, 8, '411/304/KEC-SS-PM', '', 'Bantuan Kue Kotak', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-24', '2023-06-28 16:44:30', '2023-06-28 16:44:40', NULL),
(140, 8, '440/309/KEC-SS-PM', '', 'Undangan', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-29', '2023-06-28 16:46:32', '2023-06-28 16:46:38', NULL),
(141, 8, '470/312/KEC-SS-PM', '', 'Permintaan Data', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-06-06', '2023-06-28 16:49:02', '2023-06-28 16:49:11', NULL),
(142, 8, '600/150/KEC-SS-PM', '', 'HIMBAUAN', 'Seksi Pemberdayaan Masyarakat', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-06', '2023-06-28 16:50:47', '2023-06-28 16:51:17', NULL),
(143, 11, '300/137/KEC-SS-TRANTIB', '', 'Permintaan laporan bulanan ketertiban umum dan ketentraman masyarakat kelurahan', 'Seksi Trantib', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-09', '2023-06-28 16:57:41', '2023-06-28 16:57:43', NULL),
(144, 11, '32/300/KEC-SS-TRANTIB', '', 'UNDANGAN', 'Seksi Trantib', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-08', '2023-06-28 17:03:12', '2023-06-28 17:03:15', NULL),
(145, 11, '300/62/KEC-SS-TRANTIB', '', 'Laporan Pertambangan Dan Penampungan Tanah Tanpa izin', 'Seksi Trantib', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-08', '2023-06-28 17:13:36', '2023-06-28 17:13:40', NULL),
(146, 11, '300172/KEC-SS-TRANTIB', '', 'Laporan Kamtibnas', 'Seksi Trantib', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-05-13', '2023-06-28 17:15:03', '2023-06-28 17:15:13', NULL),
(147, 11, '300/174/KEC-SS-TRANTIB', '', 'Laporan Kamtibmas', 'Seksi Trantib', '', 'no', 'Perintah', 'surat keluar', '1', 'siap', '2023-05-10', '2023-06-28 17:17:09', '2023-06-28 17:17:18', NULL),
(148, 2, '590/151/KEC-SS-PEM', '', 'Larangan Penerbitan Sporadik', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-24', '2023-06-28 17:22:51', '2023-06-28 17:22:55', NULL),
(149, 2, '402/161/KEC-SS-PEM', '', 'Penggantian pengurus LKK yang mendaftar sebagai calon legislatif', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-29', '2023-06-28 17:25:23', '2023-06-28 17:25:26', NULL),
(150, 2, '100/179/KEC-SS-PEM', '', 'Pendataan Akta Kelahiran', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-26', '2023-06-28 17:28:12', '2023-06-28 17:28:14', NULL),
(151, 2, '590/160/KEC-SS-PEM', '', 'Penutupan Buku Register Sporadik', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-07', '2023-06-28 17:31:42', '2023-06-28 17:32:03', NULL),
(152, 2, '590/160/KEC-SS-PEM', '', 'Penutupan Buku Register Sporadik', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-07', '2023-06-28 17:34:38', '2023-06-28 17:34:39', NULL),
(153, 2, '470/158/KEC-SS-PEM', '', 'Permintaan Blanko Kartu Tanda Penduduk(KTP)', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-05', '2023-06-28 17:37:00', '2023-06-28 17:37:02', NULL),
(154, 2, '100/157/KEC-SS-PEM', '', 'Permintaan Ribbon Printer KTP Elektronik', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-06-05', '2023-06-28 17:39:13', '2023-06-28 17:39:20', NULL),
(155, 9, '450/229/KEC-SS-KESSOS', '', 'Rekomendasi Pendaftaran dan Penerbitan No Registrasi Musholla Al-Istiqomah', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-01-31', '2023-06-29 16:38:13', '2023-06-29 16:38:16', NULL),
(156, 9, '450/226/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. ARIP SAHPUTRA/ MEGAWATI', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-01-24', '2023-06-29 16:41:00', '2023-06-29 16:41:07', NULL),
(157, 9, '450/227/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. SARJU/MISWATI', 'Seksi Kesejahteraan Sosial', '', 'no', 'Segera', 'surat keluar', '1', 'siap', '2023-01-24', '2023-06-29 16:43:36', '2023-06-29 16:43:46', NULL),
(158, 9, '450/228/KEC-SS-KESSOS', '', 'Rekomendasi Penerbitan No Registrasi Musholla Al-Muhajirin', 'Seksi Kesejahteraan Sosial', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-01-31', '2023-06-29 16:46:14', '2023-06-29 16:46:20', NULL),
(159, 14, '862/22/KEC-SS-SET', '', 'Rekomendasi Penerbitan Surat Tidak Pernah dan atau Tidak Sedang Menjalani Proses Hukum', 'Sub Bagian TU', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-01-01', '2023-06-29 16:54:44', '2023-06-29 16:54:49', NULL),
(160, 14, '861/24/KEC-SS-SET', '', 'Pengiriman Berkas Persyaratan Kenaikan Pangkat Periode April Tahun 2023, Kecamatan Sungai Sembilan an. Eva Susanti', 'Sub Bagian TU', '', 'no', 'Pengantar', 'surat keluar', '1', 'siap', '2023-01-07', '2023-06-29 17:00:32', '2023-06-29 17:00:39', NULL),
(161, 14, '944/41/KEC-SS-SET', '', 'Usulan Calon Pengurus Barang Pembantu Kelurahan SKPD TA.2023', 'Sub Bagian TU', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-02-16', '2023-06-29 17:04:00', '2023-06-29 17:04:06', NULL),
(162, 14, '800/55/KEC-SS-SET', '', 'Pengiriman Berita Acara Serah Terima Barang, Dan Usulan Penghapusan Barang Milik Daerah', 'Sub Bagian TU', '', 'no', 'Pengantar', 'surat keluar', '1', 'siap', '2023-03-02', '2023-06-29 17:06:43', '2023-06-29 17:06:45', NULL),
(163, 14, '400/66/KEC-SS-SET', '', 'Permohonan Bantuan', 'Sub Bagian TU', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-03-21', '2023-06-29 17:09:16', '2023-07-12 10:23:04', NULL),
(164, 14, '560/38/KEC-SS-SET', '', 'Rekomendasi Tenaga Kerja', 'Sub Bagian TU', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-02-10', '2023-06-29 17:17:14', '2023-06-29 17:17:21', NULL),
(165, 14, '862/220/KEC-SS-SET', '', 'Surat Panggilan I', 'Sub Bagian TU', '', 'no', 'Penting', 'surat keluar', '1', 'siap', '2023-01-04', '2023-06-29 17:21:47', '2023-06-29 17:21:57', NULL),
(166, 1, '948/KPT/I/2019', '', 'Berdaasarkan Izin Kementristekdikti', 'Staf Kecamatan Sungai Sembilan', 'Mohon Diperiksa', 'read', 'Biasa', 'surat masuk', '14', 'siap', '2023-07-01', '2023-07-01 09:32:33', '2023-07-01 09:35:45', NULL),
(168, 2, '100/SS-PEM/122', '', 'Permintaan Register Sporadik 3 Tahun Terakhir', 'Seksi Pemerintahan ', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-04-06', '2023-07-06 10:04:09', '2023-07-06 10:04:29', NULL),
(169, 2, '183.1/126/KEC-SS/PEM', '', 'Mohon Bantuan Hukum ', 'Seksi Pemerintahan', '', 'no', 'Biasa', 'surat keluar', '1', '', '2023-05-02', '2023-07-06 10:11:39', '2023-07-06 10:11:39', NULL),
(170, 10, '500/308/KEC-SS-EKBANG', '', 'Permohonan Bantuan Cat Minyak', 'Seksi Ekonomi Dan Pembangunan', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-26', '2023-07-06 11:17:25', '2023-07-06 11:17:26', NULL),
(171, 10, '01/RT 04/LG-SS/IV/2023', '', 'Permohonan bantuan perbaikan turap dengan ukuran 10 m X 2,10 m X 0,20 M', 'Seksi Ekonomi Dan Pembangunan ', '', 'no', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-03', '2023-07-06 14:09:31', '2023-07-06 14:09:35', NULL),
(172, 2, '183.1/126/KEC-SS/PEM', '', 'Mohon Bantuan Hukum ', 'Seksi Pemerintahan', '', 'read', 'Biasa', 'surat keluar', '1', 'siap', '2023-05-02', '2023-07-06 14:11:25', '2023-07-06 14:14:28', NULL),
(173, 9, '450/331/KEC-SS-KESSOS', '', 'UNDANGAN', 'Seksi Kesejahteraan Sosial ', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-05', '2023-07-07 14:07:32', '2023-07-11 13:19:14', NULL),
(174, 9, '450/340/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. SAFRIL/ LESTARI ', 'Seksi Kesejahteraan Sosial ', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-06', '2023-07-07 14:41:14', '2023-07-11 13:18:49', NULL),
(176, 9, '460/221/KEC-SS-KESSOS', '', 'Jadwal Turun Lapangan Tentang Daerah Terdampak Banjir Dikecamatan Sungai Sembilan', 'Seksi Kesejahteraan Sosial', '', 'no', 'Umum', 'surat keluar', '1', 'siap', '2023-01-13', '2023-07-12 09:58:59', '2023-07-12 09:59:17', NULL),
(177, 9, '450/333/KEC-SS-KESSOS', '', 'Dispensasi Izin Nikah A.n. DEDEK ISKANDAR/NUR QOMARIYAH', 'Seksi Kesejahteraan Sosial', '', 'read', 'Segera', 'surat keluar', '1', 'siap', '2023-07-05', '2023-07-12 10:02:14', '2023-07-12 10:15:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `profile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `rules` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `profile`, `email`, `username`, `fullname`, `nohp`, `location`, `jabatan`, `rules`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'admin@gmail.com', 'admin', 'Eva Susanti ', '085265607038', 'Lubuk Gaung', 'Kasubag Tata Usaha', 'admin', '$2y$10$/m2rNouRSu5UlxzkCLYHC.GXaZ9WnHi/AbF4eAs3L2TVkoUEpacW6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-06-25 08:49:51', NULL),
(2, '', 'user@gmail.com', 'Seksi Pemerintahan', 'Ismail, S.Sos', '081345678901', 'Lubuk Gaung', 'Kasi Pem', 'user', '$2y$10$/m2rNouRSu5UlxzkCLYHC.GXaZ9WnHi/AbF4eAs3L2TVkoUEpacW6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-06-28 17:19:47', NULL),
(8, '', 'stri3112@gmail.com', 'Seksi Pemberdayaan Masyarakat ', 'W.Imelda S.Sos', '085374440728', 'Lubuk Gaung', 'Kasi PM', 'user', '$2y$10$lPy4rYEjZaUMPLRRMWtwCuU0u9Gj3odLOrrT5xFncWu/t3GVr4P0C', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:22:12', '2023-06-25 19:14:47', NULL),
(9, '', 'tris95301@gmail.com', 'Seksi Kesejahteraan Sosial ', 'Fauzan Gusman AM.S.TP', '085265271528', 'Lubuk Gaung', 'Kasi Kessos', 'user', '$2y$10$A6LnWCcIVA.NUXOHOu9Xoe0rMNTok/u7SYaR3vSfVoW.pk/EJVVtS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:28:34', '2023-06-25 19:14:46', NULL),
(10, '', 'tri653140@gmail.com', 'Seksi Ekonomi Dan Pembangunan ', 'Muhammad Dino Lubis, S.Sos', '081268082020', 'Lubuk Gaung', 'Kasi Ekbang', 'user', '$2y$10$vDB5IhQQNCyCnycrTXpVneA4PIEoNIeNQ8/hkEjaZypSTEAwkP1d6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:32:31', '2023-06-25 19:14:13', NULL),
(11, '', 'sungaikantorcamat@gmail.com', 'Seksi TRANTIB ', 'Ahmad Maulana, S.Sy', '085365254543', 'Lubuk Gaung', 'Kasi Trantib', '', '$2y$10$bYhwM8fTB7zbTs.Zpteqle9ORqfgJiuII7XHrg5X9XcgjmmtWOaVe', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:36:56', '2023-06-25 11:14:05', NULL),
(12, '', 'lyssahayani43@gmail.com', 'Sub Bagian Keuangan', 'Jefri Cahyadi, S.Sos', '085365254543', 'Lubuk Gaung', 'Sub Bagian Keuangan', '', '$2y$10$xupVlKNagOOTndsMV2B7qOuMDCikI4ZNju8XVDuv0mfCpFnF1cevO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:39:33', '2023-06-25 11:24:28', NULL),
(14, '', 'dedesantika1995@gmail.com', 'Sub Bagian TU ', 'Staf Kecamatan Sungai Sembiilan', '082361933243', 'Lubuk Gaung', 'Sub Bagian TU', 'user', '$2y$10$e54BpjT877fPt6EO59i0v.NpKx97MpY6NXmrfDs.f.DEFUHPmrcxK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 15:58:14', '2023-06-25 17:14:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id_archive`);

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `count_surat`
--
ALTER TABLE `count_surat`
  ADD PRIMARY KEY (`id_count`);

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id_document`);

--
-- Indeks untuk tabel `foldername`
--
ALTER TABLE `foldername`
  ADD PRIMARY KEY (`id_foldername`);

--
-- Indeks untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`id_jenissurat`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`);

--
-- Indeks untuk tabel `recent_activity`
--
ALTER TABLE `recent_activity`
  ADD PRIMARY KEY (`id_recent`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `archive`
--
ALTER TABLE `archive`
  MODIFY `id_archive` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `count_surat`
--
ALTER TABLE `count_surat`
  MODIFY `id_count` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `id_document` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT untuk tabel `foldername`
--
ALTER TABLE `foldername`
  MODIFY `id_foldername` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `id_jenissurat` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `recent_activity`
--
ALTER TABLE `recent_activity`
  MODIFY `id_recent` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
