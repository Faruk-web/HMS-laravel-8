-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 04:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accountants`
--

INSERT INTO `accountants` (`id`, `outlet_id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `dob`, `age`, `blood_group`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, NULL, 'mamunjklk,', 'mamun@gmail.com', 'fbgf', 'panthopoth', '5254254', 'male', '2021-11-05', '23', 'B+', 'upload/accountant/1716559942104797.jpg', 0, NULL, '2021-11-22 23:18:22'),
(9, NULL, 'rezaul', 'rezaul@gmail.com', '12345678', 'Mogbazar', '015458545', 'male', '2021-11-18', '30', 'B+', 'uploads/accountant/1718280498444351.jpg', 0, NULL, '2021-12-04 22:52:59'),
(11, NULL, 'Labony', 'kamrulhasan570@gmail.com', '655641564', 'dsfvdsvf', '5254254', 'female', '2021-11-04', '24', 'B+', 'upload/accountant/1716554787467957.jpg', 1, NULL, '2021-12-04 05:22:55'),
(12, NULL, 'Laboncheckl', 'kamrulhasan570@gmail.com', '123456', 'dsfvdsvf', '5254254', 'female', '2021-11-09', '233', 'B-', 'upload/accountant/1716556103456454.jpg', 0, NULL, '2021-12-04 05:22:54'),
(13, NULL, 'Laboncheckl', 'kamrulhasan570@gmail.com', '523653', 'dsfvdsvf', '5254254', 'female', '2021-11-04', '475252', 'AB+', 'upload/accountant/1716556168876971.jpg', 1, NULL, '2021-12-04 05:22:53'),
(14, NULL, 'check', 'kamrulhasan570@gmail.com', '5852', 'dsfvdsvf', '5254254', 'male', '2021-11-03', '563', 'AB+', 'upload/accountant/1716556205989877.jpg', 0, NULL, '2021-12-04 05:22:52'),
(15, NULL, 'munni', 'munni@gmail.com', '74741584185', 'uhdrrdgu', '01799646486', 'female', '2021-11-02', '15', 'O+', 'uploads/accountant/1718280535040946.jpg', 1, NULL, '2021-12-04 22:53:34'),
(16, NULL, 'chunni', 'chunni@gmail.com', '54451541', 'sdvfgrfhgrh', '5254254', 'female', '2021-11-03', '4854', 'B-', 'upload/accountant/1716556640596415.jpg', 0, NULL, '2021-12-04 05:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `outlet_id`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'admin1', 1, 'admin1@gmail.com', NULL, '$2y$10$fQncS69xW7X5Z2rEeki8jOX9vjVDFpTaILpbjxwgo9Z6HCwXKw7xW', NULL, NULL, NULL, '2021-12-21 23:24:22', '2021-12-21 23:24:22'),
(3, 'admin2', 3, 'admin2@gmail.com', NULL, '$2y$10$jan30G37z0oOMb..YiewM.lfR0hoo2Eyic7/uxbwv/c4L8314wBB2', NULL, NULL, NULL, '2021-12-21 23:24:57', '2021-12-21 23:24:57'),
(4, 'admin3', 1, 'admin3@gmail.com', NULL, '$2y$10$P83GCOC0MKRXgR7Qmq31seB6F1M57vE4Kg0r27ZBAUO5E6tHNchR2', NULL, NULL, NULL, '2021-12-21 23:26:24', '2021-12-21 23:26:24'),
(6, 'admin12', 1, 'admin12@gmail.com', NULL, '$2y$10$tfIzyJ1Ks18l3BFOviYyl.ILj0IxM1GZ2IfoefUpwSOW2DOgP2T32', NULL, NULL, NULL, '2021-12-22 22:48:23', '2021-12-22 22:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `apointments`
--

CREATE TABLE `apointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `appointment_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctorDept_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_date` date NOT NULL,
  `serial_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apointments`
--

INSERT INTO `apointments` (`id`, `outlet_id`, `appointment_id`, `patient_id`, `doctorDept_id`, `doctor_id`, `appointment_date`, `serial_no`, `problem`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'APT-00', 'PTD-00', 2, 3, '2021-12-20', '1', 'aaaaa', 'Active', NULL, NULL),
(4, NULL, 'APT-03', 'PTD-01', 1, 2, '2021-12-21', '1', 'asad', 'Active', NULL, NULL),
(5, NULL, 'APT-04', 'PTD-07', 1, 2, '2021-12-21', '10', 'sdafsed', 'Active', NULL, NULL),
(6, NULL, 'APT-05', 'PTD-00', 2, 3, '2021-12-21', '2', 'sdfg', 'Active', NULL, NULL),
(8, NULL, 'APT-06', 'PTD-05', 2, 3, '2021-12-28', '3', 'sadsda', 'Active', NULL, NULL),
(9, NULL, 'APT-07', 'PTD-00', 2, 3, '2021-12-20', '4', 'dsfrgtfdghsdfghdfgh', 'Active', NULL, NULL),
(10, NULL, 'APT-08', 'PTD-00', 2, 3, '2021-12-21', '5', 'werthr', 'Active', NULL, NULL),
(11, NULL, 'APT-09', 'PTD-00', 2, 3, '2021-12-20', '6', 'gfgf', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `birth_records`
--

CREATE TABLE `birth_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `child_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `child_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` datetime NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach_document_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donations`
--

CREATE TABLE `blood_donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `bags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_donations`
--

INSERT INTO `blood_donations` (`id`, `outlet_id`, `donor_id`, `bags`, `created_at`, `updated_at`) VALUES
(2, NULL, 6, '5', NULL, '2021-11-18 00:06:50'),
(3, NULL, 3, '22', NULL, '2021-11-17 22:48:22'),
(4, NULL, 5, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE `blood_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_donation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_donors`
--

INSERT INTO `blood_donors` (`id`, `outlet_id`, `name`, `age`, `gender`, `blood_group`, `last_donation_date`, `created_at`, `updated_at`) VALUES
(3, NULL, 'mamun', 23, 'female', 'AB+', '2021-11-10', NULL, '2021-11-17 22:46:28'),
(5, NULL, 'Labony', 23, 'female', 'AB-', '2021-11-17', NULL, '2021-11-17 04:55:08'),
(6, NULL, 'kamrul', 23, 'male', 'AB+', '2021-11-04', NULL, NULL),
(7, NULL, 'tamu', 23, 'male', 'AB+', '2021-12-08', '2021-11-30 23:00:36', '2021-11-30 23:44:17'),
(9, NULL, 'jakanaka', 24, 'female', 'AB+', '2021-12-11', '2021-11-30 23:01:25', '2021-11-30 23:44:05'),
(10, NULL, 'jakinaki', 21, 'female', 'AB+', '2021-12-09', '2021-11-30 23:01:42', '2021-11-30 23:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remained_bags` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `outlet_id`, `blood_group`, `remained_bags`, `created_at`, `updated_at`) VALUES
(1, NULL, 'A+', 4, '2021-12-22 02:57:48', '2021-12-22 02:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `blood__issues`
--

CREATE TABLE `blood__issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `donor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood__issues`
--

INSERT INTO `blood__issues` (`id`, `outlet_id`, `doctor_id`, `patient_id`, `donor_id`, `blood_group`, `amount`, `remarks`, `created_at`, `updated_at`) VALUES
(2, NULL, 3, 4, 3, 'AB+', 50000, 'all', '2021-12-01 22:52:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `box_sizes`
--

CREATE TABLE `box_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `box_size_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `box_sizes`
--

INSERT INTO `box_sizes` (`id`, `box_size_name`, `created_at`, `updated_at`) VALUES
(1, '50', '2021-12-26 21:44:37', '2021-12-26 21:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`id`, `outlet_id`, `doctor_name`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', 'English', '9', NULL, NULL),
(2, NULL, '1', 'Bangali', '8', NULL, NULL),
(3, NULL, '1', 'English', '9', NULL, NULL),
(4, NULL, '1', 'Hindi', '8', NULL, NULL),
(5, NULL, '4', 'English', '5', NULL, NULL),
(6, NULL, '4', 'Hindi', '8', NULL, NULL),
(7, NULL, '5', 'English', '8', NULL, NULL),
(8, NULL, '6', 'Bangla', '9', NULL, NULL),
(9, NULL, '6', 'English', '8', NULL, NULL),
(10, NULL, '7', 'English', '8', NULL, NULL),
(11, NULL, '7', 'Bangla', '9', NULL, NULL),
(12, NULL, '8', 'English', '8', NULL, NULL),
(13, NULL, '8', 'Bangla', '9', NULL, NULL),
(14, NULL, '9', 'English', '8', NULL, NULL),
(15, NULL, '9', 'Bangla', '9', NULL, NULL),
(16, NULL, '10', 'English', '8', NULL, NULL),
(17, NULL, '10', 'Bangla', '9', NULL, NULL),
(18, NULL, '11', 'English', '8', NULL, NULL),
(19, NULL, '11', 'Bangla', '9', NULL, NULL),
(20, NULL, '12', 'English', '8', NULL, NULL),
(21, NULL, '12', 'Bangla', '5', NULL, NULL),
(22, NULL, '13', 'dfgh', 'dfgh', NULL, NULL),
(23, NULL, '13', 'fghj', 'dfgh', NULL, NULL),
(24, NULL, '14', 'bbbbbbb', 'bbbbbbbbbbb', NULL, NULL),
(25, NULL, '14', 'bbbbb', 'bbbbbbbb', NULL, NULL),
(26, NULL, '15', 'n', 'nnnnn', NULL, NULL),
(27, NULL, '16', 'ggggggg', 'hhhhhhhhhhhh', NULL, NULL),
(28, NULL, '16', 'h', 'hhh', NULL, NULL),
(29, NULL, '1', 'English', '9', NULL, NULL),
(30, NULL, '1', 'Bangla', '10', NULL, NULL),
(31, NULL, '1', 'Spanish', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `death_records`
--

CREATE TABLE `death_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `patient_name_id` bigint(20) UNSIGNED NOT NULL,
  `death_date` datetime NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` bigint(20) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `new_diagnosis_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `outlet_id`, `new_diagnosis_category`, `description`, `created_at`, `updated_at`) VALUES
(2, NULL, '34', 'kkkkkkkkk', NULL, '2021-11-30 22:35:31'),
(3, NULL, 'A11', 'lllllllllllllllllllllllllllllllllllllllllllll', '2021-11-30 05:45:11', '2021-11-30 05:45:11'),
(4, NULL, 'A11', 'vb  v dbbd', '2021-11-30 22:10:53', '2021-11-30 22:10:53'),
(5, NULL, 'HELL', 'DEMO TEXT', '2021-12-01 22:55:49', '2021-12-01 22:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_prescriptions`
--

CREATE TABLE `diagnosis_prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `diagnosis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnosis_prescriptions`
--

INSERT INTO `diagnosis_prescriptions` (`id`, `prescription_id`, `diagnosis`, `instruction`, `created_at`, `updated_at`) VALUES
(30, 2, 'labony2', '2', '2021-12-28 03:22:47', '2021-12-28 03:22:47'),
(31, 2, '2', '22', '2021-12-28 03:22:47', '2021-12-28 03:22:47'),
(32, 3, NULL, NULL, NULL, NULL),
(33, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_tests`
--

CREATE TABLE `diagnosis_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis_category_id` bigint(20) UNSIGNED NOT NULL,
  `report_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `average_glucose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urine_sugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diabetes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cholesterol` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_dept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_degree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `outlet_id`, `name`, `email`, `password`, `designation`, `doc_dept`, `phone`, `mobile`, `sex`, `profile`, `dob`, `address1`, `address12`, `city`, `zip`, `specialist`, `age`, `blood_group`, `social_link`, `image`, `career_title`, `short_biography`, `long_biography`, `education_degree`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'doctor', 'doctor@gmail.com', '$2y$10$.mkHw0Y3IJz8dj95AyuNi.zHDRpOBmvXrjT5s45wOHP2h7PbnRima', 'Senior Consultant', '2', 1300847431, 2345678, 'male', 'gbf', '2022-01-14', 'Dhaka', 'Comilla', 'Dhaka', '617', 'vfdfvdfv', 24, NULL, 'csdf', 'uploads/doctor/1720726343347041.jpg', 'Nothing', '<p><strong>gbgbgbfbhnbfhbfgh</strong></p>', '<p><strong>bnbghjnghjnhgj</strong></p>', '<p><strong>nghnghhgjhng</strong></p>', 'Active', '2022-01-01 04:48:39', '2022-01-01 04:50:42'),
(2, 1, 'Mamun', 'mamun@gmail.com', '$2y$10$hgCOP2H6FNAU9ZJEtXuhXOe5zTQRtVQjr9SY3OQ7n5u3bal0c12XS', 'cxv', '2', 1300847431, 2345678, 'female', 'gbf', '2022-01-18', 'dfgd', 'fdgjfgdhf', 'sfdf', 'we23', 'v', 27, NULL, NULL, 'uploads/doctor/1720728354208342.jpg', NULL, '<p><strong>fdvdfvfvdfvfvfdvdfv</strong></p>', '<p><strong>vfvfvfdvfvfv</strong></p>', '<p><strong>vvvfdfvfvfvfdv</strong></p>', 'Active', '2022-01-01 05:20:37', '2022-01-01 05:20:37'),
(3, 1, 'Mamun', 'doctor@gmail.com', '$2y$10$NUuE9kB8yvkB01zfFtNmxuh2OyW/p1RxPloxHONZtRCHTSuGJOtSG', 'cxv', '3', 1300847431, 2345678, 'male', 'bbbbbbbbbb', '2022-01-12', 'fsfds', 'fdgjfgdhf', 'Dhaka', 'we23', NULL, 45, 'AB-', 'bbbbbbbbbb', 'uploads/doctor/1720728553868078.jpg', 'fghgfnv', NULL, NULL, NULL, 'Active', '2022-01-01 05:23:47', '2022-01-01 05:23:47'),
(4, 1, 'Mamun', 'admin1@gmail.com', '$2y$10$jGIanWDTkUJ0xzRpL4I2vuP43LGLpFX62E.xxZCD.AJaEI70Mu8xC', NULL, NULL, NULL, 2345678, 'male', NULL, NULL, 'dfgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2022-01-02 04:28:00', '2022-01-02 04:28:00'),
(5, 1, 'lokman', 'admhhhhhin1@gmail.com', '$2y$10$sgwUaYKzdGr9ZN5rMwNUwuptyEeNT1c9yCXGFytY2JVwMh6jvvuum', NULL, NULL, NULL, 2345678, 'male', NULL, NULL, 'dfgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2022-01-02 04:29:52', '2022-01-02 04:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_depts`
--

CREATE TABLE `doctor_depts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_depts`
--

INSERT INTO `doctor_depts` (`id`, `outlet_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'gynoclogidt', 'new description', '2021-12-12 03:30:07', '2021-12-12 03:30:07'),
(2, NULL, 'arthopedix', 'new des', '2021-12-12 03:30:17', '2021-12-12 03:30:25'),
(3, NULL, 'psychologist', 'new description', '2021-12-12 03:30:36', '2021-12-12 03:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `outlet_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 5, 'Employee', 'employee@gmail.com', NULL, '$2y$10$A.p7oeReBLdMHzPzkJJGIuY2Jpq6pWbJf88P2GPh0okMeq/nOvnD.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `created_at`, `updated_at`) VALUES
(2, 'Checkout', '2021-11-08 00:00:00', '2021-11-22 01:30:15', '2021-11-22 01:34:40'),
(3, 'doctoradd', '2021-11-16 00:00:00', '2021-11-22 01:50:55', '2021-11-22 01:50:55'),
(4, 'ghgjmhy', '2021-11-23 00:00:00', '2021-11-22 01:55:18', '2021-11-22 01:55:18'),
(5, 'iuiojio', '2021-11-03 00:00:00', '2021-11-22 02:06:04', '2021-11-22 02:06:04'),
(6, 'labony', '2021-11-05 14:56:19', NULL, NULL),
(7, 'munaaaaaa', '2021-11-23 10:10:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_tax` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_disease_charges`
--

CREATE TABLE `insurance_disease_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disease_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_charge` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorists`
--

CREATE TABLE `laboratorists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `doctor_id`, `language_name`, `rating`, `created_at`, `updated_at`) VALUES
(1, '3', 'vfvxcv', '3', NULL, NULL),
(2, '3', 'xcvdfvfv', '6', NULL, NULL),
(3, '4', NULL, NULL, NULL, NULL),
(4, '5', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `outlet_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'parasitamol', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_categories`
--

INSERT INTO `medicine_categories` (`id`, `outlet_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'change', NULL, '2021-11-25 01:04:19'),
(2, 1, 'bnggnbgnb', '2021-12-26 21:45:40', '2021-12-26 21:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_creates`
--

CREATE TABLE `medicine_creates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_lists`
--

CREATE TABLE `medicine_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bar_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generic_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `igta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_lists`
--

INSERT INTO `medicine_lists` (`id`, `outlet_id`, `bar_code`, `medicine_name`, `strength`, `generic_name`, `box_size`, `unit`, `shelf`, `medicine_details`, `category`, `price`, `medicine_type`, `image`, `manufacturer`, `manufacturer_price`, `vat`, `igta`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 'gfhfr', 'Mamun', '754', 'gfbc', '1', '1', 'fgb', 'hg', '1', '43543', '1', 'uploads/medicine/1720280319969819.png', '2', 'vbcvxb', '638', '5', '1', '2021-12-27 00:21:37', '2021-12-27 00:39:18'),
(10, 1, 'gfhfr', 'lokman', '754', 'vbcvxbcv', '1', '1', 'labony', 'dsfbbfbfff', '1', '43543', '1', 'uploads/medicine/1720279542618213.jpg', '2', 'bvcvbcvb', '638', '5', '0', '2021-12-27 00:26:56', '2021-12-27 00:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_manufactures`
--

CREATE TABLE `medicine_manufactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_manufactures`
--

INSERT INTO `medicine_manufactures` (`id`, `outlet_id`, `name`, `email`, `phone_number`, `note`, `address`, `created_at`, `updated_at`) VALUES
(2, NULL, 'change', 'kamrulhasan570@gmail.com', '50', 'dfhdhdffdbfgbnfgnfgnfgnfnn', 'dsfvdsvf', NULL, NULL),
(3, NULL, 'GFGF', 'admin1010@gmail.com', '01784677515', 'SZXGBJKL;', 'DFGHJKL;\'\\', '2021-12-01 22:56:30', '2021-12-01 22:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_prescriptions`
--

CREATE TABLE `medicine_prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_instruction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_prescriptions`
--

INSERT INTO `medicine_prescriptions` (`id`, `prescription_id`, `medicine_name`, `medicine_type`, `medicine_instruction`, `days`, `created_at`, `updated_at`) VALUES
(32, '2', 'labony', 'labony1', '1', '1', '2021-12-28 03:22:47', '2021-12-28 03:22:47'),
(33, '2', '11', '11', '11', '11', '2021-12-28 03:22:47', '2021-12-28 03:22:47'),
(34, '3', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '4', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `outlet_id`, `send_to`, `subject`, `message`, `sender_name`, `date`, `created_at`, `updated_at`) VALUES
(14, 1, 'super admin', 'tfhhfgjhtf', 'sdddvgbnm,.', 'admin1', '30-12-2021 02:22:43 pm', '2021-12-30 08:22:43', '2021-12-30 08:22:43'),
(15, 1, 'super admin', 'tfhhfgjhtf', 'sdddvgbnm,.', 'admin1', '30-12-2021 02:22:50 pm', '2021-12-30 08:22:50', '2021-12-30 08:22:50'),
(16, 1, 'admin3', 'tfhhfgjhtf', 'sdfghjnm', 'admin1', '30-12-2021 02:23:12 pm', '2021-12-30 08:23:12', '2021-12-30 08:23:12'),
(17, 1, 'super admin', 'tfhhfgjhtf', 'dsfghjnvnjhjn', 'admin1', '30-12-2021 02:26:31 pm', '2021-12-30 08:26:31', '2021-12-30 08:26:31'),
(18, NULL, 'admin2', 'gyhjkl', 'dzssgbcfhnvmjgymghgjmnh', 'super admin', '30-12-2021 02:30:08 pm', '2021-12-30 08:30:08', '2021-12-30 08:30:08'),
(19, NULL, 'admin12', 'hello', 'tttttttttttttttttttttttt', 'super admin', '30-12-2021 02:34:14 pm', '2021-12-30 08:34:14', '2021-12-30 08:34:14'),
(20, 1, 'super admin', 'erggdf', 'fgghhgghgfh', 'admin1', '02-01-2022 09:22:22 am', '2022-01-02 03:22:22', '2022-01-02 03:22:22'),
(21, 1, 'super admin', 'tfhhfgjhtf', 'gfhfghhfghbfg', 'admin1', '02-01-2022 09:22:33 am', '2022-01-02 03:22:33', '2022-01-02 03:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_23_104739_create_sessions_table', 1),
(8, '2021_11_11_061425_create_accountants_table', 2),
(11, '2021_11_15_100103_create_laboratorists_table', 4),
(12, '2021_11_16_091147_create_receptionists_table', 5),
(14, '2021_11_11_062654_create_nurses_table', 6),
(15, '2021_11_17_071107_create_blood_donors_table', 7),
(16, '2021_11_17_084259_create_laboratorists_table', 7),
(17, '2021_11_17_104032_create_blood_donations_table', 8),
(25, '2021_11_16_082046_create_pharmacists_table', 9),
(26, '2021_11_17_082133_create_blood__issues_table', 9),
(27, '2021_11_18_101423_create_new_beds_table', 10),
(28, '2021_11_21_043412_create_new_bed_types_table', 10),
(30, '2021_11_22_041950_create_events_table', 11),
(35, '2021_11_24_041428_create_diagnoses_table', 14),
(36, '2021_11_24_042426_create_diagnosis_tests_table', 15),
(37, '2021_11_25_045733_create_medicines_table', 16),
(38, '2021_11_25_060301_create_medicine_categories_table', 17),
(39, '2021_11_25_081557_create_medicine_manufactures_table', 18),
(42, '2021_11_27_080553_create_medicine_creates_table', 19),
(43, '2021_11_24_070852_create_appointments_table', 20),
(44, '2021_11_25_064743_create_birth_records_table', 20),
(45, '2021_11_27_091421_create_death_records_table', 20),
(46, '2021_12_02_034028_create_blood_groups_table', 21),
(47, '2021_12_02_061026_create_new_bed_allotments_table', 21),
(48, '2021_12_06_095003_create_laboratorists_table', 22),
(50, '2021_12_07_063937_create_schedules_table', 23),
(53, '2021_12_08_040927_create_schedulelists_table', 24),
(54, '2021_12_12_042301_create_apointments_table', 25),
(56, '2021_11_11_054734_create_patients_table', 26),
(57, '2021_12_09_084800_create_doctor_depts_table', 27),
(58, '2021_12_12_104851_create_checks_table', 28),
(59, '2021_12_13_045915_create_doctors_table', 28),
(60, '2021_12_14_044551_create_apointments_table', 29),
(61, '2021_12_14_061158_create_prescriptions_table', 30),
(62, '2021_12_14_061825_create_patient_case_studies_table', 30),
(63, '2021_12_15_050022_create_others__case__studies_table', 30),
(65, '2021_12_20_094548_create_employees_table', 31),
(66, '2021_12_20_094512_create_super_admins_table', 32),
(68, '2021_12_21_085303_create_outlets_table', 33),
(69, '2021_08_23_110415_create_admins_table', 34),
(70, '2021_12_18_060038_create_prescriptions_table', 35),
(71, '2021_12_19_115019_create_medicine_prescriptions_table', 35),
(72, '2021_12_20_031039_create_diagnosis_prescriptions_table', 36),
(73, '2021_12_23_035503_create_prescriptions_table', 37),
(74, '2021_12_23_043313_create_box_sizes_table', 37),
(75, '2021_12_23_043406_create_units_table', 37),
(76, '2021_11_27_044125_create_medicine_lists_table', 38),
(78, '2021_12_27_084456_create_insurances_table', 39),
(80, '2021_12_27_092600_create_insurance_disease_charges_table', 40),
(81, '2021_12_28_045958_create_roles_table', 41),
(86, '2021_12_29_083429_create_rolepermissions_table', 42),
(87, '2021_12_29_083513_create_rolepermission_types_table', 42),
(88, '2021_12_27_102212_create_messages_table', 43),
(91, '2021_12_28_041709_create_notices_table', 44),
(92, '2022_01_01_104405_create_doctors_table', 45),
(93, '2022_01_01_111124_create_languages_table', 46);

-- --------------------------------------------------------

--
-- Table structure for table `new_beds`
--

CREATE TABLE `new_beds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_bed_type_id` bigint(20) UNSIGNED NOT NULL,
  `charge` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_beds`
--

INSERT INTO `new_beds` (`id`, `outlet_id`, `bed`, `new_bed_type_id`, `charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 'Bed1', 19, 230, 'asdfghjksdfghjksdfghj', 1, '2021-12-05 02:43:35', '2021-12-05 02:44:16'),
(9, 1, 'Bed2', 20, 459, 'dfghjkl;', 1, '2021-12-05 02:49:05', '2021-12-05 02:50:58'),
(10, 1, 'bed6', 22, 45245245, 'fdgvdfggfhdfhdf', 0, '2021-12-26 04:29:37', '2021-12-26 04:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `new_bed_allotments`
--

CREATE TABLE `new_bed_allotments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `new_bed_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `allotment_time` datetime NOT NULL,
  `discharge_time` datetime NOT NULL,
  `discription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_bed_allotments`
--

INSERT INTO `new_bed_allotments` (`id`, `outlet_id`, `new_bed_id`, `patient_id`, `doctor_id`, `allotment_time`, `discharge_time`, `discription`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 8, 12, 5, '2021-12-08 15:44:00', '2021-12-17 16:44:00', 'asdfghkjhgfasdfg', '1', '2021-12-05 02:44:16', '2021-12-05 02:44:16'),
(3, NULL, 9, 13, 3, '2021-12-21 16:52:00', '2021-12-24 16:50:00', 'sdfghjksdfghj', '1', '2021-12-05 02:50:58', '2021-12-05 02:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `new_bed_types`
--

CREATE TABLE `new_bed_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `bed_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_bed_types`
--

INSERT INTO `new_bed_types` (`id`, `outlet_id`, `bed_types`, `description`, `created_at`, `updated_at`) VALUES
(19, NULL, 'ICU', 'danger danger', '2021-12-05 02:42:34', '2021-12-05 02:42:34'),
(20, NULL, 'NICU', 'danger coming', '2021-12-05 02:47:16', '2021-12-05 02:47:16'),
(21, NULL, 'Normal', 'normalmormal', '2021-12-05 02:47:59', '2021-12-05 02:47:59'),
(22, 1, 'icu', 'fgbhgbdfbdfbb', '2021-12-26 04:29:15', '2021-12-26 04:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `outlet_id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `dob`, `age`, `blood_group`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'labony', 'loabony@gmail.com', 'ertyjh5756768', 'dhaka', '01799646486', 'male', '2021-12-16', '23', 'AB-', 'uploads/nurse/1718287407038664.jpg', '2021-12-05 00:42:30', '2021-12-05 00:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `others__case__studies`
--

CREATE TABLE `others__case__studies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `case_study_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `others__case__studies`
--

INSERT INTO `others__case__studies` (`id`, `outlet_id`, `case_study_id`, `others`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', 'fghnvhn', NULL, NULL),
(2, NULL, '1', 'fghnvhn', NULL, NULL),
(3, NULL, '2', NULL, NULL, NULL),
(4, NULL, '3', NULL, NULL, NULL),
(5, NULL, '4', 'fghnvhn', NULL, NULL),
(6, NULL, '4', 'fghnvhn', NULL, NULL),
(7, NULL, '5', 'hbfghfgh', NULL, NULL),
(8, NULL, '5', 'gfgf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `outlet_code`, `outlet_name`, `email`, `Phone`, `address`, `status`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, '#1BLB7K', 'LabAid Zinzira', 'labaid12@gmail.com', '01300847431', 'zinzira,sadarghat,puran dhaka', 1, 'upload/outlet/1719745576212149.png', '$2y$10$tSy1Ms4EaxGm7kqb5r6epug/l4osiItxcinhcqqYarRUw2.Xc0Qmm', '2021-12-21 02:59:46', '2021-12-21 02:59:46'),
(2, '#214DHG', 'dfsfv', 'dfsfd@vfdv', '5345', 'dsvxfdv', 1, 'upload/outlet/1719751863122479.png', '$2y$10$unxQINy4hnBgzluhohZLI.4PLsOjDh96KgvU4EabnRfviRFBFSjQW', '2021-12-21 04:39:42', '2021-12-21 04:39:42'),
(3, '#THQSP3', 'LabAid Dhanmandi', 'labaid@gmail.com', '54230534', 'fsdf drsf', 1, 'upload/outlet/1719814856654961.jpg', '$2y$10$Nt21GzaSDThxib5vcu/taeyKNRSz048OM01n.NuPGXF/SlNhy.AVe', '2021-12-21 21:20:58', '2021-12-21 21:20:58'),
(5, '#JLBW34', 'xyz', 'xyz@gmail.com', '23443', 'dfsfdsf', 1, 'upload/outlet/1719825710644900.jpg', '$2y$10$HvUzBwDJTfYprX9UMt1Tyu0qhWHVAYEWCpHMPR8AmDas2ExiWZLmC', '2021-12-22 00:13:29', '2021-12-22 00:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `outlet_id`, `patient_id`, `name`, `email`, `password`, `phone`, `mobile`, `blood_group`, `sex`, `dob`, `age`, `image`, `address`, `address2`, `city`, `zip`, `facebook`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 1, 'PTD-00', 'labony', 'labonyakter246@gmail.com', '$2y$10$Umtc43PP6e57iFf3D1tmJeEGFKEa695N3PrVJhgwv1lCC66ThJmIK', 1799646486, 1784677515, 'AB+', 'male', '2021-12-01', 2452, 'uploads/patient/1718915567189275.png', 'xdcvb', 'sdfgh', 'sdfgh', 'dfgh', 'wedfgh', 'edrfg', '2021-12-11 17:07:08', '2021-12-11 23:07:08'),
(2, 1, 'PTD-01', 'demitri sinde', 'labonyakter2s46@gmail.com', '$2y$10$p6bmKitTLUSjm173s5iJgubcl.PJO6GdnLEmrRGSP/AppOWgg.mVG', 23, 1784677515, 'AB+', 'male', '2021-12-12', 2452, 'uploads/patient/1718928120918280.PNG', 'dsfgvfdv', 'dsfgh', 'erwtghjm,', '2134567', 'esrsdf', 'waftgjh', '2021-12-11 20:26:40', '2021-12-12 02:26:40'),
(3, 3, 'PTD-02', 'dfrgthj sindedw', 'labonyakter246@gmail.comds', '$2y$10$vTQX0Y0rJT8ozeG69CSrP.yfDvFTSKa/74J/HHIJGIgL.VePvj1Ru', 34, 1784677515, 'A-', 'male', '2021-12-17', 2452, 'uploads/patient/1718928219378034.png', 'dfgfdg', 'dsfgh', 'erwtghjm,', '2134567', 'esrsdf', 'waftgjh', '2021-12-11 20:28:14', '2021-12-12 02:28:14'),
(4, 1, 'PTD-03', 'demitri asdfg', 'labonyakter246@gmail.comww', '$2y$10$tt2dJyY9hTmWBpdSCzyJL.Nu3BhrzcDNOEGG7hoe.MOHnStDb2PB6', 23, 1784677515, 'A-', 'male', '2021-12-03', 2452, 'uploads/patient/1718928264048150.png', 'dfgfdg', 'dsfgh', 'erwtghjm,', '2134567', 'esrsdf', 'waftgjh', '2021-12-11 20:28:57', '2021-12-12 02:28:57'),
(5, 2, 'PTD-04', 'dfrgthj asdfg', 'labonyakter246@gmail.comewdsw', '$2y$10$fg3yW0WoG8bJmmmZTCUo7O/Ut2tcW0FrZ7mQoxq8S2ly8uy6gk3Ba', 32, 1784677515, 'O-', 'male', '2021-12-03', 2452, 'uploads/patient/1718928372464387.png', 'dfgfdg', 'dsfgh', 'erwtghjm,', '2134567', 'esrsdf', 'waftgjh', '2021-12-11 20:30:40', '2021-12-12 02:30:40'),
(6, 3, 'PTD-05', 'dfrgthj asdfg', 'labonydeakter246@gmail.com', '$2y$10$JZAmUVUO5fo7u7kWhuxlf.3sRXwG3qLTMw4uODOj29EPF/9pVVn4.', 23, 1784677515, 'A-', 'male', '2021-12-15', 2452, 'uploads/patient/1719000937255691.png', 'dfgfdg', 'dsfgh', 'erwtghjm,', '2134567', 'esrsdf', 'waftgjh', '2021-12-12 15:44:04', '2021-12-12 21:44:04'),
(7, 2, 'PTD-06', 'sdf dcfgchv', 'labonyadxkter246@gmail.com', '$2y$10$S6Dn2mrj3vZBHO5OhaiYUeE8r7h.iSeGK9zPODeGEm3MgS4j6Acwu', 23, 1784677515, 'AB+', 'male', '2021-12-09', 2452, 'uploads/patient/1719001055099218.jpg', 'dfgfdg', NULL, NULL, NULL, NULL, NULL, '2021-12-12 15:45:56', '2021-12-12 21:45:56'),
(8, 3, 'PTD-07', 'demitri dsf', 'labondesyakter246@gmail.com', '$2y$10$HVVFGafVivJ6S2saVnan/uy2ekr0Vni3x1fnvU8h8i2YykHAkjJ9G', 23, 1784677515, 'AB+', 'male', '2021-12-09', 2452, 'uploads/patient/1719001181729721.jpg', 'dssd', NULL, NULL, NULL, NULL, NULL, '2021-12-12 15:47:56', '2021-12-12 21:47:56'),
(9, 3, 'PTD-08', 'demitri wedfrdgft', 'labonyakter2esfrgd46@gmail.com', '$2y$10$f7lWXr8/iXE.PVA2lOozFuCmhsvdR8y1XZk0zw8LdQ8KTmRywh2Mm', 23, 1784677515, 'AB+', 'male', '2021-11-29', 2452, 'uploads/patient/1719001249016644.jpg', 'aedfgh', NULL, NULL, NULL, NULL, NULL, '2021-12-12 15:49:01', '2021-12-12 21:49:01'),
(10, 3, 'PTD-09', 'rghj dsfg', 'labonyadskter246@gmail.com', '$2y$10$SpV/jcD6YbvIVfxFn.5C2.cCZLtAM1.b9kq/R/BwggSgGIfnZe3RW', 23, 1784677515, 'A-', 'male', '2021-12-08', 2452, 'uploads/patient/1719001391963076.jpg', 'dsfgvfdv', NULL, NULL, NULL, NULL, NULL, '2021-12-12 15:51:17', '2021-12-12 21:51:17'),
(11, 2, 'PTD-10', 'demitri dsf', 'labonyfdsakter246@gmail.com', '$2y$10$5nmsZ4zKnODSytGMjhoPwORmmIsZlN7WlNCxXAY1Vrx23zFfQ0soS', 23, 434, 'AB+', 'male', '2021-12-06', 2452, 'uploads/patient/1719001478761239.jpg', 'fdsd', NULL, NULL, NULL, NULL, NULL, '2021-12-12 15:52:40', '2021-12-12 21:52:40'),
(12, 1, 'PTD-11', 'fyhj tdrfy', 'labonyakter246tr@gmail.com', '$2y$10$HE4QJAy3PDKp0hd0G62UJ.mRnsSTKafjaUHumtAfg7rtJ46T6tbP.', 23, 1784677515, 'AB+', 'male', '2021-12-09', 2452, 'uploads/patient/1719026702038414.jpg', 'gdfgd', NULL, NULL, NULL, NULL, NULL, '2021-12-12 22:33:35', '2021-12-13 04:33:35'),
(13, 2, 'PTD-12', 'fsadf sadfsadf', 'labonyaktesdfsadr246@gmail.com', '$2y$10$orh6T8D1PXSTUW0HnBqYo.Wz/JA.XhWbqcO8C4KrO34Ilx4VjFgkO', 54554, 456456, 'AB+', 'male', '2021-12-13', 96, 'uploads/patient/1719026773684690.jpg', 'fsdfsad', 'sadf', NULL, NULL, NULL, NULL, '2021-12-12 22:34:43', '2021-12-13 04:34:43'),
(14, 1, 'PTD-13', 'pabon saha', 'labonfyakter246@gmail.cotghfg', '$2y$10$W12R8P3Iph/nnMFclujDReD8dWUxi6Aop7YNJvuuh8ZwfThiPSqdm', 23565465, 5345345, 'O+', 'male', '2021-12-15', 445, 'uploads/patient/1719026875588854.jpg', 'rere55rt', 'sfsad', NULL, NULL, NULL, NULL, '2021-12-12 22:36:20', '2021-12-13 04:36:20'),
(15, 3, 'PTD-14', 'fklasjfas asdfsaf', 'labonyaktsdfsaer246@gmail.com', '$2y$10$HHPCPJbWhOl6TGvZZzcBWezvhy21jozZov.0j6fRDGVA9P8jfbtZK', 23545, 3453453, 'O+', 'male', '2021-12-14', 2452, NULL, 'lkjsdkljf', 'sdfsad', NULL, NULL, NULL, NULL, '2021-12-12 22:40:58', '2021-12-13 04:40:58'),
(16, 2, 'PTD-15', 'dfgdfafsaf asdfas', 'labonyaktdsfer246@gmail.com', '$2y$10$leNTT4/ddlsG1d7C4QUQrukRSytWr76wwVuEdwrKbYsi6Wjimk4hu', 654654, 345345, 'B-', 'male', '2021-12-14', 2452, 'uploads/patient/1719027382363885.jpg', 'aedfgh', 'dsfgh', NULL, NULL, NULL, NULL, '2021-12-12 22:44:23', '2021-12-13 04:44:23'),
(26, 1, 'PTD-16', 'mehedi hassan asgar', 'admin@gmail.com', '$2y$10$iUPs0oOlim4YDNx3hBszjepeAezjrz2PqYnL9begsOBxJOr5lWrki', 1300847431, 2345678, 'AB+', 'male', '2021-12-16', 24, 'uploads/patient/1719911854605385.jpg', 'panthapath', 'bonosri', 'naoga', '617', 'facebook', 'twitter', '2021-12-22 17:02:42', '2021-12-22 23:02:42'),
(27, 3, 'PTD-17', 'labonyyyyyyyyyyyyy asgar', 'admin123@gmail.com', '$2y$10$XAPi.HbnFF46NZC5YGk0h.dyHlbGD4gDQe6WxjyQBSzkcQlQcLum6', 1300847431, 2345678, 'AB+', 'male', '2021-12-07', 24, 'uploads/patient/1720182214229807.jpg', 'panthapath', 'fsdf', 'sfdf', 'we23', 'facebook', 'twitter', '2021-12-25 16:39:57', '2021-12-25 22:39:57'),
(28, 3, 'PTD-18', 'mehedi hassan asguuuuuuuuuuuuuu', 'patient@gmail.com', '$2y$10$K81HdlDxnAyBtsrFIrwp2uSzcj/bktLSEgORIBgX1drX0UO3b1GDK', 1300847431, 2345678, 'A-', 'male', '2021-12-23', 24, 'uploads/patient/1720200290640610.jpg', 'rampura', 'bonosri', 'naoga', 'we23', 'dsf', 'sad', '2021-12-25 21:27:16', '2021-12-26 03:27:16'),
(29, NULL, 'PTD-19', 'fdsg asgar', 'doctor@gmail.com', '$2y$10$U1Hbli7sor4cE6SOLBHgyeBKOSMK.MxdKvL.mBL6n0rvgSYg8raH2', 1300847431, 2345678, 'A+', 'male', '2021-12-09', 45, 'uploads/patient/1720200666822727.jpg', 'rampura bonsri', 'fsdf', 'naoga', 'we23', 'dsf', 'twitter', '2021-12-25 21:33:15', '2021-12-26 03:33:15'),
(30, NULL, 'PTD-20', 'ddddd ffffffff', 'doctofdgfdgbg@gmail.com', '$2y$10$mpbiD8du/QbLEPZW8aHJWea410m/1P9DkWeXrcseu8SlVXOjglUvu', 1300847431, 2345678, 'AB-', 'female', '2021-12-15', 24, 'uploads/patient/1720200870072296.jpg', 'hftghjjgmail.com', 'bonosri', 'naoga', '617', 'dsf', 'twitter', '2021-12-25 21:36:28', '2021-12-26 03:36:28'),
(31, 3, 'PTD-21', 'labony lutfa', 'labony@gmail.com', '$2y$10$8agSgzjxYg5qKrkwoF0TcuNfewOAKVfuRZM.VxzmqSUtpPGFgzJDS', 1300847431, 2345678, 'AB-', 'male', '2021-12-26', 24, 'uploads/patient/1720201058425635.jpg', 'panthapath', 'fsdf', 'naoga', 'we23', 'dsf', 'twitter', '2021-12-25 21:39:28', '2021-12-26 03:39:28'),
(32, 1, 'PTD-22', 'for update', 'adminj1dsadc@gmail.com', '$2y$10$5.Ftm3gs1h5I9FBeYzopX.j7sM7mdflZ6OrqQUvwa/.vu2uAjkiDO', 1300847431, 2345678, 'A-', 'female', '2021-12-09', 24, 'uploads/patient/1720201624694959.jpg', 'rampura bonsri', 'fsdf', 'naoga', 'we23', 'facebook', 'twitter', '2021-12-25 21:45:25', '2021-12-25 21:48:28'),
(33, 1, 'PTD-23', 'ddddd asgar', 'admin1@gmail.com', '$2y$10$H1brVLKMdxad/YQcpjNNaOqFFzEuVK/vdDahbBQ3H3XyDK//mAztq', 1300847431, 2345678, 'B-', 'male', '2022-01-24', 45, 'uploads/patient/1721185984834929.png', 'natore', 'bonosri', 'sfdf', '617', 'dsf', 'twitter', '2022-01-05 18:34:28', '2022-01-06 06:34:28'),
(34, 1, 'PTD-24', 'ddddd asgar', 'adminnjk1@gmail.com', '$2y$10$dzD04Sr6bIRqeiR8FswzPeqK9nb5pfCGos6f5zFBEFbEAzre0OFcO', 1300847431, 2345678, 'B-', 'male', '2022-01-24', 45, 'uploads/patient/1721186029178171.png', 'natore', 'bonosri', 'sfdf', '617', 'dsf', 'twitter', '2022-01-05 18:35:10', '2022-01-06 06:35:10'),
(35, 1, 'PTD-25', 'mehedi hassan defs', 'admin231@gmail.com', '$2y$10$uj5hxjJdsqGnOM4y3eSFOuoW.nQEA2pnNTqaMOvIZ8wvd7G3EjmUK', 1300847431, 2345678, 'A-', 'male', '2022-01-26', 24, 'uploads/patient/1721186395195738.png', 'natore', 'bonosri', 'Dhaka', 'we23', 'facebook', 'sad', '2022-01-05 18:40:59', '2022-01-06 06:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `patient_case_studies`
--

CREATE TABLE `patient_case_studies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_allergies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tendency_bleed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heart_disease` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diabetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surgery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accident` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_medical_history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_medication` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_pregnency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_feeding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `low_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_case_studies`
--

INSERT INTO `patient_case_studies` (`id`, `outlet_id`, `patient_id`, `food_allergies`, `tendency_bleed`, `heart_disease`, `high_blood_pressure`, `diabetic`, `surgery`, `accident`, `family_medical_history`, `current_medication`, `family_pregnency`, `breast_feeding`, `health_insurance`, `low_income`, `weight`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'PTD-00', 'tfghtfrj', 'fhtfgh', 'ghjngh', 'ghnghn', 'hnhgh', 'hnhgm', 'ghnhgnm', 'vhnh', 'hmnhv', 'hhnm', 'hgn', NULL, 'hgnhbv', 50.3, 'hnm', 'Active', '2021-12-17 21:25:47', '2021-12-17 21:25:47'),
(5, 1, 'PTD-22', 'mhjm', 'yjtgjg', 'fdgfh', 'hjkjhkm', 'jmhjm', 'ghjm', 'gmhjm', 'njghmn', 'mbnm', 'mbjm', 'mbjmmb', NULL, 'bnm vbm', 20, 'bm bnm', 'Active', '2021-12-28 03:20:50', '2021-12-28 03:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacists`
--

INSERT INTO `pharmacists` (`id`, `outlet_id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `dob`, `age`, `blood_group`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Labony', 'fvfvfjhkjdv@gh.com', '45646sfhdfjghjm', 'jknjknmkjvfghg', '5485485', 'male', '2021-12-08', '69', 'O+', 'upload/pharmacist/1718209167418664.jpg', '2021-12-04 03:59:13', '2021-12-04 03:59:13'),
(2, 2, 'mehedi', 'mnj@gmail.com', 'dsfghj456789', 'barisal', '01235645123', 'female', '2021-12-08', '42', 'B+', 'upload/pharmacist/1718214586988516.jpg', '2021-12-04 05:24:50', '2021-12-04 05:25:21'),
(3, 3, 'labony', 'loabon3454y@gmail.com', 'asvxcfbhhfg32545665', 'dhaka', '01799646486', 'female', '2021-12-21', '23', 'AB+', 'uploads/pharmacist/1718285334260500.jpg', '2021-12-05 00:09:40', '2021-12-05 00:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hospital_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visiting_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheif_complain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `outlet_id`, `patient_id`, `patient_name`, `sex`, `dob`, `weight`, `blood_pressure`, `reference`, `type`, `appointment_id`, `date`, `hospital_name`, `address`, `visiting_fees`, `patient_notes`, `cheif_complain`, `insurance`, `created_at`, `updated_at`) VALUES
(2, 1, 'PTD-22', 'for update', 'female', '2021-12-09', 20, 'hjkjhkm', 'bm bnm', 'Old', 'ABC1234', NULL, 'Demo Hospital Limited', 'House#25, 4th Floor, Mannan Plaza, Khilkhet, Dhaka-1229, Bangladesh.', '500', 'dfsgsdfgsdfgsdfgsd', 'for check', NULL, '2021-12-28 03:22:01', '2021-12-28 03:22:47'),
(3, 1, 'PTD-00', 'labony', 'male', '2021-12-01', 50, 'ghnghn', 'hnm', 'New', 'ABC1234', NULL, 'Demo Hospital Limited', 'House#25, 4th Floor, Mannan Plaza, Khilkhet, Dhaka-1229, Bangladesh.', '1111', NULL, NULL, NULL, '2022-01-02 04:45:36', '2022-01-02 04:45:36'),
(4, 1, 'PTD-00', 'labony', 'male', '2021-12-01', 50, 'ghnghn', 'hnm', 'New', 'ABC1234', NULL, 'Demo Hospital Limited', 'House#25, 4th Floor, Mannan Plaza, Khilkhet, Dhaka-1229, Bangladesh.', '123', NULL, NULL, NULL, '2022-01-02 04:46:07', '2022-01-02 04:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `receptionists`
--

CREATE TABLE `receptionists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receptionists`
--

INSERT INTO `receptionists` (`id`, `outlet_id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `dob`, `age`, `blood_group`, `image`, `created_at`, `updated_at`) VALUES
(15, NULL, 'Labony', 'fvfvfdv@gh.com', '456464fdrfycghbh', 'jknjknmkjvhj', 1234565325, 'male', '2021-12-15', 44, 'O+', 'uploads/receptionist/1718281344335095.jpg', '2021-12-04 05:22:23', '2021-12-04 23:06:26'),
(16, NULL, 'mehedi', 'mnjrr@gmail.com', 'dsfghnbjm43645', 'fgvfd', 1235651232, 'male', '2021-12-14', 12, 'AB-', 'uploads/receptionist/1718280750161724.jpg', '2021-12-04 05:32:25', '2021-12-04 22:56:59'),
(17, NULL, 'Mamun', 'doctor@gmail.com', '123456789ffS', 'panthapath', 1300847431, 'male', '2021-12-23', 45, 'AB+', 'uploads/receptionist/1720271187142025.jpg', '2021-12-26 22:14:08', '2021-12-26 22:14:08'),
(18, NULL, 'Mamun', 'doctodghfr@gmail.com', '123456789ghA', 'rampura bonsri', 1300847431, 'female', '2021-12-14', 45, 'AB+', 'uploads/receptionist/1720271224777021.jpg', '2021-12-26 22:14:44', '2021-12-26 22:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `rolepermissions`
--

CREATE TABLE `rolepermissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rolepermissions`
--

INSERT INTO `rolepermissions` (`id`, `outlet_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mamun', '2021-12-29 04:22:59', '2021-12-29 04:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `rolepermission_types`
--

CREATE TABLE `rolepermission_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(11) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rolepermission_types`
--

INSERT INTO `rolepermission_types` (`id`, `outlet_id`, `permission_id`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'svdfgv', NULL, NULL),
(2, NULL, 1, 'dfvdfvd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedulelists`
--

CREATE TABLE `schedulelists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `slot_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_time_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_time_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_patient_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_visiability` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedulelists`
--

INSERT INTO `schedulelists` (`id`, `outlet_id`, `slot_id`, `doctor_id`, `available_days`, `available_time_start`, `available_time_end`, `per_patient_time`, `serial_visiability`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '2', '2', 'Tuesday', '14:27', '14:28', '14:27', 'Timestamp', 'Active', '2021-12-09 02:25:23', '2021-12-09 02:25:23'),
(2, NULL, '3', '3', 'Tuesday', '01:31', '11:31', '11:31', 'Timestamp', 'InActive', '2021-12-11 21:31:19', '2021-12-11 21:31:19'),
(4, NULL, '3', '3', 'Monday', '16:57', '19:54', '18:54', 'Timestamp', 'Active', '2021-12-12 04:54:52', '2021-12-17 23:06:04'),
(5, NULL, '16', '3', 'Friday', '21:21', '10:23', '01:10', 'Timestamp', 'Active', '2021-12-18 21:22:41', '2021-12-18 21:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `slot_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `outlet_id`, `slot_name`, `slot_time`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dfgh', '12-15', 'Active', '2021-12-07 03:17:48', '2021-12-17 22:42:14'),
(2, NULL, 'sdfgh', '12.00-2.00', 'Active', '2021-12-07 04:04:28', '2021-12-07 04:04:28'),
(3, NULL, 'gjg', '58-60', 'Active', '2021-12-07 04:04:52', '2021-12-07 05:32:33'),
(4, NULL, 'dfghn', '4214521', 'InActive', '2021-12-07 04:57:00', '2021-12-07 05:32:25'),
(5, NULL, 'sdfghjk', '4156', 'InActive', '2021-12-07 05:09:50', '2021-12-07 05:09:50'),
(6, NULL, 'dfg', '254185', 'Active', '2021-12-07 21:28:19', '2021-12-07 21:28:19'),
(7, NULL, 'sdfg', '58683', 'Active', '2021-12-07 21:39:28', '2021-12-07 21:39:28'),
(9, NULL, 'fgbh', '98595', 'Active', '2021-12-07 21:41:27', '2021-12-07 21:41:27'),
(10, NULL, 'edfghn', '55', 'Active', '2021-12-07 21:41:48', '2021-12-07 21:41:48'),
(11, NULL, 'edrftg', '08-12', 'Active', '2021-12-07 21:46:07', '2021-12-07 21:46:07'),
(12, NULL, 'grfthy', '08-12', 'Active', '2021-12-07 21:57:17', '2021-12-07 21:57:17'),
(13, NULL, 'vbnm', '8125', 'Active', '2021-12-07 21:57:50', '2021-12-07 21:57:50'),
(15, NULL, 'fdsf', '43234', 'Active', '2021-12-17 22:42:03', '2021-12-17 22:42:03'),
(16, NULL, 'time test', '10:00 - 12:00', 'Active', '2021-12-18 21:20:15', '2021-12-18 21:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gpOYdCDBR4TTt1CwzeTHVSPQBEppqiM3IPF6zzAt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM0dERU84RXFkZ1JwZHFFMlN5MUs5V0dRWEljNVk3ZmdZRXhQeWlSSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO319', 1641698659),
('RWhbHEWF3dS2krRAkVJBKliejezBagUUOD7bVNgp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTU9RemthS1haVmhFRjhCZTgxMWxGeWF6ZHdWTWwzZjVwRndmYW44WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9QcmVzY3JpcHRpb24vdmlldyI7fXM6MzoidXJsIjthOjA6e31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1641105585),
('vbGVLm7js46DyMlOxERGRz8WZAEl8Fcos4RsdZf3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieTJaMUlCZ1BEOEhBdjlhM3BycEE1elRrR3JWcUF1Y1VQTUU0Y2lPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9BcHBvaW50bWVudC92aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1641457258);

-- --------------------------------------------------------

--
-- Table structure for table `super_admins`
--

CREATE TABLE `super_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_admins`
--

INSERT INTO `super_admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'super-admin@gmail.com', NULL, '$2y$10$A.p7oeReBLdMHzPzkJJGIuY2Jpq6pWbJf88P2GPh0okMeq/nOvnD.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `created_at`, `updated_at`) VALUES
(1, '45', '2021-12-26 21:44:21', '2021-12-26 21:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `outlet_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Labony', 'admin@gmail.com', NULL, '$2y$10$A.p7oeReBLdMHzPzkJJGIuY2Jpq6pWbJf88P2GPh0okMeq/nOvnD.', NULL, NULL, NULL, NULL, NULL, '2021-11-16 21:54:27', '2021-11-16 21:54:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `apointments`
--
ALTER TABLE `apointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_records`
--
ALTER TABLE `birth_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donations`
--
ALTER TABLE `blood_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donors`
--
ALTER TABLE `blood_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood__issues`
--
ALTER TABLE `blood__issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box_sizes`
--
ALTER TABLE `box_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `death_records`
--
ALTER TABLE `death_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis_prescriptions`
--
ALTER TABLE `diagnosis_prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis_tests`
--
ALTER TABLE `diagnosis_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_depts`
--
ALTER TABLE `doctor_depts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_disease_charges`
--
ALTER TABLE `insurance_disease_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorists`
--
ALTER TABLE `laboratorists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_creates`
--
ALTER TABLE `medicine_creates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_lists`
--
ALTER TABLE `medicine_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_manufactures`
--
ALTER TABLE `medicine_manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_prescriptions`
--
ALTER TABLE `medicine_prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_beds`
--
ALTER TABLE `new_beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_bed_allotments`
--
ALTER TABLE `new_bed_allotments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_bed_types`
--
ALTER TABLE `new_bed_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others__case__studies`
--
ALTER TABLE `others__case__studies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionists`
--
ALTER TABLE `receptionists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolepermission_types`
--
ALTER TABLE `rolepermission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedulelists`
--
ALTER TABLE `schedulelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `super_admins`
--
ALTER TABLE `super_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `super_admins_email_unique` (`email`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apointments`
--
ALTER TABLE `apointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `birth_records`
--
ALTER TABLE `birth_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donations`
--
ALTER TABLE `blood_donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_donors`
--
ALTER TABLE `blood_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood__issues`
--
ALTER TABLE `blood__issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `box_sizes`
--
ALTER TABLE `box_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `death_records`
--
ALTER TABLE `death_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `diagnosis_prescriptions`
--
ALTER TABLE `diagnosis_prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `diagnosis_tests`
--
ALTER TABLE `diagnosis_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_depts`
--
ALTER TABLE `doctor_depts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_disease_charges`
--
ALTER TABLE `insurance_disease_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratorists`
--
ALTER TABLE `laboratorists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_creates`
--
ALTER TABLE `medicine_creates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_lists`
--
ALTER TABLE `medicine_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medicine_manufactures`
--
ALTER TABLE `medicine_manufactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_prescriptions`
--
ALTER TABLE `medicine_prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `new_beds`
--
ALTER TABLE `new_beds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `new_bed_allotments`
--
ALTER TABLE `new_bed_allotments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new_bed_types`
--
ALTER TABLE `new_bed_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `others__case__studies`
--
ALTER TABLE `others__case__studies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacists`
--
ALTER TABLE `pharmacists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `receptionists`
--
ALTER TABLE `receptionists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rolepermission_types`
--
ALTER TABLE `rolepermission_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedulelists`
--
ALTER TABLE `schedulelists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `super_admins`
--
ALTER TABLE `super_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
