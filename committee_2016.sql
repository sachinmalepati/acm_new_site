-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2016 at 01:20 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitsurat_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `committee_2016`
--

CREATE TABLE IF NOT EXISTS `committee_2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `startYear` int(11) NOT NULL,
  `endYear` int(11) NOT NULL,
  `photoPath` varchar(1024) NOT NULL,
  `fbLink` varchar(255) NOT NULL,
  `twLink` varchar(255) NOT NULL,
  `desigination` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `committee_2016`
--

INSERT INTO `committee_2016` (`id`, `name`, `startYear`, `endYear`, `photoPath`, `fbLink`, `twLink`, `desigination`) VALUES
(1, 'Vishal Singh', 2013, 2014, 'committee/Vishal Singh.jpg', 'https://www.facebook.com/vishh.singh', '', 'Secretary'),
(2, 'Sukant Garg', 2013, 2014, '1', 'https://facebook.com/gargsms', '', 'Web Developer'),
(3, 'Sandip Dev', 2006, 2010, 'https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-ash3/t1.0-9/946042_10152674126855995_1006567060_n.jpg', 'https://www.facebook.com/sandip.dev', 'https://www.twitter.com/devsandip', 'Chairperson'),
(4, 'Hari Ram', 2012, 2013, '1', 'https://www.facebook.com/hariramcp?', 'https://twitter.com/harishajana', 'Vice Chairman '),
(5, 'Nimit Shah', 2011, 2012, 'https://pbs.twimg.com/profile_images/429912467112611841/zQBbBppu.jpeg', 'https://www.facebook.com/shahnimit1', 'https://twitter.com/Nimit_S', 'Secretary'),
(6, 'Tanisha Jain', 2013, 2014, '1', 'https://www.facebook.com/Tanisha.Jain27', '', 'Treasurer'),
(7, 'Jitesh Sunhala', 2012, 2013, '1', 'https://www.facebook.com/JiteshSunhala', '', 'Web Developer'),
(8, 'Aman Verma', 2012, 2013, '1', 'https://facebook.com/aman11dhanpat', 'https://twitter.com/aman11dhanpat', 'Chairperson'),
(9, 'Sourabh Siddharth', 2012, 2013, '1', 'https://www.facebook.com/sidd1811', '', 'Secretary'),
(10, 'Harsha Satya', 2012, 2013, '1', 'https://www.facebook.com/robertsatya', 'https://www.twitter.com/robertsatya', 'Web Developer'),
(11, 'Harsh Agrawal', 2012, 2013, '1', 'https://www.facebook.com/wadduuppp', '', 'Secretary'),
(12, 'Abhinav Sharma', 2013, 2014, '1', 'https://www.facebook.com/abhinav92003', '', 'Problem Setter'),
(13, 'Monika Daryani', 2012, 2013, '1', 'https://www.facebook.com/monika.daryani', '', 'Treasurer'),
(14, 'Kshama Jain', 2013, 2014, '1', 'https://www.facebook.com/kshama.jain.902', '', 'Editor'),
(15, 'Nishit Gajjar', 2013, 2014, '1', 'https://www.facebook.com/nishit.gajjar.52', '', 'Secretary'),
(16, 'Ravi Ojha', 2013, 2014, '1', 'https://www.facebook.com/raviojha21', '', 'Graphic Designer'),
(17, 'Manav Prajapati', 2013, 2014, 'https://lh6.googleusercontent.com/-yHvz_5ja4N0/TiGFK5_SkHI/AAAAAAAAAFU/ln83sqRtbk0/w532-h529-no/DSC00429.jpg', 'https://www.facebook.com/manav245', '', 'Chairperson'),
(18, 'Heer Narang', 2013, 2014, '1', 'https://www.facebook.com/heernarang', '', 'Editor'),
(19, 'Pallavi Khandelwal', 2013, 2014, '1', '', '', 'Vice Chairperson'),
(20, 'Avinash Kundaliya', 2007, 2011, 'http://avinash.me/assets/img/me.jpg', '', 'https://twitter.com/hardfire', 'Vice Chairperson'),
(21, 'Sunil Raiyani', 2013, 2014, '1', 'https://www.facebook.com/cyberdevil.sunil', '', 'Treasurer'),
(22, 'Varun Agrawal', 2011, 2012, 'http://www.gravatar.com/avatar/cc856652c4db97f4eacc9bffa6540ece?s=200', 'https://www.facebook.com/varagrawal', 'https://twitter.com/VarAgrawal', 'Chairman'),
(23, 'Jay Panchal', 2014, 2015, '1', 'https://www.facebook.com/jay.panchal.376', '', 'Chairperson'),
(24, 'Gurvinder Singh', 2014, 2015, '1', '', '', 'Vice Chairperson'),
(25, 'Umang Singhal', 2014, 2015, '', 'http:://www.facebook.com/umang.singhal.10', '', 'Web Developer'),
(26, 'Prashant Arya', 2014, 2015, '1', '', '', 'Secretary'),
(27, 'Deepak Singh', 2014, 2015, '', '', '', 'Secretary'),
(28, 'VLNP Venkatesh', 2014, 2015, '1', '', '', 'Treasurer'),
(29, 'Kushagra Shrivastava', 2014, 2015, '', '', '', 'Treasurer'),
(30, 'Palash Oswal', 2014, 2015, '1', '', '', 'Web Developer'),
(32, 'Jay Bothra', 2014, 2015, '1', '', '', 'Editor'),
(33, 'Saksham Kumar', 2014, 2015, '1', '', '', 'Editor'),
(34, 'Vinay Kumar', 2014, 2015, '1', '', '', 'Problem Setter'),
(35, 'Chaitanya Mattey', 2014, 2015, '1', '', '', 'Designer'),
(36, 'Yash Golechha', 2015, 2016, '1', '', '', 'Chairperson'),
(37, 'Rohit Agarwal', 2015, 2016, '1', '', '', 'Vice Chairperson'),
(38, 'Vishnu Teja', 2015, 2016, '1', 'https://www.facebook.com/ythej', 'https://twitter.com/ythej', 'Web Developer'),
(39, 'Ankit Kumar', 2015, 2016, '1', '', '', 'Secretary'),
(40, 'Lucky Srivastava', 2015, 2016, '1', '', '', 'Secretary'),
(41, 'Aakash Rana', 2015, 2016, '1', '', '', 'Treasurer'),
(42, 'Adesh Kala', 2015, 2016, '1', 'https://www.facebook.com/adesh.kala', 'https://twitter.com/addddeesh', 'Treasurer'),
(43, 'Rahul Kanojia', 2015, 2016, '1', '', '', 'Web Developer'),
(44, 'Riya Kothari', 2015, 2016, '1', '', '', 'Editor'),
(45, 'Vineet Sethia', 2015, 2016, '1', '', '', 'Editor'),
(46, 'Rajan Kasodariya', 2015, 2016, '1', '', '', 'Problem Setter'),
(47, 'Kushagra Chauhan', 2015, 2016, '1', '', '', 'Designer'),
(48, 'Harsh Jadav', 2015, 2016, '1', '', '', 'Designer'),
(49, 'Anshul Jain', 2016, 2017, 'propics/Anshul Jain.jpg', '', '', 'Chairperson'),
(50, 'Pradeep Ch', 2016, 2017, 'propics/Pradeep Ch.jpg', '', '', 'Vice-Chairperson'),
(51, 'Hariom Singh', 2016, 2017, 'propics/Hariom Singh Bias.jpg', '', '', 'Secretary'),
(52, 'Radhesh Davulari', 2016, 2017, 'propics/Radhesh Davulari.jpg', '', '', 'Secretary'),
(53, 'Kiran Dhokane', 2016, 2017, 'propics/Kiran Dhokane.jpg', '', '', 'Secretary'),
(54, 'Ram Narayan Singh', 2016, 2017, 'propics/Ram Narayan Singh.jpg', '', '', 'Treasurer'),
(55, 'Mohith Damarapati', 2016, 2017, 'propics/Mohith Damarapati.jpg', '', '', 'Treasurer'),
(56, 'Sachin Malepati', 2016, 2017, 'propics/Sachin Malepati.jpg', '', '', 'Developer'),
(57, 'Rajul Nahar', 2016, 2017, 'propics/Rajul Nahar.jpg', '', '', 'Developer'),
(58, 'Sagar Kesri', 2016, 2017, 'propics/Sagar Kesri.jpg', '', '', 'Developer'),
(59, 'Asmita  Kumar', 2016, 2017, 'propics/Asmita  Kumar.jpg', '', '', 'Editor'),
(60, 'Sanjay George', 2016, 2017, 'propics/Sanjay George.jpg', '', '', 'Editor'),
(61, 'Pawan Kolhe', 2016, 2017, 'propics/Pawan Kolhe.jpg', '', '', 'Designer'),
(62, 'Pradeep Karwasra', 2016, 2017, 'propics/Pradeep Karwasra.jpg', '', '', 'Designer'),
(63, 'Manish Choudhary', 2016, 2017, 'propics/Manish Choudhary.jpg', '', '', 'Problem Setter'),
(64, 'Sriyansh Srivastava', 2016, 2017, 'propics/Sriyansh Srivastava.jpg', '', '', 'Problem Setter'),
(66, 'Arth Patel', 2011, 2012, '', '', '', 'Vice chair-person '),
(67, 'Ankit Chandra', 2011, 0, '', '', '', 'Secretary '),
(69, 'Ankit Chandra', 2011, 2012, '', '', '', 'Secretary '),
(70, 'Aditya Prajapati', 2011, 2012, '', '', '', 'Treasurer '),
(71, 'Jaimin Gandhi', 2011, 2012, '', '', '', 'Treasurer'),
(72, 'Ganesh Iyer', 2011, 2012, '', '', '', 'Web Developer'),
(73, 'Arvind Jain', 2011, 2012, '', '', '', 'Web Developer ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
