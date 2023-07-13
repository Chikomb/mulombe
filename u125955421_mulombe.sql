-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2023 at 06:31 AM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u125955421_mulombe`
--

-- --------------------------------------------------------

--
-- Table structure for table `apiusers`
--

CREATE TABLE `apiusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_access` varchar(255) NOT NULL,
  `access_secret` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apiusers`
--

INSERT INTO `apiusers` (`id`, `client_access`, `access_secret`, `created_at`, `updated_at`) VALUES
(1, 'a9425e84413431274b792d22271ea633', '$2y$10$EDRuenOh4mJUrjwJnd9Zw.Yco3i1jmiLlmJ1gvCCaFS9ESmJs79Zy', '2023-07-04 10:57:10', '2023-07-04 10:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `api_accesses`
--

CREATE TABLE `api_accesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a_p_i_s`
--

CREATE TABLE `a_p_i_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_from_api` varchar(255) NOT NULL,
  `response_body` text NOT NULL,
  `response_status` varchar(255) NOT NULL,
  `status_reason` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_categories`
--

CREATE TABLE `data_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_categories`
--

INSERT INTO `data_categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'live', 0, NULL, NULL),
(2, 'demo', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_surveys`
--

CREATE TABLE `data_surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `telecom_operator` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `question_number` varchar(255) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `answer_value` varchar(255) DEFAULT NULL,
  `data_category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_surveys`
--

INSERT INTO `data_surveys` (`id`, `session_id`, `phone_number`, `telecom_operator`, `channel`, `language_id`, `question_number`, `question`, `answer`, `answer_value`, `data_category`, `created_at`, `updated_at`) VALUES
(1, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '1', 'This message is from researchers at MOH, ZNPHI, Akros, AFENET and the US CDC. Are you 18 or older and do we have your consent for this survey?', '1', 'Yes', 'demo', '2023-07-04 10:57:49', '2023-07-04 10:57:49'),
(2, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '2', 'What is your age? (Enter in years)', '45', '45', 'demo', '2023-07-04 10:57:54', '2023-07-04 10:57:54'),
(3, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '3', 'What is your gender?', '2', 'Female', 'demo', '2023-07-04 10:57:58', '2023-07-04 10:57:58'),
(4, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '4a', 'In which District do you live?', '3', 'Chavuma District', 'demo', '2023-07-04 10:58:04', '2023-07-04 10:58:04'),
(5, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '4b', 'In which Constituency do you stay in?', '1', 'Chavuma Constituency', 'demo', '2023-07-04 10:58:09', '2023-07-04 10:58:09'),
(6, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '4c', 'In which Ward do you live?', '3', 'Lingelengenda', 'demo', '2023-07-04 10:58:15', '2023-07-04 10:58:15'),
(7, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '5', 'Have you received a COVID-19 vaccine?', '1', 'Yes', 'demo', '2023-07-04 11:04:29', '2023-07-04 11:04:29'),
(8, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '7', 'How concerned are you about getting COVID-19?', '2', 'Somewhat concerned', 'demo', '2023-07-04 11:04:34', '2023-07-04 11:04:34'),
(9, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '8', 'How important is getting a COVID-19 vaccine for your health?', '2', 'Somewhat important', 'demo', '2023-07-04 11:04:38', '2023-07-04 11:04:38'),
(10, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '9', 'Have most of your close family and friends received the COVID-19 vaccine?', '2', 'No', 'demo', '2023-07-04 11:04:41', '2023-07-04 11:04:41'),
(11, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '10', 'Do you think most of your close family and friends want you to get a COVID-19 vaccine?', '3', 'I don’t know', 'demo', '2023-07-04 11:04:45', '2023-07-04 11:04:45'),
(12, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '11', 'Do you know where to get a COVID-19 vaccine for yourself?', '1', 'Yes', 'demo', '2023-07-04 11:04:50', '2023-07-04 11:04:50'),
(13, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '12', 'Do you find it costly to get a vaccine? Consider clinic costs, transport, or missed work?', '1', 'Very costly', 'demo', '2023-07-04 11:05:01', '2023-07-04 11:05:01'),
(14, 'WA469563540732', '260975020473', 'Unknown', 'WhatsApp', 3, '13', 'Do you want to get a COVID-19 booster vaccine?', '2', 'Yes, I do want to', 'demo', '2023-07-04 11:05:10', '2023-07-04 11:05:10'),
(15, 'WA943058142526', '260975020473', 'Unknown', 'WhatsApp', 6, '1', 'This message is from researchers at MOH, ZNPHI, Akros, AFENET and the US CDC. Are you 18 or older and do we have your consent for this survey?', '1', 'Yes', 'demo', '2023-07-04 11:09:35', '2023-07-04 11:09:35'),
(16, 'WA943058142526', '260975020473', 'Unknown', 'WhatsApp', 6, '2', 'What is your age? (Enter in years)', '57', '57', 'demo', '2023-07-04 11:09:41', '2023-07-04 11:09:41'),
(17, 'WA943058142526', '260975020473', 'Unknown', 'WhatsApp', 6, '3', 'What is your gender?', '2', 'Female', 'demo', '2023-07-04 11:09:46', '2023-07-04 11:09:46'),
(18, 'WA943058142526', '260975020473', 'Unknown', 'WhatsApp', 6, '4a', 'In which District do you live?', '1', 'Lusaka District', 'demo', '2023-07-04 11:09:56', '2023-07-04 11:09:56'),
(19, 'WA943058142526', '260975020473', 'Unknown', 'WhatsApp', 6, '4b', 'In which Constituency do you stay in?', '2', 'Kabwata Constituency', 'demo', '2023-07-04 11:10:12', '2023-07-04 11:10:12'),
(20, 'WA943058142526', '260975020473', 'Airtel', 'WhatsApp', 6, '4c', 'In which Ward do you live?', '1', 'Kamwala', 'demo', '2023-07-04 11:13:03', '2023-07-04 11:13:03'),
(21, 'WA943058142526', '260975020473', 'Airtel', 'WhatsApp', 6, '5', 'Have you received a COVID-19 vaccine?', '1', 'Yes', 'demo', '2023-07-04 11:13:07', '2023-07-04 11:13:07'),
(22, 'WA943058142526', '260975020473', 'Airtel', 'WhatsApp', 6, '7', 'How concerned are you about getting COVID-19?', '1', 'Very Concerned', 'demo', '2023-07-04 11:13:11', '2023-07-04 11:13:11'),
(23, 'WA943058142526', '260975020473', 'Airtel', 'WhatsApp', 6, '8', 'How important is getting a COVID-19 vaccine for your health?', '1', 'Very important', 'demo', '2023-07-06 07:43:57', '2023-07-06 07:43:57'),
(24, 'WA943058142526', '260975020473', 'Airtel', 'WhatsApp', 6, '9', 'Have most of your close family and friends received the COVID-19 vaccine?', '1', 'Yes', 'demo', '2023-07-06 07:44:06', '2023-07-06 07:44:06'),
(25, 'SMS759226438816', '+260979669350', 'Airtel', 'SMS', 1, '1', 'This message is from researchers at MOH, ZNPHI, Akros, AFENET and the US CDC. Are you 18 or older and do we have your consent for this survey?', '1', 'Yes', 'demo', '2023-07-11 12:19:10', '2023-07-11 12:19:10'),
(26, 'SMS759226438816', '+260979669350', 'Airtel', 'SMS', 1, '1', 'Akros and Ministry of health are conducting a survey(if there’s need to specify the reason, it shall be done here). If you are 18 years or older and wish to proceed, press 1. if not press 2.', '2', '1', 'demo', '2023-07-11 12:19:14', '2023-07-11 12:19:14');

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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, NULL, NULL),
(2, 'Nyanja', 1, NULL, NULL),
(3, 'Bemba', 1, NULL, NULL),
(4, 'Tonga', 1, NULL, NULL),
(5, 'Kaonde', 1, NULL, NULL),
(6, 'Lunda', 1, NULL, NULL),
(7, 'Luvale', 1, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_12_091600_create_whats_app_sessions_table', 1),
(6, '2023_06_12_091613_create_sms_sessions_table', 1),
(7, '2023_06_12_091626_create_ussd_sessions_table', 1),
(8, '2023_06_12_091707_create_data_surveys_table', 1),
(9, '2023_06_12_103018_create_permisssions_table', 1),
(10, '2023_06_12_103037_create_roles_table', 1),
(11, '2023_06_12_103102_create_a_p_i_s_table', 1),
(12, '2023_06_12_103116_create_webhooks_table', 1),
(13, '2023_06_12_105820_create_question_structures_table', 1),
(14, '2023_06_12_110829_create_api_accesses_table', 1),
(15, '2023_06_12_115514_create_apiusers_table', 1),
(16, '2023_06_12_125746_create_progress_table', 1),
(17, '2023_06_13_115708_create_total_questions_table', 1),
(18, '2023_06_14_145158_create_data_categories_table', 1),
(19, '2023_06_15_125829_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permisssions`
--

CREATE TABLE `permisssions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Apiuser', 1, 'survey_akros', '6bf21e5e8cf2b3fadb534036f5c82ef3793e3bb8d3466b2d4478fb1f6c08b839', '[\"*\"]', '2023-07-04 11:12:59', '2023-07-04 10:57:28', '2023-07-04 11:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_structures`
--

CREATE TABLE `question_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel` varchar(255) NOT NULL,
  `total_questions` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_sessions`
--

CREATE TABLE `sms_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `case_no` varchar(255) DEFAULT NULL,
  `step_no` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_sessions`
--

INSERT INTO `sms_sessions` (`id`, `language_id`, `phone_number`, `case_no`, `step_no`, `session_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Zanaco', '1', '1', 'SMS454273384055', 0, '2023-07-04 16:32:27', '2023-07-04 16:32:27'),
(2, 1, '+260779205949', '1', '1', 'SMS605529923181', 0, '2023-07-11 12:16:38', '2023-07-11 12:16:39'),
(3, 1, '+260979669350', '2', '1', 'SMS759226438816', 1, '2023-07-11 12:18:39', '2023-07-11 12:19:14'),
(4, 1, 'AirtelMoney', '1', '1', 'SMS205452642399', 0, '2023-07-11 14:15:19', '2023-07-11 14:15:20'),
(5, 1, 'AirtelMoney', '1', '1', 'SMS392836478236', 0, '2023-07-11 14:15:13', '2023-07-11 14:15:20'),
(6, 1, 'MTN AYO', '1', '1', 'SMS532992798782', 0, '2023-07-11 14:37:16', '2023-07-11 14:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `total_questions`
--

CREATE TABLE `total_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel` varchar(255) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `total_questions`
--

INSERT INTO `total_questions` (`id`, `channel`, `total_questions`, `created_at`, `updated_at`) VALUES
(1, 'USSD', 20, NULL, NULL),
(2, 'SMS', 20, NULL, NULL),
(3, 'IVR', 20, NULL, NULL),
(4, 'WhatsApp', 20, NULL, NULL);

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
(1, 'Super Admin', 'super@ontech.co.zm', NULL, '$2y$10$HJYmpIngI1b/ZhVji7b3huQEhSwRtYK5SAj0DTJxddDBGPQHyRGsO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ussd_sessions`
--

CREATE TABLE `ussd_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `case_no` varchar(255) NOT NULL,
  `step_no` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhooks`
--

CREATE TABLE `webhooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `case_no` varchar(255) NOT NULL,
  `step_no` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whats_app_sessions`
--

CREATE TABLE `whats_app_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `case_no` varchar(255) DEFAULT NULL,
  `step_no` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whats_app_sessions`
--

INSERT INTO `whats_app_sessions` (`id`, `language_id`, `phone_number`, `case_no`, `step_no`, `session_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '260975020473', '13', '1', 'WA469563540732', 1, '2023-07-04 10:57:35', '2023-07-04 11:05:10'),
(2, 6, '260975020473', '10', '1', 'WA943058142526', 0, '2023-07-04 11:09:23', '2023-07-10 14:28:05'),
(3, 1, '260979669350', '1', '1', 'WA308446339033', 0, '2023-07-05 02:52:53', '2023-07-05 02:52:54'),
(4, 1, '260953015270', '1', '1', 'WA695292923370', 0, '2023-07-05 16:20:26', '2023-07-05 16:20:26'),
(5, 1, '260779308264', '1', '1', 'WA244977086148', 0, '2023-07-06 07:33:59', '2023-07-06 07:33:59'),
(6, 1, '260978499416', '1', '1', 'WA665369599374', 0, '2023-07-06 07:45:27', '2023-07-06 07:45:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apiusers`
--
ALTER TABLE `apiusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_accesses`
--
ALTER TABLE `api_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_p_i_s`
--
ALTER TABLE `a_p_i_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_categories`
--
ALTER TABLE `data_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_surveys`
--
ALTER TABLE `data_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
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
-- Indexes for table `permisssions`
--
ALTER TABLE `permisssions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_structures`
--
ALTER TABLE `question_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_sessions`
--
ALTER TABLE `sms_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_questions`
--
ALTER TABLE `total_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ussd_sessions`
--
ALTER TABLE `ussd_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whats_app_sessions`
--
ALTER TABLE `whats_app_sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apiusers`
--
ALTER TABLE `apiusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_accesses`
--
ALTER TABLE `api_accesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a_p_i_s`
--
ALTER TABLE `a_p_i_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_categories`
--
ALTER TABLE `data_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_surveys`
--
ALTER TABLE `data_surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permisssions`
--
ALTER TABLE `permisssions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_structures`
--
ALTER TABLE `question_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_sessions`
--
ALTER TABLE `sms_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `total_questions`
--
ALTER TABLE `total_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ussd_sessions`
--
ALTER TABLE `ussd_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhooks`
--
ALTER TABLE `webhooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whats_app_sessions`
--
ALTER TABLE `whats_app_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
