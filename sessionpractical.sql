-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 04:21 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sessionpractical`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbus`
--

CREATE TABLE `addbus` (
  `id` int(11) NOT NULL,
  `bus_no` int(10) NOT NULL,
  `total_seats` int(250) NOT NULL,
  `AddedOn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addbus`
--

INSERT INTO `addbus` (`id`, `bus_no`, `total_seats`, `AddedOn`) VALUES
(1, 1, 50, '2021-06-04'),
(2, 2, 40, '2021-06-05'),
(3, 1234156, 50, '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `adddriver`
--

CREATE TABLE `adddriver` (
  `id` int(250) NOT NULL,
  `RegNo` int(250) NOT NULL,
  `DriverName` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `DateOfJoin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adddriver`
--

INSERT INTO `adddriver` (`id`, `RegNo`, `DriverName`, `email`, `DateOfJoin`) VALUES
(1, 7, 'ex7', 'ex7@gmail.com', '2021-06-11'),
(2, 6, 'ex6', 'ex6@gmail.com', '2021-06-13'),
(3, 123, 'ex8', 'ex8@gmail.com', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'StarksG5', 'StarksG5213'),
(2, 'anjali', 'anjali123');

-- --------------------------------------------------------

--
-- Table structure for table `assignbus`
--

CREATE TABLE `assignbus` (
  `id` int(250) NOT NULL,
  `DriverName` varchar(250) NOT NULL,
  `RegNo` int(250) NOT NULL,
  `BusNo` int(250) NOT NULL,
  `TotalSeats` int(250) NOT NULL,
  `DeparturePlace` varchar(250) NOT NULL,
  `ArrivalPlace` varchar(250) NOT NULL,
  `DepartureDate` date NOT NULL,
  `ArrivalDate` date NOT NULL,
  `DepartureTime` time NOT NULL,
  `ArrivalTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignbus`
--

INSERT INTO `assignbus` (`id`, `DriverName`, `RegNo`, `BusNo`, `TotalSeats`, `DeparturePlace`, `ArrivalPlace`, `DepartureDate`, `ArrivalDate`, `DepartureTime`, `ArrivalTime`) VALUES
(1, 'dharani', 1, 1, 50, 'ballari', 'bengaluru', '2021-06-04', '2021-06-12', '19:42:00', '04:42:00'),
(2, 'bhavana', 2, 2, 40, 'ballari', 'bengaluru', '2021-06-11', '2021-06-12', '22:46:00', '23:46:00'),
(3, 'esh', 12, 45, 50, 'bengaluru', 'ballari', '2021-06-12', '2021-06-13', '20:10:00', '23:10:00'),
(5, 'dharani', 14, 15, 50, 'ballari', 'bengaluru', '2021-06-12', '2021-06-13', '18:19:00', '22:18:00'),
(7, 'dharani', 15, 16, 50, 'ballari', 'bengaluru', '2021-06-12', '2021-06-13', '18:19:00', '22:18:00'),
(8, 'dharani', 20, 20, 50, 'bengaluru', 'ballari', '2021-06-12', '2021-06-14', '20:21:00', '22:21:00'),
(11, 'ex1', 123, 123, 50, 'mangalore', 'bengaluru', '2021-06-12', '2021-06-12', '12:36:00', '15:36:00'),
(12, 'ex2', 0, 14, 50, 'mangalore', 'ballari', '2021-06-13', '2021-06-13', '13:45:00', '14:45:00'),
(15, 'ex3', 4, 2, 40, 'mangalore', 'bengaluru', '2021-06-12', '2021-06-12', '12:57:00', '18:57:00'),
(17, 'ex4', 6, 6, 50, 'bengaluru', 'mangalore', '2021-06-13', '2021-06-13', '15:59:00', '18:59:00'),
(18, 'ex5', 51, 51, 50, 'ballari', 'mangalore', '2021-06-12', '2021-06-13', '14:00:00', '19:00:00'),
(20, 'ex7', 7, 7, 40, 'udpi', 'bengaluru', '2021-06-12', '2021-06-13', '15:04:00', '19:05:00'),
(21, 'dharani2345', 156, 1256, 50, 'ballari', 'bengaluru', '2021-06-12', '2021-06-12', '23:08:00', '23:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `bus_number` int(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `DOP` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `customer_name`, `bus_number`, `source`, `destination`, `DOP`) VALUES
(21, 'shubam', 264, 'CST', 'Dadar', '2021-06-17'),
(23, 'Priya', 551, 'Kalyan', 'Dadar', '2021-06-14'),
(26, 'lucifer', 264, 'CST', 'Kalyan', '2021-06-14'),
(32, 'Anjali Pandey', 302, 'Dadar', 'Kalyan', '2021-06-14'),
(33, 'Priya', 302, 'Kalyan', 'Dadar', '2021-06-19'),
(35, 'Angel', 661, 'Kalyan', 'Dadar', '2021-06-14'),
(36, 'Rahul', 661, 'Kalyan', 'Dadar', '2021-06-14'),
(37, 'aish', 431, 'Dadar', 'CST', '2021-06-14'),
(43, 'Sandeep', 221, 'Dadar', 'CST', '2021-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_no` int(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `source_id` int(100) NOT NULL,
  `destination_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_no`, `source`, `destination`, `source_id`, `destination_id`) VALUES
(11, 'Ghatkopar', 'Kalyan', 112, 122),
(20, 'CST', 'Dadar', 100, 107),
(105, 'Sandhurst Rd', 'Kalyan', 102, 110),
(150, 'Dadar', 'Diva', 107, 118),
(200, 'Matunga', 'Kalyan', 108, 122),
(206, 'Diva', 'Currey Rd', 118, 105),
(209, 'Dombivali', 'Parel', 120, 106),
(223, 'Parel', 'Vikhroli', 106, 113),
(230, 'Kurla', 'Dombivali', 110, 120),
(264, 'CST', 'Kalyan', 100, 122),
(286, 'Mulund', 'Kalyan', 116, 122),
(302, 'Chinchpokali', 'Kalyan', 104, 122),
(330, 'CST', 'Vikhroli', 100, 113),
(333, 'Masjid Bunder', 'Sion', 101, 109),
(351, 'Thane', 'Byculla', 117, 103),
(381, 'Ghatkopar', 'CST', 112, 100),
(387, 'Byculla', 'Bhandup', 103, 115),
(401, 'Dadar', 'CST', 107, 100),
(405, 'Kanjur Marg', 'Byculla', 114, 103),
(407, 'Diva', 'Masjid Bunder', 118, 101),
(423, 'Kanjur Marg', 'Diva', 114, 118),
(431, 'Kopar', 'CST', 119, 100),
(458, 'Mulund', 'Dadar', 116, 107),
(461, 'Ghatkopar', 'Kalyan', 112, 122),
(503, 'Dombivali', 'CST', 120, 100),
(514, 'Thakurli', 'Dadar', 121, 107),
(531, 'Chinchpokali', 'Thane', 104, 117),
(551, 'Kalyan', 'Dadar', 122, 107),
(631, 'Parel', 'CST', 106, 100),
(661, 'Kalyan', 'CST', 122, 100),
(704, 'Bhandup', 'Dadar', 115, 107);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `source`, `destination`, `date`) VALUES
(1, 'CST', 'Kalyan', '0000-00-00'),
(2, 'Dadar', 'Kalyan', '0000-00-00'),
(3, 'CST', 'Kalyan', '0000-00-00'),
(4, 'CST', 'Dadar', '0000-00-00'),
(5, 'Dadar', 'Kalyan', '0000-00-00'),
(6, 'CST', 'Kalyan', '0000-00-00'),
(7, 'Dadar', 'Kalyan', '0000-00-00'),
(8, 'CST', 'Kalyan', '0000-00-00'),
(9, 'Dadar', 'Kalyan', '0000-00-00'),
(10, 'CST', 'Kalyan', '0000-00-00'),
(11, 'Dadar', 'Kalyan', '0000-00-00'),
(12, 'Kalyan', 'Dadar', '0000-00-00'),
(13, 'CST', 'Dadar', '0000-00-00'),
(14, 'CST', 'Dadar', '0000-00-00'),
(15, 'CST', 'Kalyan', '0000-00-00'),
(16, 'Dadar', 'Kalyan', '0000-00-00'),
(17, 'CST', 'Dadar', '0000-00-00'),
(18, '', '', '0000-00-00'),
(19, '', '', '0000-00-00'),
(20, 'Dadar', 'Kalyan', '0000-00-00'),
(21, 'CST', 'Kalyan', '0000-00-00'),
(22, 'Ka', 'Dadar', '0000-00-00'),
(23, 'Kalyan', 'Dadar', '0000-00-00'),
(24, 'Dadar', 'Kalyan', '0000-00-00'),
(25, 'Dadar', 'Kalyan', '0000-00-00'),
(26, 'CST', 'Kalyan', '0000-00-00'),
(27, 'CST', 'Dadar', '0000-00-00'),
(28, 'Dadar', 'Kalyan', '0000-00-00'),
(29, 'Dadar', 'Kalyan', '0000-00-00'),
(30, 'Dadar', 'Kalyan', '0000-00-00'),
(31, 'Dadar', 'Kalyan', '0000-00-00'),
(32, 'Dadar', 'Kalyan', '0000-00-00'),
(33, 'CST', 'Dadar', '0000-00-00'),
(34, 'Kalyan', 'Dadar', '0000-00-00'),
(35, 'Kalyan', 'Dadar', '0000-00-00'),
(36, 'Kalyan', 'Dadar', '0000-00-00'),
(37, 'Dadar', 'CST', '0000-00-00'),
(38, 'Kalyan', 'Dadar', '0000-00-00'),
(39, 'Dadar', 'CST', '0000-00-00'),
(40, 'Dadar', 'Kalyan', '0000-00-00'),
(41, 'CST', 'Dadar', '0000-00-00'),
(42, 'Dadar', 'CST', '2021-06-29'),
(43, 'Dadar', 'CST', '2021-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `station_id` int(100) NOT NULL,
  `station_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`station_id`, `station_name`) VALUES
(100, 'CST'),
(101, 'Masjid Bunder'),
(102, 'Sandhurst Rd'),
(103, 'Byculla'),
(104, 'Chinchpokali'),
(105, 'Currey Rd'),
(106, 'Parel'),
(107, 'Dadar'),
(108, 'Matunga'),
(109, 'Sion'),
(110, 'Kurla'),
(111, 'Vidya Vihar'),
(112, 'Ghatkopar'),
(113, 'Vikhroli'),
(114, 'Kanjur Marg'),
(115, 'Bhandup'),
(116, 'Mulund'),
(117, 'Thane'),
(118, 'Diva'),
(119, 'Kopar'),
(120, 'Dombivali'),
(121, 'Thakurli'),
(122, 'Kalyan');

-- --------------------------------------------------------

--
-- Table structure for table `searchbus`
--

CREATE TABLE `searchbus` (
  `id` int(4) NOT NULL,
  `From` varchar(20) NOT NULL,
  `To` varchar(20) NOT NULL,
  `Departure_Date` date NOT NULL,
  `Return_Date` date NOT NULL,
  `bus_name` varchar(20) NOT NULL,
  `bus_no` int(6) NOT NULL,
  `driver_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchbus`
--

INSERT INTO `searchbus` (`id`, `From`, `To`, `Departure_Date`, `Return_Date`, `bus_name`, `bus_no`, `driver_name`) VALUES
(1, 'ballari', 'bangalore', '2021-06-02', '2021-06-05', 'red', 1, 'someone'),
(2, 'bangalore', 'ballari', '2021-06-03', '2021-06-04', 'shivashakthi', 2, 'sometwo');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(255) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `name`, `password`) VALUES
(1, '0', 'abc'),
(2, '0', '213'),
(3, '0', 'rani'),
(4, '0', 'dha'),
(5, '0', 'dharani1'),
(6, '0', 'dharani2'),
(7, '0', 'dharani3'),
(8, '0', 'dharani213'),
(9, '0', 'dharani213'),
(10, '0', 'dharani213'),
(11, '0', 'dharani213'),
(12, '0', 'dharani213'),
(13, '0', 'dharani213'),
(14, '0', 'dharani213'),
(15, '0', '123abc'),
(16, '0', '213abc'),
(17, '2147483647', '123'),
(18, '2147483647', 'dharani213'),
(19, 'dharanikenchu@gmail.com', 'dharani213'),
(20, 'dharanikench@gmail.com', 'dharani213'),
(21, 'dharanikeu@gmail.com', 'dharani213'),
(22, 'eshwar@gmail.com', 'eshwar'),
(23, 'lucifer990@gmail.com', '113153'),
(24, 'ron123@gmail.com', 'ron123'),
(25, 'sam123@gmail.com', 'ssam123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addbus`
--
ALTER TABLE `addbus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adddriver`
--
ALTER TABLE `adddriver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RegNo` (`RegNo`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignbus`
--
ALTER TABLE `assignbus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RegNo` (`RegNo`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_no`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `searchbus`
--
ALTER TABLE `searchbus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addbus`
--
ALTER TABLE `addbus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adddriver`
--
ALTER TABLE `adddriver`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignbus`
--
ALTER TABLE `assignbus`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `searchbus`
--
ALTER TABLE `searchbus`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
