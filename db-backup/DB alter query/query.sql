alter table `grade_sheet_settings` add `title_nepali_1` varchar(191) null default null after `title_6`;
alter table `grade_sheet_settings` add `title_nepali_2` varchar(191) null default null after `title_nepali_1`;
alter table `grade_sheet_settings` add `title_nepali_3` varchar(191) null default null after `title_nepali_2`;
alter table `grade_sheet_settings` add `title_nepali_4` varchar(191) null default null after `title_nepali_3`;
alter table `grade_sheet_settings` add `title_nepali_5` varchar(191) null default null after `title_nepali_4`;
alter table `grade_sheet_settings` add `title_nepali_6` varchar(191) null default null after `title_nepali_5`;
alter table `grade_sheet_settings` add `description_1` text null default null after `title_nepali_6`;
alter table `grade_sheet_settings` add `description_2` text null default null after `description_1`;
alter table `grade_sheet_settings` add `activation_key` varchar(191) null default null after `print_date`;

alter table `students` add `name_nepali` varchar(191) null default null after `last_name`;

alter table `sessions` add `session_ad` varchar(191) null DEFAULT null after `session`;

alter TABLE `schools` add `title_nepali` varchar(191) null DEFAULT null after `title`;

alter table `my_classes` add `title_nepali` varchar(191) null DEFAULT null after `title`
