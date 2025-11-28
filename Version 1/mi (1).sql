-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2025 at 12:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mi`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','verified','rejected','enrolled') NOT NULL DEFAULT 'pending',
  `admission_note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `first_name`, `last_name`, `birthdate`, `contact`, `status`, `admission_note`, `created_at`) VALUES
(5, '2025-0007', 'Jimmy', 'Maraganas', '2004-02-22', '09705359158', 'verified', '', '2025-11-27 05:10:05'),
(6, '2025-0008', 'Louie', 'Abadines', '2001-02-26', '09705359158', 'verified', '', '2025-11-27 07:30:00'),
(7, '2025-0005', 'Louie', 'Abadines', '2001-02-22', '09705359158', 'verified', '', '2025-11-27 10:02:10'),
(12, '', 'Kate', 'Asio', '2001-02-22', '09705359158', 'verified', '', '2025-11-27 22:00:07'),
(13, '2025-0009', 'Janine', 'Coscos', '2001-02-22', '09633773011', 'verified', '', '2025-11-28 01:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `application_details`
--

CREATE TABLE `application_details` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `suffix` varchar(16) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `lrn` varchar(50) DEFAULT NULL,
  `email_address` varchar(191) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `municipality` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(16) DEFAULT NULL,
  `application_type` enum('New Student','Transferee','Returning / Balik-Aral') DEFAULT NULL,
  `last_school_attended` varchar(255) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `last_grade_level_completed` varchar(100) DEFAULT NULL,
  `year_completed` varchar(20) DEFAULT NULL,
  `awards_received` text DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_contact` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_relationship` varchar(100) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `emergency_name` varchar(255) DEFAULT NULL,
  `emergency_relationship` varchar(100) DEFAULT NULL,
  `emergency_mobile` varchar(255) DEFAULT NULL,
  `emergency_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_details`
--

INSERT INTO `application_details` (`id`, `application_id`, `middle_name`, `suffix`, `place_of_birth`, `nationality`, `religion`, `lrn`, `email_address`, `home_address`, `barangay`, `municipality`, `province`, `zip_code`, `application_type`, `last_school_attended`, `school_address`, `last_grade_level_completed`, `year_completed`, `awards_received`, `mother_name`, `mother_contact`, `mother_occupation`, `father_name`, `father_contact`, `father_occupation`, `guardian_name`, `guardian_relationship`, `guardian_contact`, `guardian_address`, `emergency_name`, `emergency_relationship`, `emergency_mobile`, `emergency_address`, `created_at`, `updated_at`) VALUES
(3, 6, 'Lasit', '', 'Southern Leyte', 'Filipino', 'Catholic', '436546578875', 'abadineslouie@gmail.com', 'Purok 8 Alipao, Alegria, Surigao del Norte', 'Alipao', 'Surigao City', 'Surigao Del Norte', '8400', 'New Student', 'Alegria National High School', 'Purok 8 Alipao, Alegria, Surigao del Norte', 'Grade 6', '2023-2024', '', 'Vennis Abadines', '09705359158', 'Housewife', 'Virgil lumayag', '09705359158', 'Farmer', 'Vennis Lasit', 'Mother', '09705359158', 'Purok-2', 'Vennis Lasit', 'Mother', '09705359158', 'Purok-2', '2025-11-27 07:30:00', '2025-11-27 07:30:00'),
(4, 7, 'Lasit', '', 'Southern Leyte', 'Filipino', 'Catholic', '436546578875', 'abadineslouie@gmail.com', 'Purok 8 Alipao, Alegria, Surigao del Norte', 'Kauswagan', 'Surigao City', 'Surigao Del Norte', '8400', 'New Student', 'Alegria National High School', 'Purok-2', 'Grade 6', '2023-2024', '', 'Vennis Lasit', '09705359158', 'Housewife', 'Vennis Lasit', '09705359158', 'Farmer', '', '', '', '', 'Virgil Lasit Lumayag', 'Mother', '09705359158', 'Purok 8 Alipao, Alegria, Surigao del Norte', '2025-11-27 10:02:10', '2025-11-27 10:02:10'),
(5, 12, 'Lasit', '', 'Butuan City', 'Filipino', 'Catholic', '436546578875', 'kate@gmail.com', 'Purok-2', 'Sumilihon', 'Butuan City', 'Agusan Del Norte', '8400', 'New Student', 'Alegria National High School', 'Purok-2', 'Grade 6', '2023-2024', '', 'Cristie Asio', '09705359158', 'Housewife', 'Roland Asio', '09705359158', 'Farmer', '', '', '', '', 'Cristie Asio', 'Mother', '09705359158', 'Purok 8 Alipao, Alegria, Surigao del Norte', '2025-11-27 22:00:07', '2025-11-27 22:00:07'),
(6, 13, '', '', 'Cabadbaran City', 'Filipino', 'Catholic', '0990495858', 'Janine@gmail.com', 'Curato Str.', 'Soriano', 'Cabadbaran City', 'Agusan Del Norte', '1212', 'New Student', 'Cabadbaran National High School', 'C. Curato str.', '9', '2024-2025', 'High Honors', 'Maxcel Narisma', '090868598746', 'Wrestler', 'Daniel Padilla', '09984746478', 'Hoouse Husband', '', '', '', '', 'Maxcel Narisma', 'Mother', '0909098763', 'Curato Str. Cabadbaran city', '2025-11-28 01:48:23', '2025-11-28 01:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL,
  `enrollment_id` int(11) NOT NULL,
  `bill_type` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('pending','paid','overdue','cancelled','pending_verification') NOT NULL DEFAULT 'pending',
  `receipt_path` varchar(255) DEFAULT NULL,
  `payment_method` enum('walk_in','gcash') DEFAULT NULL,
  `verified_by` varchar(20) DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `enrollment_id`, `bill_type`, `description`, `amount`, `due_date`, `status`, `receipt_path`, `payment_method`, `verified_by`, `verification_note`, `created_at`, `updated_at`) VALUES
(5, 10, 'enrollment_fee', '', 4000.00, '2025-12-04', 'paid', '/MI2/uploads/receipts/receipt_5_1764279541.png', 'gcash', '2025-0004', '', '2025-11-27 21:38:24', '2025-11-27 21:39:34'),
(8, 21, 'enrollment_fee', '', 4000.00, '2025-12-05', 'paid', '/MI2/uploads/receipts/receipt_8_1764295432.png', 'gcash', '2025-0004', '', '2025-11-28 01:52:27', '2025-11-28 02:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `enrollment_number` varchar(64) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `grade_level` varchar(64) DEFAULT NULL,
  `strand` varchar(64) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `status` enum('pending_payment','paid','enrolled','cancelled','not_enrolled') NOT NULL DEFAULT 'pending_payment',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `app_id`, `user_id`, `enrollment_number`, `first_name`, `middle_name`, `last_name`, `address`, `contact_number`, `guardian_name`, `guardian_contact`, `grade_level`, `strand`, `program`, `status`, `created_at`) VALUES
(10, 7, '2025-0005', 'MI2025-00010', 'Louie', 'Lasit', 'Abadines', 'Purok 8 Alipao, Alegria, Surigao del Norte', '09705359158', 'Vennis Abadines', '098784745363', 'Grade 11', 'GAS', '', 'not_enrolled', '2025-11-27 21:38:24'),
(21, 13, '2025-0009', 'MI2025-00021', 'Janine', '', 'Coscos', 'Curato Str.', '09633773011', 'Maxcel Narisma', '0696955755', 'Grade 10', '', '', 'enrolled', '2025-11-28 01:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_fees`
--

CREATE TABLE `enrollment_fees` (
  `fee_id` int(11) NOT NULL,
  `fee_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `applicable_to_group` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollment_fees`
--

INSERT INTO `enrollment_fees` (`fee_id`, `fee_name`, `amount`, `school_year`, `applicable_to_group`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Enrollment Fee', 4000.00, '2024-2025', 'All', '', '2025-11-26 14:18:55', '2025-11-27 09:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_periods`
--

CREATE TABLE `enrollment_periods` (
  `id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment_periods`
--

INSERT INTO `enrollment_periods` (`id`, `school_year`, `is_active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '2025-2026', 1, '2025-03-05', '2025-10-05', '2025-11-26 13:18:10', '2025-11-28 00:49:06'),
(3, '2024-2025', 0, '2004-03-05', '2024-12-05', '2025-11-26 14:18:10', '2025-11-28 00:49:06'),
(5, '2023-2024', 0, '2023-06-04', '2023-10-04', '2025-11-27 19:03:41', '2025-11-27 19:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('walk_in','gcash') NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `bill_id`, `amount`, `payment_method`, `reference_number`, `receipt_path`, `payment_date`, `created_at`, `updated_at`) VALUES
(6, 5, 4000.00, 'gcash', NULL, NULL, '2025-11-27 21:39:34', '2025-11-27 21:39:34', '2025-11-27 21:39:34'),
(9, 8, 4000.00, 'gcash', NULL, NULL, '2025-11-28 02:05:15', '2025-11-28 02:05:15', '2025-11-28 02:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `suffix` varchar(16) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(16) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(128) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `security_question_1` varchar(255) DEFAULT NULL,
  `answer_1` varchar(255) DEFAULT NULL,
  `security_question_2` varchar(255) DEFAULT NULL,
  `answer_2` varchar(255) DEFAULT NULL,
  `security_question_3` varchar(255) DEFAULT NULL,
  `answer_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `suffix`, `birthdate`, `age`, `sex`, `street`, `barangay`, `municipal`, `province`, `country`, `zipcode`, `email`, `username`, `password`, `role`, `is_active`, `security_question_1`, `answer_1`, `security_question_2`, `answer_2`, `security_question_3`, `answer_3`, `created_at`) VALUES
('', 'Kate', NULL, 'Asio', NULL, '0000-00-00', 0, '', '', '', '', '', '', '', 'Asio@123', 'Kate', '$2y$10$ti4BgPjBo0wAODBDCs39KODSZQD3U5LWCMJnF92LLOca8YLbgGXBS', 'student', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-27 18:48:17'),
('2025-0001', 'System', '', 'Administrator', '', '2001-02-26', 24, 'Male', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'Kauswagan', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'admin@gmail.com', 'Admin', '$2y$10$xvcYYD7tasDYwKThM9HGQ.3Q/Z.EzzoO3Gj813N.JAhC0D37Ij9xG', 'admin', 1, 'Who is your best friend in Elementary?', '$2y$10$e1Lq0r3E0itDYFy7xoO4weP.ClD3NGjXZfVhsVd8KgbQDtLHZaKFa', 'What is your favorite color?', '$2y$10$TRZGMPz/p612yC/pN5xfxeaDwVqAoOUJVPLbp4sh5H.xt/toHoZTC', 'What is your favorite fruit?', '$2y$10$4Lx48yw2muTweUPm7xiqOumf5kY4pmt4Vs.CjHyxEs3elCgxyBvUO', '2025-11-26 13:28:26'),
('2025-0002', 'Admission', '', 'Office', '', '1975-05-27', 50, 'Male', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'Comagascas', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'Admission@gmail.com', 'Admission', '$2y$10$MviKo/YmTr67u3yBMtY08.tHQcbz1I.tBDwsWJvGe6C6VFlWzGgQe', 'admission', 1, 'Who is your best friend in Elementary?', '$2y$10$TvnQw7dWf.tCEOzEjUQRae9ag6e3W6mUpgIzkdXia0rStAdYdNThi', 'What is your favorite color?', '$2y$10$lLU8sZ6MaCZ6IJHT7TDBl.BON2rdZSHDhNv/IGmFAlw7qkEJyeMx6', 'What is your favorite fruit?', '$2y$10$BivJQh8n8vMfLn.YD44l7.tNTUFv0I/aTdcSvC9szL9UXRvJe6wJS', '2025-11-26 13:32:32'),
('2025-0003', 'Registrar', '', 'Office', '', '1980-04-30', 45, 'Male', 'Purok-2', 'Sumilihon', 'Butuan City', 'Agusan Del Norte', 'Philippines', '2882', 'Registrar@gmail.com', 'Registrar', '$2y$10$TVf7pEj.hvxnqBnHwURrC.R.VTJT1.CnugW9nHdjbkB/G4XFG6plC', 'registrar', 1, 'Who is your best friend in Elementary?', '$2y$10$dAzmGHzF.bFIb1.cjJEb8e3QCyH4HrKCSRlppqafDRh9B.BfTkOmW', 'What is your favorite color?', '$2y$10$xCz8yRsOcDjgyu5TxpiJcekcJPaPRB.hqJ488gkajoaQRK7Ok45Oe', 'What is your favorite fruit?', '$2y$10$qXqvtzwevP5h1eWixTZvUubhyvvkLgsgdeuHgrmV9nAjpmxOVxe6q', '2025-11-26 13:35:06'),
('2025-0004', 'Cashier', '', 'Office', '', '2001-10-02', 24, 'Male', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'San Juan', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'Cashier@gmail.com', 'Cashier', '$2y$10$qEgXa8MhNIkO/rJ1nP/hcOS0iz7MDGv4XhIKSE0cvaiDl1lP1PTWS', 'cashier', 1, 'Who is your best friend in Elementary?', '$2y$10$6bQd9IrPO6NRu8UQ2jbgjuHdN/gcCD45XAaTZdLF5YcJzyOx251va', 'What is your favorite color?', '$2y$10$501XoY9DM4D6OL8rrobXaeltZn0QJdNzsJboh7e/vKo9EbSuE5tFy', 'What is your favorite fruit?', '$2y$10$LJJ0ZA2zQMsQAfA18jfZteuofE9WVcj5lywzwQ7m3BGgRl6E3KYNS', '2025-11-26 13:39:16'),
('2025-0005', 'Vennis', '', 'Abadines', '', '1980-08-17', 45, 'Female', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'Alipao', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'Vennis@gmail.com', 'Vennis', '$2y$10$24GF5/DEXFSSDooPXYceJ.YewXW9u12G7Lr.Ah7RDfS/3sfCmJIQi', 'parent', 1, 'Who is your best friend in Elementary?', '$2y$10$XKY9W7jvyZJfmPj/wqYaqOtmGUxBb0iSNaTZ82QIdRe7Qex66QkfK', 'What is your favorite color?', '$2y$10$3M9PokapoO2hJS3zt/SO3uREUXPtUwAEoMA13MhMRxGEzs4B8fcq.', 'What is your favorite fruit?', '$2y$10$hZM.h08eSgttDes.e1.TweKtK58BAN6TmvEIzR8RKw6bKbXCFM5dO', '2025-11-26 13:42:28'),
('2025-0007', 'Jimmy', '', 'Maraganas', '', '2001-02-26', 24, 'Male', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'Alipao', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'jimmy@gmail.com', 'Jimmy', '$2y$10$Jz.H5Y2boR8cWCsNzq/qz.2A.Qu8.i0JJslvOeuQqWPcrmB1eoAi6', 'student', 1, 'Who is your best friend in Elementary?', '$2y$10$uem.U8Wr2rdfxqaT6azNnOaxHxHIoLaIofY20ai12TVHCemTrfBou', 'What is your favorite color?', '$2y$10$VtJ4qA2lZ8YH93G0Q8chEuse6wl3lB5e.PT.6VlwdI4IzSlhlT6h6', 'What is your favorite fruit?', '$2y$10$6AVGmlnQBFN/VBRmp90V5eDAMguv.fa.qCxxkoUVo5cC8fUMP/kYa', '2025-11-27 04:33:16'),
('2025-0008', 'Louie', 'Lasit', 'Abadines', '', '2001-02-26', 24, 'Male', 'Purok 8 Alipao, Alegria, Surigao Del Norte', 'Alipao', 'Surigao City', 'Surigao Del Norte', 'Philippines', '8400', 'abadineslouie@gmail.com', 'Louie', '$2y$10$x4N3nuMoSvJCRIYYjf5puefZkfFV0ZadJpGZgFmfB7AAmFlUOPsFe', 'student', 1, 'Who is your best friend in Elementary?', '$2y$10$ySD7/yLPn5Zzxdw18uxDEerIf2ChQOLorHI8xeShtv/kv/eSQtxEe', 'What is your favorite color?', '$2y$10$sTrOltGoc1waMbef9nvg6eVUtnbhplg0kELOGnzNp0flaj5JZvNLe', 'What is your favorite fruit?', '$2y$10$lvbA7znn3eugj1dfMAFHEO5ur4ZfKOu7RaMqedgPvHSHV7g57xM7W', '2025-11-27 07:27:50'),
('2025-0009', 'Janine', '', 'Coscos', '', '2001-02-22', 24, 'Female', 'Curato Str.', 'Soriano', 'Cabadbaran City', 'Agusan Del Norte', 'Philippines', '1212', 'Janine@gmail.com', 'Janine', '$2y$10$sT3Xa76rxeazaA6t9UMrA.oPL/m.KETbRzY1Grs.aoGIvkZQqbggy', 'student', 1, 'Who is your best friend in Elementary?', '$2y$10$SOkeWh5jIjJWsCa3m0wXW.2fKJVxSNO3P2c.is294hDyg/BYy4YCa', 'What is your favorite color?', '$2y$10$foX0zoFR2MW0TTxEOswmpO2w/aQwJqZNlr1Kw3DjqTDPipzqy6czi', 'What is your favorite fruit?', '$2y$10$ReXALmkw2IRl9viOnsVbzuaYmyZVKn.gJDOuT1ZquHuMjvlUCgP/y', '2025-11-28 01:42:55'),
('2025-0010', 'Maxcel', '', 'Narisma', '', '2004-12-24', 20, 'Female', 'Purok 2', 'Kauswagan', 'Cabadbarab City', 'Agusan Del Norte', 'Philippines', '3434', 'maxcel@gmail.com', 'Maxcel', '$2y$10$UMjMbg6nfrd719JpFoaRlO42PinSQIF1iWPqq.tJstIkuJa.vXCTK', 'student', 1, 'Who is your best friend in Elementary?', '$2y$10$fcU87AIXrbanzeUxhwl0Y.UAw6OOQF9OWe5qfpBMz3z1wmneHq0dG', 'What is your favorite color?', '$2y$10$1/yXKZ265psXuZvur0JRuOsR0XcQzf5eRHtFDDpGPZ1eOvkdRw3T6', 'What is your favorite fruit?', '$2y$10$KkfnZVI6fkaYeGlmgRg.zOQ4h3d4Yw/IBR.tpqzUZNFKgM57cHCdS', '2025-11-28 02:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_id_counter`
--

CREATE TABLE `user_id_counter` (
  `year` int(11) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_id_counter`
--

INSERT INTO `user_id_counter` (`year`, `counter`) VALUES
(2025, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_applications_user_id` (`user_id`),
  ADD KEY `idx_applications_status` (`status`);

--
-- Indexes for table `application_details`
--
ALTER TABLE `application_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_application_details_application` (`application_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_bills_verified_by` (`verified_by`),
  ADD KEY `idx_bills_enrollment_id` (`enrollment_id`),
  ADD KEY `idx_bills_status` (`status`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_enrollments_app` (`app_id`),
  ADD KEY `idx_enrollments_user_id` (`user_id`),
  ADD KEY `idx_enrollments_status` (`status`);

--
-- Indexes for table `enrollment_fees`
--
ALTER TABLE `enrollment_fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `enrollment_periods`
--
ALTER TABLE `enrollment_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_school_year` (`school_year`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_payments_bill_id` (`bill_id`),
  ADD KEY `idx_payments_payment_date` (`payment_date`),
  ADD KEY `idx_payments_payment_method` (`payment_method`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_email` (`email`),
  ADD UNIQUE KEY `uq_users_username` (`username`);

--
-- Indexes for table `user_id_counter`
--
ALTER TABLE `user_id_counter`
  ADD PRIMARY KEY (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `application_details`
--
ALTER TABLE `application_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `enrollment_fees`
--
ALTER TABLE `enrollment_fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enrollment_periods`
--
ALTER TABLE `enrollment_periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application_details`
--
ALTER TABLE `application_details`
  ADD CONSTRAINT `fk_application_details_application` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_bills_enrollment_id` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bills_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `fk_enrollments_app` FOREIGN KEY (`app_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_bill` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`bill_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
