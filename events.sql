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
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `conductor1` varchar(255) NOT NULL,
  `conductor2` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `date`, `conductor1`, `conductor2`, `image`) VALUES
(1, 'ACM -Orientation 2015-16', 'Gear up NIT Surat! The new academic year has dawned and ACM NIT Surat is back in action. And we are eager to let the freshers know about us. So all of you out there who have love for computing and everything tech and geeky, join us at the Orientation tomorrow.', '2015-09-02', 'Yash Golecha', 'Rohit Agrawal', 'eventpics/ACM-Orientation2015-16.jpg'),
(2, 'FossWorkshop', 'Been hearing about Open Source and want to contribute but you just didnt know how\r\nACM NIT-Surat brings to you Free and Open Source Software(FOSS) workshop so that you know about GSOC and Open Source world. Your selection can get you a Summer Intern with huge stipends afterall\r\nPrimarily intended for 2nd and 3rd year students. FOSS workshop is also open for 1st year if seats are left after accommodating 2nd and 3rd year.', '2015-10-15', 'Vishnu Teja', 'Palash Oswal', 'eventpics/FossWorkshop.jpg'),
(3, 'TechIQ', 'Here is your chance to put all that knowledge to good use. Show us you are well acquainted and we shall reward you for the same. Come participate in Tech IQ and claim your prize!', '2015-10-17', 'Yash Golecha', 'Rohit Agrawal', 'eventpics/TechIQ.jpg'),
(4, 'Competitive Coding Workshop', 'competitive coding workshop organised by ACM NIT-Surat for the preparation of ACM ICPC.', '2015-10-23', 'Milan Patel', 'Swastik Mundra', 'eventpics/CompetitiveCodingWorkshop.jpg'),
(5, 'Cprogramming', 'All newbie programmers are invited to the workshop on basics of programming languages. Start from the basics and explore further.', '2015-10-27', 'Yash Golecha', 'Lucky Shrivastav', 'eventpics/Cprogramming.jpg'),
(6, 'Epiphany5.1', 'Now that all Online ACM ICPC rounds are over, ACM NIT Surat brings to you our next Epiphany to continue your coding flow.', '2015-11-03', 'Ranjan K', 'Aakash Patel', 'eventpics/Epiphany5.1.jpg'),
(7, 'Capture The Flag', 'Join in and hack through our website, solving head twisting riddles. Scavenge the website, decode, detect, and decrypt all day long in this 24 hour event.', '2015-12-17', 'Kushagra Chauhan', 'Rahul Kannaujiya', 'eventpics/CaptureTheFlag.jpg'),
(8, 'Epiphany5.2', 'Less than two days to go!  Get ready for SVNITs Coding Extravaganza, Epiphany 5.2!', '2016-02-07', 'Ranjan K', 'Aakash Rana', 'eventpics/Epiphany5.2.jpg'),
(9, 'TechIQ4.0', 'All the Tech-minds out there, do you have the wits that outsmart the smartest. TechIQ is back again  The ultimate quiz about technology happenings and computing. Come in teams of 2. Have a cool team name', '2016-03-30', 'Yash Golecha', 'Rohit Agrawal', 'eventpics/TechIQ4.0.jpg'),
(10, 'AMOC', 'ACM NIT Surat brings you the most fascinating event of the season, ACM Month Of Code. AMOC is a month long contest organized in the month of March. It is a collaboration of programmers and developers to code, design and build the idea they are passionate about. If you have any revolutionary idea and want to get recognition, this is the platform you are looking for!', '2016-04-07', 'Yash Golecha', 'Rohit Agrawal', 'eventpics/AMOC.jpg'),
(11, 'ACM Interview', 'Think you have what it takes to be a part of an internationally recognized student chapter. Have a passion for computing and everything tech. Then join us for the interviews. Just in case you need some more convincing, here are some of the many perks that members stand to get. Learn and prepare for the toughest programming contests.', '2016-04-11', 'Yash Golecha', 'Rohit Agrawal', 'eventpics/ACMInterview.jpg'),
(12, 'Orientation2016', 'Greetings from ACM NIT SURAT. We welcome all the techies and geeks. And we are eager to let the freshers know about us. So all of you out there who have love for computing and coding join us at the Orientation', '2016-08-23', 'Anshul Jain', 'Pradeep Ch', 'eventpics/Orientation2016.jpg'),
(13, 'Epiphany6.0', 'Hello coders! Epiphany is back! Gear up your programming skills for another exciting 3-hour college coding contest.', '2016-08-31', 'Anshul Jain', 'Pradeep Ch', 'eventpics/Epiphany6.0.jpg'),
(14, 'Coding Workshop', 'Hope your Preparations for ICPC are going well. To boost up your confidence and to clear up all your doubts we have arranged for a workshop on Coding.', '2016-09-27', 'Pradeep Ch', 'Shriyansh', 'eventpics/CodingWorkshop.jpg'),
(16, 'Geek End', 'Attention! Calling out to all coders and geeks of SVNIT. Get ready for the biggest technical event of this semester. This Saturday and Sunday is a weekend for them common peeps, but for you it is ACM geekend. Show your talent and win prizes worth thousands  For event details stay tuned to our ACM-NIT Surat Facebook Page www.facebook.com/acmnitsurat', '2016-11-12', 'Acm Committee', 'Acm Committee', 'eventpics/GeekEnd.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
