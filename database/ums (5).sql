-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2024 at 11:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `student_id` int(11) NOT NULL,
  `current_job_title` varchar(255) DEFAULT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `graduation_year` int(11) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`student_id`, `current_job_title`, `office_name`, `office_location`, `graduation_year`, `contact_number`) VALUES
(11111101, 'afds', 'dsaf', 'fasd', 3434, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `student_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `present_state` enum('present','absent') DEFAULT NULL,
  `class_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`student_id`, `course_code`, `date`, `present_state`, `class_id`) VALUES
(210101001, 'CSE202', '2024-04-29', 'absent', 0),
(210101001, 'CSE202', '2024-04-30', 'absent', 0),
(210101001, 'CSE202', '2024-05-01', 'present', 0),
(210101001, 'CSE202', '2024-05-04', 'present', 0),
(210101001, 'CSE202', '2024-05-06', 'present', 0),
(210101001, 'CSE202', '2024-05-06', 'present', 1),
(210101001, 'CSE202', '2024-05-07', 'absent', 0),
(210101001, 'CSE202', '2024-08-12', 'absent', 0),
(210101004, 'CSE202', '2024-04-29', 'present', 0),
(210101004, 'CSE202', '2024-04-30', 'present', 0),
(210101004, 'CSE202', '2024-05-01', 'absent', 0),
(210101004, 'CSE202', '2024-05-04', 'absent', 0),
(210101004, 'CSE202', '2024-05-06', 'present', 0),
(210101004, 'CSE202', '2024-05-06', 'absent', 1),
(210101004, 'CSE202', '2024-05-07', 'present', 0),
(210101004, 'CSE202', '2024-08-12', 'present', 0),
(210101007, 'CSE202', '2024-04-29', 'present', 0),
(210101007, 'CSE202', '2024-04-30', 'absent', 0),
(210101007, 'CSE202', '2024-05-01', 'absent', 0),
(210101007, 'CSE202', '2024-05-04', 'present', 0),
(210101007, 'CSE202', '2024-05-06', 'absent', 0),
(210101007, 'CSE202', '2024-05-06', 'absent', 1),
(210101007, 'CSE202', '2024-05-07', 'absent', 0),
(210101007, 'CSE202', '2024-08-12', 'absent', 0),
(210101011, 'CSE202', '2024-04-29', 'absent', 0),
(210101011, 'CSE202', '2024-04-30', 'absent', 0),
(210101011, 'CSE202', '2024-05-01', 'present', 0),
(210101011, 'CSE202', '2024-05-04', 'absent', 0),
(210101011, 'CSE202', '2024-05-06', 'present', 0),
(210101011, 'CSE202', '2024-05-06', 'present', 1),
(210101011, 'CSE202', '2024-05-07', 'absent', 0),
(210101011, 'CSE202', '2024-08-12', 'absent', 0),
(210101014, 'CSE202', '2024-04-29', 'present', 0),
(210101014, 'CSE202', '2024-04-30', 'present', 0),
(210101014, 'CSE202', '2024-05-01', 'absent', 0),
(210101014, 'CSE202', '2024-05-04', 'present', 0),
(210101014, 'CSE202', '2024-05-06', 'absent', 0),
(210101014, 'CSE202', '2024-05-06', 'absent', 1),
(210101014, 'CSE202', '2024-05-07', 'present', 0),
(210101014, 'CSE202', '2024-08-12', 'absent', 0),
(210101020, 'CSE202', '2024-04-29', 'present', 0),
(210101020, 'CSE202', '2024-04-30', 'absent', 0),
(210101020, 'CSE202', '2024-05-01', 'absent', 0),
(210101020, 'CSE202', '2024-05-04', 'absent', 0),
(210101020, 'CSE202', '2024-05-06', 'absent', 0),
(210101020, 'CSE202', '2024-05-06', 'absent', 1),
(210101020, 'CSE202', '2024-05-07', 'absent', 0),
(210101020, 'CSE202', '2024-08-12', 'absent', 0),
(220201001, 'CSE2205', '2024-04-25', 'absent', 0),
(220201001, 'CSE2205', '2024-04-27', 'absent', 0),
(220201001, 'CSE2205', '2024-04-28', 'absent', 0),
(220201001, 'CSE2205', '2024-04-29', 'absent', 0),
(220201001, 'CSE2205', '2024-05-04', 'absent', 0),
(220201001, 'CSE2205', '2024-05-06', 'absent', 0),
(220201001, 'CSE2205', '2024-05-07', 'absent', 1),
(220201001, 'CSE2205', '2024-05-10', 'absent', 0),
(220201001, 'CSE2205', '2024-05-10', 'absent', 1),
(220201001, 'CSE2205', '2024-06-16', 'absent', 0),
(220201001, 'CSE2205', '2024-07-28', 'present', 0),
(220201004, 'CSE2205', '2024-04-25', 'absent', 0),
(220201004, 'CSE2205', '2024-04-27', 'absent', 0),
(220201004, 'CSE2205', '2024-04-28', 'absent', 0),
(220201004, 'CSE2205', '2024-04-29', 'absent', 0),
(220201004, 'CSE2205', '2024-05-04', 'absent', 0),
(220201004, 'CSE2205', '2024-05-06', 'absent', 0),
(220201004, 'CSE2205', '2024-05-07', 'absent', 1),
(220201004, 'CSE2205', '2024-05-10', 'absent', 0),
(220201004, 'CSE2205', '2024-05-10', 'absent', 1),
(220201004, 'CSE2205', '2024-06-16', 'present', 0),
(220201004, 'CSE2205', '2024-07-28', 'absent', 0),
(220201006, 'CSE2205', '2024-04-25', 'present', 0),
(220201006, 'CSE2205', '2024-04-27', 'present', 0),
(220201006, 'CSE2205', '2024-04-28', 'present', 0),
(220201006, 'CSE2205', '2024-04-29', 'present', 0),
(220201006, 'CSE2205', '2024-05-04', 'present', 0),
(220201006, 'CSE2205', '2024-05-06', 'present', 0),
(220201006, 'CSE2205', '2024-05-07', 'present', 1),
(220201006, 'CSE2205', '2024-05-10', 'present', 0),
(220201006, 'CSE2205', '2024-05-10', 'present', 1),
(220201006, 'CSE2205', '2024-06-16', 'absent', 0),
(220201006, 'CSE2205', '2024-07-28', 'absent', 0),
(220201009, 'CSE2205', '2024-04-25', 'present', 0),
(220201009, 'CSE2205', '2024-04-27', 'present', 0),
(220201009, 'CSE2205', '2024-04-28', 'present', 0),
(220201009, 'CSE2205', '2024-04-29', 'present', 0),
(220201009, 'CSE2205', '2024-05-04', 'present', 0),
(220201009, 'CSE2205', '2024-05-06', 'present', 0),
(220201009, 'CSE2205', '2024-05-07', 'present', 1),
(220201009, 'CSE2205', '2024-05-10', 'present', 0),
(220201009, 'CSE2205', '2024-05-10', 'present', 1),
(220201009, 'CSE2205', '2024-06-16', 'absent', 0),
(220201009, 'CSE2205', '2024-07-28', 'present', 0),
(220201010, 'CSE2205', '2024-04-25', 'absent', 0),
(220201010, 'CSE2205', '2024-04-27', 'absent', 0),
(220201010, 'CSE2205', '2024-04-28', 'absent', 0),
(220201010, 'CSE2205', '2024-04-29', 'absent', 0),
(220201010, 'CSE2205', '2024-05-04', 'absent', 0),
(220201010, 'CSE2205', '2024-05-06', 'absent', 0),
(220201010, 'CSE2205', '2024-05-07', 'absent', 1),
(220201010, 'CSE2205', '2024-05-10', 'absent', 0),
(220201010, 'CSE2205', '2024-05-10', 'absent', 1),
(220201010, 'CSE2205', '2024-06-16', 'absent', 0),
(220201010, 'CSE2205', '2024-07-28', 'absent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `author`) VALUES
(1001, 'DSA', 'Mehdee');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `course_code` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `Level` int(10) DEFAULT NULL,
  `Term` int(10) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`course_code`, `title`, `Level`, `Term`, `credit`, `department_id`, `teacher_id`) VALUES
('CSE101', 'Introduction to Computer Science ', 1, 1, 3, 1, 24002),
('CSE102', 'Data Structures and Algorithms', 1, 2, 3, 1, 24003),
('CSE202', 'Operating Systems', 3, 2, 3, 1, 24001),
('CSE2205', 'Database Management Systems', 2, 2, 3, 1, 24001),
('CSE301', 'Software Engineering', 2, 2, 3, 1, 24004),
('CSE302', 'Computer Networks', 1, 1, 3, 1, 24002),
('CSE401', 'Artificial Intelligence', 3, 2, 3, 1, 24001),
('CSE402', 'Web Development', 1, 2, 3, 1, 24002),
('CSE420', 'DOM Manipulation', 1, 1, 4, 1, 24006),
('CSE501', 'Machine Learning', 1, 2, 3, 1, 24001),
('CSE502', 'Cybersecurity', 1, 1, 3, 1, 24001);

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `count_exam` varchar(11) NOT NULL,
  `exam_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`count_exam`, `exam_date`) VALUES
('1st', '2024-05-19'),
('2nd', '2024-05-21'),
('3rd', '2024-05-26'),
('4th', '2024-05-29'),
('5th', '2024-06-02'),
('6th', '2024-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `location`) VALUES
(1, 'CSE', '4th floor'),
(2, 'EEE', '3th floor'),
(3, 'ME', '1st floor'),
(4, 'IPE', '2nd floor'),
(5, 'BBA', '5th floor'),
(6, 'ENG', '6th floor');

-- --------------------------------------------------------

--
-- Table structure for table `exam_date`
--

CREATE TABLE `exam_date` (
  `course_code` varchar(30) NOT NULL,
  `exam_dates` date NOT NULL,
  `exam_time` time NOT NULL,
  `exam_type` varchar(50) DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_date`
--

INSERT INTO `exam_date` (`course_code`, `exam_dates`, `exam_time`, `exam_type`, `room_no`, `topic`) VALUES
('CSE101', '2024-05-19', '16:24:00', 'final', '', NULL),
('CSE101', '2024-05-30', '20:03:00', 'ct3', '123', 'gsfd'),
('CSE2205', '2024-05-07', '14:27:00', 'ct3', '333', 'Deadlock And Recovery System'),
('CSE301', '2024-06-02', '15:27:00', 'final', '', NULL),
('CSE302', '2024-05-19', '16:24:00', 'final', '', NULL),
('CSE302', '2024-05-27', '20:03:00', 'ct3', '2342', 'Deadlock And Recovery System'),
('CSE402', '2024-05-19', '20:24:00', 'final', '', NULL),
('CSE501', '2024-06-02', '16:24:00', 'final', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `student_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`student_id`, `username`, `password`) VALUES
(11111102, 'username', 'password'),
(11111103, 'kafi_sir', 'kafi_sir');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `imgname` varchar(400) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `imgname`, `department_id`, `batch`, `section`) VALUES
(11111101, 'Student 1', '', 1, '1', 'A'),
(11111102, 'Student 2', '', 1, '1', 'A'),
(11111103, 'Student 3', '', 1, '1', 'A'),
(11111104, 'Student 4', '', 1, '1', 'A'),
(11111105, 'Student 5', '', 1, '1', 'A'),
(11111106, 'Student 6', '', 1, '1', 'A'),
(11111107, 'Student 7', '', 1, '1', 'A'),
(11111108, 'Student 8', '', 1, '1', 'A'),
(11111109, 'Student 9', '', 1, '1', 'A'),
(22222201, 'Student 1 Name', '', 1, '2', 'A'),
(22222202, 'Student 2 Name', '', 1, '2', 'A'),
(22222203, 'Student 3 Name', '', 1, '2', 'A'),
(22222204, 'Student 4 Name', '', 1, '2', 'A'),
(22222205, 'Student 5 Name', '', 1, '2', 'A'),
(22222206, 'Student 6 Name', '', 1, '2', 'A'),
(22222207, 'Student 7 Name', '', 1, '2', 'A'),
(22222208, 'Student 8 Name', '', 1, '2', 'A'),
(22222209, 'Student 9 Name', '', 1, '2', 'A'),
(22222210, 'Student 10 Name', '', 1, '2', 'A'),
(210101001, 'MUSFIQ ALAM CHOWDHURY', '', 1, '12', 'A'),
(210101004, 'MD. ABDULLAH MANDAL', '', 1, '12', 'A'),
(210101007, 'AHMED WAKIL MUTTAKI', '', 1, '12', 'A'),
(210101011, 'SAIDA SOBNOM ORNO', '', 1, '12', 'A'),
(210101012, 'S.M. KHALADUZZAMAN', '', 1, '12', 'A'),
(210101014, 'SUDIPTO SERKAR PRANTO', '', 1, '12', 'A'),
(210101016, 'SHAH SAJIDUR RAHMAN', '', 1, '12', 'A'),
(210101018, 'SUMAIYA SIDDIKA KHUSHI', '', 1, '12', 'A'),
(210101020, 'SUMAIYA TABASSUM', '', 1, '12', 'A'),
(210101021, 'AROSHI ALI', '', 1, '12', 'A'),
(210101024, 'TANVIR SHAHARIAR', '', 1, '12', 'A'),
(220201001, 'Md. Tanvirul Islam', '', 1, '15', 'A'),
(220201002, 'Md. Tamzid Safayet', '', 1, '15', 'A'),
(220201003, 'Mst. **', '', 1, '15', 'A'),
(220201004, 'Siratul Jannan Sirat', '', 1, '15', 'A'),
(220201005, 'Mst. **', '', 1, '15', 'A'),
(220201006, 'Tamanna Sultana', '', 1, '15', 'A'),
(220201007, 'Mst Fariha', '', 1, '15', 'A'),
(220201008, 'Jarin Tasnim Trisha', '', 1, '15', 'A'),
(220201009, 'Sidhanto Kundu', '', 1, '15', 'A'),
(220201010, 'Md. Ariful Islam', 'arif.jpg', 1, '15', 'A'),
(333333301, 'Student 1', '', 1, '3', 'A'),
(333333302, 'Student 2', '', 1, '3', 'A'),
(333333303, 'Student 3', '', 1, '3', 'A'),
(333333304, 'Student 4', '', 1, '3', 'A'),
(333333305, 'Student 5', '', 1, '3', 'A'),
(333333306, 'Student 6', '', 1, '3', 'A'),
(333333307, 'Student 7', '', 1, '3', 'A'),
(333333308, 'Student 8', '', 1, '3', 'A'),
(333333309, 'Student 9', '', 1, '3', 'A'),
(333333310, 'Student 10', '', 1, '3', 'A'),
(1313131301, 'Student 1', '', 1, '13', 'A'),
(1313131302, 'Student 2', '', 1, '13', 'A'),
(1313131303, 'Student 3', '', 1, '13', 'A'),
(1313131304, 'Student 4', '', 1, '13', 'A'),
(1313131305, 'Student 5', '', 1, '13', 'A'),
(1313131306, 'Student 6', '', 1, '13', 'A'),
(1313131307, 'Student 7', '', 1, '13', 'A'),
(1313131308, 'Student 8', '', 1, '13', 'A'),
(1313131309, 'Student 9', '', 1, '13', 'A'),
(1313131310, 'Student 10', '', 1, '13', 'A'),
(1414141401, 'Student 1', '', 1, '14', 'A'),
(1414141402, 'Student 2', '', 1, '14', 'A'),
(1414141403, 'Student 3', '', 1, '14', 'A'),
(1414141404, 'Student 4', '', 1, '14', 'A'),
(1414141405, 'Student 5', '', 1, '14', 'A'),
(1414141406, 'Student 6', '', 1, '14', 'A'),
(1414141407, 'Student 7', '', 1, '14', 'A'),
(1414141408, 'Student 8', '', 1, '14', 'A'),
(1414141409, 'Student 9', '', 1, '14', 'A'),
(1414141410, 'Student 10', '', 1, '14', 'A'),
(1616161601, 'Student 1', '', 1, '16', 'A'),
(1616161602, 'Student 2', '', 1, '16', 'A'),
(1616161603, 'Student 3', '', 1, '16', 'A'),
(1616161604, 'Student 4', '', 1, '16', 'A'),
(1616161605, 'Student 5', '', 1, '16', 'A'),
(1616161606, 'Student 6', '', 1, '16', 'A'),
(1616161607, 'Student 7', '', 1, '16', 'A'),
(1616161608, 'Student 8', '', 1, '16', 'A'),
(1616161609, 'Student 9', '', 1, '16', 'A'),
(1616161610, 'Student 10', '', 1, '16', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students_course`
--

CREATE TABLE `students_course` (
  `student_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `registration_date` date NOT NULL,
  `State` enum('complete','incomplete','backlog') DEFAULT 'incomplete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_course`
--

INSERT INTO `students_course` (`student_id`, `course_code`, `registration_date`, `State`) VALUES
(11111102, 'CSE302', '2024-04-22', 'incomplete'),
(11111103, 'CSE302', '2024-04-21', 'backlog'),
(11111104, 'CSE302', '2024-04-21', 'incomplete'),
(11111105, 'CSE302', '2024-04-21', 'incomplete'),
(11111106, 'CSE302', '2024-04-22', 'incomplete'),
(11111107, 'CSE302', '2024-04-21', 'backlog'),
(11111108, 'CSE302', '2024-04-22', 'incomplete'),
(210101001, 'CSE202', '2024-04-29', 'incomplete'),
(210101004, 'CSE202', '2024-04-29', 'incomplete'),
(210101007, 'CSE202', '2024-04-29', 'incomplete'),
(210101011, 'CSE202', '2024-04-29', 'incomplete'),
(210101014, 'CSE202', '2024-04-29', 'incomplete'),
(210101020, 'CSE202', '2024-04-29', 'incomplete'),
(220201001, 'CSE2205', '2024-04-21', 'incomplete'),
(220201002, 'CSE2205', '2024-04-21', 'backlog'),
(220201004, 'CSE2205', '2024-04-21', 'incomplete'),
(220201006, 'CSE2205', '2024-04-21', 'incomplete'),
(220201008, 'CSE2205', '2024-04-21', 'backlog'),
(220201009, 'CSE2205', '2024-04-21', 'incomplete'),
(220201010, 'CSE2205', '2024-04-21', 'incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `student_books`
--

CREATE TABLE `student_books` (
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_books`
--

INSERT INTO `student_books` (`student_id`, `book_id`, `issue_date`) VALUES
(11111102, 1001, '2024-04-22'),
(11111103, 1001, '2024-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_number` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_number` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `ssc_school_name` varchar(255) DEFAULT NULL,
  `ssc_passing_year` int(11) DEFAULT NULL,
  `ssc_result` varchar(20) DEFAULT NULL,
  `hsc_college_name` varchar(255) DEFAULT NULL,
  `hsc_passing_year` int(11) DEFAULT NULL,
  `hsc_result` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `phone`, `email`, `address`, `date_of_birth`, `gender`, `father_name`, `father_number`, `father_occupation`, `mother_name`, `mother_number`, `mother_occupation`, `ssc_school_name`, `ssc_passing_year`, `ssc_result`, `hsc_college_name`, `hsc_passing_year`, `hsc_result`) VALUES
(11111102, '1234567891', 'student2@example.com', 'Address 2', '2000-02-02', 'Female', 'Father 2', '1234567891', 'Occupation 2', 'Mother 2', '1234567891', 'Occupation 3', 'School 2', 2018, '5.00', 'College 2', 2020, '5.00'),
(11111103, '1234567892', 'student3@example.com', 'Address 3', '2000-03-03', 'Male', 'Father 3', '1234567892', 'Occupation 3', 'Mother 3', '1234567892', 'Occupation 4', 'School 3', 2018, '5.00', 'College 3', 2020, '5.00'),
(11111104, '1234567893', 'student4@example.com', 'Address 4', '2000-04-04', 'Female', 'Father 4', '1234567893', 'Occupation 4', 'Mother 4', '1234567893', 'Occupation 5', 'School 4', 2018, '5.00', 'College 4', 2020, '5.00'),
(11111105, '1234567894', 'student5@example.com', 'Address 5', '2000-05-05', 'Male', 'Father 5', '1234567894', 'Occupation 5', 'Mother 5', '1234567894', 'Occupation 6', 'School 5', 2018, '5.00', 'College 5', 2020, '5.00'),
(11111106, '1234567895', 'student6@example.com', 'Address 6', '2000-06-06', 'Female', 'Father 6', '1234567895', 'Occupation 6', 'Mother 6', '1234567895', 'Occupation 7', 'School 6', 2018, '5.00', 'College 6', 2020, '5.00'),
(11111107, '1234567896', 'student7@example.com', 'Address 7', '2000-07-07', 'Male', 'Father 7', '1234567896', 'Occupation 7', 'Mother 7', '1234567896', 'Occupation 8', 'School 7', 2018, '5.00', 'College 7', 2020, '5.00'),
(11111108, '1234567897', 'student8@example.com', 'Address 8', '2000-08-08', 'Female', 'Father 8', '1234567897', 'Occupation 8', 'Mother 8', '1234567897', 'Occupation 9', 'School 8', 2018, '5.00', 'College 8', 2020, '5.00'),
(11111109, '1234567898', 'student9@example.com', 'Address 9', '2000-09-09', 'Male', 'Father 9', '1234567898', 'Occupation 9', 'Mother 9', '1234567898', 'Occupation 10', 'School 9', 2018, '5.00', 'College 9', 2020, '5.00'),
(22222201, 'Phone 1', 'email1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1111111', 'Occupation 1', 'Mother 1', '2222222', 'Occupation 2', 'School 1', 2018, NULL, 'College 1', 2020, NULL),
(22222202, 'Phone 2', 'email2@example.com', 'Address 2', '2000-01-02', 'Female', 'Father 2', '2222222', 'Occupation 2', 'Mother 2', '3333333', 'Occupation 3', 'School 2', 2018, NULL, 'College 2', 2020, NULL),
(22222203, 'Phone 3', 'email3@example.com', 'Address 3', '2000-01-03', 'Male', 'Father 3', '3333333', 'Occupation 3', 'Mother 3', '4444444', 'Occupation 4', 'School 3', 2018, NULL, 'College 3', 2020, NULL),
(22222204, 'Phone 4', 'email4@example.com', 'Address 4', '2000-01-04', 'Female', 'Father 4', '4444444', 'Occupation 4', 'Mother 4', '5555555', 'Occupation 5', 'School 4', 2018, NULL, 'College 4', 2020, NULL),
(22222205, 'Phone 5', 'email5@example.com', 'Address 5', '2000-01-05', 'Male', 'Father 5', '5555555', 'Occupation 5', 'Mother 5', '6666666', 'Occupation 6', 'School 5', 2018, NULL, 'College 5', 2020, NULL),
(22222206, 'Phone 6', 'email6@example.com', 'Address 6', '2000-01-06', 'Female', 'Father 6', '6666666', 'Occupation 6', 'Mother 6', '7777777', 'Occupation 7', 'School 6', 2018, NULL, 'College 6', 2020, NULL),
(22222207, 'Phone 7', 'email7@example.com', 'Address 7', '2000-01-07', 'Male', 'Father 7', '7777777', 'Occupation 7', 'Mother 7', '8888888', 'Occupation 8', 'School 7', 2018, NULL, 'College 7', 2020, NULL),
(22222208, 'Phone 8', 'email8@example.com', 'Address 8', '2000-01-08', 'Female', 'Father 8', '8888888', 'Occupation 8', 'Mother 8', '9999999', 'Occupation 9', 'School 8', 2018, NULL, 'College 8', 2020, NULL),
(22222209, 'Phone 9', 'email9@example.com', 'Address 9', '2000-01-09', 'Male', 'Father 9', '9999999', 'Occupation 9', 'Mother 9', '10101010', 'Occupation 10', 'School 9', 2018, NULL, 'College 9', 2020, NULL),
(22222210, 'Phone 10', 'email10@example.com', 'Address 10', '2000-01-10', 'Female', 'Father 10', '10101010', 'Occupation 10', 'Mother 10', '11111111', 'Occupation 11', 'School 10', 2018, NULL, 'College 10', 2020, NULL),
(210101001, '1234567890', 'musfiq@example.com', '123 Main St, City', '2005-01-15', 'Male', 'Alam Chowdhury', '9876543210', 'Engineer', 'Fatema Begum', '9876543211', 'Teacher', 'ABC School', 2019, 'A+', 'XYZ College', 2021, 'A'),
(210101004, '2345678901', 'abdullah@example.com', '456 Elm St, Town', '2004-05-20', 'Male', 'Abdul Mandal', '8765432109', 'Doctor', 'Nafisa Begum', '8765432108', 'Lawyer', 'DEF School', 2019, 'A-', 'UVW College', 2021, 'A-'),
(210101007, '3456789012', 'ahmed@example.com', '789 Oak St, Village', '2005-08-10', 'Male', 'Wakil Muttaki', '7654321098', 'Businessman', 'Nadia Akter', '7654321097', 'Housewife', 'GHI School', 2019, 'B+', 'PQR College', 2021, 'B+'),
(210101011, '4567890123', 'saida@example.com', '901 Pine St, Countryside', '2004-03-25', 'Female', 'Sobnom Orno', '6543210987', 'Professor', 'Farid Uddin', '6543210986', 'Engineer', 'JKL School', 2019, 'A', 'STU College', 2021, 'A'),
(210101012, '5678901234', 'khalad@example.com', '234 Cedar St, Suburb', '2005-07-12', 'Male', 'Mizanur Rahman', '5432109876', 'Banker', 'Shahnaz Parvin', '5432109875', 'Doctor', 'MNO School', 2019, 'B', 'VWX College', 2021, 'B'),
(210101014, '6789012345', 'sudipto@example.com', '567 Maple St, Downtown', '2004-10-30', 'Male', 'Serker Pranto', '4321098765', 'Engineer', 'Afsana Akter', '4321098764', 'Nurse', 'PQR School', 2019, 'A-', 'YZA College', 2021, 'A-'),
(210101016, '7890123456', 'sajidur@example.com', '890 Walnut St, Coastal', '2005-02-18', 'Male', 'Shah Rahman', '3210987654', 'Businessman', 'Nusrat Jahan', '3210987653', 'Lawyer', 'BCD School', 2019, 'B-', 'ABC College', 2021, 'B-'),
(210101018, '8901234567', 'sumaiya@example.com', '123 Pineapple St, Island', '2004-06-05', 'Female', 'Siddiq Khushi', '2109876543', 'Artist', 'Fatema Tuz', '2109876542', 'Teacher', 'DEF School', 2019, 'B', 'XYZ College', 2021, 'B'),
(210101020, '9012345678', 'sumaiya@example.com', '456 Banana St, Beach', '2005-09-22', 'Female', 'Md. Tabassum', '1098765432', 'Engineer', 'Afroza Begum', '1098765431', 'Housewife', 'GHI School', 2019, 'A+', 'UVW College', 2021, 'A+'),
(210101021, '0123456789', 'aroshi@example.com', '789 Coconut St, Resort', '2004-04-17', 'Female', 'Ali Rahman', '0987654321', 'Professor', 'Sabina Akter', '0987654320', 'Doctor', 'JKL School', 2019, 'A+', 'STU College', 2021, 'A+'),
(210101024, '9876543210', 'tanvir@example.com', '901 Mango St, Hill', '2005-11-08', 'Male', 'Shahariar', '9876543211', 'Engineer', 'Nazneen Akter', '9876543212', 'Teacher', 'MNO School', 2019, 'A', 'VWX College', 2021, 'A'),
(220201001, '0123456789', 'student1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1234567890', 'Occupation 1', 'Mother 1', '1234567890', 'Occupation 2', 'SSC School 1', 2016, NULL, 'HSC College 1', 2018, NULL),
(220201002, '0123456789', 'student2@example.com', 'Address 2', '2000-01-01', 'Male', 'Father 2', '1234567890', 'Occupation 1', 'Mother 2', '1234567890', 'Occupation 2', 'SSC School 2', 2016, NULL, 'HSC College 2', 2018, NULL),
(220201003, '0123456789', 'student3@example.com', 'Address 3', '2000-01-01', 'Male', 'Father 3', '1234567890', 'Occupation 1', 'Mother 3', '1234567890', 'Occupation 2', 'SSC School 3', 2016, NULL, 'HSC College 3', 2018, NULL),
(220201004, '0123456789', 'student4@example.com', 'Address 4', '2000-01-01', 'Male', 'Father 4', '1234567890', 'Occupation 1', 'Mother 4', '1234567890', 'Occupation 2', 'SSC School 4', 2016, NULL, 'HSC College 4', 2018, NULL),
(220201005, '0123456789', 'student5@example.com', 'Address 5', '2000-01-01', 'Male', 'Father 5', '1234567890', 'Occupation 1', 'Mother 5', '1234567890', 'Occupation 2', 'SSC School 5', 2016, NULL, 'HSC College 5', 2018, NULL),
(220201006, '0123456789', 'student6@example.com', 'Address 6', '2000-01-01', 'Male', 'Father 6', '1234567890', 'Occupation 1', 'Mother 6', '1234567890', 'Occupation 2', 'SSC School 6', 2016, NULL, 'HSC College 6', 2018, NULL),
(220201007, '0123456789', 'student7@example.com', 'Address 7', '2000-01-01', 'Male', 'Father 7', '1234567890', 'Occupation 1', 'Mother 7', '1234567890', 'Occupation 2', 'SSC School 7', 2016, NULL, 'HSC College 7', 2018, NULL),
(220201008, '0123456789', 'student8@example.com', 'Address 8', '2000-01-01', 'Male', 'Father 8', '1234567890', 'Occupation 1', 'Mother 8', '1234567890', 'Occupation 2', 'SSC School 8', 2016, NULL, 'HSC College 8', 2018, NULL),
(220201009, '0123456789', 'student9@example.com', 'Address 9', '2000-01-01', 'Male', 'Father 9', '1234567890', 'Occupation 1', 'Mother 9', '1234567890', 'Occupation 2', 'SSC School 9', 2016, NULL, 'HSC College 9', 2018, NULL),
(220201010, '0123456789', 'student10@example.com', 'Address 10', '2000-01-01', 'Male', 'Father 10', '1234567890', 'Occupation 1', 'Mother 10', '1234567890', 'Occupation 2', 'SSC School 10', 2016, NULL, 'HSC College 10', 2018, NULL),
(333333301, '0123456789', 'student1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1234567890', 'Occupation 1', 'Mother 1', '1234567890', 'Occupation 2', 'SSC School 1', 2016, NULL, 'HSC College 1', 2018, NULL),
(333333302, '0123456789', 'student2@example.com', 'Address 2', '2000-01-01', 'Male', 'Father 2', '1234567890', 'Occupation 1', 'Mother 2', '1234567890', 'Occupation 2', 'SSC School 2', 2016, NULL, 'HSC College 2', 2018, NULL),
(333333303, '0123456789', 'student3@example.com', 'Address 3', '2000-01-01', 'Male', 'Father 3', '1234567890', 'Occupation 1', 'Mother 3', '1234567890', 'Occupation 2', 'SSC School 3', 2016, NULL, 'HSC College 3', 2018, NULL),
(333333304, '0123456789', 'student4@example.com', 'Address 4', '2000-01-01', 'Male', 'Father 4', '1234567890', 'Occupation 1', 'Mother 4', '1234567890', 'Occupation 2', 'SSC School 4', 2016, NULL, 'HSC College 4', 2018, NULL),
(333333305, '0123456789', 'student5@example.com', 'Address 5', '2000-01-01', 'Male', 'Father 5', '1234567890', 'Occupation 1', 'Mother 5', '1234567890', 'Occupation 2', 'SSC School 5', 2016, NULL, 'HSC College 5', 2018, NULL),
(333333306, '0123456789', 'student6@example.com', 'Address 6', '2000-01-01', 'Male', 'Father 6', '1234567890', 'Occupation 1', 'Mother 6', '1234567890', 'Occupation 2', 'SSC School 6', 2016, NULL, 'HSC College 6', 2018, NULL),
(333333307, '0123456789', 'student7@example.com', 'Address 7', '2000-01-01', 'Male', 'Father 7', '1234567890', 'Occupation 1', 'Mother 7', '1234567890', 'Occupation 2', 'SSC School 7', 2016, NULL, 'HSC College 7', 2018, NULL),
(333333308, '0123456789', 'student8@example.com', 'Address 8', '2000-01-01', 'Male', 'Father 8', '1234567890', 'Occupation 1', 'Mother 8', '1234567890', 'Occupation 2', 'SSC School 8', 2016, NULL, 'HSC College 8', 2018, NULL),
(333333309, '0123456789', 'student9@example.com', 'Address 9', '2000-01-01', 'Male', 'Father 9', '1234567890', 'Occupation 1', 'Mother 9', '1234567890', 'Occupation 2', 'SSC School 9', 2016, NULL, 'HSC College 9', 2018, NULL),
(333333310, '0123456789', 'student10@example.com', 'Address 10', '2000-01-01', 'Male', 'Father 10', '1234567890', 'Occupation 1', 'Mother 10', '1234567890', 'Occupation 2', 'SSC School 10', 2016, NULL, 'HSC College 10', 2018, NULL),
(1313131301, '0123456789', 'student1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1234567890', 'Occupation 1', 'Mother 1', '1234567890', 'Occupation 2', 'SSC School 1', 2016, NULL, 'HSC College 1', 2018, NULL),
(1313131302, '0123456789', 'student2@example.com', 'Address 2', '2000-01-01', 'Male', 'Father 2', '1234567890', 'Occupation 1', 'Mother 2', '1234567890', 'Occupation 2', 'SSC School 2', 2016, NULL, 'HSC College 2', 2018, NULL),
(1313131303, '0123456789', 'student3@example.com', 'Address 3', '2000-01-01', 'Male', 'Father 3', '1234567890', 'Occupation 1', 'Mother 3', '1234567890', 'Occupation 2', 'SSC School 3', 2016, NULL, 'HSC College 3', 2018, NULL),
(1313131304, '0123456789', 'student4@example.com', 'Address 4', '2000-01-01', 'Male', 'Father 4', '1234567890', 'Occupation 1', 'Mother 4', '1234567890', 'Occupation 2', 'SSC School 4', 2016, NULL, 'HSC College 4', 2018, NULL),
(1313131305, '0123456789', 'student5@example.com', 'Address 5', '2000-01-01', 'Male', 'Father 5', '1234567890', 'Occupation 1', 'Mother 5', '1234567890', 'Occupation 2', 'SSC School 5', 2016, NULL, 'HSC College 5', 2018, NULL),
(1313131306, '0123456789', 'student6@example.com', 'Address 6', '2000-01-01', 'Male', 'Father 6', '1234567890', 'Occupation 1', 'Mother 6', '1234567890', 'Occupation 2', 'SSC School 6', 2016, NULL, 'HSC College 6', 2018, NULL),
(1313131307, '0123456789', 'student7@example.com', 'Address 7', '2000-01-01', 'Male', 'Father 7', '1234567890', 'Occupation 1', 'Mother 7', '1234567890', 'Occupation 2', 'SSC School 7', 2016, NULL, 'HSC College 7', 2018, NULL),
(1313131308, '0123456789', 'student8@example.com', 'Address 8', '2000-01-01', 'Male', 'Father 8', '1234567890', 'Occupation 1', 'Mother 8', '1234567890', 'Occupation 2', 'SSC School 8', 2016, NULL, 'HSC College 8', 2018, NULL),
(1313131309, '0123456789', 'student9@example.com', 'Address 9', '2000-01-01', 'Male', 'Father 9', '1234567890', 'Occupation 1', 'Mother 9', '1234567890', 'Occupation 2', 'SSC School 9', 2016, NULL, 'HSC College 9', 2018, NULL),
(1313131310, '0123456789', 'student10@example.com', 'Address 10', '2000-01-01', 'Male', 'Father 10', '1234567890', 'Occupation 1', 'Mother 10', '1234567890', 'Occupation 2', 'SSC School 10', 2016, NULL, 'HSC College 10', 2018, NULL),
(1414141401, '0123456789', 'student1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1234567890', 'Occupation 1', 'Mother 1', '1234567890', 'Occupation 2', 'SSC School 1', 2016, NULL, 'HSC College 1', 2018, NULL),
(1414141402, '0123456789', 'student2@example.com', 'Address 2', '2000-01-01', 'Male', 'Father 2', '1234567890', 'Occupation 1', 'Mother 2', '1234567890', 'Occupation 2', 'SSC School 2', 2016, NULL, 'HSC College 2', 2018, NULL),
(1414141403, '0123456789', 'student3@example.com', 'Address 3', '2000-01-01', 'Male', 'Father 3', '1234567890', 'Occupation 1', 'Mother 3', '1234567890', 'Occupation 2', 'SSC School 3', 2016, NULL, 'HSC College 3', 2018, NULL),
(1414141404, '0123456789', 'student4@example.com', 'Address 4', '2000-01-01', 'Male', 'Father 4', '1234567890', 'Occupation 1', 'Mother 4', '1234567890', 'Occupation 2', 'SSC School 4', 2016, NULL, 'HSC College 4', 2018, NULL),
(1414141405, '0123456789', 'student5@example.com', 'Address 5', '2000-01-01', 'Male', 'Father 5', '1234567890', 'Occupation 1', 'Mother 5', '1234567890', 'Occupation 2', 'SSC School 5', 2016, NULL, 'HSC College 5', 2018, NULL),
(1414141406, '0123456789', 'student6@example.com', 'Address 6', '2000-01-01', 'Male', 'Father 6', '1234567890', 'Occupation 1', 'Mother 6', '1234567890', 'Occupation 2', 'SSC School 6', 2016, NULL, 'HSC College 6', 2018, NULL),
(1414141407, '0123456789', 'student7@example.com', 'Address 7', '2000-01-01', 'Male', 'Father 7', '1234567890', 'Occupation 1', 'Mother 7', '1234567890', 'Occupation 2', 'SSC School 7', 2016, NULL, 'HSC College 7', 2018, NULL),
(1414141408, '0123456789', 'student8@example.com', 'Address 8', '2000-01-01', 'Male', 'Father 8', '1234567890', 'Occupation 1', 'Mother 8', '1234567890', 'Occupation 2', 'SSC School 8', 2016, NULL, 'HSC College 8', 2018, NULL),
(1414141409, '0123456789', 'student9@example.com', 'Address 9', '2000-01-01', 'Male', 'Father 9', '1234567890', 'Occupation 1', 'Mother 9', '1234567890', 'Occupation 2', 'SSC School 9', 2016, NULL, 'HSC College 9', 2018, NULL),
(1414141410, '0123456789', 'student10@example.com', 'Address 10', '2000-01-01', 'Male', 'Father 10', '1234567890', 'Occupation 1', 'Mother 10', '1234567890', 'Occupation 2', 'SSC School 10', 2016, NULL, 'HSC College 10', 2018, NULL),
(1616161601, '0123456789', 'student1@example.com', 'Address 1', '2000-01-01', 'Male', 'Father 1', '1234567890', 'Occupation 1', 'Mother 1', '1234567890', 'Occupation 2', 'SSC School 1', 2016, NULL, 'HSC College 1', 2018, NULL),
(1616161602, '0123456789', 'student2@example.com', 'Address 2', '2000-01-01', 'Male', 'Father 2', '1234567890', 'Occupation 1', 'Mother 2', '1234567890', 'Occupation 2', 'SSC School 2', 2016, NULL, 'HSC College 2', 2018, NULL),
(1616161603, '0123456789', 'student3@example.com', 'Address 3', '2000-01-01', 'Male', 'Father 3', '1234567890', 'Occupation 1', 'Mother 3', '1234567890', 'Occupation 2', 'SSC School 3', 2016, NULL, 'HSC College 3', 2018, NULL),
(1616161604, '0123456789', 'student4@example.com', 'Address 4', '2000-01-01', 'Male', 'Father 4', '1234567890', 'Occupation 1', 'Mother 4', '1234567890', 'Occupation 2', 'SSC School 4', 2016, NULL, 'HSC College 4', 2018, NULL),
(1616161605, '0123456789', 'student5@example.com', 'Address 5', '2000-01-01', 'Male', 'Father 5', '1234567890', 'Occupation 1', 'Mother 5', '1234567890', 'Occupation 2', 'SSC School 5', 2016, NULL, 'HSC College 5', 2018, NULL),
(1616161606, '0123456789', 'student6@example.com', 'Address 6', '2000-01-01', 'Male', 'Father 6', '1234567890', 'Occupation 1', 'Mother 6', '1234567890', 'Occupation 2', 'SSC School 6', 2016, NULL, 'HSC College 6', 2018, NULL),
(1616161607, '0123456789', 'student7@example.com', 'Address 7', '2000-01-01', 'Male', 'Father 7', '1234567890', 'Occupation 1', 'Mother 7', '1234567890', 'Occupation 2', 'SSC School 7', 2016, NULL, 'HSC College 7', 2018, NULL),
(1616161608, '0123456789', 'student8@example.com', 'Address 8', '2000-01-01', 'Male', 'Father 8', '1234567890', 'Occupation 1', 'Mother 8', '1234567890', 'Occupation 2', 'SSC School 8', 2016, NULL, 'HSC College 8', 2018, NULL),
(1616161609, '0123456789', 'student9@example.com', 'Address 9', '2000-01-01', 'Male', 'Father 9', '1234567890', 'Occupation 1', 'Mother 9', '1234567890', 'Occupation 2', 'SSC School 9', 2016, NULL, 'HSC College 9', 2018, NULL),
(1616161610, '0123456789', 'student10@example.com', 'Address 10', '2000-01-01', 'Male', 'Father 10', '1234567890', 'Occupation 1', 'Mother 10', '1234567890', 'Occupation 2', 'SSC School 10', 2016, NULL, 'HSC College 10', 2018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `tea_img` varchar(400) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `tea_img`, `department_id`) VALUES
(24001, 'Hasan Muhammad Kafi', 'kafi_sir.jpg', 1),
(24002, 'Taher Muhammad Mahdee', 'mahedi_sir.jpg', 1),
(24003, 'Fatema Tuz Zohra', '', 1),
(24004, 'Md. Al-Hasan', '', 1),
(24005, 'Md. Mamun Hossain', '', 1),
(24006, 'Md. Zahid Hassan', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_course`
--

CREATE TABLE `teachers_course` (
  `teacher_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers_course`
--

INSERT INTO `teachers_course` (`teacher_id`, `course_code`) VALUES
(24001, 'CSE202'),
(24001, 'CSE2205'),
(24001, 'CSE401'),
(24001, 'CSE501'),
(24001, 'CSE502'),
(24002, 'CSE101'),
(24002, 'CSE302'),
(24002, 'CSE402'),
(24003, 'CSE102'),
(24004, 'CSE301');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `teacher_id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `education_qualification` varchar(255) DEFAULT NULL,
  `areas_of_interest` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`teacher_id`, `designation`, `phone`, `email`, `address`, `date_of_birth`, `gender`, `education_qualification`, `areas_of_interest`) VALUES
(24001, 'Assistant Professor', '01718781841', 'kafi@baust.edu.bd', 'Dhaka', '1964-03-20', 'Male', 'Ph.D. in CSE (Pursuing) BUET, M.Sc. Engg. in ICT (BUET), B.Sc. Engg. in CSE (CUET), MIEB-34632', 'Data Science,\nMachine Learning,\nUser Authentication'),
(24002, 'Assistant Professor', '01717244737', 't.mahdee@gmail.com', 'Rangpur', '1984-03-20', 'Male', 'M.Sc. (Thesis), B.Sc. (Hons) in CSE', 'Cryptography, \nInternet of Things (IoT), \nParallel Processing'),
(24003, 'Assistant Professor', '8801728646700', 'fatematuzzohramishu@gmail.com', 'Rangpur', '1984-03-20', 'Female', 'B. Sc. Engg in CSE(CUET), M. Sc. in CSE (Jahangirnagar University)', 'Artificial Intelligence\r\nBioinformatics\r\nData Mining'),
(24004, 'Assistant Professor', '8801722-774004', 'al-hasan@baust.edu.bd', 'Nilphamari', '1964-03-20', 'Male', 'PhD in CSE ( Pursuing ), M.Sc. in CSE, B. Sc. in CSE (CUET)', 'Data Science\r\nHealth Informatics\r\n'),
(24005, 'Assistant Professor', '01769662713', 'mamunsust12@gmail.com\r\n\r\n', 'Dhaka', '1985-03-13', 'Male', 'Ph.D. (Pursuing ) in CSE, RUET, M.Sc. (Thesis) in CSE & B.Sc. Engg. in CSE, SUST.', 'Biometrics\r\nComputer Vision\r\nData Mining\r\nDeep Learning\r\nMachine Learning\r\nNLP'),
(24006, 'Lecturer', '01750548251', 'zahidhassan956@gmail.com', 'Rangpur', '1984-03-20', 'Male', 'B. Sc. in CSE (CUET), M. Sc. (Pursuing)', 'Advanced Networking\r\nData Mining\r\nMachine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `users_department`
--

CREATE TABLE `users_department` (
  `department_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_department`
--

INSERT INTO `users_department` (`department_id`, `username`, `password`) VALUES
(1, 'cse', 'cse'),
(2, 'eee', 'eee'),
(3, 'me', 'me'),
(4, 'ipe', 'ipe'),
(5, 'bba', 'bba'),
(6, 'eng', 'eng');

-- --------------------------------------------------------

--
-- Table structure for table `users_student`
--

CREATE TABLE `users_student` (
  `student_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_student`
--

INSERT INTO `users_student` (`student_id`, `username`, `password`) VALUES
(11111102, '11111102', 'password2'),
(11111103, '11111103', 'password3'),
(11111104, '11111104', 'password4'),
(11111105, '11111105', 'password5'),
(11111106, '11111106', 'password6'),
(11111107, '11111107', 'password7'),
(11111108, '11111108', 'password8'),
(11111109, '11111109', 'password9'),
(22222201, '22222201', 'password1'),
(22222202, '22222202', 'password2'),
(22222203, '22222203', 'password3'),
(22222204, '22222204', 'password4'),
(22222205, '22222205', 'password5'),
(22222206, '22222206', 'password6'),
(22222207, '22222207', 'password7'),
(22222208, '22222208', 'password8'),
(22222209, '22222209', 'password9'),
(22222210, '22222210', 'password10'),
(210101001, '210101001', 'password123'),
(210101004, '210101004', 'pass456word'),
(210101007, '210101007', 'secure789'),
(210101011, '210101011', 'password'),
(210101012, '210101012', 'pass1234'),
(210101014, '210101014', 'securepass'),
(210101016, '210101016', 'password123'),
(210101018, '210101018', 'pass456word'),
(210101020, '210101020', 'secure789'),
(210101021, '210101021', 'password'),
(210101024, '210101024', 'pass1234'),
(220201001, '220201001', 'password1'),
(220201002, '220201002', 'password2'),
(220201003, '220201003', 'password3'),
(220201004, '220201004', 'password4'),
(220201005, '220201005', 'password5'),
(220201006, '220201006', 'password6'),
(220201007, '220201007', 'password7'),
(220201008, '220201008', 'password8'),
(220201009, '220201009', 'password9'),
(220201010, '220201010', 'password10'),
(333333301, '333333301', 'password1'),
(333333302, '333333302', 'password2'),
(333333303, '333333303', 'password3'),
(333333304, '333333304', 'password4'),
(333333305, '333333305', 'password5'),
(333333306, '333333306', 'password6'),
(333333307, '333333307', 'password7'),
(333333308, '333333308', 'password8'),
(333333309, '333333309', 'password9'),
(333333310, '333333310', 'password10'),
(1313131301, '1313131301', 'password1'),
(1313131302, '1313131302', 'password2'),
(1313131303, '1313131303', 'password3'),
(1313131304, '1313131304', 'password4'),
(1313131305, '1313131305', 'password5'),
(1313131306, '1313131306', 'password6'),
(1313131307, '1313131307', 'password7'),
(1313131308, '1313131308', 'password8'),
(1313131309, '1313131309', 'password9'),
(1313131310, '1313131310', 'password10'),
(1414141401, '1414141401', 'password1'),
(1414141402, '1414141402', 'password2'),
(1414141403, '1414141403', 'password3'),
(1414141404, '1414141404', 'password4'),
(1414141405, '1414141405', 'password5'),
(1414141406, '1414141406', 'password6'),
(1414141407, '1414141407', 'password7'),
(1414141408, '1414141408', 'password8'),
(1414141409, '1414141409', 'password9'),
(1414141410, '1414141410', 'password10'),
(1616161601, '1616161601', 'password1'),
(1616161602, '1616161602', 'password2'),
(1616161603, '1616161603', 'password3'),
(1616161604, '1616161604', 'password4'),
(1616161605, '1616161605', 'password5'),
(1616161606, '1616161606', 'password6'),
(1616161607, '1616161607', 'password7'),
(1616161608, '1616161608', 'password8'),
(1616161609, '1616161609', 'password9'),
(1616161610, '1616161610', 'password10');

-- --------------------------------------------------------

--
-- Table structure for table `users_teacher`
--

CREATE TABLE `users_teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_teacher`
--

INSERT INTO `users_teacher` (`teacher_id`, `username`, `password`) VALUES
(24001, 'kafi_sir', 'kafi_sir'),
(24002, 'mehdee_sir', 'mehdee_sir'),
(24003, 'fatema_maam', 'fatema_maam'),
(24004, 'hasan_sir', 'hasan_sir'),
(24005, 'mamun_sir', 'mamun_sir'),
(24006, 'zahid_sir', 'afdsf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`student_id`,`course_code`,`date`,`class_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`course_code`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`count_exam`,`exam_date`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `exam_date`
--
ALTER TABLE `exam_date`
  ADD PRIMARY KEY (`course_code`,`exam_dates`,`exam_time`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `students_course`
--
ALTER TABLE `students_course`
  ADD PRIMARY KEY (`student_id`,`course_code`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_books`
--
ALTER TABLE `student_books`
  ADD PRIMARY KEY (`student_id`,`book_id`,`issue_date`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `teachers_course`
--
ALTER TABLE `teachers_course`
  ADD PRIMARY KEY (`teacher_id`,`course_code`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_department`
--
ALTER TABLE `users_department`
  ADD PRIMARY KEY (`department_id`,`username`);

--
-- Indexes for table `users_student`
--
ALTER TABLE `users_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users_teacher`
--
ALTER TABLE `users_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course_details` (`course_code`);

--
-- Constraints for table `course_details`
--
ALTER TABLE `course_details`
  ADD CONSTRAINT `course_details_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `course_details_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `exam_date`
--
ALTER TABLE `exam_date`
  ADD CONSTRAINT `exam_date_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course_details` (`course_code`);

--
-- Constraints for table `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `library_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `students_course`
--
ALTER TABLE `students_course`
  ADD CONSTRAINT `students_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `students_course_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course_details` (`course_code`);

--
-- Constraints for table `student_books`
--
ALTER TABLE `student_books`
  ADD CONSTRAINT `student_books_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `teachers_course`
--
ALTER TABLE `teachers_course`
  ADD CONSTRAINT `teachers_course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `teachers_course_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course_details` (`course_code`);

--
-- Constraints for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD CONSTRAINT `teacher_details_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `users_department`
--
ALTER TABLE `users_department`
  ADD CONSTRAINT `users_department_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `users_student`
--
ALTER TABLE `users_student`
  ADD CONSTRAINT `users_student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `users_teacher`
--
ALTER TABLE `users_teacher`
  ADD CONSTRAINT `users_teacher_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
