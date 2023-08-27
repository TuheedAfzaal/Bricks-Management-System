-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 08:08 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(32) NOT NULL,
  `name` varchar(23) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`, `date`) VALUES
(1, 'admin', 'admin', '2021-10-26 12:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `bricks_rate`
--

CREATE TABLE `bricks_rate` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bricks_rate`
--

INSERT INTO `bricks_rate` (`id`, `price`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `buy_qoila`
--

CREATE TABLE `buy_qoila` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `supplier` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy_qoila`
--

INSERT INTO `buy_qoila` (`id`, `date`, `supplier`, `quantity`, `price`, `total`) VALUES
(41, '2022-02-23', '81', 50, 1000, 50000),
(42, '2022-02-22', '78', 500, 9000, 4500000),
(44, '2022-02-18', '78', 34, 1000, 34000);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `dis` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `dis`) VALUES
(5, ' sharafat', '0304sharafa', 'good'),
(6, ' slam', 'slam@gmil.c', 'v,good'),
(7, ' slam', 'slam@gmil.c', 'v,good');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(34) NOT NULL,
  `contact` varchar(34) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(12) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `fname`, `contact`, `email`, `password`, `address`) VALUES
(38, ' Mohsin Adnan', 'Ramzan Ali', '0302-2323432', 'mohsin@gmial.com', 'mohsin', 'Liaquat pur'),
(39, ' sharafat', 'Nazir ahmed', '0304-2798049', 'sharafat@gmail.com', 'admin', 'khan pur'),
(40, ' slam', 'aslam', '0341-2331456', 'slam@gmil.com', 'slam', 'Zahir peer'),
(41, ' ahmed', 'Zafar Iqbal', '0323-2343567', 'Ahmed@gmail.com', 'ahmed', 'Liaquat pur'),
(42, ' Tuheed Jutt', 'AFZAAL', '0304-3425678', 'Tuheed@gmail.com', 'tuheed', 'sadqabad');

-- --------------------------------------------------------

--
-- Table structure for table `payment_supplier`
--

CREATE TABLE `payment_supplier` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `supplier` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_supplier`
--

INSERT INTO `payment_supplier` (`id`, `date`, `supplier`, `amount`) VALUES
(22, '2021-09-01', 67, 1000000),
(24, '2021-09-18', 19, 1444444),
(25, '2021-09-10', 19, 120000),
(27, '2021-09-07', 65, 12),
(29, '2021-09-03', 0, 1000000000),
(30, '2022-02-25', 65, 400000),
(31, '2022-02-25', 78, 23000),
(32, '2022-02-18', 82, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer` varchar(34) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `date`, `customer`, `quantity`, `price`, `total`) VALUES
(44, '2022-02-15', '38', 1000, 13, 13000),
(45, '2022-02-27', '39', 10000, 10, 100000),
(46, '2022-02-21', '40', 800, 10, 8000),
(47, '2022-02-25', '41', 4000, 15, 60000),
(48, '2022-02-28', '', 4000, 10, 40000),
(49, '2022-02-28', 'sharafat', 4000, 10, 40000),
(50, '2022-02-27', 'sharafat', 2000, 10, 20000),
(51, '2022-02-22', 'sharafat', 20000, 10, 200000),
(52, '2022-02-15', 'sharafat', 14200, 10, 142000),
(53, '2022-02-15', 'sharafat', 14200, 10, 142000),
(54, '2022-02-15', 'sharafat', 5000, 10, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `bricks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `date`, `bricks`) VALUES
(17, '2022-02-16', 6000),
(18, '2022-02-21', 4000),
(19, '2022-02-27', 10000),
(20, '2022-02-15', 40000),
(21, '2022-02-28', 100000),
(22, '2022-02-28', 4000),
(23, '2022-02-28', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `cont` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `fname`, `cont`, `address`) VALUES
(65, ' Tuheed jutt', 'Afzaal ahmed', '0304-0568790', 'sadqabad'),
(78, ' ali', 'salman', '0304-9568745', 'khab pur'),
(82, ' mazhar', 'irshad ', '0321-8989789', 'Thakal Arrain');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(11) NOT NULL,
  `age` varchar(11) NOT NULL,
  `purpose` varchar(22) NOT NULL,
  `quntity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `date`, `name`, `age`, `purpose`, `quntity`, `price`, `total`, `status`) VALUES
(38, '2022-02-22', 'sharafat', '18', 'home', 20000, 10, 200000, 1),
(38, '2022-02-15', 'sharafat', '18', 'home', 14200, 10, 142000, 1),
(38, '2022-02-15', 'sharafat', '18', 'home', 14200, 10, 142000, 1),
(42, '2022-02-15', 'sharafat', '23', 'home', 5000, 10, 50000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bricks_rate`
--
ALTER TABLE `bricks_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_qoila`
--
ALTER TABLE `buy_qoila`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_supplier`
--
ALTER TABLE `payment_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bricks_rate`
--
ALTER TABLE `bricks_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buy_qoila`
--
ALTER TABLE `buy_qoila`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payment_supplier`
--
ALTER TABLE `payment_supplier`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
