-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 11:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms_new`
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
(2, 'ANNUAL BASIC EDUCATION EXAMINATION', NULL, NULL, 1, '2020-05-11 05:51:15', '2020-05-11 05:51:15');

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

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `session_id`, `school_class_section_subject_id`, `exam_id`, `student_id`, `theory_attendance`, `practical_attendance`, `theory_get_marks`, `theory_grade`, `practical_get_marks`, `practical_grade`, `total_marks`, `final_grade`, `grade_point`, `grade_credit_hour`, `description`, `status`, `created_at`, `updated_at`) VALUES
(49, 2, 25, 2, 59, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(50, 2, 26, 2, 59, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(51, 2, 27, 2, 59, 'Pre', NULL, 54.00, 'C+', NULL, NULL, 54.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(52, 2, 28, 2, 59, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(53, 2, 29, 2, 59, 'Pre', NULL, 55.00, 'B+', NULL, NULL, 55.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(54, 2, 30, 2, 59, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(55, 2, 31, 2, 59, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(56, 2, 32, 2, 59, 'Pre', NULL, 36.00, 'B+', NULL, NULL, 36.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(57, 2, 33, 2, 59, 'Pre', NULL, 29.00, 'C+', NULL, NULL, 29.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-11 06:20:10', '2020-05-12 04:20:21'),
(58, 2, 25, 2, 33, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-10 22:20:50', '2020-05-12 01:20:11'),
(59, 2, 26, 2, 33, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:11'),
(60, 2, 27, 2, 33, 'Pre', NULL, 59.00, 'C+', NULL, NULL, 59.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:11'),
(61, 2, 28, 2, 33, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:11'),
(62, 2, 29, 2, 33, 'Pre', NULL, 64.00, 'A', NULL, NULL, 64.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:11'),
(63, 2, 30, 2, 33, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:11'),
(64, 2, 31, 2, 33, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:12'),
(65, 2, 32, 2, 33, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:12'),
(66, 2, 33, 2, 33, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-10 22:20:51', '2020-05-12 01:20:12'),
(67, 2, 25, 2, 34, 'Pre', NULL, 55.00, 'B+', NULL, NULL, 55.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(68, 2, 26, 2, 34, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(69, 2, 27, 2, 34, 'Pre', NULL, 69.00, 'B', NULL, NULL, 69.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(70, 2, 28, 2, 34, 'Pre', NULL, 49.00, 'B', NULL, NULL, 49.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(71, 2, 29, 2, 34, 'Pre', NULL, 64.00, 'A', NULL, NULL, 64.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(72, 2, 30, 2, 34, 'Pre', NULL, 24.00, 'A', NULL, NULL, 24.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(73, 2, 31, 2, 34, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:21'),
(74, 2, 32, 2, 34, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-10 22:20:36', '2020-05-12 01:20:22'),
(75, 2, 33, 2, 34, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-10 22:20:37', '2020-05-12 01:20:22'),
(76, 2, 25, 2, 35, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(77, 2, 26, 2, 35, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(78, 2, 27, 2, 35, 'Pre', NULL, 43.00, 'C', NULL, NULL, 43.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(79, 2, 28, 2, 35, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(80, 2, 29, 2, 35, 'Pre', NULL, 43.00, 'C+', NULL, NULL, 43.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(81, 2, 30, 2, 35, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(82, 2, 31, 2, 35, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(83, 2, 32, 2, 35, 'Pre', NULL, 44.00, 'A', NULL, NULL, 44.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(84, 2, 33, 2, 35, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-10 23:20:35', '2020-05-12 01:20:21'),
(85, 2, 25, 2, 36, 'Pre', NULL, 43.00, 'C+', NULL, NULL, 43.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:40', NULL),
(86, 2, 26, 2, 36, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:40', NULL),
(87, 2, 27, 2, 36, 'Pre', NULL, 47.00, 'C', NULL, NULL, 47.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:40', NULL),
(88, 2, 28, 2, 36, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:40', NULL),
(89, 2, 29, 2, 36, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:40', NULL),
(90, 2, 30, 2, 36, 'Pre', NULL, 8.00, 'D', NULL, NULL, 8.00, 'D', 1.2, 2.40, 'FAIL', NULL, '2020-05-12 01:20:40', NULL),
(91, 2, 31, 2, 36, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-12 01:20:40', NULL),
(92, 2, 32, 2, 36, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 01:20:40', NULL),
(93, 2, 33, 2, 36, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 01:20:40', NULL),
(94, 2, 25, 2, 37, 'Pre', NULL, 61.00, 'A', NULL, NULL, 61.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(95, 2, 26, 2, 37, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(96, 2, 27, 2, 37, 'Pre', NULL, 61.00, 'B', NULL, NULL, 61.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(97, 2, 28, 2, 37, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(98, 2, 29, 2, 37, 'Pre', NULL, 43.00, 'C+', NULL, NULL, 43.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(99, 2, 30, 2, 37, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(100, 2, 31, 2, 37, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(101, 2, 32, 2, 37, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(102, 2, 33, 2, 37, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:13', NULL),
(103, 2, 25, 2, 38, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(104, 2, 26, 2, 38, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(105, 2, 27, 2, 38, 'Pre', NULL, 57.00, 'C+', NULL, NULL, 57.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(106, 2, 28, 2, 38, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(107, 2, 29, 2, 38, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(108, 2, 30, 2, 38, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(109, 2, 31, 2, 38, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 01:20:21', NULL),
(110, 2, 32, 2, 38, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:22', NULL),
(111, 2, 33, 2, 38, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:22', NULL),
(112, 2, 25, 2, 39, 'Pre', NULL, 55.00, 'B+', NULL, NULL, 55.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(113, 2, 26, 2, 39, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(114, 2, 27, 2, 39, 'Pre', NULL, 33.00, 'D+', NULL, NULL, 33.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(115, 2, 28, 2, 39, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(116, 2, 29, 2, 39, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(117, 2, 30, 2, 39, 'Pre', NULL, 7.00, 'D', NULL, NULL, 7.00, 'D', 1.2, 2.40, 'FAIL', NULL, '2020-05-12 01:20:44', NULL),
(118, 2, 31, 2, 39, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-12 01:20:44', NULL),
(119, 2, 32, 2, 39, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-12 01:20:45', NULL),
(120, 2, 33, 2, 39, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 01:20:45', NULL),
(121, 2, 25, 2, 40, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(122, 2, 26, 2, 40, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(123, 2, 27, 2, 40, 'Pre', NULL, 56.00, 'C+', NULL, NULL, 56.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(124, 2, 28, 2, 40, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(125, 2, 29, 2, 40, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(126, 2, 30, 2, 40, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(127, 2, 31, 2, 40, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(128, 2, 32, 2, 40, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(129, 2, 33, 2, 40, 'Pre', NULL, 37.00, 'B+', NULL, NULL, 37.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 01:20:37', NULL),
(130, 2, 25, 2, 41, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(131, 2, 26, 2, 41, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(132, 2, 27, 2, 41, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(133, 2, 28, 2, 41, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(134, 2, 29, 2, 41, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(135, 2, 30, 2, 41, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(136, 2, 31, 2, 41, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(137, 2, 32, 2, 41, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(138, 2, 33, 2, 41, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:25', NULL),
(139, 2, 25, 2, 42, 'Pre', NULL, 53.00, 'B+', NULL, NULL, 53.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(140, 2, 26, 2, 42, 'Pre', NULL, 58.00, 'B+', NULL, NULL, 58.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(141, 2, 27, 2, 42, 'Pre', NULL, 61.00, 'B', NULL, NULL, 61.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(142, 2, 28, 2, 42, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(143, 2, 29, 2, 42, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(144, 2, 30, 2, 42, 'Pre', NULL, 22.00, 'B+', NULL, NULL, 22.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(145, 2, 31, 2, 42, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(146, 2, 32, 2, 42, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(147, 2, 33, 2, 42, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 01:20:44', NULL),
(148, 2, 25, 2, 43, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 03:20:29', NULL),
(149, 2, 26, 2, 43, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 03:20:29', NULL),
(150, 2, 27, 2, 43, 'Pre', NULL, 47.00, 'C', NULL, NULL, 47.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 03:20:29', NULL),
(151, 2, 28, 2, 43, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 03:20:29', NULL),
(152, 2, 29, 2, 43, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 03:20:29', NULL),
(153, 2, 30, 2, 43, 'Pre', NULL, 7.00, 'D', NULL, NULL, 7.00, 'D', 1.2, 2.40, 'FAIL', NULL, '2020-05-12 03:20:29', NULL),
(154, 2, 31, 2, 43, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-12 03:20:29', NULL),
(155, 2, 32, 2, 43, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 03:20:29', NULL),
(156, 2, 33, 2, 43, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 03:20:29', NULL),
(157, 2, 25, 2, 44, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 03:20:44', NULL),
(158, 2, 26, 2, 44, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(159, 2, 27, 2, 44, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(160, 2, 28, 2, 44, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(161, 2, 29, 2, 44, 'Pre', NULL, 54.00, 'B+', NULL, NULL, 54.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(162, 2, 30, 2, 44, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(163, 2, 31, 2, 44, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(164, 2, 32, 2, 44, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(165, 2, 33, 2, 44, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 03:20:45', NULL),
(166, 2, 25, 2, 45, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(167, 2, 26, 2, 45, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(168, 2, 27, 2, 45, 'Pre', NULL, 72.00, 'B+', NULL, NULL, 72.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(169, 2, 28, 2, 45, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(170, 2, 29, 2, 45, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(171, 2, 30, 2, 45, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(172, 2, 31, 2, 45, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(173, 2, 32, 2, 45, 'Pre', NULL, 18.00, 'D+', NULL, NULL, 18.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(174, 2, 33, 2, 45, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:26', NULL),
(175, 2, 25, 2, 46, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:42', NULL),
(176, 2, 26, 2, 46, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:42', NULL),
(177, 2, 27, 2, 46, 'Pre', NULL, 58.00, 'C+', NULL, NULL, 58.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:42', NULL),
(178, 2, 28, 2, 46, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:42', NULL),
(179, 2, 29, 2, 46, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:42', NULL),
(180, 2, 30, 2, 46, 'Pre', NULL, 5.00, 'E', NULL, NULL, 5.00, 'E', 0.8, 1.60, 'FAIL', NULL, '2020-05-12 04:20:42', NULL),
(181, 2, 31, 2, 46, 'Pre', NULL, 14.00, 'C+', NULL, NULL, 14.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 04:20:42', NULL),
(182, 2, 32, 2, 46, 'Pre', NULL, 18.00, 'D+', NULL, NULL, 18.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 04:20:42', NULL),
(183, 2, 33, 2, 46, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:42', NULL),
(184, 2, 25, 2, 47, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(185, 2, 26, 2, 47, 'Pre', NULL, 41.00, 'C+', NULL, NULL, 41.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(186, 2, 27, 2, 47, 'Pre', NULL, 54.00, 'C+', NULL, NULL, 54.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(187, 2, 28, 2, 47, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(188, 2, 29, 2, 47, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(189, 2, 30, 2, 47, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(190, 2, 31, 2, 47, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(191, 2, 32, 2, 47, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(192, 2, 33, 2, 47, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:41', NULL),
(193, 2, 25, 2, 48, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(194, 2, 26, 2, 48, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(195, 2, 27, 2, 48, 'Pre', NULL, 57.00, 'C+', NULL, NULL, 57.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(196, 2, 28, 2, 48, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(197, 2, 29, 2, 48, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(198, 2, 30, 2, 48, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(199, 2, 31, 2, 48, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(200, 2, 32, 2, 48, 'Pre', NULL, 16.00, 'D+', NULL, NULL, 16.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(201, 2, 33, 2, 48, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(202, 2, 25, 2, 49, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(203, 2, 26, 2, 49, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(204, 2, 27, 2, 49, 'Pre', NULL, 58.00, 'C+', NULL, NULL, 58.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(205, 2, 28, 2, 49, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(206, 2, 29, 2, 49, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(207, 2, 30, 2, 49, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(208, 2, 31, 2, 49, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(209, 2, 32, 2, 49, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(210, 2, 33, 2, 49, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:07', NULL),
(211, 2, 25, 2, 50, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(212, 2, 26, 2, 50, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(213, 2, 27, 2, 50, 'Pre', NULL, 37.00, 'D+', NULL, NULL, 37.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(214, 2, 28, 2, 50, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:34', NULL),
(215, 2, 29, 2, 50, 'Pre', NULL, 47.00, 'B', NULL, NULL, 47.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(216, 2, 30, 2, 50, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(217, 2, 31, 2, 50, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(218, 2, 32, 2, 50, 'Pre', NULL, 40.00, 'A', NULL, NULL, 40.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(219, 2, 33, 2, 50, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(220, 2, 25, 2, 51, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(221, 2, 26, 2, 51, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(222, 2, 27, 2, 51, 'Pre', NULL, 60.00, 'B', NULL, NULL, 60.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(223, 2, 28, 2, 51, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(224, 2, 29, 2, 51, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(225, 2, 30, 2, 51, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(226, 2, 31, 2, 51, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(227, 2, 32, 2, 51, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(228, 2, 33, 2, 51, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(229, 2, 25, 2, 52, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(230, 2, 26, 2, 52, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(231, 2, 27, 2, 52, 'Pre', NULL, 45.00, 'C', NULL, NULL, 45.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:35', NULL),
(232, 2, 28, 2, 52, 'Pre', NULL, 13.00, 'E', NULL, NULL, 13.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(233, 2, 29, 2, 52, 'Pre', NULL, 53.00, 'B+', NULL, NULL, 53.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(234, 2, 30, 2, 52, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(235, 2, 31, 2, 52, 'Pre', NULL, 23.00, 'A+', NULL, NULL, 23.00, 'A+', 4.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(236, 2, 32, 2, 52, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(237, 2, 33, 2, 52, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:35', NULL),
(238, 2, 25, 2, 53, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(239, 2, 26, 2, 53, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(240, 2, 27, 2, 53, 'Pre', NULL, 49.00, 'C', NULL, NULL, 49.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:33', NULL),
(241, 2, 28, 2, 53, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 04:20:33', NULL),
(242, 2, 29, 2, 53, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:33', NULL),
(243, 2, 30, 2, 53, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-12 04:20:33', NULL),
(244, 2, 31, 2, 53, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-12 04:20:33', NULL),
(245, 2, 32, 2, 53, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-12 04:20:34', NULL),
(246, 2, 33, 2, 53, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:34', NULL),
(247, 2, 25, 2, 54, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(248, 2, 26, 2, 54, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(249, 2, 27, 2, 54, 'Pre', NULL, 38.00, 'D+', NULL, NULL, 38.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(250, 2, 28, 2, 54, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(251, 2, 29, 2, 54, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(252, 2, 30, 2, 54, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(253, 2, 31, 2, 54, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(254, 2, 32, 2, 54, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(255, 2, 33, 2, 54, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:54', NULL),
(256, 2, 25, 2, 55, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:14', NULL),
(257, 2, 26, 2, 55, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:14', NULL),
(258, 2, 27, 2, 55, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:15', NULL),
(259, 2, 28, 2, 55, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:15', NULL),
(260, 2, 29, 2, 55, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:15', NULL),
(261, 2, 30, 2, 55, 'Pre', NULL, 4.00, 'E', NULL, NULL, 4.00, 'E', 0.8, 1.60, 'FAIL', NULL, '2020-05-12 04:20:15', NULL),
(262, 2, 31, 2, 55, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-12 04:20:15', NULL),
(263, 2, 32, 2, 55, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:15', NULL),
(264, 2, 33, 2, 55, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:15', NULL),
(265, 2, 25, 2, 56, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(266, 2, 26, 2, 56, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(267, 2, 27, 2, 56, 'Pre', NULL, 42.00, 'C', NULL, NULL, 42.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(268, 2, 28, 2, 56, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(269, 2, 29, 2, 56, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(270, 2, 30, 2, 56, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(271, 2, 31, 2, 56, 'Pre', NULL, 15.00, 'B', NULL, NULL, 15.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(272, 2, 32, 2, 56, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(273, 2, 33, 2, 56, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:53', NULL),
(274, 2, 25, 2, 57, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(275, 2, 26, 2, 57, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(276, 2, 27, 2, 57, 'Pre', NULL, 64.00, 'B', NULL, NULL, 64.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(277, 2, 28, 2, 57, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(278, 2, 29, 2, 57, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(279, 2, 30, 2, 57, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(280, 2, 31, 2, 57, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(281, 2, 32, 2, 57, 'Pre', NULL, 35.00, 'B+', NULL, NULL, 35.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(282, 2, 33, 2, 57, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(283, 2, 25, 2, 58, 'Pre', NULL, 50.00, 'B', NULL, NULL, 50.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:58', NULL),
(284, 2, 26, 2, 58, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:59', NULL),
(285, 2, 27, 2, 58, 'Pre', NULL, 46.00, 'C', NULL, NULL, 46.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:59', NULL),
(286, 2, 28, 2, 58, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(287, 2, 29, 2, 58, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(288, 2, 30, 2, 58, 'Pre', NULL, 8.00, 'D', NULL, NULL, 8.00, 'D', 1.2, 2.40, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(289, 2, 31, 2, 58, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(290, 2, 32, 2, 58, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(291, 2, 33, 2, 58, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:59', NULL),
(292, 2, 25, 2, 60, 'Pre', NULL, 44.00, 'C+', NULL, NULL, 44.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(293, 2, 26, 2, 60, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(294, 2, 27, 2, 60, 'Pre', NULL, 39.00, 'D+', NULL, NULL, 39.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(295, 2, 28, 2, 60, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(296, 2, 29, 2, 60, 'Pre', NULL, 59.00, 'B+', NULL, NULL, 59.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(297, 2, 30, 2, 60, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(298, 2, 31, 2, 60, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(299, 2, 32, 2, 60, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(300, 2, 33, 2, 60, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:08', NULL),
(301, 2, 25, 2, 61, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:29', NULL),
(302, 2, 26, 2, 61, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(303, 2, 27, 2, 61, 'Pre', NULL, 63.00, 'B', NULL, NULL, 63.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:30', NULL),
(304, 2, 28, 2, 61, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(305, 2, 29, 2, 61, 'Pre', NULL, 62.00, 'A', NULL, NULL, 62.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(306, 2, 30, 2, 61, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(307, 2, 31, 2, 61, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(308, 2, 32, 2, 61, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(309, 2, 33, 2, 61, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:30', NULL),
(310, 2, 25, 2, 62, 'Pre', NULL, 47.00, 'B', NULL, NULL, 47.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:36', NULL),
(311, 2, 26, 2, 62, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:36', NULL),
(312, 2, 27, 2, 62, 'Pre', NULL, 50.00, 'C+', NULL, NULL, 50.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:36', NULL),
(313, 2, 28, 2, 62, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(314, 2, 29, 2, 62, 'Pre', NULL, 52.00, 'B', NULL, NULL, 52.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(315, 2, 30, 2, 62, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(316, 2, 31, 2, 62, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(317, 2, 32, 2, 62, 'Pre', NULL, 19.00, 'D+', NULL, NULL, 19.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(318, 2, 33, 2, 62, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:37', NULL),
(319, 2, 25, 2, 63, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:10', NULL),
(320, 2, 26, 2, 63, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:10', NULL),
(321, 2, 27, 2, 63, 'Pre', NULL, 44.00, 'C', NULL, NULL, 44.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:10', NULL),
(322, 2, 28, 2, 63, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(323, 2, 29, 2, 63, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(324, 2, 30, 2, 63, 'Pre', NULL, 9.00, 'D+', NULL, NULL, 9.00, 'D+', 1.6, 3.20, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(325, 2, 31, 2, 63, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(326, 2, 32, 2, 63, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(327, 2, 33, 2, 63, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:11', NULL),
(328, 2, 25, 2, 64, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:56', NULL),
(329, 2, 26, 2, 64, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 04:20:56', NULL),
(330, 2, 27, 2, 64, 'Pre', NULL, 61.00, 'B', NULL, NULL, 61.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:56', NULL),
(331, 2, 28, 2, 64, 'Pre', NULL, 22.00, 'D', NULL, NULL, 22.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 04:20:56', NULL),
(332, 2, 29, 2, 64, 'Pre', NULL, 59.00, 'B+', NULL, NULL, 59.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-12 04:20:56', NULL),
(333, 2, 30, 2, 64, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 04:20:56', NULL),
(334, 2, 31, 2, 64, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:56', NULL),
(335, 2, 32, 2, 64, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 04:20:57', NULL),
(336, 2, 33, 2, 64, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 04:20:57', NULL),
(337, 2, 25, 2, 65, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:03', NULL),
(338, 2, 26, 2, 65, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:03', NULL),
(339, 2, 27, 2, 65, 'Pre', NULL, 46.00, 'C', NULL, NULL, 46.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:03', NULL),
(340, 2, 28, 2, 65, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(341, 2, 29, 2, 65, 'Pre', NULL, 47.00, 'B', NULL, NULL, 47.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(342, 2, 30, 2, 65, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(343, 2, 31, 2, 65, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(344, 2, 32, 2, 65, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(345, 2, 33, 2, 65, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 04:20:04', NULL),
(346, 2, 34, 2, 66, 'Pre', NULL, 15.00, 'D', NULL, NULL, 15.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:49', NULL),
(347, 2, 35, 2, 66, 'Pre', NULL, 19.00, 'D', NULL, NULL, 19.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:49', NULL),
(348, 2, 36, 2, 66, 'Pre', NULL, 5.00, 'E', NULL, NULL, 5.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:49', NULL),
(349, 2, 37, 2, 66, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:49', NULL),
(350, 2, 38, 2, 66, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:49', NULL),
(351, 2, 39, 2, 66, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(352, 2, 40, 2, 66, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(353, 2, 41, 2, 66, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(354, 2, 42, 2, 66, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(355, 2, 34, 2, 67, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(356, 2, 35, 2, 67, 'Pre', NULL, 44.00, 'C+', NULL, NULL, 44.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(357, 2, 36, 2, 67, 'Pre', NULL, 37.00, 'D+', NULL, NULL, 37.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(358, 2, 37, 2, 67, 'Pre', NULL, 50.00, 'B', NULL, NULL, 50.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(359, 2, 38, 2, 67, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(360, 2, 39, 2, 67, 'Pre', NULL, 23.00, 'B+', NULL, NULL, 23.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 23:20:46', '2020-05-12 23:20:15'),
(361, 2, 40, 2, 67, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-12 23:20:47', '2020-05-12 23:20:15'),
(362, 2, 41, 2, 67, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:47', '2020-05-12 23:20:15'),
(363, 2, 42, 2, 67, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:47', '2020-05-12 23:20:15'),
(364, 2, 34, 2, 68, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:38', NULL),
(365, 2, 35, 2, 68, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(366, 2, 36, 2, 68, 'Pre', NULL, 9.00, 'E', NULL, NULL, 9.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(367, 2, 37, 2, 68, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(368, 2, 38, 2, 68, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(369, 2, 39, 2, 68, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(370, 2, 40, 2, 68, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(371, 2, 41, 2, 68, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(372, 2, 42, 2, 68, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:38', NULL),
(373, 2, 34, 2, 69, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:39', NULL),
(374, 2, 35, 2, 69, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(375, 2, 36, 2, 69, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(376, 2, 37, 2, 69, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(377, 2, 38, 2, 69, 'Pre', NULL, 19.00, 'D', NULL, NULL, 19.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(378, 2, 39, 2, 69, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(379, 2, 40, 2, 69, 'Pre', NULL, 10.00, 'C', NULL, NULL, 10.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(380, 2, 41, 2, 69, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(381, 2, 42, 2, 69, 'Pre', NULL, 13.00, 'D', NULL, NULL, 13.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(382, 2, 34, 2, 70, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:39', NULL),
(383, 2, 35, 2, 70, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(384, 2, 36, 2, 70, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(385, 2, 37, 2, 70, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(386, 2, 38, 2, 70, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(387, 2, 39, 2, 70, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(388, 2, 40, 2, 70, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(389, 2, 41, 2, 70, 'Pre', NULL, 29.00, 'C+', NULL, NULL, 29.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(390, 2, 42, 2, 70, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:39', NULL),
(391, 2, 34, 2, 71, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:29', NULL),
(392, 2, 35, 2, 71, 'Pre', NULL, 19.00, 'D', NULL, NULL, 19.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:29', NULL),
(393, 2, 36, 2, 71, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(394, 2, 37, 2, 71, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(395, 2, 38, 2, 71, 'Pre', NULL, 21.00, 'D', NULL, NULL, 21.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(396, 2, 39, 2, 71, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(397, 2, 40, 2, 71, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(398, 2, 41, 2, 71, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(399, 2, 42, 2, 71, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:30', NULL),
(400, 2, 34, 2, 72, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(401, 2, 35, 2, 72, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(402, 2, 36, 2, 72, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(403, 2, 37, 2, 72, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(404, 2, 38, 2, 72, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(405, 2, 39, 2, 72, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(406, 2, 40, 2, 72, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(407, 2, 41, 2, 72, 'Pre', NULL, 29.00, 'C+', NULL, NULL, 29.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(408, 2, 42, 2, 72, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-12 23:20:35', NULL),
(409, 2, 34, 2, 73, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-12 23:20:50', NULL),
(410, 2, 35, 2, 73, 'Pre', NULL, 20.00, 'D', NULL, NULL, 20.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(411, 2, 36, 2, 73, 'Pre', NULL, 17.00, 'E', NULL, NULL, 17.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(412, 2, 37, 2, 73, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(413, 2, 38, 2, 73, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(414, 2, 39, 2, 73, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(415, 2, 40, 2, 73, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-12 23:20:50', NULL),
(416, 2, 41, 2, 73, 'Pre', NULL, 39.00, 'B+', NULL, NULL, 39.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-12 23:20:51', NULL),
(417, 2, 42, 2, 73, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-12 23:20:51', NULL),
(418, 2, 34, 2, 74, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(419, 2, 35, 2, 74, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(420, 2, 36, 2, 74, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(421, 2, 37, 2, 74, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(422, 2, 38, 2, 74, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(423, 2, 39, 2, 74, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(424, 2, 40, 2, 74, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(425, 2, 41, 2, 74, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(426, 2, 42, 2, 74, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:51', NULL),
(427, 2, 34, 2, 75, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:23', NULL),
(428, 2, 35, 2, 75, 'Pre', NULL, 14.00, 'E', NULL, NULL, 14.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:23', NULL),
(429, 2, 36, 2, 75, 'Pre', NULL, 6.00, 'E', NULL, NULL, 6.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:23', NULL),
(430, 2, 37, 2, 75, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:23', NULL),
(431, 2, 38, 2, 75, 'Pre', NULL, 21.00, 'D', NULL, NULL, 21.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:24', NULL),
(432, 2, 39, 2, 75, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:24', NULL),
(433, 2, 40, 2, 75, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 00:20:24', NULL),
(434, 2, 41, 2, 75, 'Pre', NULL, 34.00, 'B', NULL, NULL, 34.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 00:20:24', NULL),
(435, 2, 42, 2, 75, 'Pre', NULL, 13.00, 'D', NULL, NULL, 13.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:24', NULL),
(436, 2, 34, 2, 76, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:07', NULL),
(437, 2, 35, 2, 76, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:07', NULL),
(438, 2, 36, 2, 76, 'Pre', NULL, 9.00, 'E', NULL, NULL, 9.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(439, 2, 37, 2, 76, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(440, 2, 38, 2, 76, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(441, 2, 39, 2, 76, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(442, 2, 40, 2, 76, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(443, 2, 41, 2, 76, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(444, 2, 42, 2, 76, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:07', NULL),
(445, 2, 34, 2, 77, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:46', NULL);
INSERT INTO `exam_results` (`id`, `session_id`, `school_class_section_subject_id`, `exam_id`, `student_id`, `theory_attendance`, `practical_attendance`, `theory_get_marks`, `theory_grade`, `practical_get_marks`, `practical_grade`, `total_marks`, `final_grade`, `grade_point`, `grade_credit_hour`, `description`, `status`, `created_at`, `updated_at`) VALUES
(446, 2, 35, 2, 77, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:46', NULL),
(447, 2, 36, 2, 77, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(448, 2, 37, 2, 77, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(449, 2, 38, 2, 77, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(450, 2, 39, 2, 77, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(451, 2, 40, 2, 77, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(452, 2, 41, 2, 77, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(453, 2, 42, 2, 77, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:47', NULL),
(454, 2, 34, 2, 78, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(455, 2, 35, 2, 78, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(456, 2, 36, 2, 78, 'Pre', NULL, 3.00, 'E', NULL, NULL, 3.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(457, 2, 37, 2, 78, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(458, 2, 38, 2, 78, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(459, 2, 39, 2, 78, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(460, 2, 40, 2, 78, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(461, 2, 41, 2, 78, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(462, 2, 42, 2, 78, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:40', NULL),
(463, 2, 34, 2, 79, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:36', NULL),
(464, 2, 35, 2, 79, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:36', NULL),
(465, 2, 36, 2, 79, 'Pre', NULL, 39.00, 'D+', NULL, NULL, 39.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:36', NULL),
(466, 2, 37, 2, 79, 'Pre', NULL, 43.00, 'C+', NULL, NULL, 43.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(467, 2, 38, 2, 79, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(468, 2, 39, 2, 79, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(469, 2, 40, 2, 79, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(470, 2, 41, 2, 79, 'Pre', NULL, 45.00, 'A+', NULL, NULL, 45.00, 'A+', 4.0, 16.00, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(471, 2, 42, 2, 79, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:37', NULL),
(472, 2, 34, 2, 80, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:30', NULL),
(473, 2, 35, 2, 80, 'Pre', NULL, 20.00, 'D', NULL, NULL, 20.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(474, 2, 36, 2, 80, 'Pre', NULL, 15.00, 'E', NULL, NULL, 15.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(475, 2, 37, 2, 80, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(476, 2, 38, 2, 80, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(477, 2, 39, 2, 80, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(478, 2, 40, 2, 80, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(479, 2, 41, 2, 80, 'Pre', NULL, 41.00, 'A', NULL, NULL, 41.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-13 00:20:30', NULL),
(480, 2, 42, 2, 80, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(481, 2, 34, 2, 81, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:26', NULL),
(482, 2, 35, 2, 81, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(483, 2, 36, 2, 81, 'Pre', NULL, 8.00, 'E', NULL, NULL, 8.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(484, 2, 37, 2, 81, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(485, 2, 38, 2, 81, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(486, 2, 39, 2, 81, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(487, 2, 40, 2, 81, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(488, 2, 41, 2, 81, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(489, 2, 42, 2, 81, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:26', NULL),
(490, 2, 34, 2, 82, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(491, 2, 35, 2, 82, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(492, 2, 36, 2, 82, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(493, 2, 37, 2, 82, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(494, 2, 38, 2, 82, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(495, 2, 39, 2, 82, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(496, 2, 40, 2, 82, 'Pre', NULL, 14.00, 'C+', NULL, NULL, 14.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(497, 2, 41, 2, 82, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(498, 2, 42, 2, 82, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:17', NULL),
(499, 2, 34, 2, 83, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 00:20:41', NULL),
(500, 2, 35, 2, 83, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(501, 2, 36, 2, 83, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(502, 2, 37, 2, 83, 'Pre', NULL, 41.00, 'C+', NULL, NULL, 41.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(503, 2, 38, 2, 83, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(504, 2, 39, 2, 83, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(505, 2, 40, 2, 83, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(506, 2, 41, 2, 83, 'Pre', NULL, 35.00, 'B+', NULL, NULL, 35.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(507, 2, 42, 2, 83, 'Pre', NULL, 10.00, 'D', NULL, NULL, 10.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:41', NULL),
(508, 2, 34, 2, 84, 'Pre', NULL, 14.00, 'E', NULL, NULL, 14.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(509, 2, 35, 2, 84, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(510, 2, 36, 2, 84, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(511, 2, 37, 2, 84, 'Pre', NULL, 41.00, 'C+', NULL, NULL, 41.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(512, 2, 38, 2, 84, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(513, 2, 39, 2, 84, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(514, 2, 40, 2, 84, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(515, 2, 41, 2, 84, 'Pre', NULL, 40.00, 'A', NULL, NULL, 40.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(516, 2, 42, 2, 84, 'Pre', NULL, 18.00, 'D+', NULL, NULL, 18.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:31', NULL),
(517, 2, 34, 2, 85, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:15', NULL),
(518, 2, 35, 2, 85, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:15', NULL),
(519, 2, 36, 2, 85, 'Pre', NULL, 13.00, 'E', NULL, NULL, 13.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:15', NULL),
(520, 2, 37, 2, 85, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(521, 2, 38, 2, 85, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(522, 2, 39, 2, 85, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(523, 2, 40, 2, 85, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(524, 2, 41, 2, 85, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(525, 2, 42, 2, 85, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:16', NULL),
(526, 2, 34, 2, 86, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(527, 2, 35, 2, 86, 'Pre', NULL, 15.00, 'D', NULL, NULL, 15.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(528, 2, 36, 2, 86, 'Pre', NULL, 7.00, 'E', NULL, NULL, 7.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(529, 2, 37, 2, 86, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(530, 2, 38, 2, 86, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(531, 2, 39, 2, 86, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(532, 2, 40, 2, 86, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(533, 2, 41, 2, 86, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(534, 2, 42, 2, 86, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:08', NULL),
(535, 2, 34, 2, 87, 'Pre', NULL, 16.00, 'D', NULL, NULL, 16.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(536, 2, 35, 2, 87, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(537, 2, 36, 2, 87, 'Pre', NULL, 8.00, 'E', NULL, NULL, 8.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(538, 2, 37, 2, 87, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(539, 2, 38, 2, 87, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(540, 2, 39, 2, 87, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(541, 2, 40, 2, 87, 'Pre', NULL, 17.00, 'B', NULL, NULL, 17.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(542, 2, 41, 2, 87, 'Pre', NULL, 29.00, 'C+', NULL, NULL, 29.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(543, 2, 42, 2, 87, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:09', '2020-05-13 00:20:05'),
(544, 2, 34, 2, 88, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(545, 2, 35, 2, 88, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(546, 2, 36, 2, 88, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(547, 2, 37, 2, 88, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(548, 2, 38, 2, 88, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(549, 2, 39, 2, 88, 'Pre', NULL, 24.00, 'A', NULL, NULL, 24.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(550, 2, 40, 2, 88, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(551, 2, 41, 2, 88, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(552, 2, 42, 2, 88, 'Pre', NULL, 12.00, 'D', NULL, NULL, 12.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(553, 2, 34, 2, 89, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(554, 2, 35, 2, 89, 'Pre', NULL, 54.00, 'B+', NULL, NULL, 54.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(555, 2, 36, 2, 89, 'Pre', NULL, 35.00, 'D+', NULL, NULL, 35.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(556, 2, 37, 2, 89, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(557, 2, 38, 2, 89, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(558, 2, 39, 2, 89, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(559, 2, 40, 2, 89, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(560, 2, 41, 2, 89, 'Pre', NULL, 42.00, 'A', NULL, NULL, 42.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(561, 2, 42, 2, 89, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:50', NULL),
(562, 2, 34, 2, 90, 'Pre', NULL, 36.00, 'C', NULL, NULL, 36.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(563, 2, 35, 2, 90, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(564, 2, 36, 2, 90, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(565, 2, 37, 2, 90, 'Pre', NULL, 49.00, 'B', NULL, NULL, 49.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 00:20:39', NULL),
(566, 2, 38, 2, 90, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(567, 2, 39, 2, 90, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(568, 2, 40, 2, 90, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(569, 2, 41, 2, 90, 'Pre', NULL, 42.00, 'A', NULL, NULL, 42.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(570, 2, 42, 2, 90, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:39', NULL),
(571, 2, 34, 2, 91, 'Pre', NULL, 14.00, 'E', NULL, NULL, 14.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:27', '2020-05-13 00:20:55'),
(572, 2, 35, 2, 91, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:27', '2020-05-13 00:20:55'),
(573, 2, 36, 2, 91, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:27', '2020-05-13 00:20:56'),
(574, 2, 37, 2, 91, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:27', '2020-05-13 00:20:56'),
(575, 2, 38, 2, 91, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 00:20:27', NULL),
(576, 2, 39, 2, 91, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:27', NULL),
(577, 2, 40, 2, 91, 'Pre', NULL, 9.00, 'D+', NULL, NULL, 9.00, 'D+', 1.6, 3.20, 'FAIL', NULL, '2020-05-13 00:20:27', NULL),
(578, 2, 41, 2, 91, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:27', NULL),
(579, 2, 42, 2, 91, 'Pre', NULL, 16.00, 'D+', NULL, NULL, 16.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:27', NULL),
(580, 2, 34, 2, 92, 'Pre', NULL, 16.00, 'D', NULL, NULL, 16.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(581, 2, 35, 2, 92, 'Pre', NULL, 12.00, 'E', NULL, NULL, 12.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(582, 2, 36, 2, 92, 'Pre', NULL, 15.00, 'E', NULL, NULL, 15.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(583, 2, 37, 2, 92, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(584, 2, 38, 2, 92, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(585, 2, 39, 2, 92, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(586, 2, 40, 2, 92, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 00:20:34', NULL),
(587, 2, 41, 2, 92, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 00:20:35', NULL),
(588, 2, 42, 2, 92, 'Pre', NULL, 12.00, 'D', NULL, NULL, 12.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 00:20:35', NULL),
(589, 2, 34, 2, 93, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:04', NULL),
(590, 2, 35, 2, 93, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(591, 2, 36, 2, 93, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(592, 2, 37, 2, 93, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(593, 2, 38, 2, 93, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(594, 2, 39, 2, 93, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(595, 2, 40, 2, 93, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(596, 2, 41, 2, 93, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(597, 2, 42, 2, 93, 'Pre', NULL, 16.00, 'D+', NULL, NULL, 16.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:04', NULL),
(598, 2, 34, 2, 94, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:42', '2020-05-13 01:20:51'),
(599, 2, 35, 2, 94, 'Pre', NULL, 20.00, 'D', NULL, NULL, 20.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:42', '2020-05-13 01:20:51'),
(600, 2, 36, 2, 94, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:42', '2020-05-13 01:20:51'),
(601, 2, 37, 2, 94, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:42', '2020-05-13 01:20:51'),
(602, 2, 38, 2, 94, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:42', NULL),
(603, 2, 39, 2, 94, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:42', NULL),
(604, 2, 40, 2, 94, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:42', NULL),
(605, 2, 41, 2, 94, 'Pre', NULL, 38.00, 'B+', NULL, NULL, 38.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 01:20:42', NULL),
(606, 2, 42, 2, 94, 'Pre', NULL, 18.00, 'D+', NULL, NULL, 18.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:42', NULL),
(607, 2, 34, 2, 95, 'Pre', NULL, 26.00, 'D+', NULL, NULL, 26.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:55', NULL),
(608, 2, 35, 2, 95, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:55', NULL),
(609, 2, 36, 2, 95, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(610, 2, 37, 2, 95, 'Pre', NULL, 43.00, 'C+', NULL, NULL, 43.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(611, 2, 38, 2, 95, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(612, 2, 39, 2, 95, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(613, 2, 40, 2, 95, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(614, 2, 41, 2, 95, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(615, 2, 42, 2, 95, 'Pre', NULL, 14.00, 'D', NULL, NULL, 14.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:55', NULL),
(616, 2, 34, 2, 96, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(617, 2, 35, 2, 96, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(618, 2, 36, 2, 96, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(619, 2, 37, 2, 96, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(620, 2, 38, 2, 96, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(621, 2, 39, 2, 96, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(622, 2, 40, 2, 96, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(623, 2, 41, 2, 96, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(624, 2, 42, 2, 96, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:54', NULL),
(625, 2, 34, 2, 97, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(626, 2, 35, 2, 97, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(627, 2, 36, 2, 97, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(628, 2, 37, 2, 97, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(629, 2, 38, 2, 97, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(630, 2, 39, 2, 97, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(631, 2, 40, 2, 97, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(632, 2, 41, 2, 97, 'Pre', NULL, 36.00, 'B+', NULL, NULL, 36.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(633, 2, 42, 2, 97, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:11', NULL),
(634, 2, 34, 2, 98, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:22', NULL),
(635, 2, 35, 2, 98, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(636, 2, 36, 2, 98, 'Pre', NULL, 13.00, 'E', NULL, NULL, 13.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(637, 2, 37, 2, 98, 'Pre', NULL, 39.00, 'C+', NULL, NULL, 39.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(638, 2, 38, 2, 98, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(639, 2, 39, 2, 98, 'Pre', NULL, 21.00, 'B+', NULL, NULL, 21.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(640, 2, 40, 2, 98, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(641, 2, 41, 2, 98, 'Pre', NULL, 39.00, 'B+', NULL, NULL, 39.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(642, 2, 42, 2, 98, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:22', NULL),
(643, 2, 34, 2, 99, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(644, 2, 35, 2, 99, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(645, 2, 36, 2, 99, 'Pre', NULL, 17.00, 'E', NULL, NULL, 17.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(646, 2, 37, 2, 99, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(647, 2, 38, 2, 99, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(648, 2, 39, 2, 99, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(649, 2, 40, 2, 99, 'Pre', NULL, 8.00, 'D+', NULL, NULL, 8.00, 'D+', 1.6, 3.20, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(650, 2, 41, 2, 99, 'Pre', NULL, 36.00, 'B+', NULL, NULL, 36.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(651, 2, 42, 2, 99, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(652, 2, 34, 2, 100, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:28', NULL),
(653, 2, 35, 2, 100, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(654, 2, 36, 2, 100, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(655, 2, 37, 2, 100, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(656, 2, 38, 2, 100, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(657, 2, 39, 2, 100, 'Pre', NULL, 22.00, 'B+', NULL, NULL, 22.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(658, 2, 40, 2, 100, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(659, 2, 41, 2, 100, 'Pre', NULL, 34.00, 'B', NULL, NULL, 34.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(660, 2, 42, 2, 100, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(661, 2, 34, 2, 102, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:15', NULL),
(662, 2, 35, 2, 102, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:15', NULL),
(663, 2, 36, 2, 102, 'Pre', NULL, 13.00, 'E', NULL, NULL, 13.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:15', NULL),
(664, 2, 37, 2, 102, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(665, 2, 38, 2, 102, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(666, 2, 39, 2, 102, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(667, 2, 40, 2, 102, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(668, 2, 41, 2, 102, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(669, 2, 42, 2, 102, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:16', NULL),
(670, 2, 34, 2, 101, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:46', NULL),
(671, 2, 35, 2, 101, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:46', NULL),
(672, 2, 36, 2, 101, 'Pre', NULL, 10.00, 'E', NULL, NULL, 10.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(673, 2, 37, 2, 101, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(674, 2, 38, 2, 101, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(675, 2, 39, 2, 101, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(676, 2, 40, 2, 101, 'Pre', NULL, 14.00, 'C+', NULL, NULL, 14.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(677, 2, 41, 2, 101, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(678, 2, 42, 2, 101, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:46', NULL),
(679, 2, 34, 2, 103, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(680, 2, 35, 2, 103, 'Pre', NULL, 16.00, 'D', NULL, NULL, 16.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(681, 2, 36, 2, 103, 'Pre', NULL, 7.00, 'E', NULL, NULL, 7.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(682, 2, 37, 2, 103, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(683, 2, 38, 2, 103, 'Pre', NULL, 26.00, 'D+', NULL, NULL, 26.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(684, 2, 39, 2, 103, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(685, 2, 40, 2, 103, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(686, 2, 41, 2, 103, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(687, 2, 42, 2, 103, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:43', NULL),
(688, 2, 43, 2, 104, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(689, 2, 44, 2, 104, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(690, 2, 45, 2, 104, 'Pre', NULL, 32.00, 'D+', NULL, NULL, 32.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(691, 2, 46, 2, 104, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(692, 2, 47, 2, 104, 'Pre', NULL, 55.00, 'B+', NULL, NULL, 55.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(693, 2, 48, 2, 104, 'Pre', NULL, 18.00, 'B', NULL, NULL, 18.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(694, 2, 49, 2, 104, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(695, 2, 50, 2, 104, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(696, 2, 51, 2, 104, 'Pre', NULL, 21.00, 'C', NULL, NULL, 21.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:43', NULL),
(697, 2, 43, 2, 105, 'Pre', NULL, 50.00, 'B', NULL, NULL, 50.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(698, 2, 44, 2, 105, 'Pre', NULL, 44.00, 'C+', NULL, NULL, 44.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(699, 2, 45, 2, 105, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(700, 2, 46, 2, 105, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(701, 2, 47, 2, 105, 'Pre', NULL, 52.00, 'B', NULL, NULL, 52.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:25', NULL),
(702, 2, 48, 2, 105, 'Pre', NULL, 5.00, 'E', NULL, NULL, 5.00, 'E', 0.8, 1.60, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(703, 2, 49, 2, 105, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(704, 2, 50, 2, 105, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(705, 2, 51, 2, 105, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:25', NULL),
(706, 2, 43, 2, 106, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:08', NULL),
(707, 2, 44, 2, 106, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:08', NULL),
(708, 2, 45, 2, 106, 'Pre', NULL, 7.00, 'E', NULL, NULL, 7.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(709, 2, 46, 2, 106, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(710, 2, 47, 2, 106, 'Pre', NULL, 66.00, 'A', NULL, NULL, 66.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(711, 2, 48, 2, 106, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(712, 2, 49, 2, 106, 'Pre', NULL, 15.00, 'B', NULL, NULL, 15.00, 'B', 2.8, 5.60, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(713, 2, 50, 2, 106, 'Pre', NULL, 34.00, 'B', NULL, NULL, 34.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(714, 2, 51, 2, 106, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:08', NULL),
(715, 2, 43, 2, 107, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(716, 2, 44, 2, 107, 'Pre', NULL, 26.00, 'D+', NULL, NULL, 26.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(717, 2, 45, 2, 107, 'Pre', NULL, 33.00, 'D+', NULL, NULL, 33.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(718, 2, 46, 2, 107, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(719, 2, 47, 2, 107, 'Pre', NULL, 58.00, 'B+', NULL, NULL, 58.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(720, 2, 48, 2, 107, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(721, 2, 49, 2, 107, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(722, 2, 50, 2, 107, 'Pre', NULL, 36.00, 'B+', NULL, NULL, 36.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(723, 2, 51, 2, 107, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:53', NULL),
(724, 2, 43, 2, 108, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(725, 2, 44, 2, 108, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(726, 2, 45, 2, 108, 'Pre', NULL, 33.00, 'D+', NULL, NULL, 33.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(727, 2, 46, 2, 108, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(728, 2, 47, 2, 108, 'Pre', NULL, 52.00, 'B', NULL, NULL, 52.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(729, 2, 48, 2, 108, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(730, 2, 49, 2, 108, 'Pre', NULL, 8.00, 'D+', NULL, NULL, 8.00, 'D+', 1.6, 3.20, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(731, 2, 50, 2, 108, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(732, 2, 51, 2, 108, 'Pre', NULL, 35.00, 'B+', NULL, NULL, 35.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(733, 2, 43, 2, 109, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(734, 2, 44, 2, 109, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:19', NULL),
(735, 2, 45, 2, 109, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:19', NULL),
(736, 2, 46, 2, 109, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:19', NULL),
(737, 2, 47, 2, 109, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 01:20:19', NULL),
(738, 2, 48, 2, 109, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:20', NULL),
(739, 2, 49, 2, 109, 'Pre', NULL, 14.00, 'C+', NULL, NULL, 14.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:20', NULL),
(740, 2, 50, 2, 109, 'Pre', NULL, 25.00, 'C+', NULL, NULL, 25.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:20', NULL),
(741, 2, 51, 2, 109, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:20', NULL),
(742, 2, 43, 2, 110, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:01', NULL),
(743, 2, 44, 2, 110, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:01', NULL),
(744, 2, 45, 2, 110, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:01', NULL),
(745, 2, 46, 2, 110, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:01', NULL),
(746, 2, 47, 2, 110, 'Pre', NULL, 70.00, 'A+', NULL, NULL, 70.00, 'A+', 4.0, 16.00, 'PASS', NULL, '2020-05-13 01:20:01', NULL),
(747, 2, 48, 2, 110, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-13 01:20:02', NULL),
(748, 2, 49, 2, 110, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:02', NULL),
(749, 2, 50, 2, 110, 'Pre', NULL, 31.00, 'B', NULL, NULL, 31.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:02', NULL),
(750, 2, 51, 2, 110, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:02', NULL),
(751, 2, 43, 2, 111, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(752, 2, 44, 2, 111, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(753, 2, 45, 2, 111, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(754, 2, 46, 2, 111, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(755, 2, 47, 2, 111, 'Pre', NULL, 47.00, 'B', NULL, NULL, 47.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(756, 2, 48, 2, 111, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(757, 2, 49, 2, 111, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(758, 2, 50, 2, 111, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(759, 2, 51, 2, 111, 'Pre', NULL, 33.00, 'B', NULL, NULL, 33.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(760, 2, 43, 2, 112, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:28', NULL),
(761, 2, 44, 2, 112, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:28', NULL),
(762, 2, 45, 2, 112, 'Pre', NULL, 37.00, 'D+', NULL, NULL, 37.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:28', NULL),
(763, 2, 46, 2, 112, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(764, 2, 47, 2, 112, 'Pre', NULL, 44.00, 'C+', NULL, NULL, 44.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(765, 2, 48, 2, 112, 'Pre', NULL, 17.00, 'C+', NULL, NULL, 17.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(766, 2, 49, 2, 112, 'Pre', NULL, 14.00, 'C+', NULL, NULL, 14.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(767, 2, 50, 2, 112, 'Pre', NULL, 33.00, 'B', NULL, NULL, 33.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:28', NULL),
(768, 2, 51, 2, 112, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:29', NULL),
(769, 2, 43, 2, 113, 'Pre', NULL, 27.00, 'D+', NULL, NULL, 27.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(770, 2, 44, 2, 113, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(771, 2, 45, 2, 113, 'Pre', NULL, 55.00, 'C+', NULL, NULL, 55.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(772, 2, 46, 2, 113, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(773, 2, 47, 2, 113, 'Pre', NULL, 50.00, 'B', NULL, NULL, 50.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(774, 2, 48, 2, 113, 'Pre', NULL, 16.00, 'C+', NULL, NULL, 16.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(775, 2, 49, 2, 113, 'Pre', NULL, 19.00, 'B+', NULL, NULL, 19.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(776, 2, 50, 2, 113, 'Pre', NULL, 42.00, 'A', NULL, NULL, 42.00, 'A', 3.6, 14.40, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(777, 2, 51, 2, 113, 'Pre', NULL, 38.00, 'B+', NULL, NULL, 38.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:19', NULL),
(778, 2, 43, 2, 114, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:59', NULL),
(779, 2, 44, 2, 114, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:59', NULL),
(780, 2, 45, 2, 114, 'Pre', NULL, 37.00, 'D+', NULL, NULL, 37.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:59', NULL),
(781, 2, 46, 2, 114, 'Pre', NULL, 15.00, 'D', NULL, NULL, 15.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(782, 2, 47, 2, 114, 'Pre', NULL, 52.00, 'B', NULL, NULL, 52.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(783, 2, 48, 2, 114, 'Pre', NULL, 8.00, 'D', NULL, NULL, 8.00, 'D', 1.2, 2.40, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(784, 2, 49, 2, 114, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(785, 2, 50, 2, 114, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(786, 2, 51, 2, 114, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:59', NULL),
(787, 2, 43, 2, 115, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:45', NULL),
(788, 2, 44, 2, 115, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:45', NULL),
(789, 2, 45, 2, 115, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:45', NULL),
(790, 2, 46, 2, 115, 'Pre', NULL, 11.00, 'E', NULL, NULL, 11.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(791, 2, 47, 2, 115, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(792, 2, 48, 2, 115, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(793, 2, 49, 2, 115, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(794, 2, 50, 2, 115, 'Pre', NULL, 40.00, 'A', NULL, NULL, 40.00, 'A', 3.6, 14.40, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(795, 2, 51, 2, 115, 'Pre', NULL, 23.00, 'C', NULL, NULL, 23.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:45', NULL),
(796, 2, 43, 2, 116, 'Pre', NULL, 32.00, 'C', NULL, NULL, 32.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(797, 2, 44, 2, 116, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(798, 2, 45, 2, 116, 'Pre', NULL, 44.00, 'C', NULL, NULL, 44.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(799, 2, 46, 2, 116, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(800, 2, 47, 2, 116, 'Pre', NULL, 41.00, 'C+', NULL, NULL, 41.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(801, 2, 48, 2, 116, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(802, 2, 49, 2, 116, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(803, 2, 50, 2, 116, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(804, 2, 51, 2, 116, 'Pre', NULL, 29.00, 'C+', NULL, NULL, 29.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 01:20:32', NULL),
(805, 2, 43, 2, 117, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:26', NULL),
(806, 2, 44, 2, 117, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:26', NULL),
(807, 2, 45, 2, 117, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:26', NULL),
(808, 2, 46, 2, 117, 'Pre', NULL, 8.00, 'E', NULL, NULL, 8.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(809, 2, 47, 2, 117, 'Pre', NULL, 37.00, 'C', NULL, NULL, 37.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(810, 2, 48, 2, 117, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(811, 2, 49, 2, 117, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(812, 2, 50, 2, 117, 'Pre', NULL, 30.00, 'B', NULL, NULL, 30.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(813, 2, 51, 2, 117, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:26', NULL),
(814, 2, 43, 2, 118, 'Pre', NULL, 8.00, 'E', NULL, NULL, 8.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(815, 2, 44, 2, 118, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(816, 2, 45, 2, 118, 'Pre', NULL, 41.00, 'C', NULL, NULL, 41.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(817, 2, 46, 2, 118, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(818, 2, 47, 2, 118, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(819, 2, 48, 2, 118, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(820, 2, 49, 2, 118, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(821, 2, 50, 2, 118, 'Pre', NULL, 32.00, 'B', NULL, NULL, 32.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(822, 2, 51, 2, 118, 'Pre', NULL, 33.00, 'B', NULL, NULL, 33.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:09', NULL),
(823, 2, 43, 2, 119, 'Pre', NULL, 16.00, 'D', NULL, NULL, 16.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(824, 2, 44, 2, 119, 'Pre', NULL, 21.00, 'D', NULL, NULL, 21.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(825, 2, 45, 2, 119, 'Pre', NULL, 40.00, 'C', NULL, NULL, 40.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(826, 2, 46, 2, 119, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(827, 2, 47, 2, 119, 'Pre', NULL, 58.00, 'B+', NULL, NULL, 58.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(828, 2, 48, 2, 119, 'Pre', NULL, 15.00, 'C+', NULL, NULL, 15.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(829, 2, 49, 2, 119, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(830, 2, 50, 2, 119, 'Pre', NULL, 33.00, 'B', NULL, NULL, 33.00, 'B', 2.8, 11.20, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(831, 2, 51, 2, 119, 'Pre', NULL, 19.00, 'D+', NULL, NULL, 19.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 01:20:54', NULL),
(832, 2, 43, 2, 120, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(833, 2, 44, 2, 120, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(834, 2, 45, 2, 120, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(835, 2, 46, 2, 120, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(836, 2, 47, 2, 120, 'Pre', NULL, 57.00, 'B+', NULL, NULL, 57.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(837, 2, 48, 2, 120, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:40', NULL),
(838, 2, 49, 2, 120, 'Pre', NULL, 16.00, 'B', NULL, NULL, 16.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 01:20:41', NULL),
(839, 2, 50, 2, 120, 'Pre', NULL, 31.00, 'B', NULL, NULL, 31.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 01:20:41', NULL),
(840, 2, 51, 2, 120, 'Pre', NULL, 24.00, 'C', NULL, NULL, 24.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 01:20:41', NULL),
(841, 2, 52, 2, 121, 'Pre', NULL, 46.00, 'B', NULL, NULL, 46.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(842, 2, 53, 2, 121, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(843, 2, 54, 2, 121, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(844, 2, 55, 2, 121, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:08', NULL);
INSERT INTO `exam_results` (`id`, `session_id`, `school_class_section_subject_id`, `exam_id`, `student_id`, `theory_attendance`, `practical_attendance`, `theory_get_marks`, `theory_grade`, `practical_get_marks`, `practical_grade`, `total_marks`, `final_grade`, `grade_point`, `grade_credit_hour`, `description`, `status`, `created_at`, `updated_at`) VALUES
(845, 2, 56, 2, 121, 'Pre', NULL, 22.00, 'D', NULL, NULL, 22.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(846, 2, 57, 2, 121, 'Pre', NULL, 24.00, 'A', NULL, NULL, 24.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(847, 2, 58, 2, 121, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(848, 2, 59, 2, 121, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(849, 2, 60, 2, 121, 'Pre', NULL, 16.00, 'D+', NULL, NULL, 16.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(850, 2, 52, 2, 122, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(851, 2, 53, 2, 122, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(852, 2, 54, 2, 122, 'Pre', NULL, 30.00, 'D+', NULL, NULL, 30.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(853, 2, 55, 2, 122, 'Pre', NULL, 28.00, 'D+', NULL, NULL, 28.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(854, 2, 56, 2, 122, 'Pre', NULL, 26.00, 'D+', NULL, NULL, 26.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(855, 2, 57, 2, 122, 'Pre', NULL, 23.00, 'B+', NULL, NULL, 23.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(856, 2, 58, 2, 122, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(857, 2, 59, 2, 122, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(858, 2, 60, 2, 122, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:57', NULL),
(859, 2, 52, 2, 123, 'Pre', NULL, 50.00, 'B', NULL, NULL, 50.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(860, 2, 53, 2, 123, 'Pre', NULL, 49.00, 'B', NULL, NULL, 49.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(861, 2, 54, 2, 123, 'Pre', NULL, 57.00, 'C+', NULL, NULL, 57.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(862, 2, 55, 2, 123, 'Pre', NULL, 45.00, 'B', NULL, NULL, 45.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(863, 2, 56, 2, 123, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(864, 2, 57, 2, 123, 'Pre', NULL, 24.00, 'A', NULL, NULL, 24.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(865, 2, 58, 2, 123, 'Pre', NULL, 24.00, 'A+', NULL, NULL, 24.00, 'A+', 4.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(866, 2, 59, 2, 123, 'Pre', NULL, 27.00, 'C+', NULL, NULL, 27.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(867, 2, 60, 2, 123, 'Pre', NULL, 22.00, 'C', NULL, NULL, 22.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:59', NULL),
(868, 2, 52, 2, 124, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:02', NULL),
(869, 2, 53, 2, 124, 'Pre', NULL, 16.00, 'D', NULL, NULL, 16.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:02', NULL),
(870, 2, 54, 2, 124, 'Pre', NULL, 31.00, 'D+', NULL, NULL, 31.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:02', NULL),
(871, 2, 55, 2, 124, 'Pre', NULL, 18.00, 'D', NULL, NULL, 18.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:02', NULL),
(872, 2, 56, 2, 124, 'Pre', NULL, 6.00, 'E', NULL, NULL, 6.00, 'E', 0.8, 3.20, 'FAIL', NULL, '2020-05-13 02:20:02', NULL),
(873, 2, 57, 2, 124, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 02:20:03', NULL),
(874, 2, 58, 2, 124, 'Pre', NULL, 3.00, 'E', NULL, NULL, 3.00, 'E', 0.8, 1.60, 'FAIL', NULL, '2020-05-13 02:20:03', NULL),
(875, 2, 59, 2, 124, 'Pre', NULL, 12.00, 'D', NULL, NULL, 12.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:03', NULL),
(876, 2, 60, 2, 124, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:03', NULL),
(877, 2, 52, 2, 125, 'Pre', NULL, 42.00, 'C+', NULL, NULL, 42.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(878, 2, 53, 2, 125, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(879, 2, 54, 2, 125, 'Pre', NULL, 32.00, 'D+', NULL, NULL, 32.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(880, 2, 55, 2, 125, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(881, 2, 56, 2, 125, 'Pre', NULL, 25.00, 'D+', NULL, NULL, 25.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(882, 2, 57, 2, 125, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(883, 2, 58, 2, 125, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(884, 2, 59, 2, 125, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(885, 2, 60, 2, 125, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(886, 2, 52, 2, 126, 'Pre', NULL, 41.00, 'C+', NULL, NULL, 41.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(887, 2, 53, 2, 126, 'Pre', NULL, 48.00, 'B', NULL, NULL, 48.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(888, 2, 54, 2, 126, 'Pre', NULL, 34.00, 'D+', NULL, NULL, 34.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(889, 2, 55, 2, 126, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(890, 2, 56, 2, 126, 'Pre', NULL, 40.00, 'C+', NULL, NULL, 40.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(891, 2, 57, 2, 126, 'Pre', NULL, 19.00, 'B', NULL, NULL, 19.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(892, 2, 58, 2, 126, 'Pre', NULL, 21.00, 'A', NULL, NULL, 21.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(893, 2, 59, 2, 126, 'Pre', NULL, 19.00, 'D+', NULL, NULL, 19.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(894, 2, 60, 2, 126, 'Pre', NULL, 26.00, 'C+', NULL, NULL, 26.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:25', NULL),
(895, 2, 52, 2, 127, 'Pre', NULL, 24.00, 'D+', NULL, NULL, 24.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(896, 2, 53, 2, 127, 'Pre', NULL, 26.00, 'D+', NULL, NULL, 26.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(897, 2, 54, 2, 127, 'Pre', NULL, 44.00, 'C', NULL, NULL, 44.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(898, 2, 55, 2, 127, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:08', NULL),
(899, 2, 56, 2, 127, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(900, 2, 57, 2, 127, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(901, 2, 58, 2, 127, 'Pre', NULL, 18.00, 'B+', NULL, NULL, 18.00, 'B+', 3.2, 6.40, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(902, 2, 59, 2, 127, 'Pre', NULL, 16.00, 'D+', NULL, NULL, 16.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(903, 2, 60, 2, 127, 'Pre', NULL, 35.00, 'B+', NULL, NULL, 35.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 02:20:08', NULL),
(904, 2, 52, 2, 128, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(905, 2, 53, 2, 128, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(906, 2, 54, 2, 128, 'Pre', NULL, 31.00, 'D+', NULL, NULL, 31.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(907, 2, 55, 2, 128, 'Pre', NULL, 30.00, 'C', NULL, NULL, 30.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:48', NULL),
(908, 2, 56, 2, 128, 'Pre', NULL, 17.00, 'D', NULL, NULL, 17.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(909, 2, 57, 2, 128, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(910, 2, 58, 2, 128, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(911, 2, 59, 2, 128, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(912, 2, 60, 2, 128, 'Pre', NULL, 35.00, 'B+', NULL, NULL, 35.00, 'B+', 3.2, 12.80, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(913, 2, 52, 2, 129, 'Pre', NULL, 35.00, 'C', NULL, NULL, 35.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:00', NULL),
(914, 2, 53, 2, 129, 'Pre', NULL, 29.00, 'D+', NULL, NULL, 29.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:00', NULL),
(915, 2, 54, 2, 129, 'Pre', NULL, 77.00, 'B+', NULL, NULL, 77.00, 'B+', 3.2, 12.80, 'PASS', NULL, '2020-05-13 02:20:01', NULL),
(916, 2, 55, 2, 129, 'Pre', NULL, 51.00, 'B', NULL, NULL, 51.00, 'B', 2.8, 11.20, 'PASS', NULL, '2020-05-13 02:20:01', NULL),
(917, 2, 56, 2, 129, 'Pre', NULL, 33.00, 'C', NULL, NULL, 33.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:01', NULL),
(918, 2, 57, 2, 129, 'Pre', NULL, 20.00, 'B', NULL, NULL, 20.00, 'B', 2.8, 5.60, 'PASS', NULL, '2020-05-13 02:20:01', NULL),
(919, 2, 58, 2, 129, 'Pre', NULL, 22.00, 'A', NULL, NULL, 22.00, 'A', 3.6, 7.20, 'PASS', NULL, '2020-05-13 02:20:01', NULL),
(920, 2, 59, 2, 129, 'Pre', NULL, 13.00, 'D', NULL, NULL, 13.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:01', NULL),
(921, 2, 60, 2, 129, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'FAIL', NULL, '2020-05-13 02:20:01', NULL),
(922, 2, 52, 2, 130, 'Pre', NULL, 34.00, 'C', NULL, NULL, 34.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(923, 2, 53, 2, 130, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(924, 2, 54, 2, 130, 'Pre', NULL, 39.00, 'D+', NULL, NULL, 39.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(925, 2, 55, 2, 130, 'Pre', NULL, 38.00, 'C+', NULL, NULL, 38.00, 'C+', 2.4, 9.60, 'PASS', NULL, '2020-05-13 02:20:47', NULL),
(926, 2, 56, 2, 130, 'Pre', NULL, 15.00, 'D', NULL, NULL, 15.00, 'D', 1.2, 4.80, 'FAIL', NULL, '2020-05-13 02:20:47', NULL),
(927, 2, 57, 2, 130, 'Pre', NULL, 14.00, 'C', NULL, NULL, 14.00, 'C', 2.0, 4.00, 'FAIL', NULL, '2020-05-13 02:20:47', NULL),
(928, 2, 58, 2, 130, 'Pre', NULL, 20.00, 'A', NULL, NULL, 20.00, 'A', 3.6, 7.20, 'FAIL', NULL, '2020-05-13 02:20:47', NULL),
(929, 2, 59, 2, 130, 'Pre', NULL, 28.00, 'C+', NULL, NULL, 28.00, 'C+', 2.4, 9.60, 'FAIL', NULL, '2020-05-13 02:20:47', NULL),
(930, 2, 60, 2, 130, 'Pre', NULL, 17.00, 'D+', NULL, NULL, 17.00, 'D+', 1.6, 6.40, 'FAIL', NULL, '2020-05-13 02:20:48', NULL),
(931, 2, 52, 2, 131, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(932, 2, 53, 2, 131, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(933, 2, 54, 2, 131, 'Pre', NULL, 32.00, 'D+', NULL, NULL, 32.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(934, 2, 55, 2, 131, 'Pre', NULL, 31.00, 'C', NULL, NULL, 31.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(935, 2, 56, 2, 131, 'Pre', NULL, 23.00, 'D+', NULL, NULL, 23.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(936, 2, 57, 2, 131, 'Pre', NULL, 13.00, 'C', NULL, NULL, 13.00, 'C', 2.0, 4.00, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(937, 2, 58, 2, 131, 'Pre', NULL, 13.00, 'C+', NULL, NULL, 13.00, 'C+', 2.4, 4.80, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(938, 2, 59, 2, 131, 'Pre', NULL, 15.00, 'D+', NULL, NULL, 15.00, 'D+', 1.6, 6.40, 'PASS', NULL, '2020-05-13 02:20:33', NULL),
(939, 2, 60, 2, 131, 'Pre', NULL, 20.00, 'C', NULL, NULL, 20.00, 'C', 2.0, 8.00, 'PASS', NULL, '2020-05-13 02:20:33', NULL);

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
(1, 'A+', 4.00, 90.00, 100.00, 'Outstanding', 0, '2020-03-17 11:05:04', '2020-03-17 11:05:04'),
(2, 'A', 3.60, 80.00, 90.00, 'Excellent', 0, '2020-03-17 11:05:04', '2020-03-17 11:05:04'),
(3, 'B+', 3.20, 70.00, 80.00, 'Very good', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(4, 'B', 2.80, 60.00, 70.00, 'Good', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(5, 'C+', 2.40, 50.00, 60.00, 'Satisfactory', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(6, 'C', 2.00, 40.00, 50.00, 'Acceptable', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(7, 'D+', 1.60, 30.00, 40.00, 'Partially acceptable', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(8, 'D', 1.20, 20.00, 30.00, 'Insufficient', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05'),
(9, 'E', 0.80, 0.00, 20.00, 'Very insufficient', 0, '2020-03-17 11:05:05', '2020-03-17 11:05:05');

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
  `print_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_sheet_settings`
--

INSERT INTO `grade_sheet_settings` (`id`, `title_1`, `title_2`, `title_3`, `title_4`, `title_5`, `logo_1`, `logo_2`, `print_date`, `created_at`, `updated_at`) VALUES
(1, 'Thulung Dudhkoshi Rular Municipality', 'Basic Level Examination', 'Mukli, Solikhumbu', 'Basic Education Completion Examination', NULL, NULL, NULL, '2076-12-4', '2020-03-17 11:52:11', '2020-03-17 11:52:50');

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
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'V', 1, '2020-03-17 11:05:05', '2020-05-11 02:07:50'),
(2, 'VIII', 1, '2020-03-17 11:05:05', '2020-05-11 02:07:41');

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
(1, 'School List', 'school-list', NULL, NULL, 1, NULL, NULL),
(2, 'School Create', 'school-create', NULL, NULL, 2, NULL, NULL),
(3, 'School Edit', 'school-edit', NULL, NULL, 3, NULL, NULL),
(4, 'School Delete', 'school-delete', NULL, NULL, 5, NULL, NULL),
(5, 'Class List', 'class-list', NULL, NULL, 1, NULL, NULL),
(6, 'Class Create', 'class-create', NULL, NULL, 2, NULL, NULL),
(7, 'Class  Edit', 'class-edit', NULL, NULL, 3, NULL, NULL),
(8, 'Class  Delete', 'class-delete', NULL, NULL, 5, NULL, NULL),
(9, 'Section List', 'section-list', NULL, NULL, 1, NULL, NULL),
(10, 'Section Create', 'section-create', NULL, NULL, 2, NULL, NULL),
(11, 'Section Edit', 'section-edit', NULL, NULL, 3, NULL, NULL),
(12, 'Section Delete', 'section-delete', NULL, NULL, 5, NULL, NULL),
(13, 'Assign Class List', 'assign-class-list', NULL, NULL, 1, NULL, NULL),
(14, 'Assign Class Create', 'assign-class-create', NULL, NULL, 2, NULL, NULL),
(15, 'Assign Class Delete', 'assign-class-delete', NULL, NULL, 5, NULL, NULL),
(16, 'GradeSheet Setting', 'header-setting', NULL, NULL, 1, NULL, NULL),
(17, 'Assign Section List', 'assign-section-list', NULL, NULL, 1, NULL, NULL),
(18, 'Assign Section Create', 'assign-section-create', NULL, NULL, 2, NULL, NULL),
(19, 'Assign Section Delete', 'assign-section-delete', NULL, NULL, 5, NULL, NULL),
(20, 'Database Table List', 'database-table-list', NULL, NULL, 1, NULL, NULL),
(21, 'Database Backup Download', 'database-backup-download', NULL, NULL, 2, NULL, NULL),
(22, 'Database Backup In Server', 'database-backup-in-server', NULL, NULL, 3, NULL, NULL),
(23, 'Assign Subject List', 'assign-subject-list', NULL, NULL, 1, NULL, NULL),
(24, 'Assign Subject Create', 'assign-subject-create', NULL, NULL, 2, NULL, NULL),
(25, 'Assign Subject Delete', 'assign-subject-delete', NULL, NULL, 5, NULL, NULL),
(26, 'Exam List', 'exam-list', NULL, NULL, 1, NULL, NULL),
(27, 'Exam Create', 'exam-create', NULL, NULL, 2, NULL, NULL),
(28, 'Exam Edit', 'exam-edit', NULL, NULL, 3, NULL, NULL),
(29, 'Exam Delete', 'exam-delete', NULL, NULL, 5, NULL, NULL),
(30, 'Grade List', 'grade-list', NULL, NULL, 1, NULL, NULL),
(31, 'Grade Create', 'grade-create', NULL, NULL, 2, NULL, NULL),
(32, 'Grade Edit', 'grade-edit', NULL, NULL, 3, NULL, NULL),
(33, 'Grade Delete', 'grade-delete', NULL, NULL, 5, NULL, NULL),
(34, 'Exam Schedule List', 'exam-schedule-list', NULL, NULL, 1, NULL, NULL),
(35, 'Exam Schedule Create', 'exam-schedule-create', NULL, NULL, 2, NULL, NULL),
(36, 'Mark Register List', 'mark-register-list', NULL, NULL, 1, NULL, NULL),
(37, 'Mark Register Create', 'mark-register-create', NULL, NULL, 2, NULL, NULL),
(38, 'Student List', 'student-list', NULL, NULL, 1, NULL, NULL),
(39, 'Student Create', 'student-create', NULL, NULL, 2, NULL, NULL),
(40, 'Student Edit', 'student-edit', NULL, NULL, 3, NULL, NULL),
(41, 'Student Show', 'student-show', NULL, NULL, 4, NULL, NULL),
(42, 'Student Delete', 'student-delete', NULL, NULL, 5, NULL, NULL),
(43, 'Subject List', 'subject-list', NULL, NULL, 1, NULL, NULL),
(44, 'Subject Create', 'subject-create', NULL, NULL, 2, NULL, NULL),
(45, 'Subject Edit', 'subject-edit', NULL, NULL, 3, NULL, NULL),
(46, 'Subject Show', 'subject-show', NULL, NULL, 4, NULL, NULL),
(47, 'Subject Delete', 'subject-delete', NULL, NULL, 5, NULL, NULL),
(48, 'User List', 'user-list', NULL, NULL, 1, NULL, NULL),
(49, 'User Create', 'user-create', NULL, NULL, 2, NULL, NULL),
(50, 'User Edit', 'user-edit', NULL, NULL, 3, NULL, NULL),
(51, 'User Show', 'user-show', NULL, NULL, 4, NULL, NULL),
(52, 'User Delete', 'user-delete', NULL, NULL, 5, NULL, NULL),
(53, 'Role List', 'role-list', NULL, NULL, 1, NULL, NULL),
(54, 'Role Create', 'role-create', NULL, NULL, 2, NULL, NULL),
(55, 'Role Edit', 'role-edit', NULL, NULL, 3, NULL, NULL),
(56, 'Role Show', 'role-show', NULL, NULL, 4, NULL, NULL),
(57, 'Role Delete', 'role-delete', NULL, NULL, 5, NULL, NULL);

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1);

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

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `session_id`, `school_class_section_id`, `exam_id`, `student_id`, `obtain_total_th_marks`, `obtain_total_pr_marks`, `obtain_total_marks`, `grand_total_th_marks`, `grand_total_marks`, `percentage`, `gpa`, `results`, `description`, `created_at`, `updated_at`) VALUES
(7, 2, 13, 2, 59, 298.00, 0.00, 298.00, 555.00, 555.00, 53.69, 2.13, 'FAIL', NULL, NULL, NULL),
(8, 2, 13, 2, 33, 305.00, 0.00, 305.00, 555.00, 555.00, 54.95, 2.20, 'PASS', NULL, NULL, NULL),
(9, 2, 13, 2, 34, 371.00, 0.00, 371.00, 555.00, 555.00, 66.85, 2.58, 'PASS', NULL, NULL, NULL),
(10, 2, 13, 2, 35, 296.00, 0.00, 296.00, 555.00, 555.00, 53.33, 2.13, 'PASS', NULL, NULL, NULL),
(11, 2, 13, 2, 36, 259.00, 0.00, 259.00, 555.00, 555.00, 46.67, 1.87, 'FAIL', NULL, NULL, NULL),
(12, 2, 13, 2, 37, 342.00, 0.00, 342.00, 555.00, 555.00, 61.62, 2.42, 'PASS', NULL, NULL, NULL),
(13, 2, 13, 2, 38, 284.00, 0.00, 284.00, 555.00, 555.00, 51.17, 2.11, 'PASS', NULL, NULL, NULL),
(14, 2, 13, 2, 39, 268.00, 0.00, 268.00, 555.00, 555.00, 48.29, 1.98, 'FAIL', NULL, NULL, NULL),
(15, 2, 13, 2, 40, 275.00, 0.00, 275.00, 555.00, 555.00, 49.55, 2.04, 'PASS', NULL, NULL, NULL),
(16, 2, 13, 2, 41, 266.00, 0.00, 266.00, 555.00, 555.00, 47.93, 1.98, 'PASS', NULL, NULL, NULL),
(17, 2, 13, 2, 42, 341.00, 0.00, 341.00, 555.00, 555.00, 61.44, 2.42, 'PASS', NULL, NULL, NULL),
(18, 2, 13, 2, 43, 257.00, 0.00, 257.00, 555.00, 555.00, 46.31, 1.89, 'FAIL', NULL, NULL, NULL),
(19, 2, 13, 2, 44, 280.00, 0.00, 280.00, 555.00, 555.00, 50.45, 2.13, 'PASS', NULL, NULL, NULL),
(20, 2, 13, 2, 45, 273.00, 0.00, 273.00, 555.00, 555.00, 49.19, 1.96, 'PASS', NULL, NULL, NULL),
(21, 2, 13, 2, 46, 258.00, 0.00, 258.00, 555.00, 555.00, 46.49, 1.82, 'FAIL', NULL, NULL, NULL),
(22, 2, 13, 2, 47, 291.00, 0.00, 291.00, 555.00, 555.00, 52.43, 2.09, 'PASS', NULL, NULL, NULL),
(23, 2, 13, 2, 48, 285.00, 0.00, 285.00, 555.00, 555.00, 51.35, 2.04, 'PASS', NULL, NULL, NULL),
(24, 2, 13, 2, 49, 284.00, 0.00, 284.00, 555.00, 555.00, 51.17, 2.11, 'PASS', NULL, NULL, NULL),
(25, 2, 13, 2, 50, 283.00, 0.00, 283.00, 555.00, 555.00, 50.99, 2.09, 'PASS', NULL, NULL, NULL),
(26, 2, 13, 2, 51, 288.00, 0.00, 288.00, 555.00, 555.00, 51.89, 2.09, 'PASS', NULL, NULL, NULL),
(27, 2, 13, 2, 52, 289.00, 0.00, 289.00, 555.00, 555.00, 52.07, 2.13, 'FAIL', NULL, NULL, NULL),
(28, 2, 13, 2, 53, 252.00, 0.00, 252.00, 555.00, 555.00, 45.41, 1.87, 'FAIL', NULL, NULL, NULL),
(29, 2, 13, 2, 54, 256.00, 0.00, 256.00, 555.00, 555.00, 46.13, 1.87, 'PASS', NULL, NULL, NULL),
(30, 2, 13, 2, 55, 261.00, 0.00, 261.00, 555.00, 555.00, 47.03, 1.93, 'FAIL', NULL, NULL, NULL),
(31, 2, 13, 2, 56, 265.00, 0.00, 265.00, 555.00, 555.00, 47.75, 1.98, 'PASS', NULL, NULL, NULL),
(32, 2, 13, 2, 57, 298.00, 0.00, 298.00, 555.00, 555.00, 53.69, 2.16, 'PASS', NULL, NULL, NULL),
(33, 2, 13, 2, 58, 270.00, 0.00, 270.00, 555.00, 555.00, 48.65, 1.89, 'FAIL', NULL, NULL, NULL),
(34, 2, 13, 2, 60, 286.00, 0.00, 286.00, 555.00, 555.00, 51.53, 1.98, 'PASS', NULL, NULL, NULL),
(35, 2, 13, 2, 61, 308.00, 0.00, 308.00, 555.00, 555.00, 55.50, 2.20, 'FAIL', NULL, NULL, NULL),
(36, 2, 13, 2, 62, 282.00, 0.00, 282.00, 555.00, 555.00, 50.81, 2.00, 'PASS', NULL, NULL, NULL),
(37, 2, 13, 2, 63, 257.00, 0.00, 257.00, 555.00, 555.00, 46.31, 1.89, 'PASS', NULL, NULL, NULL),
(38, 2, 13, 2, 64, 328.00, 0.00, 328.00, 555.00, 555.00, 59.10, 2.27, 'FAIL', NULL, NULL, NULL),
(39, 2, 13, 2, 65, 305.00, 0.00, 305.00, 555.00, 555.00, 54.95, 2.24, 'PASS', NULL, NULL, NULL),
(40, 2, 14, 2, 66, 160.00, 0.00, 160.00, 555.00, 555.00, 28.83, 1.40, 'FAIL', NULL, NULL, NULL),
(41, 2, 14, 2, 67, 323.00, 0.00, 323.00, 555.00, 555.00, 58.20, 2.24, 'PASS', NULL, NULL, NULL),
(42, 2, 14, 2, 68, 164.00, 0.00, 164.00, 555.00, 555.00, 29.55, 1.47, 'FAIL', NULL, NULL, NULL),
(43, 2, 14, 2, 69, 161.00, 0.00, 161.00, 555.00, 555.00, 29.01, 1.31, 'FAIL', NULL, NULL, NULL),
(44, 2, 14, 2, 70, 221.00, 0.00, 221.00, 555.00, 555.00, 39.82, 1.78, 'FAIL', NULL, NULL, NULL),
(45, 2, 14, 2, 71, 183.00, 0.00, 183.00, 555.00, 555.00, 32.97, 1.47, 'FAIL', NULL, NULL, NULL),
(46, 2, 14, 2, 72, 251.00, 0.00, 251.00, 555.00, 555.00, 45.23, 1.91, 'PASS', NULL, NULL, NULL),
(47, 2, 14, 2, 73, 222.00, 0.00, 222.00, 555.00, 555.00, 40.00, 1.71, 'FAIL', NULL, NULL, NULL),
(48, 2, 14, 2, 74, 231.00, 0.00, 231.00, 555.00, 555.00, 41.62, 1.84, 'PASS', NULL, NULL, NULL),
(49, 2, 14, 2, 75, 176.00, 0.00, 176.00, 555.00, 555.00, 31.71, 1.47, 'FAIL', NULL, NULL, NULL),
(50, 2, 14, 2, 76, 190.00, 0.00, 190.00, 555.00, 555.00, 34.23, 1.56, 'FAIL', NULL, NULL, NULL),
(51, 2, 14, 2, 77, 203.00, 0.00, 203.00, 555.00, 555.00, 36.58, 1.62, 'FAIL', NULL, NULL, NULL),
(52, 2, 14, 2, 78, 170.00, 0.00, 170.00, 555.00, 555.00, 30.63, 1.51, 'FAIL', NULL, NULL, NULL),
(53, 2, 14, 2, 79, 306.00, 0.00, 306.00, 555.00, 555.00, 55.14, 2.27, 'PASS', NULL, NULL, NULL),
(54, 2, 14, 2, 80, 245.00, 0.00, 245.00, 555.00, 555.00, 44.14, 1.91, 'FAIL', NULL, NULL, NULL),
(55, 2, 14, 2, 81, 176.00, 0.00, 176.00, 555.00, 555.00, 31.71, 1.44, 'FAIL', NULL, NULL, NULL),
(56, 2, 14, 2, 82, 146.00, 0.00, 146.00, 555.00, 555.00, 26.31, 1.27, 'FAIL', NULL, NULL, NULL),
(57, 2, 14, 2, 83, 214.00, 0.00, 214.00, 555.00, 555.00, 38.56, 1.71, 'FAIL', NULL, NULL, NULL),
(58, 2, 14, 2, 84, 251.00, 0.00, 251.00, 555.00, 555.00, 45.23, 1.89, 'FAIL', NULL, NULL, NULL),
(59, 2, 14, 2, 85, 204.00, 0.00, 204.00, 555.00, 555.00, 36.76, 1.62, 'FAIL', NULL, NULL, NULL),
(60, 2, 14, 2, 86, 170.00, 0.00, 170.00, 555.00, 555.00, 30.63, 1.51, 'FAIL', NULL, NULL, NULL),
(61, 2, 14, 2, 87, 176.00, 0.00, 176.00, 555.00, 555.00, 31.71, 1.49, 'FAIL', NULL, NULL, NULL),
(62, 2, 14, 2, 88, 194.00, 0.00, 194.00, 555.00, 555.00, 34.95, 1.58, 'FAIL', NULL, NULL, NULL),
(63, 2, 14, 2, 89, 329.00, 0.00, 329.00, 555.00, 555.00, 59.28, 2.40, 'PASS', NULL, NULL, NULL),
(64, 2, 14, 2, 90, 278.00, 0.00, 278.00, 555.00, 555.00, 50.09, 2.07, 'FAIL', NULL, NULL, NULL),
(65, 2, 14, 2, 91, 68.00, 0.00, 68.00, 325.00, 325.00, 20.92, 1.10, 'FAIL', NULL, NULL, NULL),
(66, 2, 14, 2, 92, 159.00, 0.00, 159.00, 555.00, 555.00, 28.65, 1.31, 'FAIL', NULL, NULL, NULL),
(67, 2, 14, 2, 93, 200.00, 0.00, 200.00, 555.00, 555.00, 36.04, 1.58, 'FAIL', NULL, NULL, NULL),
(68, 2, 14, 2, 94, 106.00, 0.00, 106.00, 325.00, 325.00, 32.62, 1.60, 'FAIL', NULL, NULL, NULL),
(69, 2, 14, 2, 95, 211.00, 0.00, 211.00, 555.00, 555.00, 38.02, 1.62, 'FAIL', NULL, NULL, NULL),
(70, 2, 14, 2, 96, 237.00, 0.00, 237.00, 555.00, 555.00, 42.70, 1.80, 'PASS', NULL, NULL, NULL),
(71, 2, 14, 2, 97, 264.00, 0.00, 264.00, 555.00, 555.00, 47.57, 2.00, 'PASS', NULL, NULL, NULL),
(72, 2, 14, 2, 98, 242.00, 0.00, 242.00, 555.00, 555.00, 43.60, 1.91, 'FAIL', NULL, NULL, NULL),
(73, 2, 14, 2, 99, 214.00, 0.00, 214.00, 555.00, 555.00, 38.56, 1.71, 'FAIL', NULL, NULL, NULL),
(74, 2, 14, 2, 100, 268.00, 0.00, 268.00, 555.00, 555.00, 48.29, 2.07, 'FAIL', NULL, NULL, NULL),
(75, 2, 14, 2, 102, 217.00, 0.00, 217.00, 555.00, 555.00, 39.10, 1.73, 'FAIL', NULL, NULL, NULL),
(76, 2, 14, 2, 101, 211.00, 0.00, 211.00, 555.00, 555.00, 38.02, 1.76, 'FAIL', NULL, NULL, NULL),
(77, 2, 14, 2, 103, 209.00, 0.00, 209.00, 555.00, 555.00, 37.66, 1.73, 'FAIL', NULL, NULL, NULL),
(78, 2, 15, 2, 104, 266.00, 0.00, 266.00, 555.00, 555.00, 47.93, 2.00, 'PASS', NULL, NULL, NULL),
(79, 2, 15, 2, 105, 276.00, 0.00, 276.00, 555.00, 555.00, 49.73, 2.00, 'FAIL', NULL, NULL, NULL),
(80, 2, 15, 2, 106, 261.00, 0.00, 261.00, 555.00, 555.00, 47.03, 2.00, 'FAIL', NULL, NULL, NULL),
(81, 2, 15, 2, 107, 265.00, 0.00, 265.00, 555.00, 555.00, 47.75, 1.98, 'PASS', NULL, NULL, NULL),
(82, 2, 15, 2, 108, 261.00, 0.00, 261.00, 555.00, 555.00, 47.03, 1.96, 'PASS', NULL, NULL, NULL),
(83, 2, 15, 2, 109, 235.00, 0.00, 235.00, 555.00, 555.00, 42.34, 1.78, 'FAIL', NULL, NULL, NULL),
(84, 2, 15, 2, 110, 270.00, 0.00, 270.00, 555.00, 555.00, 48.65, 2.00, 'PASS', NULL, NULL, NULL),
(85, 2, 15, 2, 111, 269.00, 0.00, 269.00, 555.00, 555.00, 48.47, 2.02, 'PASS', NULL, NULL, NULL),
(86, 2, 15, 2, 112, 235.00, 0.00, 235.00, 555.00, 555.00, 42.34, 1.73, 'FAIL', NULL, NULL, NULL),
(87, 2, 15, 2, 113, 312.00, 0.00, 312.00, 555.00, 555.00, 56.22, 2.27, 'PASS', NULL, NULL, NULL),
(88, 2, 15, 2, 114, 249.00, 0.00, 249.00, 555.00, 555.00, 44.86, 1.87, 'FAIL', NULL, NULL, NULL),
(89, 2, 15, 2, 115, 229.00, 0.00, 229.00, 555.00, 555.00, 41.26, 1.80, 'FAIL', NULL, NULL, NULL),
(90, 2, 15, 2, 116, 252.00, 0.00, 252.00, 555.00, 555.00, 45.41, 1.89, 'PASS', NULL, NULL, NULL),
(91, 2, 15, 2, 117, 211.00, 0.00, 211.00, 555.00, 555.00, 38.02, 1.67, 'FAIL', NULL, NULL, NULL),
(92, 2, 15, 2, 118, 258.00, 0.00, 258.00, 555.00, 555.00, 46.49, 2.00, 'FAIL', NULL, NULL, NULL),
(93, 2, 15, 2, 119, 254.00, 0.00, 254.00, 555.00, 555.00, 45.77, 1.89, 'FAIL', NULL, NULL, NULL),
(94, 2, 15, 2, 120, 255.00, 0.00, 255.00, 555.00, 555.00, 45.95, 1.96, 'PASS', NULL, NULL, NULL),
(95, 2, 16, 2, 121, 260.00, 0.00, 260.00, 555.00, 555.00, 46.85, 1.96, 'FAIL', NULL, NULL, NULL),
(96, 2, 16, 2, 122, 221.00, 0.00, 221.00, 555.00, 555.00, 39.82, 1.73, 'PASS', NULL, NULL, NULL),
(97, 2, 16, 2, 123, 340.00, 0.00, 340.00, 555.00, 555.00, 61.26, 2.38, 'PASS', NULL, NULL, NULL),
(98, 2, 16, 2, 124, 139.00, 0.00, 139.00, 555.00, 555.00, 25.05, 1.18, 'FAIL', NULL, NULL, NULL),
(99, 2, 16, 2, 125, 237.00, 0.00, 237.00, 555.00, 555.00, 42.70, 1.76, 'PASS', NULL, NULL, NULL),
(100, 2, 16, 2, 126, 278.00, 0.00, 278.00, 555.00, 555.00, 50.09, 2.04, 'PASS', NULL, NULL, NULL),
(101, 2, 16, 2, 127, 224.00, 0.00, 224.00, 555.00, 555.00, 40.36, 1.76, 'FAIL', NULL, NULL, NULL),
(102, 2, 16, 2, 128, 207.00, 0.00, 207.00, 555.00, 555.00, 37.30, 1.71, 'FAIL', NULL, NULL, NULL),
(103, 2, 16, 2, 129, 300.00, 0.00, 300.00, 555.00, 555.00, 54.05, 2.00, 'FAIL', NULL, NULL, NULL),
(104, 2, 16, 2, 130, 228.00, 0.00, 228.00, 555.00, 555.00, 41.08, 1.73, 'FAIL', NULL, NULL, NULL),
(105, 2, 16, 2, 131, 193.00, 0.00, 193.00, 555.00, 555.00, 34.77, 1.58, 'PASS', NULL, NULL, NULL);

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
(1, 'Data Entry', 'data-entry', NULL, NULL, 1, '2020-05-12 00:18:20', '2020-05-12 00:18:20');

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
(6, 'Shree Birendrodaya Secondary School, Mukli', NULL, NULL, NULL, '2020-05-11 01:42:51', '2020-05-11 01:42:51'),
(7, 'Shree Deusa Secondary School, Deusa', NULL, NULL, NULL, '2020-05-11 01:43:45', '2020-05-11 01:43:45'),
(8, 'Shree Dudhakaushika Basic School, Deusa', NULL, NULL, NULL, '2020-05-11 01:47:12', '2020-05-11 01:47:12'),
(9, 'Shree Himalaya Secondary School, Jubu', NULL, NULL, NULL, '2020-05-11 01:47:40', '2020-05-11 01:47:40'),
(10, 'Shree Janasewa Secondary School, Lokhim', NULL, NULL, NULL, '2020-05-11 01:48:19', '2020-05-11 01:48:19'),
(11, 'Shree Janakalyan Secondary School, Jubu', NULL, NULL, NULL, '2020-05-11 01:48:53', '2020-05-11 01:48:53'),
(12, 'Shree Janata Secondary School, Lokhim', NULL, NULL, NULL, '2020-05-11 01:49:12', '2020-05-11 01:49:12'),
(13, 'Shree Jivan Jyoti Secondary School, Kangel', NULL, NULL, NULL, '2020-05-11 01:49:29', '2020-05-11 01:49:29'),
(14, 'Shree Jivan Jyoti Secondary School, Nele', NULL, NULL, NULL, '2020-05-11 01:49:45', '2020-05-11 01:49:45'),
(15, 'Shree Kalika Devi Secondary School, Panchan', NULL, NULL, NULL, '2020-05-11 01:50:13', '2020-05-11 01:50:13'),
(16, 'Shree Kangel Basic School, Kangel', NULL, NULL, NULL, '2020-05-11 01:50:42', '2020-05-11 01:50:42'),
(17, 'Shree Lamudada Basic School, Lokhim', NULL, NULL, NULL, '2020-05-11 01:51:19', '2020-05-11 01:51:19'),
(18, 'Shree Mukli Basic School, Mukli', NULL, NULL, NULL, '2020-05-11 01:51:37', '2020-05-11 01:51:37'),
(19, 'Shree Thakumala Basic School, Kangel', NULL, NULL, NULL, '2020-05-11 01:52:11', '2020-05-11 01:52:11'),
(20, 'Shree Tribhuwan Bidhyodaya Basic School, Mukli', NULL, NULL, NULL, '2020-05-11 01:52:48', '2020-05-11 01:52:48');

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
(5, 6, 2, NULL, NULL),
(6, 7, 2, NULL, NULL),
(7, 8, 2, NULL, NULL),
(8, 9, 2, NULL, NULL),
(9, 10, 2, NULL, NULL),
(10, 11, 2, NULL, NULL),
(11, 12, 2, NULL, NULL),
(12, 13, 2, NULL, NULL),
(13, 14, 2, NULL, NULL),
(14, 15, 2, NULL, NULL),
(15, 16, 2, NULL, NULL),
(16, 17, 2, NULL, NULL),
(17, 18, 2, NULL, NULL),
(18, 19, 2, NULL, NULL),
(19, 20, 2, NULL, NULL);

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
(13, 5, 1, NULL, NULL),
(14, 6, 1, NULL, NULL),
(15, 7, 1, NULL, NULL),
(16, 8, 1, NULL, NULL),
(17, 9, 1, NULL, NULL),
(18, 10, 1, NULL, NULL),
(19, 11, 1, NULL, NULL),
(20, 12, 1, NULL, NULL),
(21, 13, 1, NULL, NULL),
(22, 14, 1, NULL, NULL),
(23, 15, 1, NULL, NULL),
(24, 16, 1, NULL, NULL),
(25, 17, 1, NULL, NULL),
(26, 18, 1, NULL, NULL),
(27, 19, 1, NULL, NULL);

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
(25, 13, 11, NULL, 1, NULL, NULL),
(26, 13, 12, NULL, 1, NULL, NULL),
(27, 13, 13, NULL, 1, NULL, NULL),
(28, 13, 14, NULL, 1, NULL, NULL),
(29, 13, 15, NULL, 1, NULL, NULL),
(30, 13, 16, NULL, 1, NULL, NULL),
(31, 13, 17, NULL, 1, NULL, NULL),
(32, 13, 18, NULL, 1, NULL, NULL),
(33, 13, 19, NULL, 1, NULL, NULL),
(34, 14, 11, NULL, 1, NULL, NULL),
(35, 14, 12, NULL, 1, NULL, NULL),
(36, 14, 13, NULL, 1, NULL, NULL),
(37, 14, 14, NULL, 1, NULL, NULL),
(38, 14, 15, NULL, 1, NULL, NULL),
(39, 14, 16, NULL, 1, NULL, NULL),
(40, 14, 17, NULL, 1, NULL, NULL),
(41, 14, 18, NULL, 1, NULL, NULL),
(42, 14, 19, NULL, 1, NULL, NULL),
(43, 15, 11, NULL, 1, NULL, NULL),
(44, 15, 12, NULL, 1, NULL, NULL),
(45, 15, 13, NULL, 1, NULL, NULL),
(46, 15, 14, NULL, 1, NULL, NULL),
(47, 15, 15, NULL, 1, NULL, NULL),
(48, 15, 16, NULL, 1, NULL, NULL),
(49, 15, 17, NULL, 1, NULL, NULL),
(50, 15, 18, NULL, 1, NULL, NULL),
(51, 15, 19, NULL, 1, NULL, NULL),
(52, 16, 11, NULL, 1, NULL, NULL),
(53, 16, 12, NULL, 1, NULL, NULL),
(54, 16, 13, NULL, 1, NULL, NULL),
(55, 16, 14, NULL, 1, NULL, NULL),
(56, 16, 15, NULL, 1, NULL, NULL),
(57, 16, 16, NULL, 1, NULL, NULL),
(58, 16, 17, NULL, 1, NULL, NULL),
(59, 16, 18, NULL, 1, NULL, NULL),
(60, 16, 19, NULL, 1, NULL, NULL),
(61, 17, 11, NULL, 1, NULL, NULL),
(62, 17, 12, NULL, 1, NULL, NULL),
(63, 17, 13, NULL, 1, NULL, NULL),
(64, 17, 14, NULL, 1, NULL, NULL),
(65, 17, 15, NULL, 1, NULL, NULL),
(66, 17, 16, NULL, 1, NULL, NULL),
(67, 17, 17, NULL, 1, NULL, NULL),
(68, 17, 18, NULL, 1, NULL, NULL),
(69, 17, 19, NULL, 1, NULL, NULL),
(70, 18, 11, NULL, 1, NULL, NULL),
(71, 18, 12, NULL, 1, NULL, NULL),
(72, 18, 13, NULL, 1, NULL, NULL),
(73, 18, 14, NULL, 1, NULL, NULL),
(74, 18, 15, NULL, 1, NULL, NULL),
(75, 18, 16, NULL, 1, NULL, NULL),
(76, 18, 17, NULL, 1, NULL, NULL),
(77, 18, 18, NULL, 1, NULL, NULL),
(78, 18, 19, NULL, 1, NULL, NULL),
(79, 19, 11, NULL, 1, NULL, NULL),
(80, 19, 12, NULL, 1, NULL, NULL),
(81, 19, 13, NULL, 1, NULL, NULL),
(82, 19, 14, NULL, 1, NULL, NULL),
(83, 19, 15, NULL, 1, NULL, NULL),
(84, 19, 16, NULL, 1, NULL, NULL),
(85, 19, 17, NULL, 1, NULL, NULL),
(86, 19, 18, NULL, 1, NULL, NULL),
(87, 19, 19, NULL, 1, NULL, NULL),
(88, 20, 11, NULL, 1, NULL, NULL),
(89, 20, 12, NULL, 1, NULL, NULL),
(90, 20, 13, NULL, 1, NULL, NULL),
(91, 20, 14, NULL, 1, NULL, NULL),
(92, 20, 15, NULL, 1, NULL, NULL),
(93, 20, 16, NULL, 1, NULL, NULL),
(94, 20, 17, NULL, 1, NULL, NULL),
(95, 20, 18, NULL, 1, NULL, NULL),
(96, 20, 19, NULL, 1, NULL, NULL),
(97, 21, 11, NULL, 1, NULL, NULL),
(98, 21, 12, NULL, 1, NULL, NULL),
(99, 21, 13, NULL, 1, NULL, NULL),
(100, 21, 14, NULL, 1, NULL, NULL),
(101, 21, 15, NULL, 1, NULL, NULL),
(102, 21, 16, NULL, 1, NULL, NULL),
(103, 21, 17, NULL, 1, NULL, NULL),
(104, 21, 18, NULL, 1, NULL, NULL),
(105, 21, 19, NULL, 1, NULL, NULL),
(106, 22, 11, NULL, 1, NULL, NULL),
(107, 22, 12, NULL, 1, NULL, NULL),
(108, 22, 13, NULL, 1, NULL, NULL),
(109, 22, 14, NULL, 1, NULL, NULL),
(110, 22, 15, NULL, 1, NULL, NULL),
(111, 22, 16, NULL, 1, NULL, NULL),
(112, 22, 17, NULL, 1, NULL, NULL),
(113, 22, 18, NULL, 1, NULL, NULL),
(114, 22, 19, NULL, 1, NULL, NULL),
(115, 23, 11, NULL, 1, NULL, NULL),
(116, 23, 12, NULL, 1, NULL, NULL),
(117, 23, 13, NULL, 1, NULL, NULL),
(118, 23, 14, NULL, 1, NULL, NULL),
(119, 23, 15, NULL, 1, NULL, NULL),
(120, 23, 16, NULL, 1, NULL, NULL),
(121, 23, 17, NULL, 1, NULL, NULL),
(122, 23, 18, NULL, 1, NULL, NULL),
(123, 23, 19, NULL, 1, NULL, NULL),
(124, 24, 11, NULL, 1, NULL, NULL),
(125, 24, 12, NULL, 1, NULL, NULL),
(126, 24, 13, NULL, 1, NULL, NULL),
(127, 24, 14, NULL, 1, NULL, NULL),
(128, 24, 15, NULL, 1, NULL, NULL),
(129, 24, 16, NULL, 1, NULL, NULL),
(130, 24, 17, NULL, 1, NULL, NULL),
(131, 24, 18, NULL, 1, NULL, NULL),
(132, 24, 19, NULL, 1, NULL, NULL),
(133, 25, 11, NULL, 1, NULL, NULL),
(134, 25, 12, NULL, 1, NULL, NULL),
(135, 25, 13, NULL, 1, NULL, NULL),
(136, 25, 14, NULL, 1, NULL, NULL),
(137, 25, 15, NULL, 1, NULL, NULL),
(138, 25, 16, NULL, 1, NULL, NULL),
(139, 25, 17, NULL, 1, NULL, NULL),
(140, 25, 18, NULL, 1, NULL, NULL),
(141, 25, 19, NULL, 1, NULL, NULL),
(142, 26, 11, NULL, 1, NULL, NULL),
(143, 26, 12, NULL, 1, NULL, NULL),
(144, 26, 13, NULL, 1, NULL, NULL),
(145, 26, 14, NULL, 1, NULL, NULL),
(146, 26, 15, NULL, 1, NULL, NULL),
(147, 26, 16, NULL, 1, NULL, NULL),
(148, 26, 17, NULL, 1, NULL, NULL),
(149, 26, 18, NULL, 1, NULL, NULL),
(150, 26, 19, NULL, 1, NULL, NULL),
(151, 27, 11, NULL, 1, NULL, NULL),
(152, 27, 12, NULL, 1, NULL, NULL),
(153, 27, 13, NULL, 1, NULL, NULL),
(154, 27, 14, NULL, 1, NULL, NULL),
(155, 27, 15, NULL, 1, NULL, NULL),
(156, 27, 16, NULL, 1, NULL, NULL),
(157, 27, 17, NULL, 1, NULL, NULL),
(158, 27, 18, NULL, 1, NULL, NULL),
(159, 27, 19, NULL, 1, NULL, NULL);

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
(1, 'A', 1, '2020-03-17 11:16:55', '2020-03-17 11:16:55'),
(2, 'B', 1, '2020-03-17 11:16:59', '2020-03-17 11:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `status`, `created_at`, `updated_at`) VALUES
(2, '2076', 1, '2020-03-17 11:13:48', '2020-03-17 11:13:48');

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

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `session_id`, `school_class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob_bs`, `dob_ad`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES
(33, 2, 13, '207601', '00396', '1970-01-01', 'Adip Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-09-02', '2007-12-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:56', '2020-05-11 06:17:56'),
(34, 2, 13, '207602', '00385', '1970-01-01', 'Amrita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-17', '2006-04-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:56', '2020-05-11 06:17:56'),
(35, 2, 13, '207603', '00474', '1970-01-01', 'Anil Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-28', '2007-12-14', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:56', '2020-05-11 06:17:56'),
(36, 2, 13, '207604', '00404', '1970-01-01', ' Anisha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-06', '2006-08-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:56', '2020-05-11 06:17:56'),
(37, 2, 13, '207605', '00781', '1970-01-01', 'Anita B.K.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-12-03', '2008-03-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(38, 2, 13, '207606', '00051', '1970-01-01', 'Anuja Charmakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-10', '2005-09-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(39, 2, 13, '207607', '00785', '1970-01-01', 'Arjun Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-07', '2006-01-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(40, 2, 13, '207608', '00477', '1970-01-01', 'Asmita Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-07-17', '2006-11-03', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(41, 2, 13, '207609', '00401', '1970-01-01', 'Asmita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-02-22', '2005-06-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(42, 2, 13, '207610', '00478', '1970-01-01', 'Bishal Majhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-21', '2005-09-06', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(43, 2, 13, '207611', '00400', '1970-01-01', 'Dilip Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-08', '2005-04-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(44, 2, 13, '207612', '00782', '1970-01-01', 'Dipika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-07-09', '2004-10-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(45, 2, 13, '207613', '00078', '1970-01-01', 'Eljina Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-07', '2005-08-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(46, 2, 13, '207614', '00395', '1970-01-01', 'Jasmita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-08-10', '2003-11-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(47, 2, 13, '207615', '00468', '1970-01-01', 'jasmin Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-10-25', '2005-02-07', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(48, 2, 13, '207616', '00783', '1970-01-01', 'Kamala Katuwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-01-13', '2004-04-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(49, 2, 13, '207617', '00479', '1970-01-01', 'Karuna Khadka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-01', '2007-02-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(50, 2, 13, '207618', '00472', '1970-01-01', 'Lok Kumari Katuwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-13', '2007-01-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(51, 2, 13, '207619', '00068', '1970-01-01', 'Mandip Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-11-29', '2006-03-13', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(52, 2, 13, '207620', '00089', '1970-01-01', 'Pramila Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-01-09', '2004-04-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(53, 2, 13, '207621', '00335', '1970-01-01', 'Ramkaji Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-05', '2006-05-19', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(54, 2, 13, '207622', '00336', '1970-01-01', 'Roshan Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-24', '2005-10-10', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(55, 2, 13, '207623', '00067', '1970-01-01', 'Sabin Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-01', '2006-09-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(56, 2, 13, '207624', '00397', '1970-01-01', 'Sarbinda Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-05', '2006-01-18', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(57, 2, 13, '207625', '00779', '1970-01-01', 'Sahadev Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-24', '2006-09-09', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(58, 2, 13, '207626', '00402', '1970-01-01', 'Shiba Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-01', '2005-09-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(59, 2, 13, '207627', '00393', '1970-01-01', 'Shreya Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-07-10', '2007-10-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(60, 2, 13, '207628', '00475', '1970-01-01', 'Sujan Thapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-12-20', '2008-04-02', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(61, 2, 13, '207629', '00107', '1970-01-01', 'Suajata Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2058-01-03', '2001-04-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(62, 2, 13, '207630', '00780', '1970-01-01', 'Surendra Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-21', '2007-12-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(63, 2, 13, '207631', '00784', '1970-01-01', 'Surya Majhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-04-19', '2003-08-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(64, 2, 13, '207632', '00057', '1970-01-01', 'Swastika Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-13', '2007-04-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(65, 2, 13, '207633', '00046', '1970-01-01', 'Yunish Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-22', '2007-12-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-11 06:17:57', '2020-05-11 06:17:57'),
(66, 2, 14, '207601', '00126', '1970-01-01', 'Anisha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-08-06', '2005-11-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(67, 2, 14, '207602', '00116', '1970-01-01', 'Anusha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-12', '2006-01-25', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(68, 2, 14, '207603', '00124', '1970-01-01', 'Arun Lamichhane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-04', '2005-09-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(69, 2, 14, '207604', '00791', '1970-01-01', 'Aruna Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-05', '2005-10-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(70, 2, 14, '207605', '00123', '1970-01-01', 'Bhesh Raj Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-25', '2005-09-10', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(71, 2, 14, '207606', '00127', '1970-01-01', 'Bhumika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-09-27', '2006-01-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(72, 2, 14, '207607', '00117', '1970-01-01', 'Bibek Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-28', '2006-05-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(73, 2, 14, '207608', '00793', '1970-01-01', 'Bijaya Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-16', '2006-09-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(74, 2, 14, '207609', '00608', '1970-01-01', 'Bindu ai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-03-15', '2007-06-29', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(75, 2, 14, '207610', '00439', '1970-01-01', 'Deuraj Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-07', '2004-03-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(76, 2, 14, '207611', '00121', '1970-01-01', 'Enisa Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-06-13', '2007-09-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(77, 2, 14, '207612', '00609', '1970-01-01', 'Jeevan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-25', '2005-10-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(78, 2, 14, '207613', '00602', '1970-01-01', 'Kamala Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-02-04', '2005-05-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(79, 2, 14, '207614', '00152', '1970-01-01', 'Lalit Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-01', '2007-04-14', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(80, 2, 14, '207615', '00125', '1970-01-01', 'Laxmi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-18', '2005-10-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(81, 2, 14, '207616', '00130', '1970-01-01', 'Mani Kumar rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-03-18', '2007-07-02', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(82, 2, 14, '207617', '00792', '1970-01-01', 'Manil Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-07-18', '2007-11-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(83, 2, 14, '207618', '00134', '1970-01-01', 'Muna Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-06', '2006-12-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(84, 2, 14, '207619', '00120', '1970-01-01', 'Numa Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-04-27', '2007-08-12', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(85, 2, 14, '207620', '00137', '1970-01-01', 'Nuna  B.K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-03-06', '2004-06-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(86, 2, 14, '207621', '00799', '1970-01-01', 'Paspati Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-26', '2005-09-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(87, 2, 14, '207622', '00144', '1970-01-01', 'Prakash Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-08-16', '2004-12-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:13', '2020-05-12 01:41:13'),
(88, 2, 14, '207623', '00788', '1970-01-01', 'Pramila Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-02', '2007-01-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(89, 2, 14, '207624', '00804', '1970-01-01', 'Puspadev Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-17', '2007-12-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(90, 2, 14, '207625', '00119', '1970-01-01', 'Ranjita K.C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-04-07', '2007-07-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(91, 2, 14, '207626', '00599', '1970-01-01', 'Ripika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-07', '2007-02-19', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(92, 2, 14, '207627', '00133', '1970-01-01', 'Sabita Lamichhane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-07-11', '2003-10-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(93, 2, 14, '207628', '00794', '1970-01-01', ' Santosh B.K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-09-19', '2008-01-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(94, 2, 14, '207629', '00787', '1970-01-01', 'Sarita  Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-01', '2004-08-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(95, 2, 14, '207630', '00802', '1970-01-01', ' Sarmila Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-11-05', '2005-02-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(96, 2, 14, '207631', '00699', '1970-01-01', 'Subas Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-02-26', '2003-06-09', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(97, 2, 14, '207632', '00786', '1970-01-01', 'Sumita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-15', '2006-03-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(98, 2, 14, '207633', '00603', '1970-01-01', 'Sunita Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-18', '2007-05-01', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(99, 2, 14, '207634', '00798', '1970-01-01', 'Uma Devi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-02-06', '2004-05-19', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(100, 2, 14, '207635', '00187', '1970-01-01', 'Urmia Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-16', '2005-11-02', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(101, 2, 14, '207636', '00800', '1970-01-01', 'Ushika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-02-10', '2005-05-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(102, 2, 14, '207637', '00140', '1970-01-01', 'Yamuna Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-12-18', '2005-03-31', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(103, 2, 14, '207638', '00598', '1970-01-01', 'Yubaraj Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-09-08', '2003-12-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 01:41:14', '2020-05-12 01:41:14'),
(104, 2, 15, '207601', '00087', '1970-01-01', 'Hem Babu Ghimire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-02-03', '2007-05-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:23', '2020-05-12 02:11:23'),
(105, 2, 15, '207602', '00255', '1970-01-01', 'Dipesh Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-04-19', '2007-08-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(106, 2, 15, '207603', '00090', '1970-01-01', 'Rajan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-06', '2006-01-19', 'Male ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(107, 2, 15, '207604', '00080', '1970-01-01', 'Johnni Kalikote', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-02', '2004-12-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(108, 2, 15, '207605', '00081', '1970-01-01', 'Kusum B.k.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-14', '2005-08-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(109, 2, 15, '207606', '00257', '1970-01-01', 'Kamal Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-11-19', '2006-03-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(110, 2, 15, '207607', '00078', '1970-01-01', 'Puspangli Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-18', '2007-02-01', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(111, 2, 15, '207608', '00254', '1970-01-01', 'Devchandra Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-15', '2004-12-30', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(112, 2, 15, '207609', '00106', '1970-01-01', 'Sasikala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-06-15', '2004-10-01', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(113, 2, 15, '207610', '00092', '1970-01-01', 'Rajkarna Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-09-21', '2006-01-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(114, 2, 15, '207611', '00079', '1970-01-01', 'Prashant Luhar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-19', '2006-07-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(115, 2, 15, '207612', '00101', '1970-01-01', 'Mira Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-01-09', '2003-04-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(116, 2, 15, '207613', '00130', '1970-01-01', 'Niruta Nepali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2056-08-11', '1999-11-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(117, 2, 15, '207614', '00107', '1970-01-01', 'Yogya Kumar Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2058-10-09', '2002-01-22', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(118, 2, 15, '207615', '00088', '1970-01-01', 'Junish Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-10-16', '2008-01-30', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(119, 2, 15, '207616', '00077', '1970-01-01', 'Ujwol Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-18', '2007-02-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(120, 2, 15, '207617', '00089', '1970-01-01', 'Bal Kumar Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-10-06', '2003-01-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:11:24', '2020-05-12 02:11:24'),
(121, 2, 16, '207601', '00492', '1970-01-01', 'Anil Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-22', '2004-04-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(122, 2, 16, '207602', '00187', '1970-01-01', 'Bibek Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-01-22', '2002-05-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(123, 2, 16, '207603', '00620', '1970-01-01', 'Bishal Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-15', '2007-03-29', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(124, 2, 16, '207604', '00391', '1970-01-01', 'Buddiman Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-04-29', '2004-08-13', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(125, 2, 16, '207605', '00662', '1970-01-01', 'Dipendra Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-10', '2006-03-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(126, 2, 16, '207606', '00621', '1970-01-01', 'Dipsika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-03-07', '2003-06-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(127, 2, 16, '207607', '00227', '1970-01-01', 'Gita Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-13', '2006-03-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(128, 2, 16, '207608', '00214', '1970-01-01', 'Himal Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-10-04', '2005-01-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(129, 2, 16, '207609', '00212', '1970-01-01', 'Karuna Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-07-13', '2007-10-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(130, 2, 16, '207610', '00191', '1970-01-01', 'Laxmi Nepali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2058-09-09', '2001-12-24', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(131, 2, 16, '207611', '00219', '1970-01-01', 'Nabin Sundas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-04-22', '2003-08-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(132, 2, 16, '207612', '00238', '1970-01-01', 'Niran Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-05', '2006-11-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(133, 2, 16, '207613', '00230', '1970-01-01', 'Nirmal K.C.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-04-08', '2006-07-24', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(134, 2, 16, '207614', '00234', '1970-01-01', 'Pradip Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-06-26', '2007-10-13', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(135, 2, 16, '207615', '00228', '1970-01-01', 'Puja Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-05-25', '2003-09-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(136, 2, 16, '207616', '00231', '1970-01-01', 'Puran Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-02', '2006-01-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(137, 2, 16, '207617', '00624', '1970-01-01', 'Sabin Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-26', '2006-02-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(138, 2, 16, '207618', '00625', '1970-01-01', 'Samjhana Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-11-11', '2006-02-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(139, 2, 16, '207619', '00233', '1970-01-01', 'Sanam Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-31', '2006-07-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:29', '2020-05-12 02:12:29'),
(140, 2, 16, '207620', '00237', '1970-01-01', 'Sanchita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-11', '2006-09-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(141, 2, 16, '207621', '00544', '1970-01-01', 'Sangita Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-12-18', '2005-03-31', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(142, 2, 16, '207622', '00249', '1970-01-01', 'Sujan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-04-20', '2005-08-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(143, 2, 16, '207623', '00623', '1970-01-01', 'Sunil Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-04-07', '2003-07-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(144, 2, 16, '207624', '00537', '1970-01-01', 'Sushma Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-04', '2005-08-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(145, 2, 16, '207625', '00664', '1970-01-01', 'Tekchandra Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2066-03-04', '2009-06-18', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(146, 2, 16, '207626', '00229', '1970-01-01', 'Tenika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-10-08', '2008-01-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(147, 2, 16, '207627', '00235', '1970-01-01', 'Tikamaya Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-03', '2005-08-19', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(148, 2, 16, '207628', '00224', '1970-01-01', 'Umesh Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-20', '2006-06-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(149, 2, 16, '207629', '00225', '1970-01-01', 'Unisha Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-09', '2006-11-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(150, 2, 16, '207630', '00540', '1970-01-01', 'Urmila Ban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-26', '2004-04-08', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(151, 2, 16, '207631', '00663', '1970-01-01', 'Lalit Bahadur Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-03-11', '2004-06-25', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:12:30', '2020-05-12 02:12:30'),
(152, 2, 17, '207601', '46001', '1970-01-01', 'Anju Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-27', '2005-11-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:13', '2020-05-12 02:13:13'),
(153, 2, 17, '207602', '46002', '1970-01-01', 'Arun Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-05-06', '2003-08-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(154, 2, 17, '207603', '46003', '1970-01-01', 'Bijaya Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-10-15', '2004-01-29', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(155, 2, 17, '207604', '46004', '1970-01-01', 'Denish Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-22', '2005-05-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(156, 2, 17, '207605', '46005', '1970-01-01', 'Dil Kumari Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-10-11', '2004-01-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(157, 2, 17, '207606', '46006', '1970-01-01', 'Khiraj Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-17', '2007-01-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(158, 2, 17, '207607', '46007', '1970-01-01', 'Lakmaya Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-12', '2005-10-29', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(159, 2, 17, '207608', '46008', '1970-01-01', 'Manjit Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-07', '2006-03-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(160, 2, 17, '207609', '46009', '1970-01-01', 'Pratap Singh Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-25', '2005-09-10', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(161, 2, 17, '207610', '46010', '1970-01-01', 'Rabin Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-01-12', '2002-04-25', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(162, 2, 17, '207611', '46011', '1970-01-01', 'Renuka Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-07', '2006-04-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(163, 2, 17, '207612', '46012', '1970-01-01', 'Rojina Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-27', '2007-01-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(164, 2, 17, '207613', '46013', '1970-01-01', 'Santosh Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-07-10', '2002-10-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:13:14', '2020-05-12 02:13:14'),
(178, 2, 17, '207614', '46014', '1970-01-01', 'Sudip Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-2-30', '2005-06-12', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 02:15:46', '2020-05-12 02:22:31'),
(179, 2, 20, '207601', '00114', '1970-01-01', 'Kabita Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-16', '2004-12-31', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(180, 2, 20, '207602', '00115', '1970-01-01', 'Mamata Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-07', '2006-04-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(181, 2, 20, '207603', '00116', '1970-01-01', 'Umesh Jung Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-23', '2007-03-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(182, 2, 20, '207604', '00117', '1970-01-01', 'Hari Shankar Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-10', '2007-04-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(183, 2, 20, '207605', '00118', '1970-01-01', 'Ranjana Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-21', '2006-12-07', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(184, 2, 20, '207606', '00119', '1970-01-01', 'Aakriti karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-04', '2007-01-18', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(185, 2, 20, '207607', '00120', '1970-01-01', 'Devid Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-06-10', '2007-09-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(186, 2, 20, '207608', '00121', '1970-01-01', 'Manoj Sarki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-03-29', '2007-07-13', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(187, 2, 20, '207609', '00123', '1970-01-01', 'Goma Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-21', '2005-07-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(188, 2, 20, '207610', '00130', '1970-01-01', 'Aashika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-29', '2007-04-12', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(189, 2, 20, '207611', '00133', '1970-01-01', 'Karishma Raut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065-05-28', '2008-09-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(190, 2, 20, '207612', '00134', '1970-01-01', ' Sudip Subedi Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-30', '2006-09-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(191, 2, 20, '207613', '00138', '1970-01-01', 'Pramod Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-02', '2006-04-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(192, 2, 20, '207614', '00147', '1970-01-01', 'Sangita Sundas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-28', '2007-02-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(193, 2, 20, '207615', '00150', '1970-01-01', 'Khil Bahadur Adhikari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-11-18', '2005-03-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(194, 2, 20, '207616', '00151', '1970-01-01', 'Aayush Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-05-19', '2007-09-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(195, 2, 20, '207617', '00152', '1970-01-01', 'Binod Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-05-11', '2007-08-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(196, 2, 20, '207618', '00434', '1970-01-01', 'Sujan Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-24', '2005-07-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(197, 2, 20, '207619', '00494', '1970-01-01', 'Dhan Kumar Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-06-06', '2004-09-22', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(198, 2, 20, '207620', '00495', '1970-01-01', 'Sanjib Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-25', '2006-05-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18');
INSERT INTO `students` (`id`, `session_id`, `school_class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob_bs`, `dob_ad`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES
(199, 2, 20, '207621', '00496', '1970-01-01', 'Chandra Prasad Niraula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-09-16', '2005-12-31', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(200, 2, 20, '207622', '00497', '1970-01-01', 'Mausam Niraula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-29', '2006-04-11', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(201, 2, 20, '207623', '00519', '1970-01-01', 'Sujan Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-11', '2006-09-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(202, 2, 20, '207624', '00520', '1970-01-01', 'Goma K.C.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-18', '2006-07-02', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:14:18'),
(203, 2, 20, '207625', '00522', '1970-01-01', 'Manika Adhikari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-4-31', '2005-08-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:18', '2020-05-12 03:17:34'),
(204, 2, 20, '207626', '00525', '1970-01-01', 'jaya Bahadur Raut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-08-02', '2005-11-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:19', '2020-05-12 03:14:19'),
(205, 2, 20, '207627', '00547', '1970-01-01', 'Samit Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-11', '2006-12-26', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:19', '2020-05-12 03:14:19'),
(206, 2, 20, '207628', '00548', '1970-01-01', 'Niruta Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065-10-28', '2009-02-10', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:14:19', '2020-05-12 03:14:19'),
(207, 2, 21, '207601', '00787', '1970-01-01', 'Alikala sunuwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-04-28', '2003-08-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(208, 2, 21, '207602', '00637', '1970-01-01', 'Anisha Khadka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-03-16', '2004-06-30', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(209, 2, 21, '207603', '00633', '1970-01-01', 'Anupama Lamichhane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-06-18', '2007-10-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(210, 2, 21, '207604', '00549', '1970-01-01', 'Asmita Katwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-19', '2007-01-03', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(211, 2, 21, '207605', '00900', '1970-01-01', 'Asmita Khadka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-05', '2006-04-18', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(212, 2, 21, '207606', '00043', '1970-01-01', 'Bhagawoti Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-10-27', '2005-02-09', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(213, 2, 21, '207607', '00905', '1970-01-01', 'Bimal Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-11-05', '2003-02-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(214, 2, 21, '207608', '00548', '1970-01-01', 'Bimal Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-15', '2005-11-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(215, 2, 21, '207609', '00986', '1970-01-01', 'Binish Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-2-29', '2006-06-12', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:54'),
(216, 2, 21, '207610', '00772', '1970-01-01', 'Binita Katwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-04-01', '2007-07-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(217, 2, 21, '207611', '00632', '1970-01-01', 'Bishal Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-08-02', '2004-11-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(218, 2, 21, '207612', '00896', '1970-01-01', 'Bishnu Kumar Sunuwar ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-26', '2006-02-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(219, 2, 21, '207613', '00624', '1970-01-01', 'Chandra Bahadur Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-06', '2005-09-22', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(220, 2, 21, '207614', '00786', '1970-01-01', 'Chuda Kumari Katwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-17', '2007-03-31', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(221, 2, 21, '207615', '00916', '1970-01-01', 'Dinesh karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-05-11', '2003-08-28', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(222, 2, 21, '207616', '00738', '1970-01-01', 'Ejip Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-11-06', '2005-02-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(223, 2, 21, '207617', '00038', '1970-01-01', 'Gautam Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-25', '2005-07-09', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(224, 2, 21, '207618', '00026', '1970-01-01', 'Jamuna Magar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-08-11', '2005-11-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(225, 2, 21, '207619', '00766', '1970-01-01', 'Lokendra Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-10', '2006-11-26', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(226, 2, 21, '207620', '00915', '1970-01-01', 'Mahendra Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-08-01', '2004-11-16', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(227, 2, 21, '207621', '00899', '1970-01-01', 'Mandira Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-09', '2004-08-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(228, 2, 21, '207622', '00784', '1970-01-01', 'Manoj Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-22', '2005-09-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:02', '2020-05-12 03:22:02'),
(229, 2, 21, '207623', '00907', '1970-01-01', 'Milan Adhikari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-07', '2006-06-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(230, 2, 21, '207624', '00912', '1970-01-01', 'Milan Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-24', '2005-05-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(231, 2, 21, '207625', '00028', '1970-01-01', 'Muna shrestha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-26', '2007-01-10', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(232, 2, 21, '207626', '00745', '1970-01-01', 'Nabin Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-23', '2007-02-06', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(233, 2, 21, '207627', '00625', '1970-01-01', 'Ngimlamu Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-01', '2004-03-14', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(234, 2, 21, '207628', '00908', '1970-01-01', 'Nirajan  Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-24', '2006-05-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(235, 2, 21, '207629', '00724', '1970-01-01', 'Niruta Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-07', '2006-06-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(236, 2, 21, '207630', '00895', '1970-01-01', 'Niruta Sunuwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-07-29', '2005-11-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(237, 2, 21, '207631', '00628', '1970-01-01', 'Nischal Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-09', '2006-03-22', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(238, 2, 21, '207632', '00901', '1970-01-01', 'Parbati Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-08-30', '2005-12-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(239, 2, 21, '207633', '00911', '1970-01-01', 'Pranish Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-21', '2006-06-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(240, 2, 21, '207634', '00621', '1970-01-01', 'Priyata Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-05', '2005-08-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(241, 2, 21, '207635', '00904', '1970-01-01', 'Rabin  Thapa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-07-14', '2002-10-31', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(242, 2, 21, '207636', '00636', '1970-01-01', 'Rajan Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-29', '2006-10-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(243, 2, 21, '207637', '00550', '1970-01-01', 'Rajib Khadka ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-10-10', '2004-01-24', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(244, 2, 21, '207638', '00770', '1970-01-01', 'Ramesh Khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-04', '2006-12-19', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(245, 2, 21, '207639', '00545', '1970-01-01', 'Ranjita Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-17', '2007-03-01', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(246, 2, 21, '207640', '00903', '1970-01-01', 'Roshan Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-01-11', '2004-04-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(247, 2, 21, '207641', '00897', '1970-01-01', 'Sagar Babu Shrestha ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-27', '2005-07-11', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(248, 2, 21, '207642', '00898', '1970-01-01', 'Samjhana  Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-06', '2006-05-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(249, 2, 21, '207643', '00909', '1970-01-01', 'Santosh Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-10-22', '2005-02-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(250, 2, 21, '207644', '00902', '1970-01-01', 'Saraswoti Katwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-16', '2005-10-02', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(251, 2, 21, '207645', '00906', '1970-01-01', 'Shakti Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-19', '2005-07-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(252, 2, 21, '207646', '00620', '1970-01-01', 'Srijana Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-12-02', '2005-03-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(253, 2, 21, '207647', '00627', '1970-01-01', 'Suman Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-13', '2007-03-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(254, 2, 21, '207648', '00759', '1970-01-01', 'Suman Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-10', '2006-01-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(255, 2, 21, '207649', '00614', '1970-01-01', 'Sunil Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-16', '2007-12-02', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(256, 2, 21, '207650', '00914', '1970-01-01', 'Susmita khatri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-27', '2006-05-10', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:03', '2020-05-12 03:22:03'),
(257, 2, 21, '207651', '00913', '1970-01-01', 'Tikamaya Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-05-10', '2003-08-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:04', '2020-05-12 03:22:04'),
(258, 2, 21, '207652', '00025', '1970-01-01', 'Tikaram Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-11-14', '2006-02-26', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:04', '2020-05-12 03:22:04'),
(259, 2, 21, '207653', '00910', '1970-01-01', 'Yogen Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-04-25', '2006-08-10', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:04', '2020-05-12 03:22:04'),
(260, 2, 21, '207654', '00042', '1970-01-01', 'Unisa Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-11', '2005-09-27', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:04', '2020-05-12 03:22:04'),
(261, 2, 21, '207655', '00027', '1970-01-01', 'Yashoda Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-03', '2006-05-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 03:22:04', '2020-05-12 03:22:04'),
(262, 2, 18, '207601', '00161', '1970-01-01', 'Binita Puri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-03', '2005-04-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(263, 2, 18, '207602', '00163', '1970-01-01', 'Bhaikaji Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-11-17', '2006-03-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(264, 2, 18, '207603', '00164', '1970-01-01', 'Simran Syanbo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-11-14', '2005-02-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(265, 2, 18, '207604', '00167', '1970-01-01', 'Pawan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-04-15', '2005-07-30', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(266, 2, 18, '207605', '00169', '1970-01-01', 'Sangita Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-15', '2007-03-29', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(267, 2, 18, '207606', '00170', '1970-01-01', 'Jeni Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-02-07', '2007-05-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(268, 2, 18, '207607', '00172', '1970-01-01', 'Renija Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-16', '2006-06-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(269, 2, 18, '207608', '00173', '1970-01-01', 'Simran Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-11-20', '2008-03-03', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:35', '2020-05-12 04:01:35'),
(270, 2, 18, '207609', '00174', '1970-01-01', 'Saraswoti  Puri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-17', '2005-10-03', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(271, 2, 18, '207610', '00175', '1970-01-01', 'Yamuna Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-10-22', '2004-02-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(272, 2, 18, '207611', '00176', '1970-01-01', 'Jiban Gurung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-21', '2006-09-06', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(273, 2, 18, '207612', '00178', '1970-01-01', 'Bimala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-15', '2006-01-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(274, 2, 18, '207613', '00183', '1970-01-01', 'shubheksha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-30', '2006-02-12', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(275, 2, 18, '207614', '00185', '1970-01-01', 'Rajan Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-10-03', '2003-01-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(276, 2, 18, '207615', '00186', '1970-01-01', 'Yasoda Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-04-15', '2005-07-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(277, 2, 18, '207616', '00198', '1970-01-01', 'Prabina Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-08-08', '2003-11-24', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(278, 2, 18, '207617', '00249', '1970-01-01', 'Sita Majhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-07-20', '2003-11-06', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(279, 2, 18, '207618', '00507', '1970-01-01', 'Sudip Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2058-09-04', '2001-12-19', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(280, 2, 18, '207619', '00508', '1970-01-01', 'Jalpana Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-01-10', '2003-04-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(281, 2, 18, '207620', '00553', '1970-01-01', 'Nyusan Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-21', '2006-04-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(282, 2, 18, '207621', '00555', '1970-01-01', 'Sudana Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-16', '2006-12-02', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(283, 2, 18, '207622', '00556', '1970-01-01', 'Samir Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-14', '2007-03-28', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(284, 2, 18, '207623', '00557', '1970-01-01', 'Sunil Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-29', '2007-03-13', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(285, 2, 18, '207624', '00558', '1970-01-01', 'Krishna Bahadur Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-08-13', '2004-11-28', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(286, 2, 18, '207625', '00559', '1970-01-01', 'Prajwal Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-02-24', '2005-06-06', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(287, 2, 18, '207626', '00605', '1970-01-01', 'Radhika Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-01-29', '2003-05-12', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(288, 2, 18, '207627', '00562', '1970-01-01', 'Sarita Giri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-08-09', '2006-11-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(289, 2, 18, '207628', '00669', '1970-01-01', 'Sabitra Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-02-25', '2003-06-08', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(290, 2, 18, '207629', '00670', '1970-01-01', 'Binita Gurung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-15', '2004-12-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(291, 2, 18, '207630', '76811', '1970-01-01', 'Manika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-01', '2005-08-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(292, 2, 18, '207631', '76812', '1970-01-01', 'Enisa Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-02-19', '2007-06-02', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(293, 2, 18, '207632', '76813', '1970-01-01', 'Sarita Bharati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-30', '2007-02-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(294, 2, 18, '207633', '76814', '1970-01-01', 'Anuradha Gurung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-19', '2007-12-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:01:36', '2020-05-12 04:01:36'),
(295, 2, 19, '207601', '00789', '1970-01-01', 'Dinesh rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-16', '2007-04-29', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(296, 2, 19, '207602', '00785', '1970-01-01', 'Jesan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2066-06-03', '2009-09-19', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(297, 2, 19, '207603', '00270', '1970-01-01', 'Sharmila Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-03-16', '2002-06-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(298, 2, 19, '207604', '00207', '1970-01-01', 'Dip Kiran Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-04-18', '2007-08-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(299, 2, 19, '207605', '00690', '1970-01-01', 'Jamuna Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-02-22', '2004-06-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(300, 2, 19, '207606', '00693', '1970-01-01', 'Astimaya Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-11-22', '2004-03-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(301, 2, 19, '207607', '00208', '1970-01-01', 'Rasmi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065-09-16', '2008-12-31', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(302, 2, 19, '207608', '00220', '1970-01-01', 'Tara Devi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-08', '2007-01-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(303, 2, 19, '207609', '00212', '1970-01-01', 'Mandip Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-16', '2004-12-31', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(304, 2, 19, '207610', '00787', '1970-01-01', 'Pal Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-23', '2006-04-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(305, 2, 19, '207611', '00217', '1970-01-01', 'Ambi Kala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-11', '2006-05-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(306, 2, 19, '207612', '00218', '1970-01-01', 'Hasta Kala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-06-22', '2005-10-08', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(307, 2, 19, '207613', '00788', '1970-01-01', 'Chhiring Tasi Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-01-10', '2004-04-22', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(308, 2, 19, '207614', '00790', '1970-01-01', 'Da Chhemi Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-09-29', '2004-01-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(309, 2, 19, '207615', '00339', '1970-01-01', 'Pratima Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-08', '2006-03-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(310, 2, 19, '207616', '00265', '1970-01-01', 'Hebhan Deep Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-08-01', '2007-11-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(311, 2, 19, '207617', '00786', '1970-01-01', 'Pramish Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-09', '2005-06-23', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(312, 2, 19, '207618', '00791', '1970-01-01', 'Ashika Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-09-13', '2005-12-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(313, 2, 19, '207619', '00367', '1970-01-01', 'Dipkala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-03', '2006-04-16', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(314, 2, 19, '207620', '00271', '1970-01-01', 'Kailash Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-03-23', '2005-07-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(315, 2, 19, '207621', '00339', '1970-01-01', 'Nirajan Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-22', '2005-05-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(316, 2, 19, '207622', '00289', '1970-01-01', 'Amar Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-07-21', '2003-11-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(317, 2, 19, '207623', '00287', '1970-01-01', 'Prasanta Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-17', '2007-03-31', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(318, 2, 19, '207624', '00255', '1970-01-01', 'Dawa Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-11', '2004-08-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:45', '2020-05-12 04:02:45'),
(319, 2, 19, '207625', '00253', '1970-01-01', 'Menuka Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-12', '2004-03-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(320, 2, 19, '207626', '00228', '1970-01-01', 'Tek Kala Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-19', '2005-09-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(321, 2, 19, '207627', '00206', '1970-01-01', 'Aas Maya Tamang ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-10-07', '2008-01-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(322, 2, 19, '207628', '002684', '1970-01-01', 'Rabin Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-04-09', '2004-07-24', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(323, 2, 19, '207629', '00685', '1970-01-01', 'Dhan Puri Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2058-03-24', '2001-07-08', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(324, 2, 19, '207630', '00285', '1970-01-01', 'Yogesh Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-11-26', '2003-03-10', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(325, 2, 19, '207631', '00262', '1970-01-01', 'Goma Devi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-09', '2006-04-22', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(326, 2, 19, '207632', '00793', '1970-01-01', 'Yashoda Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-08', '2004-12-23', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(327, 2, 19, '207633', '00263', '1970-01-01', 'Mandip Rai \'B\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-08-29', '2003-12-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(328, 2, 19, '207634', '00222', '1970-01-01', 'Dhanalaxmi Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-26', '2006-07-10', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:02:46', '2020-05-12 04:02:46'),
(329, 2, 22, '207601', '00134', '1970-01-01', 'Dipak Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-06-11', '2004-09-27', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:49', '2020-05-12 04:16:49'),
(330, 2, 22, '207602', '00154', '1970-01-01', 'Asha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-08', '2005-08-24', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:49', '2020-05-12 04:16:49'),
(331, 2, 22, '207603', '00159', '1970-01-01', 'Binda Nepali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2057-05-19', '2000-09-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:49', '2020-05-12 04:16:49'),
(332, 2, 22, '207604', '00162', '1970-01-01', 'Nisha Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-20', '2006-07-04', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:49', '2020-05-12 04:16:49'),
(333, 2, 22, '207605', '00165', '1970-01-01', 'Sujan Nepali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-10', '2006-04-23', ' Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:49', '2020-05-12 04:16:49'),
(334, 2, 22, '207606', '00168', '1970-01-01', 'Sandesh Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-10-22', '2006-02-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(335, 2, 22, '207607', '00169', '1970-01-01', 'Sagar Sundash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-10', '2007-01-24', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(336, 2, 22, '207608', '00170', '1970-01-01', 'Isha Koirala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-05', '2006-04-18', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(337, 2, 22, '207609', '00171', '1970-01-01', 'Sunita B.K.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-05', '2004-08-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(338, 2, 22, '207610', '00291', '1970-01-01', 'Debhid Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-19', '2006-07-03', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(339, 2, 22, '207611', '00293', '1970-01-01', 'Smita B.K.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-02-12', '2003-05-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(340, 2, 22, '207612', '00295', '1970-01-01', 'Binu Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-07', '2007-01-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(341, 2, 22, '207613', '00297', '1970-01-01', 'Menuka Sarki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-07-19', '2006-11-05', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(342, 2, 22, '207614', '00298', '1970-01-01', 'Bibek Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-05-16', '2006-09-01', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(343, 2, 22, '207615', '00299', '1970-01-01', 'Bikram Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-04-09', '2006-07-25', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(344, 2, 22, '207616', '00300', '1970-01-01', 'Easter Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-09-10', '2005-12-25', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(345, 2, 22, '207617', '00345', '1970-01-01', 'Santosh Niroula ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-09-02', '2006-12-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(346, 2, 22, '207618', '00346', '1970-01-01', 'Nira Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-15', '2007-04-28', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(347, 2, 22, '207619', '00347', '1970-01-01', 'Manil Rokka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-27', '2006-04-09', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(348, 2, 22, '207620', '00348', '1970-01-01', 'Bandana Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-11-04', '2008-02-16', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(349, 2, 22, '207621', '00354', '1970-01-01', 'Debit Katuwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-15', '2005-08-31', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(350, 2, 22, '207622', '00355', '1970-01-01', 'Asim Damai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-20', '2004-09-05', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(351, 2, 22, '207623', '00359', '1970-01-01', 'Bikash Nepali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2056-10-21', '2000-02-04', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50');
INSERT INTO `students` (`id`, `session_id`, `school_class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob_bs`, `dob_ad`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES
(352, 2, 22, '207624', '00360', '1970-01-01', 'Shusila Bhattarai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-01-01', '2003-04-14', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:50', '2020-05-12 04:16:50'),
(353, 2, 22, '207625', '00377', '1970-01-01', 'Chhatra Bahadur B.K.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-03-02', '2007-06-16', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:51', '2020-05-12 04:16:51'),
(354, 2, 22, '207626', '00380', '1970-01-01', 'Manisa Sarki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-01-02', '2005-04-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:51', '2020-05-12 04:16:51'),
(355, 2, 22, '207627', '00382', '1970-01-01', 'Lumina Charmakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-12-22', '2003-04-05', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:51', '2020-05-12 04:16:51'),
(356, 2, 22, '207628', '00447', '1970-01-01', 'Prakash Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-10-20', '2005-02-02', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:16:51', '2020-05-12 04:16:51'),
(357, 2, 23, '207601', '00025', '1970-01-01', 'Sabita Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-12-30', '2007-04-13', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(358, 2, 23, '207602', '00026', '1970-01-01', 'Sabina Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-07', '2007-02-19', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(359, 2, 23, '207603', '00029', '1970-01-01', 'Kamala Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-01-07', '2006-04-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(360, 2, 23, '207604', '00030', '1970-01-01', 'Nisha B.k.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-10-16', '2003-01-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(361, 2, 23, '207605', '00031', '1970-01-01', 'Namuna Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-15', '2006-10-01', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(362, 2, 23, '207606', '00037', '1970-01-01', 'Somraj Bhandari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-12-06', '2004-03-19', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(363, 2, 23, '207607', '00039', '1970-01-01', 'Shiva bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-04-10', '2003-07-26', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(364, 2, 23, '207608', '00093', '1970-01-01', 'Premkala B.k. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-10-28', '2004-02-11', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:17:42', '2020-05-12 04:17:42'),
(365, 2, 24, '207601', '00170', '1970-01-01', 'Pasi Sherpa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-12', '2006-06-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(366, 2, 24, '207602', '00171', '1970-01-01', 'Sangey Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-28', '2006-06-11', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(367, 2, 24, '207603', '00176', '1970-01-01', 'Gyaljen Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-02-24', '2002-06-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(368, 2, 24, '207604', '00177', '1970-01-01', 'Sandesh  Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-07', '2007-01-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(369, 2, 24, '207605', '00175', '1970-01-01', 'Karma Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065-04-06', '2008-07-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(370, 2, 24, '207606', '00174', '1970-01-01', 'Lakpa Sonam Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-06-04', '2004-09-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(371, 2, 24, '207607', '00173', '1970-01-01', 'Rohit Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-11-03', '2004-02-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:27', '2020-05-12 04:18:27'),
(372, 2, 25, '207601', '00170', '1970-01-01', 'Pasi Sherpa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-03-12', '2006-06-26', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(373, 2, 25, '207602', '00171', '1970-01-01', 'Sangey Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-28', '2006-06-11', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(374, 2, 25, '207603', '00176', '1970-01-01', 'Gyaljen Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-02-24', '2002-06-07', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(375, 2, 25, '207604', '00177', '1970-01-01', 'Sandesh  Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-10-07', '2007-01-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(376, 2, 25, '207605', '00175', '1970-01-01', 'Karma Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2065-04-06', '2008-07-21', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(377, 2, 25, '207606', '00174', '1970-01-01', 'Lakpa Sonam Sherpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-06-04', '2004-09-20', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(378, 2, 25, '207607', '00173', '1970-01-01', 'Rohit Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-11-03', '2004-02-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:18:59', '2020-05-12 04:18:59'),
(379, 2, 26, '207601', '00059', '1970-01-01', 'Bishal Basnet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-11', '2006-05-25', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:07', '2020-05-12 04:21:07'),
(380, 2, 26, '207602', '00065', '1970-01-01', 'Sabina Charmakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-08', '2005-08-24', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:07', '2020-05-12 04:21:07'),
(381, 2, 26, '207603', '00143', '1970-01-01', 'Kunta Devi Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-02-01', '2002-05-15', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:07', '2020-05-12 04:21:07'),
(382, 2, 26, '207604', '00063', '1970-01-01', 'Sabita Lamichhane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-12-08', '2006-03-21', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:07', '2020-05-12 04:21:07'),
(383, 2, 26, '207605', '00066', '1970-01-01', 'Yubaraj Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2059-10-25', '2003-02-08', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:08', '2020-05-12 04:21:08'),
(384, 2, 26, '207606', '00067', '1970-01-01', 'Santosh Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060-06-12', '2003-09-29', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:08', '2020-05-12 04:21:08'),
(385, 2, 26, '207607', '00069', '1970-01-01', 'Birendra Adhikari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-02-03', '2006-05-17', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:08', '2020-05-12 04:21:08'),
(386, 2, 26, '207608', '00086', '1970-01-01', 'Arun Lamichhane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-09-15', '2004-12-30', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:08', '2020-05-12 04:21:08'),
(387, 2, 26, '207609', '00060', '1970-01-01', 'Pramisha Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-05-14', '2005-08-30', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:08', '2020-05-12 04:21:08'),
(388, 2, 27, '207601', '00056', '1970-01-01', 'Sudiksha Gurung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-06-26', '2006-10-12', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(389, 2, 27, '207602', '000189', '1970-01-01', 'Bishow Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2062-02-02', '2005-05-15', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(390, 2, 27, '207603', '00054', '1970-01-01', 'Babita Karki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-11-02', '2007-02-14', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(391, 2, 27, '207604', '00075', '1970-01-01', 'Salina Tamang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-01', '2004-08-17', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(392, 2, 27, '207605', '00164', '1970-01-01', 'Jyoti Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2063-07-03', '2006-10-20', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(393, 2, 27, '207606', '00055', '1970-01-01', 'Dilip Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2064-01-05', '2007-04-18', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34'),
(394, 2, 27, '207607', '00069', '1970-01-01', 'Suresh Bhujel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2061-05-10', '2004-08-26', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-12 04:21:34', '2020-05-12 04:21:34');

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
(11, 'Nepali', 75, 23, NULL, NULL, 4, 1, '2020-05-11 04:38:00', '2020-05-12 00:14:56'),
(12, 'English', 75, 23, NULL, NULL, 4, 1, '2020-05-11 04:39:28', '2020-05-12 00:15:04'),
(13, 'Mathematics', 100, 30, NULL, NULL, 4, 1, '2020-05-11 05:20:52', '2020-05-11 05:22:29'),
(14, 'Social Studies and Population Education', 75, 23, NULL, NULL, 4, 1, '2020-05-11 05:21:59', '2020-05-12 00:15:14'),
(15, 'Science and Environment', 75, 23, NULL, NULL, 4, 1, '2020-05-11 05:23:19', '2020-05-12 00:15:22'),
(16, 'Health and Physical Education', 30, 9, NULL, NULL, 2, 1, '2020-05-11 05:32:05', '2020-05-12 00:15:39'),
(17, 'Moral Education', 25, 8, NULL, NULL, 2, 1, '2020-05-11 05:37:08', '2020-05-12 00:15:46'),
(18, 'Occupation, Business and Technology Education', 50, 15, NULL, NULL, 4, 1, '2020-05-11 05:38:27', '2020-05-12 00:15:28'),
(19, 'Optional Computer Education', 50, 15, NULL, NULL, 4, 1, '2020-05-11 05:40:20', '2020-05-12 00:15:34'),
(20, 'Optional Mathematics', 100, 30, NULL, NULL, 4, 1, '2020-05-11 05:40:39', '2020-05-11 05:40:39');

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
(1, 'Super Admin', 'lochan2075@gmail.com', NULL, '$2y$10$4LwRiwsezJOVgtlzUspblOGEvqgo21VYXJHNKUjdfOnHZa9OfiX3q', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-03-17 11:03:32', '2020-03-17 11:03:32', 'VDoXZKpRdf7GV1RpwFUWVBYWHhod2LVyf5tRyGFBUsI0JVgdLx6hVsuyJN7h'),
(2, 'Thulung Dudhkoshi Rural Municipality', 'thulungdudhkoshirm@gmail.com', NULL, '$2y$10$Br45aIa81y8wf18gETepvetGnthlnAdgeWt9FYwCXsmLtR2D5Zkrq', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-05-12 00:17:42', '2020-05-12 00:33:00', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grade_sheet_settings`
--
ALTER TABLE `grade_sheet_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `school_classes`
--
ALTER TABLE `school_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `school_class_sections`
--
ALTER TABLE `school_class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `school_class_section_subjects`
--
ALTER TABLE `school_class_section_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
