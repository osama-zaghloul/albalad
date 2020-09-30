-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 12:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eltamiuz_albalad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$shZb8z5Cnvtumy7qH6dQeeARmolzQpUuzRz0z9AIxciMj9LjB9IW6', '625.jpg', '2019-12-25 18:32:13', '2020-04-17 21:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`) VALUES
(5, 'الرياض', ''),
(6, 'مكة المكرمة', '');

-- --------------------------------------------------------

--
-- Table structure for table `cuttings`
--

CREATE TABLE `cuttings` (
  `id` int(11) NOT NULL,
  `cutting_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuttings`
--

INSERT INTO `cuttings` (`id`, `cutting_name`) VALUES
(8, 'بدون تقطيع'),
(9, 'تقطيع تفصيل'),
(12, 'تقطيع أرباع'),
(13, 'تقطيع ثلاجه'),
(14, 'تقطيع مفطح');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `cities_id`) VALUES
(4, 'حي حمام الدرعية', 5),
(5, 'حي أم سليم', 5),
(6, 'حي الازدهار', 5),
(7, 'حي الزاهر', 6),
(8, 'حي العوالي', 6),
(11, 'حي نمار', 5),
(12, 'حي الفلاح', 5),
(13, 'حي الروضة', 5),
(14, 'حي النسيم', 5),
(15, 'حي النظيم', 5),
(16, 'حي السلي', 5),
(17, 'حي القدس', 5),
(18, 'حي الحمراء', 5),
(19, 'حي غرناطة', 5),
(20, 'حي النهضة', 5),
(21, 'حي الخليج', 5),
(22, 'حي المغرزات', 5),
(23, 'حي الجزيرة', 5),
(24, 'حي الرواد', 5),
(25, 'حي الربوة', 5),
(26, 'حي اشبيليا', 5),
(27, 'حي اليرموك', 5),
(28, 'حي قرطبة', 5),
(29, 'حي الريان', 5),
(30, 'حي اشبيليه', 5),
(31, 'حي الشهداء', 5),
(32, 'حي الدرعية', 5),
(33, 'حي البديعة', 5),
(34, 'حي ظهرة البديعة', 5),
(35, 'حي عرقة', 5),
(36, 'حي لبن', 5),
(37, 'حي السويدي', 5),
(38, 'حي شبرا', 5),
(39, 'حي العريجاء', 5),
(40, 'جامعة الملك سعود', 5),
(41, 'حي الملقا', 5),
(42, 'حي الصحافه', 5),
(43, 'حي النخيل', 5),
(44, 'حي الياسمين', 5),
(45, 'حي النفل', 5),
(46, 'حي الواحة', 5),
(47, 'حي المرسلات', 5),
(48, 'حي الورود', 5),
(49, 'حي المروج', 5),
(50, 'حي الغدير', 5),
(51, 'حي الربيع', 5),
(52, 'حي الرائد', 5),
(53, 'حي العقيق', 5),
(54, 'حي النخيل الغربي', 5),
(55, 'حي النخيل الشرقي', 5),
(56, 'حي الشفاء', 5),
(57, 'حي بدر', 5),
(58, 'حي المروة', 5),
(59, 'حي الفواز', 5),
(60, 'حي الحزم', 5),
(61, 'حي العزيزية', 5),
(62, 'حي الدار البيضاء', 5),
(63, 'حي المنصورة', 5),
(64, 'حي الدريهمية', 5),
(65, 'حي اليمامة', 5),
(66, 'حي بن تركي', 5),
(67, 'السويدي الغربي', 5),
(68, 'حي الشميسي', 5),
(69, 'حي الحاير', 5),
(70, 'حي الشعلان', 5),
(71, 'حي المربع', 5),
(72, 'حي المرقب', 5),
(73, 'حي البطحاء', 5),
(74, 'حي الديرة', 5),
(75, 'حي الصالحية', 5),
(76, 'حي الملز', 5),
(77, 'حي الفاخرية', 5),
(78, 'حي منفوحه', 5),
(79, 'حي الموسى', 5);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `artitle` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `suspensed` tinyint(4) NOT NULL DEFAULT 0,
  `details` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `artitle`, `price`, `suspensed`, `details`, `image`, `created_at`) VALUES
(2, 'روماني', 1200, 0, '<p>روماني</p>', '', '2020-06-25 01:22:44'),
(4, 'تيوس', 1500, 0, '<p>تيوس</p>', '', '2020-06-25 01:21:52'),
(5, 'سواكني', 1300, 0, '<p>خروف سواكني</p>', '', '2020-04-25 20:43:03'),
(6, 'حري', 1200, 0, '<p>حري</p>', '', '2020-04-30 19:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `firebase_token` text DEFAULT NULL,
  `forgetcode` varchar(200) DEFAULT NULL,
  `suspensed` tinyint(4) NOT NULL DEFAULT 0,
  `user_hash` text CHARACTER SET utf8 DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `mobile`, `phone`, `address`, `password`, `firebase_token`, `forgetcode`, `suspensed`, `user_hash`, `remember_token`) VALUES
(328, 'osam', '11111', '11111', NULL, '$2y$10$Ys.6gQVaiNWzk7sKJUk6Yuckbaxy2EQgESjnQxXyjIzWgibqWPO1a', '$2y$10$fyWdG/YDTHNWr/uTYoQuV.ffSZX9pNFOfpcSpmPoKxc26C30XYCv2', '4609', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` varchar(200) COLLATE utf8_estonian_ci NOT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notification`, `readed`, `created_at`) VALUES
(308, 328, 'تم تسجيل حسابك بنجاح', 1, '2020-09-21 19:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `deliver` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `total`, `status`, `paid`, `name`, `phone`, `mobile`, `address`, `deliver`, `date`, `time`, `notes`, `created_at`) VALUES
(108, '28062020698', 300, 4506, 0, 1, '', '', '', '', '', '', '', NULL, '2020-06-28 19:52:05'),
(109, '28062020828', 300, 3756, 0, 0, '', '', '', '', '', '', '', NULL, '2020-06-28 19:53:22'),
(110, '28062020848', 301, 953, 2, 2, '', '', '', '', '', '', '', NULL, '2020-06-28 20:44:29'),
(111, '28062020349', 302, 1100, 1, 2, '', '', '', '', '', '', '', NULL, '2020-06-28 20:48:23'),
(112, '29062020196', 301, 1453, 2, 0, '', '', '', '', '', '', '', NULL, '2020-06-29 08:24:14'),
(113, '2906202068', 302, 1103, 2, 1, '', '', '', '', '', '', '', NULL, '2020-06-29 08:30:40'),
(114, '29062020319', 301, 953, 2, 1, '', '', '', '', '', '', '', NULL, '2020-06-29 13:13:09'),
(115, '29062020748', 304, 1903, 0, 0, '', '', '', '', '', '', '', NULL, '2020-06-29 20:17:07'),
(121, '02072020743', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 14:36:42'),
(122, '02072020256', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 14:37:51'),
(123, '02072020803', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:09:37'),
(124, '02072020370', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:10:45'),
(125, '02072020718', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:10:50'),
(126, '02072020148', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:13:46'),
(127, '02072020100', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:13:52'),
(128, '02072020414', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:16:58'),
(129, '02072020416', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:19:47'),
(130, '02072020928', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:19:53'),
(131, '02072020234', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:24:01'),
(132, '02072020864', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:24:06'),
(133, '0207202084', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:34:28'),
(134, '02072020633', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:34:34'),
(135, '02072020986', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:36:42'),
(136, '02072020121', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:37:43'),
(137, '02072020381', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:37:49'),
(138, '02072020308', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:41:30'),
(139, '02072020964', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:43:55'),
(140, '02072020594', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:46:16'),
(141, '02072020898', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:46:22'),
(142, '02072020686', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:48:01'),
(143, '02072020102', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:51:33'),
(144, '02072020437', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 15:51:55'),
(145, '02072020369', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:00:57'),
(146, '02072020758', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:01:20'),
(147, '02072020912', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:03:48'),
(148, '02072020997', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:05:44'),
(149, '02072020602', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:05:47'),
(150, '02072020830', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:06:02'),
(151, '0207202074', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:06:38'),
(152, '02072020249', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:07:43'),
(153, '0207202021', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:08:34'),
(154, '0207202049', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:08:39'),
(155, '02072020515', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:09:03'),
(156, '02072020864', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:09:30'),
(157, '02072020224', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:13:10'),
(158, '02072020469', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:15:25'),
(159, '02072020598', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:15:33'),
(160, '02072020520', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:15:35'),
(161, '02072020266', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:16:43'),
(162, '02072020150', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:16:51'),
(163, '02072020666', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:33:49'),
(164, '02072020610', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:38:45'),
(165, '02072020851', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:39:34'),
(166, '02072020168', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:40:22'),
(167, '02072020852', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:42:28'),
(168, '02072020517', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:42:36'),
(169, '0207202096', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:50:30'),
(170, '02072020671', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:52:01'),
(171, '02072020930', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:52:24'),
(172, '02072020367', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:52:28'),
(173, '0207202069', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:52:31'),
(174, '02072020516', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:53:29'),
(175, '0207202048', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:53:32'),
(176, '02072020716', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:53:49'),
(177, '02072020195', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:53:52'),
(178, '02072020740', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 16:56:05'),
(179, '02072020131', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 17:00:22'),
(180, '02072020403', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 17:02:29'),
(181, '02072020473', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-02 17:03:35'),
(182, '04072020816', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 10:54:08'),
(183, '040720203', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 10:54:26'),
(184, '04072020946', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 10:54:31'),
(185, '04072020460', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 10:54:39'),
(186, '04072020337', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 10:54:47'),
(187, '04072020313', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 18:07:45'),
(188, '04072020776', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 18:08:09'),
(189, '04072020366', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 18:08:46'),
(190, '04072020660', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 18:09:11'),
(191, '04072020370', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 18:09:16'),
(192, '0407202099', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 20:56:56'),
(193, '04072020850', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 20:57:43'),
(194, '0407202035', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 20:58:03'),
(195, '04072020332', 293, 100, 0, 0, '', '', '', '', '', '', '', NULL, '2020-07-04 20:58:46'),
(196, '21092020974', 328, 100, 0, 0, 'mmmm', '11111', '111', 'wwww', 'توصيل للبيت', '5/12/2020', 'من العصر للمغرب', 'تفااااااااااااااااصيل', '2020-09-21 20:39:20'),
(197, '21092020307', 328, 100, 0, 0, 'mmmm', '11111', '111', 'wwww', 'توصيل للبيت', '5/12/2020', 'من العصر للمغرب', 'تفااااااااااااااااصيل', '2020-09-21 20:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `cutting_id` int(11) NOT NULL,
  `weight_id` int(11) DEFAULT NULL,
  `skin` tinyint(4) NOT NULL,
  `packaging` tinyint(4) NOT NULL,
  `minced` int(11) NOT NULL,
  `bowels` int(11) NOT NULL,
  `moqalqal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `qty`, `price`, `cutting_id`, `weight_id`, `skin`, `packaging`, `minced`, `bowels`, `moqalqal`) VALUES
(268, 196, 50, 1, 3250, 11, 13, 0, 1, 5, 7, 8),
(269, 196, 50, 1, 3250, 11, 13, 0, 1, 5, 7, 8),
(270, 197, 50, 1, 3250, 11, 13, 0, 1, 5, 7, 8),
(271, 197, 50, 1, 3250, 11, 13, 0, 1, 5, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `arprivacy` longtext NOT NULL,
  `arabout` longtext NOT NULL,
  `arconditions` longtext DEFAULT NULL,
  `logo` varchar(200) NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instgram` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `snapchat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `arprivacy`, `arabout`, `arconditions`, `logo`, `mobile`, `phone`, `instgram`, `snapchat`, `twitter`, `whatsapp`, `website`) VALUES
(2, 'fff', 'fff', 'ffff', '9571.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `bill_number` varchar(200) CHARACTER SET latin1 NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) CHARACTER SET latin1 NOT NULL,
  `image` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weights`
--

CREATE TABLE `weights` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `weight_name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weights`
--

INSERT INTO `weights` (`id`, `item_id`, `price`, `weight_name`) VALUES
(2, 6, 1250, 'حري صغير من 12 الي 14 كيلو'),
(3, 6, 1350, 'حري وسط من 15 الي 18 كيلو'),
(4, 6, 1480, 'حري كبير وزن 20 – 23 كيلو'),
(5, 4, 1150, 'تيس من 14 الي 17 كيلو'),
(6, 5, 1100, 'حجم وسط من 15 الي 18 كيلو'),
(7, 5, 1200, 'حجم كبير من 18 الي 22 كيلو'),
(8, 2, 1150, 'روماني وسط من 15 الي 18 كيلو'),
(9, 6, 1000, 'هرفي لبنى وزن ٨ الى ١٠ كيلو');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuttings`
--
ALTER TABLE `cuttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cuttings`
--
ALTER TABLE `cuttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
