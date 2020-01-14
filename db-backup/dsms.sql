-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 12:47 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `school_id`, `class_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 1, NULL, NULL),
(2, NULL, 2, 2, NULL, NULL),
(3, NULL, 1, 1, NULL, NULL),
(4, NULL, 1, 2, NULL, NULL),
(5, NULL, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_subjects`
--

CREATE TABLE `class_section_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `class_section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_section_subjects`
--

INSERT INTO `class_section_subjects` (`id`, `school_id`, `session_id`, `class_section_id`, `subject_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 3, 1, NULL, 1, NULL, NULL),
(2, NULL, NULL, 3, 2, NULL, 1, NULL, NULL),
(3, NULL, NULL, 3, 3, NULL, 1, NULL, NULL),
(4, NULL, NULL, 3, 4, NULL, 1, NULL, NULL),
(5, NULL, NULL, 3, 5, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `school_id`, `title`, `session_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Last Terminal', NULL, NULL, 1, '2020-01-14 05:51:42', '2020-01-14 05:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_schedules_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `get_marks` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `school_id`, `attendance`, `exam_schedules_id`, `student_id`, `get_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '', 3, 1, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '4', 4, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_section_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` time DEFAULT NULL,
  `end_from` time DEFAULT NULL,
  `room_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `school_id`, `session_id`, `exam_id`, `class_section_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 1, '2019-12-29', '17:21:45', '17:21:45', '100', 100, 40, NULL, 0, NULL, NULL),
(2, NULL, NULL, 1, 2, '2019-12-29', '17:21:45', '17:21:45', '100', 100, 40, NULL, 0, NULL, NULL),
(3, NULL, NULL, 1, 3, '2020-01-19', '17:21:45', '17:21:45', '100', 100, 40, NULL, 0, NULL, NULL),
(4, NULL, NULL, 1, 4, '2020-01-26', '17:21:45', '17:21:45', '100', 100, 40, NULL, 0, NULL, NULL),
(5, NULL, NULL, 1, 5, '2020-01-21', '17:21:45', '17:21:45', '100', 100, 40, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` double(10,2) DEFAULT NULL,
  `mark_from` double(10,2) DEFAULT NULL,
  `mark_upto` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_09_04_120341_create_roles_table', 1),
(3, '2018_09_04_123339_create_permissions_table', 1),
(4, '2018_10_04_124435_create_permission_role_table', 1),
(5, '2018_10_12_000000_create_users_table', 1),
(6, '2019_12_20_105121_create_school_settings_table', 1),
(7, '2019_12_20_112449_create_my_classes_table', 1),
(8, '2019_12_20_112542_create_sections_table', 1),
(9, '2019_12_20_113148_create_class_sections_table', 1),
(10, '2019_12_23_101558_create_subjects_table', 1),
(11, '2019_12_23_112821_create_exams_table', 1),
(12, '2019_12_24_061735_create_sessions_table', 1),
(13, '2019_12_24_063144_create_class_section_subjects_table', 1),
(14, '2019_12_24_073052_create_exam_schedules_table', 1),
(15, '2020_01_07_132207_create_grades_table', 1),
(16, '2020_01_07_161153_create_students_table', 1),
(17, '2020_01_12_100826_create_exam_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `school_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Class 8', 1, '2020-01-14 05:45:56', '2020-01-14 05:45:56'),
(2, NULL, 'Class 5', 1, '2020-01-14 05:46:05', '2020-01-14 05:46:05');

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
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `established` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_due_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `school_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'A', 1, '2020-01-14 05:46:13', '2020-01-14 05:46:13'),
(2, NULL, 'B', 1, '2020-01-14 05:46:18', '2020-01-14 05:46:18'),
(3, NULL, 'C', 1, '2020-01-14 05:46:23', '2020-01-14 05:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `class_section_id` int(10) UNSIGNED NOT NULL,
  `admission_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
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
  `guardian_address` text COLLATE utf8mb4_unicode_ci,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_pic` text COLLATE utf8mb4_unicode_ci,
  `mother_pic` text COLLATE utf8mb4_unicode_ci,
  `guardian_pic` text COLLATE utf8mb4_unicode_ci,
  `previous_school` text COLLATE utf8mb4_unicode_ci,
  `height` text COLLATE utf8mb4_unicode_ci,
  `weight` text COLLATE utf8mb4_unicode_ci,
  `measurement_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 3, '1', '100', '2019-05-28', 'Umesh ', 'Dangol', NULL, '9843000000', 'a@gmail.com', NULL, NULL, 'A', '2019-05-28', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(2, NULL, 3, '2', '101', '2019-05-29', 'Roshan', 'Siwakoti', NULL, '9843000001', 'b@gmbil.com', NULL, NULL, 'B', '2019-05-29', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(3, NULL, 3, '3', '102', '2019-05-30', 'Ocean', 'Shrestha', NULL, '9843000002', 'c@gmcil.com', NULL, NULL, 'C', '2019-05-30', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(4, NULL, 3, '4', '103', '2019-05-31', 'Ashish', 'Rai', NULL, '9843000003', 'd@gmdil.com', NULL, NULL, 'D', '2019-05-31', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(5, NULL, 3, '5', '104', '2019-06-01', 'Subeg', 'Bista', NULL, '9843000004', 'a@gmail.com', NULL, NULL, 'A', '2019-06-01', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(6, NULL, 3, '6', '105', '2019-06-02', 'Aman', 'Yadhav', NULL, '9843000005', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-02', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(7, NULL, 3, '7', '106', '2019-06-03', 'Alok', 'Kumar', NULL, '9843000006', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-03', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(8, NULL, 3, '8', '107', '2019-06-04', 'Diwakar', 'Dulal', NULL, '9843000007', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-04', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(9, NULL, 3, '9', '108', '2019-06-05', 'Rossy', 'Phuysal', NULL, '9843000008', 'a@gmail.com', NULL, NULL, 'A', '2019-06-05', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(10, NULL, 3, '10', '109', '2019-06-06', 'Meher', 'Maharjan', NULL, '9843000009', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-06', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(11, NULL, 3, '11', '110', '2019-06-07', 'Laxman', 'Giri', NULL, '9843000010', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-07', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(12, NULL, 3, '12', '111', '2019-06-08', 'Umesh ', 'Dangol', NULL, '9843000011', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-08', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(13, NULL, 3, '13', '112', '2019-06-09', 'Roshan', 'Siwakoti', NULL, '9843000012', 'a@gmail.com', NULL, NULL, 'A', '2019-06-09', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(14, NULL, 3, '14', '113', '2019-06-10', 'Ocean', 'Shrestha', NULL, '9843000013', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-10', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(15, NULL, 3, '15', '114', '2019-06-11', 'Ashish', 'Rai', NULL, '9843000014', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-11', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(16, NULL, 3, '16', '115', '2019-06-12', 'Subeg', 'Bista', NULL, '9843000015', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-12', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(17, NULL, 3, '17', '116', '2019-06-13', 'Aman', 'Yadhav', NULL, '9843000016', 'a@gmail.com', NULL, NULL, 'A', '2019-06-13', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(18, NULL, 3, '18', '117', '2019-06-14', 'Alok', 'Kumar', NULL, '9843000017', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-14', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(19, NULL, 3, '19', '118', '2019-06-15', 'Diwakar', 'Dulal', NULL, '9843000018', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-15', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(20, NULL, 3, '20', '119', '2019-06-16', 'Rossy', 'Phuysal', NULL, '9843000019', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-16', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(21, NULL, 3, '21', '120', '2019-06-17', 'Meher', 'Maharjan', NULL, '9843000020', 'a@gmail.com', NULL, NULL, 'A', '2019-06-17', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(22, NULL, 3, '22', '121', '2019-06-18', 'Laxman', 'Giri', NULL, '9843000021', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-18', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(23, NULL, 3, '23', '122', '2019-06-19', 'Umesh ', 'Dangol', NULL, '9843000022', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-19', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:14', '2020-01-14 05:50:14'),
(24, NULL, 3, '24', '123', '2019-06-20', 'Roshan', 'Siwakoti', NULL, '9843000023', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-20', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(25, NULL, 3, '25', '124', '2019-06-21', 'Ocean', 'Shrestha', NULL, '9843000024', 'a@gmail.com', NULL, NULL, 'A', '2019-06-21', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(26, NULL, 3, '26', '125', '2019-06-22', 'Ashish', 'Rai', NULL, '9843000025', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-22', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(27, NULL, 3, '27', '126', '2019-06-23', 'Subeg', 'Bista', NULL, '9843000026', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-23', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(28, NULL, 3, '28', '127', '2019-06-24', 'Aman', 'Yadhav', NULL, '9843000027', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-24', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(29, NULL, 3, '29', '128', '2019-06-25', 'Alok', 'Kumar', NULL, '9843000028', 'a@gmail.com', NULL, NULL, 'A', '2019-06-25', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(30, NULL, 3, '30', '129', '2019-06-26', 'Diwakar', 'Dulal', NULL, '9843000029', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-26', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(31, NULL, 3, '31', '130', '2019-06-27', 'Rossy', 'Phuysal', NULL, '9843000030', 'c@gmcil.com', NULL, NULL, 'C', '2019-06-27', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(32, NULL, 3, '32', '131', '2019-06-28', 'Meher', 'Maharjan', NULL, '9843000031', 'd@gmdil.com', NULL, NULL, 'D', '2019-06-28', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(33, NULL, 3, '33', '132', '2019-06-29', 'Laxman', 'Giri', NULL, '9843000032', 'a@gmail.com', NULL, NULL, 'A', '2019-06-29', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(34, NULL, 3, '34', '133', '2019-06-30', 'Umesh ', 'Dangol', NULL, '9843000033', 'b@gmbil.com', NULL, NULL, 'B', '2019-06-30', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(35, NULL, 3, '35', '134', '2019-07-01', 'Roshan', 'Siwakoti', NULL, '9843000034', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-01', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(36, NULL, 3, '36', '135', '2019-07-02', 'Ocean', 'Shrestha', NULL, '9843000035', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-02', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(37, NULL, 3, '37', '136', '2019-07-03', 'Ashish', 'Rai', NULL, '9843000036', 'a@gmail.com', NULL, NULL, 'A', '2019-07-03', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(38, NULL, 3, '38', '137', '2019-07-04', 'Subeg', 'Bista', NULL, '9843000037', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-04', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(39, NULL, 3, '39', '138', '2019-07-05', 'Aman', 'Yadhav', NULL, '9843000038', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-05', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(40, NULL, 3, '40', '139', '2019-07-06', 'Alok', 'Kumar', NULL, '9843000039', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-06', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(41, NULL, 3, '41', '140', '2019-07-07', 'Diwakar', 'Dulal', NULL, '9843000040', 'a@gmail.com', NULL, NULL, 'A', '2019-07-07', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(42, NULL, 3, '42', '141', '2019-07-08', 'Rossy', 'Phuysal', NULL, '9843000041', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-08', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(43, NULL, 3, '43', '142', '2019-07-09', 'Meher', 'Maharjan', NULL, '9843000042', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-09', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(44, NULL, 3, '44', '143', '2019-07-10', 'Laxman', 'Giri', NULL, '9843000043', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-10', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(45, NULL, 3, '45', '144', '2019-07-11', 'Umesh ', 'Dangol', NULL, '9843000044', 'a@gmail.com', NULL, NULL, 'A', '2019-07-11', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:15', '2020-01-14 05:50:15'),
(46, NULL, 3, '46', '145', '2019-07-12', 'Roshan', 'Siwakoti', NULL, '9843000045', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-12', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(47, NULL, 3, '47', '146', '2019-07-13', 'Ocean', 'Shrestha', NULL, '9843000046', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-13', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(48, NULL, 3, '48', '147', '2019-07-14', 'Ashish', 'Rai', NULL, '9843000047', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-14', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(49, NULL, 3, '49', '148', '2019-07-15', 'Subeg', 'Bista', NULL, '9843000048', 'a@gmail.com', NULL, NULL, 'A', '2019-07-15', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(50, NULL, 3, '50', '149', '2019-07-16', 'Aman', 'Yadhav', NULL, '9843000049', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-16', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(51, NULL, 3, '51', '150', '2019-07-17', 'Alok', 'Kumar', NULL, '9843000050', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-17', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(52, NULL, 3, '52', '151', '2019-07-18', 'Diwakar', 'Dulal', NULL, '9843000051', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-18', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(53, NULL, 3, '53', '152', '2019-07-19', 'Rossy', 'Phuysal', NULL, '9843000052', 'a@gmail.com', NULL, NULL, 'A', '2019-07-19', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(54, NULL, 3, '54', '153', '2019-07-20', 'Meher', 'Maharjan', NULL, '9843000053', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-20', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(55, NULL, 3, '55', '154', '2019-07-21', 'Laxman', 'Giri', NULL, '9843000054', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-21', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(56, NULL, 3, '56', '155', '2019-07-22', 'Umesh ', 'Dangol', NULL, '9843000055', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-22', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(57, NULL, 3, '57', '156', '2019-07-23', 'Roshan', 'Siwakoti', NULL, '9843000056', 'a@gmail.com', NULL, NULL, 'A', '2019-07-23', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(58, NULL, 3, '58', '157', '2019-07-24', 'Ocean', 'Shrestha', NULL, '9843000057', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-24', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(59, NULL, 3, '59', '158', '2019-07-25', 'Ashish', 'Rai', NULL, '9843000058', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-25', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(60, NULL, 3, '60', '159', '2019-07-26', 'Subeg', 'Bista', NULL, '9843000059', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-26', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(61, NULL, 3, '61', '160', '2019-07-27', 'Aman', 'Yadhav', NULL, '9843000060', 'a@gmail.com', NULL, NULL, 'A', '2019-07-27', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(62, NULL, 3, '62', '161', '2019-07-28', 'Alok', 'Kumar', NULL, '9843000061', 'b@gmbil.com', NULL, NULL, 'B', '2019-07-28', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(63, NULL, 3, '63', '162', '2019-07-29', 'Diwakar', 'Dulal', NULL, '9843000062', 'c@gmcil.com', NULL, NULL, 'C', '2019-07-29', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(64, NULL, 3, '64', '163', '2019-07-30', 'Rossy', 'Phuysal', NULL, '9843000063', 'd@gmdil.com', NULL, NULL, 'D', '2019-07-30', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(65, NULL, 3, '65', '164', '2019-07-31', 'Meher', 'Maharjan', NULL, '9843000064', 'a@gmail.com', NULL, NULL, 'A', '2019-07-31', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(66, NULL, 3, '66', '165', '2019-08-01', 'Laxman', 'Giri', NULL, '9843000065', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-01', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:16', '2020-01-14 05:50:16'),
(67, NULL, 3, '67', '166', '2019-08-02', 'Umesh ', 'Dangol', NULL, '9843000066', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-02', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(68, NULL, 3, '68', '167', '2019-08-03', 'Roshan', 'Siwakoti', NULL, '9843000067', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-03', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(69, NULL, 3, '69', '168', '2019-08-04', 'Ocean', 'Shrestha', NULL, '9843000068', 'a@gmail.com', NULL, NULL, 'A', '2019-08-04', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(70, NULL, 3, '70', '169', '2019-08-05', 'Ashish', 'Rai', NULL, '9843000069', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-05', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(71, NULL, 3, '71', '170', '2019-08-06', 'Subeg', 'Bista', NULL, '9843000070', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-06', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(72, NULL, 3, '72', '171', '2019-08-07', 'Aman', 'Yadhav', NULL, '9843000071', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-07', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(73, NULL, 3, '73', '172', '2019-08-08', 'Alok', 'Kumar', NULL, '9843000072', 'a@gmail.com', NULL, NULL, 'A', '2019-08-08', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(74, NULL, 3, '74', '173', '2019-08-09', 'Diwakar', 'Dulal', NULL, '9843000073', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-09', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(75, NULL, 3, '75', '174', '2019-08-10', 'Rossy', 'Phuysal', NULL, '9843000074', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-10', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(76, NULL, 3, '76', '175', '2019-08-11', 'Meher', 'Maharjan', NULL, '9843000075', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-11', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(77, NULL, 3, '77', '176', '2019-08-12', 'Laxman', 'Giri', NULL, '9843000076', 'a@gmail.com', NULL, NULL, 'A', '2019-08-12', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(78, NULL, 3, '78', '177', '2019-08-13', 'Umesh ', 'Dangol', NULL, '9843000077', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-13', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(79, NULL, 3, '79', '178', '2019-08-14', 'Roshan', 'Siwakoti', NULL, '9843000078', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-14', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(80, NULL, 3, '80', '179', '2019-08-15', 'Ocean', 'Shrestha', NULL, '9843000079', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-15', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(81, NULL, 3, '81', '180', '2019-08-16', 'Ashish', 'Rai', NULL, '9843000080', 'a@gmail.com', NULL, NULL, 'A', '2019-08-16', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(82, NULL, 3, '82', '181', '2019-08-17', 'Subeg', 'Bista', NULL, '9843000081', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-17', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(83, NULL, 3, '83', '182', '2019-08-18', 'Aman', 'Yadhav', NULL, '9843000082', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-18', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(84, NULL, 3, '84', '183', '2019-08-19', 'Alok', 'Kumar', NULL, '9843000083', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-19', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(85, NULL, 3, '85', '184', '2019-08-20', 'Diwakar', 'Dulal', NULL, '9843000084', 'a@gmail.com', NULL, NULL, 'A', '2019-08-20', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(86, NULL, 3, '86', '185', '2019-08-21', 'Rossy', 'Phuysal', NULL, '9843000085', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-21', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(87, NULL, 3, '87', '186', '2019-08-22', 'Meher', 'Maharjan', NULL, '9843000086', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-22', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:17', '2020-01-14 05:50:17'),
(88, NULL, 3, '88', '187', '2019-08-23', 'Laxman', 'Giri', NULL, '9843000087', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-23', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(89, NULL, 3, '89', '188', '2019-08-24', 'Umesh ', 'Dangol', NULL, '9843000088', 'a@gmail.com', NULL, NULL, 'A', '2019-08-24', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(90, NULL, 3, '90', '189', '2019-08-25', 'Roshan', 'Siwakoti', NULL, '9843000089', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-25', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(91, NULL, 3, '91', '190', '2019-08-26', 'Ocean', 'Shrestha', NULL, '9843000090', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-26', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(92, NULL, 3, '92', '191', '2019-08-27', 'Ashish', 'Rai', NULL, '9843000091', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-27', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(93, NULL, 3, '93', '192', '2019-08-28', 'Subeg', 'Bista', NULL, '9843000092', 'a@gmail.com', NULL, NULL, 'A', '2019-08-28', 'Male', NULL, NULL, 'B-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(94, NULL, 3, '94', '193', '2019-08-29', 'Aman', 'Yadhav', NULL, '9843000093', 'b@gmbil.com', NULL, NULL, 'B', '2019-08-29', 'Male', NULL, NULL, 'AB+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(95, NULL, 3, '95', '194', '2019-08-30', 'Alok', 'Kumar', NULL, '9843000094', 'c@gmcil.com', NULL, NULL, 'C', '2019-08-30', 'Male', NULL, NULL, 'AB-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(96, NULL, 3, '96', '195', '2019-08-31', 'Diwakar', 'Dulal', NULL, '9843000095', 'd@gmdil.com', NULL, NULL, 'D', '2019-08-31', 'Male', NULL, NULL, 'O-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(97, NULL, 3, '97', '196', '2019-09-01', 'Rossy', 'Phuysal', NULL, '9843000096', 'a@gmail.com', NULL, NULL, 'A', '2019-09-01', 'Male', NULL, NULL, 'O+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(98, NULL, 3, '98', '197', '2019-09-02', 'Meher', 'Maharjan', NULL, '9843000097', 'b@gmbil.com', NULL, NULL, 'B', '2019-09-02', 'Male', NULL, NULL, 'A+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(99, NULL, 3, '99', '198', '2019-09-03', 'Laxman', 'Giri', NULL, '9843000098', 'c@gmcil.com', NULL, NULL, 'C', '2019-09-03', 'Male', NULL, NULL, 'B+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18'),
(100, NULL, 3, '100', '199', '2019-09-04', 'Umesh ', 'Dangol', NULL, '9843000099', 'd@gmdil.com', NULL, NULL, 'D', '2019-09-04', 'Male', NULL, NULL, 'A-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-14 05:50:18', '2020-01-14 05:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `school_id`, `title`, `code`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', '100', 'Theory', 1, '2020-01-14 05:46:44', '2020-01-14 05:46:44'),
(2, NULL, 'Math', '200', 'Theory', 1, '2020-01-14 05:46:54', '2020-01-14 05:46:54'),
(3, NULL, 'Science', '300', 'Theory', 1, '2020-01-14 05:47:06', '2020-01-14 05:47:06'),
(4, NULL, 'Social Studies', '400', 'Theory', 1, '2020-01-14 05:47:19', '2020-01-14 05:47:19'),
(5, NULL, 'Nepali', '500', 'Theory', 1, '2020-01-14 05:47:40', '2020-01-14 05:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
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
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `school_id`, `name`, `email`, `email_verified_at`, `password`, `username`, `avatar`, `phone`, `type`, `role_super`, `role_id`, `code`, `student_code`, `gender`, `blood_group`, `nationality`, `phone_number`, `address`, `bio`, `section_id`, `forgotten_password_time`, `status`, `deleted_at`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, NULL, NULL, 'Lochan', 'krishnashrestha49@gmail.com', NULL, '$2y$10$WNrJrVBsCYrepEWZyuuYzuQmNJi0YrZZJ7qOI3phnrrX5VGdeGBTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, 1, NULL, '2020-01-14 05:45:41', '2020-01-14 05:45:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_sections_class_id_foreign` (`class_id`),
  ADD KEY `class_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `class_section_subjects`
--
ALTER TABLE `class_section_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
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
-- Indexes for table `school_settings`
--
ALTER TABLE `school_settings`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_section_subjects`
--
ALTER TABLE `class_section_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
