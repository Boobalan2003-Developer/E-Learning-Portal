-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 03:41 PM
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
-- Database: `sv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Vani', 'vanivelli0310@gmail.com', '627462'),
(2, 'admin', 'admin@username', 'admin@password');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(8, 'Learn Guitar The Easy Wayy', 'This course is your \"Free Pass\" to playing guitar. It is the most direct and to the point complete online guitar course.', 'Adil', '../image/courseimg/Guitar.jpg', '3 Hours', 1655, 1800),
(9, 'PHP', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'RAJESH', '../image/courseimg/php.jpg', '3 Months', 700, 1700),
(10, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Rahul Kumar', '../image/courseimg/Python.jpg', '4 Months', 800, 1800),
(11, 'Artificial Intelligence', 'Learn and Master how AI works and how it is changing our lives in this Course.\r\nlives in this Course.', 'Jai sri', '../image/courseimg/artificial.jpg', '6 Months', 900, 1900),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Jai sri', '../image/courseimg/vue.jpg', '2 Months', 100, 1000),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Sonam ', '../image/courseimg/angular.jpg', '4 Month', 800, 1600),
(16, 'Python Complete', 'This is complete Python COurse', 'RK', '../image/courseimg/Python.jpg', '4 hours', 500, 4000),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'prabhu', '../image/courseimg/Machine.jpg', '2 months', 200, 800),
(18, 'C LANGUAGE', 'Easy to learn', 'Sanoj krishnan', '../image/courseimg/c.jpg', '2 months', 500, 1000),
(19, 'Core Java Programming', 'Core Java Programming', 'Ruther Rose', '../image/courseimg/cjava.png', '3 Months', 8500, 12500);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(25, 'ORDS74729254', 190, 'sarath@gmail.com', 18, 'Success', 'Done', 500, '2023-10-23'),
(26, 'ORDS66552183', 189, 'demouser@gmail.com', 18, 'Success', 'Done', 500, '2023-10-23'),
(27, 'ORDS15320174', 191, 'mohu@gmail.com', 11, 'Success', 'Done', 900, '2023-10-23'),
(28, 'ORDS15489844', 192, 'yamuna@gmail.com', 8, 'Success', 'Done', 1655, '2023-10-23'),
(29, 'ORDS61279282', 193, 'sanoj@gmail.com', 10, 'Success', 'Done', 800, '2023-10-23'),
(30, 'ORDS60570559', 194, 'kaviya@gmail.com', 12, 'Success', 'Done', 700, '2023-10-23'),
(31, 'ORDS40562015', 191, 'mohu@gmail.com', 18, 'Success', 'Done', 500, '2031-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(25, 'BSHRM', '2022-11-27 03:56:08'),
(26, 'BSIT', '2022-11-25 07:52:42'),
(65, 'BSCRIM', '2022-12-02 03:55:36'),
(18, 'C LANGUAGE', '2023-10-28 01:24:58'),
(16, 'Python Complete', '2023-10-28 01:27:14'),
(19, 'Core Java Programming', '2023-10-28 01:35:17'),
(17, 'Learn React Native', '2023-10-28 01:41:52'),
(13, 'Angular JS', '2023-10-28 01:42:40'),
(12, 'Learn Vue JS', '2023-10-28 01:43:38'),
(11, 'Artificial Intelligence', '2023-10-28 01:44:22'),
(10, 'Learn Python A-Z', '2023-10-28 01:44:58'),
(9, 'PHP', '2023-10-28 01:45:34'),
(8, 'Learn Guitar The Easy Wayy', '2023-10-28 01:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `parent_comment`, `student`, `post`, `date`) VALUES
(135, '0', 'sarath', 'how to enroll on courses?', '2023-10-29 02:18:11'),
(136, '135', 'Admin', 'first do sign up , then log in using email and password , click on courses and enroll ', '2023-10-29 02:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_email`, `exmne_status`) VALUES
(189, 'demouser', 'demouser@gmail.com', 'ACTIVE'),
(190, 'SARATH', 'sarath@gmail.com', 'ACTIVE'),
(191, 'MOHU', 'mohu@gmail.com', 'ACTIVE'),
(192, 'YAMUNA', 'yamuna@gmail.com', 'ACTIVE'),
(193, 'sanoj', 'sanoj@gmail.com', 'ACTIVE'),
(194, 'KAVIYA', 'kaviya@gmail.com', 'ACTIVE'),
(195, 'GEETHA', 'Geetha@gmail.com', 'ACTIVE'),
(196, 'anu', 'anu@gmail.com', 'ACTIVE'),
(197, 'amutha', 'amutha@gmail.com', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2019-12-06 21:22:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2019-12-06 21:22:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2019-12-05 07:29:47'),
(298, 6, 12, 9, '1850s', 'old', '2019-12-05 07:29:47'),
(299, 6, 12, 24, '1976', 'old', '2019-12-05 07:29:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2019-12-05 07:29:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 07:29:47'),
(302, 6, 11, 28, 'fds', 'new', '2019-12-05 06:34:28'),
(303, 6, 11, 29, 'sd', 'new', '2019-12-05 06:34:28'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 07:29:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 07:29:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 07:29:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 07:29:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 07:29:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 08:00:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 08:00:21'),
(311, 4, 12, 16, 'Data Block', 'new', '2019-12-06 21:22:14'),
(312, 4, 12, 20, 'Plancks radiation', 'new', '2019-12-06 21:22:14'),
(313, 4, 12, 10, 'Report', 'new', '2019-12-06 21:22:14'),
(314, 4, 12, 24, '1976', 'new', '2019-12-06 21:22:14'),
(315, 4, 12, 9, '1930s', 'new', '2019-12-06 21:22:14'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-04 21:48:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-04 21:48:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-04 21:48:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-04 21:48:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-04 21:48:35'),
(321, 183, 26, 70, '4', 'old', '2023-10-25 13:59:26'),
(322, 183, 26, 67, '24', 'old', '2023-10-25 13:59:26'),
(323, 183, 26, 68, '2.5', 'old', '2023-10-25 13:59:26'),
(324, 183, 26, 69, '3', 'old', '2023-10-25 13:59:26'),
(325, 183, 26, 71, '111', 'old', '2023-10-25 13:59:26'),
(326, 171, 25, 66, '3', 'old', '2023-10-25 13:09:56'),
(327, 171, 25, 63, 'DBMS', 'old', '2023-10-25 13:09:56'),
(328, 171, 25, 62, 'Learning', 'old', '2023-10-25 13:09:56'),
(329, 171, 25, 65, 'Predicate and Subject', 'old', '2023-10-25 13:09:56'),
(330, 171, 25, 64, 'Intelligence Agent', 'old', '2023-10-25 13:09:56'),
(331, 172, 24, 51, '4', 'new', '2023-10-24 03:53:01'),
(332, 172, 24, 54, '4', 'new', '2023-10-24 03:53:01'),
(333, 172, 24, 50, 'Oracle', 'new', '2023-10-24 03:53:01'),
(334, 172, 24, 53, 'Const', 'new', '2023-10-24 03:53:01'),
(335, 172, 24, 52, 'Reverse() method', 'new', '2023-10-24 03:53:01'),
(336, 172, 22, 47, 'Extends', 'new', '2023-10-24 14:43:21'),
(337, 172, 22, 45, 'preventDefault()', 'new', '2023-10-24 14:43:22'),
(338, 172, 22, 44, 'JSX', 'new', '2023-10-24 14:43:22'),
(339, 172, 22, 43, 'Ref', 'new', '2023-10-24 14:43:22'),
(340, 172, 22, 46, 'Render', 'new', '2023-10-24 14:43:22'),
(341, 171, 21, 33, '6', 'new', '2023-10-25 09:13:13'),
(342, 171, 21, 36, '0', 'new', '2023-10-25 09:13:13'),
(343, 171, 21, 34, 'Lowercase letters', 'new', '2023-10-25 09:13:14'),
(344, 171, 21, 35, 'struct,enum', 'new', '2023-10-25 09:13:14'),
(345, 171, 21, 37, 'Call by reference', 'new', '2023-10-25 09:13:14'),
(346, 171, 15, 57, 'Internal', 'new', '2023-10-25 09:18:34'),
(347, 171, 15, 27, 'yui', 'new', '2023-10-25 09:18:34'),
(348, 171, 15, 58, 'Preprocessor directive', 'new', '2023-10-25 09:18:34'),
(349, 171, 15, 60, '1 byte', 'new', '2023-10-25 09:18:34'),
(350, 171, 15, 61, 'stdio.h', 'new', '2023-10-25 09:18:34'),
(351, 171, 25, 62, 'Learning', 'new', '2023-10-25 13:09:57'),
(352, 171, 25, 63, 'DBMS', 'new', '2023-10-25 13:09:57'),
(353, 171, 25, 65, 'Predicate and Response', 'new', '2023-10-25 13:09:57'),
(354, 171, 25, 64, 'Problem -solving Agent', 'new', '2023-10-25 13:09:57'),
(355, 171, 25, 66, '4 ', 'new', '2023-10-25 13:09:57'),
(356, 189, 21, 35, 'int,float,long,double', 'new', '2023-10-25 13:36:29'),
(357, 189, 21, 33, '4', 'new', '2023-10-25 13:36:29'),
(358, 189, 21, 34, 'Lowercase letters', 'new', '2023-10-25 13:36:29'),
(359, 189, 21, 36, '0', 'new', '2023-10-25 13:36:29'),
(360, 189, 21, 37, 'Call by reference', 'new', '2023-10-25 13:36:30'),
(361, 183, 26, 68, '2.0', 'new', '2023-10-25 13:59:26'),
(362, 183, 26, 85, 'random.shuffleList(list1)', 'new', '2023-10-25 13:59:26'),
(363, 183, 26, 69, '1', 'new', '2023-10-25 13:59:26'),
(364, 183, 26, 87, '-5', 'new', '2023-10-25 13:59:27'),
(365, 183, 26, 86, '3', 'new', '2023-10-25 13:59:27'),
(366, 190, 25, 63, 'Face recognition', 'new', '2023-10-25 14:08:21'),
(367, 190, 25, 66, '4 ', 'new', '2023-10-25 14:08:21'),
(368, 190, 25, 64, 'Intelligence Agent', 'new', '2023-10-25 14:08:21'),
(369, 190, 25, 65, 'Predicate and Subject', 'new', '2023-10-25 14:08:21'),
(370, 190, 25, 62, 'Learning', 'new', '2023-10-25 14:08:21'),
(371, 193, 26, 87, '-5', 'new', '2023-10-25 15:38:11'),
(372, 193, 26, 70, '4', 'new', '2023-10-25 15:38:11'),
(373, 193, 26, 68, '2.0', 'new', '2023-10-25 15:38:11'),
(374, 193, 26, 67, '34', 'new', '2023-10-25 15:38:11'),
(375, 193, 26, 71, '111', 'new', '2023-10-25 15:38:11'),
(376, 194, 24, 55, 'Scripting Language', 'new', '2023-10-27 14:15:49'),
(377, 194, 24, 53, 'Const', 'new', '2023-10-27 14:15:49'),
(378, 194, 24, 52, 'Filter () method', 'new', '2023-10-27 14:15:49'),
(379, 194, 24, 51, '4', 'new', '2023-10-27 14:15:49'),
(380, 194, 24, 50, 'Google', 'new', '2023-10-27 14:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(0, 171, 25, 'used'),
(0, 189, 21, 'used'),
(0, 183, 26, 'used'),
(0, 190, 25, 'used'),
(0, 193, 26, 'used'),
(0, 194, 24, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(9, 12, 'In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1850s', '1880s', '1930s', '1950s', '1880s', 'active'),
(10, 12, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 'Field', 'active'),
(14, 12, 'OS computer abbreviation usually means ?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', 'Operating System', 'active'),
(15, 12, 'Who developed Yahoo?', 'Dennis Ritchie & Ken Thompson', 'David Filo & Jerry Yang', 'Vint Cerf & Robert Kahn', 'Steve Case & Jeff Bezos', 'David Filo & Jerry Yang', 'active'),
(16, 12, 'DB computer abbreviation usually means ?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', 'Database', 'active'),
(17, 12, '.INI extension refers usually to what kind of file?', 'Image file', 'System file', 'Hypertext related file', 'Image Color Matching Profile file', 'System file', 'active'),
(18, 12, 'What does the term PLC stand for?', 'Programmable Lift Computer', 'Program List Control', 'Programmable Logic Controller', 'Piezo Lamp Connector', 'Programmable Logic Controller', 'active'),
(19, 12, 'What do we call a network whose elements may be separated by some distance? It usually involves two or more small networks and dedicated high-speed telephone lines.', 'URL (Universal Resource Locator)', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'World Wide Web', 'WAN (Wide Area Network)', 'active'),
(20, 12, 'After the first photons of light are produced, which process is responsible for amplification of the light?', 'Blackbody radiation', 'Stimulated emission', 'Plancks radiation', 'Einstein oscillation', 'Stimulated emission', 'active'),
(21, 12, '.TMP extension refers usually to what kind of file?', 'Compressed Archive file', 'Image file', 'Temporary file', 'Audio file', 'Temporary file', 'active'),
(22, 12, 'What do we call a collection of two or more computers that are located within a limited distance of each other and that are connected to each other directly or indirectly?', 'Inernet', 'Interanet', 'Local Area Network', 'Wide Area Network', 'Local Area Network', 'active'),
(24, 12, '	 In what year was the \"@\" chosen for its use in e-mail addresses?', '1976', '1972', '1980', '1984', '1972', 'active'),
(25, 12, 'What are three types of lasers?', 'Gas, metal vapor, rock', 'Pointer, diode, CD', 'Diode, inverted, pointer', 'Gas, solid state, diode', 'Gas, solid state, diode', 'active'),
(27, 15, 'asdasd', 'dsf', 'sd', 'yui', 'sdf', 'yui', 'active'),
(28, 11, 'Question 1', 'q1', 'asd', 'fds', 'ytu', 'q1', 'active'),
(29, 11, 'Question 2', 'asd', 'sd', 'q2', 'dfg', 'q2', 'active'),
(30, 11, 'Question 3', 'sd', 'q3', 'asd', 'fgh', 'q3', 'active'),
(31, 19, 'What does PHP stands for?', 'HTTP Preprocessor', 'Personal Home Page', 'Hypertext Preprocessor', 'Preview Hyper Page', 'Hypertext Preprocessor', 'active'),
(32, 19, 'What is the syntax of PHP Script?', '<?php ---- ?>', '< php ----------- >', '<php>      -------- </php>', '<? PHP           ? PHP>', '<?php ---- ?>', 'active'),
(33, 21, 'How many formats of function are available?', '6', '2', '4', '3', '4', 'active'),
(34, 21, 'All keywords in C are', 'Lowercase letters', 'Uppercase Letters', 'Camelcase letters', 'None of the mentioned', 'Lowercase letters', 'active'),
(35, 21, 'What are the types of arrays?', 'int,float,long,double', 'struct,enum', 'char', 'All the above', 'All the above', 'active'),
(36, 21, 'An array index starts with?', '-1', '0', '1', '2', '0', 'active'),
(37, 21, 'An entire array is always passed by ________ to a called function', 'Call by value', 'Call by reference', 'Address relocation', 'Address restructure', 'Call by reference', 'active'),
(38, 19, 'Correct extension of python file', '.python', '.py', '.pl', '.p', '.py', 'active'),
(40, 19, ' What will be the ouput ?       4+3%5', '7', '2', '4', '1', '7', 'active'),
(42, 19, 'The keyword used for function', 'def', 'function', 'fun', 'define', 'def', 'active'),
(43, 22, 'What are the arbitrary inputs?', 'Elements', 'props', 'Keys', 'Ref', 'Props', 'active'),
(44, 22, 'Which helps react for keeping their data unidirectional?', 'DOM', 'flux', 'JSX', 'Props', 'flux', 'active'),
(45, 22, 'Which command can prevent default behaviour at in react', 'preventDefault()', 'avoidDefault()', 'revokeDefault()', 'None of the above', 'preventDefault()', 'active'),
(46, 22, 'The input to class based component is', 'Factory', 'Render', 'Class', 'props', 'props', 'active'),
(47, 22, 'Which is used to create a class inheritance?', 'Inherits', 'Extends', 'Create', 'this', 'Extends', 'active'),
(49, 23, 'Angular JS is a', 'Java framework', 'Javascript framework', 'HTML framework', 'SQL framework', 'Javascript framework', 'active'),
(50, 24, 'Which company invented vue.js', 'Facebook', 'Google', 'Oracle', 'Twitter', 'Google', 'active'),
(51, 24, 'How many ways are there to define a filter in Vue.js?', '2', '3', '4', '1', '2', 'active'),
(52, 24, 'Which method does not represent the non-mutation?', 'Reverse() method', 'Concat() method', 'Slice() method', 'Filter () method', 'Reverse() method', 'active'),
(53, 24, 'Which keyword is used to create constant Vue.js?', 'Define', 'Constant', 'Const', 'None of the above', 'Const', 'active'),
(54, 24, 'How many types of directives are available in Vue.js ?', '2', '3', '4', '5', '4', 'active'),
(55, 24, 'What is Vue.js?', 'A Framework', 'Directives', 'Scripting Language', 'Programmimg Language', 'Scripting Language', 'active'),
(57, 15, 'Functions in C language are always ', 'Internal', 'External', 'both Internal and external', 'none', 'External', 'active'),
(58, 15, 'What is #include<stdio.h> ?', 'Inclusion directive', 'Preprocessor directive', 'File inclusive directive', 'None', 'Preprocessor directive', 'active'),
(60, 15, 'size of char?', '1 byte', '1 bit', '2 byte', '2 bit', '1 byte', 'active'),
(61, 15, 'scanf() is a predefined function in?', 'stdlib.h', 'ctype.h', 'stdio.h', 'stdarg.h', 'stdio.h', 'active'),
(62, 25, 'Component of AI', 'Learning', 'Training', 'Designing', 'Puzzling', 'Learning', 'active'),
(63, 25, 'Which of the following is not a application of AI?', 'Face recognition', 'Chatbots', 'LIDAR', 'DBMS', 'DBMS', 'active'),
(64, 25, 'Web Crawler is an example of', 'Intelligence Agent', 'Problem -solving Agent', 'Simple reflex agent', 'Model based agent', 'Intelligence Agent', 'active'),
(65, 25, 'First order logic statement contains', 'Predicate and Response', 'Subject and Object', 'Predicate and Subject', 'None of the above', 'Predicate and Subject', 'active'),
(66, 25, 'A Knowledge based agent can be defined with _____ levels', '2', '3', '4 ', 'None', '3', 'active'),
(67, 26, 'r = lambda q: q * 2 s = lambda q: q * 3 x = 2 x = r(x)  x = s(x)  x = r(x)  print (x)       find output', '20', '24', '56', '34', '24', 'active'),
(68, 26, '  a = 4.5 b = 2 print (a//b)   find output', '2.0', '2.5', '2.25', '3', '2.0', 'active'),
(69, 26, '  a = True b = False c = False    if not a or b:      print (1)  elif not a or not b and c:      print (2)  elif not a or b or not b and a:      print (3)  else:      print (4)       what is expected output?', '1', '2', '3', '4', '3', 'active'),
(70, 26, '  count = 1     def doThis():         global count         for i in (1, 2, 3):           count += 1    doThis()     print (count)  find output', '4', '3', '1', '2', '4', 'active'),
(71, 26, 'class Acc:      def __init__(self, id):          self.id = id         id = 555     acc = Acc(111)  print (acc.id) ', '111', '555', 'both', 'none', '111', 'active'),
(72, 27, '<?php $x = 10; $y = 20; if ($x > $y && 1||1)     print \"1000 PHP \" ; else     print \"Welcome to Sanfoundry\"; ?>', '1000 PHP', 'no output', '10', '20', '1000 PHP', 'active'),
(76, 27, 'Which is used to add comment line in php?', '#', '//', '/**/', 'all the above', 'all the above', 'active'),
(77, 27, 'Which loop  are supported by PHP?', 'for loop', 'while loop', 'do-while loop', 'all the above', 'all the above', 'active'),
(78, 27, 'Functions used for generating unique id', 'md5()', 'uniqueid()', 'mdid()', 'id()', 'uniqueid()', 'active'),
(79, 27, 'Functions used to find files', 'fold()', 'get_file()', 'glob()', 'file()', 'glob()', 'active'),
(80, 28, 'The  year electronic guitar was invented?', '1940', '1950', '1930', '1900', '1930', 'active'),
(81, 28, 'How many strings guitar has', '5', '6', '7', '8', '6', 'active'),
(82, 28, 'Which is the tuning of first string?', 'B', 'A', 'C', 'E', 'B', 'active'),
(83, 28, 'Guitars are made of', 'wood', 'plastic', 'rock', 'iron', 'wood', 'active'),
(84, 28, 'What music style is most important in electronic guitar', 'pop', 'rock', 'pop and rock', 'none', 'pop and rock', 'active'),
(85, 26, 'Which function is used to shuffle a list?', 'shuffle(list1)', 'list1.shuffle', 'random.shuffleList(list1)', 'random.shuffle(list1)', 'random.shuffle(list1)', 'active'),
(86, 26, 'What is returned by math.ceil(3.4)?', '3', '4', '4.0', '3.0', '4', 'active'),
(87, 26, 'what does ~4 evaluate to?', '-3', '-5', '+3', '-4', '-5', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(11, 26, 'Duerms', '1', 2, 'qwe', '2019-12-05 06:33:21'),
(12, 26, 'Another Exam', '1', 5, 'Mabilisang Exam', '2019-12-04 09:49:18'),
(13, 26, 'Exam Again', '5', 0, 'again and again\r\n', '2019-11-30 02:54:54'),
(14, 16, 'Python Course Assessment', '10', 5, 'Demo', '2023-10-22 16:48:39'),
(15, 18, 'Certification Assessment', '10', 5, 'Module Test', '2023-10-23 04:05:18'),
(19, 16, 'Mock Exam', '10', 5, 'Try before taking Mains', '2023-10-22 19:34:17'),
(20, 18, 'Functions and Strings', '10', 5, 'Module Test4', '2023-10-22 20:03:32'),
(21, 18, 'Module Test4', '10', 5, 'Arrays, Functions, Pointers', '2023-10-23 02:55:22'),
(22, 17, 'module', '10', 5, 'Basics', '2023-10-23 03:26:57'),
(23, 13, 'module test5', '10', 5, 'Basics', '2023-10-23 03:39:54'),
(24, 12, 'module test6', '10', 5, 'basics', '2023-10-23 03:44:58'),
(25, 11, 'module test', '10', 5, 'basics', '2023-10-23 04:16:59'),
(26, 10, 'module test 1', '20', 5, 'programs', '2023-10-23 04:34:26'),
(27, 9, 'module test  2', '10', 5, 'basics', '2023-10-23 04:44:34'),
(28, 8, 'model', '10', 5, 'basics', '2023-10-23 05:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at FIRST DESK help me to achieve to get placed in my dream company', 171),
(8, 'I am grateful to FIRST DESK ', 172),
(13, 'This is Awesome ', 182),
(14, 'Good platform to enhance the knowledge', 183),
(15, 'Good platform to learn', 192);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(4, 6, 'Glenn Duerme', 'Gwapa kay Miss Pam', 'December 05, 2019'),
(5, 6, 'Anonymous', 'Lageh, idol na nako!', 'December 05, 2019'),
(6, 4, 'Rogz Nunezsss', 'Yes', 'December 08, 2019'),
(7, 4, '', '', 'December 08, 2019'),
(8, 4, '', '', 'December 08, 2019'),
(9, 8, 'Anonymous', 'dfsdf', 'January 05, 2020'),
(0, 0, 'demouser', 'good platform to learn', 'October 25, 2023'),
(0, 0, 'demouser', 'good platform to learn', 'October 25, 2023'),
(0, 0, 'demouser', 'good platform to learn', 'October 25, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Python ', 'Introduction to Python Desc', '../lessonvid/intropython2.mp4', 10, 'Learn Python A-Z'),
(33, 'How Python Works', 'How Python Works ', '../lessonvid/python2.mp4', 10, 'Learn Python A-Z'),
(34, 'Why Python is powerful', 'Why Python is powerful ', '../lessonvid/python3.mp4', 10, 'Learn Python A-Z'),
(35, 'Everyone should learn Python ', 'Everyone should learn Python ', '../lessonvid/python4.mp4', 10, 'Learn Python A-Z'),
(36, 'Introduction to PHP', 'Introduction to PHP ', '../lessonvid/php1.mp4', 9, 'Complete PHP Bootcamp'),
(37, 'How PHP works', 'How PHP works ', '../lessonvid/php2.mp4', 9, 'Complete PHP Bootcamp'),
(39, 'Introduction to Guitar', 'Intro to Guitar ', '../lessonvid/guitar.mp4', 8, 'Learn Guitar The Easy Way'),
(41, ' Artificial Intelligence', 'Intro to AI', '../lessonvid/ai1.mp4', 11, ' Artificial Intelligence'),
(42, 'How it works', 'How it works and applications', '../lessonvid/ai2.mp4', 11, ' Artificial Intelligence'),
(43, ' Learn Vue JS', 'Learn Vue JS ', '../lessonvid/vuejs.mp4', 12, 'Learn Vue JS'),
(44, 'Angular JS', 'intro Angular JS description', '../lessonvid/angular.mp4', 13, 'Angular JS'),
(48, 'Python full course', 'python complete programming', '../lessonvid/pythonfull16.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/react.mp4', 17, 'Learn React Native'),
(51, 'Intro to C', 'introduction to C ', '../lessonvid/c.mp4', 18, 'C LANGUAGE');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(1, 'What is php stands for?', 'Hypertext Preprocessor', 'Personal HomePage', 'Preprocessor Homepage', 'Premier Homepage', 'a'),
(2, ' Who is the father of PHP?', ' Who is the father of PHP?', 'List Barely', 'Rasmus Lerdrof', 'None of the above', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(189, 'demouser', 'demouser@gmail.com', '123456', '', ''),
(190, ' SARATH', 'sarath@gmail.com', '6274', ' Full Stack Developer', '../image/stu/student4.jpg'),
(191, ' MOHU', 'mohu@gmail.com', '5678', ' Web developer', '../image/stu/student2.jpg'),
(192, ' YAMUNA', 'yamuna@gmail.com', '5678', ' Python Developer', '../image/stu/student3.jpg'),
(193, ' sanoj', 'sanoj@gmail.com', '5678', 'student', '../image/stu/student1.jpg'),
(194, '   KAVIYA', 'kaviya@gmail.com', '1234', '   web developer', '../image/stu/super-mario-2690254_1280.jpg'),
(195, 'GEETHA', 'Geetha@gmail.com', '1234', '', ''),
(196, 'anu', 'anu@gmail.com', '1234', '', ''),
(197, 'amutha', 'amutha@gmail.com', '6274', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
