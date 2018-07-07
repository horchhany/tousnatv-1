-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2018 at 10:27 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-2+ubuntu16.04.1+deb.sury.org+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `career` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `admins`
--

TRUNCATE TABLE `admins`;
--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `username`, `email`, `phonenumber`, `address`, `career`, `profile_pic`, `bio`, `is_active`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ro', 'vinei', 'rovinei', 'ro.vinei@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1, '$2y$10$ec4wsuKAKDrnQNgIsRkwNeG9jtFXVxVaTzh1WKiEFVMOMh4aw57nK', '7iNuOfOhkDL9mKSZOtY9sQ76JUtU3pqiPBsvDCj2BgswUSfHai2ETcecc5YB', NULL, '2017-06-16 08:18:58', '2017-06-16 08:18:58'),
(2, 'john', 'doe', 'john doe', 'theara@gmail.com', NULL, NULL, NULL, 'http://127.0.0.1:8000/storage/uploads/images/GD1_large.jpg', NULL, 1, '$2y$10$BEulsxzzgDLaeDdueRyo1eMVrQz2HMQXFJbaszxweZWwozhfZLl1C', 'DCTbIeyrcjNwAnw2RTNOUpUXyBGI3HNNo9uU3UbKyQfi5sPiYltezHcyWMPM', NULL, '2017-07-16 04:21:19', '2017-07-16 04:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_department`
--

CREATE TABLE `admin_department` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `admin_department`
--

TRUNCATE TABLE `admin_department`;
-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `authors`
--

TRUNCATE TABLE `authors`;
--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `username`, `email`, `phone`, `career`, `address`, `bio`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'សុខ ជំនោរ', 'sokchomnor@gmail.com', '070461481', 'Web Developer', 'ស្ថិតក្នុងទីក្រុងរណប Garden City ភូមិព្រែកតារ័ត្ន សង្កាត់ព្រែកតាសេក ខណ្ឌជ្រោយចង្វា រាជធានីភ្នំពេញ', 'កវីម្ចាស់ស្ទឹងសង្កែ គង្គ ប៊ុនឈឿន កើតនៅថ្ងៃ ១៨ ខែតុលា ឆ្នាំ ១៩៣៩ នៅភូមិចំការសំរោង ឃុំចំការសំរោង ស្រុក បាត់ដំបង ខេត្តបាត់ដំបង ។ ឪពុកឈ្មោះ គង្គ ឈិន(ស្រុកកំណើតនៅ ខេត្តតាកែវ) ម្តាយឈ្មោះ ម៉រ ភឹង(បាត់ដំបង) ។ លោកបានចូលប្រឡូកក្នុងវិស័យតែងនិពន្ឋ ចាប់តាំងពីកំឡុងឆ្នាំ ១៩៥៥ មក រហូតបានប្រលងជាប់លេខមួយ ជាលើកដំបូង នៅក្នុង ឱកាសមហោស្រពអក្សរសិល្ប៍មួយ នៅក្នុងខេត្តបាត់ដំបងក្នុងឆ្នាំ១៩៥៧ ក្នុងស្នាដៃឈ្មោះ ” ស្នេហាលុះអវសាន”។\r\n\r\nលោកជាអ្នសរសេរកាសែត អ្នកនិពន្ឋ ប្រលោមលោកពាក្យរាយ ប្រលោមលោកពាក្យកាព្យ កំណាព្យ ចម្រៀង សេណារីយ៉ូភាពយន្ត ជាអ្នកដឹកនាំសម្តែង ជាអ្នកនិពន្ឋបទភ្លេង ដ៏ល្បីឈ្មោះម្នាក់។ ក្រៅពីនេះ លោកក៏ជាអ្នកគូរ គំនូរអប់រំផងដែរ។\r\n\r\nនៅឆ្នាំ ២០០០ លោកជាអ្នកនិពន្ឋជនជាតិខ្មែរ ទី ២ បន្ទាប់ពី ឯកឧត្តម ពេជ្រ ទុំក្រវិល ដែលបានទទួលជ័យលាភី ស្នាដៃតែងនិពន្ឋក្របខ័ណ្ឌអាស៊ាន ។\r\n\r\nលោកត្រូវបាន អ្នកនិពន្ឋខ្មែរទាំងឡាយ ចាត់ទុកជា អ្នកនិពន្ឋដ៏ឆ្នើមម្នាក់របស់កម្ពុជា ដែលបានបន្សល់ទុក នូវស្នាដៃផ្នែកតែងនិពន្ឋ យ៉ាងច្រើនសន្ធឹកសន្ធាប់ មានប្រលោមលោក និង ចម្រៀងសម័យដើម ដែលមាន អធិរាជសំឡេងមាស ស៊ិន ស៊ីសាមុត អ៊ឹង ណារី រស់ សេរីសុទ្ឋា ប៉ែន រ៉ន និង អ្នកចម្រៀងល្បីៗ ជាច្រើនរូបទៀត បានបកស្រាយ ហើយស្នាដៃទាំងអស់នោះ នៅតែ ស្ថិតក្នងមនោសញ្ចេតនា អ្នកអាន និងអ្នកស្តាប់រហូតមកដល់សព្ឋថ្ងៃនេះ ។', 'http://tousnatv.com/storage/uploads/user1-128x128.jpg', '2017-11-24 06:52:20', '2018-07-01 07:26:21'),
(2, 'soklina', 'soklina235@gmail.com', '0965896769', 'staff', 'phnom penh, phnom penh', 'ssssssssssssssssssssssssss', 'http://tousnatv.com/storage/uploads/images/Bill-Gates-11.jpg', '2018-05-28 08:29:45', '2018-05-28 08:29:45'),
(3, 'soklina', 'soklina95@gmail.com', '0965896769', 'staff', 'phnom penh, phnom penh', 'hello', 'http://tousnatv.com/storage/uploads/images/32856048_1762648297153139_6440267618849914880_n.jpg', '2018-05-30 02:25:36', '2018-05-30 02:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `cache`
--

TRUNCATE TABLE `cache`;
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `images`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'សិល្បះកម្សាន្ត', '', NULL, 1, NULL, NULL, '2017-11-16 09:00:56'),
(4, 'អក្សរសាស្ត្រ', '', NULL, 1, NULL, NULL, '2017-11-16 09:01:04'),
(5, 'គំនិតជោគជ័យ', '', NULL, 1, NULL, NULL, '2017-11-16 09:01:18'),
(12, 'ជួបអ្នកនិពន្ធ', '2018-05-29-09-39-46-Untitled-1.png', NULL, 2, NULL, NULL, '2018-05-29 09:39:46'),
(13, 'មន្តទឹកខ្មៅរ', '2018-05-29-09-41-39-9.png', NULL, 2, NULL, NULL, '2018-05-29 09:41:39'),
(17, 'ដើមចម', '2018-05-29-09-43-28-Untitled-2.png', 1, 2, NULL, '2017-11-16 09:13:41', '2018-05-29 09:43:28'),
(18, 'កាលពីព្រេងនាយ', '2018-05-21-08-41-45-5.png', 1, 1, '2018-05-21 09:17:24', '2017-11-16 09:15:51', '2018-05-21 01:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `mediatype_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `category_type`
--

TRUNCATE TABLE `category_type`;
--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`category_id`, `mediatype_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(4, 1, NULL, NULL),
(5, 1, NULL, NULL),
(12, 3, NULL, NULL),
(13, 3, NULL, NULL),
(17, 3, '2017-11-16 09:13:41', '2017-11-16 09:13:41'),
(18, 3, '2017-11-16 09:15:51', '2017-11-16 09:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `departments`
--

TRUNCATE TABLE `departments`;
-- --------------------------------------------------------

--
-- Table structure for table `file_entries`
--

CREATE TABLE `file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `location_url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'public',
  `original_filename` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `file_entries`
--

TRUNCATE TABLE `file_entries`;
-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_01_07_073615_create_tagged_table', 1),
(2, '2014_01_07_073615_create_tags_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_29_073615_create_tag_groups_table', 1),
(6, '2016_06_29_073615_update_tags_table', 1),
(7, '2017_05_23_143404_create_admins_table', 1),
(8, '2017_05_23_143706_create_categories_table', 1),
(9, '2017_05_23_143710_create_category_types_table', 1),
(10, '2017_05_23_143831_create_posts_table', 1),
(11, '2017_05_24_040417_create_departments_table', 1),
(12, '2017_05_24_041219_create_admin_departments_table', 1),
(13, '2017_05_24_044410_create_file_entries_table', 1),
(14, '2017_05_24_044512_create_playlist_series_table', 1),
(15, '2017_05_24_044744_create_post_playlist_series_table', 1),
(16, '2017_05_24_162039_entrust_setup_tables', 1),
(17, '2017_05_25_051441_create_cache_table', 1),
(18, '2017_07_06_040817_add_featured_image_to_post_serie', 2),
(19, '2017_07_06_041359_add_view_count_to_post', 2),
(20, '2017_07_06_051122_add_genre_column_to_post', 3),
(21, '2017_07_06_094521_add_genre_and_category_column_to_playlistserie', 3),
(22, '2017_07_07_074806_add_is_featured_column_to_post', 4),
(23, '2017_07_07_080227_add_is_featured_column_to_series', 4),
(24, '2017_07_25_071529_create_partners_table', 5),
(25, '2017_08_08_071129_create_settings_table', 6),
(26, '2017_11_16_072726_set_on_delete_on_categorie', 7),
(27, '2017_11_16_081126_set_on_delete_on_series', 8),
(28, '2017_11_22_122142_create_authors_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `logo_src` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `external_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `partners`
--

TRUNCATE TABLE `partners`;
--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `company_name`, `logo_src`, `external_url`, `url`, `is_featured`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'សិល្បះកម្សាន្ត', '/storage/thumbs/images/Education-in-Cambodia-1_large.jpg', 'ទើប​ល្បី​សោះ តែតួឯកទេពធីតា​អង្គរ​សង្រ្កាន្ត ជិះ​រថយន្ត​ទំនើប​មិន​ចាញ់​តារា​ជួរ​មុខ', 'https://www.youtube.com/embed/uwui3T1igdE', 1, 1, 2, 2, '2018-05-18 00:32:07', '2018-05-29 06:10:11'),
(6, 'សិល្បះកម្សាន្ត', '/storage/thumbs/images/Portrait-of-beauty-women-isolated-on-white-Stock-Photo.jpg', 'ទើប​ល្បី​សោះ តែតួឯកទេពធីតា​អង្គរ​សង្រ្កាន្ត ជិះ​រថយន្ត​ទំនើប​មិន​ចាញ់​តារា​ជួរ​មុខ', 'https://www.youtube.com/embed/XR_1aPMeAho', 1, 1, 2, 2, '2018-05-18 00:38:50', '2018-05-29 06:09:27'),
(7, 'សិល្បះកម្សាន្ត1', '/storage/thumbs/images/32856048_1762648297153139_6440267618849914880_n.jpg', 'តារា​ស្រី​ម្នាក់​តែង​ខ្លួនដូច Fan Bingbing ចូលរួម​កម្មវិធី Cannes ត្រូវ​គេរិះគន់ព្រោះក្លៀក​ខ្មៅ', 'https://www.youtube.com/embed/HHKOuaw-Jhg', 1, 1, 2, 2, '2018-05-18 00:58:08', '2018-05-29 06:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `permissions`
--

TRUNCATE TABLE `permissions`;
-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `permission_role`
--

TRUNCATE TABLE `permission_role`;
-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `mediatype_id` int(10) UNSIGNED NOT NULL,
  `featured_image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sound_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `posts`
--

TRUNCATE TABLE `posts`;
--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `mediatype_id`, `featured_image`, `sound_url`, `video_url`, `status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `view_count`, `source`, `artist`, `duration`, `genre`, `url`, `is_featured`) VALUES
(555, 'ម្ចាស់ចំការ', '', '<p><span style="font-family: Siemreap, cursive; font-size: 14pt;">មនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាត</span></p>', 2, 1, '/storage/thumbs/images/slider_1.jpg', '', NULL, 1, 1, NULL, NULL, '2017-07-14 12:16:07', '2017-07-14 12:16:07', 0, NULL, NULL, NULL, 'រឿងភាគខ្មែរ', NULL, 1),
(559, 'We are closer', 'we-are-closer', '<p>my best video</p>', 13, 3, '/storage/thumbs/images/0.jpg', '', 'https://www.youtube.com/embed/F9JG6H-xxII', 1, 2, 2, NULL, '2017-11-21 06:35:46', '2017-11-30 04:55:24', 0, NULL, NULL, NULL, 'romantic', NULL, 0),
(560, 'កុំថា អាយុច្រើនស្លៀកម៉ូតនេះមិនសម មើល គង់ សុជាតិ ស្លៀកឡើងឃើញក្មេង', '', '<p>ពិធីការិនីដ៏ល្បី អ្នកនាង គង់ សុជាតិ នៅតែមានទីផ្សារខ្ពស់ដដែល ដែលរាល់មានកម្មវិធី ឬព្រឹត្តិការណ៍ធំៗ នៅក្នុងសង្គម គឺតែងមានវត្តមាន អ្នកនាងជានិច្ច។</p>\r\n<p>ក្នុងនោះដែរ បើតាមការសង្កេតឃើញថា ការលេងខ្លួនរបស់អ្នកនាង នៅតែស្រស់ស្អាត ជាមួយនឹងម៉ូតសម្លៀកបំពាក់ ប្លែកៗ និងទាន់សម័យ បើទោះបីជា នាងមានវ័យរាងជ្រេក៏ដោយ។</p>\r\n<p>កាលពីថ្មីៗនេះដែរ តារាស្រីរូបនេះ បានបង្ហាញនូវម៉ូតរ៉ូបពណ៌ផ្កាឈូក ដែលមើលទៅ ពិតជាសាកសមនឹងអ្នកនាងយ៉ាងខ្លាំង ហើយជាពិសេស នៅពេលនាងបាន គ្រងជាមួយនឹងម៉ូតរ៉ូបនេះ គឺកាន់តែធ្វើឲ្យអ្នកនាង កាន់តែវ័យក្មេង និងទាក់ទាញបន្ថែម៕</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/679ff085dd4c4526d3d6ad9fb07d806374eee76f.jpg" alt="" width="600" height="823" /></p>', 2, 1, '/storage/thumbs/images/679ff085dd4c4526d3d6ad9fb07d806374eee76f.jpg', '', 'https://www.youtube.com/watch?v=Dtrsg6cq4Vg', 1, 2, 2, '2017-11-30 02:11:22', '2017-11-23 06:20:51', '2017-11-30 02:11:22', 0, 'internet', NULL, NULL, NULL, NULL, 0),
(561, 'ម្ចាស់ចំការ', '', '<p><span style="font-family: Siemreap, cursive; font-size: 14pt;">មនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាតមនោសញ្ចេតនារំភើបរួមជាមួយទេសភាពស្រុកខ្មែរស្រស់ស្អាត</span></p>', 2, 1, '/storage/thumbs/images/slider_1.jpg', '', NULL, 1, 1, NULL, '2017-11-30 03:41:36', '2017-07-14 12:16:07', '2017-11-30 03:41:36', 0, NULL, NULL, NULL, 'រឿងភាគខ្មែរ', NULL, 1),
(562, 'មក​ហើយ​គូ​ប្រជែង GoPro មើល​មួយ​ភ្លែត​ច្រឡំ​ស្មាន​តែ​នាឡិកា G-Shoc', 'gopro-g-shoc', '<p>ក្រុមហ៊ុន​ ​Casio​ ​បាន​ប្រកាស​ជា​សាធារណៈ​នូវ​ប្រភេទ​ ​Action Camera​ ​ជំនាន់​ដំបូង​របស់​ខ្លួន​ម៉ូដែល​ ​ G\'z Eye GZE-1​ ​មាន​លំនាំ​តួ​ខ្លួន​កូន​កាត់​ពី​នាឡិកា​ដៃ​ ​G-Shock។<br />G\'z Eye GZE-1​ ​មាន​សមត្ថភាព​អាច​ថត​វីដេអូ​កម្រិត​ ​1080p ល្បឿន 30fps និង 480p ល្បឿន 120fps ហើយ​អាច​ផលិត​រូប​សន្លឹក​ទំហំ​ ​៦MP។ មាន​មុខងារ​មិន​ជ្រាប​ទឹក​ជម្រៅ​ដល់ ៥០ ម៉ែត្រ និង​មុខងារ Shockproof ធន់​នៅ​ជម្រៅ ៤ ម៉ែត្រ។​ មាន Aperture ទំហំ f/2.8 កម្រិត ១៩០,៨ ដឺក្រេ រាប់​ចូល​ជា Lens ធំ​គេ​បង្អស់​នៃ​ត្រកូល Action Camera។​<br />ប្រសិន​បើ​អ្នក​មាន​នាឡិកា​ឆ្លាតវៃ Pro Trek Android នៅ​ក្នុង​ដៃ​ទៀត​នោះ​ ​អ្នក​អាច​មាន​ឱកាស​ប្រើ​មុខងារ​គាំទ្រ Viewfinder ឬ​អាច​ភ្ជាប់​ទៅ​កម្មវិធី​នៃ G\'z Eye លើ​ស្មាតហ្វូន​ផ្ទាល់​ក៏​បាន។​ ថ្វី​បើ​ក្រុមហ៊ុន​ប្រទេស​ជប៉ុន​មួយ​នេះ មិន​ទាន់​ប្រកាស​ពី​តម្លៃ​ផ្លូវការ​ក្ដី​ ​ប៉ុន្តែ​តាម​ការ​រំពឹង​ទុក​អាច​ប្រហែល​ ​៤៦,០០០ យេន​ ​ឬ​ជាង ៤០០ ដុល្លារ​ ​នៅ​ទឹកដី​អាមេរិក៕</p>', 4, 1, '/storage/thumbs/images/taeyeon-3_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-24 07:00:21', '2018-05-29 07:46:57', 0, NULL, NULL, NULL, 'បច្ចេកវិទ្យា', NULL, 0),
(563, 'ទាំងនេះជា អ្នក​ឈ្នះ​ពាន​ពីព្រឹត្តិការណ៍ MAMA ឆ្នាំ ២០១៧ ថ្ងៃទី ២នៅ​ជប៉ុន', 'mama', '<p>ព្រឹត្តិការណ៍ប្រគល់ពានរង្វាន់ Mnet Asian Music Awards (MAMA) ឆ្នាំ ២០១៧ ថ្ងៃទី ២ បានប្រារព្ធឡើងក្នុងប្រទេសជប៉ុន ថ្ងៃទី ២៩ ខែវិច្ឆិកានេះ។</p>\r\n<p>ថ្ងៃនេះដែរ កាន់តែពិសេសបើប្រៀបធៀបនឹងថ្ងៃទី ១ ដោយសារមានតារាល្បីៗជាច្រើន ចូលរួម រីឯចំនួនអ្នកទស្សនាផ្ទាល់ក៏ច្រើនមិនធម្មតាដែរ។ ជាមួយគ្នានោះ ចង់ដឹងថា តើតារារូបណាខ្លះមានឱកាសបានកាន់ពានត្រឡប់ទៅផ្ទះវិញខ្លះ ក្នុងថ្ងៃទី ២នេះ? ទស្សនាដូចខា</p>', 2, 1, '/storage/thumbs/images/maxresdefault.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 01:54:16', '2018-05-29 07:36:28', 0, NULL, NULL, NULL, 'តារាបរទេស', NULL, 1),
(564, 'កុំថា អាយុច្រើនស្លៀកម៉ូតនេះមិនសម មើល គង់ សុជាតិ ស្លៀកឡើងឃើញក្មេង', '', '<p>ពិធីការិនីដ៏ល្បី អ្នកនាង គង់ សុជាតិ នៅតែមានទីផ្សារខ្ពស់ដដែល ដែលរាល់មានកម្មវិធី ឬព្រឹត្តិការណ៍ធំៗ នៅក្នុងសង្គម គឺតែងមានវត្តមាន អ្នកនាងជានិច្ច។</p>\r\n<p>ក្នុងនោះដែរ បើតាមការសង្កេតឃើញថា ការលេងខ្លួនរបស់អ្នកនាង នៅតែស្រស់ស្អាត ជាមួយនឹងម៉ូតសម្លៀកបំពាក់ ប្លែកៗ និងទាន់សម័យ បើទោះបីជា នាងមានវ័យរាងជ្រេក៏ដោយ។</p>\r\n<p>កាលពីថ្មីៗនេះដែរ តារាស្រីរូបនេះ បានបង្ហាញនូវម៉ូតរ៉ូបពណ៌ផ្កាឈូក ដែលមើលទៅ ពិតជាសាកសមនឹងអ្នកនាងយ៉ាងខ្លាំង ហើយជាពិសេស នៅពេលនាងបាន គ្រងជាមួយនឹងម៉ូតរ៉ូបនេះ គឺកាន់តែធ្វើឲ្យអ្នកនាង កាន់តែវ័យក្មេង <img src="http://tousnatv.com/storage/uploads/images/1ac34edd9d01a78873b50e441e4cb07c2d927401.jpg" alt="" width="600" height="748" /></p>', 2, 1, '/storage/thumbs/images/taeyeon-3_large.jpg', '', NULL, 1, 2, 2, '2018-05-29 07:35:12', '2017-11-30 02:22:16', '2018-05-29 07:35:12', 0, NULL, NULL, NULL, NULL, NULL, 0),
(565, 'ឃើញរូបភាពទាំងនេះបានដឹងថា ការសិក្សារបស់ប៊ូខាវ ពិតជាខ្លាំងមែន រហូតដល់ថ្នាក់បណ្ឌិត', '', '<p>ស្ដេចប្រដាល់ថៃ ប៊ូខាវ គឺជាកីឡាករប្រដាល់ដ៏ខ្លាំងជាងគេបំផុតមួយរូបប្រចាំប្រទេសថៃ និងជាជើងខ្លាំងម្នាក់ក្នុងចំណោមជើងខ្លាំងនៃទ្វីបអាស៊ីផងដែរ និងមានអ្នកគាំទ្រច្រើនទាំងក្នុង និងក្រៅប្រទេស។</p>\r\n<p>បើនិយាយពីការប្រកួតក្នុងស្រុកវិញ ប៊ូខាវ ស្ទើរតែគ្មានដៃគូប្រកួតទៅហើយ&nbsp; ត្បិតរូបគេបានបំបាក់ជើងខ្លាំងជាច្រើន ខណៈដែលលើឆាកអន្ដរជាតិវិញ ក៏បានយកឈ្នះជើងខ្លាំងមកពីបណ្ដាប្រទេសនានាជុំវិញពិភពលោក និងថែមទាំងដណ្ដើមបានខែ្សក្រវ៉ាត់ជាច្រើនមកជូនមាតុប្រទេសរបស់គេផងដែរ។</p>\r\n<p>យ៉ាងណាមិញ បើទោះជារវល់ក្នុងអាជីពប្រដាល់របស់ខ្លួនក្ដី ក៏ប៊ូខាវ មិនដែលបោះបង់ចោលការសិក្សានោះដែរ។ ផ្ទុយទៅវិញរូបគេបានតស៊ូរហូតដល់បញ្ចប់ការសិក្សាថ្នាក់បរិញ្ញាបត្រ&nbsp; ថ្នាក់អនុបណ្ឌិត និងបន្តរហូតបញ្ចប់ថ្នាក់បណ្ឌិតថែមទៀតផង។</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/0e03a1191e0d00780d745fd2b237c4ae74e596c7.jpg" alt="" width="600" height="787" /></p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/70bd1a4e3c43e114a92cadb72a921b31cefdf9db.jpg" alt="" width="600" height="830" /></p>', 4, 1, '/storage/thumbs/images/Portrait-of-beauty-women-isolated-on-white-Stock-Photo.jpg', '', NULL, 1, 2, 2, '2018-05-29 07:45:22', '2017-11-30 02:56:11', '2018-05-29 07:45:22', 0, NULL, NULL, NULL, NULL, NULL, 0),
(566, 'នេះជាសាលារៀន ដែលដេវីត ថានឹងធ្វើ ក្រោយពីបានលុយ តន្រ្តីសប្បុរសធម៌!', '', '<p>កាលពីម្សិលមិញនេះនៅលើហ្វេសប៊ុកតារាចម្រៀងរ៉េបលោក ងួន ចាន់ដេវីត ឬ G-Davith បានបង្ហាញនូវរូបភាពជាច្រើនសន្លឹកពីរបស់សាលា&laquo;ព្រះពុទ្ធមានសេរី&raquo;&nbsp;ដែលមានទីតាំងនៅស្រុកភ្នំស្រួច ខេត្តកំពង់ស្ពឺ។ ដោយសាលារៀននេះ គឺកើតចេញពីការប្រគំតន្រ្តី G-FUND BY G-DEVITH របស់លោក ងួន ចាន់ដេវីត ធ្វើឡើងកាលពីថ្ងៃទី ៥ ខែតុលា កន្លងទៅនៅសាលមហោ ស្រពកោះពេជ្</p>', 4, 1, '/storage/thumbs/images/ttg_large.png', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:17:08', '2018-05-29 07:42:50', 0, NULL, NULL, NULL, 'អក្សរសាស្ត្រ', NULL, 0),
(567, 'របៀប​គិត​របស់​កំពូល​មនុស្ស​ជោគជ័យ​ និង​កំពូល​អ្នកមាន', '', '<p class="title style-scope ytd-video-primary-info-renderer">ក្រុមហ៊ុន Huawei បាន​ដាក់​បង្ហាញ​ស្មាតហ្វូន Honor 10 កាល​ពី​ថ្ងៃ​ទី ១៩ មេសា ក្នុង​ប្រទេស​ចិន ដោយ​ម៉ូឌែល​នេះ​ត្រូវ​បាន​គេ​ស្គាល់​មាន​បំពាក់​នូវ​ម៉ាស៊ីន​ខ្លាំង​ប្រហែល​ស្មាតហ្វូន​រៀមច្បង P20។</p>', 5, 1, '/storage/thumbs/images/5affc7e9a8ebe_1526712240_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:28:12', '2018-05-29 07:57:15', 0, NULL, NULL, NULL, NULL, NULL, 0),
(568, 'សកម្មភាព ៥យ៉ាង​ដែល​​​អ្នកមាន​តែង​ធ្វើ​ ផ្ទុយ​ស្រលះ​​ពី​អ្នកក្រ​!', '', '<p>បើ​តាម​ការស្រាវជ្រាវ​​ ​ទ្រព្យ​សម្បត្តិ​ពិភពលោក​ប្រមាណ​ ​៤៨​ភាគរយ​ គឺ​ត្រូវ​បាន​គ្រប់គ្រង​ដោយ​ក្រុម​អ្នកមាន​​ដែល​ស្មើនឹង​១​ភាគរយ​នៃ​ចំនួន​មនុស្ស​សរុប​ប៉ុណ្ណោះ​។ ​​តួលេខ​នេះ​បញ្ជាក់​ឲ្យ​ឃើញ​ថា ​មាន​ទ្រព្យសម្បត្តិ​ដ៏​ច្រើន​លើស​លប់​ ​បាន​​ធ្លាក់​ទៅ​លើ​ដៃ​លើ​មនុស្ស​​មួយ​ចំនួន​តូច​ប៉ុណ្ណោះ​គ្រប់គ្រង​ ខណៈ​មនុស្ស​ជាច្រើន​ទៀត​ រស់នៅ​ក្នុង​ជីវភាព​ក្រីក្រ និង មធ្យម​​។ ​​​​ដូច្នេះ​ហើយ​ មាន​​គេ​ឆ្ងល់​ថា ហេតុអ្វី​បាន​ជា​ មនុស្ស​ទាំងនោះ​ជោគជ័យ​ខ្លាំង​ម៉្លេះ​​?​​ខាងក្រោម​នេះ គឺជា​​ចំណុច​មួយ​ចំនួន​ដែល​ពួក​សេដ្ឋីៗ​គិត​ខុស​ពី​អ្នកក្រ​ ឬ មនុស្ស​ធម្មតា​ជាហេតុ​ធ្វើ​ឲ្យ​​បុគ្គល​ទាំង​នេះ​​ក្លាយ​ជា​អ្នក​មាន​កំពូលៗ​៖​​​​ក្នុង​ចិត្ត​របស់​សេដ្ឋី​យល់ឃើញ​ថា ​​កាលណា​គេ​បញ្ជូន​អ្វី​មួយ​ពិសេស​ទៅកាន់​ទីផ្សារ​ បុគ្គល​ទាំង​នេះ​​នឹង​ទទួល​បាន​ប្រយោជន៍​ជាច្រើន​ពី​ផលិតផល​ ឬ សេវាកម្ម​ទាំងនោះ​​មក​វិញ​។ និយាយ​បែប​សាមញ្ញ កាលណា​គេ​អាច​ផលិត​អ្វី​ដែល​ពិសេស​ ហើយ​មនុស្ស​ភាគច្រើន​ត្រូវ​ការ​មិនអាច​ខ្វះ​បាន​នោះ​ ​ភាព​ជោគជ័យ​នឹង​កើតឡើង​ជៀស​មិន​ផុត​ឡើយ​​ទៅតាម​ភាព​ជាក់ស្តែង​​​ ដូច្នេះ​ហើយ ក្រុម​អ្នក​មាន​​ត្រូវតែ​ព្យាយាម​រក​អ្វី​ដែល​ថ្មី ដែល​​មនុស្ស​ពិតជា​ត្រូវការ​មិនអាច​ខ្វះ​បាន​។​ ដោយឡែក​ចំពោះ​អ្នកក្រ​ភាគច្រើន មិនសូវ​​មានគំនិត​ខិតខំ​ធ្វើអ្វី​​ដែល​ពិសេស​លើសគេ​នោះ​ទេ ពោល​គឺ​ចូលចិត្ត​អ្វី​ដែល​ប្រហាក់ប្រហែល​គេ​ដែរ ដូច្នេះ​ហើយ​បាន​ជា​គ្មាន​ឱកាស​ណា​ដើម្បី​ទទួល​បាន​ជោគជ័យ​ជា​ដុំកំភួន​។​</p>', 5, 1, '/storage/thumbs/images/5afd55e5dabbe_1526551980_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:31:26', '2018-05-29 08:02:56', 0, NULL, NULL, NULL, NULL, NULL, 0),
(569, 'បិតា​ក្រុមហ៊ុន​Apple លោកSteve Jobs ៖​«​បង្កើត​អ្វី​មួយ​គឺ​មិន​មែន​គិត​​តែ​​​ស្អាត​នោះ​ទេ ត្រូវ​​គិត​ថា​វា​ដំណើរការ​ល្អ​ឬ​អត់?»', 'apple-steve-jobs', '<p>បើ​តាម​ការស្រាវជ្រាវ​​ ​ទ្រព្យ​សម្បត្តិ​ពិភពលោក​ប្រមាណ​ ​៤៨​ភាគរយ​ គឺ​ត្រូវ​បាន​គ្រប់គ្រង​ដោយ​ក្រុម​អ្នកមាន​​ដែល​ស្មើនឹង​១​ភាគរយ​នៃ​ចំនួន​មនុស្ស​សរុប​ប៉ុណ្ណោះ​។ ​​តួលេខ​នេះ​បញ្ជាក់​ឲ្យ​ឃើញ​ថា ​មាន​ទ្រព្យសម្បត្តិ​ដ៏​ច្រើន​លើស​លប់​ ​បាន​​ធ្លាក់​ទៅ​លើ​ដៃ​លើ​មនុស្ស​​មួយ​ចំនួន​តូច​ប៉ុណ្ណោះ​គ្រប់គ្រង​ ខណៈ​មនុស្ស​ជាច្រើន​ទៀត​ រស់នៅ​ក្នុង​ជីវភាព​ក្រីក្រ និង មធ្យម​​។ ​​​​ដូច្នេះ​ហើយ​ មាន​​គេ​ឆ្ងល់​ថា ហេតុអ្វី​បាន​ជា​ មនុស្ស​ទាំងនោះ​ជោគជ័យ​ខ្លាំង​ម៉្លេះ​​?​​ខាងក្រោម​នេះ គឺជា​​ចំណុច​មួយ​ចំនួន​ដែល​ពួក​សេដ្ឋីៗ​គិត​ខុស​ពី​អ្នកក្រ​ ឬ មនុស្ស​ធម្មតា​ជាហេតុ​ធ្វើ​ឲ្យ​​បុគ្គល​ទាំង​នេះ​​ក្លាយ​ជា​អ្នក​មាន​កំពូលៗ​៖​​​​ក្នុង​ចិត្ត​របស់​សេដ្ឋី​យល់ឃើញ​ថា ​​កាលណា​គេ​បញ្ជូន​អ្វី​មួយ​ពិសេស​ទៅកាន់​ទីផ្សារ​ បុគ្គល​ទាំង​នេះ​​នឹង​ទទួល​បាន​ប្រយោជន៍​ជាច្រើន​ពី​ផលិតផល​ ឬ សេវាកម្ម​ទាំងនោះ​​មក​វិញ​។ និយាយ​បែប​សាមញ្ញ កាលណា​គេ​អាច​ផលិត​អ្វី​ដែល​ពិសេស​ ហើយ​មនុស្ស​ភាគច្រើន​ត្រូវ​ការ​មិនអាច​ខ្វះ​បាន​នោះ​ ​ភាព​ជោគជ័យ​នឹង​កើតឡើង​ជៀស​មិន​ផុត​ឡើយ​​ទៅតាម​ភាព​ជាក់ស្តែង​​​ ដូច្នេះ​ហើយ ក្រុម​អ្នក​មាន​​ត្រូវតែ​ព្យាយាម​រក​អ្វី​ដែល​ថ្មី ដែល​​មនុស្ស​ពិតជា​ត្រូវការ​មិនអាច​ខ្វះ​បាន​។​ ដោយឡែក​ចំពោះ​អ្នកក្រ​ភាគច្រើន មិនសូវ​​មានគំនិត​ខិតខំ​ធ្វើអ្វី​​ដែល​ពិសេស​លើសគេ​នោះ​ទេ ពោល​គឺ​ចូលចិត្ត​អ្វី​ដែល​ប្រហាក់ប្រហែល​គេ​ដែរ ដូច្នេះ​ហើយ​បាន​ជា​គ្មាន​ឱកាស​ណា​ដើម្បី​ទទួល​បាន​ជោគជ័យ​ជា​ដុំកំភួន​។​</p>', 5, 1, '/storage/thumbs/images/post_article_serie_thumbnail_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:34:08', '2018-05-29 08:04:18', 0, NULL, NULL, NULL, NULL, NULL, 0),
(570, '​​លោក​ Eric Schmidt​អតីតCEOរបស់​Google​៖ ​​ធាតុ​សំខាន់​ពីរ​យ៉ាង​ ​​ដែល​​​កំណត់​ពី​ភាព​ជោគជ័យ​របស់​មនុស្ស​ម្នាក់​ៗ​', 'eric-schmidtceogoogle', '<div class="Pagetext">\r\n<p>&nbsp;</p>\r\n<p>&laquo;​ការ​តស៊ូ​ គឺជា​កត្តា​មួយ​ដ៏​សំខាន់​ ​​ដើម្បី​ឆ្ពោះ​ទៅ​រក​សុភមង្គល​ និង ​​ភាព​ជោគជ័យ​នៅ​ក្នុង​ជីវិត​&raquo;។ ​​​លោក ​លោក​ Eric Schmidt​​បញ្ជាក់​ប្រាប់​សារព័ត៌មាន​CNBC​របស់​អាមេរិក​។ ​​​​​​លោក​បញ្ជាក់​ថា បើ​ទោះបី​ជា​មាន​ការ​លំបាក​ ឬ បញ្ហា​អ្វី​ក៏​ដោយ​ ដរាប​ណា​​អ្នក​​នៅ​តស៊ូ​ និង ​មិន​បោះបង់​ដោយ​ងាយ​នោះ ​អ្នក​នឹង​អាច​សម្រេច​បាន​តាម​ក្តី​ប្រាថ្នា​របស់​ខ្លួន​។ ​ធាតុ​សំខាន់​មួយ​ទៀត​ ​ដែល​មិន​អាច​ខ្វះ​​បាន​នោះ​​គឺ​ ចម្ងល់​។ ​​ចម្ងល់​នឹង​ជួយ​​​ឲ្យ​មនុស្ស​​អភិវឌ្ឍ​ខ្លួន​ពី​​​​សាមញ្ញជន​ ទៅ​ជា​ ​បុគ្គល​អស្ចារ្យ​បាន​ ព្រោះ​ថា ការ​ចង់​ចេះ​ចង់​ដឹង​នេះ​ហើយ​ ​ដែល​ធ្វើ​​​ឲ្យ​មនុស្ស​ម្នាក់ៗ​​កាន់​តែ​​​ខិតខំ​ស្រាវជ្រាវ និង ស្រាវ​រក​​ការ​ពិត​​ ដើម្បី​ស្រាយ​​មន្ទិល​របស់​ខ្លួន ដែល​ប្រៀប​ដូច​ជា​កាំបិត​ ដែល​កាន់​តែ​សំលៀង​កាន់​តែ​មុត​ល្អ​។ ​សូម​បញ្ជាក់​ថា Eric Schmidt​​បច្ចុប្បន្ន​នេះ​ មាន​​​ទ្រព្យ​សម្...</p>\r\n</div>\r\n<div class="uk-width-1-1 uk-width-small-1-1 uk-width-medium-1-2 uk-width-large-2-3 uk-width-xlarge-2-3 post-preview__thumbnail">&nbsp;</div>', 5, 1, '/storage/thumbs/images/2_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:36:28', '2018-05-29 08:07:36', 0, NULL, NULL, NULL, NULL, NULL, 0),
(571, '​មហាសេដ្ឋី​​ Jack Ma៖ ​​ប្រសិន​បើ​​បេក្ខជន​ដាក់​ការងារ​​នោះ​អាច​ក្លាយ​ជា​ថៅកែ​អ្នក​បាន​​នៅ​​ ៥​ឆ្នាំ​ក្រោយ​ ​ជួល​គេ​ទៅ​', 'jack-ma', '<p><em><strong>&laquo;ប្រសិន​បើ​​បេក្ខជន​ដាក់​ការងារ​​នោះ​អាច​ក្លាយ​ជា​ថៅកែ​អ្នក​បាន​​នៅ ​​៥​ឆ្នាំ​ក្រោយ​​ជួល​គេ​ទៅ&raquo; នេះ​ជា​ការ​ថ្លែង​របស់​មហាសេដ្ឋី​ល្បី​ឈ្មោះ​ Jack Ma ដក​ស្រង់​ចេញ​ពី​សារព័ត៌មាន​ចិន​ South China Morning Post។ ​ពាក្យ​មួយ​ឃ្លា​គឺ​ត្រូវ​សារព័ត៌មាន​​ខាង​លើ​ដក​ស្រង់​ចេញ​ពី​វីដេអូ​​​រយៈពេល​ជិត​ ៤​នាទី​ ដែល​និយាយ​ពី​អត្ថបទ​មួយ​ដែល​មាន​ចំណង​ជើង​ថា​ ​&laquo;តើ​ Jack Ma ​អាច​ប្រកួត​ប្រជែង​ជា​មួយ​ Bill Gates ​បាន​ឬ​ទេ?&raquo;។​ ការ​ថ្លែង​របស់​លោក​ Jack Ma ធ្វើ​ឡើង​នៅ​ Alibaba&rsquo;s Gateway&rsquo;17 នៅ​ទីក្រុង​​ Detroit រដ្ឋ​​ Michigan។ ​</strong></em></p>\r\n<p>​BizKhmer ​សូម​ដក​ស្រង់​ចំណុច​មួយ​គឺ​ ​លោក​​ Jack Ma មិន​ឈប់​ធ្វើ​ជា​គ្រូ​បង្រៀន​នោះ​ទេ។ ហេតុ​ផល​នៅ​ពី​ក្រោយ​ចំណុច​នេះ​ គឺ​​ថា​​លោក​​បាន​រៀន​ពី​ការ​បង្រៀន​​​នូវ​ចំណុច​មួយ​​ ៖&laquo;​គ្រូ​តែង​តែ​ចង់​ឱ្យ​កូន​សិស្ស​របស់​ខ្លួន​ជោគជ័យ​ និង​ប្រសើរ​​ជាង​ខ្លួន​នៅ​ពេល​អនាគត&raquo; ហើយ​នៅ​ពេល​ដែល​​យើង​ជួល​បុគ្គលិក​ គឺ​​ ត្រូវ​ជួល​​អ្នក​ដែល​ឆ្លាត​ជាង​យើង។ ​​នៅ​ពេល​បច្ចុប្បន្ន​នេះ​ លោក​បាន​ផ្ដល់​ដំបូន្មាន​ជា​ច្រើន​​ដល់​អ្នក​រួម​ការ​ងារ​ជា​មួយ​លោក។ ចំណុច​មួយ​ដែល​លោក​ចង់​ឱ្យ​អ្នក​ទាំង​នោះ​ពិចារណា​ គឺ​៖ &laquo;​​បើ​ បេក្ខជន​នោះ​ អាច​ក្លាយ​ជា​ថៅកែ​យើង​បាន​រយៈ​ពេល​ ៥​ឆ្នាំ​ទៀត​ គឺ​ជួល​គេ​ទៅ&raquo;។</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/Jack-Ma.jpg" alt="" width="670" height="400" /></p>', 5, 1, '/storage/thumbs/images/0.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:38:39', '2018-05-29 06:42:57', 0, NULL, NULL, NULL, NULL, NULL, 0),
(572, 'សម្រង់​​គតិ​​ដ៏​មាន​តម្លៃ​ទាំង​៥​ឃ្លា ​​ពី​មហាសេដ្ឋី​វ័យ​ក្មេង(២៧​​ឆ្នាំ​) អាមេរិក ​​លោក​​ Evan Spiegel', 'evan-spiegel', '<p><em><strong>​លោក​​ Evan Spiegel ​​គឺ​ជា​ស្ថាបនិក​​របស់​ក្រុមហ៊ុន​Snapchat ​​ដែល​ជា​ក្រុមហ៊ុន​បច្ចេកវិទ្យា​ដ៏​ធំ​មួយ​​​នៅ​អាមេរិក​។ ​​​​លោក​គឺ​បច្ចុប្បន្ន​នេះ​ មាន​វ័យ​ឆ្នាំ​តែ​២៧​ឆ្នាំ​ប៉ុណ្ណោះ ​ប៉ុន្តែ​មាន​ទ្រព្យសម្បត្តិ​រហូត​ដល់​៤​ពាន់​លាន​ដុល្លារ​អាមេរិក​។ ​ ខាង​ក្រោម​នេះ ជា​សម្ដី​​​ដ៏​មាន​តម្លៃ​របស់​​លោក​៖</strong></em><br />​១) ​​&laquo;​ខ្ញុំ​យល់​ឃើញ​ថា ​មនុស្ស​ណា​​​​​ក៏​កើត​មក​ជាមួយ​នឹង​ភាព​ច្នៃប្រឌិត​ដែរ​ ប៉ុន្តែ​​វា​ត្រូវ​បាន​រារាំង​ដោយ​ភាព​ភ័យខ្លាច​&raquo;។<br />២) ​​​&laquo;​យើង​នឹង​​នៅ​តែ​បន្ត​ធ្វើ​ការងារ​ទាំងឡាយ​ណា​ ដែល​​​យើង​ជឿជាក់​​លើ​វា​&raquo;។<br />៣) ​​&laquo;​អ្នក​ត្រូវ​តែ​ប្រយ័ត្ន​​​​​​រាល់​ពាក្យសម្ដី​​​ដែល​អ្នក​ និយាយ​ទៅ​កាន់​អ្នកដទៃ​&raquo;។</p>\r\n<p>៤) ​​&laquo;​ខ្ញុំ​​គឺ​ជា​​​ក្មេង​ម្នាក់​​ប្រុស​ម្នាក់​ ដែល​ទទួល​បាន​ការ​អប់រំ​ខ្ពស់​។ ​​​ខ្ញុំ​ពិត​ជា​សំណាង​ខ្លាំង​ណាស់​។ ​ដូច្នេះ​ហើយ​ជីវិត​ គឺ​​មិន​​ដូច​គ្នា​ទាំង​អស់​នោះ​ទេ​&raquo;។</p>\r\n<p>៥) ​&laquo;​វា​មិន​មែន​ជា​រឿង​ដែល​យើង​ត្រូវ​ ប្រឹងប្រែង​​​ធ្វើការ​​​ខ្លាំង​​នោះ​ទេ​ តែ​ជា​រឿង​ដែល​យើង​ត្រូវ​ធ្វើ​ការ​​​​ដោយ​ប្រើ​ប្រព័ន្ធ​មួយ​​ច្បាស់លាស់​&raquo;៕<img src="http://tousnatv.com/storage/uploads/images/11.jpg" alt="" width="670" height="400" /></p>', 5, 1, '/storage/thumbs/images/perfect.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:40:33', '2018-05-29 06:39:32', 0, NULL, NULL, NULL, NULL, NULL, 0),
(573, 'សហគ្រិន​ក្មេងៗ ដែល​ជោគជ័យ​បំផុត ទាំង​៤​នាក់​នេះ ​កំពុង​​បង្ហាញ​ថា​«​អាយុ​គឺ​គ្រាន់​ជា​តួលេខ​ប៉ុណ្ណោះ»', '', '<p><em><strong>ក្នុង​ពិភពលោក​សព្វ​ថ្ងៃ​នេះ មនុស្ស​ជា​ច្រើន​គឺ​ចាប់​ផ្ដើម​មាន​ភាព​ក្លាហាន​សាកល្បង​និង​បង្ហាញ​គំនិត​រកស៊ី​ដ៏​ជោគជ័យ​របស់​ពួក​គេ​។​ ឲ្យ​តែ​អ្នក​មាន​គំនិត​ហើយ​មហិច្ឆតា​ខ្ពស់ ​ អ្នក​មិន​ចាំ​បាច់​គិត​ពី​អាយុ​របស់​ខ្លួន​ឡើយ គឺ​អ្នក​អាច​ជោគជ័យ​បាន​គ្រប់​ពេល​តែ​ម្ដង​។ ខាង​ក្រោម​នេះ​ជា​ឧទាហរណ៍​ស្រាប់​៖</strong></em><br /><strong>១) លោក​ Mark Zuckerberg (ស្ថាបនិក​ Facebook) ៖</strong>&nbsp;គាត់​ជោគជ័យ​ខ្លាំង​ហើយ​បាន​បង្កើត​ក្រុមហ៊ុន​នេះ​ឡើង​ ក្នុង​វ័យ​១៩​ឆ្នាំ​ប៉ុណ្ណោះ។​ ២ ឬ​៣​ឆ្នាំ​កន្លង​ទៅ​ទៀត Facebook ក្លាយ​ជា​បណ្ដាញ​សង្គម​មួយ​មាន​អ្នក​ប្រើប្រាស់​ ច្រើន​អនេក​ ហើយ​អាច​ផ្ដល់​​ប្រយោជន៍​ច្រើន​​លើសលប់​សម្រាប់​មនុស្ស​ជាតិ​។ ទល់​នឹង​ពេល​នេះ​លោក​មាន​ទ្រព្យ​សម្បត្តិ​រហូត​ដល់​ទៅ​៦១,៧ ពាន់​លាន​ដុល្លារ​រួច​ទៅ​ហើយ។</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/mark-zuckerberg-1.jpg" alt="" width="670" height="400" /></p>', 5, 1, '/storage/thumbs/images/trailer.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:42:46', '2018-05-29 06:37:59', 0, NULL, NULL, NULL, NULL, NULL, 0),
(574, '​សម្រង់​គតិ​មាស​ទាំង​៥​ឃ្លា ​ពី​​កំពូល​អ្នក​មាន​ជាង​គេ​​ក្នុង​​លោក​ទាំង​​៥​រូប​​', '', '<p><em><strong>​​ថ្ងៃ​នេះ​ គេហទំព័រ​​​Bizkhmer ​របស់​យើង​សូម​បង្ហាញ​អំពី​ ​គំនិត​​​ និង​ គតិ​​ដ៏​មាន​តម្លៃ​ពី​​កំពូល​អ្នក​មាន​ជា​គេ​​ក្នុង​​​​លោក​ទាំង​៥​រូប​ ​ដើម្បី​​​​​​​ឲ្យ​​លោក​អ្នក​អាច​​​ទទួល​បាន​ចំណេះដឹង​ និង​ រីកចម្រើន​ក្នុង​ការ​គិត​។ ​​​សូម​បញ្ជាក់​ថា ​​​​ក្នុង​ចំណោម​​​មហាសេដ្ឋី​កំពូល​ទាំង​៥​រូប​​នេះ គឺ​ម្នាក់​៤​នាក់​ទៅ​ហើយ​ ដែល​ជា​ជនជាតិ​អាមេរិក​។</strong></em></p>\r\n<p>១) ​​&laquo;​​ជីវិត​​ គឺ​​គ្មាន​​យុត្តិធម៌​​នោះ​ទេ​ ​ដូច្នេះ​​ហើយ​អ្នក​ត្រូវ​តែ​ទម្លាប់​ខ្លួន​ជា​មួយ​វា​​&raquo;។ ​​ដោយ​​ លោក​ Bill Gates ​​​មហាសេដ្ឋី​លំដាប់​ទី១​​លើ​​លោក​ និង ​ជា​​ស្ថាបនិក​ក្រុមហ៊ុនMicrosoft ។</p>\r\n<p>២) ​&laquo;​​ការ​ប្រថុយប្រថាន​​កើត​ឡើង​ ​ដោយសារ​តែ​​អ្នក​​មិន​ដឹង​ច្បាស់​ថា ខ្លួន​​កំពុង​ធ្វើ​អ្វី​&raquo;​។ ​ដោយ​​លោក Warren Buffett ​​​​​មហាសេដ្ឋី​លំដាប់​ទី១​លើ​​​លោក​ និង ជា​​អ្នក​ជំនាញ​​ផ្នែក​វិនិយោគ​ដ៏​​ល្បី​របស់​អាមេរិក​។<br />៣) ​&laquo;​ប្រសិន​បើ​អ្នក​មិន​ដឹង​ច្បាស់​អំពី​ជំនួញ​របស់​អ្នក​នោះ​ទេ​ ​ប្រាកដ​ណាស់​ថា ​អ្នក​នឹង​បរាជ័យ​&raquo;។ ​ដោយ​​លោក​ Jeff Bezos ​មហាសេដ្ឋី​លំដាប់​ទី៣​នៅ​លើ​លោក​ និង ជា​នាយក​ប្រតិបត្តិ​របស់​ក្រុមហ៊ុន​Amazon ។<br />៤) ​&laquo;​ខ្ញុំ​នឹង​ខិតខំ​ធ្វើការ​រហូត​ដល់​ទី​បញ្ចប់​&raquo;។ ​ដោយ​​លោក​ Amancio Ortega&nbsp;​​​​មហាសេដ្ឋីលំដាប់​ទី៤​នៅ​​លើ​​លោក​ (ជនជាតិ​អេស្ប៉ាញ​) ​និង​ជា​​ប្រធាន​​ក្រុមហ៊ុន​&nbsp;Inditex fashion group។</p>\r\n<p>៥)​ ​&laquo;​​​ភាព​ជោគជ័យ​​ដ៏​អស្ចារ្យ​​​អាច​កើត​​ឡើង​​លុះត្រាតែ​​​​​​​ ​យើង​មាន​សេរីភាព​គ្រប់គ្រាន់​ក្នុង​ការ​បរាជ័យ​&raquo;។ ​ដោយ​​លោក​ ​Mark Zuckerberg​ ​​នាយក​ប្រតិបត្តិ​របស់ Facebook៕</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/Bill-Gates-11.jpg" alt="" width="670" height="400" /></p>', 5, 1, '/storage/thumbs/images/manich_large.jpg', '', NULL, 1, 2, 2, '2018-05-29 07:50:01', '2017-11-30 03:47:31', '2018-05-29 07:50:01', 0, NULL, NULL, NULL, NULL, NULL, 0),
(575, 'តាមពិតកូនប្រុសសង្ហាទាំង៣ របស់ ព្រាប សុវត្ថិ ទៅលេងអង្គរ ដើម្បីតែធ្វើរឿងមួយនេះ!', '', '<p>ប្រិយមិត្តជាច្រើនប្រាកដជាបានជ្រាបមកហើយថា កាលពីម្សិលមិញនេះ មានរូបប៉ុន្មានសន្លឹក របស់កូនប្រុសរូបសង្ហាទាំង៣របស់លោក ព្រាប សុវត្ថិ បានសាយភាយនៅលើបណ្តាញសង្គម ជាមួយនឹងដំណើរកម្សាន្តនៅឯខេត្តសៀមរាប។</p>\r\n<p>មិនត្រឹមតែប៉ុណ្ណោះ ដំណើរកម្សាន្តរបស់ពួកគេ គឺទៅយ៉ាងស្ងាត់ៗធ្វើឲ្យអ្នកនៅទីនោះមានការភ្ញាក់ផ្អើល ជាមួយនឹងរូបរាងសង្ហារបស់ពួកគេ។</p>\r\n<p>តែពេលនេះក៏បានបញ្ចេញការពិតតាមរយៈគណនី IG ហ្វេនក្លឹបរបស់កូនប្រុសរបស់លោក ដោយបាន និយាយថា៖<strong>&nbsp;&laquo;ត្រៀមខ្លួនសម្រាប់ការភ្ញាក់ផ្អើលមួយនេះនៅ? ត្រៀមខ្លួនសម្រាប់ការមកដល់របស់បទចម្រៀង និង MV របស់ពួកគាត់ឬនៅ?&raquo;។</strong></p>\r\n<p>នេះបញ្ជាក់កាន់តែច្បាស់ឡើង ថាកូនប្រុសទាំង៣របស់លោក ការពិតមិនមែនត្រឹមតែមានការដំណើរកម្សាន្តប៉ុណ្ណោះទេ គឺត្រៀមនឹងចេញចម្រៀងថ្មី លើសពីនេះ គ្រាន់តែឃើញដូច្នោះ មានអ្នកគាំទ្រជាច្រើនរង់ចាំ ចង់មើលស្នាដៃរបស់កូនប្រុសរបស់លោក ព្រាប សុវត្ថិ ទៅហើយ៕&nbsp;</p>', 2, 1, '/storage/thumbs/images/D7ab595h0AU-640x350.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:54:47', '2018-05-29 06:36:53', 0, NULL, NULL, NULL, NULL, NULL, 0),
(576, 'លេងសើចម៉េចបាន អ៊ុក សុវណ្ណារី សុទ្ធតែបានឡើងច្រៀង ក្នុងមង្គលការលំដាប់ៗ ជាមួយនឹងតារាហង្សមាស!', '', '<p>ដូចជាប្រិយមិត្តបានជ្រាបរួចមកហើយថា កុមារី អ៊ុក សុវណ្ណារី ជាបេក្ខភាព ប្រលង នៅក្នុងកម្មវិធី The Voice Kids Cambodia រដូវកាលទី១ ដែលនៅពេលនោះ នាងមិនបានជាប់ជ័យលាភីនោះទេ តែនាងនៅតែ ទទួលបានការគាំទ្រ និងការពេញចិត្ត ពីសំណាក់មហាជន។</p>\r\n<p>អ្វីដែលចាប់អារម្មណ៍ជាងនេះទៅទៀត ក្មេងស្រីរូបនេះ ត្រូវបានអ្នករៀបចំកម្មវិធី ឬទូរទស្សន៍មួយចំនួន អញ្ជើញនាងឡើងច្រៀង ស្ទើរតែរកពេលសម្រាក មិនបានទៅហើយ។</p>\r\n<p>កាលពីយប់មិញនេះដែរ ប្អូនស្រី ក៏បានមានឱកាសឡើងច្រៀង នៅក្នុងមង្គលការធំៗ សុទ្ធតែលំដាប់ ជាមួយនឹង តារាហង្សមាស រួមទាំងCoach របស់នាង គឺ សុគន្ធ និសា ទៀតផង។ ហើយនេះ&nbsp; មិនមែនលើកទីមួយនោះទេ ដែលនាង បានច្រៀងក្នុងមង្គលការលំដាប់ៗបែបនេះ ពោលជារឿយៗ នាងតែងមានឱកាស បញ្ចេញសំនៀងដ៏សែនពិរោះរបស់នាង នៅលើឆាកជានិច្ច។</p>\r\n<p>សន្ទុះនៃប្រជាប្រិយភាពរបស់ អ៊ុក សុវណ្ណារី គឺកាន់តែខ្លាំងឡើង ពីមួយថ្ងៃទៅមួយថ្ងៃ ដែលអាយុទើបតែប៉ុណ្ណឹងសោះ នាងអាចហក់ បានច្រៀង ក្នុងកម្មវិធី ព្រឹត្តិការណ៍ និងមង្គលការធំៗ ដូចជា តារាដទៃល្បីៗ ទៅហើយ៕</p>', 2, 1, '/storage/thumbs/images/creat-love-1_medium.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:57:03', '2018-05-29 06:36:05', 0, NULL, NULL, NULL, NULL, NULL, 0),
(577, 'នាយ​ចឺម​យក​កាដូ​ជូន​លោកតា​វិច​ទ័​រ ក្រោយ​ពេល​បង្អាក់​អាជីព​កំប្លែង', '', '<p>&nbsp;ចំពោះ​ការ​ជូន​កាដូ​បែប​នេះ លោកតា​វិច​ទ័​រ​អះអាង​ថា មិនមែន​ជា​លើក​ទី​១​ទេ គឺ​នាយ​ចឺម​តែងតែ​ជូន​ជា​ការ​ដឹងគុណ​ច្រើន​លើក​ក្នុង​មួយ​ឆ្នាំ​ៗ ជា​ពិសេស​ក្នុង​រដូវ​បុណ្យ​ទាន ។ ប៉ុន្តែ​សម្រាប់​ការ​ជូន​កាដូ​ដោយ​មិន​ឱ្យ​ដឹងខ្លួន​ជា​មុន​នេះ លោកតា​វិច​ទ័​រថា ជា​លើក​ទី​១ ដោយ​​សូ​ម្បី​តែ​លោក​ខ្លួនឯង​ក៏​ទប់​អារម្មណ៍​រំភើបចិត្ត​មិន​ចង់បាន​ដែរ&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 2, 1, '/storage/thumbs/images/Detail_large_1.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 03:59:43', '2018-05-29 07:30:35', 0, NULL, NULL, NULL, 'សិល្បះកប្លែង', NULL, 1),
(578, 'ទោះមុនចូលរោងការមួយថ្ងៃ សុគន្ធ និសា នៅតែ.....', '', '<p>ថ្ងៃនេះ គឺជាថ្ងៃចូលរោងរបស់តារាស្រីជួរមុខ កញ្ញា សុគន្ធ និសា ហើយក៏ជាថ្ងៃដែល អ្នកគាំទ្រ មួយចំនួនរបស់នាង ទន្ទឹងមើលឈុតកូនក្រមុំដែលនាង នឹងត្រូវគ្រងនៅថ្ងៃស្អែកនេះដែរ។</p>\r\n<p>ដោយឡែក នាយប់ម្សិលមិញនេះ ដោយផ្អែកទៅលើ គណនីហ្វេសប៊ុក ពិធីការិនីដ៏ល្បី អ្នកនាង ចាន់ កែវនិមល បានបង្ហោះរូបជាមួយកញ្ញា សុគន្ធ និសា នៅក្នុងកម្មវិធីមួយដោយ សរសេរCaptionថា៖ &ldquo;<strong>Host of wedding party with my beauty bride ។ សាហាវណាស់ចែ ចូលរោងស្អែកហើយ នៅជួបថ្ងៃនេះទៀត&rdquo;</strong>។</p>\r\n<p>បន្ទាប់ពីឃើញរូប និងសារទាំងនេះហើយ បានធ្វើឲ្យមហាជនមួយចំនួន កោតសរសើរកញ្ញា សុគន្ធ និសា ខ្លាំងមែនទែន ព្រោះនាងនៅតែធ្វើការឥតឈប់ ទោះជាថ្ងៃស្អែក ជាថ្ងៃចូលរោងរបស់នាងក៏ដោយ៕&nbsp;</p>', 2, 1, '/storage/thumbs/images/5b026e5bf0a59_1526885940_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 04:02:46', '2018-05-29 06:33:56', 0, NULL, NULL, NULL, NULL, NULL, 0),
(579, 'YaYa Bella និង Mint ស្លៀកឈុតដូចគ្នា តើអ្នកណាស្អាតជាង?', 'yaya-bella-mint', '<p>តារាស្រីលំដាប់ ជួរមុខប្រចាំប្រទេសថៃ YaYa&nbsp; នាង Bella និង Mint ត្រូវបានទស្សនិកជន គាំទ្រខ្លាំង មិនថាក្នុងឬក្រៅប្រទេស តាមរយៈស្នាដៃសម្ដែងរបស់អ្នកទាំង៣។</p>\r\n<p>ជាពិសេស វត្តមានតារាទាំងបីដួងនេះ តែងតែឈរបានតំណែងជាតួឯកស្រី សឹងគ្រប់រឿងសម្ដែង និងទទួលបានការកោតសរសើរ ពីអ្នកគាំទ្រ មិនដាច់ពីមាត់។ បើនិយាយពីរូបសម្រស់ ពួកគេម្នាក់ៗវិញ&nbsp; អ្នកទាំង៣ ពិតជាមានចំណុចពិសេសរៀងៗខ្លួន ដែលមិនអាចដាក់ពិន្ទុថា អ្នកណាស្អាតជាងអ្នកណាបានឡើយ។</p>\r\n<p>អ្វីដែលប្លែកចម្លែកអារម្មណ៍នោះ ប្រិយមិត្តនឹងភ្ញាក់ផ្អើល ពេលបានឃើញ YaYa នាង Bella និង Mint គ្រងឈុតដូចគ្នា ព្រោះរូបសម្រស់ នៃតារាស្រីទាំងបីនេះ ពិតជាស្រស់ស្អាតខ្លាំង មិនចាញ់គ្នានោះទេ៕&nbsp;&nbsp;</p>\r\n<p>ដាក់ពិន្ទុបន្តិចមើលថា អ្នកណា ស្អាតជាង?</p>', 2, 1, '/storage/thumbs/images/kk_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 04:05:11', '2018-05-29 06:33:01', 0, NULL, NULL, NULL, NULL, NULL, 0),
(580, 'News song', 'news-song', '<p>This is my video</p>', 13, 3, '/storage/thumbs/images/Screenshot_1.png', '', 'https://www.youtube.com/watch?v=Dtrsg6cq4Vg', 1, 2, NULL, '2017-11-30 05:04:22', '2017-11-30 05:02:02', '2017-11-30 05:04:22', 0, NULL, NULL, NULL, NULL, NULL, 0),
(581, 'new songs', 'new-songs', '<p>ចំរៀងពីរោះៗ</p>', 13, 3, '/storage/thumbs/images/chomteavsrong-Feature_large.jpg', '', 'https://www.youtube.com/embed/YPZl-MB4Qc4', 1, 2, 2, NULL, '2017-11-30 05:06:13', '2018-05-29 06:32:04', 0, NULL, NULL, NULL, NULL, NULL, 0),
(582, 'new songs', 'new-songs', NULL, 13, 3, '/storage/thumbs/images/Education-in-Cambodia-1_large_1.jpg', '', 'https://www.youtube.com/embed/YPZl-MB4Qc4', 1, 2, 2, NULL, '2017-11-30 05:09:13', '2018-05-29 06:31:29', 0, NULL, NULL, NULL, NULL, NULL, 0),
(583, 'New songs', 'new-songs', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 13, 3, '/storage/thumbs/images/31719066_761965230666773_5090410348914147328_n.jpg', '', 'https://www.youtube.com/embed/jfxovPOhrrI', 1, 2, 2, NULL, '2017-11-30 05:10:18', '2018-05-29 06:30:40', 0, NULL, NULL, NULL, NULL, NULL, 0),
(584, 'ជឿថារឿងបែបនេះតែងតែកើតឡើងចំពោះកូនៗគ្រប់រូប ...សូម្បីតែខ្ញុំ!', '', '<p>មានរឿងរ៉ាវក្នុងជីវិតដែលយើងបានជួបប្រទះជាច្រើននៅក្នុងជីវិត។ មនុស្សកាន់តែធំបន្ទុកកាន់តែច្រើន មិនថាតែការសិក្សា ការងារ រឿងអនាគតសុទ្ធតែជាអ្វីដែលយើងត្រូវគិតទាំងអស់។ អារម្មណ៍មនុស្សប្រែប្រួលឡើងចុះជារឿងធម្មតា តែខ្ញុំមិននឹកស្មានថាអារម្មណ៍មួយឆាវ និងទប់កំហឹងខ្លួនឯងមិនបាន ធ្វើឱ្យខ្ញុំធ្វើទង្វើបែបនេះចំពោះអ្នកមានគុណសោះ ។</p>\r\n<p>បន្ទាប់ពីត្រលប់មកធ្វើការវិញ ខ្ញុំបានទម្លាក់កាបូបស្ពាយចុះទាំងអារម្មណ៍មួរម៉ៅ យកដៃជ្រោងមុខទាំងហត់នឿយ។ ខ្ញុំត្រូវទ្រាំលាក់ទឹកមុខខ្លួនឯង ត្រូវមើលទឹកមុខអ្នកដទៃ ត្រូវទ្រាំនឹងការគាបសង្កត់មិនថាទាំងបន្ទុកការងារ និងគំនាបផ្លូវចិត្ត ដូច្នេះអ្វីដែលខ្ញុំអាចស្រាយ កំហឹង និងទម្លាក់ការអត់ទ្រាំបានគឺមានតែផ្ទះរបស់ខ្ញុំនេះឯង។ ម៉ាក់បានដើរចេញពីចង្ក្រានបាយរួចនិយាយ</p>\r\n<p>&laquo; មកពីធ្វើការម៉េចមិនប្តូរខោអាវប្តូរទៅ? អាលងូតទឹកងូតអីហើយមកញ៉ាំបាយ&raquo;</p>', 4, 1, '/storage/thumbs/images/2_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 05:35:16', '2018-05-29 06:28:52', 0, NULL, NULL, NULL, NULL, NULL, 0),
(585, 'មនុស្សម្នាក់ៗមិនគួររស់នៅដោយ ខ្វល់ខ្វាយពីសម្តីមនុស្សនៅជុំវិញខ្លួន ខ្លាំងពេកនោះទេ', '', '<p>នៅក្នុងវ័យជំទង់នាងគ្រាន់តែជាក្មេងស្រីដែលមានអារម្មណ៍ងាយនឹងប៉ះទង្គិចនឹងមនុស្សនៅវិញខ្លួន នាងតែងតែខ្វាយខ្វល់ រង់ចាំមើលទឹកមុខ និងពាក្យសម្តីរបស់មនុស្សជុំវិញ។ នាងខ្លាចថាមនុស្សទាំងអស់និយាយអាក្រក់ពីនាង នាងខ្លាចក្រសែភ្នែក នាងខ្លាចសម្តីដែលមុតស្រួច ដូច្នេះហើយធ្វើឱ្យនាងប្រឹងប្រែងធ្វើយ៉ាងណា និយាយយ៉ាងណាដោយការប្រុងប្រយ័ត្នជានិច្ច ព្រោះនាងមិនចង់ក្លាយទៅជាមនុស្សមិនល្អរបស់មនុស្សទាំងអស់នោះឡើយ។</p>\r\n<p>ប៉ុន្តែការប្រុងប្រ័ត្នជ្រុលហួសហេតុពេកបែរជាធ្វើឱ្យនាងកាន់តែប្រព្រឹត្តខុសឆ្គងខ្លាំងជាងមុនទៅវិញ ពេលខ្លះនាងបែរជាត្រូវមិត្តភក្តិ និងមិត្តនៅសាលាសើចចំអក ឬបោកបញ្ឆោតនាងជាការកម្សាន្ត ព្រោះគេដឹងថានាងជាមនុស្សដែលខ្វល់ខ្វាយខ្លាំងពីសម្តីរបស់មនុស្សជុំវិញ។</p>\r\n<p>កាលពីដើមឆ្នាំសិក្សានាងបានកាត់សក់ត្រឹមស្មា និងកាត់សក់សេះទម្លាក់មកមុខ ហើយមកសាលាទាំងអារម្មណ៍គ្មានទំនុកចិត្តលើខ្លួនឯង និងខ្លាចរអានឹងកែវភ្នែកមនុស្សជុំវិញខ្លួនយ៉ាងខ្លាំង។ តែពេលនោះ មានស្រីៗមួយក្រុមដើរមករកនាងហើយនិយាយ</p>\r\n<p>&laquo; ម៉ូដសក់ថ្មីហេ? ស្អាតមែនទែនឡើងគួរឱ្យស្រលាញ់ &raquo;</p>', 4, 1, '/storage/thumbs/images/5affc4e85c4fd_1526711520_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 05:40:20', '2018-05-29 06:58:00', 0, NULL, NULL, NULL, NULL, NULL, 0),
(586, 'គ្រាន់តែពូកែ ​Drama សោះ! ​គេបែរជាធ្វើបែបនេះដាក់ខ្ញុំ', 'drama', '<p>សម័យនេះជាសម័យដែលមនុស្សប្រុសស្រីក្មេងចាស់ជាពិសេសយុវវ័យតែម្តង ឈ្លក់វង្វេង និងងប់ងល់នឹងជីវិតដែលមានតែតួអក្សរនៅលើបណ្តាញសង្គម។ វាបានក្លាយជារបស់មួយដែលជះឥទ្ធិពលដល់ជីវិត និងការរស់នៅរបស់មនុស្សស្ទើរតែទាំងអស់។</p>\r\n<p>ពេលខ្លះយើងចំណាយពេលវេលាជាមួយប្រព័ន្ធអ៊ីនធើណេត និងឧបករណ៍អេឡិចត្រូនិច ដែលគ្មានជីវិតនិងរូបរាង ជាជាងចំណាយពេលវេលាជាមួយមនុស្សពិតដែលមានរូបរាងមានសាច់ឈាមពិតទៅទៀត។&nbsp;</p>\r\n<p>ពួកយើងចំណាយពេលសួស្តីគ្នា រាក់ទាក់គ្នាក្នុងបណ្តាញសង្គមតែយើងបែរជាមិនបាននិយាយគ្នា ឬសូម្បីតែញញឹមដាក់គ្នានៅក្នុងពិភពខាងក្រៅ។ យើងចំណាយពេលជូនពរគ្នា ក្នុងបណ្តាញសង្គមតែបែរជាមិនដែលបានចំណាយពេលវេលាជាមួយគ្រួសារ មិត្តភក្តិ និងមនុស្សជាទីស្រលាញ់ទៅវិញ។ ហេតុអ្វីមនុស្សងប់ងល់នឹងរបស់គ្មានវិញ្ញាណនោះខ្លាំងម្ល៉េះ? ពេលខ្លះមនុស្សមិនដែលជួបមុខគ្នា ក៏អាចឈ្លោះគ្នាក៏ដោយសារតែបណ្តាញសង្គមដ៏ជឿនលឿនមួយនេះដែរ។ ហើយជំងឺដែលកំពុងតែពេញនិយមក្នុងពេលនេះគឺជំងឺដ្រាម៉ាដែលមានស្អីក៏បង្ហោះ ស្អីក៏និយាយ មិនថាទាំងរឿងសប្បាយ និងកើតទុក្ខ។&nbsp;</p>', 4, 1, '/storage/thumbs/images/31944514_1833417896722260_3445988270310162432_n.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 05:43:46', '2018-05-29 06:28:05', 0, NULL, NULL, NULL, NULL, NULL, 0),
(587, 'បើស្នេហាយើងមួយនេះខុសគេ ​តើអូនព្រមនៅក្បែរបងមួយជីវិតឬក៏អត់?', '', '<p>សំឡេងខ្លែងស្រាកយំ អមនឹងសត្វបក្សីស្រែកបន្ទរគ្នាឮខ្ទ័រពេញព្រៃព្រឹក្សា បានក្លាយជាទេសភាពមួយដ៏គួរឱ្យព្រឺសម្បុរ។ កន្លែងតែមួយ ពេលតែមួយខុសត្រង់តែពេលវេលាតែប៉ុណ្ណោះ តែទីនេះនៅតែគួរឱ្យខ្លាច ត្រជាក់ និងបង្កប់អំណាចគួរឱ្យខ្លាចម្យ៉ាង។ វាពិតជាសាកសមណាស់ក្នុងការប្រយុទ្ធរបស់ពួកយើងនៅពេលនេះ។ សំឡេងមួយស្រែកពីក្រោយទាំងរីករាយ</p>\r\n<p>&laquo; មកចំពេលល្អណាស់ បិសាចឯងពិតជាមានពាក្យសច្ចៈមែន។ ឯង ដឹងទេថាគ្រួសាររបស់យើងដែលនៅសល់ តាមរកឯងសងសឹកយូរប៉ុណ្ណានោះ។ ពេលនេះដល់ពេលហើយដែលឯងត្រូវសងគ្រប់យ៉ាងចំពោះដូនតារបស់យើង&raquo; ខ្ញុំសើចដើម-ក ទាំងមុខមាំបន្តិចរួចនិយាយរបទៅវិញ</p>\r\n<p>&laquo; យើងថ្ងៃនេះក៏តាំងចិត្តមកសងអ្វីគ្រប់យ៉ាងដល់គ្រួសារឯងវិញដូចគ្នា គឺតាំងចិត្តមកស្លាប់រួចមកហើយ បើយើងពិតចាញ់ក្រោមដៃរបស់ឯងនោះ &raquo;</p>', 4, 1, '/storage/thumbs/images/32856048_1762648297153139_6440267618849914880_n.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 05:47:08', '2018-05-29 06:27:25', 0, NULL, NULL, NULL, NULL, NULL, 0),
(588, 'អ្វីដែលអ្នកមានគុណបានធ្វើ...ផ្តល់ការឈឺចាប់ដល់ខ្ញុំអស់មួយជីវិត', '', '<p>នៅក្នុងក្លឹបរាត្រីមួយដែលមានមនុស្សប្រុសស្រីក្មេងៗជាច្រើនកំពុងតែសប្បាយភ្លើតភ្លើននឹងភ្លើងពណ៌ញាក់ញ័រ និងគ្រឿងស្រវឹងនោះ ខ្ញុំក៏ជាមនុស្សម្នាក់នៅក្នុងចំណោមពួកគេដែរ។ ប៉ុន្មានឆ្នាំហើយដែលខ្ញុំដើរសប្បាយភ្លើនភ្លើននឹងមនុស្សអស់នេះ ខ្ញុំក៏មិនចាំដែរ តែវាប្រហែលជាពេលដែលប៉ាមានប្រពន្ធចុង និងម៉ាក់រវល់តែរឿងរកស៊ីទេដឹង? ឬក៏មានហេតុផលអ្វីផ្សេងក្រៅពីនោះ? ការដើរហើរយប់ព្រលប់មិនមែនជារឿងល្អនោះទេ ខ្ញុំក៏ដឹងតែខ្ញុំគ្មានជម្រើស។ នៅផ្ទះមានតែភាពស្ងប់ស្ងាត់ពោរពេញដោយបរិយាកាសអាប់អួរ តែបើបានជាអ៊ូអរ ប្រាកដជាសំឡែងម៉ាក់ប៉ាឈ្លោះប្រកែកគ្នាហើយ បើអ្នកជាខ្ញុំអ្នកប្រាកដជាជ្រើសរើសជីវិតដូចជាខ្ញុំដែរហើយ។ អ្នកអាចមើលឃើញសម្បកក្រៅថាខ្ញុំជាមនុស្សហ៊ីហារ លុយចាយមិនខ្វះ គ្រួសារក៏មានឋានៈ ប៉ុន្តែជម្រៅនៅក្នុងចិត្តរបស់ខ្ញុំអ្នកប្រាកដជាមិនបានដឹងថាវាពិបាកទ្រាំប៉ុណ្ណា វាឈឺចាប់ប៉ុណ្ណា ឯកាប៉ុណ្ណានោះទេ។&nbsp;&nbsp;</p>', 4, 1, '/storage/thumbs/images/5afea0900a453_1526636640_large.jpg', '', NULL, 1, 2, 2, NULL, '2017-11-30 05:50:02', '2018-05-29 06:26:48', 0, NULL, NULL, NULL, NULL, NULL, 0),
(589, 'new songs', 'new-songs', NULL, 17, 3, '/storage/thumbs/images/numb_linkin_park.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:40:17', '2018-05-29 06:26:03', 0, NULL, NULL, NULL, NULL, NULL, 0),
(590, 'new songs', 'new-songs', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 17, 3, '/storage/thumbs/images/manich_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:41:39', '2018-05-29 06:25:15', 0, NULL, NULL, NULL, NULL, NULL, 0),
(591, 'new songs', 'new-songs', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 17, 3, '/storage/thumbs/images/save_my_self.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:43:02', '2018-05-29 06:24:33', 0, NULL, NULL, NULL, NULL, NULL, 0),
(592, 'new songs', 'new-songs', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 17, 3, '/storage/thumbs/images/Education-in-Cambodia-1_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:44:56', '2018-05-29 07:00:40', 0, NULL, NULL, NULL, NULL, NULL, 0),
(593, 'adventure', 'adventure', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 18, 3, '/storage/thumbs/images/kk_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:53:21', '2018-05-29 06:23:36', 0, NULL, NULL, NULL, NULL, NULL, 0),
(594, 'adventure', 'adventure', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 18, 3, '/storage/thumbs/images/5b061b8c72b38_1527126900_large_1.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:54:39', '2018-05-29 06:21:33', 0, NULL, NULL, NULL, NULL, NULL, 0),
(595, 'adventure', 'adventure', NULL, 18, 3, '/storage/thumbs/images/2_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:55:18', '2018-05-29 06:20:22', 0, NULL, NULL, NULL, NULL, NULL, 0),
(596, 'adventure', 'adventure', '<p>Lorem ipsum dolor sit amet, nisl nec tellus vestibulum, urna et feugiat integer at diam, elit fermentum vestibulum, erat nibh quisque nulla ullamcorper. Elit mollis, commodo volutpat metus wisi volutpat eu, mollis nec at turpis. Tellus quis, nulla enim ligula cras pretium, aenean lobortis mi integer ipsum, mi neque est a. Posuere ut a velit.</p>', 18, 3, '/storage/thumbs/images/GD1_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 07:56:33', '2018-05-29 06:19:31', 0, NULL, NULL, NULL, NULL, NULL, 0),
(597, 'ហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះ', 'crush-jets-container', '<p>ហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះ</p>\r\n<p>&nbsp;</p>', 12, 3, '/storage/thumbs/images/5b026e5bf0a59_1526885940_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 08:01:27', '2018-05-21 02:39:11', 0, NULL, NULL, NULL, NULL, NULL, 0),
(598, 'ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ', '', '<p>ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ</p>', 12, 3, '/storage/thumbs/images/taeyeon-3_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 08:02:40', '2018-05-29 06:18:09', 0, NULL, NULL, NULL, NULL, NULL, 0),
(599, 'ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ', '', '<p>ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ</p>\r\n<p><img src="http://127.0.0.1:8000/storage/uploads/images/5affc4e85c4fd_1526711520_large.jpg" alt="ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ" width="960" height="720" /></p>', 12, 3, '/storage/thumbs/images/5affc4e85c4fd_1526711520_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 08:03:26', '2018-05-21 02:45:26', 0, NULL, NULL, NULL, NULL, NULL, 0),
(600, 'អតីតអ្នកនិពន្ធដ៏ល្បីល្បាញគឺលោ គង់ ប៊ុនឈឿន', '', '<p>អតីតអ្នកនិពន្ធដ៏ល្បីល្បាញគឺលោ គង់ ប៊ុនឈឿន</p>', 12, 3, '/storage/thumbs/images/31944514_1833417896722260_3445988270310162432_n.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, 2, NULL, '2017-12-01 08:04:55', '2018-05-29 06:17:14', 0, NULL, NULL, NULL, NULL, NULL, 0),
(601, 'មើល​តម្លៃ Camry បាឡែន​ ០២មួយ​ទឹក ១០ ម៉ូដែល​ដាក់​លក់​ព្រឹក​នេះ', 'camry', '<p>ក្រៅពី Highlander, Lexus, Prius រថយន្ត​កាមរី​បាឡែន Camry ជា​រថយន្ត​ស៊េរីពេញនិយម​មួយ​ សម្រាប់​ប្រើ​ប្រាស់​ជា​លក្ខណៈ​គ្រួសារ ពិសេស​អ្នក​មាន​ជីវភាព​សម​ល្មមនៅព្រឹកនេះ Sabay បង្ហាញ​តម្លៃ Camry បាឡែន​មួយ​ទឹក ១០​ម៉ូដែល​ស៊េរី​ឆ្នាំ ២០០២ មាន​ប្រភេទ LE, XLE, ABS, ពណ៌៕</p>\r\n<p>ចង់​ដឹង​ច្បាស់​មើល​តម្លៃ​ខាង​ក្រោម៖</p>\r\n<p>បញ្ជាក់៖ តម្លៃ​អាច​ប្រែប្រួល​បន្តិច​បន្តួច​បន្ទាប់​ពី​ចុះ​ផ្សាយ តម្លៃ​មិន​បូក​បញ្ចូល​ផ្លាកលេខ។</p>\r\n<p>តម្លៃ​ផ្ដល់​ដោយ​ឃ្លាំង​លក់​ឡាន 288 Garage។</p>', 4, 1, '/storage/thumbs/images/a1_large.jpg', '', NULL, 1, 2, 2, NULL, '2018-05-17 19:37:29', '2018-05-29 07:39:00', 0, 'car camry', NULL, NULL, 'សិល្បះកម្សាន្ត', NULL, 1),
(602, '​មកដឹងប្រាក់ខែស្ដង់ដារបុគ្គលិកដំបូងៗ និងជំនាញចាំបាច់នៅធនាគារអេស៊ីលីដា', '', '<p>​មកដឹងប្រាក់ខែស្ដង់ដារបុគ្គលិកដំបូងៗ និងជំនាញចាំបាច់នៅធនាគារអេស៊ីលីដា</p>\r\n<p>ធនាគារ អេស៊ីលីដា ជា​ធនាគារ​នាំមុខ​គេ​មួយ​នៅ​កម្ពុជា​ ដែល​មាន​បុគ្គលិក​ជាង ១២ ០០០​នាក់ និង​ជ្រើសរើស​និស្សិត​មាន​បរិញ្ញាបត្រ​ពី​មហាវិទ្យាល័យ​ច្រើន​ជាង​គេ។ ក្នុង​មួយ​ឆ្នាំៗ​ ធនាគារ​ដ៏​ចំណាស់​មួយ​នេះ បានប្រកាស​ជ្រើស​រើស​បុគ្គលិក​ឲ្យ​បម្រើការ​គ្រប់​សាខា​ទាំង​អស់​ មិន​ក្រោម ៣ពាន់​កន្លែង​ឡើយ ឬប្រមាណ ២,៧% នៃចំនួនបុគ្គលិកសរុប។​</p>\r\n<p><img src="http://127.0.0.1:8000/storage/uploads/images/31944514_1833417896722260_3445988270310162432_n_1.jpg" alt="ធនាគារ អេស៊ីលីដា ជា​ធនាគារ​នាំមុខ​គេ​មួយ​នៅ​កម្ពុជា​ ដែល​មាន​បុគ្គលិក​ជាង ១២ ០០០​នាក់ និង​ជ្រើសរើស​និស្សិត​មាន​បរិញ្ញាបត្រ​ពី​មហាវិទ្យាល័យ​ច្រើន​ជាង​គេ។ ក្នុង​មួយ​ឆ្នាំៗ​ ធនាគារ​ដ៏​ចំណាស់​មួយ​នេះ បានប្រកាស​ជ្រើស​រើស​បុគ្គលិក​ឲ្យ​បម្រើការ​គ្រប់​សាខា​ទាំង​អស់​ មិន​ក្រោម ៣ពាន់​កន្លែង​ឡើយ ឬប្រមាណ ២,៧% នៃចំនួនបុគ្គលិកសរុប។​" width="960" height="960" /></p>\r\n<p>ធនាគារ អេស៊ីលីដា ជា​ធនាគារ​នាំមុខ​គេ​មួយ​នៅ​កម្ពុជា​ ដែល​មាន​បុគ្គលិក​ជាង ១២ ០០០​នាក់ និង​ជ្រើសរើស​និស្សិត​មាន​បរិញ្ញាបត្រ​ពី​មហាវិទ្យាល័យ​ច្រើន​ជាង​គេ។ ក្នុង​មួយ​ឆ្នាំៗ​ ធនាគារ​ដ៏​ចំណាស់​មួយ​នេះ បានប្រកាស​ជ្រើស​រើស​បុគ្គលិក​ឲ្យ​បម្រើការ​គ្រប់​សាខា​ទាំង​អស់​ មិន​ក្រោម ៣ពាន់​កន្លែង​ឡើយ ឬប្រមាណ ២,៧% នៃចំនួនបុគ្គលិកសរុប។​</p>\r\n<p>ធនាគារ អេស៊ីលីដា ជា​ធនាគារ​នាំមុខ​គេ​មួយ​នៅ​កម្ពុជា​ ដែល​មាន​បុគ្គលិក​ជាង ១២ ០០០​នាក់ និង​ជ្រើសរើស​និស្សិត​មាន​បរិញ្ញាបត្រ​ពី​មហាវិទ្យាល័យ​ច្រើន​ជាង​គេ។ ក្នុង​មួយ​ឆ្នាំៗ​ ធនាគារ​ដ៏​ចំណាស់​មួយ​នេះ បានប្រកាស​ជ្រើស​រើស​បុគ្គលិក​ឲ្យ​បម្រើការ​គ្រប់​សាខា​ទាំង​អស់​ មិន​ក្រោម ៣ពាន់​កន្លែង​ឡើយ ឬប្រមាណ ២,៧% នៃចំនួនបុគ្គលិកសរុប។​</p>', 17, 3, '/storage/thumbs/images/5b026e5bf0a59_1526885940_large.jpg', '', 'https://www.youtube.com/embed/bA0AoEomsDY', 1, 2, 2, NULL, '2018-05-17 21:05:39', '2018-05-29 06:15:15', 0, 'ធនាគារ អេស៊ីលីដា ជា​ធនាគារ​នាំមុខ​គេ​មួយ​នៅ​កម្ពុជា​ ដែល​មាន​បុគ្គលិក​ជាង ១២ ០០០​នាក់ និង​ជ្រើសរើស​និស្សិត​មាន​បរិញ្ញាបត្រ​ពី​មហាវិទ្យាល័យ​ច្រើន​ជាង​គេ។ ក្នុង​មួយ​ឆ្នាំៗ​ ធនាគារ​ដ៏​ចំណាស់​មួយ​នេះ បានប្រកាស​ជ្រើស​រើស​បុគ្គលិក​ឲ្យ​បម្រើការ​គ្រប់​សាខា​ទាំង​អស់​ មិន​ក្រោម ៣ពាន់​កន្លែង​ឡើយ ឬប្រមាណ ២,៧% នៃចំនួនបុគ្គលិកសរុប។​', NULL, NULL, '111111111111111111', NULL, 0),
(603, 'បារាំង​និង​ព័រទុយហ្គាល់ ចេញ​ពី​បញ្ជី​កីឡាករ​ទៅ WC​ ឃើញ​ញាក់​សាច់', 'wc', '<p>ទីបំផុត​ជម្រើស​ជាតិ​បារាំង​និង​ព័រទុយហ្គាល់ បាន​បង្ហាញ​បញ្ជី​ឈ្មោះ​កីឡាករ​ត្រៀម​ប្រកួត​ World Cup 2018 នៅ​ប្រទេស​រុស្សី​ហើយ។</p>\r\n<p><img src="http://127.0.0.1:8000/storage/uploads/images/5afe4c255cd26_1526615040_large.jpg" alt="រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​ Premier League ទាំង​ពីរ Anthony Martial និង Alexandre Lacazette  មក​នោះ​ទេ ដាក់​ត្រឹម​កីឡាករ​បម្រុង​ប៉ុណ្ណោះ។ មូលហេតុ​ដែល​លោក Didier Deschamps ដែល​ជា​គ្រូ​ជម្រើស​ជាតិ​បារាំង​មិន​ហៅ​អ្នក​ទាំង​ពីរ ដោយ​សារ​តែ​ពួក​គេ​​បង្ហាញ​ទម្រង់​លេង​មិន​បាន​ល្អ​ជាមួយ​ក្លឹប​អាជីព​ក្នុង​រដូវ​កាល​នេះ។  Olivier Giroud  បាន​ជាប់​ក្នុង​បញ្ជី​២៣​នាក់​ជា​ខ្សែ​ប្រយុទ្ធ ជាមួយ​កីឡាករ​មួយ​ចំនួន​ទៀត​ដូច​ជា Kylian Mbappe, Ousmane Dembele, Nabil Fekir, Thomas Lemar, Antoine Griezmann និង Florian Thauvin។" width="634" height="361" /></p>\r\n<p>រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​ Premier League ទាំង​ពីរ Anthony Martial&nbsp;និង&nbsp;Alexandre Lacazette&nbsp; មក​នោះ​ទេ ដាក់​ត្រឹម​កីឡាករ​បម្រុង​ប៉ុណ្ណោះ។ មូលហេតុ​ដែល​លោក Didier Deschamps ដែល​ជា​គ្រូ​ជម្រើស​ជាតិ​បារាំង​មិន​ហៅ​អ្នក​ទាំង​ពីរ ដោយ​សារ​តែ​ពួក​គេ​​បង្ហាញ​ទម្រង់​លេង​មិន​បាន​ល្អ​ជាមួយ​ក្លឹប​អាជីព​ក្នុង​រដូវ​កាល​នេះ។</p>\r\n<p>Olivier Giroud&nbsp; បាន​ជាប់​ក្នុង​បញ្ជី​២៣​នាក់​ជា​ខ្សែ​ប្រយុទ្ធ ជាមួយ​កីឡាករ​មួយ​ចំនួន​ទៀត​ដូច​ជា Kylian Mbappe, Ousmane Dembele, Nabil Fekir, Thomas Lemar,&nbsp;Antoine Griezmann&nbsp;និង Florian Thauvin។</p>', 18, 3, '/storage/thumbs/images/31925069_1833374863393230_6149738460237266944_n.jpg', '', 'https://www.youtube.com/embed/YPZl-MB4Qc4', 1, 2, 2, NULL, '2018-05-17 21:14:08', '2018-05-29 06:14:04', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'បារាំង​និង​ព័រទុយហ្គាល់', 'https://www.facebook.com/', 1),
(604, 'ពិនិត្យ​​បញ្ជី​ឈ្មោះ​​កីឡាករ​របស់​​ខ្លា​កំណាច​ទាំង​ ៥​​ត្រៀម​ទៅ World Cup', 'world-cup', '<p>ប្រទេស​ទាំង​៣២​ដែល​មាន​ឈ្មោះ​ធ្វើ​ដំណើរ​ទៅ​កាន់​ព្រឹត្តិការណ៍ World Cup 2018 នា​ប្រទេស​រុស្សី បាន​បង្ហាញ​បញ្ជី​ឈ្មោះ​កីឡាករ​បណ្ដើរ​ៗ​ហើយ។ ការ​ប្រកាស​រ​ជួរ​កីឡាករ​​របស់​​ប្រទេស​ធំ​ៗ​បាន​ធ្វើ​ឲ្យ​អ្នក​គាំទ្រ​ ចាប់​អារម្មណ៍​ខ្លាំង នា​ពេល​ថ្មីៗ។ ថ្ងៃ​​នេះ​សូម​បង្ហាញ​បញ្ជី​ឈ្មោះ​កីឡាករ​របស់ ប្រទេស​ខ្លាំង​ទាំង​៥​មាន​ដូ​ច​ជា អាហ្សង់ទីន អាល្លឺម៉ង់ ព័រទុយហ្គាល់ អង់គ្លេស​និង​ប្រេស៊ីល៖</p>\r\n<p><strong>បញ្ជាក់</strong>៖ (នៅ​មាន​ប្រទេស​ច្រើន​ទៀត​មិន​ទាន់​ប្រកាស​ឈ្មោះ​កីឡាករនៅ​ឡើយ​ទេ)។&nbsp;<a title="Opens in a new window" href="http://www.marca.com/en/world-cup/2018/05/14/5af9fe58e5fdea11148b45ee.html" target="_blank">នេះ​ជា​លីង​ប្រទេស​ប្រកាស​ឈ្មោះ​កីឡាករ។</a></p>\r\n<p><strong>១.អាល្លឺម៉ង់</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>អ្នក​ចាំទី:&nbsp;Anthony Lopes (Lyon), Beto (Goztepe), Rui Patr&iacute;cio (Sporting CP).</p>\r\n</li>\r\n<li>\r\n<p>ខ្សែការពារ:&nbsp;Antunes (Getafe), Bruno Alves (Rangers), C&eacute;dric Soares (Southampton), Jo&atilde;o Cancelo (Inter), Jos&eacute; Fonte (Dalian Yifang), Lu&iacute;s Neto (Fenerbah&ccedil;e), M&aacute;rio Rui (N&aacute;poles), Nelson Semedo (Barcelona), Pepe (Besiktas), Raphael Guerreiro (Dortmund), Ricardo Pereira (Porto), Rolando (Marseille), R&uacute;ben Dias (Benfica).</p>\r\n</li>\r\n<li>\r\n<p>ខ្សែ​បម្រើ:&nbsp;Adrien Silva (Leicester), Andr&eacute; Gomes (Barcelona), Bruno Fernandes (Sporting CP), Jo&atilde;o M&aacute;rio (West Ham), Jo&atilde;o Moutinho (M&oacute;naco), Manuel Fernandes (Lokomotiv), R&uacute;ben Neves (Wolves), Sergio Oliveira (Porto), William Carvalho (Sporting CP).</p>\r\n</li>\r\n<li>\r\n<p>ខ្សែ​ប្រយុទ្ធ:&nbsp;Andr&eacute; Silva (Milan), Bernardo Silva (Manchester City), Cristiano Ronaldo (Real Madrid), &Eacute;der (Lokomotiv), Gelson Martins (Sporting CP), Gon&ccedil;alo Guedes (Valencia), Nani (Lazio), Paulinho (SC Braga), Ricardo Quaresma (Besiktas), Ronny Lopes (Monaco). ​</p>\r\n</li>\r\n</ul>', 2, 1, '/storage/thumbs/images/31944514_1833417896722260_3445988270310162432_n_1.jpg', '', NULL, 1, 2, 2, NULL, '2018-05-17 21:30:19', '2018-05-29 07:23:19', 0, 'សសស', NULL, NULL, 'កំសាន្ត', NULL, 0),
(605, '៣ គន្លឹះ​ជួយ​ឡាន​ឆាប់​ត្រជាក់ ពេល​មេឃ​ក្ដៅ​ខ្លាំង', '', '<p>ប៉ុន្មាន​ថ្ងៃ​នេះ​មេឃ​ត្រូវ​ភ្លៀង​ក៏​ភ្លៀង​ភ្លាម ពេល​ក្ដៅ​ក៏​ក្ដៅ​សឹង​បែក​មេឃ ដែល​ជា​ហេតុ​អ្នក​ធ្វើ​ដំណើរ​តាម​ផ្លូវ​ពិបាក​នឹង​ទប់​ទល់ រី​ឯ​អ្នក​ប្រើ​ប្រាស់​ឡាន ទោះ​បើក​ម៉ាស៊ីន​ត្រជាក់​ខ្លាំង​ប៉ុណ្ណា​ក៏​នៅ​តែ​មិន​ត្រជាក់​ល្អ ចំណែក​សាំង​ក៏​ហូរ​ច្រើន​តាម​កម្លាំង​ម៉ាស៊ីន​ត្រជាក់​ដែរ។ Sabay នឹង​លើក​យក ៣គន្លឹះ សម្រាប់​អ្នក​ប្រើ​ឡាន អាច​ធ្វើ​ឲ្យ​ម៉ាស៊ីន​ត្រជាក់​ធ្វើ​ការ​បាន​ល្អ៖</p>\r\n<p><strong>១. បង្ហើប​បង្អួច​ឡាន​បន្តិច​ពេល​ចត​រថយន្ត​ក្រោម​កម្ដៅ​ថ្ងៃ</strong></p>\r\n<p><strong>ចត​ឡាន​ក្រោម​កម្ដៅ​ថ្ងៃ​យូរ ធ្វើ​ឲ្យ​ផ្នែក​ខាង​ក្នុង​រថយន្ត​ក្ដៅ​ខ្លាំង​ដោយ​គ្មាន​ខ្យល់​ចេញ​ចូល ហើយ​បើ​សីតុណ្ហភាព​កាន់​តែ​ក្ដៅ អាច​ធ្វើ​ឲ្យ​ផ្ទុះ​កញ្ចក់​បាន។ អ្នក​គួរ​បង្ហើប​បង្អួច​បន្តិច​ឲ្យ​មាន​ខ្យល់​ចេញ​ចូល (តែ​កុំ​ធំ​ពេក ប្រយ័ត្ន​គេ​គាស់​ឡាន) ដើម្បី​ពេល​បើក​ម៉ាស៊ីន​ត្រជាក់ ឡាន​នឹង​ឆាប់​ត្រជាក់​ជាង​មុន។</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong><img src="http://127.0.0.1:8000/storage/uploads/images/5afe4fd7ba1c0_1526616000_large.jpg" alt="ចត​ឡាន​ក្រោម​កម្ដៅ​ថ្ងៃ​យូរ ធ្វើ​ឲ្យ​ផ្នែក​ខាង​ក្នុង​រថយន្ត​ក្ដៅ​ខ្លាំង​ដោយ​គ្មាន​ខ្យល់​ចេញ​ចូល ហើយ​បើ​សីតុណ្ហភាព​កាន់​តែ​ក្ដៅ អាច​ធ្វើ​ឲ្យ​ផ្ទុះ​កញ្ចក់​បាន។ អ្នក​គួរ​បង្ហើប​បង្អួច​បន្តិច​ឲ្យ​មាន​ខ្យល់​ចេញ​ចូល (តែ​កុំ​ធំ​ពេក ប្រយ័ត្ន​គេ​គាស់​ឡាន) ដើម្បី​ពេល​បើក​ម៉ាស៊ីន​ត្រជាក់ ឡាន​នឹង​ឆាប់​ត្រជាក់​ជាង​មុន។" width="1100" height="734" /></strong></p>\r\n<p><strong>ចត​ឡាន​ក្រោម​កម្ដៅ​ថ្ងៃ​យូរ ធ្វើ​ឲ្យ​ផ្នែក​ខាង​ក្នុង​រថយន្ត​ក្ដៅ​ខ្លាំង​ដោយ​គ្មាន​ខ្យល់​ចេញ​ចូល ហើយ​បើ​សីតុណ្ហភាព​កាន់​តែ​ក្ដៅ អាច​ធ្វើ​ឲ្យ​ផ្ទុះ​កញ្ចក់​បាន។ អ្នក​គួរ​បង្ហើប​បង្អួច​បន្តិច​ឲ្យ​មាន​ខ្យល់​ចេញ​ចូល (តែ​កុំ​ធំ​ពេក ប្រយ័ត្ន​គេ​គាស់​ឡាន) ដើម្បី​ពេល​បើក​ម៉ាស៊ីន​ត្រជាក់ ឡាន​នឹង​ឆាប់​ត្រជាក់​ជាង​មុន។</strong></p>', 18, 3, '/storage/thumbs/images/5affc4e85c4fd_1526711520_large.jpg', '', 'https://www.youtube.com/embed/m3jaFXrpOUs', 1, 2, 2, NULL, '2018-05-17 21:39:44', '2018-05-29 06:13:19', 0, NULL, NULL, NULL, NULL, NULL, 0),
(606, 'អុញ​នោះ! Shawn Mendes និយាយ​ថា Hailey Baldwin ជា​មិត្ត​ល្អ​របស់​ខ្លួន', 'shawn-mendes-hailey-baldwin', '<p>អុញ​នោះ! Shawn Mendes និយាយ​ថា Hailey Baldwin ជា​មិត្ត​ល្អ​របស់​ខ្លួនអុញ​នោះ! Shawn Mendes និយាយ​ថា Hailey Baldwin ជា​មិត្ត​ល្អ​របស់​ខ្លួន</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/2_large.jpg" alt="" width="600" height="398" /></p>', 2, 1, '/storage/thumbs/images/manich_large.jpg', '', NULL, 1, 2, 2, NULL, '2018-05-17 22:07:01', '2018-05-29 07:20:46', 0, 'អុញ​នោះ! Shawn Mendes និយាយ​ថា Hailey Baldwin ជា​មិត្ត​ល្អ​របស់​ខ្លួនអុញ​នោះ!', NULL, NULL, NULL, 'https://www.facebook.com/', 0),
(607, '៣០០នាក់ រួម​គ្នា​ពិភាក្សា​ស៊ី​ជម្រៅ​រឿង​ឧស្សាហកម្ម​ដែក​កម្ពុជា', '', '<p>៣០០នាក់ រួម​គ្នា​ពិភាក្សា​ស៊ី​ជម្រៅ​រឿង​ឧស្សាហកម្ម​ដែក​កម្ពុជា</p>\r\n<p><img src="http://127.0.0.1:8000/storage/uploads/images/5afea0900a453_1526636640_large.jpg" alt="កម្មវិធី​ដាក់​កម្ពុជា​លើ​ផែនទី​ឧស្សាហកម្ម​ដែក​ពិភព​លោក ដោយ​ធ្វើ​នៅ​សណ្ឋាគារ Sofitel Phnom Penh Phokeethra Hotel កាល​ពី​ថ្ងៃ​ទី១១ ឧសភា នោះ ធ្វើ​ឡើង​ដើម្បី​ត្រួត​ពិនិត្យ​វិស័យ​សំណង់​ទូទៅ និង​វិស័យ​សំណង់​ពាក់ព័ន្ធ​នឹង​គ្រោង​បង្គំ​ដែក ព្រម​ទាំង​ការ​ពិចារណា​លើ​ការ​អភិវឌ្ឍ​នា​ពេល​អនាគត ដែល​រៀបចំ​ដោយ​សម្ព័ន្ធ ISI Group។  វេទិកា​ឧស្សាហកម្ម​ដែក​នេះ ក្រៅ​ពី​មាន​ការ​ចូល​រួម​ពី​ថ្នាក់​ដឹកនាំ​ស្ថាប័ន​រាជ​រដ្ឋាភិបាល វិស័យ​ឯកជន ស្ថាប័ន​ស្រាវជ្រាវ និង​អ្នក​វិនិយោគ​ក្នុង-ក្រៅ​ស្រុក​ជាង ៣០០ នាក់ ក៏​មាន​ការ​ពិភាក្សា​យ៉ាង​ស៊ី​ជម្រៅ​ពី​ខ្សែ​សង្វាក់​ផ្គត់​ផ្គង់ និង​តម្លៃ​ក្នុង​តំបន់ ក៏​ដូចជា​ការ​ប្រើ​ប្រាស់​ដែក​ក្នុង​ការ​ជួយ​គាំទ្រ​ដល់​វិស័យ​សំណង់ និង​រោងចក្រ​កម្ពុជា​ផង​ដែរ។" width="1100" height="733" /></p>\r\n<p>កម្មវិធី​ដាក់​កម្ពុជា​លើ​ផែនទី​ឧស្សាហកម្ម​ដែក​ពិភព​លោក ដោយ​ធ្វើ​នៅ​សណ្ឋាគារ Sofitel Phnom Penh Phokeethra Hotel កាល​ពី​ថ្ងៃ​ទី១១ ឧសភា នោះ ធ្វើ​ឡើង​ដើម្បី​ត្រួត​ពិនិត្យ​វិស័យ​សំណង់​ទូទៅ និង​វិស័យ​សំណង់​ពាក់ព័ន្ធ​នឹង​គ្រោង​បង្គំ​ដែក ព្រម​ទាំង​ការ​ពិចារណា​លើ​ការ​អភិវឌ្ឍ​នា​ពេល​អនាគត ដែល​រៀបចំ​ដោយ​សម្ព័ន្ធ ISI Group។</p>\r\n<p>វេទិកា​ឧស្សាហកម្ម​ដែក​នេះ ក្រៅ​ពី​មាន​ការ​ចូល​រួម​ពី​ថ្នាក់​ដឹកនាំ​ស្ថាប័ន​រាជ​រដ្ឋាភិបាល វិស័យ​ឯកជន ស្ថាប័ន​ស្រាវជ្រាវ និង​អ្នក​វិនិយោគ​ក្នុង-ក្រៅ​ស្រុក​ជាង ៣០០ នាក់ ក៏​មាន​ការ​ពិភាក្សា​យ៉ាង​ស៊ី​ជម្រៅ​ពី​ខ្សែ​សង្វាក់​ផ្គត់​ផ្គង់ និង​តម្លៃ​ក្នុង​តំបន់ ក៏​ដូចជា​ការ​ប្រើ​ប្រាស់​ដែក​ក្នុង​ការ​ជួយ​គាំទ្រ​ដល់​វិស័យ​សំណង់ និង​រោងចក្រ​កម្ពុជា​ផង​ដែរ។</p>', 18, 3, '/storage/thumbs/images/5afea0900a453_1526636640_large.jpg', '', 'https://www.youtube.com/embed/cFebQfDloJ4', 1, 2, NULL, NULL, '2018-05-21 02:26:07', '2018-05-21 02:26:07', 0, '៣០០នាក់ រួម​គ្នា​ពិភាក្សា​ស៊ី​ជម្រៅ​រឿង​ឧស្សាហកម្ម​ដែក​កម្ពុជា', NULL, NULL, '៣០០នាក់ រួម​គ្នា​ពិភាក្សា​ស៊ី​ជម្រៅ​រឿង​ឧស្សាហកម្ម​ដែក​កម្ពុជា', NULL, 0),
(608, 'ហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះ', 'crush-jets-container', '<p>សល់តែមួយថ្ងៃទៀតទេកម្មវិធីសប្បាយៗដែលនឹងរៀបចំឡើងដោយស្រាបៀរ LEO នឹងមកដល់អ៊ីចឹងកុំភ្លេចបបួលមិត្តភក្តិ ទៅលេងនៅ Jet\'s Container។ សំខាន់មានសុទ្ធតែតារាល្បីដូចជា មាស សុខសោភា ឌី សូនីតា Step តាប៊ុយ ចូលរួម ទៀតផង។</p>\r\n<p><img src="http://127.0.0.1:8000/storage/uploads/images/5afd55e5dabbe_1526551980_large.jpg" alt="សល់តែមួយថ្ងៃទៀតទេកម្មវិធីសប្បាយៗដែលនឹងរៀបចំឡើងដោយស្រាបៀរ LEO នឹងមកដល់អ៊ីចឹងកុំភ្លេចបបួលមិត្តភក្តិ ទៅលេងនៅ Jet\'s Container។ សំខាន់មានសុទ្ធតែតារាល្បីដូចជា មាស សុខសោភា ឌី សូនីតា Step តាប៊ុយ ចូលរួម ទៀតផង។" width="849" height="474" /></p>', 17, 3, '/storage/thumbs/images/31945637_1833418930055490_3597723963024736256_n.jpg', '', 'https://www.youtube.com/embed/r8l0zLvt5QA', 1, 2, 2, NULL, '2018-05-21 02:32:39', '2018-05-29 06:07:18', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, 0),
(609, 'ហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះ', 'crush-jets-container', '<p>ហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះហ៊ានទេនាំ Crush ទៅជួបតារាល្បីៗនៅ Jet\'s Container ថ្ងៃសុក្រនេះ</p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/31894846_1833418396722210_173463403984060416_n.jpg" alt="" width="960" height="960" /></p>\r\n<p>&nbsp;</p>', 17, 3, '/storage/thumbs/images/31894846_1833418396722210_173463403984060416_n.jpg', '', 'https://www.youtube.com/embed/r8l0zLvt5QA', 1, 2, 2, NULL, '2018-05-21 02:34:41', '2018-05-29 07:18:17', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, 0);
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `mediatype_id`, `featured_image`, `sound_url`, `video_url`, `status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `view_count`, `source`, `artist`, `duration`, `genre`, `url`, `is_featured`) VALUES
(610, 'ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ', '', '<p>ជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរជំនាញ​នេះ ក៏​កម្រ​មាន​និស្សិត​ស្រី​សិក្សា​ដែរ</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/5b026e5bf0a59_1526885940_large.jpg" alt="" width="1100" height="733" /></p>\r\n<p>&nbsp;</p>', 12, 3, '/storage/thumbs/images/31719066_761965230666773_5090410348914147328_n.jpg', '', 'https://www.youtube.com/embed/wNcbSL79xUc', 1, 2, 2, NULL, '2018-05-21 02:48:49', '2018-05-29 06:05:17', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, 0),
(611, 'ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​', '', '<p>ជា​ធម្មតា​មុន​ចូល​រោង​ការ​ ឬ​បញ្ចប់​ភាព​នៅ​លីវ​ អ្នក​សិល្បៈ​​ភាគ​ច្រើន​តែង​​​​តែ​ប្រកាស​ប្រាប់​មហាជន​​ឲ្យ​បាន​ដឹង​ជា​សាធារណៈ​​ជាក់ជា​ពុំខាន។​ ដោយ​ឡែក​សម្រាប់​តារា​ចម្រៀង​ប្រុស​ ៥រូប​នេះ​វិញ​​មិន​ធ្លាប់​លេចឮ​ដំណឹង​រៀបការ​​​​​​អ្វី​ឡើយ​ ស្រាប់​តែ​ថ្មីៗ​នេះ​​បង្ហាញ​​​មុខ​ប្រពន្ធ​កូន​ជា​សាធារណៈ​ធ្វើ​ឲ្យ​ផ្អើល​អស់​មហាជន​​ទាំង​ក្នុង​ និង​ក្រៅ​សិល្បៈ។</p>\r\n<p>១. កាល​ពី​ថ្ងៃ​ទី​ ២៨ ខែ​មេសា ឆ្នាំ ២០១៨ កំពូល​តារា​ចម្រៀង​&nbsp;<strong>ខេមរៈ សិរីមន្ត</strong>&nbsp;ដាច់​ចិត្ត​​​ទម្លាយ​រឿង​ខ្លួន​​​មាន​កូន​ ព្រម​ទាំង​បាន​រៀបការ​ប្រពន្ធ​អំឡុង​ឆ្នាំ​ ២០០៩។ ដំណឹង​នេះ​បាន​ធ្វើ​ឲ្យ​ហ្វេនៗ​​មាន​ការ​ភ្ញាក់​ផ្អើល​យ៉ាង​ខ្លាំង​ ព្រោះ​រឿង​រ៉ាវ​ដែល​សារព័ត៌មាន​ចុះ​ផ្សាយ​កន្លង​មក​គឺ​ជា​ការពិត​ តែ​លោក​ព្យាយាម​លាក់បាំង។</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/5afd55e5dabbe_1526551980_large.jpg" alt="" width="1024" height="572" />&nbsp;</p>\r\n<p>&nbsp;</p>', 2, 1, '/storage/thumbs/images/Portrait-of-beauty-women-isolated-on-white-Stock-Photo.jpg', '', NULL, 1, 2, 2, NULL, '2018-05-24 02:57:07', '2018-05-29 16:04:02', 0, 'សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​', NULL, NULL, 'សិល្បះកម្សាន្ត', 'http://tousnatv.com/', 1),
(612, 'ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​', '', '<p>ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/explosion_background_light_85521_2560x1600.jpg" alt="ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​" width="1273" height="796" /></p>', 4, 1, '/storage/thumbs/images/5afea0900a453_1526636640_large.jpg', '', NULL, 1, 2, 2, NULL, '2018-05-24 03:12:29', '2018-05-29 06:03:47', 0, 'ខេមរៈ សិរីមន្ត ធ្វើ​ឲ្យ​ ឌីជេក្ដឹប មាន​ដង្ហើម​ដក​ឡើង​វិញ​', NULL, NULL, 'សិល្បះកម្សាន្ត', NULL, 1),
(613, 'សាលា​​ជប៉ុន​មួយ រើស​សិស្ស​អាហារូបករណ៍​ ឲ្យ​លក្ខខណ្ឌ ៤ បើ​សិស្ស​ប្រលងជាប់​​ ផ្គត់ផ្គង់​រៀន​ម៉ាអេម', '', '<p>វិទ្យាស្ថាន​បច្ចេកវិទ្យា​គីរីរម្យ Kirirom Institute of Technology (KIT) បាន​សម្រេច​ផ្ដល់​អាហារូបករណ៍​ថ្នាក់​បរិញ្ញាបត្រ​ចំនួន ១២០ កន្លែង​លើ​ជំនាញ Software Engineering (វិស្វកម្មព័ត៌មានវិទ្យា) និង​ជំនាញ​ដទៃទៀត​ដូច​ជា ស្ថាបត្យកម្ម គ្រប់គ្រងរមណីយដ្ឋាន និងភាសាបរទេស​ដល់​សិស្ស​និស្សិត​កម្ពុជា។</p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/5b0d1e4976501_1527586320_large.jpg" alt="លក្ខខណ្ឌ​នៃ​អាហារូបករណ៍៖  ជា​សិស្ស​ដែល​បាន​ប្រលង​ជាប់​ថ្នាក់​ទី ១២ មាន​ចំណាប់​អារម្មណ៍​លើ​ជំនាញ វិស្វកម្មព័ត៌មានវិទ្យា ស្ថាបត្យកម្ម គ្រប់គ្រងរមណីយដ្ឋាននិងភាសាបរទេស​ ឆ្លង​កាត់​ការ​ប្រឡង​លើ​វិញ្ញាសារ​ចំណេះដឹងទូទៅ គណិតវិទ្យា និង តក្ដវិទ្យា ក្រោយ​ពី​តេស្ត​ជាប់ ឆ្លង​ដល់​ការ​សម្ភាសន៍​ផ្ទាល់​មាត់។ ការ​ដាក់​ពាក្យ​៖" width="1024" height="576" /></p>\r\n<p><strong>លក្ខខណ្ឌ​នៃ​អាហារូបករណ៍៖</strong></p>\r\n<ul>\r\n<li>ជា​សិស្ស​ដែល​បាន​ប្រលង​ជាប់​ថ្នាក់​ទី ១២</li>\r\n<li>មាន​ចំណាប់​អារម្មណ៍​លើ​ជំនាញ វិស្វកម្មព័ត៌មានវិទ្យា ស្ថាបត្យកម្ម គ្រប់គ្រងរមណីយដ្ឋាននិងភាសាបរទេស​</li>\r\n<li>ឆ្លង​កាត់​ការ​ប្រឡង​លើ​វិញ្ញាសារ​ចំណេះដឹងទូទៅ គណិតវិទ្យា និង តក្ដវិទ្យា</li>\r\n<li>ក្រោយ​ពី​តេស្ត​ជាប់ ឆ្លង​ដល់​ការ​សម្ភាសន៍​ផ្ទាល់​មាត់។</li>\r\n</ul>\r\n<p><strong>ការ​ដាក់​ពាក្យ​៖</strong></p>', 5, 1, '/storage/thumbs/images/5b0d1e4976501_1527586320_large.jpg', '', NULL, 1, 2, NULL, NULL, '2018-05-29 16:09:01', '2018-05-29 16:09:01', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'អក្សរសាស្ត្រ', 'https://www.youtube.com/watch?v=jfxovPOhrrI', 1),
(614, 'សសាដាសាសដាដាសសដ', '', '<p>អាជីវកម្ម​មួយ​ដែល​រឹង​មាំ​​ត្រូវ​ឆ្លង​កាត់​ដំណាក់កាល​ជា​ច្រើន ហើយ​ក្នុង​ដំណាក់កាល​នីមួយៗ​ទាមទារ​អោយ​ម្ចាស់​អាជីវកម្ម​​អនុវត្ត​ការងារ​ជាក់លាក់​ដែល​ទាមទាម​ជំនាញ​រៀបចំ និង​ពង្រីក​សមត្ថភាព​ដឹក​នាំ​អោយ​ទាន់​តម្រូវការ​​នៃ​ការ​ផ្លាស់​ប្ដូរ និង​លូតលាស់​របស់​អាជីវកម្ម។</p>\r\n<p>ប្រសិន​បើ​សហគ្រិន​អាច​គ្រប់គ្រង​អោយ​ត្រឹម​ត្រូវ​នៅ​ក្នុង​ដំណាក់កាល​ទាំង​បួន​ខា​ងក្រោម​នេះ នោះ​អាជីវកម្ម​របស់​ពួក​គេ​នឹង​ឆ្ពោះ​ទៅ​រក​ភាព​រឹង​មាំ។</p>', 4, 1, '', '', NULL, 1, 2, NULL, '2018-06-28 07:51:53', '2018-06-28 07:51:06', '2018-06-28 07:51:53', 0, NULL, NULL, NULL, NULL, NULL, 0),
(615, 'កត្តាជំរុញឆ្ពោះទៅរកអាជីពជាអ្នកនិពន្ធ', '', '<p><span style="font-size: 12pt;">តើបណ្ឌិត រឺ សាស្ត្រាចារ្យរូបណាដែលចេញសញ្ញាបត្រផ្នែកនិពន្ធដល់ខ្ញុំ?</span></p>\r\n<p><span style="font-size: 12pt;">ខ្ញុំខកខានក្នុងការចួលរួមសិក្ខាសាលា រឺសិក្សាផ្នែកនិពន្ធជាច្រើនលើកច្រើនសារ ព្រោះតែអត់មានមធ្យោបាយធ្វើដំណើរកាលនៅរៀននៅអនុវិទ្យាល័យ។</span><br /><span style="font-size: 12pt;"> ដូចនេះខ្ញុំមិនដែលបានទទួលសញ្ញាបត្រផ្នែកនិពន្ធនោះទេ!</span></p>\r\n<div class="text_exposed_show">\r\n<p><span style="font-size: 12pt;">" មិនមានសញ្ញាបត្រ តែមិនអាចបាត់ឱកាសបានទេ! "-សជន</span></p>\r\n<p><span style="font-size: 12pt;">អ្នកនិពន្ធរូបណាដែលខ្ញុំលួចរៀនពីគាត់ដោយសម្ងាត់?</span><br /><span style="font-size: 12pt;"> " អំពៅផ្អែមពីគល់ដល់ចុង សៀវភៅល្អពីក្របទៅក្នុង មនុស្សគង់ល្អព្រោះចំណេះ! " ចំណេះខ្ញុំលួចរៀនតាមរយះស្នាដៃរបស់ពួកគាត់៖</span></p>\r\n<p><span style="font-size: 12pt;"><img src="http://tousnatv.com/storage/uploads/images/5afd55e5dabbe_1526551980_large.jpg" alt="" width="849" height="474" /></span></p>\r\n<p><span style="font-size: 12pt;">លោក គង្គ ប៊ុនឈឿន អ្នកនិពន្ធពហុជំនាញ ដែលស្នាដៃអណ្តែតពេញអាកាស ទាំងក្នុងនិងក្រៅប្រទេស ច្រើនជំនាន់និងយូរជាងគេក្នុងពិភពតែងនិពន្ធ។ ស្នាដៃរបស់លោក ត្រូវបានមហជនទទួលស្គាល់ និងរាប់យកជាមិត្តគាប់អារម្មណ៍គ្រប់ៗគ្នាទៅហើយ ដែលខ្ញុំមិនអាចពិព័ណនាឲ្យអស់បានពីភាពអស្ចារ្យរបស់លោក។</span></p>\r\n<p><span style="font-size: 12pt;">លោក ហ្វៃ សំអាង ខ្ញុំតែងឭឈ្មោះគាត់ ព្រោះអ្នកចម្រៀងភាគច្រើនឡើងច្រៀងនៅលើកញ្ចក់ទូរទស្សន៍ប៉ុស្តិ៍លេខ៣ កាលនោះតែងអរគុណគាត់ ដែលបានផ្តល់កិត្តយសឲ្យឡើងសម្តែងជាដើម។ គាត់ជាអ្នកនិពន្ធទំនុកច្រៀងនិងដឹកនាំសម្តែង។ ខ្ញុំរៀនសូត្រពីស្នាដៃរបស់គាត់ ដោយសារបទរបស់គាត់មានការគាំទ្រនិងល្បីច្រើនបទមែនទែន។</span></p>\r\n<p><span style="font-size: 12pt;">លោក ថៃ នរ:សត្យា អ្នកនិពន្ធខ្ពង់ខ្ពស់ដោយការប្រើឃ្លាប្រកបដោយតថ:។ មួយៗងាយយល់ និងប្រលោមបានល្អបំផុត។</span></p>\r\n<p><span style="font-size: 12pt;">លោកស្រី ងិន ម៉ានីយ៉ា អ្នកនិពន្ធស្រីបេះដូងប្រុស។ ស្នាដៃរបស់អ្នកមីងដែលខ្ញុំកត់ចំណាំបាន ភាគច្រើនប្រើពាក្យមុតស្រួច មិនអែអង់ចំពោះសំណោក ធ្ងន់ដោយអំណាចពាក្យពេចន៍ រណ្តំ កាត់កងភ្លាមៗ។</span></p>\r\n<p><span style="font-size: 12pt;">លោក ស៊ុំ សារឿន អ្នកនិពន្ធជើងចាស់ និងជាអតីតអ្នកចម្រៀង។ លោកគ្រូ ស្រគត់ស្រគុំណាស់ ពាក្យពេចន៍ក្នុងទំនុកដូចកាយវិការដ៏សមសួនរម្យទមរបស់លោកគ្រូ។ ធម្មជាតិ ស្រុកស្រែ ព្រៃភ្នំ បរិយាកាសទាំងឡាយ សុទ្ធសឹងជាគ្រឿងផ្សំក្នុងទំនុកច្រៀងរបស់លោកគ្រូ។</span></p>\r\n<p><span style="font-size: 12pt;">ខ្ញុំសុំមិននិយាយពី លោក ជុំ ប៊ុនធឿន (អ្នកនិពន្ធទំនុកបទ ម្អមស្រែ ចិត្តព្រៃផ្សៃ ខ្លុយស្នេហ៍ត្នោតទេ....) ព្រោះមានហេតុ មិនត្រូវនិយាយ។</span></p>\r\n<p><span style="font-size: 12pt;">រាល់ពេលខ្ញុំបានស្តាប់ បទចម្រៀងនិងស្នាដៃរបស់អ្នកនិពន្ធប្រាំរូបខាងលើ ខ្ញុំតែងរើសបាននូវគន្លឺះ ក្បួន ដែលពួកគាត់ជ្រុះរាត់រាយតាមផ្លូវ ដោយរើសយកមកផ្សែផ្សំ រួមជាមួយអ្វីដែលខ្ញុំមានបន្តិចបន្តួច ឲ្យក្លាយទៅជាអ្វីដែលខ្ញុំ ទទួលបានសព្វថ្ងៃនេះ។</span><br /><span style="font-size: 12pt;"> កិច្ចការជាអ្នកនិពន្ធមិនដូច កិច្ចការជំនួញចូលលុយរាប់ពាន់ម៉ឺនដុល្លានោះទេ ជាការងារលក់ការស្រមើស្រមៃ លក់អារម្មណ៍ លក់រឿងកុហក។ ចុះធ្វើដូចម្តេចដើម្បីឲ្យការលក់របស់យើងមានអ្នកទិញ ជាពិសេសមានអ្នកគាំទ្រ។</span><br /><span style="font-size: 12pt;"> ពិតណាស់ អ្វីៗក៏ត្រូវការប្រជែង។ ប្រជែងមិនឈ្នះអ្នកខ្លាំង តែអ្នកខ្លាំងមើលឃើញ ចាត់ទុកថាមានសង្ឃឹម។</span></p>\r\n<p><span style="font-size: 12pt;">សូមអធ្យាស្រ័យដែលខ្ញុំមិនមានរូបលោកគ្រូ ស៊ុំសារឿន។ ឱកាសក្រោយខ្ញុំនឹងបង្ហាញជូន។</span><br /><span style="font-size: 12pt;"> ២៦ មិថុនា ឆ្នាំ២០១៨</span><br /><span style="font-size: 12pt;"> <a class="_58cn" href="https://www.facebook.com/hashtag/amazon63?source=feed_text" type="" data-ft="{"><span class="_5afx"><span class="_58cl _5afz">#</span><span class="_58cm">Amazon63</span></span></a> <a class="_58cn" href="https://www.facebook.com/hashtag/សជន?source=feed_text" type="" data-ft="{"><span class="_5afx"><span class="_58cl _5afz">#</span><span class="_58cm">សជន</span></span></a> <a class="_58cn" href="https://www.facebook.com/hashtag/សុខជំនោរ?source=feed_text" type="" data-ft="{"><span class="_5afx"><span class="_58cl _5afz">#</span><span class="_58cm">សុខជំនោរ</span></span></a> <a class="_58cn" href="https://www.facebook.com/hashtag/ជំនោរសុរង្សី?source=feed_text" type="" data-ft="{"><span class="_5afx"><span class="_58cl _5afz">#</span><span class="_58cm">ជំនោរសុរង្សី</span></span></a></span></p>\r\n<p><span style="font-size: 12pt;">វគ្គបន្ទាប់</span><br /><span style="font-size: 12pt;"> តើអ្នកនិពន្ធរូបណាដែលខ្ញុំប្រជែងជាមួយគាត់ក្នុងទីផ្សារ? ហើយអ្នកនិពន្ធរូបណាដែលបង្ហើបប្រាប់ខ្ញុំថាមានអ្នកចង់Take care?</span></p>\r\n</div>', 4, 1, '/storage/thumbs/images/no_love_sad_wallpaper.jpg', '', NULL, 1, 2, 2, NULL, '2018-06-28 08:06:12', '2018-06-28 08:09:46', 0, NULL, NULL, NULL, NULL, NULL, 0),
(616, 'dffdfgdsgsgd', 'dffdfgdsgsgd', '<p>vvxfvdfd</p>', 12, 3, '/storage/thumbs/images/ttg_large.png', '', 'https://www.youtube.com/watch?v=Wd1o6dZUsMw', 1, 2, NULL, NULL, '2018-06-28 08:46:42', '2018-06-28 08:46:42', 0, NULL, NULL, NULL, NULL, NULL, 0),
(617, 'កត្តាជំរុញឆ្ពោះទៅរកអាជីពជាអ្នកនិពន្ធ', '', '<p>This is how we show couple\'s goal.</p>\r\n<p>&nbsp;</p>', 18, 3, '', '', 'ebO3F_xWjz8', 1, 2, NULL, NULL, '2018-06-28 08:55:54', '2018-06-28 08:55:54', 0, NULL, NULL, NULL, NULL, NULL, 0),
(618, 'This is Test', 'this-is-test', '<p>We test video</p>', 17, 3, '/storage/thumbs/images/32856048_1762648297153139_6440267618849914880_n.jpg', '', 'ebO3F_xWjz8', 1, 2, NULL, NULL, '2018-06-28 08:57:18', '2018-06-28 08:57:18', 0, NULL, NULL, NULL, NULL, NULL, 0),
(619, 'dsdsd', 'dsdsd', '<p>dsaddszd</p>', 13, 3, '/storage/thumbs/images/ttg_large.png', '', '5FLomTM3BuI', 1, 2, NULL, NULL, '2018-06-28 08:59:59', '2018-06-28 08:59:59', 0, NULL, NULL, NULL, NULL, NULL, 0),
(620, 'រឿង​ចាប់​អារម្មណ៍​', '', '<p>រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;</p>', 18, 3, '/storage/thumbs/images/maxresdefault.jpg', '', 'https://www.youtube.com/embed/YRezJq9_uWA', 1, 2, NULL, NULL, '2018-06-28 09:07:38', '2018-06-28 09:07:38', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, 0),
(621, 'dgdsgdsgdsgdsgdsg', 'dgdsgdsgdsgdsgdsg', '<p>fdsgdsgdsgdsgd</p>', 12, 3, '/storage/thumbs/images/Education-in-Cambodia-1_large.jpg', '', '5FLomTM3BuI', 1, 2, NULL, NULL, '2018-06-28 09:10:30', '2018-06-28 09:10:30', 0, NULL, NULL, NULL, NULL, NULL, 0),
(622, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ', '', '<p>រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​&nbsp;</p>', 13, 3, '/storage/thumbs/images/trailer.jpg', '', 'https://www.youtube.com/embed/aDE1FnjCyqY', 1, 2, NULL, NULL, '2018-06-28 09:14:53', '2018-06-28 09:14:53', 0, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, NULL, 'រឿង​ចាប់​អារម្មណ៍​សម្រាប់​ជម្រើស​ជាតិ​បារាំង​គឺ​មិនបាន​កោះហៅ​ខ្សែ​ប្រយុទ្ធ​នៅ​', NULL, 0),
(623, 'adsds', 'adsds', '<p>dsadad</p>', 12, 3, '/storage/thumbs/images/trailer.jpg', '', 'https://www.youtube.com/embed/5FLomTM3BuI', 1, 2, NULL, NULL, '2018-06-28 09:19:53', '2018-06-28 09:19:53', 0, NULL, NULL, NULL, NULL, NULL, 0),
(624, 'THE Test', 'the-test', '<p>Thsi is test</p>', 17, 3, '/storage/thumbs/images/31945637_1833418930055490_3597723963024736256_n.jpg', '', 'https://www.youtube.com/embed/WnnPsD0aWPw', 1, 2, NULL, NULL, '2018-06-28 09:23:29', '2018-06-28 09:23:29', 0, NULL, NULL, NULL, NULL, NULL, 0),
(625, 'សុខ ជំនោរ មានមច្ឆិតាដើរមកទាំងលំបាកក្នុងអាជីពនិពន្ធ', '', '<p>៥ ជំហ៊ាន ដែលនាំខ្ញុំមកកាន់ទីនេះក្នុងអាជីពជាអ្នកនិពន្ធ</p>\r\n<p>១-ក្រដាសខ្ចប់នំ៖<br /> រៀនថ្នាក់ទី៤ នាឆ្នាំ១៩៨៩ ខ្ញុំអាចអានអក្សរបានហើយ។ ជំនាន់នោះ ទម្លាប់អ្នកលក់ដូរ គេយកក្រដាសកាសែតខ្ចប់នំ។ ញ៉ាំនំអស់ខ្ញុំតែងរក្សាទុកក្រដាសខ្ចប់នំដោយលាតយ៉ាងស្អាត ហើយយកមកអានពេលមកដល់ផ្ទះ។ ខ្ញុំមិនយល់គ្រប់អត្ថន័យក្នុងក្រដាសនោះទេ ព្រោះត្រូវបានគេហែកបញ្ឆិតទទឹង បណ្តោយ ជួនអានពីរមាត់ បាត់ន័យក៏មាន។ រហូតក្លាយជាទម្លាប់ដែលម្តាយរបស់ខ្ញុំតែងរើសយកក្រដាសនានាដែលឃើញនៅតាមផ្លូវយកមកឲ្យខ្ញុំជាប្រចាំ។<br /> អាចនិយាយបានថា នោះជាការចាប់ផ្តើមបណ្ត<span class="text_exposed_show">ុះចំណូលចិត្តអានរបស់ខ្ញុំ។</span></p>\r\n<div class="text_exposed_show">\r\n<p>២-កម្មវិធីសិក្សា៖<br /> ខ្ញុំចាប់ផ្តើមសរសេរកំណាព្យជាច្រើនប្រភេទ ដោយអនុវត្តន៍របៀបតែង តាមកម្មវិធីសិក្សារបស់ក្រសួងកាលរៀននៅវិទ្យាល័យ។</p>\r\n<p>៣-ស្វ័យសិក្សា៖<br /> ពេលម៉ោងអត់រៀន ខ្ញុំតែងសំកុកនៅកន្លែងពីរជានិច្ចកាល។ ទី១គឺបណ្ណាល័យជាតិ។ កាលណោះ ខ្ញុំព្យាយាមស្វែងរករបៀបតែងកំណាព្យជាច្រើនទៀត តាមរយះស្នាដៃ ក្បួនតែងកាព្យជាច្រើន ដែលដាក់ឲ្យមហាជន សិស្ស និស្សិតអាន។ ទី២ ខ្ញុំតែងទៅសរសេរកំណាព្យនៅក្រោមដើមឈើនៃសាលាមធ្យមវិចិត្រសិល្ប: (ស្ថាតចាស់-បច្ចុប្បន្នជាផ្ទះល្វែង)។ នៅទីនោះជាកន្លែងចាប់ផ្តើមដ៏ធំធេងក្នុងផ្នត់គំនិតតែងនិពន្ធរបស់ខ្ញុំ។ ម្តងម្កាលខ្ញុំឃើញ សិស្សរបាំ ស្លៀកក្បិនដើរកាត់ទាំងក្រុមៗ ពេលខ្លះខ្ញុំឭសូរសំឡេងរនាត ខ្លុយ ទ្រ បន្លឺចេញពីបង្អួចដែលបង្ហើបបន្តិច។ បរិយាកាសនិងទិដ្ឋភាពទាំងនោះ គឺជាពន្លឺឲ្យខ្ញុំអាចប្រមូលយកគំនិតជាច្រើនមកតម្រៀបក្នុងអត្ថបទកំណាព្យរបស់ខ្ញុំ។</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/National-Library1_large.jpg" alt="បណ្ណាល័យជាតិ" width="1100" height="733" /></p>\r\n<p>៤-ពោតស្ងោព្រែកលាបនិងមិត្តខ្ញុំ៖<br /> សេពគប់មិត្តល្អ នាំឲ្យល្អ សេពគប់មិត្តអាក្រក់នាំទៅអន្តរាយ។ ចុងសប្តាហ៍ក្នុងឆ្នាំដំបូងដែលតំបន់ព្រែកលាបល្បី លក់ពោតស្ងោរនិងតូបមាត់ទឹក។ ពួកយើងជាមិត្តភក្តិតែងទៅកម្សាន្តទីនោះ។ រាល់ពេលខ្ញុំតែងទទួលភារកិច្ចមួយដ៏ចាំបាច់ គឺត្រូវនិពន្ធកំណាព្យមួយអត្ថបទ ក្នុងខណ:មិត្តភក្តិខ្ញុំលេងបៀ(លក្ខណ:កម្សាន្ត)។ មុនហូបបាយថ្ងៃត្រង់ខ្ញុំតែងអានកំណាព្យឲ្យមិត្តភក្តិស្តាប់។ ពួកយើងរាប់អាន់គ្នា ស្រឡាញ់គ្នារហូតដល់សព្វថ្ងៃ។ ទាំងនោះជាវេលាខ្ញុំចាប់ផ្តើមសរសេរកំណាព្យបទពាក្យ៨ ដែលអាចច្រៀងតាមលំនាំបទចម្រៀងមរតកដើមខ្លះ។ អ្វីដែលធ្វើឲ្យមិត្តភក្តិខ្ញុំចងចាំរហូតដល់សព្វថ្ងៃ គឺកំណាព្យដែលរៀបរាប់ឈ្មោះមិត្តភក្តិទាំងអស់ក្នុងថ្នាក់អបជាមួយចរឹតរបស់ពួកគេម្នាក់ៗ។ គួរឲ្យសប្បាយកាលនោះ....</p>\r\n<p><img src="http://tousnatv.com/storage/uploads/images/11888040_1661772164065070_4042603476077338049_n.jpg" alt="ពោតស្ងោ ព្រែកលាប" width="960" height="720" /></p>\r\n<p>៥-ឱកាសការងារ៖<br /> ឆ្នាំ២០០៣ អត្ថបទទំនុកច្រៀងចំនួន២០ ដែលខ្ញុំបានផ្ញើជូនផលិតកម្មចំនួន២ផ្សេងគ្នា ហើយរង់ចាំឱកាសដើម្បីបានបម្រើការក្នុងនាមជាអ្នកនិពន្ធទំនុកច្រៀង។ រហូតរយ:ពេលជិត២ខែទើប ខ្ញុំបានទទួលទូរស័ព្ទពីអ្នកគ្រប់គ្រងផលិតកម្មរស្មីស្ទឹងសង្កែលោក ហ៊ន វិត្យា (ចាងហ្វាង អ្នកស្រី ស៊ួរ វ៉ាន់នី) ឲ្យទៅជួបដើម្បីពិភាក្សាការងារ។ ឱកាសចាប់ផ្តើមអាចជាឱកាសមាស តែក៏ជាការទទួលនូវបន្ទុកស្ថានការណ៍មួយកាលគ្រានោះ។</p>\r\n<p>ការងារជាអ្នកនិពន្ធ រយ:ពេល១៥ឆ្នាំគិតពីឆ្នាំ២០០៣មក។ លើសពីនាមជាអ្នកនិពន្ធ​ អ្វីដែលខ្ញុំទទួលបាន គឺបទពិសោធន៍ និងកេរ្តិ៍ឈ្មោះដែលមហាជនឲ្យ ទាំងក្តីស្រឡាញ់ និងការរាប់អាន។ ត្រួសៗខាងលើនេះ ជាផ្លូវដែលខ្ញុំបានដើរនិងចាប់យក។</p>\r\n<p>តើសាស្ត្រាចារ្យ រឺបណ្ឌិតរូបណាដែលចេញសញ្ញាបត្រផ្នែកនិពន្ធដល់ខ្ញុំ? អ្នកនិពន្ធរូបណាខ្លះ ដែលខ្ញុំលួចរៀនពីគាត់ដោយសម្ងាត់?</p>\r\n<p>-វគ្គបន្ត-</p>\r\n<p>២៤-មិថុនា-២០១៨</p>\r\n</div>', 5, 1, '/storage/thumbs/images/14753954_1420268768001316_3119470040457325522_o.jpg', '', NULL, 1, 2, 2, NULL, '2018-06-29 12:11:34', '2018-07-01 17:19:51', 0, NULL, NULL, NULL, NULL, NULL, 0),
(626, 'dsdsa', 'dsdsa', '<p>adasdsa</p>', 2, 1, '', '', NULL, 1, 2, NULL, NULL, '2018-07-07 09:17:59', '2018-07-07 09:17:59', 0, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_serie`
--

CREATE TABLE `post_serie` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `serie_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `post_serie`
--

TRUNCATE TABLE `post_serie`;
--
-- Dumping data for table `post_serie`
--

INSERT INTO `post_serie` (`post_id`, `serie_id`, `created_at`, `updated_at`) VALUES
(597, 51, '2018-05-21 02:39:11', '2018-05-21 02:39:11'),
(602, 51, '2018-05-29 06:15:15', '2018-05-29 06:15:15'),
(603, 2, '2018-05-29 06:14:04', '2018-05-29 06:14:04'),
(604, 49, '2018-05-29 07:23:19', '2018-05-29 07:23:19'),
(605, 51, '2018-05-29 06:13:19', '2018-05-29 06:13:19'),
(606, 49, '2018-05-29 07:20:46', '2018-05-29 07:20:46'),
(607, 51, '2018-05-21 02:26:07', '2018-05-21 02:26:07'),
(608, 51, '2018-05-29 06:07:18', '2018-05-29 06:07:18'),
(609, 51, '2018-05-29 07:18:17', '2018-05-29 07:18:17'),
(610, 51, '2018-05-29 07:08:38', '2018-05-29 07:08:38'),
(611, 49, '2018-05-29 16:04:02', '2018-05-29 16:04:02'),
(612, 49, '2018-05-29 06:03:47', '2018-05-29 06:03:47'),
(613, 49, '2018-05-29 16:09:01', '2018-05-29 16:09:01'),
(620, 51, '2018-06-28 09:07:38', '2018-06-28 09:07:38'),
(622, 51, '2018-06-28 09:14:53', '2018-06-28 09:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `roles`
--

TRUNCATE TABLE `roles`;
-- --------------------------------------------------------

--
-- Table structure for table `role_admin`
--

CREATE TABLE `role_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `role_admin`
--

TRUNCATE TABLE `role_admin`;
-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(10) UNSIGNED NOT NULL,
  `mediatype_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `num_of_episode` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured_image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `genre` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `series`
--

TRUNCATE TABLE `series`;
--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `mediatype_id`, `title`, `description`, `num_of_episode`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `featured_image`, `view_count`, `genre`, `category_id`, `is_featured`) VALUES
(1, 1, 'Reading Serie', NULL, NULL, 1, NULL, '2017-07-06 09:37:30', '2017-06-16 09:21:54', '2017-07-06 09:37:30', '', 0, NULL, 1, 0),
(2, 3, 'U PRINCE SERIE', NULL, NULL, 1, NULL, NULL, '2017-06-16 09:33:44', '2017-07-06 09:12:20', '', 0, NULL, 15, 0),
(3, 3, 'Popular this week', NULL, NULL, 1, NULL, '2017-07-06 09:41:25', '2017-06-16 09:40:16', '2017-07-06 09:41:25', '', 0, NULL, 14, 0),
(4, 2, 'Ed Sheeran Deluxe', NULL, NULL, 1, NULL, '2017-07-06 09:51:04', '2017-06-16 10:15:32', '2017-07-06 09:51:04', 'http://127.0.0.1:8000/storage/thumbs/images/supermarket_flower.jpg', 0, 'Jazz Music', 5, 0),
(5, 2, 'Rock Music', NULL, NULL, 1, NULL, '2017-07-06 09:50:37', '2017-07-06 08:26:20', '2017-07-06 09:50:37', 'http://127.0.0.1:8000/storage/thumbs/images/shape_of_you.jpg', 0, NULL, 5, 0),
(6, 2, 'Rock Music', NULL, NULL, 1, NULL, '2017-07-06 09:44:18', '2017-07-06 08:28:32', '2017-07-06 09:44:18', 'http://127.0.0.1:8000/storage/thumbs/images/ed-sheeran-galway-girl-1488806437-list-handheld-0.jpg', 0, NULL, 7, 0),
(7, 2, 'Return Of The Spooky', 'Some attrative description', NULL, 1, 1, NULL, '2017-07-06 08:29:04', '2017-07-08 23:12:46', 'http://127.0.0.1:8000/storage/thumbs/images/D7ab595h0AU-640x350.jpg', 0, 'Pop Music', 5, 1),
(8, 2, 'Long Way Home', NULL, NULL, 1, NULL, '2017-07-06 09:42:23', '2017-07-06 08:30:45', '2017-07-06 09:42:23', '', 0, 'Party Music', 9, 0),
(9, 2, 'Ed Sheeran Delux', NULL, NULL, 1, 1, NULL, '2017-07-06 09:54:46', '2017-07-08 23:13:10', 'http://127.0.0.1:8000/storage/thumbs/images/perfect.jpg', 0, 'Pop Music', 5, 1),
(10, 2, 'You Know Who You Are', NULL, NULL, 1, 1, NULL, '2017-07-06 09:55:16', '2017-07-08 22:08:47', 'http://127.0.0.1:8000/storage/thumbs/images/shape_of_you.jpg', 0, 'Rock Music', 8, 1),
(11, 2, 'Long Way Home', NULL, NULL, 1, 1, NULL, '2017-07-06 09:58:17', '2017-07-08 23:13:32', 'http://127.0.0.1:8000/storage/thumbs/images/D7ab595h0AU-640x350.jpg', 0, 'Party Music', 5, 1),
(12, 2, 'Album 1', NULL, NULL, 1, NULL, '2017-07-06 21:42:16', '2017-07-06 09:59:38', '2017-07-06 21:42:16', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Jazz Music', 9, 0),
(13, 2, 'Album 2', NULL, NULL, 1, NULL, '2017-07-06 21:42:22', '2017-07-06 10:00:37', '2017-07-06 21:42:22', 'http://127.0.0.1:8000/storage/thumbs/images/0.jpg', 0, 'Rock Music', 10, 0),
(14, 2, 'Sad Song', NULL, NULL, 1, NULL, '2017-07-06 21:42:28', '2017-07-06 10:02:00', '2017-07-06 21:42:28', 'http://127.0.0.1:8000/storage/thumbs/images/heavy_linikin_park.jpg', 0, 'Pop Music', 7, 0),
(15, 2, 'Justin Purpose', NULL, NULL, 1, NULL, NULL, '2017-07-06 10:05:14', '2017-07-06 21:43:33', 'http://127.0.0.1:8000/storage/thumbs/images/numb_linkin_park.jpg', 0, 'Pop Music', 5, 0),
(16, 2, 'Album 3', NULL, NULL, 1, NULL, '2017-07-06 21:42:36', '2017-07-06 10:20:17', '2017-07-06 21:42:36', '', 0, NULL, 5, 0),
(17, 2, 'Album 4', NULL, NULL, 1, NULL, '2017-07-06 21:42:58', '2017-07-06 10:20:40', '2017-07-06 21:42:58', '', 0, NULL, 7, 0),
(18, 2, 'Album 5', NULL, NULL, 1, NULL, '2017-07-06 21:42:53', '2017-07-06 10:20:53', '2017-07-06 21:42:53', '', 0, NULL, 8, 0),
(19, 2, 'Album 6', NULL, NULL, 1, NULL, '2017-07-06 21:42:48', '2017-07-06 10:21:11', '2017-07-06 21:42:48', '', 0, NULL, 9, 0),
(20, 2, 'Album 8', NULL, NULL, 1, NULL, '2017-07-06 21:42:42', '2017-07-06 10:21:27', '2017-07-06 21:42:42', '', 0, NULL, 10, 0),
(21, 1, 'Ghost hunter', 'wegwrwsgr', NULL, 1, 1, NULL, '2017-07-08 22:01:52', '2017-08-05 20:33:08', '/storage/thumbs/images/post_article_serie_thumbnail_large.jpg', 0, 'Tyy', 1, 0),
(22, 2, 'Album 1', NULL, NULL, 1, 1, NULL, '2017-07-08 22:10:19', '2017-07-08 22:24:11', 'http://127.0.0.1:8000/storage/thumbs/images/perfect.jpg', 0, NULL, 5, 1),
(23, 2, 'Album 2', NULL, NULL, 1, NULL, NULL, '2017-07-08 22:10:38', '2017-07-08 22:10:38', 'http://127.0.0.1:8000/storage/thumbs/images/numb_linkin_park.jpg', 0, NULL, 7, 0),
(24, 2, 'Album 3', NULL, NULL, 1, NULL, NULL, '2017-07-08 22:10:52', '2017-07-08 22:10:52', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, NULL, 8, 0),
(25, 2, 'Album 4', NULL, NULL, 1, 1, NULL, '2017-07-08 22:11:18', '2017-07-08 22:24:06', 'http://127.0.0.1:8000/storage/thumbs/images/how_woud_you_feel.jpg', 0, NULL, 9, 1),
(26, 2, 'Album 6', NULL, NULL, 1, NULL, NULL, '2017-07-08 22:11:34', '2017-07-08 22:11:34', 'http://127.0.0.1:8000/storage/thumbs/images/heavy_linikin_park.jpg', 0, NULL, 10, 0),
(27, 2, 'Album 7', NULL, NULL, 1, 1, NULL, '2017-07-08 22:11:53', '2017-07-08 22:23:56', 'http://127.0.0.1:8000/storage/thumbs/images/supermarket_flower.jpg', 0, NULL, 5, 1),
(28, 2, 'Album 8', NULL, NULL, 1, 1, NULL, '2017-07-08 22:12:13', '2017-07-08 22:23:53', 'http://127.0.0.1:8000/storage/thumbs/images/save_my_self.jpg', 0, NULL, 7, 1),
(29, 2, 'Album 9', NULL, NULL, 1, 1, NULL, '2017-07-08 22:12:33', '2017-07-08 22:23:01', 'http://127.0.0.1:8000/storage/thumbs/images/castle_on_the_hill.jpg', 0, NULL, 8, 1),
(30, 2, 'Album 10', NULL, NULL, 1, NULL, NULL, '2017-07-08 22:13:00', '2017-07-08 22:13:00', 'http://127.0.0.1:8000/storage/thumbs/images/0.jpg', 0, NULL, 9, 0),
(31, 2, 'Album 11', NULL, NULL, 1, NULL, NULL, '2017-07-08 22:13:33', '2017-07-08 22:13:33', 'http://127.0.0.1:8000/storage/thumbs/images/ed-sheeran-galway-girl-1488806437-list-handheld-0.jpg', 0, NULL, 10, 0),
(32, 2, 'Album 15', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:27:10', '2017-07-08 23:27:10', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(33, 2, 'Album 16', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:27:59', '2017-07-08 23:27:59', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Party Music', 5, 0),
(34, 2, 'Album 17', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:28:26', '2017-07-08 23:28:26', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(35, 2, 'Album 18', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:28:50', '2017-07-08 23:28:50', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(36, 2, 'Album 19', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:29:10', '2017-07-08 23:29:10', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(37, 2, 'Album 19', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:30:33', '2017-07-08 23:30:33', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(38, 2, 'Album 21', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:31:23', '2017-07-08 23:31:23', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(39, 2, 'Album 21', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:33:07', '2017-07-08 23:33:07', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(40, 2, 'Album 22', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:33:34', '2017-07-08 23:33:34', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Party Music', 5, 0),
(41, 2, 'Album 23', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:34:06', '2017-07-08 23:34:06', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Rock Music', 5, 0),
(42, 2, 'Album 24', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:34:36', '2017-07-08 23:34:36', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(43, 2, 'Album 26', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:35:18', '2017-07-08 23:35:18', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Pop Music', 5, 0),
(44, 2, 'Album 27', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:35:58', '2017-07-08 23:35:58', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Party Music', 5, 0),
(45, 2, 'Album 28', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:36:17', '2017-07-08 23:36:17', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, NULL, 5, 0),
(46, 2, 'Album 30', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:36:42', '2017-07-08 23:36:42', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Rock Music', 5, 0),
(47, 2, 'Album 25', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:48:21', '2017-07-08 23:48:21', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Rock Music', 5, 0),
(48, 2, 'Album 29', NULL, NULL, 1, NULL, NULL, '2017-07-08 23:48:54', '2017-07-08 23:48:54', 'http://127.0.0.1:8000/storage/thumbs/images/maxresdefault.jpg', 0, 'Party Music', 5, 0),
(49, 1, 'Mostly Human Serie', NULL, NULL, 1, 1, NULL, '2017-07-14 08:12:02', '2017-08-05 20:29:23', '/storage/thumbs/images/post_article_serie_thumbnail_large.jpg', 0, 'Scifi', 1, 1),
(50, 1, 'Reading Serie 2', NULL, NULL, 1, 1, NULL, '2017-07-14 10:45:54', '2017-08-05 20:32:49', '/storage/thumbs/images/maxresdefault.jpg', 0, 'Scifi', 2, 0),
(51, 3, 'ចំរៀងល្បីៗ', 'ចំរៀងៗខ្មែរល្បីៗ', NULL, 2, 2, NULL, '2017-11-30 04:28:58', '2017-11-30 04:44:33', '/storage/thumbs/images/Screenshot_1.png', 0, NULL, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `input_type` tinyint(3) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `settings`
--

TRUNCATE TABLE `settings`;
-- --------------------------------------------------------

--
-- Table structure for table `tagging_tagged`
--

CREATE TABLE `tagging_tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `tagging_tagged`
--

TRUNCATE TABLE `tagging_tagged`;
--
-- Dumping data for table `tagging_tagged`
--

INSERT INTO `tagging_tagged` (`id`, `taggable_id`, `taggable_type`, `tag_name`, `tag_slug`, `created_at`, `updated_at`) VALUES
(5, 2, 'App\\Models\\Post', 'Kpop', 'kpop', NULL, NULL),
(7, 2, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(8, 3, 'App\\Models\\Post', 'Technology', 'technology', NULL, NULL),
(11, 4, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(12, 5, 'App\\Models\\Post', 'Kpop', 'kpop', NULL, NULL),
(13, 5, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(14, 5, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(15, 6, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(16, 6, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(17, 6, 'App\\Models\\Post', 'Kpop', 'kpop', NULL, NULL),
(18, 7, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(19, 7, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(20, 8, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(21, 8, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(22, 8, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(23, 9, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(24, 9, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(25, 10, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(26, 10, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(27, 11, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(30, 12, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(32, 12, 'App\\Models\\Post', 'Top Song', 'top-song', NULL, NULL),
(34, 13, 'App\\Models\\Post', 'Top Song', 'top-song', NULL, NULL),
(35, 13, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(36, 14, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(38, 14, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(39, 14, 'App\\Models\\Post', 'Top Song', 'top-song', NULL, NULL),
(41, 15, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(42, 15, 'App\\Models\\Post', 'Top Song', 'top-song', NULL, NULL),
(44, 16, 'App\\Models\\Post', 'Top Song', 'top-song', NULL, NULL),
(47, 18, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(48, 18, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(49, 19, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(50, 19, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(51, 20, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(52, 20, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(56, 22, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(57, 22, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(58, 23, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(59, 23, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(60, 24, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(61, 24, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(62, 25, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(63, 25, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(64, 26, 'App\\Models\\Post', 'Ed Sheeran', 'ed-sheeran', NULL, NULL),
(65, 26, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(75, 512, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(76, 512, 'App\\Models\\Post', 'Technology', 'technology', NULL, NULL),
(77, 429, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(78, 429, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(79, 100, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(80, 555, 'App\\Models\\Post', 'ម្ចាស់ចំការ', 'ម-ច-ស-ច-ក-រ', NULL, NULL),
(81, 555, 'App\\Models\\Post', 'រឿងភាគខ្មែរ', 'រ-ងភ-គខ-ម-រ', NULL, NULL),
(82, 556, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(83, 556, 'App\\Models\\Post', 'រឿងភាគខ្មែរ', 'រ-ងភ-គខ-ម-រ', NULL, NULL),
(84, 521, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(85, 521, 'App\\Models\\Post', 'Kpop', 'kpop', NULL, NULL),
(86, 559, 'App\\Models\\Post', 'Video', 'video', NULL, NULL),
(88, 562, 'App\\Models\\Post', 'Technology', 'technology', NULL, NULL),
(89, 563, 'App\\Models\\Post', 'Star', 'star', NULL, NULL),
(92, 566, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(93, 567, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(94, 568, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(95, 569, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(96, 571, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(97, 572, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(98, 573, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(100, 575, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(101, 576, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(102, 577, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(103, 578, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(104, 579, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(106, 582, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(107, 584, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(108, 585, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(109, 586, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(110, 587, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(111, 588, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(112, 589, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(113, 590, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(114, 591, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(115, 592, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(116, 593, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(117, 593, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(118, 595, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(119, 596, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(120, 597, 'App\\Models\\Post', 'Reading', 'reading', NULL, NULL),
(121, 597, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(122, 598, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(123, 599, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(124, 600, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(125, 601, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(126, 601, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(127, 602, 'App\\Models\\Post', 'Kpop', 'kpop', NULL, NULL),
(128, 602, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(129, 603, 'App\\Models\\Post', 'Music', 'music', NULL, NULL),
(130, 604, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(131, 605, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(132, 606, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(133, 607, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(134, 608, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(135, 609, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(136, 610, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(137, 611, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(138, 612, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(139, 613, 'App\\Models\\Post', 'Korean', 'korean', NULL, NULL),
(140, 613, 'App\\Models\\Post', 'Social Life', 'social-life', NULL, NULL),
(141, 620, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL),
(142, 622, 'App\\Models\\Post', 'Entertainment', 'entertainment', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tags`
--

CREATE TABLE `tagging_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_group_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `tagging_tags`
--

TRUNCATE TABLE `tagging_tags`;
--
-- Dumping data for table `tagging_tags`
--

INSERT INTO `tagging_tags` (`id`, `tag_group_id`, `slug`, `name`, `suggest`, `count`) VALUES
(2, NULL, 'technology', 'Technology', 0, 3),
(5, NULL, 'kpop', 'Kpop', 0, 5),
(7, NULL, 'korean', 'Korean', 0, 7),
(9, NULL, 'entertainment', 'Entertainment', 0, 25),
(10, NULL, 'star', 'Star', 0, 6),
(11, NULL, 'reading', 'Reading', 0, 10),
(12, NULL, 'video', 'Video', 0, 7),
(16, NULL, 'top-song', 'Top Song', 0, 5),
(19, NULL, 'music', 'Music', 0, 16),
(20, NULL, 'ed-sheeran', 'Ed Sheeran', 0, 8),
(21, NULL, 'social-life', 'Social Life', 0, 14),
(22, NULL, 'ម-ច-ស-ច-ក-រ', 'ម្ចាស់ចំការ', 0, 1),
(23, NULL, 'រ-ងភ-គខ-ម-រ', 'រឿងភាគខ្មែរ', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag_groups`
--

CREATE TABLE `tagging_tag_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `tagging_tag_groups`
--

TRUNCATE TABLE `tagging_tag_groups`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `career` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_department`
--
ALTER TABLE `admin_department`
  ADD UNIQUE KEY `admin_department_admin_id_department_id_unique` (`admin_id`,`department_id`),
  ADD KEY `admin_department_admin_id_index` (`admin_id`),
  ADD KEY `admin_department_department_id_index` (`department_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD UNIQUE KEY `category_type_category_id_mediatype_id_unique` (`category_id`,`mediatype_id`),
  ADD KEY `category_type_category_id_index` (`category_id`),
  ADD KEY `category_type_mediatype_id_index` (`mediatype_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_entries`
--
ALTER TABLE `file_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_entries_created_by_foreign` (`created_by`),
  ADD KEY `file_entries_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partners_created_by_foreign` (`created_by`),
  ADD KEY `partners_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_foreign` (`created_by`),
  ADD KEY `posts_updated_by_foreign` (`updated_by`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_slug_index` (`slug`),
  ADD KEY `posts_mediatype_id_index` (`mediatype_id`);

--
-- Indexes for table `post_serie`
--
ALTER TABLE `post_serie`
  ADD UNIQUE KEY `post_serie_post_id_serie_id_unique` (`post_id`,`serie_id`),
  ADD KEY `post_serie_post_id_index` (`post_id`),
  ADD KEY `post_serie_serie_id_index` (`serie_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD PRIMARY KEY (`admin_id`,`role_id`),
  ADD KEY `role_admin_role_id_foreign` (`role_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series_id_mediatype_id_unique` (`id`,`mediatype_id`),
  ADD KEY `series_created_by_foreign` (`created_by`),
  ADD KEY `series_updated_by_foreign` (`updated_by`),
  ADD KEY `series_mediatype_id_index` (`mediatype_id`),
  ADD KEY `series_category_id_foreign` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD KEY `settings_created_by_foreign` (`created_by`),
  ADD KEY `settings_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  ADD KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  ADD KEY `tagging_tagged_tag_slug_index` (`tag_slug`);

--
-- Indexes for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tags_slug_index` (`slug`),
  ADD KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`);

--
-- Indexes for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tag_groups_slug_index` (`slug`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file_entries`
--
ALTER TABLE `file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_department`
--
ALTER TABLE `admin_department`
  ADD CONSTRAINT `admin_department_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `category_type`
--
ALTER TABLE `category_type`
  ADD CONSTRAINT `category_type_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_entries`
--
ALTER TABLE `file_entries`
  ADD CONSTRAINT `file_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `file_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `partners_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `posts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `post_serie`
--
ALTER TABLE `post_serie`
  ADD CONSTRAINT `post_serie_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_serie_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD CONSTRAINT `role_admin_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_admin_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `series` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `series_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `series_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD CONSTRAINT `tagging_tags_tag_group_id_foreign` FOREIGN KEY (`tag_group_id`) REFERENCES `tagging_tag_groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
