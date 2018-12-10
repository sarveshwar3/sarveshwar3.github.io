-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2018 at 07:21 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intern`
--

-- --------------------------------------------------------

--
-- Table structure for table `registertable`
--

CREATE TABLE `registertable` (
  `name` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `college` text NOT NULL,
  `department` varchar(50) NOT NULL,
  `cgpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registertable`
--

INSERT INTO `registertable` (`name`, `email`, `password`, `date`, `address`, `college`, `department`, `cgpa`) VALUES
('hello', 'hello1@gmail.com', 'hello', '2018-01-01', 'this is my address', 'this is my college name', 'cse', 9),
('hello2', 'hello1@gmail.com', 'hello', '2018-01-01', 'this is my address', 'this is my college name', 'cse', 10),
('as3r', 'asdf', 'asdf', '2018-01-01', 'asdfw', 'afwe', 'weg', 3),
('alksjd', 'lkjas', 'alksdhf', '2018-01-01', 'laksjf', 'lkajsf', 'lk', 4),
('AWEF', 'hello1@gmail.com', 'asdf', '2017-11-30', 'asdf', ';laksjf', 'cse', 5),
('adfsfd', 'hello1@gmail.com', 'asdf', '2018-12-31', 'asdf', ';laksjf', 'cse', 10),
('yg', 'jhtf', 'jtf', '2018-12-31', 'sd', 'sd', 'sd', 3),
('adfsfd', 'sarveshwar3@gmail.com', 'asdf', '2018-11-30', 'asdf', ';laksjf', 'cse', 3),
('testing', 'testing', 'testing', '2018-12-31', 'test', 'asd', 'cse', 3),
('testing1', 'superuser@gmail.com', 'asdf', '2018-12-30', 'asdf', ';laksjf', 'cse', 3),
('this is a test', 'hello3@gmail.com', 'soempassword', '2018-12-31', 'this is my new address', 'panimalar college', 'cse', 9),
('PANIMALAR_COLLEGE', 'PANIMALAR@GMAIL.COM', 'PANIMALAR', '2018-12-31', 'THIS IS MY COLLEGE ADDRESS', 'PANIMALAR COLLEGE', 'CSE', 9),
('TESTING PASSWORD', 'TESTING@GMAIL.COM', '516718fd14a8fb261c7896f6b079d582598', '2018-01-01', 'this is a testing address', 'testing college ', 'cse', 10),
('this is some', 'as;lkdj', 'dfc81a5e2d51c99a768a9ee4538cd601d49', '2018-01-01', 'as;ijf', 'inbri', 'oainbw', 11),
('askjnj', 'asf', '232c31d95ece29ce9347c613f5b59453b12', '2018-01-01', 'rg', 'eg', 'qewg', 3),
('adfsfd', 'hello1@gmail.com', 'fe7ee09d3f3a7f8c4b28fc59cfbdbf8e475', '2018-12-31', 'asdf', ';laksjf', 'cse', 5),
('', '', '43c876311e819fc3ea7b29761f0eb1b0933', '0000-00-00', '', '', '', 0),
('s;ldfkj', 'aksfj', '86a58988be6088c06d3ec7e96d86042b610', '2018-01-01', ';sng', ';rgn', ';orw', 9),
('', '', '43c876311e819fc3ea7b29761f0eb1b0933', '0000-00-00', '', '', '', 0),
('', '', '43c876311e819fc3ea7b29761f0eb1b0933', '0000-00-00', '', '', '', 0),
('ljgv', 'KGV', 'afe87725da43f6cdc83a49bae7ed65ea217', '2018-01-02', 'JFC', 'KHTF', 'T', 7),
('asf', 'asrg', 'dbaad89c3f390df850797e1f3f493cc4668', '2018-01-01', 'eth', 'e', 'e', 5),
('hello', 'hello5@gmail.com', '2a4ec17236ddb91c9a58a9d04f7c9f010b3', '2018-01-01', 'hello', 'hello', 'h', 6),
('hello5@gmail.com', 'email@gmail.com', '30f9e27161dca4598f69e1f7465455a7f4f', '2018-01-01', 'add', 'add', '2', 5),
('s;dfn', 'g@gmail.com', '0823ff202a0e51fdf3f5b6a6f3ab814d2d83c6bb', '2018-01-01', 'a;lsdjf', 'a;lsk', 'df', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
