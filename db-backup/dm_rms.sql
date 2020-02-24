-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 02:55 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dm_rms`
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

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `title`, `session_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Last Terminal', NULL, NULL, 1, '2020-01-25 07:20:42', '2020-01-25 07:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `theory_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `practical_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_schedules_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
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

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `theory_attendance`, `practical_attendance`, `exam_schedules_id`, `student_id`, `theory_get_marks`, `theory_grade`, `practical_get_marks`, `practical_grade`, `total_marks`, `final_grade`, `grade_point`, `grade_credit_hour`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ABS', 'ABS', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(2, 'ABS', 'ABS', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(3, 'ABS', 'ABS', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(4, 'ABS', 'ABS', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(5, 'ABS', 'ABS', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(6, 'ABS', 'ABS', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(7, 'ABS', 'ABS', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(8, 'ABS', 'ABS', 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL),
(9, 'ABS', 'ABS', 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 01:16:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `school_class_section_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` time DEFAULT NULL,
  `end_from` time DEFAULT NULL,
  `room_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `exam_id`, `school_class_section_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(2, 1, 2, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(3, 1, 3, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(4, 1, 4, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(5, 1, 5, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(6, 1, 6, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(7, 1, 7, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(8, 1, 8, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(10, 1, 19, NULL, '00:48:45', '00:48:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(11, 1, 20, NULL, '00:48:45', '00:48:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(12, 1, 21, NULL, '00:48:45', '00:48:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(13, 1, 22, NULL, '00:48:45', '00:48:45', NULL, 100, 40, NULL, 0, NULL, NULL),
(14, 1, 9, NULL, '18:53:45', '18:53:45', NULL, 100, 40, NULL, 0, NULL, NULL);

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
(1, 'A+', 4.00, 90.00, 100.00, 'Outstanding', 0, '2020-01-23 01:40:58', '2020-01-23 01:40:58'),
(2, 'A', 3.60, 80.00, 90.00, 'Excellent', 0, '2020-01-23 01:40:58', '2020-01-23 01:40:58'),
(3, 'B+', 3.20, 70.00, 80.00, 'Very good', 0, '2020-01-23 01:40:58', '2020-01-23 01:40:58'),
(4, 'B', 2.80, 60.00, 70.00, 'Good', 0, '2020-01-23 01:40:58', '2020-01-23 01:40:58'),
(5, 'C+', 2.40, 50.00, 60.00, 'Satisfactory', 0, '2020-01-23 01:40:58', '2020-01-23 01:40:58'),
(6, 'C', 2.00, 40.00, 50.00, 'Acceptable', 0, '2020-01-23 01:40:59', '2020-01-23 01:40:59'),
(7, 'D+', 1.60, 30.00, 40.00, 'Partially acceptable', 0, '2020-01-23 01:40:59', '2020-01-23 01:40:59'),
(8, 'D', 1.20, 20.00, 30.00, 'Insufficient', 0, '2020-01-23 01:40:59', '2020-01-23 01:40:59'),
(9, 'E', 0.80, 0.00, 20.00, 'Very insufficient', 0, '2020-01-23 01:40:59', '2020-01-23 01:40:59');

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
  `logo_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(15, '2019_12_24_073052_create_exam_schedules_table', 1),
(16, '2020_01_07_132207_create_grades_table', 1),
(17, '2020_01_07_161153_create_students_table', 1),
(21, '2020_01_12_100826_create_exam_results_table', 2),
(22, '2020_01_25_182533_create_grade_sheet_settings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Class V', 1, '2020-01-23 02:06:32', '2020-01-23 02:06:32'),
(2, 'Class VIII', 1, '2020-01-23 02:06:32', '2020-01-23 02:06:32');

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

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(44, 'School List', 'school-list', NULL, NULL, 1, NULL, NULL),
(45, 'School Create', 'school-create', NULL, NULL, 2, NULL, NULL),
(46, 'School Edit', 'school-edit', NULL, NULL, 3, NULL, NULL),
(47, 'School Delete', 'school-delete', NULL, NULL, 5, NULL, NULL),
(48, 'Class List', 'class-list', NULL, NULL, 1, NULL, NULL),
(49, 'Class Create', 'class-create', NULL, NULL, 2, NULL, NULL),
(50, 'Class  Edit', 'class-edit', NULL, NULL, 3, NULL, NULL),
(51, 'Class  Delete', 'class-delete', NULL, NULL, 5, NULL, NULL),
(52, 'Section List', 'section-list', NULL, NULL, 1, NULL, NULL),
(53, 'Section Create', 'section-create', NULL, NULL, 2, NULL, NULL),
(54, 'Section Edit', 'section-edit', NULL, NULL, 3, NULL, NULL),
(55, 'Section Delete', 'section-delete', NULL, NULL, 5, NULL, NULL),
(56, 'Assign Class List', 'assign-class-list', NULL, NULL, 1, NULL, NULL),
(57, 'Assign Class Create', 'assign-class-create', NULL, NULL, 2, NULL, NULL),
(58, 'Assign Class Delete', 'assign-class-delete', NULL, NULL, 5, NULL, NULL),
(59, 'GradeSheet Setting', 'header-setting', NULL, NULL, 1, NULL, NULL),
(60, 'Assign Section List', 'assign-section-list', NULL, NULL, 1, NULL, NULL),
(61, 'Assign Section Create', 'assign-section-create', NULL, NULL, 2, NULL, NULL),
(62, 'Assign Section Delete', 'assign-section-delete', NULL, NULL, 5, NULL, NULL),
(63, 'Database Table List', 'database-table-list', NULL, NULL, 1, NULL, NULL),
(64, 'Database Backup Download', 'database-backup-download', NULL, NULL, 2, NULL, NULL),
(65, 'Database Backup In Server', 'database-backup-in-server', NULL, NULL, 3, NULL, NULL),
(66, 'Assign Subject List', 'assign-subject-list', NULL, NULL, 1, NULL, NULL),
(67, 'Assign Subject Create', 'assign-subject-create', NULL, NULL, 2, NULL, NULL),
(68, 'Assign Subject Delete', 'assign-subject-delete', NULL, NULL, 5, NULL, NULL),
(69, 'Exam List', 'exam-list', NULL, NULL, 1, NULL, NULL),
(70, 'Exam Create', 'exam-create', NULL, NULL, 2, NULL, NULL),
(71, 'Exam Edit', 'exam-edit', NULL, NULL, 3, NULL, NULL),
(72, 'Exam Delete', 'exam-delete', NULL, NULL, 5, NULL, NULL),
(73, 'Grade List', 'grade-list', NULL, NULL, 1, NULL, NULL),
(74, 'Grade Create', 'grade-create', NULL, NULL, 2, NULL, NULL),
(75, 'Grade Edit', 'grade-edit', NULL, NULL, 3, NULL, NULL),
(76, 'Grade Delete', 'grade-delete', NULL, NULL, 5, NULL, NULL),
(77, 'Exam Schedule List', 'exam-schedule-list', NULL, NULL, 1, NULL, NULL),
(78, 'Exam Schedule Create', 'exam-schedule-create', NULL, NULL, 2, NULL, NULL),
(79, 'Mark Register List', 'mark-register-list', NULL, NULL, 1, NULL, NULL),
(80, 'Mark Register Create', 'mark-register-create', NULL, NULL, 2, NULL, NULL),
(81, 'Student List', 'student-list', NULL, NULL, 1, NULL, NULL),
(82, 'Student Create', 'student-create', NULL, NULL, 2, NULL, NULL),
(83, 'Student Edit', 'student-edit', NULL, NULL, 3, NULL, NULL),
(84, 'Student Show', 'student-show', NULL, NULL, 4, NULL, NULL),
(85, 'Student Delete', 'student-delete', NULL, NULL, 5, NULL, NULL),
(86, 'Subject List', 'subject-list', NULL, NULL, 1, NULL, NULL),
(87, 'Subject Create', 'subject-create', NULL, NULL, 2, NULL, NULL),
(88, 'Subject Edit', 'subject-edit', NULL, NULL, 3, NULL, NULL),
(89, 'Subject Show', 'subject-show', NULL, NULL, 4, NULL, NULL),
(90, 'Subject Delete', 'subject-delete', NULL, NULL, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

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

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', NULL, NULL, 1, '2020-01-25 06:28:56', '2020-01-25 06:28:56'),
(2, 'Admin', 'admin', NULL, NULL, 1, '2020-01-25 12:14:42', '2020-01-25 12:14:42'),
(3, 'Users', 'users', NULL, NULL, 1, '2020-01-25 12:14:56', '2020-01-25 12:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `established` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `established`, `description`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Shanti Niketan School, Baneshwor', NULL, NULL, NULL, '2020-01-25 04:34:58', '2020-01-25 04:34:58'),
(2, 'Shanti School, Jorpati', NULL, NULL, NULL, '2020-01-25 04:43:28', '2020-01-25 04:43:28');

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

--
-- Dumping data for table `school_classes`
--

INSERT INTO `school_classes` (`id`, `school_id`, `class_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 1, 1, NULL, NULL),
(5, 1, 2, NULL, NULL);

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

--
-- Dumping data for table `school_class_sections`
--

INSERT INTO `school_class_sections` (`id`, `school_class_id`, `section_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 4, 1, NULL, NULL),
(4, 3, 1, NULL, NULL);

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

--
-- Dumping data for table `school_class_section_subjects`
--

INSERT INTO `school_class_section_subjects` (`id`, `school_class_section_id`, `subject_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 1, NULL, NULL),
(2, 2, 2, NULL, 1, NULL, NULL),
(3, 2, 3, NULL, 1, NULL, NULL),
(4, 2, 4, NULL, 1, NULL, NULL),
(5, 2, 5, NULL, 1, NULL, NULL),
(6, 2, 6, NULL, 1, NULL, NULL),
(7, 2, 7, NULL, 1, NULL, NULL),
(8, 2, 8, NULL, 1, NULL, NULL),
(9, 2, 9, NULL, 1, NULL, NULL),
(10, 3, 1, NULL, 1, NULL, NULL),
(11, 3, 2, NULL, 1, NULL, NULL),
(12, 3, 3, NULL, 1, NULL, NULL),
(13, 3, 4, NULL, 1, NULL, NULL),
(14, 3, 5, NULL, 1, NULL, NULL),
(15, 3, 6, NULL, 1, NULL, NULL),
(16, 3, 7, NULL, 1, NULL, NULL),
(17, 3, 8, NULL, 1, NULL, NULL),
(18, 3, 9, NULL, 1, NULL, NULL),
(19, 4, 1, NULL, 1, NULL, NULL),
(20, 4, 2, NULL, 1, NULL, NULL),
(21, 4, 3, NULL, 1, NULL, NULL),
(22, 4, 9, NULL, 1, NULL, NULL);

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

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2020-01-25 04:39:45', '2020-01-25 07:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_class_section_id` int(10) UNSIGNED NOT NULL,
  `admission_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
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

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '1', '2020-01-28', 'Lakpa Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1995-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-28 13:05:32', '2020-01-28 13:05:32'),
(3, 4, NULL, '1', '2020-01-28', 'Ram Kumar Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1993-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-28 13:18:06', '2020-01-28 13:18:06'),
(4, 4, NULL, '2', '2020-01-28', 'Sammer Bhandari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1993-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-28 13:18:38', '2020-01-28 13:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theory_full_marks` int(11) DEFAULT NULL,
  `practical_full_marks` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `theory_full_marks`, `practical_full_marks`, `credit_hour`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Compulsory English', 75, 25, 4, 1, '2020-01-23 01:43:21', '2020-01-23 01:43:21'),
(2, 'Compulsory Nepali', 75, 25, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(3, 'Compulsory Mathematics', 100, NULL, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(4, 'Compulsory Social Studies and Population Education', 75, 25, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(5, 'Compulsory Science and Environment Education', 75, 25, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(6, 'Compulsory Moral Education', 50, 20, 2, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(7, 'Compulsory Health and Physical Education', 50, 20, 2, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(8, 'Compulsory Occupation, Business and Technology Education', 75, 25, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22'),
(9, 'Optional Computer Education', 75, 25, 4, 1, '2020-01-23 01:43:22', '2020-01-23 01:43:22');

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
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
(1, 'Super Admin', 'lochan2075@gmail.com', NULL, '$2y$10$cTj4bTSBtHRe.xK3Wixn8u2w5j40kl1t9hpYfrShdV49c4y2PFZUO', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, 1, NULL, '2020-01-23 01:40:48', '2020-01-28 12:57:18', NULL);

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
  ADD KEY `exam_results_exam_schedules_id_foreign` (`exam_schedules_id`),
  ADD KEY `exam_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedules_school_class_section_subject_id_foreign` (`school_class_section_subject_id`),
  ADD KEY `exam_schedules_exam_id_foreign` (`exam_id`);

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
  ADD KEY `students_school_class_section_id_foreign` (`school_class_section_id`);

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
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_student_code_unique` (`student_code`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_classes`
--
ALTER TABLE `school_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_class_sections`
--
ALTER TABLE `school_class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_class_section_subjects`
--
ALTER TABLE `school_class_section_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_exam_schedules_id_foreign` FOREIGN KEY (`exam_schedules_id`) REFERENCES `exam_schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_school_class_section_subject_id_foreign` FOREIGN KEY (`school_class_section_subject_id`) REFERENCES `school_class_section_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `students_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
