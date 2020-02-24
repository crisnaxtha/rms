CREATE TABLE `exam_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theory_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `practical_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_schedules_id` int(10) unsigned DEFAULT NULL,
  `student_id` int(10) unsigned DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_results_exam_schedules_id_foreign` (`exam_schedules_id`),
  KEY `exam_results_student_id_foreign` (`student_id`),
  CONSTRAINT `exam_results_exam_schedules_id_foreign` FOREIGN KEY (`exam_schedules_id`) REFERENCES `exam_schedules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `exam_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int(10) unsigned DEFAULT NULL,
  `school_class_section_subject_id` int(10) unsigned DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` time DEFAULT NULL,
  `end_from` time DEFAULT NULL,
  `room_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_schedules_school_class_section_subject_id_foreign` (`school_class_section_subject_id`),
  KEY `exam_schedules_exam_id_foreign` (`exam_id`),
  CONSTRAINT `exam_schedules_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_schedules_school_class_section_subject_id_foreign` FOREIGN KEY (`school_class_section_subject_id`) REFERENCES `school_class_section_subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `exams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `grade_sheet_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `grades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` double(10,2) DEFAULT NULL,
  `mark_from` double(10,2) DEFAULT NULL,
  `mark_upto` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `my_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `school_class_section_subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_class_section_id` int(10) unsigned DEFAULT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_class_section_subjects_school_class_section_id_foreign` (`school_class_section_id`),
  KEY `school_class_section_subjects_subject_id_foreign` (`subject_id`),
  CONSTRAINT `school_class_section_subjects_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `school_class_section_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `school_class_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_class_id` int(10) unsigned DEFAULT NULL,
  `section_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_class_sections_school_class_id_foreign` (`school_class_id`),
  KEY `school_class_sections_section_id_foreign` (`section_id`),
  CONSTRAINT `school_class_sections_school_class_id_foreign` FOREIGN KEY (`school_class_id`) REFERENCES `school_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `school_class_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `school_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_classes_class_id_foreign` (`class_id`),
  KEY `school_classes_school_id_foreign` (`school_id`),
  CONSTRAINT `school_classes_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `school_classes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `established` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schools_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_class_section_id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_school_class_section_id_foreign` (`school_class_section_id`),
  CONSTRAINT `students_school_class_section_id_foreign` FOREIGN KEY (`school_class_section_id`) REFERENCES `school_class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theory_full_marks` int(11) DEFAULT NULL,
  `practical_full_marks` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_super` tinyint(1) DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `student_code` int(11) DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` int(10) unsigned DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_student_code_unique` (`student_code`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 
 
INSERT INTO `exam_results` ( `id`, `theory_attendance`, `practical_attendance`, `exam_schedules_id`, `student_id`, `theory_get_marks`, `theory_grade`, `practical_get_marks`, `practical_grade`, `total_marks`, `final_grade`, `grade_point`, `grade_credit_hour`, `description`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'ABS', 'ABS', '1', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('2', 'ABS', 'ABS', '2', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('3', 'ABS', 'ABS', '3', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('4', 'ABS', 'ABS', '4', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('5', 'ABS', 'ABS', '5', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('6', 'ABS', 'ABS', '6', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('7', 'ABS', 'ABS', '7', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('8', 'ABS', 'ABS', '8', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', ''), 
('9', 'ABS', 'ABS', '14', '1', '', '', '', '', '', '', '', '', '', '', '2020-01-28 07:01:01', '');  


INSERT INTO `exam_schedules` ( `id`, `exam_id`, `school_class_section_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES 
('1', '1', '1', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('2', '1', '2', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('3', '1', '3', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('4', '1', '4', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('5', '1', '5', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('6', '1', '6', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('7', '1', '7', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('8', '1', '8', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', ''), 
('10', '1', '19', '', '00:48:45', '00:48:45', '', '100', '40', '', '0', '', ''), 
('11', '1', '20', '', '00:48:45', '00:48:45', '', '100', '40', '', '0', '', ''), 
('12', '1', '21', '', '00:48:45', '00:48:45', '', '100', '40', '', '0', '', ''), 
('13', '1', '22', '', '00:48:45', '00:48:45', '', '100', '40', '', '0', '', ''), 
('14', '1', '9', '', '18:53:45', '18:53:45', '', '100', '40', '', '0', '', '');  


INSERT INTO `exams` ( `id`, `title`, `session_id`, `description`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'Last Terminal', '', '', '1', '2020-01-25 13:05:42', '2020-01-25 13:05:42');  


 


INSERT INTO `grades` ( `id`, `title`, `point`, `mark_from`, `mark_upto`, `description`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'A+', '4.00', '90.00', '100.00', 'Outstanding', '0', '2020-01-23 07:25:58', '2020-01-23 07:25:58'), 
('2', 'A', '3.60', '80.00', '90.00', 'Excellent', '0', '2020-01-23 07:25:58', '2020-01-23 07:25:58'), 
('3', 'B+', '3.20', '70.00', '80.00', 'Very good', '0', '2020-01-23 07:25:58', '2020-01-23 07:25:58'), 
('4', 'B', '2.80', '60.00', '70.00', 'Good', '0', '2020-01-23 07:25:58', '2020-01-23 07:25:58'), 
('5', 'C+', '2.40', '50.00', '60.00', 'Satisfactory', '0', '2020-01-23 07:25:58', '2020-01-23 07:25:58'), 
('6', 'C', '2.00', '40.00', '50.00', 'Acceptable', '0', '2020-01-23 07:25:59', '2020-01-23 07:25:59'), 
('7', 'D+', '1.60', '30.00', '40.00', 'Partially acceptable', '0', '2020-01-23 07:25:59', '2020-01-23 07:25:59'), 
('8', 'D', '1.20', '20.00', '30.00', 'Insufficient', '0', '2020-01-23 07:25:59', '2020-01-23 07:25:59'), 
('9', 'E', '0.80', '0.00', '20.00', 'Very insufficient', '0', '2020-01-23 07:25:59', '2020-01-23 07:25:59');  


INSERT INTO `migrations` ( `id`, `migration`, `batch`) VALUES 
('1', '2014_01_18_065719_create_schools_table', '1'), 
('2', '2014_10_12_100000_create_password_resets_table', '1'), 
('3', '2018_09_04_120341_create_roles_table', '1'), 
('4', '2018_09_04_123339_create_permissions_table', '1'), 
('5', '2018_10_04_124435_create_permission_role_table', '1'), 
('6', '2018_10_12_000000_create_users_table', '1'), 
('7', '2019_12_20_112449_create_my_classes_table', '1'), 
('8', '2019_12_20_112542_create_school_classes_table', '1'), 
('9', '2019_12_20_112542_create_sections_table', '1'), 
('10', '2019_12_20_113148_create_school_class_sections_table', '1'), 
('11', '2019_12_23_101558_create_subjects_table', '1'), 
('12', '2019_12_23_112821_create_exams_table', '1'), 
('13', '2019_12_24_061735_create_sessions_table', '1'), 
('14', '2019_12_24_063144_create_school_class_section_subjects_table', '1'), 
('15', '2019_12_24_073052_create_exam_schedules_table', '1'), 
('16', '2020_01_07_132207_create_grades_table', '1'), 
('17', '2020_01_07_161153_create_students_table', '1'), 
('21', '2020_01_12_100826_create_exam_results_table', '2'), 
('22', '2020_01_25_182533_create_grade_sheet_settings_table', '2');  


INSERT INTO `my_classes` ( `id`, `title`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'Class V', '1', '2020-01-23 07:51:32', '2020-01-23 07:51:32'), 
('2', 'Class VIII', '1', '2020-01-23 07:51:32', '2020-01-23 07:51:32');  


 


INSERT INTO `permission_role` ( `permission_id`, `role_id`) VALUES 
('44', '1'), 
('45', '1'), 
('46', '1'), 
('47', '1'), 
('48', '1'), 
('49', '1'), 
('50', '1'), 
('51', '1'), 
('52', '1'), 
('53', '1'), 
('54', '1'), 
('55', '1'), 
('56', '1'), 
('57', '1'), 
('58', '1'), 
('59', '1'), 
('60', '1'), 
('61', '1'), 
('62', '1'), 
('63', '1'), 
('64', '1'), 
('65', '1'), 
('66', '1'), 
('67', '1'), 
('68', '1'), 
('69', '1'), 
('70', '1'), 
('71', '1'), 
('72', '1'), 
('73', '1'), 
('74', '1'), 
('75', '1'), 
('76', '1'), 
('77', '1'), 
('78', '1'), 
('79', '1'), 
('80', '1'), 
('81', '1'), 
('82', '1'), 
('83', '1'), 
('84', '1'), 
('85', '1'), 
('86', '1'), 
('87', '1'), 
('88', '1'), 
('89', '1'), 
('90', '1');  


INSERT INTO `permissions` ( `id`, `name`, `slug`, `description`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES 
('44', 'School List', 'school-list', '', '', '1', '', ''), 
('45', 'School Create', 'school-create', '', '', '2', '', ''), 
('46', 'School Edit', 'school-edit', '', '', '3', '', ''), 
('47', 'School Delete', 'school-delete', '', '', '5', '', ''), 
('48', 'Class List', 'class-list', '', '', '1', '', ''), 
('49', 'Class Create', 'class-create', '', '', '2', '', ''), 
('50', 'Class  Edit', 'class-edit', '', '', '3', '', ''), 
('51', 'Class  Delete', 'class-delete', '', '', '5', '', ''), 
('52', 'Section List', 'section-list', '', '', '1', '', ''), 
('53', 'Section Create', 'section-create', '', '', '2', '', ''), 
('54', 'Section Edit', 'section-edit', '', '', '3', '', ''), 
('55', 'Section Delete', 'section-delete', '', '', '5', '', ''), 
('56', 'Assign Class List', 'assign-class-list', '', '', '1', '', ''), 
('57', 'Assign Class Create', 'assign-class-create', '', '', '2', '', ''), 
('58', 'Assign Class Delete', 'assign-class-delete', '', '', '5', '', ''), 
('59', 'GradeSheet Setting', 'header-setting', '', '', '1', '', ''), 
('60', 'Assign Section List', 'assign-section-list', '', '', '1', '', ''), 
('61', 'Assign Section Create', 'assign-section-create', '', '', '2', '', ''), 
('62', 'Assign Section Delete', 'assign-section-delete', '', '', '5', '', ''), 
('63', 'Database Table List', 'database-table-list', '', '', '1', '', ''), 
('64', 'Database Backup Download', 'database-backup-download', '', '', '2', '', ''), 
('65', 'Database Backup In Server', 'database-backup-in-server', '', '', '3', '', ''), 
('66', 'Assign Subject List', 'assign-subject-list', '', '', '1', '', ''), 
('67', 'Assign Subject Create', 'assign-subject-create', '', '', '2', '', ''), 
('68', 'Assign Subject Delete', 'assign-subject-delete', '', '', '5', '', ''), 
('69', 'Exam List', 'exam-list', '', '', '1', '', ''), 
('70', 'Exam Create', 'exam-create', '', '', '2', '', ''), 
('71', 'Exam Edit', 'exam-edit', '', '', '3', '', ''), 
('72', 'Exam Delete', 'exam-delete', '', '', '5', '', ''), 
('73', 'Grade List', 'grade-list', '', '', '1', '', ''), 
('74', 'Grade Create', 'grade-create', '', '', '2', '', ''), 
('75', 'Grade Edit', 'grade-edit', '', '', '3', '', ''), 
('76', 'Grade Delete', 'grade-delete', '', '', '5', '', ''), 
('77', 'Exam Schedule List', 'exam-schedule-list', '', '', '1', '', ''), 
('78', 'Exam Schedule Create', 'exam-schedule-create', '', '', '2', '', ''), 
('79', 'Mark Register List', 'mark-register-list', '', '', '1', '', ''), 
('80', 'Mark Register Create', 'mark-register-create', '', '', '2', '', ''), 
('81', 'Student List', 'student-list', '', '', '1', '', ''), 
('82', 'Student Create', 'student-create', '', '', '2', '', ''), 
('83', 'Student Edit', 'student-edit', '', '', '3', '', ''), 
('84', 'Student Show', 'student-show', '', '', '4', '', ''), 
('85', 'Student Delete', 'student-delete', '', '', '5', '', ''), 
('86', 'Subject List', 'subject-list', '', '', '1', '', ''), 
('87', 'Subject Create', 'subject-create', '', '', '2', '', ''), 
('88', 'Subject Edit', 'subject-edit', '', '', '3', '', ''), 
('89', 'Subject Show', 'subject-show', '', '', '4', '', ''), 
('90', 'Subject Delete', 'subject-delete', '', '', '5', '', '');  


INSERT INTO `roles` ( `id`, `name`, `slug`, `description`, `order`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'Super Admin', 'super-admin', '', '', '1', '2020-01-25 12:13:56', '2020-01-25 12:13:56'), 
('2', 'Admin', 'admin', '', '', '1', '2020-01-25 17:59:42', '2020-01-25 17:59:42'), 
('3', 'Users', 'users', '', '', '1', '2020-01-25 17:59:56', '2020-01-25 17:59:56');  


INSERT INTO `school_class_section_subjects` ( `id`, `school_class_section_id`, `subject_id`, `description`, `status`, `created_at`, `updated_at`) VALUES 
('1', '2', '1', '', '1', '', ''), 
('2', '2', '2', '', '1', '', ''), 
('3', '2', '3', '', '1', '', ''), 
('4', '2', '4', '', '1', '', ''), 
('5', '2', '5', '', '1', '', ''), 
('6', '2', '6', '', '1', '', ''), 
('7', '2', '7', '', '1', '', ''), 
('8', '2', '8', '', '1', '', ''), 
('9', '2', '9', '', '1', '', ''), 
('10', '3', '1', '', '1', '', ''), 
('11', '3', '2', '', '1', '', ''), 
('12', '3', '3', '', '1', '', ''), 
('13', '3', '4', '', '1', '', ''), 
('14', '3', '5', '', '1', '', ''), 
('15', '3', '6', '', '1', '', ''), 
('16', '3', '7', '', '1', '', ''), 
('17', '3', '8', '', '1', '', ''), 
('18', '3', '9', '', '1', '', ''), 
('19', '4', '1', '', '1', '', ''), 
('20', '4', '2', '', '1', '', ''), 
('21', '4', '3', '', '1', '', ''), 
('22', '4', '9', '', '1', '', '');  


INSERT INTO `school_class_sections` ( `id`, `school_class_id`, `section_id`, `created_at`, `updated_at`) VALUES 
('2', '2', '1', '', ''), 
('3', '4', '1', '', ''), 
('4', '3', '1', '', '');  


INSERT INTO `school_classes` ( `id`, `school_id`, `class_id`, `created_at`, `updated_at`) VALUES 
('2', '2', '1', '', ''), 
('3', '2', '2', '', ''), 
('4', '1', '1', '', ''), 
('5', '1', '2', '', '');  


INSERT INTO `schools` ( `id`, `title`, `established`, `description`, `code`, `created_at`, `updated_at`) VALUES 
('1', 'Shanti Niketan School, Baneshwor', '', '', '', '2020-01-25 10:19:58', '2020-01-25 10:19:58'), 
('2', 'Shanti School, Jorpati', '', '', '', '2020-01-25 10:28:28', '2020-01-25 10:28:28');  


INSERT INTO `sections` ( `id`, `title`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'A', '1', '2020-01-25 10:24:45', '2020-01-25 12:59:32');  


 


INSERT INTO `students` ( `id`, `school_class_section_id`, `admission_no`, `roll_no`, `admission_date`, `first_name`, `last_name`, `image`, `mobile_no`, `email`, `province`, `city`, `religion`, `dob`, `gender`, `current_address`, `permanent_address`, `blood_group`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_occupation`, `guardian_address`, `guardian_email`, `guardian_phone`, `father_pic`, `mother_pic`, `guardian_pic`, `previous_school`, `height`, `weight`, `measurement_date`, `status`, `created_at`, `updated_at`) VALUES 
('1', '2', '', '1', '2020-01-28', 'Lakpa Sherpa', '', '', '', '', '', '', '', '1995-02-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2020-01-28 18:50:32', '2020-01-28 18:50:32'), 
('3', '4', '', '1', '2020-01-28', 'Ram Kumar Bhujel', '', '', '', '', '', '', '', '1993-04-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2020-01-28 19:03:06', '2020-01-28 19:03:06'), 
('4', '4', '', '2', '2020-01-28', 'Sammer Bhandari', '', '', '', '', '', '', '', '1993-05-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '2020-01-28 19:03:38', '2020-01-28 19:03:38');  


INSERT INTO `subjects` ( `id`, `title`, `theory_full_marks`, `practical_full_marks`, `credit_hour`, `status`, `created_at`, `updated_at`) VALUES 
('1', 'Compulsory English', '75', '25', '4', '1', '2020-01-23 07:28:21', '2020-01-23 07:28:21'), 
('2', 'Compulsory Nepali', '75', '25', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('3', 'Compulsory Mathematics', '100', '', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('4', 'Compulsory Social Studies and Population Education', '75', '25', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('5', 'Compulsory Science and Environment Education', '75', '25', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('6', 'Compulsory Moral Education', '50', '20', '2', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('7', 'Compulsory Health and Physical Education', '50', '20', '2', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('8', 'Compulsory Occupation, Business and Technology Education', '75', '25', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22'), 
('9', 'Optional Computer Education', '75', '25', '4', '1', '2020-01-23 07:28:22', '2020-01-23 07:28:22');  


INSERT INTO `users` ( `id`, `name`, `email`, `email_verified_at`, `password`, `username`, `avatar`, `phone`, `type`, `role_super`, `role_id`, `code`, `student_code`, `gender`, `blood_group`, `nationality`, `phone_number`, `address`, `bio`, `section_id`, `forgotten_password_time`, `status`, `deleted_at`, `created_at`, `updated_at`, `remember_token`) VALUES 
('1', 'Super Admin', 'lochan2075@gmail.com', '', '$2y$10$cTj4bTSBtHRe.xK3Wixn8u2w5j40kl1t9hpYfrShdV49c4y2PFZUO', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '1', '', '2020-01-23 07:25:48', '2020-01-28 18:42:18', ''); 