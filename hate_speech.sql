-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2022 at 12:42 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profile_matcher`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_converstion`
--

DROP TABLE IF EXISTS `audio_converstion`;
CREATE TABLE IF NOT EXISTS `audio_converstion` (
  `audio_id` int(11) NOT NULL AUTO_INCREMENT,
  `audio` varchar(100) NOT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio_converstion`
--

INSERT INTO `audio_converstion` (`audio_id`, `audio`) VALUES
(1, 'audio/converstion/afreen_afreen.mp3'),
(2, 'audio/converstion/afreen_afreen_yPhI2tj.mp3'),
(3, 'audio/converstion/afreen_afreen_a2rDTdQ.mp3'),
(4, 'audio/converstion/afreen_afreen_fRTuCpv.mp3'),
(5, 'audio/converstion/afreen_afreen_wAaFhsk.mp3'),
(6, 'audio/converstion/afreen_afreen_FFFgqv9.mp3'),
(7, 'audio/converstion/afreen_afreen_3jfSf6Z.mp3'),
(8, 'audio/converstion/afreen_afreen_K5l1IGw.mp3'),
(9, 'audio/converstion/afreen_afreen_x0WYYXh.mp3'),
(10, 'audio/converstion/afreen_afreen_ttjCnNJ.mp3'),
(11, 'audio/converstion/afreen_afreen_UsSGX0X.mp3'),
(12, 'audio/converstion/afreen_afreen_RFuaGky.mp3'),
(13, 'audio/converstion/afreen_afreen_NVTxbUb.mp3'),
(14, 'audio/converstion/afreen_afreen_0IwaHOA.mp3'),
(15, 'audio/converstion/afreen_afreen_wEkZdRU.mp3'),
(16, 'audio/converstion/afreen_afreen_ORUy3CH.mp3'),
(17, 'audio/converstion/afreen_afreen_YB8z8Mc.mp3'),
(18, 'audio/converstion/afreen_afreen_znPVxRL.mp3'),
(19, 'audio/converstion/afreen_afreen_BnMNQUo.mp3'),
(20, 'audio/converstion/afreen_afreen_2IvwfNe.mp3'),
(21, 'audio/converstion/afreen_afreen_ka0tqUB.mp3'),
(22, 'audio/converstion/afreen_afreen_CrRXi33.mp3'),
(23, 'audio/converstion/afreen_afreen_DTCncac.mp3'),
(24, 'audio/converstion/afreen_afreen_89dOXiD.mp3'),
(25, 'audio/converstion/afreen_afreen_mB4cHTl.mp3'),
(26, 'audio/converstion/afreen_afreen_ayAeSzv.mp3'),
(27, 'audio/converstion/afreen_afreen_FlfbNCD.mp3'),
(28, 'audio/converstion/bensound-summer.mp3'),
(29, 'audio/converstion/bensound-summer_BlWm9Wc.mp3'),
(30, 'audio/converstion/bensound-summer_PUTpgqE.mp3'),
(31, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video.mp4'),
(32, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_1GPelCi.mp4'),
(33, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_8KncUSh.mp4'),
(34, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_aPHkOPX.mp4'),
(35, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_8C5JhwT.mp4'),
(36, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_rBRZUE0.mp4'),
(37, 'audio/converstion/English-Motivational-4k-Full-Screen-Status-Video_HQXLbIL.mp4'),
(38, 'audio/converstion/testingvideo.mp4'),
(39, 'audio/converstion/testingvideo_dBaykUg.mp4'),
(40, 'audio/converstion/testingvideo_M14xzIr.mp4'),
(41, 'audio/converstion/testingvideo_jo8ED3e.mp4'),
(42, 'audio/converstion/testingvideo_mvUhNwD.mp4'),
(43, 'audio/converstion/testingvideo_mjx3Zo0.mp4'),
(44, 'audio/converstion/testingvideo_Kcf3y8m.mp4'),
(45, 'audio/converstion/testingvideo_gZkNZE6.mp4'),
(46, 'audio/converstion/testingvideo_1ckfmA8.mp4'),
(47, 'audio/converstion/testingvideo_gPH1Ftj.mp4'),
(48, 'audio/converstion/testingvideo_9TZQGp0.mp4'),
(49, 'audio/converstion/testingvideo_qgu6Mex.mp4'),
(50, 'audio/converstion/testingvideo_vp1Axpo.mp4'),
(51, 'audio/converstion/testingvideo_utcaWsk.mp4'),
(52, 'audio/converstion/testingvideo_Vm7Yfrl.mp4'),
(53, 'audio/converstion/testingvideo_aQ9Py3L.mp4'),
(54, 'audio/converstion/testingvideo_Vymi6i7.mp4'),
(55, 'audio/converstion/testingvideo_OqoLQIm.mp4'),
(56, 'audio/converstion/testingvideo_M3r2486.mp4'),
(57, 'audio/converstion/CLEAN-1.mp4'),
(58, 'audio/converstion/CLEAN-2.mp4'),
(59, 'audio/converstion/CLEAN-2_VqmmfZ8.mp4'),
(60, 'audio/converstion/CLEAN-3.mp4'),
(61, 'audio/converstion/TOXIC-1.mp4'),
(62, 'audio/converstion/TOXIC-1_z7i45a3.mp4'),
(63, 'audio/converstion/TOXIC-2.mp4'),
(64, 'audio/converstion/TOXIC-3.mp4'),
(65, 'audio/converstion/TOXIC-4.mp4'),
(66, 'audio/converstion/TOXIC-5.mp4'),
(67, 'audio/converstion/TOXIC-6.mp4'),
(68, 'audio/converstion/videoplayback.mp4'),
(69, 'audio/converstion/TOXIC-1_GLlzI21.mp4'),
(70, 'audio/converstion/CLEAN-2_u6tJ1xO.mp4'),
(71, 'audio/converstion/TOXIC-1_eQcG65V.mp4'),
(72, 'audio/converstion/CLEAN-1_gFC1T1m.mp4'),
(73, 'audio/converstion/TOXIC-2_RhyuPU7.mp4'),
(74, 'audio/converstion/TOXIC-1_c3Q6qVN.mp4'),
(75, 'audio/converstion/TOXIC-1_Z1qD1SI.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `audio_detection_details`
--

DROP TABLE IF EXISTS `audio_detection_details`;
CREATE TABLE IF NOT EXISTS `audio_detection_details` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `converted_text` longtext NOT NULL,
  `toxic_status` varchar(10) NOT NULL,
  `uploaded_user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `audio_detection_details_uploaded_user_id_983f78ac` (`uploaded_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio_detection_details`
--

INSERT INTO `audio_detection_details` (`comment_id`, `converted_text`, `toxic_status`, `uploaded_user_id`) VALUES
(1, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 29),
(2, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 29),
(3, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Clean', 29),
(4, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 29),
(5, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 29),
(6, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Clean', 29),
(7, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 29),
(8, 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized now back work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', 29),
(9, 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized now back work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', 29),
(10, 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures with Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', 10),
(11, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 10),
(12, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 10),
(13, 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', 10);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user model', 7, 'add_usermodel'),
(26, 'Can change user model', 7, 'change_usermodel'),
(27, 'Can delete user model', 7, 'delete_usermodel'),
(28, 'Can view user model', 7, 'view_usermodel'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add post', 9, 'add_post'),
(34, 'Can change post', 9, 'change_post'),
(35, 'Can delete post', 9, 'delete_post'),
(36, 'Can view post', 9, 'view_post'),
(37, 'Can add comment', 10, 'add_comment'),
(38, 'Can change comment', 10, 'change_comment'),
(39, 'Can delete comment', 10, 'delete_comment'),
(40, 'Can view comment', 10, 'view_comment'),
(41, 'Can add like', 11, 'add_like'),
(42, 'Can change like', 11, 'change_like'),
(43, 'Can delete like', 11, 'delete_like'),
(44, 'Can view like', 11, 'view_like'),
(45, 'Can add i_ profile', 12, 'add_i_profile'),
(46, 'Can change i_ profile', 12, 'change_i_profile'),
(47, 'Can delete i_ profile', 12, 'delete_i_profile'),
(48, 'Can view i_ profile', 12, 'view_i_profile'),
(49, 'Can add profile_ matching', 13, 'add_profile_matching'),
(50, 'Can change profile_ matching', 13, 'change_profile_matching'),
(51, 'Can delete profile_ matching', 13, 'delete_profile_matching'),
(52, 'Can view profile_ matching', 13, 'view_profile_matching'),
(53, 'Can add friend_ request', 14, 'add_friend_request'),
(54, 'Can change friend_ request', 14, 'change_friend_request'),
(55, 'Can delete friend_ request', 14, 'delete_friend_request'),
(56, 'Can view friend_ request', 14, 'view_friend_request'),
(57, 'Can add toxicwords', 15, 'add_toxicwords'),
(58, 'Can change toxicwords', 15, 'change_toxicwords'),
(59, 'Can delete toxicwords', 15, 'delete_toxicwords'),
(60, 'Can view toxicwords', 15, 'view_toxicwords'),
(61, 'Can add audio_ detection', 16, 'add_audio_detection'),
(62, 'Can change audio_ detection', 16, 'change_audio_detection'),
(63, 'Can delete audio_ detection', 16, 'delete_audio_detection'),
(64, 'Can view audio_ detection', 16, 'view_audio_detection'),
(65, 'Can add warn', 17, 'add_warn'),
(66, 'Can change warn', 17, 'change_warn'),
(67, 'Can delete warn', 17, 'delete_warn'),
(68, 'Can view warn', 17, 'view_warn'),
(69, 'Can add audio_converstion', 18, 'add_audio_converstion'),
(70, 'Can change audio_converstion', 18, 'change_audio_converstion'),
(71, 'Can delete audio_converstion', 18, 'delete_audio_converstion'),
(72, 'Can view audio_converstion', 18, 'view_audio_converstion');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_details`
--

DROP TABLE IF EXISTS `comment_details`;
CREATE TABLE IF NOT EXISTS `comment_details` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `comment_date` date NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_details_comment_post_id_e81de55a` (`comment_post_id`),
  KEY `comment_details_comment_user_id_30c3a90c` (`comment_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_details`
--

INSERT INTO `comment_details` (`comment_id`, `comment`, `comment_date`, `comment_post_id`, `comment_user_id`) VALUES
(36, 'very good post', '2022-10-26', 31, 28),
(35, 'Awesome View!!!', '2022-10-26', 25, 10),
(34, 'Cool !!!', '2022-10-26', 26, 10),
(33, 'Wow!!!!', '2022-10-26', 24, 12),
(32, 'Excellent!!!', '2022-10-26', 25, 12),
(31, 'I Love Nature!!!', '2022-10-26', 24, 13),
(37, '', '2022-10-31', 31, 13),
(38, '', '2022-10-31', 31, 13),
(39, 'hey\r\n', '2022-11-02', 33, 29);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'usermodel'),
(8, 'userapp', 'feedback'),
(9, 'userapp', 'post'),
(10, 'userapp', 'comment'),
(11, 'userapp', 'like'),
(12, 'userapp', 'i_profile'),
(13, 'userapp', 'profile_matching'),
(14, 'userapp', 'friend_request'),
(15, 'adminapp', 'toxicwords'),
(16, 'userapp', 'audio_detection'),
(17, 'adminapp', 'warn'),
(18, 'userapp', 'audio_converstion');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-14 06:11:38.911820'),
(2, 'auth', '0001_initial', '2022-10-14 06:11:40.442185'),
(3, 'admin', '0001_initial', '2022-10-14 06:11:40.850741'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-14 06:11:40.882458'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-14 06:11:40.896450'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-14 06:11:41.020372'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-14 06:11:41.103117'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-14 06:11:41.183981'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-14 06:11:41.194766'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-14 06:11:41.256770'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-14 06:11:41.260157'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-14 06:11:41.274149'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-14 06:11:41.352276'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-14 06:11:41.430118'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-14 06:11:41.497780'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-14 06:11:41.510810'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-14 06:11:41.569940'),
(18, 'sessions', '0001_initial', '2022-10-14 06:11:41.814249'),
(19, 'userapp', '0001_initial', '2022-10-14 06:11:41.885978'),
(20, 'userapp', '0002_feedback', '2022-10-14 12:00:44.002467'),
(21, 'userapp', '0003_post', '2022-10-15 07:37:04.772963'),
(22, 'userapp', '0004_post_post_user', '2022-10-15 08:21:04.116466'),
(23, 'userapp', '0005_comment', '2022-10-15 12:00:04.890425'),
(24, 'userapp', '0006_post_like_alter_comment_comment_post', '2022-10-17 06:55:49.317071'),
(25, 'userapp', '0007_rename_like_post_liked_like', '2022-10-17 08:06:10.442995'),
(26, 'userapp', '0008_i_profile', '2022-10-18 11:19:49.362486'),
(27, 'userapp', '0009_alter_i_profile_i_job_field_and_more', '2022-10-18 12:00:11.227371'),
(28, 'userapp', '0010_profile_matching', '2022-10-19 06:39:32.300108'),
(29, 'userapp', '0011_profile_matching_matching_status', '2022-10-20 05:19:51.827038'),
(30, 'userapp', '0012_friend_request', '2022-10-21 06:11:47.461753'),
(31, 'userapp', '0013_friend_request_friend_request_other_user_and_more', '2022-10-21 07:44:34.048584'),
(32, 'userapp', '0014_rename_friend_request_other_user_friend_request_reciver_and_more', '2022-10-21 09:44:21.098630'),
(33, 'userapp', '0015_alter_post_liked', '2022-10-21 10:02:02.210310'),
(34, 'adminapp', '0001_initial', '2022-11-02 06:24:21.634382'),
(35, 'userapp', '0016_alter_post_liked', '2022-11-02 06:24:28.657021'),
(36, 'userapp', '0017_audio_detection', '2022-11-02 07:41:55.161554'),
(37, 'userapp', '0018_post_post_audio_alter_post_post_image', '2022-11-03 05:37:56.162323'),
(38, 'userapp', '0019_post_converted_text_post_toxic_status', '2022-11-03 06:38:54.865018'),
(39, 'userapp', '0020_alter_post_converted_text', '2022-11-03 06:50:12.547252'),
(40, 'userapp', '0021_usermodel_user_toxicity_status', '2022-11-03 07:38:34.814462'),
(41, 'adminapp', '0002_warn', '2022-11-03 09:17:07.180089'),
(42, 'adminapp', '0003_alter_warn_warn_mssg', '2022-11-03 09:33:45.822119'),
(43, 'adminapp', '0004_alter_warn_warned_date', '2022-11-03 09:38:11.242872'),
(44, 'adminapp', '0005_warn_status', '2022-11-03 10:16:30.076244'),
(45, 'adminapp', '0006_warn_user_status', '2022-11-04 05:13:52.253521'),
(46, 'userapp', '0022_alter_post_toxic_status', '2022-11-04 11:20:06.225786'),
(47, 'userapp', '0023_alter_post_toxic_status', '2022-11-04 11:25:20.764910'),
(48, 'adminapp', '0007_warn_warn_for', '2022-11-05 07:53:17.107731'),
(49, 'userapp', '0024_audio_converstion', '2022-11-07 05:50:59.450890'),
(50, 'userapp', '0025_post_post_video', '2022-11-08 13:00:08.165935');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pxm3yirmooc77668ity6e2t98wq9trkx', 'eyJ1c2VyX2lkIjoxfQ:1ojGdR:aLAaXdaW01VKuaTyF8Yt2TgC_qM0OQVi0bHU1QTLx8c', '2022-10-28 09:05:41.039894'),
('05bap0akn9eec92vti9velaiogul908d', 'eyJ1c2VyX2lkIjoxMH0:1oqu5b:3OFaLsryOfOWeIyv0EUJ7khOslJ3V0fOa2VCjWUbqu0', '2022-11-18 10:38:19.792134'),
('mxh109w7hq80bzu41ab836tzyc7e1f27', 'eyJ1c2VyX2lkIjoxM30:1orCY6:L4JJtq_5oM1bl3ohjBjFcGjw9H7sbI6ipbYqgPWJYPI', '2022-11-19 06:20:58.978756'),
('h1j4rcl2bcb05rxy1198ce7dpuuqvwfq', 'eyJ1c2VyX2lkIjoxMn0:1oskCZ:N1OZ8sznpRZdZUzWk5m2LOvmzXU97QZKqqh1cei1Uwg', '2022-11-23 12:29:07.082772');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

DROP TABLE IF EXISTS `feedback_details`;
CREATE TABLE IF NOT EXISTS `feedback_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feed_desc` longtext NOT NULL,
  `feed_rating` varchar(100) NOT NULL,
  `feedback_sentiment` varchar(50) NOT NULL,
  `feedback_date` date NOT NULL,
  `feedback_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_details_feedback_user_id_645303c9` (`feedback_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`id`, `feed_desc`, `feed_rating`, `feedback_sentiment`, `feedback_date`, `feedback_user_id`) VALUES
(17, 'neutral', '1', 'Neutral', '2022-10-22', 13),
(16, 'some what negative', '3', 'Negative', '2022-10-22', 13),
(15, 'very positive', '5', 'Positive', '2022-10-21', 12),
(12, 'Worst site', '1', 'Very Negative', '2022-10-20', 10),
(13, 'somw what positive', '3', 'Positive', '2022-10-20', 13),
(29, 'Excellent', '5', 'Very Positive', '2022-10-27', 13),
(19, 'Excellent Site To make new Friends', '5', 'Very Positive', '2022-10-26', 19),
(20, 'Totally Addicted To Profile Matcher', '4', 'Negative', '2022-10-26', 13),
(21, 'Worst site ever', '1', 'Very Negative', '2022-10-26', 12),
(22, 'the site has bugs kindly fix it\r\n', '3', 'Very Positive', '2022-10-26', 10),
(28, 'very great app to find great peoples around you!', '5', 'Very Positive', '2022-10-26', 26),
(24, 'some what positive', '3', 'Positive', '2022-10-26', 18),
(25, 'excellent', '4', 'Very Positive', '2022-10-26', 20),
(26, 'neutral', '3', 'Neutral', '2022-10-26', 21),
(27, 'negative', '3', 'Negative', '2022-10-26', 27);

-- --------------------------------------------------------

--
-- Table structure for table `i_profile_details`
--

DROP TABLE IF EXISTS `i_profile_details`;
CREATE TABLE IF NOT EXISTS `i_profile_details` (
  `i_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_hobbies` varchar(100) DEFAULT NULL,
  `i_sports` varchar(100) DEFAULT NULL,
  `i_food_taste` varchar(100) DEFAULT NULL,
  `i_personality` varchar(100) DEFAULT NULL,
  `i_Job_field` varchar(100) DEFAULT NULL,
  `i_profile_user_id` int(11) NOT NULL,
  PRIMARY KEY (`i_profile_id`),
  KEY `i_profile_Details_i_profile_user_id_06df6e2b` (`i_profile_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i_profile_details`
--

INSERT INTO `i_profile_details` (`i_profile_id`, `i_hobbies`, `i_sports`, `i_food_taste`, `i_personality`, `i_Job_field`, `i_profile_user_id`) VALUES
(8, 'Dance', 'Cricket', 'Vegetarian', 'Sefl-Centered', 'Back-End Developer', 13),
(5, 'Gardening', 'Football', 'Vegetarian', 'Positive Thinker', 'Data-Analysts', 10),
(13, 'Dance', 'Football', 'Vegan', 'Sefl-Centered', 'Back-End Developer', 18),
(7, 'Gardening', 'Cricket', 'Non-Vegetarian', 'Sefl-Centered', 'Back-End Developer', 12),
(10, 'Dance', 'Football', 'Non-Vegetarian', 'role model', 'Back-End Developer', 15),
(14, 'Video Games', 'Cricket', 'Non-Vegetarian', 'Positive Thinker', 'Human Resource', 19),
(15, 'Gardening', 'Football', 'Non-Vegetarian', 'role model', 'Data-Analysts', 20),
(16, 'Gardening', 'Football', 'Non-Vegetarian', 'Sefl-Centered', 'Data-Analysts', 21),
(17, NULL, NULL, NULL, NULL, NULL, 22),
(19, NULL, NULL, NULL, NULL, NULL, 24),
(22, NULL, NULL, NULL, NULL, NULL, 27),
(21, 'Video Games', 'Cricket', 'Non-Vegetarian', 'Sefl-Centered', 'Full-Stack Developer', 26),
(23, 'Exercise', 'Cricket', 'Non-Vegetarian', 'role model', 'Full-Stack Developer', 28),
(24, NULL, NULL, NULL, NULL, NULL, 29),
(25, NULL, NULL, NULL, NULL, NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

DROP TABLE IF EXISTS `post_details`;
CREATE TABLE IF NOT EXISTS `post_details` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_image` varchar(100) DEFAULT NULL,
  `post_desc` longtext NOT NULL,
  `post_date` date NOT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `post_audio` varchar(100) DEFAULT NULL,
  `converted_text` longtext,
  `toxic_status` varchar(50) DEFAULT NULL,
  `post_video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `post_details_post_user_id_ab460f8f` (`post_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_details`
--

INSERT INTO `post_details` (`post_id`, `post_image`, `post_desc`, `post_date`, `post_user_id`, `post_audio`, `converted_text`, `toxic_status`, `post_video`) VALUES
(33, 'images/post/g3.jpg', 'Hey Guys Look At My New Ride', '2022-10-28', 10, NULL, NULL, NULL, NULL),
(31, 'images/post/g4.jpg', '', '2022-10-26', 26, NULL, NULL, NULL, NULL),
(32, 'images/post/g1.jpg', 'Hey Guys how are you doing these days!', '2022-10-26', 28, NULL, NULL, NULL, NULL),
(28, 'images/post/g12.jpg', 'If you want to change something, plant a plant.', '2022-10-26', 18, NULL, NULL, NULL, NULL),
(29, 'images/post/g7_KSVrZpz.jpg', 'Clean environment, a solution to pollution.', '2022-10-26', 10, NULL, NULL, NULL, NULL),
(30, 'images/post/g11.jpg', 'Save Nature & you will know your best friend.', '2022-10-26', 21, NULL, NULL, NULL, NULL),
(24, 'images/post/g16_XoBZQ6S.jpg', 'Nature is the image of life.', '2022-10-26', 19, NULL, NULL, NULL, NULL),
(25, 'images/post/g8_Mi3B62I.jpg', 'Be as brilliant as a tree.', '2022-10-26', 13, NULL, NULL, NULL, NULL),
(26, 'images/post/g13_S54N6TO.jpg', 'Give your best, as Nature does.', '2022-10-26', 12, NULL, NULL, NULL, NULL),
(34, '', 'clean audio testing-1', '2022-11-03', 10, 'audio/post/male_ffzVDAg.wav', 'what if somebody decides to break it be careful that you keep adequate coverage but look for places to save money baby it\'s taking longer to get things squared away than the bankers expected during the wife for once company may win her tax hated retirement income as helpful as our cost on the two naked bone when the title of this type of song is in question there\'s no dying or waxing or gassing needed maybe personalized leather hard place work on a flat surface and smooth out the simplest kind of separate system uses a single self-contained unit the old shop at it still holds a good mechanic is usually a bad boss both figures would go higher in later years doll houses at set', 'Clean', NULL),
(36, 'images/post/image_3.jpg', 'image testing', '2022-11-03', 10, '', NULL, NULL, NULL),
(37, 'images/post/image_3_ZbOZTmJ.jpg', 'image testing-1', '2022-11-03', 10, '', NULL, NULL, NULL),
(66, 'images/post/Web_capture_28-10-2022_12141_127.0.0.1.jpeg', 'testing\r\n', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(67, '', 'audio\r\n', '2022-11-05', 13, 'audio/post/male_uE8HcTX.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures with Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(65, '', 'hey guys', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(40, 'images/post/bg_1.jpg', 'Image testing2\r\n', '2022-11-04', 19, '', NULL, NULL, NULL),
(64, '', 'hey', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(42, 'images/post/undefined_-_Imgur_1.jpg', '', '2022-11-04', 10, '', NULL, NULL, NULL),
(43, 'images/post/Web_capture_28-10-2022_121334_127.0.0.1.jpeg', '', '2022-11-04', 10, '', NULL, NULL, NULL),
(44, 'images/post/undefined_-_Imgur_1_wIzLUmG.jpg', '', '2022-11-04', 10, '', NULL, 'Clean', NULL),
(60, '', '', '2022-11-05', 13, 'audio/post/harvard_YD2KLDl.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(61, '', '', '2022-11-05', 13, 'audio/post/harvard_DWH9UVH.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(62, 'images/post/Web_capture_28-10-2022_122122_127.0.0.1.jpeg', '', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(63, '', '', '2022-11-05', 13, 'audio/post/harvard_UWh9ZV2.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(59, '', '', '2022-11-05', 13, 'audio/post/harvard_o5U6Jmp.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(58, '', '', '2022-11-05', 13, 'audio/post/male_Z67MHdy.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized now back work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(53, '', '', '2022-11-04', 10, 'audio/post/testing_MpyEAsF.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(54, '', '', '2022-11-05', 10, 'audio/post/testing_yDduOAl.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(55, '', '', '2022-11-05', 10, 'audio/post/testing_MtWJK5U.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', ''),
(56, 'images/post/author.jpg', '', '2022-11-05', 10, '', NULL, 'Clean', NULL),
(57, '', '', '2022-11-05', 10, 'audio/post/male_wqhzfHL.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures with Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(50, '', '', '2022-11-04', 10, 'audio/post/male_ScXJAYI.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized now back work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(51, '', '', '2022-11-04', 10, 'audio/post/testing_vaTGB5S.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(52, 'images/post/undefined_-_Imgur_1_8DXJIPt.jpg', 'testing\r\n', '2022-11-04', 10, '', NULL, 'Clean', NULL),
(68, '', 'hey\r\n', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(69, 'images/post/undefined_-_Imgur_1_raH5SVM.jpg', '', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(70, 'images/post/undefined_-_Imgur_1_nipQGIz.jpg', 'testing', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(71, '', 'hello', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(72, 'images/post/undefined_-_Imgur_1_grLtuTy.jpg', '', '2022-11-05', 13, '', NULL, 'Clean', NULL),
(73, '', '', '2022-11-05', 13, 'audio/post/male_ee7jBX8.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(74, '', '', '2022-11-07', 10, 'audio/post/male_9JZvzWC.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(75, '', '', '2022-11-07', 15, 'audio/post/harvard_d0DOcGD.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', NULL),
(76, 'images/post/books.jpg', 'i recommend this book for all students. its very innovative', '2022-11-07', 30, '', NULL, 'Clean', NULL),
(77, '', 'cool', '2022-11-07', 30, 'audio/post/harvard_wNAJmUg.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'warned', NULL),
(78, '', 'hello everyone!', '2022-11-07', 30, 'audio/post/male_lC9DymT.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized now back work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(85, '', '', '2022-11-07', 30, 'audio/post/Sports-t_mMJ5fTt.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Clean', NULL),
(84, '', '', '2022-11-07', 30, 'audio/post/male_kYmEhCV.wav', 'summary the sides to break a teacher for the you keep adequate coverage the works of places to save money baby is taking longer to getting squared away then the bank was expected during the life events company in AVN heartattack se retirement income the British were inadequate news of the saving lives are heard it has done that you naked Bond what a discussion can insert when the title of this type of song is in question or waxing or gasing needed I prevent my be personalized number work lace leather and lace work on a flat surface and smooths out this post and a separate system uses a single sirf contained Unity op shop at store holds a good mechanical isliye bad bus figures good Gauhar in late summer curable chairs cabinets chest down house is a set', 'Clean', NULL),
(83, '', '', '2022-11-07', 30, 'audio/post/Sports-t.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Clean', NULL),
(86, '', '', '2022-11-07', 30, 'audio/post/female_m2X3DkY.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with client has more subtle implications in passport expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(87, '', '', '2022-11-07', 30, 'audio/post/female_v7KcXpS.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with client has more subtle implications in passport expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(88, '', '', '2022-11-07', 30, 'audio/post/female_ieHhFp6.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with square has more subtle implications in passport after expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(89, '', '', '2022-11-07', 30, 'audio/post/female_wUOz8l1.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with client has more subtle implications in passport expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(90, '', '', '2022-11-07', 30, 'audio/post/female_eX6Pe06.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with client has more subtle implications in passport expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(91, '', '', '2022-11-07', 30, 'audio/post/harvard_z547EUT.wav', 'the still smell old beer drinkers it takes hi to bring out the order I called up restore It helped him that a selfie kotess find him because of my favourite is just for food is Bihar trust ban', 'Toxic', NULL),
(92, '', '', '2022-11-07', 30, 'audio/post/Sports-t_0QIjxRg.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Clean', NULL),
(93, '', '', '2022-11-07', 10, 'audio/post/female_4ZwJyUw.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with square has more subtle implications in passport after expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(94, '', '', '2022-11-07', 10, 'audio/post/Sports-t_iExRBcZ.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Clean', NULL),
(95, '', '', '2022-11-07', 10, 'audio/post/female_FB6pG0s.wav', 'perhaps this is what is PR agency is are their dignity have you thought it was much is 50 feet then the choreographer missed arbitrated never go back into acquiescence with things as they work finds it in a mystery and isolation around us in this instance such personal purchase for a luxury leather cases of severe and advisement say he is a horse days Ranjan or he may have a point that contains between fuel prices straight line which symbolises uniqueness the circuit universality of small hole in wall with square has more subtle implications in passport after expiry marketing program manufacturers taking initiative of the costs involved cricket overlapping twisted widely spaced to you always navigate like this', 'Clean', NULL),
(96, '', '', '2022-11-07', 10, 'audio/post/Sports-t_6IWl2DQ.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Clean', NULL),
(97, '', '', '2022-11-07', 10, 'audio/post/h_orig.wav', 'Sushila I think I know his house is in the village though', 'Clean', NULL),
(98, '', '', '2022-11-07', 10, 'audio/post/h_orig_GFl1A7G.wav', 'Sushila I think I know his house is in the village though', 'Clean', NULL),
(99, '', '', '2022-11-07', 10, 'audio/post/h_orig_Vup48r1.wav', 'Sushila I think I know his house is in the village though', 'Clean', NULL),
(100, '', '', '2022-11-07', 10, 'audio/post/h_orig_PUWs1eG.wav', 'Sushila I think I know his house is in the village though', 'Clean', NULL),
(101, '', '', '2022-11-07', 10, 'audio/post/h_orig_OX8TR8S.wav', 'Sushila I think I know his house is in the village though', 'Clean', NULL),
(102, '', '', '2022-11-07', 10, 'audio/post/Sports-t_LgDkIrj.wav', 'I didn\'t like to work and you can you read your brightness of the', 'warned', ''),
(103, '', '', '2022-11-07', 10, 'audio/post/f2bjrop1.0.wav', 'wanted Chief Justice of the Massachusetts Supreme Court in a pro BSTC current leader atwood hennessy which is the mandatory retirement age of 70 and the successor is', 'Toxic', NULL),
(104, '', '', '2022-11-07', 10, 'audio/post/Adver.wav', 'XUV 500 features and small', 'Toxic', NULL),
(105, '', '', '2022-11-07', 10, 'audio/post/Conference_SkIedCq.wav', 'can you enjoy this time', 'Toxic', NULL),
(106, '', '', '2022-11-07', 10, 'audio/post/Conference_6ABEEIS.wav', 'can you enjoy this time', 'Toxic', NULL),
(107, '', '', '2022-11-07', 10, 'audio/post/Conference_YmVqZWm.wav', 'can you enjoy this time', 'Clean', NULL),
(108, '', '', '2022-11-07', 15, 'audio/post/Conference_hUBx9i3.wav', 'can you enjoy this time', 'Clean', NULL),
(109, '', '', '2022-11-07', 15, 'audio/post/Sports-t_MgMWbnT.wav', 'I didn\'t like to work and you can you read your brightness of the', 'Toxic', NULL),
(110, '', '', '2022-11-07', 15, 'audio/post/Conference_PLnOlgw.wav', 'can you enjoy this time', 'Clean', NULL),
(111, '', '', '2022-11-08', 10, 'audio/post/testinvideo.wav', 'how can I be the king of the Jungle this is not the biggest penis', 'Clean', NULL),
(112, '', '', '2022-11-08', 10, 'audio/converstion/testingvideo_gPH1Ftj.mp4', 'how can I be the king of the Jungle this is not the biggest penis', 'Clean', NULL),
(113, '', '', '2022-11-08', 15, 'audio/converstion/testingvideo_9TZQGp0.mp4', 'how can I be the king of the Jungle this is not the biggest penis', 'warned', ''),
(114, '', 'hey', '2022-11-08', 15, '', NULL, 'Clean', NULL),
(115, '', '', '2022-11-08', 10, 'audio/converstion/testingvideo_vp1Axpo.mp4', 'how can I be the king of the Jungle this is not the biggest penis', 'warned', ''),
(116, '', '', '2022-11-08', 10, '', 'how can I be the king of the Jungle this is not the biggest penis', 'warned', 'audio/converstion/testingvideo_utcaWsk.mp4'),
(117, '', '', '2022-11-08', 10, '', 'how can I be the king of the Jungle this is not the biggest penis', 'Clean', 'audio/converstion/testingvideo_Vm7Yfrl.mp4'),
(118, '', 'hello!', '2022-11-08', 10, '', 'how can I be the king of the Jungle this is not the biggest penis', 'Clean', 'audio/converstion/testingvideo_aQ9Py3L.mp4'),
(119, '', 'good!!!', '2022-11-08', 10, '', 'how can I be the king of the Jungle this is not the biggest penis', 'Clean', 'audio/converstion/testingvideo_Vymi6i7.mp4'),
(120, '', 'aaaa', '2022-11-08', 10, '', 'how can i be the king of the jungle this is not the biggest penis', 'warned', 'audio/converstion/testingvideo_OqoLQIm.mp4'),
(121, '', '', '2022-11-09', 10, '', 'how can i be the king of the jungle this is not the biggest penis', 'warned', 'audio/converstion/testingvideo_M3r2486.mp4'),
(122, '', '', '2022-11-09', 12, '', 'you stupid but you depression for during excavation of your heart bring it on your mental state but your relationship with your fucking mile to get', 'warned', 'audio/converstion/TOXIC-1_GLlzI21.mp4'),
(123, '', '', '2022-11-09', 12, '', 'i believe in the power of words many people speak before they think that i know the value of words words can make you break you can hear your so lekin damage you forever and for always try to use the positive words in my life forever ago they call it adversity i got it opportunity they called it weakness i call it when they call me disabled i call myself differently abled the same i disability this is my disability i see my ability there are some incidents that happen in your life and those incidents are so strong that the change your dna those incidents or accidents are so strong that they break you physically from your body but the transform your soul', 'Clean', 'audio/converstion/CLEAN-2_u6tJ1xO.mp4'),
(124, '', '', '2022-11-09', 12, '', 'you stupid but you depression for duration of your heart bring it on your mental state but your relationship with your fucking mile to get', 'warned', 'audio/converstion/TOXIC-1_eQcG65V.mp4'),
(125, '', 'good', '2022-11-09', 12, '', 'what is the time but forms in itself but there was born on 31st cannot just be about soaking 1 metro from after the get the only thing that inspire you to fat32 wake up in the morning i be particularly it is time to go for it and its staff reservation after among the stars expand the scope and scale of human consciousness of the side that makes me glad to be alive i hope you\'ll see why', 'Clean', 'audio/converstion/CLEAN-1_gFC1T1m.mp4'),
(126, '', 'abcdefgh', '2022-11-09', 12, '', 'dispose muscle force in the rising fucking fucking fucking call', 'warned', 'audio/converstion/TOXIC-2_RhyuPU7.mp4'),
(127, '', 'dsfsadfs', '2022-11-09', 12, '', 'you stupid but you depression for duration of your heart bring it on your mental state but your relationship with your fucking mile to get', 'Toxic', 'audio/converstion/TOXIC-1_c3Q6qVN.mp4'),
(128, '', '', '2022-11-09', 12, '', 'you stupid but you depression for duration of your heart bring it on your mental state but your relationship with your fucking mile to get', 'warned', 'audio/converstion/TOXIC-1_Z1qD1SI.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `post_details_liked`
--

DROP TABLE IF EXISTS `post_details_liked`;
CREATE TABLE IF NOT EXISTS `post_details_liked` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `usermodel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_details_like_post_id_usermodel_id_99f9fd68_uniq` (`post_id`,`usermodel_id`),
  KEY `post_details_like_post_id_ea0b289d` (`post_id`),
  KEY `post_details_like_usermodel_id_f7d83ef3` (`usermodel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_details_liked`
--

INSERT INTO `post_details_liked` (`id`, `post_id`, `usermodel_id`) VALUES
(41, 26, 10),
(40, 25, 12),
(60, 28, 13),
(42, 25, 10),
(43, 24, 10),
(63, 33, 13),
(58, 32, 13),
(51, 31, 28),
(61, 26, 13),
(50, 30, 26),
(66, 57, 13);

-- --------------------------------------------------------

--
-- Table structure for table `profile_matching_details`
--

DROP TABLE IF EXISTS `profile_matching_details`;
CREATE TABLE IF NOT EXISTS `profile_matching_details` (
  `matching_id` int(11) NOT NULL AUTO_INCREMENT,
  `matching_user_id` int(11) NOT NULL,
  `matching_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`matching_id`),
  KEY `profile_matching_Details_matching_user_id_4da2dc8b` (`matching_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toxic_words_details`
--

DROP TABLE IF EXISTS `toxic_words_details`;
CREATE TABLE IF NOT EXISTS `toxic_words_details` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `Toxic_categorey` varchar(100) NOT NULL,
  `Toxic_word` varchar(100) NOT NULL,
  `Toxic_word_added_date` date NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toxic_words_details`
--

INSERT INTO `toxic_words_details` (`word_id`, `Toxic_categorey`, `Toxic_word`, `Toxic_word_added_date`) VALUES
(1, 'Emotional abuse', 'smell old beer', '2022-11-02'),
(47, 'Emotional abuse', 'fuck', '2022-11-09'),
(35, 'Cyberbullying', 'trust', '2022-11-04'),
(36, 'Harassment', 'harassment', '2022-11-07'),
(37, 'Emotional abuse', 'didn\'t like', '2022-11-07'),
(38, '	Grooming', 'never go', '2022-11-07'),
(40, 'Cyberbullying', 'missed', '2022-11-07'),
(41, 'Sexual abuse', 'I didn\'t like to work', '2022-11-07'),
(48, 'Sexual abuse', 'bitch', '2022-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_friend_request`
--

DROP TABLE IF EXISTS `userapp_friend_request`;
CREATE TABLE IF NOT EXISTS `userapp_friend_request` (
  `friend_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `friend_request_status` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`friend_request_id`),
  KEY `userapp_friend_request_friend_request_user_id_97f6c919` (`sender_id`),
  KEY `userapp_friend_request_friend_request_other_user_id_ba05930b` (`reciver_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userapp_friend_request`
--

INSERT INTO `userapp_friend_request` (`friend_request_id`, `friend_request_status`, `sender_id`, `reciver_id`) VALUES
(76, 'Sent', 18, 10),
(77, 'Sent', 15, 10),
(78, 'Accepted', 26, 12),
(72, 'Accepted', 20, 10),
(71, 'Accepted', 18, 13),
(73, 'Accepted', 21, 10),
(60, 'Accepted', 19, 12),
(61, 'Sent', 13, 19),
(62, 'Rejected', 13, 18),
(63, 'Accepted', 12, 13),
(81, 'Accepted', 28, 26),
(65, 'Accepted', 10, 19),
(66, 'Sent', 10, 12),
(67, 'Accepted', 10, 13),
(79, 'Sent', 26, 21),
(80, 'Accepted', 12, 26);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_like`
--

DROP TABLE IF EXISTS `userapp_like`;
CREATE TABLE IF NOT EXISTS `userapp_like` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(10) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userapp_like_post_id_52fe4931` (`post_id`),
  KEY `userapp_like_user_id_aaee7638` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userapp_like`
--

INSERT INTO `userapp_like` (`id`, `value`, `post_id`, `user_id`) VALUES
(18, 'Like', 25, 10),
(17, 'Like', 26, 10),
(16, 'Unlike', 24, 12),
(15, 'Like', 25, 12),
(14, 'Unlike', 24, 13),
(19, 'Like', 24, 10),
(29, 'Unlike', 31, 13),
(28, 'Like', 32, 13),
(27, 'Like', 28, 13),
(26, 'Like', 31, 28),
(25, 'Like', 30, 26),
(30, 'Unlike', 30, 13),
(31, 'Like', 26, 13),
(32, 'Unlike', 25, 13),
(33, 'Like', 33, 13),
(34, 'Unlike', 33, 29),
(35, 'Unlike', 57, 10),
(36, 'Like', 57, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_display_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_date_of_birth` date NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_city` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `user_toxicity_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_display_name`, `user_email`, `user_password`, `user_date_of_birth`, `user_contact`, `user_city`, `user_image`, `user_status`, `user_toxicity_status`) VALUES
(10, 'Harsha  Vardhan  ', 'Harsha_0310', 'harsha@gmail.com', '0000', '2022-10-25', '9618294488', 'Hyderabad', 'images/user/person_4_nYYm5U7.jpg', 'Accepted', 'Clean'),
(12, 'Mary Disousa', 'Mary_3426', 'mary@gmail.com', '0000', '2022-10-22', '9618294480', 'Banglore', 'images/user/mary_GXL89Cd.jpg', 'Accepted', 'Clean'),
(13, 'Netra jane  ', 'Netra_8616', 'Netra343@gmail.com', '0000', '2022-11-01', '6300474325', 'Banglore', 'images/user/user1.jfif', 'Accepted', 'Clean'),
(18, 'sasuke', 'sasuke_uchiha', 'sasukeuchiha@gmail.com', '0000', '2022-10-15', '9618294480', 'Hyderabad', 'images/user/mike_8Ua4zsL.jpg', 'Accepted', 'Clean'),
(19, 'kedar', 'kedar_aggisetti', 'kedar@gmail.com', '0000', '2022-11-09', '6300474325', 'Hyderabad', 'images/user/miles_IRYueoi.jpg', 'Accepted', 'Clean'),
(15, 'Neha ', 'Nehu', 'Neha@gmail.com', '0000', '2022-10-03', '9618294480', 'Hyderabad', 'images/user/image_6_0uzlQZk.jpg', 'Accepted', 'Clean'),
(20, 'shaun', 'shaun_rocky', 'shaun@gmail.com', '0000', '2022-10-05', '9618294480', 'Hyderabad', 'images/user/bruce_owmg5o5.jpg', 'Accepted', 'Clean'),
(21, 'advaith', 'adhi', 'advaith@gmail.com', '0000', '2022-10-06', '6300474325', 'asdsa', 'images/user/msg5.png', 'Accepted', 'Clean'),
(24, 'krishna', 'nehu', 'krishna@email.com', '123456', '2022-10-05', '7412589631', 'vizag', 'images/user/g1_53IdB9v.jpg', 'Pending', 'Clean'),
(27, 'rudra', 'rudra_148367', 'rudra@gmail.com', '0000', '2022-10-16', '6300474325', 'asdsa', 'images/user/peter.jpg', 'Accepted', 'Clean'),
(26, 'krisha', 'krisha', 'krisha@email.com', '123456', '2022-10-12', '7458965874', 'hyderabad', 'images/user/g2_l1oW7WZ.jpg', 'Accepted', 'Clean'),
(28, 'harry', 'Hry', 'harry@gmail.com', 'Harry@123', '2000-02-02', '9876543210', 'Hyderabad', 'images/user/g14.jpg', 'Accepted', 'Clean'),
(29, 'jaffer', 'jaffer_6824', 'jaffer@email.com', 'Harsha0310!', '2022-11-05', '9618294480', 'Hyderabad', 'images/user/person_2.jpg', 'Accepted', 'Clean'),
(30, 'kumar', 'kumm', 'kumar@gmail.com', 'Kumar@123', '2000-12-01', '9878975498', 'Hyderabad', 'images/user/book2.jpg', 'Accepted', 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `warn_details`
--

DROP TABLE IF EXISTS `warn_details`;
CREATE TABLE IF NOT EXISTS `warn_details` (
  `warn_id` int(11) NOT NULL AUTO_INCREMENT,
  `warned_by` varchar(100) NOT NULL,
  `warn_mssg` longtext NOT NULL,
  `warned_date` datetime(6) NOT NULL,
  `warn_user_id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_status` varchar(100) DEFAULT NULL,
  `warn_for_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`warn_id`),
  KEY `warn_Details_warn_user_id_10e4dbd3` (`warn_user_id`),
  KEY `warn_Details_warn_for_id_92fc992f` (`warn_for_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warn_details`
--

INSERT INTO `warn_details` (`warn_id`, `warned_by`, `warn_mssg`, `warned_date`, `warn_user_id`, `status`, `user_status`, `warn_for_id`) VALUES
(1, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-03 00:00:00.000000', 10, 'warned', 'mark as read', NULL),
(2, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-03 09:38:20.647070', 10, 'warned', 'mark as read', NULL),
(3, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-03 09:38:25.640268', 10, 'warned', 'mark as read', NULL),
(4, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-03 11:55:09.303587', 10, 'warned', 'mark as read', NULL),
(5, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 09:46:37.430999', 19, 'warned', 'unseen', NULL),
(6, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 10:50:53.322859', 10, 'warned', 'mark as read', NULL),
(7, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:41:47.934099', 10, 'warned', 'mark as read', NULL),
(8, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:50:32.873112', 10, 'warned', 'mark as read', NULL),
(9, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:55:07.377709', 10, 'warned', 'mark as read', NULL),
(10, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:56:13.344633', 10, 'warned', 'mark as read', NULL),
(11, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:56:14.363670', 10, 'warned', 'mark as read', NULL),
(12, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:56:26.798443', 10, 'warned', 'mark as read', NULL),
(13, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-04 11:56:41.487127', 10, 'warned', 'mark as read', NULL),
(14, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-05 06:13:08.240952', 10, 'warned', 'mark as read', NULL),
(15, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-05 07:21:35.569065', 13, 'warned', 'unseen', NULL),
(16, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-05 07:21:58.414166', 13, 'warned', 'unseen', NULL),
(17, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-05 07:54:23.441498', 13, 'warned', 'unseen', 60),
(18, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-05 07:56:02.663133', 13, 'warned', 'mark as read', 61),
(19, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-07 07:32:20.322506', 30, 'warned', 'mark as read', 77),
(20, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-08 13:21:12.297378', 10, 'warned', 'mark as read', 55),
(21, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:16.066844', 10, 'warned', 'mark as read', 102),
(22, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:32.596314', 10, 'warned', 'unseen', 115),
(23, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:38.060998', 10, 'warned', 'mark as read', 116),
(24, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:40.914484', 10, 'warned', 'mark as read', 120),
(25, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:43.058376', 10, 'warned', 'mark as read', 121),
(26, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 07:14:48.122937', 15, 'warned', 'unseen', 113),
(27, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 08:26:06.533163', 12, 'warned', 'mark as read', 122),
(28, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 08:31:45.242999', 12, 'warned', 'mark as read', 124),
(29, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 10:11:09.872827', 12, 'warned', 'mark as read', 126),
(30, 'Admin', 'Admin Has Detected Offensive Content On Your Post. We Recommend You To Stop Posting Offensive Content Or Else Your Account Will Be Blocked', '2022-11-09 12:31:36.706257', 12, 'warned', 'unseen', 128);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
