-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:53846
-- Generation Time: Dec 25, 2018 at 02:15 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `c_id_book` int(11) NOT NULL COMMENT 'รหัสหนังสือ',
  `c_book` varchar(50) NOT NULL COMMENT 'ชื่อหนังสือ',
  `c_detail` text NOT NULL COMMENT 'รายละเอียด',
  `c_name` varchar(50) NOT NULL COMMENT 'ชื่อคนที่เพิ่ม',
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันเวลา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `c_id_book`, `c_book`, `c_detail`, `c_name`, `c_date`) VALUES
(20, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'หนังสือดีมาก เข้าใจง่าย', 'เด่นชัย', '2018-11-18 09:45:25'),
(21, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'อ่านกี่ครั้ง ๆ ก็รู้สึกดี กับหนังสือเล่มนี้ ', 'เด่นชัย', '2018-11-18 15:59:03'),
(22, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'หนังสือดีมากครับ เยี่ยมไปเลย', 'บอย', '2018-11-18 16:01:30'),
(23, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'มาอ่านกันเยอะๆนะครับ', 'นิรพล', '2018-11-18 16:14:33'),
(24, 20, 'พจนานุกรม ญี่ปุ่น - ไทย สำหรับชาวไทย', 'ดี', 'นิรพล', '2018-11-18 16:14:53'),
(25, 20, 'พจนานุกรม ญี่ปุ่น - ไทย สำหรับชาวไทย', 'สุดยอดไปเลย', 'บอย', '2018-11-18 16:15:44'),
(26, 19, 'ขวัญเรือน [วารสาร].', 'สนใจครับ', 'บอย', '2018-11-18 16:16:15'),
(27, 18, 'โภชนาการเชิงชีวเคมี', 'สุดยอดไปเลย', 'บอย', '2018-11-18 16:18:25'),
(28, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'มาอ่านกันเยอะๆนะครับ', 'เด่นชัย', '2018-11-19 03:10:53'),
(29, 22, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'ดีมาก', 'เด่นชัย', '2018-11-19 12:10:33'),
(30, 23, 'aa', 'ดีมาก', 'บอย', '2018-12-02 05:53:14'),
(31, 4, 'การเขียนโปรแกรมด้วยภาษาซี = Programming With C', 'ดีมาก', 'บอย', '2018-12-13 04:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `login_member`
--

CREATE TABLE `login_member` (
  `id` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `username` varchar(100) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `password` varchar(100) NOT NULL COMMENT 'รหัสผ่าน',
  `name` varchar(100) NOT NULL COMMENT 'ชื่อ - สกุล',
  `email` varchar(50) NOT NULL COMMENT 'ที่อยู่ E-mail',
  `status` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_member`
--

INSERT INTO `login_member` (`id`, `username`, `password`, `name`, `email`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@hotmail.com', '1'),
(2, 'member', 'member', 'member', 'member@hotmail.com', '2'),
(3, 'aaa', 'aaa', 'อัศนัย', 'singmahan1.7@gmail.com', '0'),
(5, 'bbb', 'bbb', 'บอย', 'boyskylab@outlook.com', '0'),
(6, 'ccc', 'ccc', 'นิรพล', 'nirapon.su58@snru.ac.th', '3'),
(7, 'ddd', 'ddd', 'อัศนัย', 'aaa@hotmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `p_id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `p_name` varchar(50) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `p_email` varchar(50) NOT NULL COMMENT 'ที่อยู่ E-mail',
  `p_detail` text NOT NULL COMMENT 'รายละเอียดปัญหา',
  `p_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันเวลา',
  `status` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`p_id`, `p_name`, `p_email`, `p_detail`, `p_date`, `status`) VALUES
(1, 'อัศนัย', 'singmahan1.7@gmail.com', 'สมัครสมาชิกไม่ได้', '2018-10-06 09:53:43', 'true'),
(2, 'aaaaaa', 'aaaa@aaaa.com', 'asdasdasdasd', '2018-10-06 09:32:11', 'false'),
(3, 'auttapong', 'auttapong.ni58@snru.ac.th', 'efaergargasdgasdgasdgasdgasdg\r\nasgsawddg\r\nasddgsadg\r\nasdg', '2018-10-06 09:58:46', 'true'),
(4, 'เด่นชัย สิงห์มหัน', 'singmahan1.7@gmail.com', 'สมัครสมาชิกไม่ได้เลยครับ รบกวน Admin ตรวจสอบให้หน่อยครับ', '2018-10-09 01:54:42', 'true'),
(5, 'เด่น', 'singmahan1.7@gmail.com', 'สมัครสมาชิกไม่ได้', '2018-10-09 09:02:20', 'true'),
(6, 'ฟฟฟ', 'sss@hotmail.com', 'เข้าระบบไม่ได้ครับ', '2018-10-21 15:28:37', 'true'),
(7, 'เด่นเอง', 'singmahan1.7@gmail.com', 'เข้าสู่ระบบไม่ได้ครับ ตรวจสอบให้หน่อย', '2018-11-09 07:12:10', 'false'),
(8, 'เก๋', 'singmahan1.7@gmail.com', 'สมัครสมาชิกไม่ได้ ไม่รู้ว่าเป็นกับระบบหรือเป็นกับ internet รบกวนตรวจสอบให้ด้วยนะคะ', '2018-11-18 10:04:54', 'true'),
(9, 'เด่นเอง', 'singmahan1.7@gmail.com', 'สมัครสมาชิกไม่ได้ครับ', '2018-11-19 03:28:07', 'false'),
(10, 'ffff', 'dedd@hotmail.com', 'ffff', '2018-11-19 12:21:08', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `problem_block`
--

CREATE TABLE `problem_block` (
  `pb_id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `pb_name` varchar(50) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `pb_email` varchar(50) NOT NULL COMMENT 'ที่อยู่ E-mail',
  `pb_detail` text NOT NULL COMMENT 'รายละเอียดปัญหา',
  `pb_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันเวลา',
  `status` enum('true','false') NOT NULL DEFAULT 'false' COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problem_block`
--

INSERT INTO `problem_block` (`pb_id`, `pb_name`, `pb_email`, `pb_detail`, `pb_date`, `status`) VALUES
(1, 'อัศนัย', 'bbb@gmail.com', 'เข้าสู่ระบบไม่ได้', '2018-10-06 07:40:11', 'false'),
(2, 'อัศนัย', 'boyskylab96@gmail.com', 'casdfsbegadgadgasgas\r\ngasd\r\ngasdgas\r\ngsadg\r\n', '2018-10-06 10:10:37', 'true'),
(3, 'อัศนัย', 'boyskylab@outlook.com', 'sdgasgasdgasdgas\r\ndgasg\r\nadgsa\r\ngasdg\r\n', '2018-10-06 10:12:14', 'true'),
(4, 'อัศนัย แสนศิริ', 'singmahan1.7@gmail.com', 'คือว่า ทำไมเข้าระบบไม่ได้ครับ ทั้งที่เป็นสมาชิกอยู่แล้ว รบกวน Admin ตรวจสอบให้หน่อยนะครับ', '2018-10-09 02:00:11', 'true'),
(5, 'พงศธร', 'fff@gmail.com', 'ทำไมเข้าไม่ได้', '2018-10-09 09:05:00', 'true'),
(6, 'อัศนัย', 'singmahan1.7@gmail.com', 'ทำไมเข้าระบบไม่ได้เห้อออ ', '2018-10-11 16:25:46', 'true'),
(7, 'อัศนัย', 'singmahan1.7@gmail.com', 'fffff', '2018-10-12 02:28:05', 'true'),
(8, 'อัศนัย', 'singmahan1.7@gmail.com', 'ggggg', '2018-10-12 03:43:04', 'true'),
(9, 'อัศนัย', 'singmahan1.7@gmail.com', 'dddd', '2018-10-12 06:14:23', 'false'),
(10, 'อัศนัย', 'singmahan1.7@gmail.com', 'ทำไมเข้าระบบไม่ได้', '2018-10-12 07:06:01', 'true'),
(11, 'อัศนัย', 'singmahan1.7@gmail.com', 'ปลด block แหน่ครับผม เข้าบ่ได้ครับ', '2018-10-13 07:52:03', 'true'),
(12, 'พงศธร', 'nirapon.su58@snru.ac.th', 'คือเข้าระบบบ่ได้ครับ มันเป็นหยัง', '2018-10-13 08:00:03', 'true'),
(13, 'อัศนัย', 'singmahan1.7@gmail.com', 'คือเข้าระบบบ่ได้สะครับ', '2018-10-17 14:21:34', 'false'),
(14, 'อัศนัย', 'singmahan1.7@gmail.com', 'fargarb', '2018-10-21 11:49:03', 'true'),
(15, 'นิรพล', 'nirapon.su58@snru.ac.th', 'ทำไมเข้าไม่ได้', '2018-11-09 07:13:35', 'false'),
(16, 'นิรพล', 'nirapon.su58@snru.ac.th', 'เข้าใช้งานระบบไม่ได้ค่ะ ไม่รู้ว่ามีปัญหาอะไร รบกวนตรวจสอบให้ด้วยนะคะ', '2018-11-18 10:01:21', 'true'),
(17, 'นิรพล', 'nirapon.su58@snru.ac.th', 'ตรวจสอบให้หน่อยครับ ทำไมเข้าใช้งานระบบไม่ได้', '2018-11-19 03:25:55', 'false'),
(18, 'เด่นชัย', 'singmahan1.7@gmail.com', 'ddd', '2018-11-19 12:19:27', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT 'ประเภทหนังสือ',
  `b_name` varchar(200) NOT NULL COMMENT 'ชื่อหนังสือ',
  `b_dcall` varchar(50) NOT NULL COMMENT 'รหัสหนังสือ',
  `b_author` varchar(200) NOT NULL COMMENT 'ชื่อผู้แต่ง',
  `b_print` varchar(50) NOT NULL COMMENT 'ครั้งที่พิมพ์',
  `b_imprint` varchar(200) NOT NULL COMMENT 'พิมพลักษณ์',
  `b_physical` varchar(200) NOT NULL COMMENT 'ลักษณะทางกายภาพ',
  `b_heading` varchar(200) NOT NULL COMMENT 'หัวเรื่อง',
  `b_isbn` varchar(50) NOT NULL COMMENT 'ISBN',
  `b_briefly` text NOT NULL COMMENT 'เนื้อหาสังเขป',
  `b_img1` varchar(50) NOT NULL COMMENT 'รูปภาพที่ 1 ',
  `b_img2` varchar(50) NOT NULL COMMENT 'รูปภาพที่ 2',
  `b_img3` varchar(50) NOT NULL COMMENT 'รูปภาพที่ 3 ',
  `date` date NOT NULL COMMENT 'วันที่เพิ่ม',
  `p_view` int(30) NOT NULL COMMENT 'การดู',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT 'จำนวน rating',
  `rating_count` int(11) NOT NULL COMMENT 'ค่าเฉลี่ย rating',
  `comment_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `type_id`, `b_name`, `b_dcall`, `b_author`, `b_print`, `b_imprint`, `b_physical`, `b_heading`, `b_isbn`, `b_briefly`, `b_img1`, `b_img2`, `b_img3`, `date`, `p_view`, `rating`, `rating_count`, `comment_count`) VALUES
(2, 1, 'Microsoft Office 2010', '005.369 พ53ม 2553', 'เพ็ญนภา สำเนียง.', '-', '-', '-', '-', '-', 'หนังสือที่จะช่วยให้คุณเรียนรู้การใช้งาน Microsoft Office 2010 ได้ด้วยวิธีง่ายๆ ทั้ง Word, Excel, PowerPoint, Access และ Outlook ในเล่มได้อธิบายเนื้อหาโดยละเอียดในแต่ละเครื่องมือการใช้งาน พร้อมตัวอย่างหลากหลายและภาพประกอบชัดเจน สามารถเรียนรู้ได้ด้วยตัวเอง', 'img_5bb78b966f232.jpg', 'img_5bb78b966f236.jpg', 'img_5bb78b966f239.jpg', '2018-10-05', 1, 0, 0, 0),
(3, 1, 'php', '005.276 ก34พ 2552', 'กิตติ ภักดีวัฒนะกุล.', '-', '-', '-', '-', '-', '-', 'img_5bb78bee8eace.jpg', 'img_5bb78bee8ead3.jpg', 'img_5bb78bee8ead6.jpg', '2018-11-15', 3, 0, 0, 0),
(4, 1, 'การเขียนโปรแกรมด้วยภาษาซี = Programming With C', '005.133 อ86ก 2559', 'โอภาส เอี่ยมสิริวงศ์.', '-', '-', '-', '-', '-', '-', 'img_5bb78ca7bea9f.jpg', 'img_5bb78ca7beaa4.jpg', 'img_5bb78ca7beaa7.jpg', '2018-10-05', 15, 0, 0, 2),
(5, 1, 'คู่มือพัฒนาโปรแกรม Android ฉบับสร้างสื่อการสอน', '005.432 จ111ค 2559', 'จักรชัย โสอินทร์.', '-', 'กรุงเทพฯ: โปรวิชั่น, 2559.', '552 หน้า:ภาพประกอบ;24 ซม.', 'สื่อการสอน.  	แอนดรอยด์(ระบบปฏิบัติการคอมพิวเตอร์).', '9786162045981', ' \"คู่มือพัฒนาโปรแกรม Android ฉบับสร้างสื่อการสอน\" นำเสนอวิธีการเขียนโปรแกรม Android เพื่อสร้างสื่อการสอนให้น่าสนใจ พร้อมฟังก์ชันเสริมต่างๆ และเกมเบื้องต้น โดยอธิบาย เป็นขั้นเป็นตอนตั้งแต่ติดตั้งจนใช้งานได้จริง ทำงานได้ทั้งส่วน Emulator ติดตั้งบนโทรศัพท์เคลื่อนที่จริง และเผยแพร่บน Google Play ทันสมัยกับการปรับปรุงใหม่บน Android Studio เหมาะกับนักเรียน นักศึกษา ครูอาจารย์ ที่ต้องเรียนรู้การเขียนโปรแกรม Android สำหรับส้างสื่อการสอนและเกมเบื้องต้น', 'img_5bb78d3a040b2.jpg', 'img_5bb78d3a040b8.jpg', 'img_5bb78d3a040bb.jpg', '2018-10-05', 67, 4, 22, 7),
(17, 1, 'อุณหพลศาสตร์ขั้นพื้นฐาน', '536.7 ว17อ 2560', 'วรพจน์ งามชมภู.', '-', '-', '-', '-', '-', 'บทที่ 1 จะเป็นการกล่าวถึงพื้นฐานทางอุณหภูมิศาสตร์โดยทั่วๆไป อาทิเช่น มิติและหน่วย คุณสมบัติ ระบบ กระบวนการ วัฏจักร\r\nรวมถึงอุปกรณ์การวัดความดัน บทที่ 2 จะกล่าวถึงสารบริสุทธิ์ สถานะของสารบริสุทธิ์ แผนภาพต่างๆ การเปลี่ยนสถานะ ตารางคุณสมบัติ เป็นต้น ', 'img_5be9144b08ab5.jpg', 'img_5be9144b0acc1.jpg', 'noimage.jpg', '2018-11-12', 1, 0, 0, 0),
(18, 1, 'โภชนาการเชิงชีวเคมี', '574.192 ว17ภ 2561', 'วรวัฒน์ พรหมเด่น.', '-', '-', '-', '-', '-', 'ตำรานี้ประกอบด้วยเนื้อหาจำนวน 10 บทที่บูรณาการหลักโภชนาการและองค์ความรู้ทางชีวเคมี เพื่ออธิบายกลไกการเปลี่ยนแปลง\r\nของสารอาหารที่รับประทานเข้าไปผ่านกระบวนการย่อยและวิถีเมแทบอลิซึม เพื่อให้ได้พลังงานและประโยชน์ต่อร่างกาย', 'img_5be914b766dce.jpg', 'img_5be914b7687e9.jpg', 'noimage.jpg', '2018-11-12', 7, 3, 1, 1),
(19, 4, 'ขวัญเรือน [วารสาร].', '-', 'ศรีสยามการพิมพ์.', '-', 'กรุงเทพฯ : ศรีสยามการพิมพ์, มปป.', '-', '-', '-', '-', 'img_5be915847ac98.jpg', 'noimage.jpg', 'noimage.jpg', '2018-11-12', 3, 0, 0, 1),
(20, 3, 'พจนานุกรม ญี่ปุ่น - ไทย สำหรับชาวไทย', 'อ 403 ต21พ', 'Tomita, Takejiro.', '-', 'กรุงเทพฯ : สมาคมเพื่อพัฒนาการศึกษาและวัฒนธรรมไทย, 2538.', '451 หน้า :ภาพประกอบ.', '-', '9748922901', '-', 'img_5be9327f5f2b4.jpg', 'noimage.jpg', 'noimage.jpg', '2018-11-12', 6, 0, 0, 2),
(22, 2, 'ผลงานวิจัยของมูลนิธิโครงการหลวง ประจำปี 2551', 'วจ 016 ม417ย 2552', 'ฝ่ายวิจัย มูลนิธิโครงการหลวง.', '-', '-', '-', '-', '-', '-', 'img_5be9671c51ad1.jpg', 'noimage.jpg', 'noimage.jpg', '2018-11-12', 38, 5, 5, 6),
(23, 1, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'img_5bf2a8ee21855.jpg', 'noimage.jpg', 'noimage.jpg', '2018-11-19', 9, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book_type`
--

CREATE TABLE `tbl_book_type` (
  `type_id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `type_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภท',
  `datetime` date NOT NULL COMMENT 'วันที่เพิ่ม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_book_type`
--

INSERT INTO `tbl_book_type` (`type_id`, `type_name`, `datetime`) VALUES
(1, 'หนังสือทั่วไป', '2018-10-17'),
(2, 'วิจัย / วิทยานิพนธ์', '2018-08-03'),
(3, 'หนังสืออ้างอิง', '2018-08-03'),
(4, 'วารสาร นิตยสาร', '2018-08-03'),
(5, 'เยาวชน', '2018-09-25'),
(6, 'การ์ตูน', '2018-11-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `login_member`
--
ALTER TABLE `login_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `problem_block`
--
ALTER TABLE `problem_block`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book_type`
--
ALTER TABLE `tbl_book_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `login_member`
--
ALTER TABLE `login_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `problem_block`
--
ALTER TABLE `problem_block`
  MODIFY `pb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_book_type`
--
ALTER TABLE `tbl_book_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
