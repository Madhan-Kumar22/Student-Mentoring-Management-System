-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 08:47 PM
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
  `Rating` decimal(3,2) DEFAULT NULL,
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
(14, 'Math', '4.00', 'good satisfactory...ok'),
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
(16, 'Social Studies', '3.00', 'qwe'),
(16, 'English', NULL, NULL),
(17, 'Math', '2.00', 'okay'),
(17, 'Math', '2.00', 'okay'),
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
(19, 'Math', '3.00', 'rtgs'),
(19, 'Biology', NULL, NULL),
(19, 'Physics', NULL, NULL),
(19, 'Chemistry', NULL, NULL),
(19, 'Social Studies', NULL, NULL),
(19, 'English', NULL, NULL),
(19, 'Computer Science', NULL, NULL),
(22, 'Math', NULL, NULL),
(22, 'Biology', '4.00', 'good'),
(22, 'Chemistry', NULL, NULL),
(22, 'English', NULL, NULL),
(23, 'Biology', '5.00', 'sfgbsfb'),
(23, 'Physics', NULL, NULL),
(23, 'Social Studies', NULL, NULL),
(23, 'English', NULL, NULL),
(25, 'Physics', NULL, NULL),
(25, 'Chemistry', NULL, NULL);

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
(22, 1, NULL),
(22, 2, NULL),
(22, 4, 20),
(22, 6, 30),
(23, 2, NULL),
(23, 3, 10),
(23, 5, NULL),
(23, 6, NULL),
(25, 3, 100),
(25, 4, 200);

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
(5, '4tgrgd', 'gtrvfd'),
(6, 'grevfd', 'grevfd'),
(8, 'syrfgsrth', 'wy4th4thr'),
(10, 'erwer', 'werwerfr'),
(11, 'vinesh', '123'),
(13, 'qwe', ''),
(14, 'poi', 'lkj'),
(15, 'ral', 'ral'),
(16, 'wsx', 'qaz'),
(17, 'wsx', 'edc'),
(18, 'okm', 'ijn'),
(19, 'zz', 'zz'),
(22, 'rdqwe', 'qwedwq'),
(23, 'qer', 'qerf'),
(25, '1920', '1920');

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
(1, 'Hulk', NULL, 'hulk@gmail.com', '1237347891', 'Chennai', 'BTech Mech', 'www.linkedin.com/hulk'),
(2, 'Natasha', NULL, 'natasha@gmail.com', '1233829103', 'Andhra', 'BTech Chem', 'www.linkedin.com/natasha'),
(3, 'Tony', 'Stark', 'stark@gmail.com', '1234567891', 'Bengaluru', 'BTech CSE', 'www.linkedin.com/stark-tony'),
(4, 'Strange', NULL, 'strange@gmail.com', '1236543212', 'Kochi', 'BTech EEE', 'www.linkedin.com/strange'),
(5, 'atf', 'srg', 'rgfd@fhb.efd', '2145653298', 'efd', 'tregfd', 'efd.tsrg'),
(6, 'werqe', 'qerfqer', 'qrefqre@sg.yth', '1245895645', 'fdrstgd', 'trgfd', 'etfd.aefd'),
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
(20, 'Vinesh', '', 'jksnd@jns.e', '1256187946', 'qerfqer', 'qerfe', 'qrq.qerf'),
(22, 'qrqrf', 'qwrfqwr', 'qwrqw@eq.reqr', '1249784626', 'qerqef', 'qerfeq', 'qereqr.qereqr'),
(23, 'qreqr', 'qrqer', 'qer@er.wer', '1226484659', 'Bengaluru', 'qerqf', 'qre.erer'),
(24, 'abcd', 'sds', 'abcd@gsd.ds', '1629487659', 'Kolkata', 'arf', 'erfref.aerfar'),
(25, 'reqqref', 'qrefeqrf', 'qrqfr@ereq.qerfq', '1226597846', 'qerf', 'qerfeq', 'qer.qerfq');

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
(22, 1),
(22, 2),
(22, 4),
(22, 6),
(23, 2),
(23, 3),
(23, 5),
(23, 6),
(25, 3),
(25, 4);

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
(49, 23, 2, NULL, 6, '2021-03-19'),
(49, 25, 4, 200, 999, '2021-03-19'),
(49, 23, 6, NULL, 7, '2021-03-18'),
(49, 23, 6, NULL, 2, '2021-03-17'),
(49, 23, 6, NULL, 2, '2021-03-17'),
(49, 19, 5, 55, 5, '2021-03-13'),
(49, 19, 5, 55, 96, '2021-03-25'),
(49, 19, 5, 55, 69, '2021-03-24'),
(49, 19, 5, 55, 16, '2021-03-18'),
(49, 25, 4, 200, 19, '2021-03-19'),
(52, 22, 1, NULL, 100, '2021-03-27'),
(54, 22, 1, NULL, 16, '2021-03-23'),
(55, 22, 1, NULL, 1000, '2023-06-15'),
(55, 19, 1, 1, 4, '2021-03-25'),
(56, 18, 2, 1, 55, '2021-03-21'),
(54, 19, 4, 4, 69, '2021-03-24'),
(54, 18, 3, 130, 5, '2021-03-21');

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
(2, 'qeqerfeqr', ''),
(4, 'fqwrqwr', ''),
(7, 'sthn', ''),
(9, 'qrefqerq', 'qrfqefeq'),
(12, 'kumar121', 'pass121kumar'),
(15, 'swifttaylor', '123taylor'),
(17, 'qerfeq', '123pass'),
(18, 'spider121', 'gwenstacy'),
(19, 'qeg', 'qegqergg'),
(20, 'qerfeqf', 'qefqr134'),
(21, 'qrefqerf', 'qerfqer'),
(22, 'rgv', 'srgfbb'),
(24, 'asdas', 'qrfqwefwq'),
(25, 'wedwedq', 'qwqwdqwed'),
(27, 'referf', 'wreerf'),
(29, 'yoyo', 'qwedqw'),
(30, 'rqwed', 'qqwed'),
(31, 'qwdqwe', 'qwedqew'),
(32, 'qedqw', 'qwedwqed'),
(35, 'wedw', 'qwedwqd'),
(38, 'qwedw', 'qwedwqd'),
(40, 'edew', 'wedqew'),
(41, 'wedqwe', 'qwedqe'),
(42, 'refqerf', 'qrfqrf'),
(44, 'rqef', 'qwrfqer'),
(45, 'qrfqr', 'qwqwe'),
(47, 'wreqf', 'qrefeqr'),
(48, 'refwer', 'qrfwer'),
(49, 'asd', 'zxc'),
(50, 'iop', 'bnm'),
(51, 'as', 'sa'),
(52, 'user123', 'user'),
(54, 'rtw', 'wtrg'),
(55, '2019', '2019'),
(56, '1919', '1919');

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
(1, 'qerqe', 'r', '8', '@ffd.ef', '1234567845', 'qerf'),
(2, 'hello', 'world', '2', 'sdas@hbs.com', '9999999999', 'qqwerfqef'),
(4, 'wtwt', 'wetg', '5', 'werw@gd.com', '1254163254', 'qwfqw'),
(7, 'dghn', 'dghgdn', '5', 'dghd@wr.bgd', '1234578451', 'syst'),
(9, 'Shakti', 'Man', '5', 'erwfq@bhd.com', '1234574120', 'qrqf'),
(12, 'Kumar', '', '10', 'kumar@gmail.com', '1245789512', 'Bengaluru'),
(15, 'swift', '', '4', 'erf@wdfv.com', '1234795216', 'Kochi'),
(16, 'hello', '', '12', 'erf@fe.com', '1524785962', 'rqef'),
(17, 'hello12', '', '7', 'qwr@jndf.com', '1233247216', 'erfqef'),
(18, 'SpiderMan', '', '', 'spider@gmail.com', '1524632574', 'Mumbai'),
(19, 'yt', 'rthrt', '', 'rtsr@ghg.com', '1342154721', 'rtwg'),
(20, 'wrwerf', 'weref', '', 'werwe@wfdv.com', '1245784512', 'wer'),
(21, 'rtg', 'wtgwtg', '', 'wtgw@wg.com', '1524784214', 'rew'),
(22, 'hdg', 'ghngh', '5', 'sh@hfg.vom', '2132654589', 'trgfd'),
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
(52, 'hero', 'zero', '3', 'ad@nf.com', '1256487956', 'Bengaluru'),
(54, 'fgsfbsfg', 'sfsg', '5', 'sfgssf@wrg.gv', '1226597943', 'Karwar'),
(55, 'adatc', 'sdasds', '5', 'ewasd@eeq.erfq', '1625497846', 'ewqd'),
(56, 'sbfilabsfas', 'afsfsfsaf', '15', 'asf@segte.aregae', '1626594879', 'aergeag');

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
(52, 3),
(52, 4),
(52, 5),
(54, 1),
(54, 3),
(54, 5),
(55, 3),
(55, 4),
(56, 2),
(56, 3);

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
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
