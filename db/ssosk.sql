-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssosk`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_id` int(100) NOT NULL,
  `about_head` varchar(255) NOT NULL,
  `about_post` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `footer_id` int(50) NOT NULL,
  `footer_head` varchar(255) NOT NULL,
  `footer_address` varchar(255) NOT NULL,
  `footer_email` varchar(255) NOT NULL,
  `footer_web` varchar(255) NOT NULL,
  `footer_fb` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_slide`
--

CREATE TABLE `header_slide` (
  `header_id` int(100) NOT NULL,
  `header_pic` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_content`
--

CREATE TABLE `job_content` (
  `job_id` int(100) NOT NULL,
  `job_header` varchar(200) NOT NULL,
  `job_post` text NOT NULL,
  `job_files_old_name` varchar(255) NOT NULL,
  `job_files_name` varchar(255) NOT NULL,
  `job_file_type` varchar(15) NOT NULL,
  `job_file_size` double NOT NULL,
  `job_post_name` varchar(255) NOT NULL,
  `job_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `prename` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `telnumber` varchar(255) NOT NULL,
  `role` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members_content`
--

CREATE TABLE `members_content` (
  `mb_id` int(100) NOT NULL,
  `mb_name` varchar(255) NOT NULL,
  `mb_lname` varchar(255) NOT NULL,
  `mb_position` varchar(255) NOT NULL,
  `mb_pic` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `middle_content`
--

CREATE TABLE `middle_content` (
  `middle_id` int(100) NOT NULL,
  `middle_pic` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `navigator`
--

CREATE TABLE `navigator` (
  `id` int(100) NOT NULL,
  `index` varchar(255) NOT NULL,
  `ssoname` varchar(255) NOT NULL,
  `public` varchar(255) NOT NULL,
  `activaty` varchar(255) NOT NULL,
  `information` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `navigator`
--

INSERT INTO `navigator` (`id`, `index`, `ssoname`, `public`, `activaty`, `information`, `about`, `members`, `status`) VALUES
(1, 'หน้าแรก', 'สำนักงานสาธารณสุขอำเภอเมืองสงขลา', 'ประชาสัมพันธ์', 'กิจกรรม', 'สารสนเทศ', 'เกี่ยวกับเรา', 'บุคลากร', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postcontent`
--

CREATE TABLE `postcontent` (
  `post_id` int(200) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_img` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prename`
--

CREATE TABLE `prename` (
  `preid` int(20) NOT NULL,
  `prename_id` int(20) NOT NULL,
  `prename` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ssomembers`
--

CREATE TABLE `ssomembers` (
  `sso_id` int(100) NOT NULL,
  `sso_name` varchar(100) NOT NULL,
  `sso_lname` varchar(100) NOT NULL,
  `sso_position` varchar(45) NOT NULL,
  `sso_img` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `header_slide`
--
ALTER TABLE `header_slide`
  ADD PRIMARY KEY (`header_id`);

--
-- Indexes for table `job_content`
--
ALTER TABLE `job_content`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `members_content`
--
ALTER TABLE `members_content`
  ADD PRIMARY KEY (`mb_id`);

--
-- Indexes for table `middle_content`
--
ALTER TABLE `middle_content`
  ADD PRIMARY KEY (`middle_id`);

--
-- Indexes for table `navigator`
--
ALTER TABLE `navigator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postcontent`
--
ALTER TABLE `postcontent`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `prename`
--
ALTER TABLE `prename`
  ADD PRIMARY KEY (`preid`);

--
-- Indexes for table `ssomembers`
--
ALTER TABLE `ssomembers`
  ADD PRIMARY KEY (`sso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `footer_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header_slide`
--
ALTER TABLE `header_slide`
  MODIFY `header_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_content`
--
ALTER TABLE `job_content`
  MODIFY `job_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_content`
--
ALTER TABLE `members_content`
  MODIFY `mb_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `middle_content`
--
ALTER TABLE `middle_content`
  MODIFY `middle_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navigator`
--
ALTER TABLE `navigator`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postcontent`
--
ALTER TABLE `postcontent`
  MODIFY `post_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ssomembers`
--
ALTER TABLE `ssomembers`
  MODIFY `sso_id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
