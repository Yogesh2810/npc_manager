-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 11:22 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db_8830`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `area_name`) VALUES
(1, 1, 'Andheri'),
(2, 1, 'Bandra'),
(3, 1, 'Chembur'),
(4, 1, 'Dadar'),
(5, 1, 'Goregaon'),
(6, 1, 'Juhu'),
(7, 1, 'Kurla'),
(8, 1, 'Malad'),
(9, 1, 'Mulund'),
(10, 1, 'Powai'),
(11, 1, 'Santacruz'),
(12, 1, 'Vikhroli'),
(13, 1, 'Worli'),
(14, 1, 'Vasai'),
(15, 1, 'Borivali'),
(16, 1, 'Navi Mumbai'),
(17, 1, 'Thane'),
(18, 1, 'Kandivali'),
(19, 1, 'Virar'),
(20, 1, 'Bhayandar'),
(21, 1, 'Mira Road'),
(22, 1, 'Ghatkopar'),
(23, 1, 'Vile Parle'),
(24, 1, 'Sion'),
(25, 1, 'Colaba');

-- --------------------------------------------------------

--
-- Table structure for table `christian_female_names`
--

CREATE TABLE `christian_female_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `christian_female_names`
--

INSERT INTO `christian_female_names` (`id`, `name`) VALUES
(1, 'Elizabeth'),
(2, 'Mary'),
(3, 'Sarah'),
(4, 'Anne'),
(5, 'Nancy'),
(6, 'Laura'),
(7, 'Susan'),
(8, 'Jessica'),
(9, 'Margaret'),
(10, 'Karen'),
(11, 'Lisa'),
(12, 'Betty'),
(13, 'Dorothy'),
(14, 'Sandra'),
(15, 'Ashley'),
(16, 'Kimberly'),
(17, 'Donna'),
(18, 'Emily'),
(19, 'Michelle'),
(20, 'Carol'),
(21, 'Amanda'),
(22, 'Melissa'),
(23, 'Deborah'),
(24, 'Stephanie'),
(25, 'Rebecca');

-- --------------------------------------------------------

--
-- Table structure for table `christian_male_names`
--

CREATE TABLE `christian_male_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `christian_male_names`
--

INSERT INTO `christian_male_names` (`id`, `name`) VALUES
(1, 'John'),
(2, 'William'),
(3, 'James'),
(4, 'Charles'),
(5, 'Robert'),
(6, 'Joseph'),
(7, 'Thomas'),
(8, 'David'),
(9, 'Michael'),
(10, 'Daniel'),
(11, 'Paul'),
(12, 'Mark'),
(13, 'Donald'),
(14, 'George'),
(15, 'Kenneth'),
(16, 'Steven'),
(17, 'Edward'),
(18, 'Brian'),
(19, 'Ronald'),
(20, 'Anthony'),
(21, 'Kevin'),
(22, 'Jason'),
(23, 'Matthew'),
(24, 'Gary'),
(25, 'Timothy');

-- --------------------------------------------------------

--
-- Table structure for table `christian_surnames`
--

CREATE TABLE `christian_surnames` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `christian_surnames`
--

INSERT INTO `christian_surnames` (`id`, `surname`) VALUES
(1, 'Smith'),
(2, 'Johnson'),
(3, 'Williams'),
(4, 'Jones'),
(5, 'Brown'),
(6, 'Davis'),
(7, 'Miller'),
(8, 'Wilson'),
(9, 'Moore'),
(10, 'Taylor'),
(11, 'Anderson'),
(12, 'Thomas'),
(13, 'Jackson'),
(14, 'White'),
(15, 'Harris'),
(16, 'Martin'),
(17, 'Thompson'),
(18, 'Garcia'),
(19, 'Martinez'),
(20, 'Robinson'),
(21, 'Clark'),
(22, 'Rodriguez'),
(23, 'Lewis'),
(24, 'Lee'),
(25, 'Walker');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Chennai'),
(3, 'Kochi'),
(4, 'Lucknow'),
(5, 'Jaipur'),
(6, 'Bengaluru'),
(7, 'Ahmedabad'),
(8, 'Hyderabad'),
(9, 'Kolkata'),
(10, 'Bhopal'),
(11, 'Gurugram'),
(12, 'Patna'),
(13, 'Chandigarh'),
(14, 'Bhubaneswar'),
(15, 'Ranchi'),
(16, 'Guwahati'),
(17, 'Raipur'),
(18, 'Dehradun'),
(19, 'Shimla'),
(20, 'Agartala'),
(21, 'Shillong'),
(22, 'Imphal'),
(23, 'Kohima'),
(24, 'Panaji'),
(25, 'Itanagar');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `state_id`, `district_name`) VALUES
(1, 1, 'Mumbai District'),
(2, 2, 'Chennai District'),
(3, 3, 'Ernakulam'),
(4, 4, 'Lucknow District'),
(5, 5, 'Jaipur District'),
(6, 6, 'Bangalore Urban'),
(7, 7, 'Ahmedabad District'),
(8, 8, 'Hyderabad District'),
(9, 9, 'Kolkata District'),
(10, 10, 'Bhopal District'),
(11, 11, 'Gurgaon District'),
(12, 12, 'Patna District'),
(13, 13, 'S.A.S. Nagar'),
(14, 14, 'Khurda'),
(15, 15, 'Ranchi District'),
(16, 16, 'Kamrup Metropolitan'),
(17, 17, 'Raipur District'),
(18, 18, 'Dehradun District'),
(19, 19, 'Shimla District'),
(20, 20, 'West Tripura'),
(21, 21, 'East Khasi Hills'),
(22, 22, 'Imphal West'),
(23, 23, 'Kohima District'),
(24, 24, 'North Goa'),
(25, 25, 'Papum Pare');

-- --------------------------------------------------------

--
-- Table structure for table `generated_people`
--

CREATE TABLE `generated_people` (
  `unique_id_no` varchar(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(11) NOT NULL,
  `religion` enum('Hindu','Muslim','Christian','Sikh') NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `account_id` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generated_people`
--

INSERT INTO `generated_people` (`unique_id_no`, `first_name`, `middle_name`, `last_name`, `sex`, `birth_date`, `age`, `religion`, `street_address`, `city_name`, `state_name`, `country_name`, `account_id`, `phone_number`) VALUES
('UID-09HEM58JNW', 'Nitin', 'Anil', 'Rana', 'Male', '1961-08-17', 62, 'Hindu', 'Colaba', 'Imphal', 'Manipur', 'India', 'UID-Y4JMAC2PB9', '+912021660360'),
('UID-0EQQIA0FAL', 'Sunil', 'Rita', 'Kapoor', 'Female', '1997-09-02', 26, 'Christian', 'Mira Road', 'Chennai', 'Tamil Nadu', 'India', 'UID-4X9OTR21VO', '+917107547723'),
('UID-2CW6WVBGZV', 'Arjun', '', 'Chatterjee', 'Female', '1960-03-17', 64, 'Sikh', 'Ghatkopar', 'Chandigarh', 'Punjab', 'India', 'UID-1KRF1715P3', '+911299790430'),
('UID-3BO46BQC5B', 'Kali', '', 'Lal', 'Female', '2002-03-24', 22, 'Hindu', 'Virar', 'Dehradun', 'Uttarakhand', 'India', 'UID-VDF4H8UBSM', '+916620180205'),
('UID-45WID1UB4U', 'Krishna', 'Bina', 'Mehra', 'Female', '1975-07-24', 48, 'Muslim', 'Borivali', 'Bhopal', 'Madhya Pradesh', 'India', 'UID-VGP7EUQ9BW', '+911456724537'),
('UID-4JAOPCYTVG', 'Rajesh', 'Ganesh', 'Srivastava', 'Female', '1988-05-29', 35, 'Muslim', 'Sion', 'Imphal', 'Manipur', 'India', 'UID-UCK0V8LVXW', '+914751654362'),
('UID-55KHC9VYOQ', 'Ajay', 'Lata', 'Malhotra', 'Male', '1993-10-29', 30, 'Hindu', 'Sion', 'Itanagar', 'Arunachal Pradesh', 'India', 'UID-YHMYMF2CG9', '+918949190436'),
('UID-5XZ767YLCW', 'Neela', 'Priya', 'Malhotra', 'Male', '1972-07-27', 51, 'Muslim', 'Andheri', 'Itanagar', 'Arunachal Pradesh', 'India', 'UID-SOAWL4BG98', '+917733263212'),
('UID-6K1U76AL0P', 'Prakash', 'Pankaj', 'Patel', 'Male', '1960-07-11', 63, 'Hindu', 'Kurla', 'Lucknow', 'Uttar Pradesh', 'India', 'UID-MZ4OTH01X0', '+916731522413'),
('UID-6MRXFG9C7B', 'Raj', 'Mukesh', 'Gupta', 'Male', '1994-10-16', 29, 'Muslim', 'Vikhroli', 'Bengaluru', 'Karnataka', 'India', 'UID-U4DX441Q0Z', '+918145636075'),
('UID-6P2SCDMOLG', 'Neela', 'Raj', 'Mehra', 'Female', '1983-12-17', 40, 'Muslim', 'Ghatkopar', 'Mumbai', 'Maharashtra', 'India', 'UID-E4TNYW2PAZ', '+911745257994'),
('UID-73RLHBLCA8', 'Ram', '', 'Verma', 'Female', '2004-10-30', 19, 'Hindu', 'Bandra', 'Bhubaneswar', 'Odisha', 'India', 'UID-6KNHECF5CW', '+912214847463'),
('UID-7GG4QHVX5Z', 'Manoj', '', 'Lal', 'Female', '1966-07-28', 57, 'Muslim', 'Malad', 'Ranchi', 'Jharkhand', 'India', 'UID-ZHBIEWAS09', '+910557820608'),
('UID-7J3DVK29CL', 'Ravi', 'Ravi', 'Srivastava', 'Female', '2003-01-02', 21, 'Sikh', 'Worli', 'Chennai', 'Tamil Nadu', 'India', 'UID-DY2YBX3VKD', '+917760530032'),
('UID-7X278TTY63', 'Raj', 'Suresh', 'Kumar', 'Female', '1965-05-27', 58, 'Hindu', 'Mulund', 'Lucknow', 'Uttar Pradesh', 'India', 'UID-4BBUI1XGHQ', '+915106643100'),
('UID-81U2UJSRYZ', 'Lakshmi', 'Neela', 'Rana', 'Male', '1961-05-22', 62, 'Sikh', 'Thane', 'Imphal', 'Manipur', 'India', 'UID-2DME5TNTG0', '+914799530124'),
('UID-81UXKXWVOZ', 'Prakash', '', 'Raj', 'Male', '1989-12-27', 34, 'Muslim', 'Kurla', 'Gurugram', 'Haryana', 'India', 'UID-72GR3BDHLO', '+912919037424'),
('UID-9J83I981DB', 'Rajesh', 'Anil', 'Thakur', 'Female', '1982-09-14', 41, 'Hindu', 'Chembur', 'Chennai', 'Tamil Nadu', 'India', 'UID-PAE1FS0GP3', '+910479597164'),
('UID-9NKY234R27', 'Rahul', '', 'Raj', 'Female', '1969-02-06', 55, 'Muslim', 'Vile Parle', 'Kochi', 'Kerala', 'India', 'UID-TLHFNJ02KV', '+910374344302'),
('UID-AJQ74OHMV6', 'Rita', 'Usha', 'Pandey', 'Female', '1982-02-03', 42, 'Hindu', 'Vasai', 'Agartala', 'Tripura', 'India', 'UID-T94ILQ5ARH', '+918472666291'),
('UID-BWKYMUAYJ5', 'Gita', '', 'Kumar', 'Male', '1985-12-18', 38, 'Hindu', 'Sion', 'Raipur', 'Chhattisgarh', 'India', 'UID-AZZN6P0QX7', '+915025929849'),
('UID-DIHDXMPISV', 'Sheela', '', 'Bhatnagar', 'Male', '1957-05-29', 66, 'Muslim', 'Bandra', 'Mumbai', 'Maharashtra', 'India', 'UID-I8T2H62X38', '+918921231140'),
('UID-DLJXQ05ZQH', 'Anita', '', 'Bhatnagar', 'Male', '1994-03-22', 30, 'Christian', 'Andheri', 'Panaji', 'Goa', 'India', 'UID-Y427T65I54', '+914444343065'),
('UID-DR8EH11HM0', 'Nitin', '', 'Lal', 'Female', '1984-06-29', 39, 'Christian', 'Worli', 'Guwahati', 'Assam', 'India', 'UID-ZL3IJLWXV3', '+914375368513'),
('UID-EBEHDZ628A', 'Rita', '', 'Patel', 'Female', '1954-11-18', 69, 'Christian', 'Sion', 'Agartala', 'Tripura', 'India', 'UID-K3JHMTXNNU', '+919284598066'),
('UID-ELCVUE56N5', 'Mahesh', '', 'Seth', 'Male', '1955-04-11', 69, 'Sikh', 'Navi Mumbai', 'Raipur', 'Chhattisgarh', 'India', 'UID-QWDFDSO4G0', '+911509692185'),
('UID-G2PMBQE8MO', 'Parvati', 'Geeta', 'Jain', 'Male', '1979-04-19', 45, 'Muslim', 'Santacruz', 'Ahmedabad', 'Gujarat', 'India', 'UID-5MVENY2QF3', '+910835858912'),
('UID-G7Z7HXVVWR', 'Santosh', 'Rahul', 'Chopra', 'Female', '1959-01-14', 65, 'Muslim', 'Ghatkopar', 'Imphal', 'Manipur', 'India', 'UID-JD6ZQL0QVX', '+910812742864'),
('UID-I7OWUABQAP', 'Sita', '', 'Jain', 'Male', '1961-09-14', 62, 'Christian', 'Worli', 'Guwahati', 'Assam', 'India', 'UID-M3Z2QQ7UDL', '+918631611406'),
('UID-JAYWR3MHQL', 'Saraswati', '', 'Jain', 'Female', '2001-07-01', 22, 'Christian', 'Malad', 'Gurugram', 'Haryana', 'India', 'UID-EB92WN3NHL', '+911267682766'),
('UID-K1ZCEYN7A0', 'Geeta', 'Anjali', 'Srivastava', 'Female', '2006-02-22', 18, 'Sikh', 'Malad', 'Hyderabad', 'Andhra Pradesh', 'India', 'UID-TIFYOT2KQY', '+912323900722'),
('UID-KU21V6YT59', 'Manoj', 'Mahesh', 'Das', 'Female', '1960-12-09', 63, 'Sikh', 'Powai', 'Dehradun', 'Uttarakhand', 'India', 'UID-FPMUNQHPK2', '+919914903352'),
('UID-LNZJU3KSVD', 'Gita', 'Kavita', 'Kumar', 'Female', '1973-06-08', 50, 'Hindu', 'Bandra', 'Hyderabad', 'Andhra Pradesh', 'India', 'UID-PBPC1CWGW1', '+911020432449'),
('UID-M0EJBGB57I', 'Meena', 'Rajesh', 'Raj', 'Male', '1992-01-20', 32, 'Hindu', 'Andheri', 'Imphal', 'Manipur', 'India', 'UID-LJKG7NX78V', '+911297741891'),
('UID-MH46ROKBTA', 'Prakash', '', 'Thakur', 'Male', '1993-11-08', 30, 'Muslim', 'Thane', 'Chennai', 'Tamil Nadu', 'India', 'UID-3U5NIWV7NK', '+911945083896'),
('UID-MQXWY4A78N', 'Geeta', '', 'Seth', 'Female', '1978-05-20', 45, 'Sikh', 'Malad', 'Itanagar', 'Arunachal Pradesh', 'India', 'UID-J5GRRCEPGZ', '+917889381963'),
('UID-N7WNDR2PWB', 'Kali', '', 'Rana', 'Male', '1990-06-05', 33, 'Sikh', 'Juhu', 'Bhopal', 'Madhya Pradesh', 'India', 'UID-9N65QB5SPW', '+910389681493'),
('UID-NERQ84QJKI', 'Bina', 'Asha', 'Chopra', 'Female', '1967-12-05', 56, 'Hindu', 'Bandra', 'Shimla', 'Himachal Pradesh', 'India', 'UID-2PIXYQ4BW4', '+911062983326'),
('UID-PK3D9U30WT', 'Pooja', 'Amit', 'Srivastava', 'Male', '1976-05-12', 48, 'Hindu', 'Powai', 'Chennai', 'Tamil Nadu', 'India', 'UID-61EDMR4OTQ', '+913890530399'),
('UID-PNS094GBWI', 'Vijay', 'Anil', 'Joshi', 'Male', '1972-05-03', 52, 'Christian', 'Worli', 'Jaipur', 'Rajasthan', 'India', 'UID-MFMO34B309', '+911691796353'),
('UID-QFJHTCGQPS', 'Neela', '', 'Chatterjee', 'Male', '1980-11-26', 43, 'Sikh', 'Juhu', 'Bhopal', 'Madhya Pradesh', 'India', 'UID-AMF3ORQN8V', '+918578949127'),
('UID-R0RNAB2MO9', 'Suresh', 'Shiva', 'Gupta', 'Male', '1964-07-11', 59, 'Hindu', 'Vile Parle', 'Bhubaneswar', 'Odisha', 'India', 'UID-CGDA1S8VIN', '+913488633451'),
('UID-RH5F0DLFTS', 'Parvati', '', 'Prasad', 'Female', '1968-08-14', 55, 'Hindu', 'Mulund', 'Kolkata', 'West Bengal', 'India', 'UID-SHZ475TOJN', '+910425346379'),
('UID-S7VWGI79TO', 'Lakshmi', '', 'Jain', 'Male', '1958-01-28', 66, 'Hindu', 'Bandra', 'Lucknow', 'Uttar Pradesh', 'India', 'UID-EAKVZPMP8R', '+918795364708'),
('UID-SOELQSW3Z1', 'Shanti', '', 'Prasad', 'Female', '1985-10-12', 38, 'Christian', 'Borivali', 'Panaji', 'Goa', 'India', 'UID-QCX89SN2FZ', '+917084834568'),
('UID-T0XB97E7U9', 'Mukesh', '', 'Kumar', 'Male', '1985-03-08', 39, 'Hindu', 'Bhayandar', 'Hyderabad', 'Andhra Pradesh', 'India', 'UID-2FK8IPLUYM', '+917990748273'),
('UID-XXEDWNE1OA', 'Pooja', '', 'Kumar', 'Female', '1964-12-24', 59, 'Sikh', 'Vile Parle', 'Shillong', 'Meghalaya', 'India', 'UID-U389NKTEBO', '+918322070273'),
('UID-Y062N8VAII', 'Radha', 'Ajay', 'Srivastava', 'Male', '2001-02-23', 23, 'Muslim', 'Navi Mumbai', 'Itanagar', 'Arunachal Pradesh', 'India', 'UID-0ZOY8U3JD9', '+916761589782'),
('UID-YR7GZ0GEGV', 'Prakash', 'Ganesh', 'Lal', 'Male', '1966-10-02', 57, 'Muslim', 'Santacruz', 'Shimla', 'Himachal Pradesh', 'India', 'UID-V4NJZ2F7XA', '+914796321191'),
('UID-ZBCE3WA72D', 'Anita', '', 'Joshi', 'Female', '2002-08-04', 21, 'Muslim', 'Virar', 'Jaipur', 'Rajasthan', 'India', 'UID-U5WCWNXV6T', '+912318781654');

-- --------------------------------------------------------

--
-- Table structure for table `hindu_female_names`
--

CREATE TABLE `hindu_female_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hindu_female_names`
--

INSERT INTO `hindu_female_names` (`id`, `name`) VALUES
(1, 'Sita'),
(2, 'Lakshmi'),
(3, 'Saraswati'),
(4, 'Kali'),
(5, 'Parvati'),
(6, 'Radha'),
(7, 'Anita'),
(8, 'Meena'),
(9, 'Asha'),
(10, 'Neela'),
(11, 'Gita'),
(12, 'Priya'),
(13, 'Rani'),
(14, 'Shanti'),
(15, 'Indira'),
(16, 'Bina'),
(17, 'Lata'),
(18, 'Sheela'),
(19, 'Kavita'),
(20, 'Pooja'),
(21, 'Rita'),
(22, 'Anjali'),
(23, 'Geeta'),
(24, 'Usha'),
(25, 'Manju');

-- --------------------------------------------------------

--
-- Table structure for table `hindu_male_names`
--

CREATE TABLE `hindu_male_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hindu_male_names`
--

INSERT INTO `hindu_male_names` (`id`, `name`) VALUES
(1, 'Krishna'),
(2, 'Arjun'),
(3, 'Ram'),
(4, 'Shiva'),
(5, 'Raj'),
(6, 'Amit'),
(7, 'Vijay'),
(8, 'Ajay'),
(9, 'Sanjay'),
(10, 'Ravi'),
(11, 'Anil'),
(12, 'Sunil'),
(13, 'Deepak'),
(14, 'Manoj'),
(15, 'Nitin'),
(16, 'Pankaj'),
(17, 'Rahul'),
(18, 'Rajesh'),
(19, 'Suresh'),
(20, 'Harish'),
(21, 'Santosh'),
(22, 'Mahesh'),
(23, 'Mukesh'),
(24, 'Ganesh'),
(25, 'Prakash');

-- --------------------------------------------------------

--
-- Table structure for table `hindu_surnames`
--

CREATE TABLE `hindu_surnames` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hindu_surnames`
--

INSERT INTO `hindu_surnames` (`id`, `surname`) VALUES
(1, 'Sharma'),
(2, 'Verma'),
(3, 'Gupta'),
(4, 'Kumar'),
(5, 'Singh'),
(6, 'Mehra'),
(7, 'Patel'),
(8, 'Chopra'),
(9, 'Jain'),
(10, 'Seth'),
(11, 'Bose'),
(12, 'Das'),
(13, 'Joshi'),
(14, 'Rana'),
(15, 'Kapoor'),
(16, 'Malhotra'),
(17, 'Bhatnagar'),
(18, 'Gandhi'),
(19, 'Pandey'),
(20, 'Chatterjee'),
(21, 'Lal'),
(22, 'Thakur'),
(23, 'Prasad'),
(24, 'Srivastava'),
(25, 'Raj');

-- --------------------------------------------------------

--
-- Table structure for table `muslim_female_names`
--

CREATE TABLE `muslim_female_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muslim_female_names`
--

INSERT INTO `muslim_female_names` (`id`, `name`) VALUES
(1, 'Aisha'),
(2, 'Fatima'),
(3, 'Mariam'),
(4, 'Khadija'),
(5, 'Asma'),
(6, 'Zara'),
(7, 'Hana'),
(8, 'Sadia'),
(9, 'Amina'),
(10, 'Samira'),
(11, 'Laila'),
(12, 'Rania'),
(13, 'Sana'),
(14, 'Farah'),
(15, 'Yasmin'),
(16, 'Salma'),
(17, 'Nadia'),
(18, 'Noor'),
(19, 'Huma'),
(20, 'Bushra'),
(21, 'Zainab'),
(22, 'Fahmida'),
(23, 'Mehreen'),
(24, 'Naila'),
(25, 'Rabia');

-- --------------------------------------------------------

--
-- Table structure for table `muslim_male_names`
--

CREATE TABLE `muslim_male_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muslim_male_names`
--

INSERT INTO `muslim_male_names` (`id`, `name`) VALUES
(1, 'Mohammed'),
(2, 'Ahmed'),
(3, 'Ali'),
(4, 'Omar'),
(5, 'Hassan'),
(6, 'Adil'),
(7, 'Faisal'),
(8, 'Rashid'),
(9, 'Usman'),
(10, 'Ibrahim'),
(11, 'Bilal'),
(12, 'Sami'),
(13, 'Khalid'),
(14, 'Zaid'),
(15, 'Amir'),
(16, 'Farhan'),
(17, 'Tariq'),
(18, 'Imran'),
(19, 'Yusuf'),
(20, 'Hamza'),
(21, 'Saeed'),
(22, 'Asif'),
(23, 'Nabeel'),
(24, 'Majid'),
(25, 'Haris');

-- --------------------------------------------------------

--
-- Table structure for table `muslim_surnames`
--

CREATE TABLE `muslim_surnames` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muslim_surnames`
--

INSERT INTO `muslim_surnames` (`id`, `surname`) VALUES
(1, 'Khan'),
(2, 'Sheikh'),
(3, 'Ahmad'),
(4, 'Hussain'),
(5, 'Qureshi'),
(6, 'Mirza'),
(7, 'Malik'),
(8, 'Rahman'),
(9, 'Mohammad'),
(10, 'Ali'),
(11, 'Iqbal'),
(12, 'Siddiqui'),
(13, 'Usmani'),
(14, 'Aziz'),
(15, 'Akhtar'),
(16, 'Begum'),
(17, 'Chaudhry'),
(18, 'Mansoor'),
(19, 'Raza'),
(20, 'Saleem'),
(21, 'Haque'),
(22, 'Ashraf'),
(23, 'Khalil'),
(24, 'Zaman'),
(25, 'Shah');

-- --------------------------------------------------------

--
-- Table structure for table `pin_codes`
--

CREATE TABLE `pin_codes` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `pin_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pin_codes`
--

INSERT INTO `pin_codes` (`id`, `district_id`, `pin_code`) VALUES
(1, 1, '400053'),
(2, 1, '400050'),
(3, 1, '400074'),
(4, 1, '400014'),
(5, 1, '400062'),
(6, 1, '400049'),
(7, 1, '400070'),
(8, 1, '400064'),
(9, 1, '400080'),
(10, 1, '400076'),
(11, 1, '400054'),
(12, 1, '400083'),
(13, 1, '400030'),
(14, 1, '401202'),
(15, 1, '400091'),
(16, 1, '400703'),
(17, 1, '400601'),
(18, 1, '400067'),
(19, 1, '401303'),
(20, 1, '401105'),
(21, 1, '401107'),
(22, 1, '400086'),
(23, 1, '400056'),
(24, 1, '400022'),
(25, 1, '400005');

-- --------------------------------------------------------

--
-- Table structure for table `sikh_female_names`
--

CREATE TABLE `sikh_female_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sikh_female_names`
--

INSERT INTO `sikh_female_names` (`id`, `name`) VALUES
(1, 'Harpreet'),
(2, 'Jaspreet'),
(3, 'Simran'),
(4, 'Manpreet'),
(5, 'Baljit'),
(6, 'Amandeep'),
(7, 'Kiran'),
(8, 'Navneet'),
(9, 'Harleen'),
(10, 'Kuljit'),
(11, 'Preeti'),
(12, 'Sukhjit'),
(13, 'Rajinder'),
(14, 'Gurpreet'),
(15, 'Parminder'),
(16, 'Daljit'),
(17, 'Jatinder'),
(18, 'Kamaljit'),
(19, 'Raminder'),
(20, 'Sarbjit'),
(21, 'Balwinder'),
(22, 'Rupinder'),
(23, 'Harjinder'),
(24, 'Manjit'),
(25, 'Sukhwinder');

-- --------------------------------------------------------

--
-- Table structure for table `sikh_male_names`
--

CREATE TABLE `sikh_male_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sikh_male_names`
--

INSERT INTO `sikh_male_names` (`id`, `name`) VALUES
(1, 'Hardeep'),
(2, 'Jasbir'),
(3, 'Manjit'),
(4, 'Sukhbir'),
(5, 'Baldev'),
(6, 'Gurmeet'),
(7, 'Rajinder'),
(8, 'Davinder'),
(9, 'Paramjit'),
(10, 'Kulwant'),
(11, 'Jagjit'),
(12, 'Satnam'),
(13, 'Harjot'),
(14, 'Gurjit'),
(15, 'Bhupinder'),
(16, 'Kuldeep'),
(17, 'Narinder'),
(18, 'Daljeet'),
(19, 'Pritpal'),
(20, 'Harbans'),
(21, 'Sukhdev'),
(22, 'Ranjit'),
(23, 'Sher Singh'),
(24, 'Gurbachan'),
(25, 'Inderjit');

-- --------------------------------------------------------

--
-- Table structure for table `sikh_surnames`
--

CREATE TABLE `sikh_surnames` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sikh_surnames`
--

INSERT INTO `sikh_surnames` (`id`, `surname`) VALUES
(1, 'Singh'),
(2, 'Kaur'),
(3, 'Sandhu'),
(4, 'Sidhu'),
(5, 'Gill'),
(6, 'Brar'),
(7, 'Dhillon'),
(8, 'Cheema'),
(9, 'Bains'),
(10, 'Bhullar'),
(11, 'Grewal'),
(12, 'Johal'),
(13, 'Mann'),
(14, 'Nagra'),
(15, 'Sekhon'),
(16, 'Dhaliwal'),
(17, 'Pannu'),
(18, 'Saini'),
(19, 'Aulakh'),
(20, 'Khalsa'),
(21, 'Jhajj'),
(22, 'Bal'),
(23, 'Mahal'),
(24, 'Thind'),
(25, 'Pawar');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`) VALUES
(1, 'Maharashtra'),
(2, 'Tamil Nadu'),
(3, 'Kerala'),
(4, 'Uttar Pradesh'),
(5, 'Rajasthan'),
(6, 'Karnataka'),
(7, 'Gujarat'),
(8, 'Andhra Pradesh'),
(9, 'West Bengal'),
(10, 'Madhya Pradesh'),
(11, 'Haryana'),
(12, 'Bihar'),
(13, 'Punjab'),
(14, 'Odisha'),
(15, 'Jharkhand'),
(16, 'Assam'),
(17, 'Chhattisgarh'),
(18, 'Uttarakhand'),
(19, 'Himachal Pradesh'),
(20, 'Tripura'),
(21, 'Meghalaya'),
(22, 'Manipur'),
(23, 'Nagaland'),
(24, 'Goa'),
(25, 'Arunachal Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_city` (`city_id`);

--
-- Indexes for table `christian_female_names`
--
ALTER TABLE `christian_female_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `christian_male_names`
--
ALTER TABLE `christian_male_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `christian_surnames`
--
ALTER TABLE `christian_surnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_state` (`state_id`);

--
-- Indexes for table `generated_people`
--
ALTER TABLE `generated_people`
  ADD PRIMARY KEY (`unique_id_no`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `hindu_female_names`
--
ALTER TABLE `hindu_female_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hindu_male_names`
--
ALTER TABLE `hindu_male_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hindu_surnames`
--
ALTER TABLE `hindu_surnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muslim_female_names`
--
ALTER TABLE `muslim_female_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muslim_male_names`
--
ALTER TABLE `muslim_male_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muslim_surnames`
--
ALTER TABLE `muslim_surnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_codes`
--
ALTER TABLE `pin_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_district` (`district_id`);

--
-- Indexes for table `sikh_female_names`
--
ALTER TABLE `sikh_female_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikh_male_names`
--
ALTER TABLE `sikh_male_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikh_surnames`
--
ALTER TABLE `sikh_surnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `christian_female_names`
--
ALTER TABLE `christian_female_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `christian_male_names`
--
ALTER TABLE `christian_male_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `christian_surnames`
--
ALTER TABLE `christian_surnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hindu_female_names`
--
ALTER TABLE `hindu_female_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hindu_male_names`
--
ALTER TABLE `hindu_male_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hindu_surnames`
--
ALTER TABLE `hindu_surnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `muslim_female_names`
--
ALTER TABLE `muslim_female_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `muslim_male_names`
--
ALTER TABLE `muslim_male_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `muslim_surnames`
--
ALTER TABLE `muslim_surnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pin_codes`
--
ALTER TABLE `pin_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sikh_female_names`
--
ALTER TABLE `sikh_female_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sikh_male_names`
--
ALTER TABLE `sikh_male_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sikh_surnames`
--
ALTER TABLE `sikh_surnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `fk_city` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `fk_state` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `pin_codes`
--
ALTER TABLE `pin_codes`
  ADD CONSTRAINT `fk_district` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
