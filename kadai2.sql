-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 6 朁E06 日 04:30
-- サーバのバージョン： 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadai2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `attendance`
--

CREATE TABLE `attendance` (
  `student_id` varchar(4) NOT NULL,
  `seminar_id` varchar(4) NOT NULL,
  `teacher_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `attendance`
--

INSERT INTO `attendance` (`student_id`, `seminar_id`, `teacher_id`) VALUES
('0001', '01', 'tB'),
('0001', '02', 'tB'),
('0001', '05', 'tA'),
('0002', '03', 'tA');

-- --------------------------------------------------------

--
-- テーブルの構造 `manager`
--

CREATE TABLE `manager` (
  `teacher_id` varchar(4) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `class` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `manager`
--

INSERT INTO `manager` (`teacher_id`, `teacher_name`, `password`, `class`) VALUES
('tA', '木原先生', '00000000', 'A'),
('tB', '今村先生', '11111111', 'B');

-- --------------------------------------------------------

--
-- テーブルの構造 `seminar`
--

CREATE TABLE `seminar` (
  `seminar_id` varchar(4) NOT NULL,
  `seminar_name` varchar(12) NOT NULL,
  `seminar_kind` varchar(12) NOT NULL,
  `teacher_id` varchar(4) NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  `record` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `seminar`
--

INSERT INTO `seminar` (`seminar_id`, `seminar_name`, `seminar_kind`, `teacher_id`, `year`, `record`) VALUES
('01', '英会話A', '英語', 'tB', NULL, NULL),
('02', '英会話B', '英語', 'tB', NULL, NULL),
('03', 'IT概論', 'IT', 'tA', NULL, NULL),
('04', 'IT実習', 'IT', 'tA', NULL, NULL),
('05', 'コミュニケーション論', 'コミュニケーション', 'tA', NULL, NULL),
('06', 'デスカッション', 'コミュニケーション', 'tA', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `student`
--

CREATE TABLE `student` (
  `student_id` varchar(4) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `class` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `password`, `class`) VALUES
('0001', '麻生太郎', '12345678', 'A'),
('0002', '麻生花子', '22222222', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`student_id`,`seminar_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`seminar_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
