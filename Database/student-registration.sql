-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2026 at 04:58 PM
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
-- Database: `student-registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `course` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `full_name`, `email`, `phone`, `dob`, `gender`, `course`, `address`, `status`, `created_at`) VALUES
(1, 'STU101', 'Alice Johnson', 'alice.johnson@example.com', '555-0101', '0000-00-00', '', 'Computer Science', '', 'Active', '2026-10-01 11:29:38'),
(2, 'STU102', 'Bob Smith', 'bob.smith@example.com', '555-0102', '0000-00-00', '', 'Information Technology', '', 'Active', '2026-10-01 11:29:38'),
(3, 'STU103', 'Charlie Brown', 'charlie.brown@example.com', '555-0103', '0000-00-00', '', 'Software Engineering', '', 'Inactive', '2026-10-01 11:29:38'),
(4, 'STU104', 'Diana Prince', 'diana.prince@example.com', '555-0104', '0000-00-00', '', 'Computer Science', '', 'Active', '2026-10-01 11:29:38'),
(5, 'STU105', 'Evan Wright', 'evan.wright@example.com', '555-0105', '0000-00-00', '', 'Data Science', '', 'Active', '2026-10-01 11:29:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
