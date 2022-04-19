-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2021 at 04:31 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `activitiesID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiescategoryID` int(11) NOT NULL,
  `description` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `time_to` varchar(40) DEFAULT NULL,
  `time_from` varchar(40) DEFAULT NULL,
  `time_at` varchar(40) DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`activitiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activitiescategory`
--

DROP TABLE IF EXISTS `activitiescategory`;
CREATE TABLE IF NOT EXISTS `activitiescategory` (
  `activitiescategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `fa_icon` varchar(40) DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(40) NOT NULL,
  PRIMARY KEY (`activitiescategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activitiescategory`
--

INSERT INTO `activitiescategory` (`activitiescategoryID`, `title`, `fa_icon`, `schoolyearID`, `create_date`, `modify_date`, `userID`, `usertypeID`) VALUES
(1, 'Photos', 'fa-picture-o', 19, '2017-04-30 09:04:15', '2017-08-01 05:15:23', 1, 1),
(2, 'Food', 'fa-cutlery', 19, '2017-04-30 02:28:09', '2017-04-30 02:28:09', 1, 1),
(3, 'Sleep', 'fa-bed', 19, '2017-04-30 02:51:08', '2017-04-30 02:51:08', 1, 1),
(4, 'Sports', 'fa-trophy', 19, '2017-04-30 02:52:04', '2017-04-30 02:52:04', 1, 1),
(5, 'Activities', 'fa-puzzle-piece', 19, '2017-04-30 02:52:36', '2017-04-30 02:56:41', 1, 1),
(6, 'Note', 'fa-edit', 19, '2017-04-30 02:55:08', '2017-04-30 02:55:08', 1, 1),
(7, 'Incident', 'fa-times', 19, '2017-04-30 03:00:54', '2017-04-30 03:02:37', 1, 1),
(8, 'Meds', 'fa-medkit', 19, '2017-04-30 03:02:47', '2017-04-30 03:02:47', 1, 1),
(9, 'Art', 'fa-paint-brush', 19, '2017-04-30 03:06:07', '2017-04-30 03:06:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activitiescomment`
--

DROP TABLE IF EXISTS `activitiescomment`;
CREATE TABLE IF NOT EXISTS `activitiescomment` (
  `activitiescommentID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`activitiescommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activitiesmedia`
--

DROP TABLE IF EXISTS `activitiesmedia`;
CREATE TABLE IF NOT EXISTS `activitiesmedia` (
  `activitiesmediaID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `attachment` text NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`activitiesmediaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activitiesstudent`
--

DROP TABLE IF EXISTS `activitiesstudent`;
CREATE TABLE IF NOT EXISTS `activitiesstudent` (
  `activitiesstudentID` int(11) NOT NULL AUTO_INCREMENT,
  `activitiesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  PRIMARY KEY (`activitiesstudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `addonsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_name` varchar(180) DEFAULT NULL,
  `slug` varchar(180) DEFAULT NULL,
  `description` longtext,
  `version` varchar(11) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `init` longtext,
  `files` longtext,
  `preview_image` varchar(180) DEFAULT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`addonsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
CREATE TABLE IF NOT EXISTS `alert` (
  `alertID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemID` int(128) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `itemname` varchar(128) NOT NULL,
  PRIMARY KEY (`alertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `assetID` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Title',
  `manufacturer` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `asset_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_condition` int(11) DEFAULT NULL,
  `attachment` text,
  `originalfile` text,
  `asset_categoryID` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_assignment`
--

DROP TABLE IF EXISTS `asset_assignment`;
CREATE TABLE IF NOT EXISTS `asset_assignment` (
  `asset_assignmentID` int(11) NOT NULL AUTO_INCREMENT,
  `assetID` int(11) NOT NULL COMMENT 'Description and title',
  `usertypeID` int(11) DEFAULT NULL,
  `check_out_to` int(11) NOT NULL,
  `due_date` date DEFAULT NULL,
  `note` text,
  `assigned_quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`asset_assignmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asset_category`
--

DROP TABLE IF EXISTS `asset_category`;
CREATE TABLE IF NOT EXISTS `asset_category` (
  `asset_categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`asset_categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignmentID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `deadlinedate` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text NOT NULL,
  `classesID` longtext NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `sectionID` longtext,
  `subjectID` longtext,
  `assignusertypeID` int(11) DEFAULT NULL,
  `assignuserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`assignmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignmentanswer`
--

DROP TABLE IF EXISTS `assignmentanswer`;
CREATE TABLE IF NOT EXISTS `assignmentanswer` (
  `assignmentanswerID` int(11) NOT NULL AUTO_INCREMENT,
  `assignmentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `uploaderID` int(11) NOT NULL,
  `uploadertypeID` int(11) NOT NULL,
  `answerfile` text NOT NULL,
  `answerfileoriginal` text NOT NULL,
  `answerdate` date NOT NULL,
  PRIMARY KEY (`assignmentanswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `automation_rec`
--

DROP TABLE IF EXISTS `automation_rec`;
CREATE TABLE IF NOT EXISTS `automation_rec` (
  `automation_recID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `nofmodule` int(11) NOT NULL,
  PRIMARY KEY (`automation_recID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `automation_shudulu`
--

DROP TABLE IF EXISTS `automation_shudulu`;
CREATE TABLE IF NOT EXISTS `automation_shudulu` (
  `automation_shuduluID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`automation_shuduluID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `bookID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `book` varchar(60) NOT NULL,
  `subject_code` tinytext NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_quantity` int(11) NOT NULL,
  `rack` tinytext NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
CREATE TABLE IF NOT EXISTS `candidate` (
  `candidateID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `verified_by` varchar(100) NOT NULL,
  `date_verification` date DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `class_type` varchar(60) NOT NULL,
  `hbalance` varchar(20) NOT NULL,
  `note` text,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template`
--

DROP TABLE IF EXISTS `certificate_template`;
CREATE TABLE IF NOT EXISTS `certificate_template` (
  `certificate_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `theme` int(11) NOT NULL,
  `top_heading_title` text,
  `top_heading_left` text,
  `top_heading_right` text,
  `top_heading_middle` text,
  `main_middle_text` text NOT NULL,
  `template` text NOT NULL,
  `footer_left_text` text,
  `footer_right_text` text,
  `footer_middle_text` text,
  `background_image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`certificate_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `childcare`
--

DROP TABLE IF EXISTS `childcare`;
CREATE TABLE IF NOT EXISTS `childcare` (
  `childcareID` int(11) NOT NULL AUTO_INCREMENT,
  `dropped_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `signature` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `comment` text,
  `received_status` int(11) NOT NULL DEFAULT '0',
  `receiver_name` varchar(40) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`childcareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `classesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classes` varchar(60) NOT NULL,
  `classes_numeric` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `studentmaxID` int(11) DEFAULT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`classesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE IF NOT EXISTS `complain` (
  `complainID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `description` text,
  `attachment` text,
  `originalfile` text,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`complainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_message_info`
--

DROP TABLE IF EXISTS `conversation_message_info`;
CREATE TABLE IF NOT EXISTS `conversation_message_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `draft` int(11) DEFAULT '0',
  `fav_status` int(11) DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_msg`
--

DROP TABLE IF EXISTS `conversation_msg`;
CREATE TABLE IF NOT EXISTS `conversation_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `start` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

DROP TABLE IF EXISTS `conversation_user`;
CREATE TABLE IF NOT EXISTS `conversation_user` (
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `is_sender` int(11) DEFAULT '0',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `documentID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `file` varchar(200) CHARACTER SET utf8 NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`documentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eattendance`
--

DROP TABLE IF EXISTS `eattendance`;
CREATE TABLE IF NOT EXISTS `eattendance` (
  `eattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `date` date NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `eattendance` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `eextra` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`eattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ebooks`
--

DROP TABLE IF EXISTS `ebooks`;
CREATE TABLE IF NOT EXISTS `ebooks` (
  `ebooksID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `classesID` int(11) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT '0',
  `cover_photo` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  PRIMARY KEY (`ebooksID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailsetting`
--

DROP TABLE IF EXISTS `emailsetting`;
CREATE TABLE IF NOT EXISTS `emailsetting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailsetting`
--

INSERT INTO `emailsetting` (`fieldoption`, `value`) VALUES
('email_engine', 'sendmail'),
('smtp_password', ''),
('smtp_port', ''),
('smtp_security', ''),
('smtp_server', ''),
('smtp_username', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fdate` date NOT NULL,
  `ftime` time NOT NULL,
  `tdate` date NOT NULL,
  `ttime` time NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eventcounter`
--

DROP TABLE IF EXISTS `eventcounter`;
CREATE TABLE IF NOT EXISTS `eventcounter` (
  `eventcounterID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `eventID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventcounterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `examID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `note` text,
  PRIMARY KEY (`examID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`examID`, `exam`, `date`, `note`) VALUES
(1, 'First Semester', '2019-04-01', 'Don\'t delete it!');

-- --------------------------------------------------------

--
-- Table structure for table `examschedule`
--

DROP TABLE IF EXISTS `examschedule`;
CREATE TABLE IF NOT EXISTS `examschedule` (
  `examscheduleID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `edate` date NOT NULL,
  `examfrom` varchar(10) NOT NULL,
  `examto` varchar(10) NOT NULL,
  `room` tinytext,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`examscheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `expenseID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `date` date NOT NULL,
  `expenseday` varchar(11) NOT NULL,
  `expensemonth` varchar(11) NOT NULL,
  `expenseyear` year(4) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `file` varchar(200) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`expenseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

DROP TABLE IF EXISTS `feetypes`;
CREATE TABLE IF NOT EXISTS `feetypes` (
  `feetypesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `feetypes` varchar(60) NOT NULL,
  `note` text,
  PRIMARY KEY (`feetypesID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feetypes`
--

INSERT INTO `feetypes` (`feetypesID`, `feetypes`, `note`) VALUES
(1, 'Books Fine', 'Don\'t delete it!'),
(2, 'Library Fee', 'Don\'t delete it!'),
(3, 'Transport Fee', 'Don\'t delete it!'),
(4, 'Hostel Fee', 'Don\'t delete it!'),
(5, 'Tuition Fee [Jan]', ''),
(6, 'Tuition Fee [Feb]', ''),
(7, 'Tuition Fee [Mar]', ''),
(8, 'Tuition Fee [Apr]', ''),
(9, 'Tuition Fee [May]', ''),
(10, 'Tuition Fee [Jun]', ''),
(11, 'Tuition Fee [Jul]', ''),
(12, 'Tuition Fee [Aug]', ''),
(13, 'Tuition Fee [Sep]', ''),
(14, 'Tuition Fee [Oct]', ''),
(15, 'Tuition Fee [Nov]', ''),
(16, 'Tuition Fee [Dec]', '');

-- --------------------------------------------------------

--
-- Table structure for table `fmenu`
--

DROP TABLE IF EXISTS `fmenu`;
CREATE TABLE IF NOT EXISTS `fmenu` (
  `fmenuID` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Only for active',
  `topbar` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  PRIMARY KEY (`fmenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fmenu_relation`
--

DROP TABLE IF EXISTS `fmenu_relation`;
CREATE TABLE IF NOT EXISTS `fmenu_relation` (
  `fmenu_relationID` int(11) NOT NULL AUTO_INCREMENT,
  `fmenuID` int(11) DEFAULT NULL,
  `menu_typeID` int(11) DEFAULT NULL COMMENT '1 => Pages, 2 => Post, 3 => Links',
  `menu_parentID` varchar(128) DEFAULT NULL,
  `menu_orderID` int(11) DEFAULT NULL,
  `menu_pagesID` int(11) DEFAULT NULL,
  `menu_label` varchar(254) DEFAULT NULL,
  `menu_link` text NOT NULL,
  `menu_rand` varchar(128) DEFAULT NULL,
  `menu_rand_parentID` varchar(128) DEFAULT NULL,
  `menu_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`fmenu_relationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_setting`
--

DROP TABLE IF EXISTS `frontend_setting`;
CREATE TABLE IF NOT EXISTS `frontend_setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_setting`
--

INSERT INTO `frontend_setting` (`fieldoption`, `value`) VALUES
('description', ''),
('facebook', ''),
('google', ''),
('linkedin', ''),
('login_menu_status', '1'),
('online_admission_status', '0'),
('teacher_email_status', '0'),
('teacher_phone_status', '0'),
('twitter', ''),
('youtube', '');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_template`
--

DROP TABLE IF EXISTS `frontend_template`;
CREATE TABLE IF NOT EXISTS `frontend_template` (
  `frontend_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(128) NOT NULL,
  PRIMARY KEY (`frontend_templateID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_template`
--

INSERT INTO `frontend_template` (`frontend_templateID`, `template_name`) VALUES
(1, 'home'),
(2, 'about'),
(3, 'event'),
(4, 'teacher'),
(5, 'gallery'),
(6, 'notice'),
(7, 'blog'),
(8, 'contact'),
(9, 'admission');

-- --------------------------------------------------------

--
-- Table structure for table `globalpayment`
--

DROP TABLE IF EXISTS `globalpayment`;
CREATE TABLE IF NOT EXISTS `globalpayment` (
  `globalpaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `classesID` int(11) DEFAULT NULL,
  `sectionID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `clearancetype` varchar(40) NOT NULL,
  `invoicename` varchar(128) NOT NULL,
  `invoicedescription` varchar(128) NOT NULL,
  `paymentyear` varchar(5) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`globalpaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `gradeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade` varchar(60) NOT NULL,
  `point` varchar(11) NOT NULL,
  `gradefrom` int(11) NOT NULL,
  `gradeupto` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hmember`
--

DROP TABLE IF EXISTS `hmember`;
CREATE TABLE IF NOT EXISTS `hmember` (
  `hmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `hbalance` varchar(20) DEFAULT NULL,
  `hjoindate` date NOT NULL,
  PRIMARY KEY (`hmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
CREATE TABLE IF NOT EXISTS `holiday` (
  `holidayID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`holidayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostelID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `htype` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text,
  PRIMARY KEY (`hostelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hourly_template`
--

DROP TABLE IF EXISTS `hourly_template`;
CREATE TABLE IF NOT EXISTS `hourly_template` (
  `hourly_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `hourly_grades` varchar(128) NOT NULL,
  `hourly_rate` int(11) NOT NULL,
  PRIMARY KEY (`hourly_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `incomeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `incomeday` varchar(11) NOT NULL,
  `incomemonth` varchar(11) NOT NULL,
  `incomeyear` year(4) NOT NULL,
  `amount` double NOT NULL,
  `file` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`incomeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ini_config`
--

DROP TABLE IF EXISTS `ini_config`;
CREATE TABLE IF NOT EXISTS `ini_config` (
  `configID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`configID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ini_config`
--

INSERT INTO `ini_config` (`configID`, `type`, `config_key`, `value`) VALUES
(1, 'paypal', 'paypal_api_username', ''),
(2, 'paypal', 'paypal_api_password', ''),
(3, 'paypal', 'paypal_api_signature', ''),
(4, 'paypal', 'paypal_email', ''),
(5, 'paypal', 'paypal_demo', ''),
(6, 'stripe', 'stripe_secret', ''),
(8, 'stripe', 'stripe_demo', ''),
(9, 'payumoney', 'payumoney_key', ''),
(10, 'payumoney', 'payumoney_salt', ''),
(11, 'payumoney', 'payumoney_demo', ''),
(12, 'paypal', 'paypal_status', ''),
(13, 'stripe', 'stripe_status', ''),
(14, 'payumoney', 'payumoney_status', ''),
(15, 'voguepay', 'voguepay_merchant_id', ''),
(16, 'voguepay', 'voguepay_merchant_ref', ''),
(17, 'voguepay', 'voguepay_developer_code', ''),
(18, 'voguepay', 'voguepay_demo', ''),
(19, 'voguepay', 'voguepay_status', ''),
(20, 'stripe', 'stripe_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `instruction`
--

DROP TABLE IF EXISTS `instruction`;
CREATE TABLE IF NOT EXISTS `instruction` (
  `instructionID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`instructionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `feetypeID` int(11) DEFAULT NULL,
  `feetype` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `date` date NOT NULL,
  `create_date` date NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `paidstatus` int(11) DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '1',
  `maininvoiceID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`invoiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `issueID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lID` varchar(128) NOT NULL,
  `bookID` int(11) NOT NULL,
  `serial_no` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaveapplications`
--

DROP TABLE IF EXISTS `leaveapplications`;
CREATE TABLE IF NOT EXISTS `leaveapplications` (
  `leaveapplicationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `leavecategoryID` int(10) UNSIGNED NOT NULL,
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `od_status` tinyint(1) NOT NULL DEFAULT '0',
  `from_date` date NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_date` date NOT NULL,
  `to_time` time DEFAULT NULL,
  `leave_days` int(11) NOT NULL,
  `reason` text,
  `attachment` varchar(200) DEFAULT NULL,
  `attachmentorginalname` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) UNSIGNED NOT NULL,
  `applicationto_userID` int(11) UNSIGNED DEFAULT NULL,
  `applicationto_usertypeID` int(11) UNSIGNED DEFAULT NULL,
  `approver_userID` int(11) UNSIGNED DEFAULT NULL,
  `approver_usertypeID` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`leaveapplicationID`),
  KEY `leave_categoryID` (`leavecategoryID`),
  KEY `from_date` (`from_date`),
  KEY `to_date` (`to_date`),
  KEY `approver_userID` (`approver_userID`),
  KEY `approver_usertypeID` (`approver_usertypeID`),
  KEY `applicationto_usertypeID` (`applicationto_usertypeID`),
  KEY `applicationto_userID` (`applicationto_userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaveassign`
--

DROP TABLE IF EXISTS `leaveassign`;
CREATE TABLE IF NOT EXISTS `leaveassign` (
  `leaveassignID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `leavecategoryID` int(10) UNSIGNED NOT NULL,
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `leaveassignday` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`leaveassignID`),
  KEY `leave_categoryID` (`leavecategoryID`),
  KEY `usertypeID` (`usertypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leavecategory`
--

DROP TABLE IF EXISTS `leavecategory`;
CREATE TABLE IF NOT EXISTS `leavecategory` (
  `leavecategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `leavecategory` varchar(255) NOT NULL,
  `leavegender` int(11) DEFAULT '0' COMMENT '1 = General, 2 = Male, 3 = Femele',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`leavecategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lmember`
--

DROP TABLE IF EXISTS `lmember`;
CREATE TABLE IF NOT EXISTS `lmember` (
  `lmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lID` varchar(40) NOT NULL,
  `studentID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `lbalance` varchar(20) DEFAULT NULL,
  `ljoindate` date NOT NULL,
  PRIMARY KEY (`lmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `locationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(128) NOT NULL,
  `description` text,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `loginlogID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) DEFAULT NULL,
  `browser` varchar(128) DEFAULT NULL,
  `operatingsystem` varchar(128) DEFAULT NULL,
  `login` int(11) UNSIGNED DEFAULT NULL,
  `logout` int(11) UNSIGNED DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`loginlogID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(1, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619217026, 1619217085, 1, 1),
(2, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619217138, 1619217438, 1, 1),
(3, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619256114, 1619256414, 1, 1),
(4, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619276848, 1619277148, 1, 1),
(5, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619285591, 1619285642, 1, 1),
(6, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619285665, 1619285965, 1, 1),
(7, '127.0.0.1', 'Mozilla Firefox', 'windows', 1619285687, 1619285727, 1, 1),
(8, '127.0.0.1', 'Mozilla Firefox', 'windows', 1622219216, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailandsms`
--

DROP TABLE IF EXISTS `mailandsms`;
CREATE TABLE IF NOT EXISTS `mailandsms` (
  `mailandsmsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `users` text NOT NULL,
  `type` varchar(16) NOT NULL,
  `senderusertypeID` int(11) NOT NULL,
  `senderID` int(11) NOT NULL,
  `message` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`mailandsmsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplate`
--

DROP TABLE IF EXISTS `mailandsmstemplate`;
CREATE TABLE IF NOT EXISTS `mailandsmstemplate` (
  `mailandsmstemplateID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `template` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplatetag`
--

DROP TABLE IF EXISTS `mailandsmstemplatetag`;
CREATE TABLE IF NOT EXISTS `mailandsmstemplatetag` (
  `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `tagname` varchar(128) NOT NULL,
  `mailandsmstemplatetag_extra` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplatetagID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailandsmstemplatetag`
--

INSERT INTO `mailandsmstemplatetag` (`mailandsmstemplatetagID`, `usertypeID`, `tagname`, `mailandsmstemplatetag_extra`, `create_date`) VALUES
(1, 1, '[name]', NULL, '2016-12-10 14:36:33'),
(2, 1, '[dob]', NULL, '2016-12-10 14:37:31'),
(3, 1, '[gender]', NULL, '2016-12-10 14:37:31'),
(4, 1, '[religion]', NULL, '2016-12-10 14:39:51'),
(5, 1, '[email]', NULL, '2016-12-10 14:39:51'),
(6, 1, '[phone]', NULL, '2016-12-10 14:39:51'),
(7, 1, '[address]', NULL, '2016-12-10 14:39:51'),
(8, 1, '[jod]', NULL, '2016-12-10 14:39:51'),
(9, 1, '[username]', NULL, '2016-12-10 14:39:51'),
(10, 2, '[name]', NULL, '2016-12-10 14:40:50'),
(11, 2, '[designation]', NULL, '2016-12-10 14:43:27'),
(12, 2, '[dob]', NULL, '2016-12-10 14:46:21'),
(13, 2, '[gender]', NULL, '2016-12-10 14:46:21'),
(14, 2, '[religion]', NULL, '2016-12-10 14:46:21'),
(15, 2, '[email]', NULL, '2016-12-10 14:46:21'),
(16, 2, '[phone]', NULL, '2016-12-10 14:46:21'),
(17, 2, '[address]', NULL, '2016-12-10 14:46:21'),
(18, 2, '[jod]', NULL, '2016-12-10 14:46:21'),
(19, 2, '[username]', NULL, '2016-12-10 14:46:21'),
(20, 3, '[name]', NULL, '2016-12-10 14:47:09'),
(21, 3, '[dob]', NULL, '2016-12-10 14:55:54'),
(22, 3, '[gender]', NULL, '2016-12-10 14:55:54'),
(23, 3, '[blood_group]', NULL, '2016-12-10 14:55:54'),
(24, 3, '[religion]', NULL, '2016-12-10 14:55:54'),
(25, 3, '[email]', NULL, '2016-12-10 14:55:54'),
(26, 3, '[phone]', NULL, '2016-12-10 14:55:54'),
(27, 3, '[address]', NULL, '2016-12-10 14:55:54'),
(28, 3, '[state]', NULL, '2017-02-11 12:21:49'),
(29, 3, '[country]', NULL, '2017-02-11 12:21:27'),
(30, 3, '[class]', NULL, '2016-12-18 15:34:20'),
(31, 3, '[section]', NULL, '2016-12-10 14:55:54'),
(32, 3, '[group]', NULL, '2016-12-10 14:55:54'),
(33, 3, '[optional_subject]', NULL, '2016-12-10 14:55:54'),
(34, 3, '[register_no]', NULL, '2017-02-11 12:21:27'),
(35, 3, '[roll]', NULL, '2017-02-11 12:22:56'),
(36, 3, '[extra_curricular_activities]', NULL, '2017-02-11 12:22:56'),
(37, 3, '[remarks]', NULL, '2017-02-11 12:22:56'),
(38, 3, '[username]', NULL, '2016-12-10 14:55:54'),
(39, 3, '[result_table]', NULL, '2016-12-10 14:55:54'),
(40, 4, '[name]', NULL, '2016-12-10 14:57:31'),
(41, 4, '[father\'s_name]', NULL, '2016-12-10 15:04:19'),
(42, 4, '[mother\'s_name]', NULL, '2016-12-10 15:04:19'),
(43, 4, '[father\'s_profession]', NULL, '2016-12-10 15:04:19'),
(44, 4, '[mother\'s_profession]', NULL, '2016-12-10 15:04:19'),
(45, 4, '[email]', NULL, '2016-12-10 15:04:19'),
(46, 4, '[phone]', NULL, '2016-12-10 15:04:19'),
(47, 4, '[address]', NULL, '2016-12-10 15:04:19'),
(48, 4, '[username]', NULL, '2016-12-10 15:04:19'),
(49, 1, '[date]', NULL, '2018-05-11 03:12:12'),
(50, 2, '[date]', NULL, '2018-05-11 03:12:27'),
(51, 3, '[date]', NULL, '2018-05-11 03:12:36'),
(52, 4, '[date]', NULL, '2018-05-11 03:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `maininvoice`
--

DROP TABLE IF EXISTS `maininvoice`;
CREATE TABLE IF NOT EXISTS `maininvoice` (
  `maininvoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `maininvoiceschoolyearID` int(11) NOT NULL,
  `maininvoiceclassesID` int(11) NOT NULL,
  `maininvoicestudentID` int(11) NOT NULL,
  `maininvoiceuserID` int(11) DEFAULT NULL,
  `maininvoiceusertypeID` int(11) DEFAULT NULL,
  `maininvoiceuname` varchar(60) DEFAULT NULL,
  `maininvoicedate` date NOT NULL,
  `maininvoicecreate_date` date NOT NULL,
  `maininvoiceday` varchar(20) DEFAULT NULL,
  `maininvoicemonth` varchar(20) DEFAULT NULL,
  `maininvoiceyear` year(4) NOT NULL,
  `maininvoicestatus` int(11) DEFAULT NULL,
  `maininvoicedeleted_at` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`maininvoiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `make_payment`
--

DROP TABLE IF EXISTS `make_payment`;
CREATE TABLE IF NOT EXISTS `make_payment` (
  `make_paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `month` text NOT NULL,
  `gross_salary` text NOT NULL,
  `total_deduction` text NOT NULL,
  `net_salary` text NOT NULL,
  `payment_amount` text NOT NULL,
  `payment_method` int(11) NOT NULL,
  `comments` text,
  `templateID` int(11) NOT NULL,
  `salaryID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `total_hours` text,
  PRIMARY KEY (`make_paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manage_salary`
--

DROP TABLE IF EXISTS `manage_salary`;
CREATE TABLE IF NOT EXISTS `manage_salary` (
  `manage_salaryID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`manage_salaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `markID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `exam` varchar(60) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `year` year(4) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`markID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `markpercentage`
--

DROP TABLE IF EXISTS `markpercentage`;
CREATE TABLE IF NOT EXISTS `markpercentage` (
  `markpercentageID` int(11) NOT NULL AUTO_INCREMENT,
  `markpercentagetype` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`markpercentageID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `markpercentage`
--

INSERT INTO `markpercentage` (`markpercentageID`, `markpercentagetype`, `percentage`, `examID`, `classesID`, `subjectID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Exam', 70, NULL, NULL, NULL, '2017-01-05 06:11:54', '2019-01-23 08:07:37', 1, 'admin', 'Admin'),
(2, 'Attendance', 10, NULL, NULL, NULL, '2019-01-23 08:07:10', '2019-01-23 08:07:10', 1, 'admin', 'Admin'),
(3, 'Class Test', 10, NULL, NULL, NULL, '2019-01-23 08:07:20', '2019-01-23 08:07:20', 1, 'admin', 'Admin'),
(4, 'Assignment', 10, NULL, NULL, NULL, '2019-01-23 08:07:32', '2019-01-23 08:07:32', 1, 'admin', 'Admin'),
(5, 'Practical', 10, NULL, NULL, NULL, '2019-01-23 08:08:16', '2019-01-23 08:08:16', 1, 'admin', 'Admin'),
(6, 'Quiz Test', 10, NULL, NULL, NULL, '2019-01-23 08:08:40', '2019-01-23 08:08:40', 1, 'admin', 'Admin'),
(7, 'Lab Report', 10, NULL, NULL, NULL, '2019-01-23 08:08:49', '2019-01-23 08:08:49', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `markrelation`
--

DROP TABLE IF EXISTS `markrelation`;
CREATE TABLE IF NOT EXISTS `markrelation` (
  `markrelationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `markID` int(11) NOT NULL,
  `markpercentageID` int(11) NOT NULL,
  `mark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`markrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marksetting`
--

DROP TABLE IF EXISTS `marksetting`;
CREATE TABLE IF NOT EXISTS `marksetting` (
  `marksettingID` int(11) NOT NULL AUTO_INCREMENT,
  `examID` int(11) NOT NULL DEFAULT '0',
  `classesID` int(11) NOT NULL DEFAULT '0',
  `subjectID` int(11) DEFAULT '0',
  `marktypeID` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`marksettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marksetting`
--

INSERT INTO `marksetting` (`marksettingID`, `examID`, `classesID`, `subjectID`, `marktypeID`) VALUES
(1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marksettingrelation`
--

DROP TABLE IF EXISTS `marksettingrelation`;
CREATE TABLE IF NOT EXISTS `marksettingrelation` (
  `marksettingrelationID` int(11) NOT NULL AUTO_INCREMENT,
  `marktypeID` int(11) NOT NULL DEFAULT '0',
  `marksettingID` int(11) NOT NULL DEFAULT '0',
  `markpercentageID` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`marksettingrelationID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marksettingrelation`
--

INSERT INTO `marksettingrelation` (`marksettingrelationID`, `marktypeID`, `marksettingID`, `markpercentageID`) VALUES
(1, 0, 1, 1),
(2, 0, 1, 2),
(3, 0, 1, 3),
(4, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `mediaID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `mcategoryID` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_name_display` varchar(255) NOT NULL,
  PRIMARY KEY (`mediaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_category`
--

DROP TABLE IF EXISTS `media_category`;
CREATE TABLE IF NOT EXISTS `media_category` (
  `mcategoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery`
--

DROP TABLE IF EXISTS `media_gallery`;
CREATE TABLE IF NOT EXISTS `media_gallery` (
  `media_galleryID` int(11) NOT NULL AUTO_INCREMENT,
  `media_gallery_type` int(11) NOT NULL,
  `file_type` varchar(40) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_title` text NOT NULL,
  `file_size` varchar(40) DEFAULT NULL,
  `file_width_height` varchar(40) DEFAULT NULL,
  `file_upload_date` datetime DEFAULT NULL,
  `file_caption` text,
  `file_alt_text` varchar(255) DEFAULT NULL,
  `file_description` text,
  `file_length` varchar(128) DEFAULT NULL,
  `file_artist` varchar(128) DEFAULT NULL,
  `file_album` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`media_galleryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_share`
--

DROP TABLE IF EXISTS `media_share`;
CREATE TABLE IF NOT EXISTS `media_share` (
  `shareID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL DEFAULT '0',
  `public` int(11) NOT NULL,
  `file_or_folder` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`shareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `pullRight` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `parentID` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `link`, `icon`, `pullRight`, `status`, `parentID`, `priority`) VALUES
(1, 'dashboard', 'dashboard', 'fa-laptop', '', 1, 0, 10000),
(2, 'student', 'student', 'icon-student', NULL, 1, 0, 1000),
(3, 'parents', 'parents', 'fa-user', NULL, 1, 0, 1000),
(4, 'teacher', 'teacher', 'icon-teacher', NULL, 1, 0, 1000),
(5, 'user', 'user', 'fa-users', NULL, 1, 0, 1000),
(6, 'main_academic', '#', 'icon-academicmain', '', 1, 0, 1000),
(7, 'main_attendance', '#', 'icon-attendance', NULL, 1, 0, 1000),
(8, 'main_exam', '#', 'icon-exam', NULL, 1, 0, 1000),
(9, 'main_mark', '#', 'icon-markmain', NULL, 1, 0, 1000),
(10, 'conversation', 'conversation', 'fa-envelope', NULL, 1, 0, 1000),
(11, 'media', 'media', 'fa-film', NULL, 1, 0, 1000),
(12, 'mailandsms', 'mailandsms', 'icon-mailandsms', NULL, 1, 0, 1000),
(13, 'main_library', '#', 'icon-library', '', 1, 0, 390),
(14, 'main_transport', '#', 'icon-bus', '', 1, 0, 350),
(15, 'main_hostel', '#', 'icon-hhostel', '', 1, 0, 320),
(16, 'main_account', '#', 'icon-account', '', 1, 0, 280),
(17, 'main_announcement', '#', 'icon-noticemain', '', 1, 0, 230),
(18, 'main_report', '#', 'fa-clipboard', '', 1, 0, 190),
(19, 'visitorinfo', 'visitorinfo', 'icon-visitorinfo', '', 1, 0, 150),
(20, 'main_administrator', '#', 'icon-administrator', '', 1, 0, 140),
(21, 'main_settings', '#', 'fa-gavel', '', 1, 0, 30),
(22, 'classes', 'classes', 'fa-sitemap', NULL, 1, 6, 5000),
(23, 'section', 'section', 'fa-star', '', 1, 6, 4500),
(24, 'subject', 'subject', 'icon-subject', '', 1, 6, 4000),
(25, 'routine', 'routine', 'icon-routine', NULL, 1, 6, 1000),
(26, 'syllabus', 'syllabus', 'icon-syllabus', NULL, 1, 6, 3500),
(27, 'assignment', 'assignment', 'icon-assignment', NULL, 1, 6, 3000),
(28, 'sattendance', 'sattendance', 'icon-sattendance', NULL, 1, 7, 1000),
(29, 'tattendance', 'tattendance', 'icon-tattendance', NULL, 1, 7, 1000),
(30, 'exam', 'exam', 'fa-pencil', NULL, 1, 8, 1000),
(31, 'examschedule', 'examschedule', 'fa-puzzle-piece', NULL, 1, 8, 1000),
(32, 'grade', 'grade', 'fa-signal', NULL, 1, 8, 1000),
(33, 'eattendance', 'eattendance', 'icon-eattendance', NULL, 1, 8, 1000),
(34, 'mark', 'mark', 'fa-flask', NULL, 1, 9, 1000),
(35, 'markpercentage', 'markpercentage', 'icon-markpercentage', NULL, 1, 9, 1000),
(36, 'promotion', 'promotion', 'icon-promotion', NULL, 1, 9, 1000),
(37, 'notice', 'notice', 'fa-calendar', '', 1, 17, 220),
(38, 'event', 'event', 'fa-calendar-check-o', '', 1, 17, 210),
(39, 'holiday', 'holiday', 'icon-holiday', '', 1, 17, 200),
(40, 'classreport', 'classesreport', 'icon-classreport', '', 1, 18, 1000),
(41, 'attendancereport', 'attendancereport', 'icon-attendancereport', '', 1, 18, 940),
(42, 'studentreport', 'studentreport', 'icon-studentreport', '', 1, 18, 990),
(43, 'schoolyear', 'schoolyear', 'fa fa-calendar-plus-o', '', 1, 20, 130),
(44, 'mailandsmstemplate', 'mailandsmstemplate', 'icon-template', '', 1, 20, 100),
(45, 'backup', 'backup', 'fa-download', '', 1, 20, 80),
(46, 'systemadmin', 'systemadmin', 'icon-systemadmin', '', 1, 20, 120),
(47, 'resetpassword', 'resetpassword', 'icon-reset_password', '', 1, 20, 110),
(48, 'permission', 'permission', 'icon-permission', '', 1, 20, 60),
(49, 'usertype', 'usertype', 'icon-role', '', 1, 20, 70),
(50, 'setting', 'setting', 'fa-gears', '', 1, 21, 30),
(51, 'paymentsettings', 'paymentsettings', 'icon-paymentsettings', '', 1, 21, 20),
(52, 'smssettings', 'smssettings', 'fa-wrench', '', 1, 21, 10),
(53, 'invoice', 'invoice', 'icon-invoice', '', 1, 16, 260),
(54, 'paymenthistory', 'paymenthistory', 'icon-payment', '', 1, 16, 250),
(55, 'transport', 'transport', 'icon-sbus', '', 1, 14, 340),
(56, 'member', 'tmember', 'icon-member', '', 1, 14, 330),
(57, 'hostel', 'hostel', 'icon-hostel', '', 1, 15, 310),
(58, 'category', 'category', 'fa-leaf', '', 1, 15, 300),
(59, 'member', 'hmember', 'icon-member', '', 1, 15, 290),
(60, 'feetypes', 'feetypes', 'icon-feetypes', '', 1, 16, 270),
(61, 'expense', 'expense', 'icon-expense', '', 1, 16, 240),
(62, 'member', 'lmember', 'icon-member', '', 1, 13, 380),
(63, 'books', 'book', 'icon-lbooks', '', 1, 13, 370),
(64, 'issue', 'issue', 'icon-issue', '', 1, 13, 360),
(65, 'import', 'bulkimport', 'fa-upload', '', 1, 20, 90),
(66, 'update', 'update', 'fa-refresh', '', 1, 20, 50),
(67, 'main_child', '#', 'fa-child', '', 1, 0, 430),
(68, 'activitiescategory', 'activitiescategory', 'fa-pagelines', '', 1, 67, 420),
(69, 'activities', 'activities', 'fa-fighter-jet', '', 1, 67, 410),
(70, 'childcare', 'childcare', 'fa-wheelchair', '', 1, 67, 400),
(71, 'uattendance', 'uattendance', 'fa-user-secret', NULL, 1, 7, 1000),
(72, 'studentgroup', 'studentgroup', 'fa-object-group', '', 1, 20, 129),
(73, 'vendor', 'vendor', 'fa-rss', '', 1, 92, 1000),
(74, 'location', 'location', 'fa-newspaper-o', '', 1, 92, 1000),
(75, 'asset_category', 'asset_category', 'fa-life-ring', '', 1, 92, 1000),
(76, 'asset', 'asset', 'fa-fax', '', 1, 92, 1000),
(77, 'complain', 'complain', 'fa-commenting', '', 1, 20, 128),
(78, 'question_group', 'question_group', 'fa-question-circle', '', 1, 84, 1000),
(79, 'question_level', 'question_level', 'fa-level-up', '', 1, 84, 1000),
(80, 'question_bank', 'question_bank', 'fa-qrcode', '', 1, 84, 1000),
(81, 'online_exam', 'online_exam', 'fa-slideshare', '', 1, 84, 1000),
(82, 'instruction', 'instruction', 'fa-map-signs', '', 1, 84, 1000),
(83, 'take_exam', 'take_exam', 'fa-user-secret', '', 1, 84, 1000),
(84, 'main_online_exam', '#', 'fa-graduation-cap', '', 1, 0, 1000),
(85, 'certificatereport', 'certificatereport', 'fa-diamond', '', 1, 18, 860),
(86, 'certificate_template', 'certificate_template', 'fa-certificate', '', 1, 20, 128),
(87, 'main_payroll', '#', 'fa-usd', NULL, 1, 0, 1000),
(88, 'salary_template', 'salary_template', 'fa-calculator', '', 1, 87, 1000),
(89, 'hourly_template', 'hourly_template', 'fa fa-clock-o', '', 1, 87, 1000),
(90, 'manage_salary', 'manage_salary', 'fa-beer', '', 1, 87, 1000),
(91, 'make_payment', 'make_payment', 'fa-money', '', 1, 87, 1000),
(92, 'main_asset_management', '#', 'fa-archive', NULL, 1, 0, 1000),
(93, 'asset_assignment', 'asset_assignment', 'fa-plug', '', 1, 92, 1000),
(94, 'purchase', 'purchase', 'fa-cart-plus', '', 1, 92, 1000),
(95, 'main_frontend', '#', 'fa-home', '', 1, 0, 40),
(96, 'pages', 'pages', 'fa-connectdevelop', '', 1, 95, 1000),
(97, 'frontend_setting', 'frontend_setting', 'fa-asterisk', '', 1, 21, 25),
(98, 'routinereport', 'routinereport', 'iniicon-routinereport', '', 1, 18, 960),
(99, 'examschedulereport', 'examschedulereport', 'iniicon-examschedulereport', '', 1, 18, 950),
(100, 'feesreport', 'feesreport', 'iniicon-feesreport', '', 1, 18, 850),
(101, 'duefeesreport', 'duefeesreport', 'iniicon-duefeesreport', '', 1, 18, 840),
(102, 'balancefeesreport', 'balancefeesreport', 'iniicon-balancefeesreport', '', 1, 18, 830),
(103, 'transactionreport', 'transactionreport', 'iniicon-transactionreport', '', 1, 18, 820),
(104, 'sociallink', 'sociallink', 'iniicon-sociallink', '', 1, 20, 109),
(105, 'idcardreport', 'idcardreport', 'iniicon-idcardreport', '', 1, 18, 980),
(106, 'admitcardreport', 'admitcardreport', 'iniicon-admitcardreport', '', 1, 18, 970),
(107, 'studentfinereport', 'studentfinereport', 'iniicon-studentfinereport', '', 1, 18, 810),
(108, 'attendanceoverviewreport', 'attendanceoverviewreport', 'iniicon-attendanceoverviewreport', '', 1, 18, 930),
(109, 'income', 'income', 'iniicon-income', '', 1, 16, 239),
(110, 'global_payment', 'global_payment', 'fa-balance-scale', '', 1, 16, 238),
(111, 'terminalreport', 'terminalreport', 'iniicon-terminalreport', '', 1, 18, 920),
(112, 'tabulationsheetreport', 'tabulationsheetreport', 'iniicon-tabulationsheetreport', '', 1, 18, 900),
(113, 'marksheetreport', 'marksheetreport', 'iniicon-marksheetreport', '', 1, 18, 890),
(114, 'meritstagereport', 'meritstagereport', 'iniicon-meritstagereport', '', 1, 18, 910),
(115, 'progresscardreport', 'progresscardreport', 'iniicon-progresscardreport', '', 1, 18, 880),
(116, 'onlineexamreport', 'onlineexamreport', 'iniicon-onlineexamreport', '', 1, 18, 870),
(117, 'main_inventory', '#', 'iniicon-maininventory', '', 1, 0, 1000),
(118, 'productcategory', 'productcategory', 'iniicon-productcategory', '', 1, 117, 1000),
(119, 'product', 'product', 'iniicon-product', '', 1, 117, 1000),
(120, 'productwarehouse', 'productwarehouse', 'iniicon-productwarehouse', '', 1, 117, 1000),
(121, 'productsupplier', 'productsupplier', 'iniicon-productsupplier', '', 1, 117, 1000),
(122, 'productpurchase', 'productpurchase', 'iniicon-productpurchase', '', 1, 117, 1000),
(123, 'productsale', 'productsale', 'iniicon-productsale', '', 1, 117, 1000),
(124, 'main_leaveapplication', '#', 'iniicon-mainleaveapplication', '', 1, 0, 1000),
(125, 'leavecategory', 'leavecategory', 'iniicon-leavecategory', '', 1, 124, 1000),
(126, 'leaveassign', 'leaveassign', 'iniicon-leaveassign', '', 1, 124, 1000),
(127, 'leaveapply', 'leaveapply', 'iniicon-leaveapply', '', 1, 124, 1000),
(128, 'leaveapplication', 'leaveapplication', 'iniicon-leaveapplication', '', 1, 124, 1000),
(129, 'librarybooksreport', 'librarybooksreport', 'iniicon-librarybooksreport', '', 1, 18, 925),
(130, 'searchpaymentfeesreport', 'searchpaymentfeesreport', 'iniicon-searchpaymentfeesreport', '', 1, 18, 852),
(131, 'salaryreport', 'salaryreport', 'iniicon-salaryreport', '', 1, 18, 805),
(132, 'productpurchasereport', 'productpurchasereport', 'iniicon-productpurchasereport', '', 1, 18, 854),
(133, 'productsalereport', 'productsalereport', 'iniicon-productsalereport', '', 1, 18, 853),
(134, 'leaveapplicationreport', 'leaveapplicationreport', 'iniicon-leaveapplicationreport', '', 1, 18, 855),
(135, 'posts', 'posts', 'fa-thumb-tack', '', 1, 95, 1005),
(136, 'posts_categories', 'posts_categories', 'fa-anchor', '', 1, 95, 1010),
(137, 'menu', 'frontendmenu', 'iniicon-fmenu', '', 1, 95, 1000),
(138, 'librarycardreport', 'librarycardreport', 'iniicon-librarycardreport', '', 1, 18, 924),
(139, 'librarybookissuereport', 'librarybookissuereport', 'iniicon-librarybookissuereport', '', 1, 18, 923),
(140, 'onlineexamquestionreport', 'onlineexamquestionreport', 'iniicon-onlineexamquestionreport', '', 1, 18, 865),
(141, 'ebooks', 'ebooks', 'iniicon-ebook', '', 1, 13, 350),
(142, 'accountledgerreport', 'accountledgerreport', 'iniicon-accountledgerreport', '', 1, 18, 800),
(143, 'onlineadmission', 'onlineadmission', 'iniicon-onlineadmission', '', 1, 0, 160),
(144, 'emailsetting', 'emailsetting', 'iniicon-ini-emailsetting', '', 1, 21, 5),
(145, 'onlineadmissionreport', 'onlineadmissionreport', 'iniicon-onlineadmissionreport', '', 1, 18, 863),
(146, 'marksetting', 'marksetting', 'fa-futbol-o', '', 1, 21, 4),
(147, 'studentsessionreport', 'studentsessionreport', 'fa-recycle', '', 1, 18, 876),
(148, 'overtime', 'overtime', 'fa-retweet', '', 1, 87, 1000),
(149, 'overtimereport', 'overtimereport', 'fa-gg-circle', NULL, 1, 18, 808),
(150, 'addons', 'addons', 'fa-crosshairs', '', 1, 20, 55),
(151, 'main_sponsorship', '#', 'fa-gg-circle', '', 1, 0, 300),
(152, 'candidate', 'candidate', 'fa-odnoklassniki', NULL, 1, 151, 1000),
(153, 'sponsor', 'sponsor', 'fa-odnoklassniki', '', 1, 151, 1000),
(154, 'sponsorship', 'sponsorship', 'fa fa-gg', '', 1, 151, 1000),
(155, 'sponsorshipreport', 'sponsorshipreport', 'fa fa-safari', '', 1, 18, 995),
(156, 'onlineexamquestionanswerreport', 'onlineexamquestionanswerreport', 'fa-sticky-note-o', '', 1, 18, 864);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `noticeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `notice` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineadmission`
--

DROP TABLE IF EXISTS `onlineadmission`;
CREATE TABLE IF NOT EXISTS `onlineadmission` (
  `onlineadmissionID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` varchar(200) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `document` varchar(200) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `studentID` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0' COMMENT '0 = New, 1=Approved, 2 = Waiting, 3 = Declined',
  PRIMARY KEY (`onlineadmissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

DROP TABLE IF EXISTS `online_exam`;
CREATE TABLE IF NOT EXISTS `online_exam` (
  `onlineExamID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  `description` text,
  `classID` int(11) DEFAULT '0',
  `sectionID` int(11) DEFAULT '0',
  `studentGroupID` int(11) DEFAULT '0',
  `subjectID` int(11) DEFAULT '0',
  `userTypeID` int(11) DEFAULT '0',
  `instructionID` int(11) DEFAULT '0',
  `examStatus` varchar(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `startDateTime` datetime DEFAULT NULL,
  `endDateTime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `random` int(11) DEFAULT '0',
  `public` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `markType` int(11) NOT NULL,
  `negativeMark` int(11) DEFAULT '0',
  `bonusMark` int(11) DEFAULT '0',
  `point` int(11) DEFAULT '0',
  `percentage` int(11) DEFAULT '0',
  `showMarkAfterExam` int(11) DEFAULT '0',
  `judge` int(11) DEFAULT '1' COMMENT 'Auto Judge = 1, Manually Judge = 0',
  `paid` int(11) DEFAULT '0' COMMENT '0 = Unpaid, 1 = Paid',
  `validDays` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `img` varchar(512) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY (`onlineExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_question`
--

DROP TABLE IF EXISTS `online_exam_question`;
CREATE TABLE IF NOT EXISTS `online_exam_question` (
  `onlineExamQuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamID` int(11) NOT NULL,
  `questionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`onlineExamQuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_type`
--

DROP TABLE IF EXISTS `online_exam_type`;
CREATE TABLE IF NOT EXISTS `online_exam_type` (
  `onlineExamTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`onlineExamTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online_exam_type`
--

INSERT INTO `online_exam_type` (`onlineExamTypeID`, `title`, `examTypeNumber`, `status`) VALUES
(1, 'Date , Time and Duration', 5, 1),
(2, 'Date and Duration', 4, 1),
(3, 'Only Date', 3, 0),
(4, 'Only Duration', 2, 1),
(5, 'None', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_answer`
--

DROP TABLE IF EXISTS `online_exam_user_answer`;
CREATE TABLE IF NOT EXISTS `online_exam_user_answer` (
  `onlineExamUserAnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamQuestionID` int(11) NOT NULL,
  `onlineExamRegisteredUserID` int(11) DEFAULT NULL,
  `onlineExamID` int(11) NOT NULL,
  `examtimeID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`onlineExamUserAnswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_answer_option`
--

DROP TABLE IF EXISTS `online_exam_user_answer_option`;
CREATE TABLE IF NOT EXISTS `online_exam_user_answer_option` (
  `onlineExamUserAnswerOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeID` int(11) NOT NULL,
  `text` text,
  `time` datetime NOT NULL,
  `onlineExamID` int(11) NOT NULL,
  `examtimeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`onlineExamUserAnswerOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_user_status`
--

DROP TABLE IF EXISTS `online_exam_user_status`;
CREATE TABLE IF NOT EXISTS `online_exam_user_status` (
  `onlineExamUserStatus` int(11) NOT NULL AUTO_INCREMENT,
  `onlineExamID` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `totalQuestion` int(11) NOT NULL,
  `totalAnswer` int(11) NOT NULL,
  `nagetiveMark` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `classesID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `examtimeID` int(11) DEFAULT NULL,
  `totalCurrectAnswer` int(11) DEFAULT NULL,
  `totalMark` varchar(40) DEFAULT NULL,
  `totalObtainedMark` int(11) DEFAULT NULL,
  `totalPercentage` double DEFAULT NULL,
  `statusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`onlineExamUserStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
CREATE TABLE IF NOT EXISTS `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `hours` int(11) NOT NULL,
  `amount` double NOT NULL,
  `total_amount` double DEFAULT '0',
  `userID` int(11) NOT NULL,
  `user_table` varchar(40) NOT NULL DEFAULT 'ABCD',
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `pagesID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `pageorder` int(11) NOT NULL DEFAULT '0',
  `template` varchar(250) DEFAULT NULL,
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(60) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pagesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `parentsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `father_name` varchar(60) NOT NULL,
  `mother_name` varchar(60) NOT NULL,
  `father_profession` varchar(40) NOT NULL,
  `mother_profession` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`parentsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `paymentamount` double DEFAULT NULL,
  `paymenttype` varchar(128) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentday` varchar(11) NOT NULL,
  `paymentmonth` varchar(10) NOT NULL,
  `paymentyear` year(4) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `transactionID` text,
  `globalpaymentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=894 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permissionID`, `description`, `name`, `active`) VALUES
(501, 'Dashboard', 'dashboard', 'yes'),
(502, 'Student', 'student', 'yes'),
(503, 'Student Add', 'student_add', 'yes'),
(504, 'Student Edit', 'student_edit', 'yes'),
(505, 'Student Delete', 'student_delete', 'yes'),
(506, 'Student View', 'student_view', 'yes'),
(507, 'Parents', 'parents', 'yes'),
(508, 'Parents Add', 'parents_add', 'yes'),
(509, 'Parents Edit', 'parents_edit', 'yes'),
(510, 'Parents Delete', 'parents_delete', 'yes'),
(511, 'Parents View', 'parents_view', 'yes'),
(512, 'Teacher', 'teacher', 'yes'),
(513, 'Teacher Add', 'teacher_add', 'yes'),
(514, 'Teacher Edit', 'teacher_edit', 'yes'),
(515, 'Teacher Delete', 'teacher_delete', 'yes'),
(516, 'Teacher View', 'teacher_view', 'yes'),
(517, 'User', 'user', 'yes'),
(518, 'User Add', 'user_add', 'yes'),
(519, 'User Edit', 'user_edit', 'yes'),
(520, 'User Delete', 'user_delete', 'yes'),
(521, 'User View', 'user_view', 'yes'),
(522, 'Class', 'classes', 'yes'),
(523, 'Class Add', 'classes_add', 'yes'),
(524, 'Class Edit', 'classes_edit', 'yes'),
(525, 'Class Delete', 'classes_delete', 'yes'),
(526, 'Section', 'section', 'yes'),
(527, 'Section Add', 'section_add', 'yes'),
(528, 'Section Edit', 'section_edit', 'yes'),
(529, 'Semester Delete', 'semester_delete', 'yes'),
(530, 'Section Delete', 'section_delete', 'yes'),
(531, 'Subject', 'subject', 'yes'),
(532, 'Subject Add', 'subject_add', 'yes'),
(533, 'Subject Edit', 'subject_edit', 'yes'),
(534, 'Subject Delete', 'subject_delete', 'yes'),
(535, 'Syllabus', 'syllabus', 'yes'),
(536, 'Syllabus Add', 'syllabus_add', 'yes'),
(537, 'Syllabus Edit', 'syllabus_edit', 'yes'),
(538, 'Syllabus Delete', 'syllabus_delete', 'yes'),
(539, 'Assignment', 'assignment', 'yes'),
(540, 'Assignment Add', 'assignment_add', 'yes'),
(541, 'Assignment Edit', 'assignment_edit', 'yes'),
(542, 'Assignment Delete', 'assignment_delete', 'yes'),
(543, 'Assignment View', 'assignment_view', 'yes'),
(544, 'Routine', 'routine', 'yes'),
(545, 'Routine Add', 'routine_add', 'yes'),
(546, 'Routine Edit', 'routine_edit', 'yes'),
(547, 'Routine Delete', 'routine_delete', 'yes'),
(548, 'Student Attendance', 'sattendance', 'yes'),
(549, 'Student Attendance Add', 'sattendance_add', 'yes'),
(550, 'Student Attendance View', 'sattendance_view', 'yes'),
(551, 'Teacher Attendance', 'tattendance', 'yes'),
(552, 'Teacher Attendance Add', 'tattendance_add', 'yes'),
(553, 'Teacher Attendance View', 'tattendance_view', 'yes'),
(554, 'User Attendance', 'uattendance', 'yes'),
(555, 'User Attendance Add', 'uattendance_add', 'yes'),
(556, 'User Attendance View', 'uattendance_view', 'yes'),
(557, 'Exam', 'exam', 'yes'),
(558, 'Exam Add', 'exam_add', 'yes'),
(559, 'Exam Edit', 'exam_edit', 'yes'),
(560, 'Exam Delete', 'exam_delete', 'yes'),
(561, 'Examschedule', 'examschedule', 'yes'),
(562, 'Examschedule Add', 'examschedule_add', 'yes'),
(563, 'Examschedule Edit', 'examschedule_edit', 'yes'),
(564, 'Examschedule Delete', 'examschedule_delete', 'yes'),
(565, 'Grade', 'grade', 'yes'),
(566, 'Grade Add', 'grade_add', 'yes'),
(567, 'Grade Edit', 'grade_edit', 'yes'),
(568, 'Grade Delete', 'grade_delete', 'yes'),
(569, 'Exam Attendance', 'eattendance', 'yes'),
(570, 'Exam Attendance Add', 'eattendance_add', 'yes'),
(571, 'Mark', 'mark', 'yes'),
(572, 'Mark Add', 'mark_add', 'yes'),
(573, 'Mark View', 'mark_view', 'yes'),
(574, 'Mark Distribution', 'markpercentage', 'yes'),
(575, 'Mark Distribution Add', 'markpercentage_add', 'yes'),
(576, 'Mark Distribution Edit', 'markpercentage_edit', 'yes'),
(577, 'Mark Distribution Delete', 'markpercentage_delete', 'yes'),
(578, 'Promotion', 'promotion', 'yes'),
(579, 'Message', 'conversation', 'yes'),
(580, 'Media', 'media', 'yes'),
(581, 'Media Add', 'media_add', 'yes'),
(582, 'Media Delete', 'media_delete', 'yes'),
(583, 'Mail / SMS', 'mailandsms', 'yes'),
(584, 'Mail / SMS Add', 'mailandsms_add', 'yes'),
(585, 'Mail / SMS View', 'mailandsms_view', 'yes'),
(586, 'Question Group', 'question_group', 'yes'),
(587, 'Question Group Add', 'question_group_add', 'yes'),
(588, 'Question Group Edit', 'question_group_edit', 'yes'),
(589, 'Question Group Delete', 'question_group_delete', 'yes'),
(590, 'Question Level', 'question_level', 'yes'),
(591, 'Question Level Add', 'question_level_add', 'yes'),
(592, 'Question Level Edit', 'question_level_edit', 'yes'),
(593, 'Question Level Delete', 'question_level_delete', 'yes'),
(594, 'Question Bank', 'question_bank', 'yes'),
(595, 'Question Bank Add', 'question_bank_add', 'yes'),
(596, 'Question Bank Edit', 'question_bank_edit', 'yes'),
(597, 'Question Bank Delete', 'question_bank_delete', 'yes'),
(598, 'Question Bank View', 'question_bank_view', 'yes'),
(599, 'Online Exam', 'online_exam', 'yes'),
(600, 'Online Exam Add', 'online_exam_add', 'yes'),
(601, 'Online Exam Edit', 'online_exam_edit', 'yes'),
(602, 'Online Exam Delete', 'online_exam_delete', 'yes'),
(603, 'Instruction', 'instruction', 'yes'),
(604, 'Instruction Add', 'instruction_add', 'yes'),
(605, 'Instruction Edit', 'instruction_edit', 'yes'),
(606, 'Instruction Delete', 'instruction_delete', 'yes'),
(607, 'Instruction View', 'instruction_view', 'yes'),
(608, 'Salary Template', 'salary_template', 'yes'),
(609, 'Salary Template Add', 'salary_template_add', 'yes'),
(610, 'Salary Template Edit', 'salary_template_edit', 'yes'),
(611, 'Salary Template Delete', 'salary_template_delete', 'yes'),
(612, 'Salary Template View', 'salary_template_view', 'yes'),
(613, 'Hourly Template', 'hourly_template', 'yes'),
(614, 'Hourly Template Add', 'hourly_template_add', 'yes'),
(615, 'Hourly Template Edit', 'hourly_template_edit', 'yes'),
(616, 'Hourly Template Delete', 'hourly_template_delete', 'yes'),
(617, 'Manage Salary', 'manage_salary', 'yes'),
(618, 'Manage Salary Add', 'manage_salary_add', 'yes'),
(619, 'Manage Salary Edit', 'manage_salary_edit', 'yes'),
(620, 'Manage Salary Delete', 'manage_salary_delete', 'yes'),
(621, 'Manage Salary View', 'manage_salary_view', 'yes'),
(622, 'Make Payment', 'make_payment', 'yes'),
(623, 'Overtime', 'overtime', 'yes'),
(624, 'Overtime Add', 'overtime_add', 'yes'),
(625, 'Overtime Edit', 'overtime_edit', 'yes'),
(626, 'Overtime Delete', 'overtime_delete', 'yes'),
(627, 'Vendor', 'vendor', 'yes'),
(628, 'Vendor Add', 'vendor_add', 'yes'),
(629, 'Vendor Edit', 'vendor_edit', 'yes'),
(630, 'Vendor Delete', 'vendor_delete', 'yes'),
(631, 'Location', 'location', 'yes'),
(632, 'Location Add', 'location_add', 'yes'),
(633, 'Location Edit', 'location_edit', 'yes'),
(634, 'Location Delete', 'location_delete', 'yes'),
(635, 'Asset Category', 'asset_category', 'yes'),
(636, 'Asset Category Add', 'asset_category_add', 'yes'),
(637, 'Asset Category Edit', 'asset_category_edit', 'yes'),
(638, 'Asset Category Delete', 'asset_category_delete', 'yes'),
(639, 'Asset', 'asset', 'yes'),
(640, 'Asset Add', 'asset_add', 'yes'),
(641, 'Asset Edit', 'asset_edit', 'yes'),
(642, 'Asset Delete', 'asset_delete', 'yes'),
(643, 'Asset View', 'asset_view', 'yes'),
(644, 'Asset Assignment', 'asset_assignment', 'yes'),
(645, 'Asset Assignment Add', 'asset_assignment_add', 'yes'),
(646, 'Asset Assignment Edit', 'asset_assignment_edit', 'yes'),
(647, 'Asset Assignment Delete', 'asset_assignment_delete', 'yes'),
(648, 'Asset Assignment View', 'asset_assignment_view', 'yes'),
(649, 'Purchase', 'purchase', 'yes'),
(650, 'Purchase Add', 'purchase_add', 'yes'),
(651, 'Purchase Edit', 'purchase_edit', 'yes'),
(652, 'Purchase Delete', 'purchase_delete', 'yes'),
(653, 'Product Category', 'productcategory', 'yes'),
(654, 'Product Category Add', 'productcategory_add', 'yes'),
(655, 'Product Category Edit', 'productcategory_edit', 'yes'),
(656, 'Product Category Delete', 'productcategory_delete', 'yes'),
(657, 'Product', 'product', 'yes'),
(658, 'Product Add', 'product_add', 'yes'),
(659, 'Product Edit', 'product_edit', 'yes'),
(660, 'Product Delete', 'product_delete', 'yes'),
(661, 'Warehouse', 'productwarehouse', 'yes'),
(662, 'Warehouse Add', 'productwarehouse_add', 'yes'),
(663, 'Warehouse Edit', 'productwarehouse_edit', 'yes'),
(664, 'Warehouse Delete', 'productwarehouse_delete', 'yes'),
(665, 'Supplier', 'productsupplier', 'yes'),
(666, 'Supplier Add', 'productsupplier_add', 'yes'),
(667, 'Supplier Edit', 'productsupplier_edit', 'yes'),
(668, 'Supplier Delete', 'productsupplier_delete', 'yes'),
(669, 'Purchase', 'productpurchase', 'yes'),
(670, 'Purchase Add', 'productpurchase_add', 'yes'),
(671, 'Purchase Edit', 'productpurchase_edit', 'yes'),
(672, 'Purchase Delete', 'productpurchase_delete', 'yes'),
(673, 'Purchase View', 'productpurchase_view', 'yes'),
(674, 'Sale', 'productsale', 'yes'),
(675, 'Sale Add', 'productsale_add', 'yes'),
(676, 'Sale Edit', 'productsale_edit', 'yes'),
(677, 'Sale Delete', 'productsale_delete', 'yes'),
(678, 'Sale View', 'productsale_view', 'yes'),
(679, 'Leave Category', 'leavecategory', 'yes'),
(680, 'Leave Category Add', 'leavecategory_add', 'yes'),
(681, 'Leave Category Edit', 'leavecategory_edit', 'yes'),
(682, 'Leave Category Delete', 'leavecategory_delete', 'yes'),
(683, 'Leave Assign', 'leaveassign', 'yes'),
(684, 'Leave Assign Add', 'leaveassign_add', 'yes'),
(685, 'Leave Assign Edit', 'leaveassign_edit', 'yes'),
(686, 'Leave Assign Delete', 'leaveassign_delete', 'yes'),
(687, 'Leave Apply', 'leaveapply', 'yes'),
(688, 'Leave Apply Add', 'leaveapply_add', 'yes'),
(689, 'Leave Apply Edit', 'leaveapply_edit', 'yes'),
(690, 'Leave Apply Delete', 'leaveapply_delete', 'yes'),
(691, 'Leave Apply View', 'leaveapply_view', 'yes'),
(692, 'Leave Application', 'leaveapplication', 'yes'),
(693, 'Activities Category', 'activitiescategory', 'yes'),
(694, 'Activities Category Add', 'activitiescategory_add', 'yes'),
(695, 'Activities Category Edit', 'activitiescategory_edit', 'yes'),
(696, 'Activities Category Delete', 'activitiescategory_delete', 'yes'),
(697, 'Activities', 'activities', 'yes'),
(698, 'Activities Add', 'activities_add', 'yes'),
(699, 'Activities Delete', 'activities_delete', 'yes'),
(700, 'Child Care', 'childcare', 'yes'),
(701, 'Child Care Add', 'childcare_add', 'yes'),
(702, 'Child Care Edit', 'childcare_edit', 'yes'),
(703, 'Child Care Delete', 'childcare_delete', 'yes'),
(704, 'Library Member', 'lmember', 'yes'),
(705, 'Library Member Add', 'lmember_add', 'yes'),
(706, 'Library Member Edit', 'lmember_edit', 'yes'),
(707, 'Library Member Delete', 'lmember_delete', 'yes'),
(708, 'Library Member View', 'lmember_view', 'yes'),
(709, 'Books', 'book', 'yes'),
(710, 'Books Add', 'book_add', 'yes'),
(711, 'Books Edit', 'book_edit', 'yes'),
(712, 'Books Delete', 'book_delete', 'yes'),
(713, 'Issue Book', 'issue', 'yes'),
(714, 'Issue Book Add', 'issue_add', 'yes'),
(715, 'Issue Book Edit', 'issue_edit', 'yes'),
(716, 'Issue Book View', 'issue_view', 'yes'),
(717, 'E-Books', 'ebooks', 'yes'),
(718, 'E-Books Add', 'ebooks_add', 'yes'),
(719, 'E-Books Edit', 'ebooks_edit', 'yes'),
(720, 'E-Books Delete', 'ebooks_delete', 'yes'),
(721, 'E-Books View', 'ebooks_view', 'yes'),
(722, 'Transport', 'transport', 'yes'),
(723, 'Transport Add', 'transport_add', 'yes'),
(724, 'Transport Edit', 'transport_edit', 'yes'),
(725, 'Transport Delete', 'transport_delete', 'yes'),
(726, 'Transport Member', 'tmember', 'yes'),
(727, 'Transport Member Add', 'tmember_add', 'yes'),
(728, 'Transport Member Edit', 'tmember_edit', 'yes'),
(729, 'Transport Member Delete', 'tmember_delete', 'yes'),
(730, 'Transport Member View', 'tmember_view', 'yes'),
(731, 'Hostel', 'hostel', 'yes'),
(732, 'Hostel Add', 'hostel_add', 'yes'),
(733, 'Hostel Edit', 'hostel_edit', 'yes'),
(734, 'Hostel Delete', 'hostel_delete', 'yes'),
(735, 'Hostel Category', 'category', 'yes'),
(736, 'Hostel Category Add', 'category_add', 'yes'),
(737, 'Hostel Category Edit', 'category_edit', 'yes'),
(738, 'Hostel Category Delete', 'category_delete', 'yes'),
(739, 'Hostel Member', 'hmember', 'yes'),
(740, 'Hostel Member Add', 'hmember_add', 'yes'),
(741, 'Hostel Member Edit', 'hmember_edit', 'yes'),
(742, 'Hostel Member Delete', 'hmember_delete', 'yes'),
(743, 'Hostel Member View', 'hmember_view', 'yes'),
(744, 'Fee Types', 'feetypes', 'yes'),
(745, 'Fee Types Add', 'feetypes_add', 'yes'),
(746, 'Fee Types Edit', 'feetypes_edit', 'yes'),
(747, 'Fee Types Delete', 'feetypes_delete', 'yes'),
(748, 'Invoice', 'invoice', 'yes'),
(749, 'Invoice Add', 'invoice_add', 'yes'),
(750, 'Invoice Edit', 'invoice_edit', 'yes'),
(751, 'Invoice Delete', 'invoice_delete', 'yes'),
(752, 'Invoice View', 'invoice_view', 'yes'),
(753, 'Payment History', 'paymenthistory', 'yes'),
(754, 'Payment History Edit', 'paymenthistory_edit', 'yes'),
(755, 'Payment History Delete', 'paymenthistory_delete', 'yes'),
(756, 'Expense', 'expense', 'yes'),
(757, 'Expense Add', 'expense_add', 'yes'),
(758, 'Expense Edit', 'expense_edit', 'yes'),
(759, 'Expense Delete', 'expense_delete', 'yes'),
(760, 'Income', 'income', 'yes'),
(761, 'Income Add', 'income_add', 'yes'),
(762, 'Income Edit', 'income_edit', 'yes'),
(763, 'Income Delete', 'income_delete', 'yes'),
(764, 'Global Payment', 'global_payment', 'yes'),
(765, 'Notice', 'notice', 'yes'),
(766, 'Notice Add', 'notice_add', 'yes'),
(767, 'Notice Edit', 'notice_edit', 'yes'),
(768, 'Notice Delete', 'notice_delete', 'yes'),
(769, 'Notice View', 'notice_view', 'yes'),
(770, 'Event', 'event', 'yes'),
(771, 'Event Add', 'event_add', 'yes'),
(772, 'Event Edit', 'event_edit', 'yes'),
(773, 'Event Delete', 'event_delete', 'yes'),
(774, 'Event View', 'event_view', 'yes'),
(775, 'Holiday', 'holiday', 'yes'),
(776, 'Holiday Add', 'holiday_add', 'yes'),
(777, 'Holiday Edit', 'holiday_edit', 'yes'),
(778, 'Holiday Delete', 'holiday_delete', 'yes'),
(779, 'Holiday View', 'holiday_view', 'yes'),
(780, 'Classes Report', 'classesreport', 'yes'),
(781, 'Student Report', 'studentreport', 'yes'),
(782, 'ID Card Report', 'idcardreport', 'yes'),
(783, 'Admit Card Report', 'admitcardreport', 'yes'),
(784, 'Routine Report', 'routinereport', 'yes'),
(785, 'Exam Schedule Report', 'examschedulereport', 'yes'),
(786, 'Attendance Report', 'attendancereport', 'yes'),
(787, 'Attendance Overview Report', 'attendanceoverviewreport', 'yes'),
(788, 'Library Books Report', 'librarybooksreport', 'yes'),
(789, 'Library Card Report', 'librarycardreport', 'yes'),
(790, 'Library Book Issue Report', 'librarybookissuereport', 'yes'),
(791, 'Terminal Report', 'terminalreport', 'yes'),
(792, 'Merit Stage Report', 'meritstagereport', 'yes'),
(793, 'Tabulation Sheet Report', 'tabulationsheetreport', 'yes'),
(794, 'Mark Sheet Report', 'marksheetreport', 'yes'),
(795, 'Progress Card Report', 'progresscardreport', 'yes'),
(796, 'Student Session Report', 'studentsessionreport', 'yes'),
(797, 'Online Exam Report', 'onlineexamreport', 'yes'),
(798, 'Online Exam Question Report', 'onlineexamquestionreport', 'yes'),
(799, 'Online Admission Report', 'onlineadmissionreport', 'yes'),
(800, 'Certificate Report', 'certificatereport', 'yes'),
(801, 'Leave Application Report', 'leaveapplicationreport', 'yes'),
(802, 'Product Purchase Report', 'productpurchasereport', 'yes'),
(803, 'Product Sale Report', 'productsalereport', 'yes'),
(804, 'Search Payment Fees Report', 'searchpaymentfeesreport', 'yes'),
(805, 'Fees Report', 'feesreport', 'yes'),
(806, 'Due Fees Report', 'duefeesreport', 'yes'),
(807, 'Balance Fees Report', 'balancefeesreport', 'yes'),
(808, 'Transaction', 'transactionreport', 'yes'),
(809, 'Student Fine Report', 'studentfinereport', 'yes'),
(810, 'Overtime Report', 'overtimereport', 'yes'),
(811, 'Salary Report', 'salaryreport', 'yes'),
(812, 'Account Ledger Report', 'accountledgerreport', 'yes'),
(813, 'Online Admission', 'onlineadmission', 'yes'),
(814, 'Visitor Information', 'visitorinfo', 'yes'),
(815, 'Visitor Information Delete', 'visitorinfo_delete', 'yes'),
(816, 'Visitor Infomation View', 'visitorinfo_view', 'yes'),
(817, 'Academic Year', 'schoolyear', 'yes'),
(818, 'Academic Year Add', 'schoolyear_add', 'yes'),
(819, 'Academic Year Edit', 'schoolyear_edit', 'yes'),
(820, 'Academic Year Delete', 'schoolyear_delete', 'yes'),
(821, 'Student Group', 'studentgroup', 'yes'),
(822, 'Student Group Add', 'studentgroup_add', 'yes'),
(823, 'Student Group Edit', 'studentgroup_edit', 'yes'),
(824, 'Student Group Delete', 'studentgroup_delete', 'yes'),
(825, 'Complain', 'complain', 'yes'),
(826, 'Complain Add', 'complain_add', 'yes'),
(827, 'Complain Edit', 'complain_edit', 'yes'),
(828, 'Complain Delete', 'complain_delete', 'yes'),
(829, 'Complain View', 'complain_view', 'yes'),
(830, 'Certificate Template', 'certificate_template', 'yes'),
(831, 'Certificate Template Add', 'certificate_template_add', 'yes'),
(832, 'Certificate Template Edit', 'certificate_template_edit', 'yes'),
(833, 'Certificate Template Delete', 'certificate_template_delete', 'yes'),
(834, 'Certificate Template View', 'certificate_template_view', 'yes'),
(835, 'System Admin', 'systemadmin', 'yes'),
(836, 'System Admin Add', 'systemadmin_add', 'yes'),
(837, 'System Admin Edit', 'systemadmin_edit', 'yes'),
(838, 'System Admin Delete', 'systemadmin_delete', 'yes'),
(839, 'System Admin View', 'systemadmin_view', 'yes'),
(840, 'Reset Password', 'resetpassword', 'yes'),
(841, 'Social Link', 'sociallink', 'yes'),
(842, 'Social Link Add', 'sociallink_add', 'yes'),
(843, 'Social Link Edit', 'sociallink_edit', 'yes'),
(844, 'Social Link Delete', 'sociallink_delete', 'yes'),
(845, 'Mail / SMS Template', 'mailandsmstemplate', 'yes'),
(846, 'Mail / SMS Template Add', 'mailandsmstemplate_add', 'yes'),
(847, 'Mail / SMS Template Edit', 'mailandsmstemplate_edit', 'yes'),
(848, 'Mail / SMS Template Delete', 'mailandsmstemplate_delete', 'yes'),
(849, 'Mail / SMS Template View', 'mailandsmstemplate_view', 'yes'),
(850, 'Import', 'bulkimport ', 'yes'),
(851, 'Backup', 'backup', 'yes'),
(852, 'Role', 'usertype', 'yes'),
(853, 'Role Add', 'usertype_add', 'yes'),
(854, 'Role Edit', 'usertype_edit', 'yes'),
(855, 'Role Delete', 'usertype_delete', 'yes'),
(856, 'Permission', 'permission', 'yes'),
(857, 'Addons', 'addons', 'yes'),
(858, 'Auto Update', 'update', 'yes'),
(859, 'Posts Categories', 'posts_categories', 'yes'),
(860, 'Posts Categories Add', 'posts_categories_add', 'yes'),
(861, 'Posts Categories Edit', 'posts_categories_edit', 'yes'),
(862, 'Posts Categories Delete', 'posts_categories_delete', 'yes'),
(863, 'Posts', 'posts', 'yes'),
(864, 'Posts Add', 'posts_add', 'yes'),
(865, 'Posts Edit', 'posts_edit', 'yes'),
(866, 'Posts Delete', 'posts_delete', 'yes'),
(867, 'Pages', 'pages', 'yes'),
(868, 'Pages Add', 'pages_add', 'yes'),
(869, 'Pages Edit', 'pages_edit', 'yes'),
(870, 'Pages Delete', 'pages_delete', 'yes'),
(871, 'Menu', 'frontendmenu', 'yes'),
(872, 'General Setting', 'setting', 'yes'),
(873, 'Frontend Setting', 'frontend_setting', 'yes'),
(874, 'Payment Settings', 'paymentsettings', 'yes'),
(875, 'SMS Settings', 'smssettings', 'yes'),
(876, 'Email Setting', 'emailsetting', 'yes'),
(877, 'Mark Settings', 'marksetting', 'yes'),
(878, 'Candidate', 'candidate', 'yes'),
(879, 'Candidate Add', 'candidate_add', 'yes'),
(880, 'Candidate Edit', 'candidate_edit', 'yes'),
(881, 'Candidate Delete', 'candidate_delete', 'yes'),
(882, 'Candidate View', 'candidate_view', 'yes'),
(883, 'Sponsor', 'sponsor', 'yes'),
(884, 'Sponsor Add', 'sponsor_add', 'yes'),
(885, 'Sponsor Edit', 'sponsor_edit', 'yes'),
(886, 'Sponsor Delete', 'sponsor_delete', 'yes'),
(887, 'Sponsor View', 'sponsor_view', 'yes'),
(888, 'Sponsorship', 'sponsorship', 'yes'),
(889, 'Sponsorship Add', 'sponsorship_add', 'yes'),
(890, 'Sponsorship Edit', 'sponsorship_edit', 'yes'),
(891, 'Sponsorship Delete', 'sponsorship_delete', 'yes'),
(892, 'Sponsorship Report', 'sponsorshipreport', 'yes'),
(893, 'Online Exam Question Answer Report', 'onlineexamquestionanswerreport', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `permission_relationships`
--

DROP TABLE IF EXISTS `permission_relationships`;
CREATE TABLE IF NOT EXISTS `permission_relationships` (
  `permission_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_relationships`
--

INSERT INTO `permission_relationships` (`permission_id`, `usertype_id`) VALUES
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(715, 1),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(730, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(762, 1),
(763, 1),
(764, 1),
(765, 1),
(766, 1),
(767, 1),
(768, 1),
(769, 1),
(770, 1),
(771, 1),
(772, 1),
(773, 1),
(774, 1),
(775, 1),
(776, 1),
(777, 1),
(778, 1),
(779, 1),
(780, 1),
(781, 1),
(782, 1),
(783, 1),
(784, 1),
(785, 1),
(786, 1),
(787, 1),
(788, 1),
(789, 1),
(790, 1),
(791, 1),
(792, 1),
(793, 1),
(794, 1),
(795, 1),
(796, 1),
(797, 1),
(798, 1),
(799, 1),
(800, 1),
(801, 1),
(802, 1),
(803, 1),
(804, 1),
(805, 1),
(806, 1),
(807, 1),
(808, 1),
(809, 1),
(810, 1),
(811, 1),
(812, 1),
(813, 1),
(814, 1),
(815, 1),
(816, 1),
(817, 1),
(818, 1),
(819, 1),
(820, 1),
(821, 1),
(822, 1),
(823, 1),
(824, 1),
(825, 1),
(826, 1),
(827, 1),
(828, 1),
(829, 1),
(830, 1),
(831, 1),
(832, 1),
(833, 1),
(834, 1),
(835, 1),
(836, 1),
(837, 1),
(838, 1),
(839, 1),
(840, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 1),
(845, 1),
(846, 1),
(847, 1),
(848, 1),
(849, 1),
(850, 1),
(851, 1),
(852, 1),
(853, 1),
(854, 1),
(855, 1),
(856, 1),
(857, 1),
(858, 1),
(859, 1),
(860, 1),
(861, 1),
(862, 1),
(863, 1),
(864, 1),
(865, 1),
(866, 1),
(867, 1),
(868, 1),
(869, 1),
(870, 1),
(871, 1),
(872, 1),
(873, 1),
(874, 1),
(875, 1),
(876, 1),
(877, 1),
(878, 1),
(879, 1),
(880, 1),
(881, 1),
(882, 1),
(883, 1),
(884, 1),
(885, 1),
(886, 1),
(887, 1),
(888, 1),
(889, 1),
(890, 1),
(891, 1),
(892, 1),
(893, 1),
(501, 2),
(502, 2),
(506, 2),
(507, 2),
(511, 2),
(512, 2),
(516, 2),
(531, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(543, 2),
(544, 2),
(548, 2),
(549, 2),
(550, 2),
(551, 2),
(553, 2),
(554, 2),
(556, 2),
(561, 2),
(562, 2),
(563, 2),
(569, 2),
(570, 2),
(571, 2),
(572, 2),
(573, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(586, 2),
(587, 2),
(588, 2),
(590, 2),
(591, 2),
(592, 2),
(594, 2),
(595, 2),
(596, 2),
(598, 2),
(599, 2),
(600, 2),
(601, 2),
(603, 2),
(604, 2),
(605, 2),
(607, 2),
(683, 2),
(684, 2),
(685, 2),
(686, 2),
(687, 2),
(688, 2),
(693, 2),
(694, 2),
(695, 2),
(713, 2),
(717, 2),
(718, 2),
(721, 2),
(731, 2),
(765, 2),
(766, 2),
(767, 2),
(770, 2),
(771, 2),
(772, 2),
(775, 2),
(776, 2),
(777, 2),
(780, 2),
(781, 2),
(782, 2),
(783, 2),
(787, 2),
(788, 2),
(789, 2),
(790, 2),
(791, 2),
(793, 2),
(794, 2),
(821, 2),
(501, 3),
(512, 3),
(516, 3),
(531, 3),
(539, 3),
(543, 3),
(544, 3),
(548, 3),
(561, 3),
(571, 3),
(573, 3),
(579, 3),
(580, 3),
(687, 3),
(709, 3),
(713, 3),
(716, 3),
(717, 3),
(721, 3),
(722, 3),
(731, 3),
(748, 3),
(752, 3),
(765, 3),
(769, 3),
(770, 3),
(774, 3),
(775, 3),
(779, 3),
(535, 3),
(697, 3),
(501, 4),
(502, 4),
(506, 4),
(512, 4),
(516, 4),
(531, 4),
(535, 4),
(544, 4),
(548, 4),
(550, 4),
(561, 4),
(571, 4),
(573, 4),
(579, 4),
(580, 4),
(693, 4),
(700, 4),
(709, 4),
(722, 4),
(731, 4),
(748, 4),
(752, 4),
(765, 4),
(769, 4),
(770, 4),
(774, 4),
(775, 4),
(779, 4),
(599, 4),
(501, 5),
(512, 5),
(516, 5),
(554, 5),
(556, 5),
(579, 5),
(580, 5),
(608, 5),
(609, 5),
(610, 5),
(611, 5),
(612, 5),
(613, 5),
(614, 5),
(615, 5),
(616, 5),
(617, 5),
(618, 5),
(619, 5),
(620, 5),
(621, 5),
(622, 5),
(649, 5),
(650, 5),
(651, 5),
(652, 5),
(653, 5),
(654, 5),
(655, 5),
(656, 5),
(657, 5),
(658, 5),
(659, 5),
(660, 5),
(661, 5),
(662, 5),
(663, 5),
(664, 5),
(665, 5),
(666, 5),
(667, 5),
(668, 5),
(669, 5),
(670, 5),
(671, 5),
(672, 5),
(673, 5),
(674, 5),
(675, 5),
(676, 5),
(677, 5),
(678, 5),
(683, 5),
(684, 5),
(685, 5),
(686, 5),
(687, 5),
(688, 5),
(689, 5),
(690, 5),
(691, 5),
(722, 5),
(723, 5),
(724, 5),
(725, 5),
(726, 5),
(727, 5),
(728, 5),
(729, 5),
(730, 5),
(731, 5),
(732, 5),
(733, 5),
(734, 5),
(735, 5),
(736, 5),
(737, 5),
(738, 5),
(739, 5),
(740, 5),
(741, 5),
(742, 5),
(743, 5),
(744, 5),
(745, 5),
(746, 5),
(747, 5),
(748, 5),
(749, 5),
(750, 5),
(751, 5),
(752, 5),
(753, 5),
(754, 5),
(756, 5),
(757, 5),
(758, 5),
(760, 5),
(761, 5),
(762, 5),
(765, 5),
(769, 5),
(770, 5),
(774, 5),
(775, 5),
(779, 5),
(801, 5),
(802, 5),
(803, 5),
(804, 5),
(805, 5),
(806, 5),
(551, 5),
(553, 5),
(623, 5),
(624, 5),
(625, 5),
(626, 5),
(697, 5),
(704, 5),
(705, 5),
(706, 5),
(707, 5),
(708, 5),
(764, 5),
(807, 5),
(808, 5),
(809, 5),
(810, 5),
(811, 5),
(812, 5),
(878, 5),
(879, 5),
(880, 5),
(881, 5),
(882, 5),
(883, 5),
(884, 5),
(885, 5),
(886, 5),
(887, 5),
(888, 5),
(889, 5),
(890, 5),
(891, 5),
(892, 5),
(893, 5),
(501, 6),
(512, 6),
(516, 6),
(531, 6),
(554, 6),
(556, 6),
(579, 6),
(580, 6),
(687, 6),
(688, 6),
(689, 6),
(704, 6),
(705, 6),
(706, 6),
(707, 6),
(708, 6),
(709, 6),
(710, 6),
(711, 6),
(712, 6),
(713, 6),
(714, 6),
(715, 6),
(716, 6),
(717, 6),
(718, 6),
(719, 6),
(720, 6),
(721, 6),
(765, 6),
(769, 6),
(770, 6),
(774, 6),
(775, 6),
(779, 6),
(788, 6),
(789, 6),
(790, 6),
(501, 7),
(502, 7),
(506, 7),
(507, 7),
(511, 7),
(512, 7),
(516, 7),
(517, 7),
(521, 7),
(548, 7),
(550, 7),
(551, 7),
(553, 7),
(554, 7),
(556, 7),
(579, 7),
(580, 7),
(687, 7),
(688, 7),
(689, 7),
(765, 7),
(769, 7),
(770, 7),
(774, 7),
(775, 7),
(779, 7),
(814, 7),
(815, 7),
(816, 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `postsID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `postorder` int(11) NOT NULL DEFAULT '0',
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(60) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`postsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

DROP TABLE IF EXISTS `posts_categories`;
CREATE TABLE IF NOT EXISTS `posts_categories` (
  `posts_categoriesID` int(11) NOT NULL AUTO_INCREMENT,
  `posts_categories` varchar(40) DEFAULT NULL,
  `posts_slug` varchar(250) DEFAULT NULL,
  `posts_parent` int(11) DEFAULT '0',
  `posts_description` text,
  PRIMARY KEY (`posts_categoriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

DROP TABLE IF EXISTS `posts_category`;
CREATE TABLE IF NOT EXISTS `posts_category` (
  `posts_categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `postsID` int(11) NOT NULL,
  `posts_categoriesID` int(11) NOT NULL,
  PRIMARY KEY (`posts_categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productcategoryID` int(11) NOT NULL,
  `productname` varchar(128) NOT NULL,
  `productbuyingprice` double NOT NULL,
  `productsellingprice` double NOT NULL,
  `productdesc` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
CREATE TABLE IF NOT EXISTS `productcategory` (
  `productcategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `productcategoryname` varchar(128) NOT NULL,
  `productcategorydesc` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productpurchase`
--

DROP TABLE IF EXISTS `productpurchase`;
CREATE TABLE IF NOT EXISTS `productpurchase` (
  `productpurchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `productsupplierID` int(11) NOT NULL,
  `productwarehouseID` int(11) NOT NULL,
  `productpurchasereferenceno` varchar(100) NOT NULL,
  `productpurchasedate` date NOT NULL,
  `productpurchasefile` varchar(200) DEFAULT NULL,
  `productpurchasefileorginalname` varchar(200) DEFAULT NULL,
  `productpurchasedescription` text,
  `productpurchasestatus` int(11) NOT NULL COMMENT '0 = pending, 1 = partial_paid,  2 = fully_paid',
  `productpurchaserefund` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not refund, 1 = refund ',
  `productpurchasetaxID` int(11) NOT NULL DEFAULT '0',
  `productpurchasetaxamount` double NOT NULL DEFAULT '0',
  `productpurchasediscount` double NOT NULL DEFAULT '0',
  `productpurchaseshipping` double NOT NULL DEFAULT '0',
  `productpurchasepaymentterm` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productpurchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productpurchaseitem`
--

DROP TABLE IF EXISTS `productpurchaseitem`;
CREATE TABLE IF NOT EXISTS `productpurchaseitem` (
  `productpurchaseitemID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `productpurchaseID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productpurchaseunitprice` double NOT NULL,
  `productpurchasequantity` double NOT NULL,
  PRIMARY KEY (`productpurchaseitemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productpurchasepaid`
--

DROP TABLE IF EXISTS `productpurchasepaid`;
CREATE TABLE IF NOT EXISTS `productpurchasepaid` (
  `productpurchasepaidID` int(11) NOT NULL AUTO_INCREMENT,
  `productpurchasepaidschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productpurchaseID` int(11) NOT NULL,
  `productpurchasepaiddate` date NOT NULL,
  `productpurchasepaidreferenceno` varchar(100) NOT NULL,
  `productpurchasepaidamount` double NOT NULL,
  `productpurchasepaidpaymentmethod` int(11) NOT NULL COMMENT '1 = cash, 2 = cheque, 3 = crediit card, 4 = other',
  `productpurchasepaidfile` varchar(200) DEFAULT NULL,
  `productpurchasepaidorginalname` varchar(200) DEFAULT NULL,
  `productpurchasepaiddescription` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productpurchasepaidID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productsale`
--

DROP TABLE IF EXISTS `productsale`;
CREATE TABLE IF NOT EXISTS `productsale` (
  `productsaleID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `productsalecustomertypeID` int(11) NOT NULL,
  `productsalecustomerID` int(11) NOT NULL,
  `productsalereferenceno` varchar(100) NOT NULL,
  `productsaledate` date NOT NULL,
  `productsalefile` varchar(200) DEFAULT NULL,
  `productsalefileorginalname` varchar(200) DEFAULT NULL,
  `productsaledescription` text,
  `productsalestatus` int(11) NOT NULL COMMENT '0 = select_payment_status, 1 = due,  2 = partial, 3 = Paid',
  `productsalerefund` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not refund, 1 = refund ',
  `productsaletaxID` int(11) NOT NULL DEFAULT '0',
  `productsaletaxamount` double NOT NULL DEFAULT '0',
  `productsalediscount` double NOT NULL DEFAULT '0',
  `productsaleshipping` double NOT NULL DEFAULT '0',
  `productsalepaymentterm` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productsaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productsaleitem`
--

DROP TABLE IF EXISTS `productsaleitem`;
CREATE TABLE IF NOT EXISTS `productsaleitem` (
  `productsaleitemID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `productsaleID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productsaleserialno` varchar(100) DEFAULT '0',
  `productsaleunitprice` double NOT NULL,
  `productsalequantity` double NOT NULL,
  PRIMARY KEY (`productsaleitemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productsalepaid`
--

DROP TABLE IF EXISTS `productsalepaid`;
CREATE TABLE IF NOT EXISTS `productsalepaid` (
  `productsalepaidID` int(11) NOT NULL AUTO_INCREMENT,
  `productsalepaidschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productsaleID` int(11) NOT NULL,
  `productsalepaiddate` date NOT NULL,
  `productsalepaidreferenceno` varchar(100) NOT NULL,
  `productsalepaidamount` double NOT NULL,
  `productsalepaidpaymentmethod` int(11) NOT NULL COMMENT '1 = cash, 2 = cheque, 3 = crediit card, 4 = other',
  `productsalepaidfile` varchar(200) DEFAULT NULL,
  `productsalepaidorginalname` varchar(200) DEFAULT NULL,
  `productsalepaiddescription` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productsalepaidID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productsupplier`
--

DROP TABLE IF EXISTS `productsupplier`;
CREATE TABLE IF NOT EXISTS `productsupplier` (
  `productsupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `productsuppliercompanyname` varchar(128) NOT NULL,
  `productsuppliername` varchar(40) NOT NULL,
  `productsupplieremail` varchar(40) DEFAULT NULL,
  `productsupplierphone` varchar(20) DEFAULT NULL,
  `productsupplieraddress` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productsupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productwarehouse`
--

DROP TABLE IF EXISTS `productwarehouse`;
CREATE TABLE IF NOT EXISTS `productwarehouse` (
  `productwarehouseID` int(11) NOT NULL AUTO_INCREMENT,
  `productwarehousename` varchar(128) NOT NULL,
  `productwarehousecode` varchar(128) NOT NULL,
  `productwarehouseemail` varchar(40) DEFAULT NULL,
  `productwarehousephone` varchar(20) DEFAULT NULL,
  `productwarehouseaddress` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`productwarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotionlog`
--

DROP TABLE IF EXISTS `promotionlog`;
CREATE TABLE IF NOT EXISTS `promotionlog` (
  `promotionLogID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotionType` varchar(50) DEFAULT NULL,
  `classesID` int(11) NOT NULL,
  `jumpClassID` int(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `jumpSchoolYearID` int(11) NOT NULL,
  `subjectandsubjectcodeandmark` longtext,
  `exams` longtext,
  `markpercentages` longtext,
  `promoteStudents` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  PRIMARY KEY (`promotionLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `assetID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `purchase_price` double NOT NULL,
  `purchased_by` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `expire_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE IF NOT EXISTS `question_answer` (
  `answerID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeNumber` int(11) NOT NULL,
  `text` text,
  PRIMARY KEY (`answerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE IF NOT EXISTS `question_bank` (
  `questionBankID` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `explanation` text,
  `levelID` int(11) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `totalQuestion` int(11) DEFAULT '0',
  `totalOption` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `mark` int(11) DEFAULT '0',
  `hints` text,
  `upload` varchar(512) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`questionBankID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_group`
--

DROP TABLE IF EXISTS `question_group`;
CREATE TABLE IF NOT EXISTS `question_group` (
  `questionGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`questionGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_group`
--

INSERT INTO `question_group` (`questionGroupID`, `title`) VALUES
(1, 'Reasoning'),
(2, 'Computer Knowledge'),
(3, 'General'),
(4, 'Math'),
(5, 'GRE'),
(6, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `question_level`
--

DROP TABLE IF EXISTS `question_level`;
CREATE TABLE IF NOT EXISTS `question_level` (
  `questionLevelID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`questionLevelID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_level`
--

INSERT INTO `question_level` (`questionLevelID`, `name`) VALUES
(1, 'Easy'),
(2, 'Medium'),
(3, 'Hard');

-- --------------------------------------------------------

--
-- Table structure for table `question_option`
--

DROP TABLE IF EXISTS `question_option`;
CREATE TABLE IF NOT EXISTS `question_option` (
  `optionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `img` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
CREATE TABLE IF NOT EXISTS `question_type` (
  `questionTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `typeNumber` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  PRIMARY KEY (`questionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`questionTypeID`, `typeNumber`, `name`) VALUES
(1, 1, 'Single Answer'),
(2, 2, 'Multi Answer'),
(3, 3, 'Fill in the blanks');

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

DROP TABLE IF EXISTS `reset`;
CREATE TABLE IF NOT EXISTS `reset` (
  `resetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyID` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`resetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

DROP TABLE IF EXISTS `routine`;
CREATE TABLE IF NOT EXISTS `routine` (
  `routineID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL,
  PRIMARY KEY (`routineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_option`
--

DROP TABLE IF EXISTS `salary_option`;
CREATE TABLE IF NOT EXISTS `salary_option` (
  `salary_optionID` int(11) NOT NULL AUTO_INCREMENT,
  `salary_templateID` int(11) NOT NULL,
  `option_type` int(11) NOT NULL COMMENT 'Allowances =1, Dllowances = 2, Increment = 3',
  `label_name` varchar(128) DEFAULT NULL,
  `label_amount` double NOT NULL,
  PRIMARY KEY (`salary_optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_template`
--

DROP TABLE IF EXISTS `salary_template`;
CREATE TABLE IF NOT EXISTS `salary_template` (
  `salary_templateID` int(11) NOT NULL AUTO_INCREMENT,
  `salary_grades` varchar(128) NOT NULL,
  `basic_salary` text NOT NULL,
  `overtime_rate` text NOT NULL,
  PRIMARY KEY (`salary_templateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

DROP TABLE IF EXISTS `schoolyear`;
CREATE TABLE IF NOT EXISTS `schoolyear` (
  `schoolyearID` int(11) NOT NULL AUTO_INCREMENT,
  `schooltype` varchar(40) DEFAULT NULL,
  `schoolyear` varchar(128) NOT NULL,
  `schoolyeartitle` varchar(128) DEFAULT NULL,
  `startingdate` date NOT NULL,
  `endingdate` date NOT NULL,
  `semestercode` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(100) NOT NULL,
  `create_usertype` varchar(100) NOT NULL,
  PRIMARY KEY (`schoolyearID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`schoolyearID`, `schooltype`, `schoolyear`, `schoolyeartitle`, `startingdate`, `endingdate`, `semestercode`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'classbase', '2021-2022', '', '2021-01-01', '2021-12-31', NULL, '2019-01-01 12:35:25', '2019-11-10 07:21:11', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `school_sessions`
--

DROP TABLE IF EXISTS `school_sessions`;
CREATE TABLE IF NOT EXISTS `school_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_sessions`
--

INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('pvddi2p3npo34l9i5bbhlqe0r0brd95t', '127.0.0.1', 1619217087, ''),
('7ig0ha7dddkdjvb7hvbi35l3hr9b44j2', '127.0.0.1', 1619217166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393231373133383b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('eoap4hfuphit4mq0vved6inhfbtqfk6p', '127.0.0.1', 1619256978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393235363937383b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4j5b8k9gln8ab608pv35om9pbl9plrsh', '127.0.0.1', 1619257824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393235373832343b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('tkup3irtns3lmm5d9v2elfhva4kfdmlr', '127.0.0.1', 1619257855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393235373832343b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('lu2ni0c7nbhnptol2lupbkoamjnr63bp', '127.0.0.1', 1619276767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393237363736363b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('r71rd5l35qhlt2von5nokif3b0furf6r', '127.0.0.1', 1619276986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393237363834373b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('0il62p47fufjojtbifut7gp335cjk2p8', '127.0.0.1', 1619285727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631393238353732373b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('n0o1rfakvp3bib5j16gsqluoj8qsvlp9', '127.0.0.1', 1622219423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323231393230303b656e676c6973687c4e3b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a373a224176696e617368223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b6c616e677c733a373a22656e676c697368223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c623a313b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3339343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a383a226f76657274696d65223b733a333a22796573223b733a31323a226f76657274696d655f616464223b733a333a22796573223b733a31333a226f76657274696d655f65646974223b733a333a22796573223b733a31353a226f76657274696d655f64656c657465223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a32303a2273747564656e7473657373696f6e7265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31343a226f76657274696d657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a226164646f6e73223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a31313a226d61726b73657474696e67223b733a333a22796573223b733a393a2263616e646964617465223b733a333a22796573223b733a31333a2263616e6469646174655f616464223b733a333a22796573223b733a31343a2263616e6469646174655f65646974223b733a333a22796573223b733a31363a2263616e6469646174655f64656c657465223b733a333a22796573223b733a31343a2263616e6469646174655f76696577223b733a333a22796573223b733a373a2273706f6e736f72223b733a333a22796573223b733a31313a2273706f6e736f725f616464223b733a333a22796573223b733a31323a2273706f6e736f725f65646974223b733a333a22796573223b733a31343a2273706f6e736f725f64656c657465223b733a333a22796573223b733a31323a2273706f6e736f725f76696577223b733a333a22796573223b733a31313a2273706f6e736f7273686970223b733a333a22796573223b733a31353a2273706f6e736f72736869705f616464223b733a333a22796573223b733a31363a2273706f6e736f72736869705f65646974223b733a333a22796573223b733a31383a2273706f6e736f72736869705f64656c657465223b733a333a22796573223b733a31373a2273706f6e736f72736869707265706f7274223b733a333a22796573223b733a33303a226f6e6c696e656578616d7175657374696f6e616e737765727265706f7274223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `sectionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `section` varchar(60) NOT NULL,
  `category` varchar(128) NOT NULL,
  `capacity` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`sectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('absent_auto_sms', '1'),
('address', 'Post Office  Box'),
('attendance', 'day'),
('attendance_notification', 'none'),
('attendance_notification_template', '0'),
('attendance_smsgateway', '0'),
('automation', '5'),
('auto_invoice_generate', '0'),
('auto_update_notification', '1'),
('backend_theme', 'default'),
('captcha_status', '1'),
('currency_code', 'GHS'),
('currency_symbol', '¢'),
('email', 'admin@gmail.com'),
('ex_class', '0'),
('footer', 'Copyright &copy; Edu Management Systems'),
('frontendorbackend', 'YES'),
('frontend_theme', 'default'),
('google_analytics', ''),
('language', 'english'),
('language_status', '0'),
('marktypeID', '0'),
('mark_1', '1'),
('note', '1'),
('phone', '0240315181'),
('photo', 'site.png'),
('profile_edit', '0'),
('purchase_code', '2c09871c-aaee-4d32-9dc4-6c3f2f5c20d0\r\n'),
('purchase_username', 'Avinash'),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'Edu Management Systems'),
('student_ID_format', '1'),
('time_zone', 'US/Pacific'),
('updateversion', '4.8'),
('weekends', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `sliderID` int(11) NOT NULL AUTO_INCREMENT,
  `pagesID` int(11) NOT NULL,
  `slider` int(11) NOT NULL,
  PRIMARY KEY (`sliderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smssettings`
--

DROP TABLE IF EXISTS `smssettings`;
CREATE TABLE IF NOT EXISTS `smssettings` (
  `smssettingsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `field_names` varchar(255) DEFAULT NULL,
  `field_values` varchar(255) DEFAULT NULL,
  `smssettings_extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smssettingsID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smssettings`
--

INSERT INTO `smssettings` (`smssettingsID`, `types`, `field_names`, `field_values`, `smssettings_extra`) VALUES
(1, 'clickatell', 'clickatell_username', '', NULL),
(2, 'clickatell', 'clickatell_password', '', NULL),
(3, 'clickatell', 'clickatell_api_key', '', NULL),
(4, 'twilio', 'twilio_accountSID', '', NULL),
(5, 'twilio', 'twilio_authtoken', '', NULL),
(6, 'twilio', 'twilio_fromnumber', '', NULL),
(7, 'bulk', 'bulk_username', '', NULL),
(8, 'bulk', 'bulk_password', '', NULL),
(9, 'msg91', 'msg91_authKey', '', NULL),
(10, 'msg91', 'msg91_senderID', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sociallink`
--

DROP TABLE IF EXISTS `sociallink`;
CREATE TABLE IF NOT EXISTS `sociallink` (
  `sociallinkID` int(11) NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `googleplus` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sociallinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE IF NOT EXISTS `sponsor` (
  `sponsorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `organisation_name` varchar(180) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  `create_username` varchar(60) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  PRIMARY KEY (`sponsorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
CREATE TABLE IF NOT EXISTS `sponsorship` (
  `sponsorshipID` int(11) NOT NULL AUTO_INCREMENT,
  `sponsorID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  PRIMARY KEY (`sponsorshipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `studentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `library` int(11) NOT NULL,
  `hostel` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studentextend`
--

DROP TABLE IF EXISTS `studentextend`;
CREATE TABLE IF NOT EXISTS `studentextend` (
  `studentextendID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `studentgroupID` int(11) NOT NULL,
  `optionalsubjectID` int(11) NOT NULL,
  `extracurricularactivities` text,
  `remarks` text,
  PRIMARY KEY (`studentextendID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studentgroup`
--

DROP TABLE IF EXISTS `studentgroup`;
CREATE TABLE IF NOT EXISTS `studentgroup` (
  `studentgroupID` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(128) NOT NULL,
  PRIMARY KEY (`studentgroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentgroup`
--

INSERT INTO `studentgroup` (`studentgroupID`, `group`) VALUES
(1, 'Science'),
(2, 'Arts'),
(3, 'Commerce');

-- --------------------------------------------------------

--
-- Table structure for table `studentrelation`
--

DROP TABLE IF EXISTS `studentrelation`;
CREATE TABLE IF NOT EXISTS `studentrelation` (
  `studentrelationID` int(11) NOT NULL AUTO_INCREMENT,
  `srstudentID` int(11) DEFAULT NULL,
  `srname` varchar(40) NOT NULL,
  `srclassesID` int(11) DEFAULT NULL,
  `srclasses` varchar(40) DEFAULT NULL,
  `srroll` int(11) DEFAULT NULL,
  `srregisterNO` varchar(128) DEFAULT NULL,
  `srsectionID` int(11) DEFAULT NULL,
  `srsection` varchar(40) DEFAULT NULL,
  `srstudentgroupID` int(11) NOT NULL,
  `sroptionalsubjectID` int(11) NOT NULL,
  `srschoolyearID` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subjectID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `passmark` int(11) NOT NULL,
  `finalmark` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `subject_author` varchar(100) DEFAULT NULL,
  `subject_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subjectteacher`
--

DROP TABLE IF EXISTS `subjectteacher`;
CREATE TABLE IF NOT EXISTS `subjectteacher` (
  `subjectteacherID` int(11) NOT NULL AUTO_INCREMENT,
  `subjectID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  PRIMARY KEY (`subjectteacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_attendance`
--

DROP TABLE IF EXISTS `sub_attendance`;
CREATE TABLE IF NOT EXISTS `sub_attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `syllabusID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`syllabusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systemadmin`
--

DROP TABLE IF EXISTS `systemadmin`;
CREATE TABLE IF NOT EXISTS `systemadmin` (
  `systemadminID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`systemadminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`) VALUES
(1, 'Avinash', '2021-04-23', 'Male', 'Unknown', 'admin@gmail.com', '', '', '2021-04-23', 'default.png', 'admin', '75d261de8327e8103d83a90e4f93794faed685c1249bd89150e587ee4f24e33b8f3cdaefd123c62c75879d4e2849f118b0c3954076477a9302d6ab3b3c3fdd11', 1, '2021-04-23 03:29:21', '2021-04-23 03:29:21', 0, 'admin', 'Admin', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tattendance`
--

DROP TABLE IF EXISTS `tattendance`;
CREATE TABLE IF NOT EXISTS `tattendance` (
  `tattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`tattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacherID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `themesID` int(11) NOT NULL AUTO_INCREMENT,
  `sortID` int(11) NOT NULL DEFAULT '1',
  `themename` varchar(128) NOT NULL,
  `backend` int(11) NOT NULL DEFAULT '1',
  `frontend` int(11) NOT NULL DEFAULT '1',
  `topcolor` text NOT NULL,
  `leftcolor` text NOT NULL,
  PRIMARY KEY (`themesID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`themesID`, `sortID`, `themename`, `backend`, `frontend`, `topcolor`, `leftcolor`) VALUES
(1, 1, 'Default', 1, 1, '#FFFFFF', '#2d353c'),
(2, 0, 'Blue', 0, 1, '#3c8dbc', '#2d353c'),
(3, 3, 'Black', 1, 1, '#fefefe', '#222222'),
(4, 4, 'Purple', 1, 1, '#605ca8', '#2d353c'),
(5, 5, 'Green', 1, 1, '#00a65a', '#2d353c'),
(6, 6, 'Red', 1, 1, '#dd4b39', '#2d353c'),
(7, 0, 'Yellow', 0, 1, '#f39c12', '#2d353c'),
(8, 7, 'Blue Light', 1, 1, '#3c8dbc', '#f9fafc'),
(9, 8, 'Black Light', 1, 1, '#fefefe', '#f9fafc'),
(10, 9, 'Purple Light', 1, 1, '#605ca8', '#f9fafc'),
(11, 10, 'Green Light', 1, 1, '#00a65a', '#f9fafc'),
(12, 11, 'Red Light', 1, 1, '#dd4b39', '#f9fafc'),
(13, 12, 'Yellow Light', 1, 1, '#f39c12', '#f9fafc'),
(14, 2, 'White Blue', 1, 1, '#ffffff', '#132035');

-- --------------------------------------------------------

--
-- Table structure for table `tmember`
--

DROP TABLE IF EXISTS `tmember`;
CREATE TABLE IF NOT EXISTS `tmember` (
  `tmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `transportID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `tbalance` varchar(11) DEFAULT NULL,
  `tjoindate` date NOT NULL,
  PRIMARY KEY (`tmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `trans_name` varchar(100) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `trans_time` time DEFAULT NULL,
  `table` varchar(200) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  `primary_key` varchar(200) DEFAULT NULL,
  `body` longtext,
  `schoolyearID` int(11) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transportID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  `vehicle` int(11) NOT NULL,
  `fare` varchar(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`transportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uattendance`
--

DROP TABLE IF EXISTS `uattendance`;
CREATE TABLE IF NOT EXISTS `uattendance` (
  `uattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`uattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

DROP TABLE IF EXISTS `update`;
CREATE TABLE IF NOT EXISTS `update` (
  `updateID` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `log` longtext NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`updateID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `update`
--

INSERT INTO `update` (`updateID`, `version`, `date`, `userID`, `usertypeID`, `log`, `status`) VALUES
(1, '4.7', '2021-04-23 15:29:21', 1, 1, '<h4>1. initial install</h4>', 1),
(2, '4.8', '2021-04-24 10:34:37', 1, 1, '<h4>+ [Fixing] Candidate feature bug solve </h4>\n<h4>+ [Fixing] Routine feature bug solve </h4>\n<h4>+ [Fixing] Sale feature minor bug solve </h4>\n<h4>+ [Fixing] Child Care feature minor bug solve </h4>\n<h4>+ [Fixing] Section feature minor bug solve </h4>\n<h4>+ [Fixing] mark feaure minor bug solve </h4>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  PRIMARY KEY (`usertypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2016-06-24 07:12:49', '2016-06-24 07:12:49', 1, 'admin', 'Super Admin'),
(2, 'Teacher', '2016-06-24 07:13:13', '2016-06-24 07:13:13', 1, 'admin', 'Super Admin'),
(3, 'Student', '2016-06-24 07:13:27', '2016-06-24 07:13:27', 1, 'admin', 'Super Admin'),
(4, 'Parents', '2016-06-24 07:13:42', '2016-10-25 01:12:52', 1, 'admin', 'Super Admin'),
(5, 'Accountant', '2016-06-24 07:13:54', '2016-06-24 07:13:54', 1, 'admin', 'Super Admin'),
(6, 'Librarian', '2016-06-24 09:09:43', '2016-06-24 09:09:43', 1, 'admin', 'Super Admin'),
(7, 'Receptionist', '2016-10-30 06:24:41', '2016-10-30 06:24:41', 1, 'admin', 'Admin'),
(8, 'Moderator', '2016-10-30 07:00:20', '2016-12-06 06:08:38', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitorinfo`
--

DROP TABLE IF EXISTS `visitorinfo`;
CREATE TABLE IF NOT EXISTS `visitorinfo` (
  `visitorID` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `phone` text NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `company_name` varchar(128) DEFAULT NULL,
  `coming_from` varchar(128) DEFAULT NULL,
  `representing` varchar(128) DEFAULT NULL,
  `to_meet_personID` int(11) NOT NULL,
  `to_meet_usertypeID` int(11) NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`visitorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weaverandfine`
--

DROP TABLE IF EXISTS `weaverandfine`;
CREATE TABLE IF NOT EXISTS `weaverandfine` (
  `weaverandfineID` int(11) NOT NULL AUTO_INCREMENT,
  `globalpaymentID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `weaver` double NOT NULL,
  `fine` double NOT NULL,
  PRIMARY KEY (`weaverandfineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
