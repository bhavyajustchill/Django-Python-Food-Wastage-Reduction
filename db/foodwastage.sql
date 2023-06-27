-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 06:40 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodwastage`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add food', 7, 'add_food'),
(20, 'Can change food', 7, 'change_food'),
(21, 'Can delete food', 7, 'delete_food'),
(22, 'Can add order', 8, 'add_order'),
(23, 'Can change order', 8, 'change_order'),
(24, 'Can delete order', 8, 'delete_order'),
(25, 'Can add profile', 9, 'add_profile'),
(26, 'Can change profile', 9, 'change_profile'),
(27, 'Can delete profile', 9, 'delete_profile'),
(28, 'Can view log entry', 1, 'view_logentry'),
(29, 'Can view permission', 2, 'view_permission'),
(30, 'Can view group', 3, 'view_group'),
(31, 'Can view user', 4, 'view_user'),
(32, 'Can view content type', 5, 'view_contenttype'),
(33, 'Can view session', 6, 'view_session'),
(34, 'Can view food', 7, 'view_food'),
(35, 'Can view order', 8, 'view_order'),
(36, 'Can view profile', 9, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$LBK39J2dEd8CTuyKArmPce$qrlXR/LzdUEumXIiJMFQG1VdTXfNEiBLFgroVw1xuRg=', '2022-08-03 04:39:26.303096', 0, 'user', 'User', 'Food', 'user@gmail.com', 0, 1, '2021-09-09 07:24:24.990705'),
(2, 'pbkdf2_sha256$100000$N1LGO3qzHWsE$mHfUXUt8r6V1PtYMdgPrhAac4LLBuVVCKWY6mqEf2lk=', '2021-09-09 07:33:58.414539', 0, 'ameerkhan', 'Mohamed', 'AmeerKhan', 'khan@gmail.com', 0, 1, '2021-09-09 07:33:57.790533'),
(3, 'pbkdf2_sha256$260000$f26VXfmdBiBXf1A6lQOSg2$JIZFBFioOvd8alp3rAd7CR99fZ3CIO6Nx/2mRZD/lUA=', '2021-09-09 10:14:34.114897', 0, 'selvam', 'Panneer', 'selvam', 'user@gmail.com', 0, 1, '2021-09-09 10:14:33.729475'),
(4, 'pbkdf2_sha256$260000$XI59KDUktcfvMav6a0rpy7$QSVIHF2/6E5OYdy9IkMjCCqlYqCFXOmtNXXS11Rhbb0=', '2021-09-09 11:52:37.041422', 0, 'fooduser', 'Panneer', 'R', 'panner224@gmail.com', 0, 1, '2021-09-09 10:57:05.526599'),
(5, 'pbkdf2_sha256$260000$k4Q8NzjN7G4px97QQcYrZy$1TG8CAnJG9XLf4KIp6CvRUvkwRRKZNgJ0igSLnEE+SQ=', '2021-09-09 11:47:17.900743', 0, 'panner224', 'Panneer', 'R', 'panner225@gmail.com', 0, 1, '2021-09-09 11:47:17.487491'),
(6, 'pbkdf2_sha256$260000$4hRhzswaOLii0YJ35Z1lWs$WAO78F9fpKVGYKt/c5fRprjDH8XBzACgs2lr7rb/jXU=', '2021-09-09 11:52:09.631152', 0, 'panner225', 'Panneer', 'R', 'panner226@gmail.com', 0, 1, '2021-09-09 11:52:09.152851');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'food', 'food'),
(8, 'food', 'order'),
(9, 'food', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-09 07:21:34.255563'),
(2, 'auth', '0001_initial', '2021-09-09 07:21:43.382242'),
(3, 'admin', '0001_initial', '2021-09-09 07:21:45.639524'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-09 07:21:45.686417'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-09-09 07:21:46.592940'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-09-09 07:21:47.202335'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-09-09 07:21:47.999106'),
(8, 'auth', '0004_alter_user_username_opts', '2021-09-09 07:21:48.045980'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-09-09 07:21:48.468237'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-09-09 07:21:48.515055'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-09-09 07:21:48.655678'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-09-09 07:21:51.015354'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2021-09-09 07:21:51.987013'),
(14, 'food', '0001_initial', '2021-09-09 07:21:54.437533'),
(15, 'sessions', '0001_initial', '2021-09-09 07:21:55.561557'),
(16, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-09 10:53:45.969147'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-09-09 10:53:46.047270'),
(18, 'auth', '0011_update_proxy_permissions', '2021-09-09 10:53:46.062895'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2021-09-09 10:53:46.141022');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('06fuoxpo78hi52pbg3aui4v87y5nrays', 'YzE3NmIxMjlmMmJjYzYzNzgwM2I4N2JmYWYyNjAxZWUwZWRhMWI1YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YmUwMmVjZDkwNzU5NGYyOTgzYWZhZDg1MTc4ZjhmMWFjMjFjOTQ0In0=', '2021-09-23 07:42:57.432482'),
('0hzm1l432j8jgofqrzn1oi3c6wcp6vy0', '.eJxVjMEOwiAQRP-FsyHKFsh69O43kN0FpGogKe2p8d9tkx70NMm8N7OqQMtcwtLTFMaorgrU6bdjkleqO4hPqo-mpdV5Glnvij5o1_cW0_t2uH8HhXrZ1hbtOUkG74EunCmigEcE2sJZymxddIBOTGYahDKgUEKDg4kMntTnC_bZOKM:1mOH4k:wBPv23zQZ-yEJMCqEBd2nDPDnAVMXmYRNEoKSM-vcxI', '2021-09-23 10:14:34.114897'),
('62zyiseket2q2vldgqmqopyno2nsujt0', '.eJxVjMsOwiAQRf-FtSGU5-DSvd9AmAGkaiAp7cr479qkC93ec859sRC3tYZt5CXMiZ2ZZqffDSM9cttBusd265x6W5cZ-a7wgw5-7Sk_L4f7d1DjqN9aFIgWnNMo0iRRCZOxCDDKy-KidsZqYZCmLAFJSbAkwFO2SnsPBoi9P8fMNvc:1mOHjt:RN5IuZ9CKw1Q1LDGNjSmGd1KWxf44VLK-laQiknoqwk', '2021-09-23 10:57:05.846561'),
('bvehpozydxf3r0pbdd47n26nq0v1p0v7', '.eJxVjDsOwjAUBO_iGll-seMPJT1niNbOMw4gR4qTCnF3iJQC2p2ZfYkB21qGrfEyTKM4CxKn3y0iPbjuYLyj3maZ5rouU5S7Ig_a5HUe-Xk53L-Dgla-NbLKZEJMUMyA1QiayCUVrPHZM7SJbIwC9b53KYC6HBCtDuRU55J4fwD0rjfE:1mOIhu:uNP0e1Q3gEd-T3hs5F_P8OCmTD-aIf2AWP5HmovAocg', '2021-09-23 11:59:06.868855'),
('ffdvmuza5nmgd1jt0trnihbyy3imhlfg', '.eJxVjMsOwiAQAP-FsyFYHks9evcbCMuyUjWQlPZk_HdD0oNeZybzFiHuWwl7z2tYSFyEE6dfhjE9cx2CHrHem0ytbuuCciTysF3eGuXX9Wj_BiX2MrboyGgG1toSm8kTKQaPPiVrzExKz4wcyTAAkeMMyaI9e8tKwWSc-HwB_rE4VQ:1mOIbB:t5z6MxFqduDPShiFVHtWfr72l81QtxOBcA7v5UvLwEA', '2021-09-23 11:52:09.646146'),
('p99p6x6mleartax2qp0kqkd7r3uklajc', '.eJxVjDsOwjAUBO_iGll-seMPJT1niNbOMw4gR4qTCnF3iJQC2p2ZfYkB21qGrfEyTKM4CxKn3y0iPbjuYLyj3maZ5rouU5S7Ig_a5HUe-Xk53L-Dgla-NbLKZEJMUMyA1QiayCUVrPHZM7SJbIwC9b53KYC6HBCtDuRU55J4fwD0rjfE:1oJ6AI:Gi_XbQglLRLPnJzMSynUL0eXlGPCR2JMRRYA2yixg_A', '2022-08-17 04:39:26.318723'),
('v5pmxyqop05vspl7xgedx1dbayppk21b', '.eJxVjDsOwjAUBO_iGll-seMPJT1niNbOMw4gR4qTCnF3iJQC2p2ZfYkB21qGrfEyTKM4CxKn3y0iPbjuYLyj3maZ5rouU5S7Ig_a5HUe-Xk53L-Dgla-NbLKZEJMUMyA1QiayCUVrPHZM7SJbIwC9b53KYC6HBCtDuRU55J4fwD0rjfE:1mfbes:wYj0guqlsOT0onMNtDtVOi4A30tSYSbilAyl57GQ5hs', '2021-11-10 05:39:30.792323');

-- --------------------------------------------------------

--
-- Table structure for table `food_food`
--

CREATE TABLE IF NOT EXISTS `food_food` (
`id` int(11) NOT NULL,
  `loggeduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `foodname` varchar(50) COLLATE utf8_bin NOT NULL,
  `foodpic` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantity` varchar(30) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(10) COLLATE utf8_bin NOT NULL,
  `location` longtext COLLATE utf8_bin NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_food`
--

INSERT INTO `food_food` (`id`, `loggeduser`, `foodname`, `foodpic`, `quantity`, `contactno`, `location`, `city`) VALUES
(2, 'fowji', 'dosa', 'dosa_OMSH1tc.jpg', '1 plate', '9088899122', '10, main road\r\nkumbakonam', 'kumbakonam'),
(3, 'fowji', 'Toor dal', 'toor.jpg', '500g', '9434343434', '12, big bazar\r\nt nagar', 'chennai'),
(4, 'ameerkhan', 'briyani', 'briyani_pT8iICd.jpg', '1 plate', '9334344231', '12, thillai nagar', 'trichy'),
(5, 'ameerkhan', 'fried rice', 'friedrice_hZrCu5S.jpg', '1 plate', '9434343434', '10, main road,\r\ncoimbatore', 'coimbatore'),
(6, 'fowji', 'idly', 'idly_xGkApdd.jpg', '6', '9004454533', '11, 5th cross, thillai nagar\r\ntrichy', 'trichy'),
(7, 'fooduser', 'Chapathi', 'chapathi.jpg', '10', '1234567890', 'Bangalore', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE IF NOT EXISTS `food_order` (
`id` int(11) NOT NULL,
  `foodname` varchar(50) COLLATE utf8_bin NOT NULL,
  `foodpic` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantity` varchar(30) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(10) COLLATE utf8_bin NOT NULL,
  `location` longtext COLLATE utf8_bin NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL,
  `loggeduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `foodcreateuser` varchar(50) COLLATE utf8_bin NOT NULL,
  `deliverycontact` varchar(10) COLLATE utf8_bin NOT NULL,
  `deliverymail` varchar(254) COLLATE utf8_bin NOT NULL,
  `deliveryaddress` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `foodname`, `foodpic`, `quantity`, `contactno`, `location`, `city`, `loggeduser`, `foodcreateuser`, `deliverycontact`, `deliverymail`, `deliveryaddress`) VALUES
(1, 'briyani', 'briyani_pT8iICd.jpg', '1 plate', '9334344231', '12, thillai nagar', 'trichy', 'fowji', 'ameerkhan', '9876765412', 'dfd@gmail.com', '12, bigbazaar\r\ncoimbator'),
(2, 'idly', 'idly_xGkApdd.jpg', '6', '9004454533', '11, 5th cross, thillai nagar\r\ntrichy', 'trichy', 'fooduser', 'fowji', '9790675343', 'panner224@gmail.com', 'Bangalore , slikboard');

-- --------------------------------------------------------

--
-- Table structure for table `food_profile`
--

CREATE TABLE IF NOT EXISTS `food_profile` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_profile`
--

INSERT INTO `food_profile` (`id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `food_food`
--
ALTER TABLE `food_food`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_profile`
--
ALTER TABLE `food_profile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `food_food`
--
ALTER TABLE `food_food`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `food_profile`
--
ALTER TABLE `food_profile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `food_profile`
--
ALTER TABLE `food_profile`
ADD CONSTRAINT `food_profile_user_id_289ea87f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
