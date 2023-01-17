-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 09:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `marquee1` text NOT NULL,
  `colgname` varchar(99) NOT NULL,
  `colgintro` text NOT NULL,
  `footerinfo` varchar(50) NOT NULL,
  `abouthead` varchar(50) NOT NULL,
  `aboutinfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `auser`, `apass`, `marquee1`, `colgname`, `colgintro`, `footerinfo`, `abouthead`, `aboutinfo`) VALUES
(1, 'admin', 'caf1a3dfb505ffed0d024130f58c5cfa', 'College Information', 'ABC Group Of Institutions', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi officiis esse voluptatem cumque. Hic sit fugit culpa id placeat voluptate nulla magni quae quos enim, optio nostrum sequi. Corporis ratione aliquam quo vero quisquam. Quam, alias ipsam? Harum quis accusantium placeat facere repellendus, sint porro quos dicta fugiat impedit maiores ducimus corrupti, rerum, earum ipsam. Quos distinctio dolores, veritatis consequatur ullam accusantium doloremque, animi harum eos unde a impedit magni quo minima odio nostrum fugit iste ab dolore tempore itaque rem quibusdam. Dolores error recusandae totam nostrum quibusdam perspiciatis odit, obcaecati mollitia voluptas ex tempore sunt autem veritatis porro eos.', 'Copyright under 2022-2023', 'About Us', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi officiis esse voluptatem cumque. Hic sit fugit culpa id placeat voluptate nulla magni quae quos enim, optio nostrum sequi. Corporis ratione aliquam quo vero quisquam. Quam, alias ipsam? Harum quis accusantium placeat facere repellendus, sint porro quos dicta fugiat impedit maiores ducimus corrupti, rerum, earum ipsam. Quos distinctio dolores, veritatis consequatur ullam accusantium doloremque, animi harum eos unde a impedit magni quo minima odio nostrum fugit iste ab dolore tempore itaque rem quibusdam. Dolores error recusandae totam nostrum quibusdam perspiciatis odit, obcaecati mollitia voluptas ex tempore sunt autem veritatis porro eos. Alias ipsam? Harum quis accusantium placeat facere repellendus, sint porro quos dicta fugiat impedit maiores ducimus corrupti, rerum, earum ipsam. Quos distinctio dolores, veritatis consequatur ullam accusantium doloremque, animi harum eos unde a impedit magni quo minima odio nostrum fugit iste ab dolore tempore itaque rem quibusdam. Dolores error recusandae totam nostrum quibusdam perspiciatis odit, obcaecati mollitia voluptas ex tempore sunt autem veritatis porro eos.'),
(2, 'dinesh', '98d34c1758b15b5a359b69c2b08c5767', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `mob` bigint(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `gender`, `mob`, `address`) VALUES
(37, 'Dinesh', 'bb76387e09c3deb5cc6efcf8adba333c', 'dinesh@padhan.co', 'm', 123567890, 'lorem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
