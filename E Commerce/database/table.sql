-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `address`, `email`, `mobile`, `otp`, `created_at`) VALUES
(1, 'q', 'q', 'q', '730704', '2024-07-14 17:21:46'),
(2, 'q', 'q', 'q', '068321', '2024-07-14 17:22:26'),
(3, 'w', 'w', 'w', 'e', '2024-07-14 17:23:54'),
(4, '12', '1', '1', '470536', '2024-07-14 17:24:16'),
(5, 'q', 'q', 'q', '571977', '2024-07-14 17:25:13'),
(6, 'q', 'q', 'q', '571977', '2024-07-14 17:25:53'),
(7, 'q', 'q', 'q', '501704', '2024-07-14 17:31:26'),
(8, 'q', 'q', 'q', '743325', '2024-07-14 17:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `bankName` varchar(255) NOT NULL,
  `cardNumber` varchar(255) NOT NULL,
  `expiryDate` date NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `upi` varchar(255) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `bankName`, `cardNumber`, `expiryDate`, `cvv`, `upi`, `mobileNumber`, `otp`, `created_at`) VALUES
(1, 'm', 'm', '0000-00-00', 'm', 'm', '', '846454', '2024-07-14 11:45:07'),
(2, 'm', '1254897845', '0000-00-00', '123', 'm', '', '846454', '2024-07-14 11:46:09'),
(3, 'manoj', '1245678', '2024-07-17', '123', 'zxcvbndfgh', '123456789', '187925', '2024-07-14 12:00:12'),
(4, 'manoj', 'm', '2024-07-03', '321', 'hgf', '7395867763', '552879', '2024-07-14 17:09:46'),
(5, 'q', 'q', '2024-07-03', '1', '1', '1', '972827', '2024-07-14 17:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `fullname` varchar(100) NOT NULL,
  `mobilenumber` varchar(100) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `deliveryaddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`fullname`, `mobilenumber`, `emailaddress`, `deliveryaddress`) VALUES
('manoj', '7395867763', 'vcmanoj2002@gmail.com', 'ddd'),
('manoj', '7395867763', 'vcmanoj2002@gmail.com', 'dfghjkl;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'harini', '$2y$10$9mCq3GyxrzhOniOMqE0h.uxAe7k3OsVBcAB6xOGP/8KwrNGFd70VO', '2024-07-05 22:54:56'),
(2, 'athul', '$2y$10$kM.1rieGAmIC0kqme7LVru1ECpYBpTuApERzEUGjflIP2rU8ohEwa', '2024-07-05 23:13:13'),
(3, 'manoj', '$2y$10$LmJRFHqixcl1MDdyneBW7.oKM8liY2AA9gA0Duy0dTwHLifnXSQSa', '2024-07-14 16:10:29'),
(4, 'wdwdwd', '$2y$10$YaJ1H9ECKxn6cO7wbKgfxuaV3dEbAeOa2twofy5LLd0KB804Y.4OK', '2024-07-14 22:18:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
