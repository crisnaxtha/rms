-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 05:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms_empty`
--

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `school_class_section_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `theory_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `practical_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theory_get_marks` double(10,2) DEFAULT NULL,
  `theory_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `practical_get_marks` double(10,2) DEFAULT NULL,
  `practical_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` double(10,2) DEFAULT NULL,
  `final_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_point` double(10,1) DEFAULT NULL,
  `grade_credit_hour` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` double(10,2) DEFAULT NULL,
  `mark_from` double(10,2) DEFAULT NULL,
  `mark_upto` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `point`, `mark_from`, `mark_upto`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A+', 4.00, 90.00, 100.00, 'Outstanding', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(2, 'A', 3.60, 80.00, 90.00, 'Excellent', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(3, 'B+', 3.20, 70.00, 80.00, 'Very good', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(4, 'B', 2.80, 60.00, 70.00, 'Good', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(5, 'C+', 2.40, 50.00, 60.00, 'Satisfactory', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(6, 'C', 2.00, 40.00, 50.00, 'Acceptable', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(7, 'D+', 1.60, 30.00, 40.00, 'Partially acceptable', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(8, 'D', 1.20, 20.00, 30.00, 'Insufficient', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(9, 'E', 0.80, 0.00, 20.00, 'Very insufficient', 0, '2020-12-23 10:23:12', '2020-12-23 10:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `grade_sheet_settings`
--

CREATE TABLE `grade_sheet_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_01_18_065719_create_schools_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_04_120341_create_roles_table', 1),
(4, '2018_09_04_123339_create_permissions_table', 1),
(5, '2018_10_04_124435_create_permission_role_table', 1),
(6, '2018_10_12_000000_create_users_table', 1),
(7, '2019_12_20_112449_create_my_classes_table', 1),
(8, '2019_12_20_112542_create_school_classes_table', 1),
(9, '2019_12_20_112542_create_sections_table', 1),
(10, '2019_12_20_113148_create_school_class_sections_table', 1),
(11, '2019_12_23_101558_create_subjects_table', 1),
(12, '2019_12_23_112821_create_exams_table', 1),
(13, '2019_12_24_061735_create_sessions_table', 1),
(14, '2019_12_24_063144_create_school_class_section_subjects_table', 1),
(15, '2020_01_07_132207_create_grades_table', 1),
(16, '2020_01_07_161153_create_students_table', 1),
(17, '2020_01_12_100826_create_exam_results_table', 1),
(18, '2020_01_25_182533_create_grade_sheet_settings_table', 1),
(19, '2020_03_14_063806_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_nepali` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `title`, `title_nepali`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Class V', NULL, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(2, 'Class VIII', NULL, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `school_class_section_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `obtain_total_th_marks` double(10,2) DEFAULT NULL,
  `obtain_total_pr_marks` double(10,2) DEFAULT NULL,
  `obtain_total_marks` double(10,2) DEFAULT NULL,
  `grand_total_th_marks` double(10,2) DEFAULT NULL,
  `grand_total_marks` double(10,2) DEFAULT NULL,
  `percentage` double(10,2) DEFAULT NULL,
  `gpa` double(10,2) DEFAULT NULL,
  `results` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_nepali` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `established` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_classes`
--

CREATE TABLE `school_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_class_sections`
--

CREATE TABLE `school_class_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_class_section_subjects`
--

CREATE TABLE `school_class_section_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_class_section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_ad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `school_class_section_id` int(10) UNSIGNED NOT NULL,
  `admission_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_bs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_ad` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measurement_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theory_full_marks` int(11) DEFAULT NULL,
  `theory_pass_marks` int(11) DEFAULT NULL,
  `practical_full_marks` int(11) DEFAULT NULL,
  `practical_pass_marks` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `theory_full_marks`, `theory_pass_marks`, `practical_full_marks`, `practical_pass_marks`, `credit_hour`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Compulsory English', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(2, 'Compulsory Nepali', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(3, 'Compulsory Mathematics', 100, 40, NULL, NULL, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(4, 'Compulsory Social Studies and Population Education', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(5, 'Compulsory Science and Environment Education', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(6, 'Compulsory Moral Education', 50, 20, 20, 10, 2, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(7, 'Compulsory Health and Physical Education', 50, 20, 20, 10, 2, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(8, 'Compulsory Occupation, Business and Technology Education', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12'),
(9, 'Optional Computer Education', 75, 35, 25, 10, 4, 1, '2020-12-23 10:23:12', '2020-12-23 10:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_super` tinyint(1) DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `student_code` int(11) DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `avatar`, `phone`, `type`, `role_super`, `role_id`, `code`, `student_code`, `gender`, `blood_group`, `nationality`, `phone_number`, `address`, `bio`, `section_id`, `forgotten_password_time`, `status`, `deleted_at`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Super Admin', 'lochan2075@gmail.com', NULL, '$2y$10$DEEvoHf8vDX19Nauzd7NGOsq.mzz9m5IzF9ETgIUSK5l5b1X24j6C', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-23 10:23:12', '2020-12-23 10:23:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_session_id_foreign` (`session_id`),
  ADD KEY `exam_results_school_class_section_subject_id_foreign` (`school_class_section_subject_id`),
  ADD KEY `exam_results_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_sheet_settings`
--
ALTER TABLE `grade_sheet_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_session_id_foreign` (`session_id`),
  ADD KEY `reports_school_class_section_id_foreign` (`school_class_section_id`),
  ADD KEY `reports_exam_id_foreign` (`exam_id`),
  ADD KEY `reports_student_id_foreign` (`student_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schools_code_unique` (`code`);

--
-- Indexes for table `school_classes`
--
ALTER TABLE `school_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_classes_class_id_foreign` (`class_id`),
  ADD KEY `school_classes_school_id_foreign` (`school_id`);

--
-- Indexes for table `school_class_sections`
--
ALTER TABLE `school_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_class_sections_school_class_id_foreign` (`school_class_id`),
  ADD KEY `school_class_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `school_class_section_subjects`
--
ALTER TABLE `school_class_section_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_class_section_subjects_school_class_section_id_foreign` (`school_class_section_id`),
  ADD KEY `school_class_section_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_school_class_section_id_foreign` (`school_class_section_id`),
  ADD KEY `students_session_id_foreign` (`session_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_student_code_unique` (`student_code`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grade_sheet_settings`
--
ALTER TABLE `grade_sheet_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_classes`
--
ALTER TABLE `school_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_class_sections`
--
ALTER TABLE `school_class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_class_section_subjects`
--
ALTER TABLE `school_class_section_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_school_class_section_subject_id_foreign` FOREIGN KEY (`school_class_section_subject_id`) REFERENCES `school_class_section_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_classes`
--
ALTER TABLE `school_classes`
  ADD CONSTRAINT `school_classes_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_classes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_class_sections`
--
ALTER TABLE `school_class_sections`
  ADD CONSTRAINT `school_class_sections_school_class_id_foreign` FOREIGN KEY (`school_class_id`) REFERENCES `school_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_class_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_class_section_subjects`
--
ALTER TABLE `school_class_section_subjects`
  ADD CONSTRAINT `school_class_section_subjects_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_class_section_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
