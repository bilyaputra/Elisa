-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 02:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elisav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(5, 'adum'),
(3, 'dekankabag'),
(1, 'rektor'),
(2, 'wrkaro');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add keterangan', 7, 'add_keterangan'),
(26, 'Can change keterangan', 7, 'change_keterangan'),
(27, 'Can delete keterangan', 7, 'delete_keterangan'),
(28, 'Can view keterangan', 7, 'view_keterangan'),
(29, 'Can add role', 8, 'add_role'),
(30, 'Can change role', 8, 'change_role'),
(31, 'Can delete role', 8, 'delete_role'),
(32, 'Can view role', 8, 'view_role'),
(33, 'Can add surat', 9, 'add_surat'),
(34, 'Can change surat', 9, 'change_surat'),
(35, 'Can delete surat', 9, 'delete_surat'),
(36, 'Can view surat', 9, 'view_surat'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add disposisi1', 11, 'add_disposisi1'),
(42, 'Can change disposisi1', 11, 'change_disposisi1'),
(43, 'Can delete disposisi1', 11, 'delete_disposisi1'),
(44, 'Can view disposisi1', 11, 'view_disposisi1'),
(45, 'Can add disposisi2', 12, 'add_disposisi2'),
(46, 'Can change disposisi2', 12, 'change_disposisi2'),
(47, 'Can delete disposisi2', 12, 'delete_disposisi2'),
(48, 'Can view disposisi2', 12, 'view_disposisi2'),
(49, 'Can add disposisi3', 13, 'add_disposisi3'),
(50, 'Can change disposisi3', 13, 'change_disposisi3'),
(51, 'Can delete disposisi3', 13, 'delete_disposisi3'),
(52, 'Can view disposisi3', 13, 'view_disposisi3'),
(53, 'Can add disposisi4', 14, 'add_disposisi4'),
(54, 'Can change disposisi4', 14, 'change_disposisi4'),
(55, 'Can delete disposisi4', 14, 'delete_disposisi4'),
(56, 'Can view disposisi4', 14, 'view_disposisi4'),
(57, 'Can add jabatan', 15, 'add_jabatan'),
(58, 'Can change jabatan', 15, 'change_jabatan'),
(59, 'Can delete jabatan', 15, 'delete_jabatan'),
(60, 'Can view jabatan', 15, 'view_jabatan'),
(61, 'Can add luaran', 16, 'add_luaran'),
(62, 'Can change luaran', 16, 'change_luaran'),
(63, 'Can delete luaran', 16, 'delete_luaran'),
(64, 'Can view luaran', 16, 'view_luaran');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$CrzHTUoPuEahVEYPEgEOK3$jwMahLAkM3y7maw8Sz2G6dt+v5WrmP/pnqagZPd2ksA=', '2022-03-30 08:17:41.225333', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-02-03 07:04:07.313560'),
(10, 'pbkdf2_sha256$320000$qGzQc4L3kJueKJ5kLq3Fry$hCKIicSMw4NEjkqZ5zptAiCLpu3It1s3aWIpBPOxWEE=', '2022-03-31 11:36:15.463876', 0, 'adminrektor1', '', '', '', 1, 1, '2022-03-25 14:59:53.000000'),
(11, 'pbkdf2_sha256$320000$IBPLMok8vlMKnWMIdDDL9m$vdELpAh2oa/3qnOy0zs5j3CRm4Idsjxmn8CMDdjkABY=', '2022-03-31 11:54:43.896474', 0, 'adminkaro1', '', '', '', 1, 1, '2022-03-25 15:01:35.000000'),
(12, 'pbkdf2_sha256$320000$OgOJc7Wd7TX6RMYS6zpQjf$Mjh0FAiWwUHqnf9JLgSZYN0eALwUwkbbKhSfFjQHFrM=', '2022-03-25 15:18:20.524536', 0, 'adminwr1', '', '', '', 1, 1, '2022-03-25 15:02:45.000000'),
(13, 'pbkdf2_sha256$320000$5FRJDpoKM6h2lS1jRy98FF$fwEu7lsSL8PNoGk3ljkOa3/xIjrmnXFIYLYvMy6VN8U=', '2022-03-31 11:57:55.549021', 0, 'adminkabag1', '', '', '', 1, 1, '2022-03-25 15:03:44.000000'),
(14, 'pbkdf2_sha256$320000$pBNNB8sUWbW20rbwrcvUWJ$21d+bVhRtaISS2ffmcuOTmCeGC+64C7R9WGZDsTqS7w=', '2022-03-25 15:19:00.269194', 0, 'admindekanfs', '', '', '', 1, 1, '2022-03-25 15:04:08.000000'),
(16, 'pbkdf2_sha256$320000$9OoE5IvTyiChzlL8G6Dmfk$5iYx4at3JNN9m6VGIeW041lShAOUGISODKnZ2kB4aSs=', '2022-03-31 11:58:32.274697', 0, 'adminadum1', '', '', '', 1, 1, '2022-03-25 15:09:25.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(10, 10, 1),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-03 11:51:58.533219', '2', 'bilya', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-02-03 11:58:05.414453', '1', 'adum', 1, '[{\"added\": {}}]', 3, 1),
(3, '2022-02-03 11:58:22.661095', '2', 'bilya', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(4, '2022-02-04 07:09:52.718770', '1', 'undangan webinar', 1, '[{\"added\": {}}]', 9, 1),
(5, '2022-02-05 02:22:08.841495', '2', 'bilya', 3, '', 4, 1),
(6, '2022-02-05 02:22:19.258098', '3', 'bilya', 1, '[{\"added\": {}}]', 4, 1),
(7, '2022-02-05 02:23:15.956159', '3', 'bilya', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(8, '2022-02-10 07:45:39.153454', '5', 'penutupan acara', 3, '', 9, 1),
(9, '2022-02-10 07:45:39.159851', '4', 'pembukaan acara', 3, '', 9, 1),
(10, '2022-02-10 07:45:39.164675', '3', 'pembicara', 3, '', 9, 1),
(11, '2022-02-10 07:49:08.887853', '6', 'pembukaan acara', 3, '', 9, 1),
(12, '2022-02-14 08:16:32.873470', '3', 'bilya', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(13, '2022-02-14 08:23:30.200116', '2', 'WD1', 1, '[{\"added\": {}}]', 3, 1),
(14, '2022-02-14 08:24:56.901773', '4', 'putra', 1, '[{\"added\": {}}]', 4, 1),
(15, '2022-02-14 08:25:08.334482', '4', 'putra', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(16, '2022-02-15 03:03:37.854351', '1', 'rektor', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(17, '2022-02-15 03:04:07.323009', '2', 'wr', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(18, '2022-02-15 03:04:19.066291', '3', 'dekan', 1, '[{\"added\": {}}]', 3, 1),
(19, '2022-02-15 03:04:23.637695', '4', 'unit', 1, '[{\"added\": {}}]', 3, 1),
(20, '2022-02-15 03:04:45.552691', '5', 'adum', 1, '[{\"added\": {}}]', 3, 1),
(21, '2022-02-15 03:36:10.489274', '4', 'putra', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(22, '2022-02-15 03:37:58.754548', '4', 'putra', 3, '', 4, 1),
(23, '2022-02-15 03:38:21.738883', '5', 'putra', 1, '[{\"added\": {}}]', 4, 1),
(24, '2022-02-15 03:38:30.565588', '5', 'putra', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(25, '2022-02-15 03:39:03.484260', '5', 'putra', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(26, '2022-03-03 14:12:45.062966', '4', 'unit', 3, '', 3, 1),
(27, '2022-03-03 14:13:09.303925', '1', 'adum', 3, '', 8, 1),
(28, '2022-03-03 14:14:21.851290', '6', 'dekan', 1, '[{\"added\": {}}]', 4, 1),
(29, '2022-03-03 14:14:32.689151', '6', 'dekan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(30, '2022-03-03 14:14:43.406918', '7', 'adum', 1, '[{\"added\": {}}]', 4, 1),
(31, '2022-03-03 14:14:51.067906', '7', 'adum', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(32, '2022-03-03 14:15:08.537036', '3', 'bilya', 3, '', 4, 1),
(33, '2022-03-03 14:15:08.541009', '5', 'putra', 3, '', 4, 1),
(34, '2022-03-03 14:15:28.900905', '8', 'rektor', 1, '[{\"added\": {}}]', 4, 1),
(35, '2022-03-03 14:15:36.452698', '8', 'rektor', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(36, '2022-03-03 14:16:27.043003', '9', 'wr', 1, '[{\"added\": {}}]', 4, 1),
(37, '2022-03-03 14:16:32.921192', '9', 'wr', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(38, '2022-03-03 14:17:10.762909', '7', 'adum', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(39, '2022-03-03 14:17:17.204177', '6', 'dekan', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(40, '2022-03-03 14:17:22.315739', '6', 'dekan', 2, '[]', 4, 1),
(41, '2022-03-03 14:17:27.753760', '8', 'rektor', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(42, '2022-03-03 14:17:34.471657', '9', 'wr', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(43, '2022-03-06 16:33:03.532773', '7', 'adum', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(44, '2022-03-06 16:33:11.499492', '6', 'dekan', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(45, '2022-03-06 16:37:47.415088', '8', 'rektor', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(46, '2022-03-06 16:37:56.491609', '9', 'wr', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(47, '2022-03-18 03:07:35.336821', '5', 'Kepala Biro AAK', 1, '[{\"added\": {}}]', 15, 1),
(48, '2022-03-18 03:07:52.473364', '6', 'Kepala Biro AUPK', 1, '[{\"added\": {}}]', 15, 1),
(49, '2022-03-18 03:08:59.380705', '7', 'Analis Keuangan', 1, '[{\"added\": {}}]', 15, 1),
(50, '2022-03-18 03:09:08.145624', '8', 'Analis Kepegawaian', 1, '[{\"added\": {}}]', 15, 1),
(51, '2022-03-18 03:09:21.073207', '9', 'Kabag Akademik', 1, '[{\"added\": {}}]', 15, 1),
(52, '2022-03-18 03:09:29.035438', '10', 'Dekan Syariah', 1, '[{\"added\": {}}]', 15, 1),
(53, '2022-03-18 03:09:37.321404', '11', 'Dekan FTK', 1, '[{\"added\": {}}]', 15, 1),
(54, '2022-03-18 03:21:18.820541', '12', 'adum', 1, '[{\"added\": {}}]', 15, 1),
(55, '2022-03-25 14:56:52.753304', '2', 'wrkaro', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(56, '2022-03-25 14:57:05.820724', '3', 'dekankabag', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(57, '2022-03-25 14:57:40.665796', '7', 'adum', 3, '', 4, 1),
(58, '2022-03-25 14:57:40.669636', '6', 'dekan', 3, '', 4, 1),
(59, '2022-03-25 14:57:40.672174', '8', 'rektor', 3, '', 4, 1),
(60, '2022-03-25 14:57:40.674172', '9', 'wr', 3, '', 4, 1),
(61, '2022-03-25 14:59:53.986844', '10', 'adminrektor1', 1, '[{\"added\": {}}]', 4, 1),
(62, '2022-03-25 15:00:03.275978', '10', 'adminrektor1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(63, '2022-03-25 15:00:44.638156', '10', 'adminrektor1', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(64, '2022-03-25 15:00:58.762119', '10', 'adminrektor1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(65, '2022-03-25 15:01:35.485976', '11', 'adminkaro1', 1, '[{\"added\": {}}]', 4, 1),
(66, '2022-03-25 15:01:43.653479', '11', 'adminkaro1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(67, '2022-03-25 15:02:08.583469', '10', 'adminrektor1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(68, '2022-03-25 15:02:19.862206', '10', 'adminrektor1', 2, '[]', 4, 1),
(69, '2022-03-25 15:02:26.337967', '11', 'adminkaro1', 2, '[]', 4, 1),
(70, '2022-03-25 15:02:45.799266', '12', 'adminwr1', 1, '[{\"added\": {}}]', 4, 1),
(71, '2022-03-25 15:02:52.361387', '12', 'adminwr1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(72, '2022-03-25 15:03:44.353661', '13', 'adminkabag1', 1, '[{\"added\": {}}]', 4, 1),
(73, '2022-03-25 15:03:52.875789', '13', 'adminkabag1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(74, '2022-03-25 15:04:08.969588', '14', 'admindekanfs', 1, '[{\"added\": {}}]', 4, 1),
(75, '2022-03-25 15:04:16.224388', '14', 'admindekanfs', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(76, '2022-03-25 15:05:07.587322', '15', 'adminadum1', 1, '[{\"added\": {}}]', 4, 1),
(77, '2022-03-25 15:05:27.791980', '15', 'adminadum1', 3, '', 4, 1),
(78, '2022-03-25 15:09:25.734342', '16', 'adminadum1', 1, '[{\"added\": {}}]', 4, 1),
(79, '2022-03-25 15:09:32.875794', '16', 'adminadum1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'elisaapp', 'disposisi1'),
(12, 'elisaapp', 'disposisi2'),
(13, 'elisaapp', 'disposisi3'),
(14, 'elisaapp', 'disposisi4'),
(15, 'elisaapp', 'jabatan'),
(7, 'elisaapp', 'keterangan'),
(16, 'elisaapp', 'luaran'),
(8, 'elisaapp', 'role'),
(9, 'elisaapp', 'surat'),
(10, 'elisaapp', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-03 07:03:17.420366'),
(2, 'auth', '0001_initial', '2022-02-03 07:03:17.823814'),
(3, 'admin', '0001_initial', '2022-02-03 07:03:17.912697'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-03 07:03:17.920701'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-03 07:03:17.927648'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-03 07:03:17.982606'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-03 07:03:18.019522'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-03 07:03:18.036476'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-03 07:03:18.043456'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-03 07:03:18.083871'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-03 07:03:18.087859'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-03 07:03:18.096123'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-03 07:03:18.112661'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-03 07:03:18.148099'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-03 07:03:18.164111'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-03 07:03:18.175082'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-03 07:03:18.190636'),
(18, 'elisaapp', '0001_initial', '2022-02-03 07:03:18.210784'),
(19, 'elisaapp', '0002_alter_pic_kontak_pic', '2022-02-03 07:03:18.246721'),
(20, 'elisaapp', '0003_keterangan_role', '2022-02-03 07:03:18.283593'),
(21, 'elisaapp', '0004_surat', '2022-02-03 07:03:18.347302'),
(22, 'elisaapp', '0005_user', '2022-02-03 07:03:18.398022'),
(23, 'elisaapp', '0006_alter_pic_kontak_pic_disposisi', '2022-02-03 07:03:18.516653'),
(24, 'elisaapp', '0007_surat_nomorsurat', '2022-02-03 07:03:18.530624'),
(25, 'elisaapp', '0008_rename_nama_pic_pic_instansiasal_and_more', '2022-02-03 07:03:18.560594'),
(26, 'elisaapp', '0009_rename_instansiasal_pic_instansi_asal_and_more', '2022-02-03 07:03:18.624748'),
(27, 'elisaapp', '0010_disposisi1_disposisi2_disposisi3_disposisi4_jabatan_and_more', '2022-02-03 07:03:19.766118'),
(28, 'sessions', '0001_initial', '2022-02-03 07:03:19.792692'),
(29, 'elisaapp', '0011_alter_surat_file_surat', '2022-02-04 06:48:22.043315'),
(30, 'elisaapp', '0012_surat_status', '2022-02-21 07:02:10.778472'),
(31, 'elisaapp', '0013_alter_disposisi1_tanggal_disposisi', '2022-02-22 13:14:40.048615'),
(32, 'elisaapp', '0014_disposisi1_status_disposisi2_status_and_more', '2022-03-04 08:37:01.528609'),
(33, 'elisaapp', '0015_remove_surat_id_pic', '2022-03-15 04:58:19.852646'),
(34, 'elisaapp', '0016_luaran_alter_disposisi1_catatan_and_more', '2022-03-15 15:16:24.414639'),
(35, 'elisaapp', '0017_alter_disposisi2_surat_id', '2022-03-17 02:58:20.240108'),
(36, 'elisaapp', '0018_alter_disposisi3_surat_id_alter_luaran_nomor_masuk', '2022-03-17 03:27:30.819720'),
(37, 'elisaapp', '0019_alter_disposisi1_catatan', '2022-03-18 03:15:27.682933'),
(38, 'elisaapp', '0020_alter_disposisi1_catatan', '2022-03-18 03:17:47.036435'),
(39, 'elisaapp', '0021_alter_disposisi1_catatan', '2022-03-21 06:58:03.965736'),
(40, 'elisaapp', '0022_alter_disposisi1_catatan', '2022-03-21 07:16:48.784801'),
(41, 'elisaapp', '0023_alter_disposisi1_catatan', '2022-03-21 09:33:43.691011'),
(42, 'elisaapp', '0024_alter_disposisi1_catatan_alter_disposisi2_catatan_and_more', '2022-03-21 09:37:50.965926'),
(43, 'elisaapp', '0025_alter_luaran_upload_luaran', '2022-03-21 09:48:29.990447'),
(44, 'elisaapp', '0026_delete_user', '2022-03-30 03:15:13.357385'),
(45, 'elisaapp', '0027_delete_role', '2022-03-30 03:15:13.371349');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qvs1qy04up8isk8ncma4m8cliz67v5ii', '.eJxVjEEOwiAQRe_C2pCBgRRcuvcMZIBBqgaS0q6Md9cmXej2v_f-SwTa1hq2wUuYszgLJU6_W6T04LaDfKd26zL1ti5zlLsiDzrktWd-Xg7376DSqN-aAHVJpSSC5CwiMIPPYJXGaIzSBpWf2BWr9ZQJwCYFxRsqEdGyQ_H-ANrAN1E:1nM2mP:PQVcV1idNushxhg1eRwypsnUOuGx3yOe40zPFT5LDYQ', '2022-03-07 07:06:41.357498');

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_disposisi1`
--

CREATE TABLE `elisaapp_disposisi1` (
  `id` bigint(20) NOT NULL,
  `tanggal_disposisi` datetime(6) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `keterangan_id_id` bigint(20) NOT NULL,
  `surat_id_id` bigint(20) NOT NULL,
  `tujuan_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_disposisi2`
--

CREATE TABLE `elisaapp_disposisi2` (
  `id` bigint(20) NOT NULL,
  `tanggal_disposisi` datetime(6) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `keterangan_id_id` bigint(20) NOT NULL,
  `surat_id_id` bigint(20) NOT NULL,
  `tujuan_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_disposisi3`
--

CREATE TABLE `elisaapp_disposisi3` (
  `id` bigint(20) NOT NULL,
  `tanggal_disposisi` datetime(6) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `keterangan_id_id` bigint(20) NOT NULL,
  `surat_id_id` bigint(20) NOT NULL,
  `tujuan_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_jabatan`
--

CREATE TABLE `elisaapp_jabatan` (
  `id` bigint(20) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elisaapp_jabatan`
--

INSERT INTO `elisaapp_jabatan` (`id`, `nama_jabatan`) VALUES
(1, 'Rektor'),
(2, 'Wakil Rektor 1'),
(3, 'Wakil Rektor 2'),
(4, 'Wakil Rektor 3'),
(5, 'Kepala Biro AAK'),
(6, 'Kepala Biro AUPK'),
(7, 'Analis Keuangan'),
(8, 'Analis Kepegawaian'),
(9, 'Kabag Akademik'),
(10, 'Dekan Syariah'),
(11, 'Dekan FTK'),
(12, 'adum');

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_keterangan`
--

CREATE TABLE `elisaapp_keterangan` (
  `id` bigint(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elisaapp_keterangan`
--

INSERT INTO `elisaapp_keterangan` (`id`, `keterangan`) VALUES
(1, 'Mohon Arahan'),
(2, 'Diskusikan'),
(3, 'Kirim Utusan'),
(4, 'Mohon Petunjuk'),
(5, 'Untuk Perhatian'),
(6, 'Siapkan Konsep'),
(7, 'Mohon SPPD'),
(8, 'Arsip');

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_luaran`
--

CREATE TABLE `elisaapp_luaran` (
  `id` bigint(20) NOT NULL,
  `nomor_keluar` varchar(50) NOT NULL,
  `keterangan_disposisi1` varchar(50) NOT NULL,
  `catatan_disposisi1` varchar(50) DEFAULT NULL,
  `keterangan_disposisi2` varchar(50) NOT NULL,
  `catatan_disposisi2` varchar(50) DEFAULT NULL,
  `keterangan_disposisi3` varchar(50) NOT NULL,
  `catatan_disposisi3` varchar(50) DEFAULT NULL,
  `upload_luaran` varchar(100) DEFAULT NULL,
  `nomor_masuk_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elisaapp_surat`
--

CREATE TABLE `elisaapp_surat` (
  `id` bigint(20) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `tanggal_masuk` datetime(6) DEFAULT NULL,
  `estimasi_deadline` date NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `nomor_surat` varchar(50) DEFAULT NULL,
  `email_pic` varchar(254) DEFAULT NULL,
  `file_surat` varchar(100) DEFAULT NULL,
  `instansi_asal` varchar(50) DEFAULT NULL,
  `kontak_pic` varchar(128) DEFAULT NULL,
  `nama_pic` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `elisaapp_disposisi1`
--
ALTER TABLE `elisaapp_disposisi1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elisaapp_disposisi1_keterangan_id_id_e9d836c8_fk_elisaapp_` (`keterangan_id_id`),
  ADD KEY `elisaapp_disposisi1_surat_id_id_42983618_fk_elisaapp_surat_id` (`surat_id_id`),
  ADD KEY `elisaapp_disposisi1_tujuan_id_6fad287c_fk_elisaapp_jabatan_id` (`tujuan_id`);

--
-- Indexes for table `elisaapp_disposisi2`
--
ALTER TABLE `elisaapp_disposisi2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elisaapp_disposisi2_keterangan_id_id_e4d3bd3f_fk_elisaapp_` (`keterangan_id_id`),
  ADD KEY `elisaapp_disposisi2_tujuan_id_f4b699a2_fk_elisaapp_jabatan_id` (`tujuan_id`),
  ADD KEY `elisaapp_disposisi2_surat_id_id_b81ccc00_fk_elisaapp_` (`surat_id_id`);

--
-- Indexes for table `elisaapp_disposisi3`
--
ALTER TABLE `elisaapp_disposisi3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elisaapp_disposisi3_keterangan_id_id_f06cacca_fk_elisaapp_` (`keterangan_id_id`),
  ADD KEY `elisaapp_disposisi3_tujuan_id_b7235814_fk_elisaapp_jabatan_id` (`tujuan_id`),
  ADD KEY `elisaapp_disposisi3_surat_id_id_5c357c16_fk_elisaapp_` (`surat_id_id`);

--
-- Indexes for table `elisaapp_jabatan`
--
ALTER TABLE `elisaapp_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elisaapp_keterangan`
--
ALTER TABLE `elisaapp_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elisaapp_luaran`
--
ALTER TABLE `elisaapp_luaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elisaapp_luaran_nomor_masuk_id_83da538b_fk_elisaapp_` (`nomor_masuk_id`);

--
-- Indexes for table `elisaapp_surat`
--
ALTER TABLE `elisaapp_surat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `elisaapp_disposisi1`
--
ALTER TABLE `elisaapp_disposisi1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `elisaapp_disposisi2`
--
ALTER TABLE `elisaapp_disposisi2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `elisaapp_disposisi3`
--
ALTER TABLE `elisaapp_disposisi3`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `elisaapp_jabatan`
--
ALTER TABLE `elisaapp_jabatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `elisaapp_keterangan`
--
ALTER TABLE `elisaapp_keterangan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `elisaapp_luaran`
--
ALTER TABLE `elisaapp_luaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `elisaapp_surat`
--
ALTER TABLE `elisaapp_surat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `elisaapp_disposisi1`
--
ALTER TABLE `elisaapp_disposisi1`
  ADD CONSTRAINT `elisaapp_disposisi1_keterangan_id_id_e9d836c8_fk_elisaapp_` FOREIGN KEY (`keterangan_id_id`) REFERENCES `elisaapp_keterangan` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi1_surat_id_id_42983618_fk_elisaapp_surat_id` FOREIGN KEY (`surat_id_id`) REFERENCES `elisaapp_surat` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi1_tujuan_id_6fad287c_fk_elisaapp_jabatan_id` FOREIGN KEY (`tujuan_id`) REFERENCES `elisaapp_jabatan` (`id`);

--
-- Constraints for table `elisaapp_disposisi2`
--
ALTER TABLE `elisaapp_disposisi2`
  ADD CONSTRAINT `elisaapp_disposisi2_keterangan_id_id_e4d3bd3f_fk_elisaapp_` FOREIGN KEY (`keterangan_id_id`) REFERENCES `elisaapp_keterangan` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi2_surat_id_id_b81ccc00_fk_elisaapp_` FOREIGN KEY (`surat_id_id`) REFERENCES `elisaapp_disposisi1` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi2_tujuan_id_f4b699a2_fk_elisaapp_jabatan_id` FOREIGN KEY (`tujuan_id`) REFERENCES `elisaapp_jabatan` (`id`);

--
-- Constraints for table `elisaapp_disposisi3`
--
ALTER TABLE `elisaapp_disposisi3`
  ADD CONSTRAINT `elisaapp_disposisi3_keterangan_id_id_f06cacca_fk_elisaapp_` FOREIGN KEY (`keterangan_id_id`) REFERENCES `elisaapp_keterangan` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi3_surat_id_id_5c357c16_fk_elisaapp_` FOREIGN KEY (`surat_id_id`) REFERENCES `elisaapp_disposisi2` (`id`),
  ADD CONSTRAINT `elisaapp_disposisi3_tujuan_id_b7235814_fk_elisaapp_jabatan_id` FOREIGN KEY (`tujuan_id`) REFERENCES `elisaapp_jabatan` (`id`);

--
-- Constraints for table `elisaapp_luaran`
--
ALTER TABLE `elisaapp_luaran`
  ADD CONSTRAINT `elisaapp_luaran_nomor_masuk_id_83da538b_fk_elisaapp_` FOREIGN KEY (`nomor_masuk_id`) REFERENCES `elisaapp_disposisi3` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
