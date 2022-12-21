-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 10:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vr kamalesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `hello`
--

CREATE TABLE `hello` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hello`
--

INSERT INTO `hello` (`id`, `name`, `email`, `phone`, `address`, `created_at`) VALUES
(1, 'khishor', 'khishor@gmail.com', '123456745', 'CALIFORNIA', '2022-11-22 22:50:18'),
(2, 'kamalesh', 'kamalesh@gmail.com', '123456789', 'LONDON', '2022-11-22 22:50:18'),
(3, 'rubthira', 'rubthira@gmail.com', '112233445', 'NEW YORK', '2022-11-22 22:50:18'),
(4, 'ishuaariya', 'ishu@gmail.com', '1223344556', 'GERMAN', '2022-11-22 22:50:18'),
(5, 'livanyah', 'livanyah@gmail.com', '1334455667', 'THAILAND', '2022-11-22 22:50:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hello`
--
ALTER TABLE `hello`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hello`
--
ALTER TABLE `hello`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
