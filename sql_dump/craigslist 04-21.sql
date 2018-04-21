-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2018 at 07:55 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craigslist`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email_id` varchar(30) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email_id`, `password`) VALUES
('rupali@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('sahayrupali@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('shivani95thakkar@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('yash@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('yashpradhan46@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email_id` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `rating` int(1) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email_id`, `firstname`, `lastname`, `phone_no`, `street`, `city`, `state`, `country`, `rating`, `isAdmin`, `zipcode`, `is_deleted`) VALUES
('rupali@gmail.com', 'Rupali', 'Sahay', '4699293266', '7815 McCallum Blvd', 'Dallas', 'TX', 'US', 0, 0, '75252', NULL),
('sahayrupali@gmail.com', 'Rupali', 'Sahay', '4699294266', '7915', 'Dallas', 'TX', 'US', 0, 0, '75252', NULL),
('shivani95thakkar@gmail.com', 'Shivani', 'Thakkar', '4697336827', '7815 McCallum Blvd', 'Dallas', 'TX', 'US', 0, 0, '75252', NULL),
('yash@gmail.com', 'Yash', 'Pradhan', '2145173549', '7825 McCallumBlvd', 'Dallas', 'TX ', 'US', 0, 0, '75252', NULL),
('yashpradhan46@gmail.com', 'Yash', 'Pradhan', '2145173549', '7825', 'Dallas', 'TX', 'US', 0, 0, '75252', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `utility_id` bigint(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `isAvailable` tinyint(1) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`utility_id`, `name`, `category_id`, `isAvailable`, `email_id`, `city`, `street`, `state`, `country`, `rating`, `price`, `post_date`, `description`, `is_deleted`) VALUES
(1, 'Toys', 1, 1, 'yash@gmail.com', 'Dallas', '7815', 'TX', 'US', NULL, 10, NULL, 'Kids toys', 1),
(2, 'Games', 1, 1, 'yash@gmail.com', 'Dallas', '7815', 'TX', 'US', NULL, 15, NULL, 'Games for kids', 0),
(3, 'sofa', 1, 1, 'yash@gmail.com', 'Dallas', '7815', 'TX', 'US', NULL, 10, NULL, 'sofa set for sitting', 1),
(4, 'bags', 1, 1, 'yash@gmail.com', 'Dallas', '7815', 'TX', 'US', NULL, 18, NULL, 'bags for books', 0),
(5, 'Carpet', 1, 1, 'rupali@gmail.com', 'Dallas', '7815', 'Texas', 'US', NULL, 18, NULL, 'floor carpet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `utility_category`
--

CREATE TABLE `utility_category` (
  `category_id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_category`
--

INSERT INTO `utility_category` (`category_id`, `name`) VALUES
(1, 'For Sale'),
(2, 'Housing');

-- --------------------------------------------------------

--
-- Table structure for table `utility_image`
--

CREATE TABLE `utility_image` (
  `utility_id` bigint(30) NOT NULL,
  `image_path` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_image`
--

INSERT INTO `utility_image` (`utility_id`, `image_path`) VALUES
(1, '../php/product-images/yash@gmail.com/Screenshot (1).png'),
(2, '../php/product-images/yash@gmail.com/Screenshot.png'),
(3, '../php/product-images/yash@gmail.com/Screenshot (65).png'),
(4, '../php/product-images/yash@gmail.com/Screenshot (21).png'),
(5, '../php/product-images/rupali@gmail.com/Screenshot (20).png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `email_id` varchar(30) NOT NULL,
  `utility_id` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`email_id`, `utility_id`) VALUES
('yashpradhan46@gmail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`utility_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `utility_category`
--
ALTER TABLE `utility_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `utility_image`
--
ALTER TABLE `utility_image`
  ADD PRIMARY KEY (`utility_id`,`image_path`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`email_id`,`utility_id`),
  ADD KEY `utility_id` (`utility_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utility`
--
ALTER TABLE `utility`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utility_image`
--
ALTER TABLE `utility_image`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`);

--
-- Constraints for table `utility`
--
ALTER TABLE `utility`
  ADD CONSTRAINT `utility_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `utility_category` (`category_id`),
  ADD CONSTRAINT `utility_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`);

--
-- Constraints for table `utility_image`
--
ALTER TABLE `utility_image`
  ADD CONSTRAINT `utility_image_idfk_1` FOREIGN KEY (`utility_id`) REFERENCES `utility` (`utility_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`utility_id`) REFERENCES `utility` (`utility_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
