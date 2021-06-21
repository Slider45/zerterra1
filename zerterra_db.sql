-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 09:36 PM
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
-- Database: `zerterra_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_list`
--

CREATE TABLE `admin_list` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_list`
--

INSERT INTO `admin_list` (`id`, `Fullname`, `Password`, `Contact`, `Email`, `Position`, `is_active`) VALUES
(1, 'Salcedo, Paul', '123', '09954950384', 'paul.salcedo13@gmail.com', 'Super Admin', 1),
(2, 'bernardo', '111', '0312354321', 'laguardia.bernard@gmail.com', 'Admin', 1),
(3, 'Kevin Manlangit', '1234', '09560643505', 'kevmanlangit14@gmail.com', 'Admin', 1),
(4, 'Lenard Justimbaste', '1111', '09560643505', 'leng@gmail.com', 'Admin', 1),
(5, 'Charlotte Rom', '111', '0995495032', 'charlotte.rom14@gmail.com', 'Admin', 1),
(6, 'Elloise Lagario', '111', '09190002135', 'elloise@gmail.com', 'Admin', 0),
(7, 'Jayson Castrodes', '111', '09191234567', 'jaysoncastrodes@gmail.com', 'Admin', 1),
(8, 'Paul Adremesin', '123', '09560643505', 'pauladremesin@gmail.com', 'Admin', 0),
(9, 'Star Salcedo', '123', '09954950384', 'star@gmail.com', 'Admin', 0),
(10, '123', '222', '9954950384', '123@123.com', 'Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `approved_order_list`
--

CREATE TABLE `approved_order_list` (
  `id` int(11) NOT NULL,
  `OrderNumber` varchar(20) NOT NULL,
  `SerialNumber` varchar(20) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `is_delivered` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approved_order_list`
--

INSERT INTO `approved_order_list` (`id`, `OrderNumber`, `SerialNumber`, `Firstname`, `Lastname`, `Email`, `Contact`, `Address`, `is_delivered`) VALUES
(1, '20200224-001118-02', '20200224-001118-01', 'Bernard', 'Laguardia', 'laguardia.bernard@gmail.com', '09954950384', 'Blk 28 Lot 31 Adelfa St. Evergreen Executive Village Bagumbong Caloocan City', 0),
(2, '20200223-132712-01', '20200224-043620-02', 'karl', 'manlangit', 'karl@gmail.com', '09954950384', '1347 campuput st area A camarin caloocan city', 0),
(3, '20200224-045323-01', '', 'sio', 'mai', 'siomai@gmail.com', '09191234567', 'bagumbong caloocan city', 0),
(4, '20200224-045323-01', '20200224-045713-04', 'sio', 'mai', 'siomai@gmail.com', '09191234567', 'bagumbong caloocan city', 0),
(5, '20200224-045323-01', '20200224-050250-05', 'sio', 'mai', 'siomai@gmail.com', '09191234567', 'bagumbong caloocan city', 0),
(16, '20200224-061523-01', ' 20200224-065328-06', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(17, '20200224-061523-01', ' 20200224-065504-07', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(18, '20200224-061523-01', ' 20200224-065823-08', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(19, '20200224-061523-01', ' 20200224-070035-09', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(20, '20200224-061523-01', ' 20200224-070204-010', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(21, '20200224-061523-01', ' 20200224-070309-011', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(22, '20200224-061523-01', ' 20200224-070445-012', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(23, '20200224-061523-01', ' 20200224-070723-013', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', 0),
(24, '2002-0238-03', ' 20200226-14', 'ako si', 'ding', 'akosiding@darna.com', '09191234567', '1347 campuput st area A camarin caloocan city', 1),
(25, '20200224-155845-02', ' 20210622-15', 'Jayson', 'Castrodes', 'cas@gmail.com', '123456789', 'Kiko Caloocan City', 1);

-- --------------------------------------------------------

--
-- Table structure for table `declined_order_list`
--

CREATE TABLE `declined_order_list` (
  `id` int(11) NOT NULL,
  `OrderNumber` varchar(20) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivered_order_list`
--

CREATE TABLE `delivered_order_list` (
  `id` int(11) NOT NULL,
  `OrderNumber` varchar(50) NOT NULL,
  `SerialNumber` varchar(50) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `is_activated` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivered_order_list`
--

INSERT INTO `delivered_order_list` (`id`, `OrderNumber`, `SerialNumber`, `Firstname`, `Lastname`, `Email`, `Contact`, `Address`, `is_activated`) VALUES
(1, '2002-0238-03', '20200226-14', 'ako si', 'ding', 'akosiding@darna.com', '09191234567', '1347 campuput st area A camarin caloocan city', 1),
(2, '20200224-155845-02', '20210622-15', 'Jayson', 'Castrodes', 'cas@gmail.com', '123456789', 'Kiko Caloocan City', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pending_order_list`
--

CREATE TABLE `pending_order_list` (
  `id` int(11) NOT NULL,
  `OrderNumber` varchar(20) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Message` varchar(225) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_order_list`
--

INSERT INTO `pending_order_list` (`id`, `OrderNumber`, `Firstname`, `Lastname`, `Email`, `Contact`, `Address`, `Message`, `is_approved`) VALUES
(8, '20200224-061523-01', 'karl', 'manlangit', 'paul.salcedo13@gmail.com', '09560643505', '1347 campuput st area A camarin caloocan city', '', 0),
(9, '20200224-155845-02', 'Jayson', 'Castrodes', 'cas@gmail.com', '123456789', 'Kiko Caloocan City', 'hello world philippines', 1),
(10, '2002-0238-03', 'ako si', 'ding', 'akosiding@darna.com', '09191234567', '1347 campuput st area A camarin caloocan city', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `request_repair_list`
--

CREATE TABLE `request_repair_list` (
  `id` int(11) NOT NULL,
  `RequestNumber` varchar(15) NOT NULL,
  `SerialNumber` varchar(15) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_repair_list`
--

INSERT INTO `request_repair_list` (`id`, `RequestNumber`, `SerialNumber`, `Firstname`, `Lastname`, `Email`, `Contact`, `Address`, `is_approved`) VALUES
(1, '1321839228', '20020749-01', 'ako si', 'Ding', 'paul.salcedo13@gmail.com', '09191234567', 'Blk 28 Lot 31 Adelfa St. Evergreen Executive Village Bagumbong Caloocan City', 0),
(2, '1321839227', '20020749-01', 'ako si', 'darna', 'akosibatman@gotham.com', '09191234567', '1347 campuput st area A camarin caloocan city', 0),
(3, '1321839229', '20020749-01', 'ako si', 'darna', 'akosibatman@gotham.com', '09191234567', '1347 campuput st area A camarin caloocan city', 0),
(4, '200225-2323-04', '20020749-01', 'Ako si', 'Darna', 'akosibatman@gotham.com', '', 'Blk 28 Lot 31 Adelfa St. Evergreen Executive Village Bagumbong Caloocan City', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblactionlog`
--

CREATE TABLE `tblactionlog` (
  `id` int(11) NOT NULL,
  `Author` varchar(20) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `DateAction` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblactionlog`
--

INSERT INTO `tblactionlog` (`id`, `Author`, `Action`, `DateAction`) VALUES
(1, 'Siomai', 'edit', '0000-00-00 00:00:00'),
(2, 'Siomai', 'add customer', '2021-06-19 08:14:38'),
(3, 'paul.salcedo13@gmail', 'Add New Admin ', '0000-00-00 00:00:00'),
(4, 'paul.salcedo13@gmail', 'DELETED ADMIN Star Salcedo', '0000-00-00 00:00:00'),
(5, 'paul.salcedo13@gmail', ' Edit Admin Charlotte Rom', '2021-06-21 18:07:00'),
(6, 'paul.salcedo13@gmail', 'Delivered Order to [2002-0238-03]', '2021-06-21 19:10:00'),
(7, 'paul.salcedo13@gmail', 'Approve Order - [20200224-155845-02]', '2021-06-21 19:10:34'),
(8, 'paul.salcedo13@gmail', 'User [ako si ding] is deleted ', '2021-06-21 19:14:26'),
(9, 'paul.salcedo13@gmail', 'Delivered Order to [20200224-155845-02]', '2021-06-21 19:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_list`
--

CREATE TABLE `tblsales_list` (
  `id` int(11) NOT NULL,
  `OrderNumber` varchar(50) NOT NULL,
  `TransactionNumber` varchar(20) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Amount` varchar(10) NOT NULL,
  `Vat` varchar(10) NOT NULL,
  `Date_Purchased` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsales_list`
--

INSERT INTO `tblsales_list` (`id`, `OrderNumber`, `TransactionNumber`, `Firstname`, `Lastname`, `Email`, `Contact`, `Amount`, `Vat`, `Date_Purchased`) VALUES
(1, '2002-0238-03', '20210622-01', 'ako si', 'ding', 'akosiding@darna.com', '09191234567', '10000', '1200', '2021/06/22'),
(4, '20200224-155845-02', '20210622-02', 'Jayson', 'Castrodes', 'cas@gmail.com', '123456789', '10000', '1200', '2021/06/22');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `SerialNumber` varchar(25) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `RemainingDays` varchar(10) NOT NULL,
  `DateRegistered` varchar(10) NOT NULL,
  `DateExpired` varchar(10) NOT NULL,
  `Hours` varchar(5) NOT NULL,
  `Minutes` varchar(5) NOT NULL,
  `Seconds` varchar(5) NOT NULL,
  `CapacityLevel` varchar(10) NOT NULL,
  `CurrentWeight` varchar(10) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_confirmed` int(11) NOT NULL DEFAULT 0,
  `token` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `SerialNumber`, `Firstname`, `Lastname`, `Contact`, `Address`, `Email`, `Password`, `RemainingDays`, `DateRegistered`, `DateExpired`, `Hours`, `Minutes`, `Seconds`, `CapacityLevel`, `CurrentWeight`, `is_active`, `is_confirmed`, `token`) VALUES
(14, '20200226-14', 'ako si', 'ding', '09191234567', '1347 campuput st area A camarin caloocan city', 'akosiding@darna.com', '20200226-14', '365', '2021/06/22', '2022/06/22', '0', '0', '0', '0', '0', 1, 1, ''),
(15, '20210622-15', 'Jayson', 'Castrodes', '123456789', 'Kiko Caloocan City', 'cas@gmail.com', '20210622-15', '365', '2021/06/22', '2022/06/22', '0', '0', '0', '0', '0', 1, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approved_order_list`
--
ALTER TABLE `approved_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `declined_order_list`
--
ALTER TABLE `declined_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_order_list`
--
ALTER TABLE `delivered_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_order_list`
--
ALTER TABLE `pending_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_repair_list`
--
ALTER TABLE `request_repair_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactionlog`
--
ALTER TABLE `tblactionlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsales_list`
--
ALTER TABLE `tblsales_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `approved_order_list`
--
ALTER TABLE `approved_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `declined_order_list`
--
ALTER TABLE `declined_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivered_order_list`
--
ALTER TABLE `delivered_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_order_list`
--
ALTER TABLE `pending_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `request_repair_list`
--
ALTER TABLE `request_repair_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblactionlog`
--
ALTER TABLE `tblactionlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsales_list`
--
ALTER TABLE `tblsales_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
