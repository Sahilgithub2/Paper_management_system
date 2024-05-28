-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 10:00 AM
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
-- Database: `demo`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `accept` (IN `id1` INTEGER)  BEGIN
	insert into approvedfiles (select * from files where id = id1);
    delete from files where id = id1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `reject` (IN `id1` INTEGER)  BEGIN 
	delete from files where id = id1;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `approvedfiles`
--

CREATE TABLE `approvedfiles` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `title` varchar(300) NOT NULL,
  `type` varchar(15) NOT NULL,
  `venue` varchar(250) NOT NULL,
  `volume` varchar(11) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `level` varchar(15) NOT NULL,
  `indexing` varchar(20) NOT NULL,
  `abstract` varchar(4000) NOT NULL,
  `keywords` varchar(30) NOT NULL,
  `coauthors` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approvedfiles`
--

-- INSERT INTO `approvedfiles` (`id`, `username`, `title`, `type`, `venue`, `volume`, `issue`, `date`, `level`, `indexing`, `abstract`, `keywords`, `coauthors`) VALUES
-- (8, '', 'cloud', 'cloudcomputing', '0', '2', '23', '2021-12-01', 'International', '', 'i like cloud', '', 'csehod_bvrit'),
-- (14, 'principal_bvrit', 'nidhi', 'iot', '0', '2', '24', '2021-12-02', 'International', '', 'shes a very good girl', '', 'csehod_bvrit'),
-- (13, 'principal_bvrit', 'hfhsfh', 'other', '0', '2', '23', '2021-12-02', 'National', '', '123', '', ''),
-- (17, 'csehod_bvrit', 'hello world', 'websecurity', '0', '1', '12', '2021-12-10', 'International', '', '1st programme', '', 'princi'),
-- (19, 'csehod_bvrit', 'nidhi', 'conference', '0', '9', '28', '2024-11-08', 'International', '', 'nidhi harshini are class mates', 'nidhi, harshini', 'nidhi2'),
-- (20, 'principal_bvrit', 'Microservices based enterprise', 'conference', '0', '33', '2', '2021-12-01', 'International', '', 'jhdsab kahfkad  akdfhakdf  kdfkf', 'microservices, service oriente', 'Dr.S Ravichandra'),
-- (26, 'principal_bvrit', 'Completing a research paper successfully means accomplishing the specific tasks set out for you.', 'journal', '0', '23', '33', '2021-12-16', '', 'SCI', 'A research paper is a piece of academic writing that provides analysis, interpretation, and argument based on in-depth independent research.\r\n\r\nResearch papers are similar to academic essays, but they are usually longer and more detailed assignments, designed to assess not only your writing skills but also your skills in scholarly research. Writing a research paper requires you to demonstrate a strong knowledge of your topic, engage with a variety of sources, and make an original contribution to the debate.\r\n\r\nThis step-by-step guide takes you through the entire writing process, from understanding your assignment to proofreading your final draft.', 'proofreading ', ''),
-- (27, 'rnd_coordinator', 'rnd updated paper', 'journal', '0', '2', '23', '2021-12-16', 'International', 'SCIE', 'Done!', 'work', ''),
-- (28, 'vinay_raj', 'An Efficient Digit Recognition System With An Improved Preprocessing Technique', 'journal', '0', '1', '24', '2021-12-16', 'International', 'Scopus', ' “Effective Image Fusion Technique based on Local Correlation Modeling in Wavelet Domain for Satellite Image Fusion,” J. Adv. Res. Dyn. Control Syst., vol. Volume 11, no. Issue 2, pp. 1–5, 2019', 'Image fussion', 'G. Ravikanth, K. V. N. Sunitha, and B. E'),
-- (21, 'principal_bvrit', 'xyz', 'journal', '0', 'jhdfs', 'dfhlshf', '2021-12-02', 'International', '', 'sdfiosilf', 'dsfilf', 'fldafhl'),
-- (29, 'principal_bvrit', 'This is a title', 'journal', '0', '32', '24', '2021-12-16', 'International', 'SCI', 'This is a very very very long abstract that will go over your head', 'Abstract', ''),
-- (25, 'principal_bvrit', 'dsfosihksdf', 'journal', 'ff', '23', '33', '2021-12-16', 'International', 'sci', 'fksbg', 'siydfs', ''),
-- (30, 'principal_bvrit', 'Food for health', 'journal', 'Human health', '10', '4', '2021-11-23', 'International', 'SCI', 'Research suggests that \"healthy\" food choices have not only physical but also mental health benefits.', 'Fitness, health', 'Dan, Sass');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `title` varchar(300) NOT NULL,
  `type` varchar(15) NOT NULL,
  `venue` varchar(250) NOT NULL,
  `volume` varchar(11) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `level` varchar(15) NOT NULL,
  `indexing` varchar(20) NOT NULL,
  `abstract` varchar(4000) NOT NULL,
  `keywords` varchar(30) NOT NULL,
  `coauthors` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

-- INSERT INTO `files` (`id`, `username`, `title`, `type`, `venue`, `volume`, `issue`, `date`, `level`, `indexing`, `abstract`, `keywords`, `coauthors`) VALUES
-- (9, 'principal_bvrit', 'cloud', 'cloudcomputing', '', '1', '24', '2021-12-01', 'International', '', 'cloud computing ', '', ''),
-- (10, 'principal_bvrit', 'cn', 'cns', '', '1', '22', '2021-12-01', 'International', '', 'comp', '', ''),
-- (11, 'principal_bvrit', 'ui and ux', 'designpatterns', '', '1', '23', '2021-12-01', 'International', '', 'xyz', '', ''),
-- (12, 'principal_bvrit', 'natural language and processin', 'speechnlp', '', '1', '12', '2021-12-04', '', '', '123', '', ''),
-- (16, 'principal_bvrit', 'abc', 'imageprocessing', '', '2', '3', '2021-12-07', 'National', '', '', '', ''),
-- (18, 'csehod_bvrit', 'yolo', 'journal', '', '1', '23', '2021-12-06', 'International', '', 'you live only once', 'LIFE', 'I'),
-- (22, 'principal_bvrit', '123', 'journal', '456789', '12', '11', '2021-12-16', 'International', '1314', '1415', '5645', ''),
-- (23, 'principal_bvrit', '', 'journal', 'sudgojp', '2', '4', '2021-12-16', 'International', 'sci', 'aroharfh', 'iehfoif', ''),
-- (24, 'principal_bvrit', '', 'journal', 'sdkghsl', 'skgks', 'sdgj;n', '2021-12-04', 'International', 'sdgnsskgdjs', 'dfhh', 'ksdgh', ''),
-- (31, 'principal_bvrit', 'Food for health', 'journal', 'Nidhi', 'a', '4', '2021-12-23', 'International', 'SCIE', 'Research suggests that\r\n“healthy” food choices have not only\r\nphysical but also mental health\r\nbenefits...\r\n', 'Fitness, heath', 'Dan, sass'),
-- (32, 'principal_bvrit', 'gikbsgos', 'journal', 'hafbaf', '34', '5', '2021-12-23', '', 'Scopus', 'asjhi', 'ahfiwh', ''),
-- (33, 'principal_bvrit', 'sdfsfs', 'journal', 'dsfsf', 'dsfsf', 'dsfd', '2021-12-03', 'International', 'dfsf', 'sdfs', 'fdsdf', 'dsf'),
-- (34, 'principal_bvrit', 'xxgx', 'journal', 'gxx', 'xg', 'gg', '2021-12-24', 'International', 'gxg', 'uhkj', 'hgj', ''),
-- (35, 'principal_bvrit', 'vkjhvb', 'journal', 'tgchjk', '24', '30', '2022-01-30', 'International', 'hnkdwn', 'bkwcnjfrokejm', 'hfjknkrmv', ''),
-- (36, 'principal_bvrit', 'wqf', 'journal', 'wfq', '4', '6', '2021-12-01', 'International', 'etw', 'fgeh', 'wgh', '');

-- --------------------------------------------------------

--
-- Table structure for table `rnd_users`
--

CREATE TABLE `rnd_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rnd_users`
--

-- INSERT INTO `rnd_users` (`id`, `username`, `password`, `created_at`) VALUES
-- (0, 'rnd_coordinator', '$2y$10$WlnvJCM.potykKEI07ec/ua5.QT/SenSM.VEhL1J/ujLyNvVvMBMK', '2021-12-02 11:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
-- (1, 'principal_bvrit', '$2y$10$x9Ps0hxS6K.nek7ugpfCIeQUmtDlSKAB48awdVehHAXwqWMAyho06', '2021-11-20 21:20:29'),
-- (2, 'csehod_bvrit', '$2y$10$nM8FM3RHlXXpYZ7Sf03pBOpiJYME.t3BijBJdtJh4RJ4pQO6vvk1u', '2021-11-21 11:12:35'),
-- (3, 'ecehod_bvrit', '$2y$10$qBnarFK20RPqsPsIpv5UDOpaH50ZdNGwhLhQtAge90Tub1emRWSgG', '2021-11-21 11:13:35'),
-- (5, 'vinay_raj', '$2y$10$l6qOIspdsN3vaxGRs1Mpv.Zk4miEAZH8DnMXAJ/QQcGAeE3Yo9rSG', '2021-12-16 15:02:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
