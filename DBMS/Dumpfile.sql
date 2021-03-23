-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 06:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `M_id` int(11) NOT NULL,
  `Sub_name` varchar(50) NOT NULL,
  `Rating` int(4) DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`M_id`, `Sub_name`, `Rating`, `feedback`) VALUES
(13, 'Biology', NULL, NULL),
(13, 'Physics', NULL, NULL),
(13, 'Chemistry', NULL, NULL),
(13, 'Social Studies', NULL, NULL),
(14, 'Math', 4, 'good satisfactory...ok'),
(14, 'Biology', NULL, NULL),
(14, 'Physics', NULL, NULL),
(14, 'Chemistry', NULL, NULL),
(14, 'Social Studies', NULL, NULL),
(15, 'Math', NULL, NULL),
(15, 'Biology', NULL, NULL),
(15, 'Physics', NULL, NULL),
(15, 'Chemistry', NULL, NULL),
(15, 'Social Studies', NULL, NULL),
(15, 'English', NULL, NULL),
(15, 'Computer Science', NULL, NULL),
(16, 'Math', NULL, NULL),
(16, 'Biology', NULL, NULL),
(16, 'Physics', NULL, NULL),
(16, 'Chemistry', NULL, NULL),
(16, 'Social Studies', NULL, NULL),
(16, 'English', NULL, NULL),
(17, 'Math', NULL, NULL),
(17, 'Math', NULL, NULL),
(17, 'Biology', NULL, NULL),
(17, 'Biology', NULL, NULL),
(17, 'Physics', NULL, NULL),
(17, 'Physics', NULL, NULL),
(17, 'Chemistry', NULL, NULL),
(17, 'Chemistry', NULL, NULL),
(17, 'Social Studies', NULL, NULL),
(17, 'Social Studies', NULL, NULL),
(17, 'English', NULL, NULL),
(17, 'English', NULL, NULL),
(17, 'Computer Science', NULL, NULL),
(17, 'Computer Science', NULL, NULL),
(18, 'Math', NULL, NULL),
(18, 'Biology', NULL, NULL),
(18, 'Physics', NULL, NULL),
(18, 'Chemistry', NULL, NULL),
(18, 'Social Studies', NULL, NULL),
(18, 'English', NULL, NULL),
(18, 'Computer Science', NULL, NULL),
(19, 'Math', NULL, NULL),
(19, 'Biology', NULL, NULL),
(19, 'Physics', NULL, NULL),
(19, 'Chemistry', NULL, NULL),
(19, 'Social Studies', NULL, NULL),
(19, 'English', NULL, NULL),
(19, 'Computer Science', NULL, NULL),
(20, 'Physics', 10, 'fantastic'),
(20, 'Chemistry', NULL, NULL),
(20, 'Social Studies', NULL, NULL),
(21, 'Math', 3, 'fantastic'),
(21, 'Physics', NULL, NULL),
(21, 'Social Studies', NULL, NULL),
(21, 'English', NULL, NULL),
(21, 'Computer Science', 10, 'good'),
(22, 'Math', 4, 'good'),
(22, 'Physics', NULL, NULL),
(22, 'Chemistry', NULL, NULL),
(22, 'English', NULL, NULL),
(22, 'Computer Science', NULL, NULL),
(23, 'Math', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL,
  `fees_per_hr` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`M_id`, `Sub_id`, `fees_per_hr`) VALUES
(18, 1, 12),
(18, 2, 1),
(18, 3, 130),
(18, 4, 123),
(18, 5, 999),
(18, 6, 700),
(18, 7, 147),
(19, 1, 1),
(19, 2, 2),
(19, 3, 3),
(19, 4, 4),
(19, 5, 55),
(19, 6, NULL),
(19, 7, 99999),
(20, 3, 100),
(20, 4, 12),
(20, 5, NULL),
(21, 1, 100),
(21, 3, 120),
(21, 5, NULL),
(21, 6, 1000),
(21, 7, 50),
(22, 1, 1),
(22, 3, 2),
(22, 4, 3),
(22, 6, 4),
(22, 7, 5),
(23, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mentor_login`
--

CREATE TABLE `mentor_login` (
  `M_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_login`
--

INSERT INTO `mentor_login` (`M_id`, `username`, `password`) VALUES
(11, 'vinesh', '123'),
(15, 'ral', 'ral'),
(20, 'jes', 'per'),
(21, 'tho', 'kar'),
(22, 'raj', 'kum'),
(23, '1290', '1290');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_reg`
--

CREATE TABLE `mentor_reg` (
  `M_id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL CHECK (`email` like '%@%' and `email` like '%.%'),
  `contact` decimal(10,0) NOT NULL CHECK (char_length(`contact`) = 10),
  `city` varchar(50) NOT NULL,
  `Qualification` varchar(30) NOT NULL,
  `Resume_Link` varchar(40) NOT NULL CHECK (`Resume_Link` like '%.%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_reg`
--

INSERT INTO `mentor_reg` (`M_id`, `fname`, `lname`, `email`, `contact`, `city`, `Qualification`, `Resume_Link`) VALUES
(8, 'hrth', 'rthsrth', 'areer@yrg.reg', '2165324521', 'rget', 'agerfd', 'agre.ager'),
(10, 'qwedwedqty', 'qweqer', 'dwqq@we.we', '2149765843', 'erfwerf', 'werfwef', 'qrfqryun.rty'),
(11, 'vinesh', 'Talpankar', 'a@gm.com', '1234123412', 'Karwar', '12', '1233.com'),
(13, 'abcd', 'abc', 'adkf@gm.com', '1234123443', 'Karwar', '12', 'gfhjfk.com'),
(14, 'ajdnbd', 'dgfdg', 'dfgfdg@dfg.com', '1233211233', 'Karwar', 'dfsm.gndk', 'nfksfksn.ihfkdn'),
(15, 'Ralph', 'Tucker', 'raplh32@gmail.com', '1209124598', 'Mumbai', 'Btech ', 'googledrive/raplh.com'),
(16, 'hrtrh', 'dfgn', 'df@gf.com', '1212121212', 'Karwar', 'Btech ', 'ngfngngn.fh'),
(17, 'plsvkf', 'bdfb', 'fdb@sssf.bd', '1209120912', 'Karwar', 'Btech ', 'fewmf.bfg'),
(18, 'dscdsc', 'sacvd', 'dcdc@rk.vd', '9238478623', 'Karwar', 'Btech ', 'efkmf.ekf'),
(19, 'madhan', 'hdfb', 'jbd@jdbf.com', '1745111122', 'Karwar', 'Btech ', 'djbvjdv.djbfjn'),
(20, 'Jessica', 'Perkins', 'j.perkins@randatmail.com	', '9874624690', 'Kolkata', 'Btech', 'resume.in/bmslf'),
(21, 'Thomas', 'Karl', 'thomas@gmail.com', '7395973984', 'Kolkata', 'Btech', 'resume.in/bdsmgdjhked'),
(22, 'Rajesh', 'Kumar', 'rajesh@gmail.com', '1234876544', 'Kolkata', 'Btech', 'resume.in/bifmsbk'),
(23, 'zac', 'fkvmfddc', 'zac@dc.c', '1234321234', 'Kolkata', 'Btech', 'resume.in/bdsmgdjhkeddfcds');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_sub`
--

CREATE TABLE `mentor_sub` (
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_sub`
--

INSERT INTO `mentor_sub` (`M_id`, `Sub_id`) VALUES
(8, 5),
(8, 5),
(10, 1),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(11, 1),
(11, 3),
(11, 4),
(11, 6),
(11, 7),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(20, 3),
(20, 4),
(20, 5),
(21, 1),
(21, 3),
(21, 5),
(21, 6),
(21, 7),
(22, 1),
(22, 3),
(22, 4),
(22, 6),
(22, 7),
(23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resourcesharing`
--

CREATE TABLE `resourcesharing` (
  `Sub_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_link` varchar(50) NOT NULL,
  `DPP_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resourcesharing`
--

INSERT INTO `resourcesharing` (`Sub_id`, `book_name`, `book_author`, `book_link`, `DPP_link`) VALUES
(1, 'Cengage Algebra', 'Mr.XYZ', 'www.cengage.in/Algebra', 'www.cengage.in/Algebra/DPPs'),
(2, 'NCERT Biology 12th', 'Mr.Singh', 'www.ncert.in/biology12', 'www.ncert.in/biology12/dpps'),
(3, 'Concepts of Physics', 'HC Verma', 'www.hcverma/conceptsofphy', 'www.hcverma/conceptsofphy/DPPs'),
(4, 'Cengage Inorganic Chemistry', 'Mr.Brahma', 'www.cengage.in/ inorganicchemistry', 'www.cengage.in/ inorganicchemistry/DPPs'),
(5, 'Our Past-III', 'NCERT', 'www.ncert.in/ourpast3', 'www.ncert.in/ourpast3/questionbank'),
(6, 'HoneyHive', 'NCERT', 'www.ncert.in/HoneyHive', 'www.ncert.in/HoneyHive/practice'),
(7, 'Computer Science DSA', 'Mr.MNO', 'www.compsci.in/DSA', 'www.compsci.in/DSA/questions'),
(1, 'wrfwerf', 'qerqf', 'qrefeqr', 'qrerq');

-- --------------------------------------------------------

--
-- Table structure for table `sessionmanagement`
--

CREATE TABLE `sessionmanagement` (
  `S_id` int(11) NOT NULL,
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL,
  `fees_per_hr` int(11) DEFAULT NULL,
  `No_of_hrs` int(11) DEFAULT NULL,
  `slot_or_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessionmanagement`
--

INSERT INTO `sessionmanagement` (`S_id`, `M_id`, `Sub_id`, `fees_per_hr`, `No_of_hrs`, `slot_or_date`) VALUES
(55, 23, 1, 100, 12, '2021-03-28'),
(55, 23, 1, 100, 123, '2021-03-31'),
(53, 23, 1, 100, 12, '2021-03-21'),
(53, 23, 1, 100, 13, '2021-03-05'),
(55, 23, 1, 100, 23, '2021-04-03'),
(55, 23, 1, 100, 3, '2021-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `S_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`S_id`, `username`, `password`) VALUES
(51, 'as', 'sa'),
(52, 'rub', 'tho'),
(53, 'mar', 'max'),
(54, 'jac', 'max'),
(55, '0921', '0921');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `S_id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) DEFAULT NULL,
  `grade` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL CHECK (`email` like '%@%' and `email` like '%.%'),
  `contact` decimal(10,0) NOT NULL CHECK (char_length(`contact`) = 10),
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`S_id`, `fname`, `lname`, `grade`, `email`, `contact`, `city`) VALUES
(24, 'were', 'rqfqef', '10', 'qrefq@g.rf', '2145658978', 'qefqf'),
(25, 'erqerf', 'qrfqwf', '5', 'reqf@frf.com', '2132567898', 'wedqwedqw'),
(27, 'errf', 'refwef', '5', 'eraf@fvd.vom', '2145473426', 'rferferf'),
(29, 'yoyo', '', '5', 'wq@red.com', '1259684857', 'ererrf'),
(30, 'erqe', 'referf', '5', 'qwe@erf.com', '2148765921', 'rf3wefrw'),
(31, 'qrewwqd', 'qweqwed', '6', 'qwed@fdaf.com', '2145986715', 'qwedwqd'),
(32, 'erq', 'qwqdwe', '9', 'qweq@fv.vie', '3245587816', 'erfqf'),
(35, 'rqwrf', 'qrfq', '8', 'wqefwe@fqwe.in', '1229458426', 'wqedqwed'),
(38, 'reg', 'erg', '4', 'era@f.ve', '2159764846', 'qwedqwe'),
(40, 'rfq', 'wrefe', '7', 'qr@rf.erf', '2126459733', 'wedwq'),
(41, 'qwef', 'qwef', '12', 'weqd@f.qw', '1246597843', 'weq'),
(42, 'werf1431', 'werf143', '6', 'qre@wtgw.wre', '2186492576', 'rqrfqf'),
(44, 'erfsdf', 'qrfq', '5', 'qer@er.rf', '2126689745', 'qrfq'),
(45, 'earfear', 'qfwrfqr', '8', 'qrfq@ef.com', '2126784649', 'rqrefqer'),
(46, 'rfq', 'qwefq', '7', 'qwe@fqer.cwe', '1245927464', 'eqrfq'),
(47, 'qweqwed23d', 'qweq', '7', 'qwe@qf.rt', '2116987645', 'erfqrf'),
(48, 'fwerfwe', 'werfwerfwef', '9', 'qwfq@ref.werfw', '2119784653', 'refewrfe'),
(49, 'vinesh', 'Talpankar', '7', 's@g.c', '1234432112', 'Karwar'),
(50, 'vineshmnm', 'hghvj', '13', 'dhfcj@bmk.com', '1231231234', 'Karwar'),
(51, 'drgdfgd', 'drgrg', '12', 'sdf@df.com', '1232123212', 'Karwar'),
(52, 'Rubie', 'Thomas', '7', 'r.thomas@randatmail.com	', '9365937493', 'Mumbai'),
(53, 'Mark', 'Max', '12', 'mark@gmail.com', '1488394654', 'Kolkata'),
(54, 'Jack', 'Max', '12', 'jack@gmail.com', '1673874362', 'Kolkata'),
(55, 'jeff', 'kdcm', '12', 'dcccc@cs.cc', '1290129012', 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `student_sub`
--

CREATE TABLE `student_sub` (
  `S_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_sub`
--

INSERT INTO `student_sub` (`S_id`, `Sub_id`) VALUES
(24, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 2),
(27, 3),
(27, 4),
(31, 2),
(31, 4),
(31, 5),
(32, 6),
(32, 6),
(35, 6),
(35, 6),
(35, 6),
(38, 5),
(38, 5),
(40, 1),
(40, 3),
(40, 5),
(40, 6),
(41, 1),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(44, 7),
(45, 2),
(45, 3),
(45, 4),
(45, 6),
(45, 7),
(47, 1),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(48, 1),
(48, 5),
(48, 6),
(48, 7),
(49, 2),
(49, 5),
(49, 6),
(50, 1),
(50, 3),
(50, 4),
(50, 5),
(51, 1),
(51, 2),
(51, 3),
(51, 4),
(51, 5),
(51, 6),
(51, 7),
(52, 1),
(52, 2),
(52, 3),
(52, 5),
(52, 6),
(53, 1),
(53, 3),
(53, 7),
(54, 1),
(54, 3),
(54, 4),
(54, 6),
(54, 7),
(55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_id` int(11) NOT NULL,
  `Sub_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Sub_id`, `Sub_name`) VALUES
(2, 'Biology'),
(4, 'Chemistry'),
(7, 'Computer Science'),
(6, 'English'),
(1, 'Math'),
(3, 'Physics'),
(5, 'Social Studies');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_name` (`Sub_name`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `mentor_login`
--
ALTER TABLE `mentor_login`
  ADD UNIQUE KEY `M_id` (`M_id`);

--
-- Indexes for table `mentor_reg`
--
ALTER TABLE `mentor_reg`
  ADD PRIMARY KEY (`M_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `Resume_Link` (`Resume_Link`);

--
-- Indexes for table `mentor_sub`
--
ALTER TABLE `mentor_sub`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `resourcesharing`
--
ALTER TABLE `resourcesharing`
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `sessionmanagement`
--
ALTER TABLE `sessionmanagement`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD UNIQUE KEY `S_id` (`S_id`);

--
-- Indexes for table `student_reg`
--
ALTER TABLE `student_reg`
  ADD PRIMARY KEY (`S_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `student_sub`
--
ALTER TABLE `student_sub`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_id`),
  ADD UNIQUE KEY `Sub_name` (`Sub_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentor_reg`
--
ALTER TABLE `mentor_reg`
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`Sub_name`) REFERENCES `subject` (`Sub_name`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `mentor_login`
--
ALTER TABLE `mentor_login`
  ADD CONSTRAINT `mentor_login_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`);

--
-- Constraints for table `mentor_sub`
--
ALTER TABLE `mentor_sub`
  ADD CONSTRAINT `mentor_sub_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `mentor_sub_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `resourcesharing`
--
ALTER TABLE `resourcesharing`
  ADD CONSTRAINT `resourcesharing_ibfk_1` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `sessionmanagement`
--
ALTER TABLE `sessionmanagement`
  ADD CONSTRAINT `sessionmanagement_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`),
  ADD CONSTRAINT `sessionmanagement_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `sessionmanagement_ibfk_3` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `student_login`
--
ALTER TABLE `student_login`
  ADD CONSTRAINT `student_login_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`);

--
-- Constraints for table `student_sub`
--
ALTER TABLE `student_sub`
  ADD CONSTRAINT `student_sub_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`),
  ADD CONSTRAINT `student_sub_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
