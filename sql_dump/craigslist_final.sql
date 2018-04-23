-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 11:51 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

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
('admin@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('def@gmail.com', '58517201e29003eada78f988324209fe88162518'),
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
('admin@gmail.com', 'Admin', 'Admin', '2145173549', '7825', 'Dallas', 'TX', 'US', 0, 1, '75252', 0),
('def@gmail.com', 'Shivani', 'Thakkar', '4697336827', '7815 McCallum Blvd Apt 18102', 'Dallas', 'TX', 'United States', 0, 0, '75252', NULL),
('dummy@gmail.com', 'Yash', 'Pradhan', '2145173549', '7825', 'Dallas', 'TX', 'US', 0, 0, '75252', 1),
('rupali@gmail.com', 'Rupali', 'Sahay', '4699293266', '7815 McCallum Blvd', 'Dallas', 'TX', 'US', 0, 0, '75252', 0),
('sahayrupali@gmail.com', 'Rupali', 'Sahay', '4699294266', '7915', 'Dallas', 'TX', 'US', 0, 0, '75252', 0),
('shivani95thakkar@gmail.com', 'Shivani', 'Thakkar', '4697336827', '7815 McCallum Blvd', 'Dallas', 'TX', 'US', 0, 0, '75252', 0),
('yash@gmail.com', 'Yash dummy', 'Pradhan', '2145173549', '7825 McCallumBlvd', 'Dallas', 'TX ', 'US', 0, 0, '75252', 0),
('yashpradhan46@gmail.com', 'Yash main', 'Pradhan', '2145173549', '7825', 'Dallas', 'TX', 'US', 0, 0, '75252', 0);

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
  `description` varchar(1500) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`utility_id`, `name`, `category_id`, `isAvailable`, `email_id`, `city`, `street`, `state`, `country`, `rating`, `price`, `post_date`, `description`, `is_deleted`, `timestamp`) VALUES
(1, 'It', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 601, '0000-00-00', 'Division of Glossopharyngeal N', 0, '2018-04-23 06:18:57'),
(2, 'Tresom', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 419, '0000-00-00', 'Drainage of Right Brachial Vei', 1, '2018-04-23 06:18:57'),
(3, 'Ventosanzap', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 338, '0000-00-00', 'Reattachment of Large Intestin', 1, '2018-04-23 06:18:57'),
(4, 'Stim', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 142, '0000-00-00', 'Introduction of Other Therapeu', 0, '2018-04-23 06:18:57'),
(5, 'Namfix', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 677, '0000-00-00', 'Revision of Other Device in He', 1, '2018-04-23 06:18:57'),
(6, 'Greenlam', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 854, '0000-00-00', 'Destruction of Lower Esophagus', 1, '2018-04-23 06:18:57'),
(7, 'Duobam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 281, '0000-00-00', 'Bypass Left Kidney Pelvis to L', 0, '2018-04-23 06:18:57'),
(8, 'Wrapsafe', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 802, '0000-00-00', 'Excision of Tibial Nerve, Perc', 0, '2018-04-23 06:18:57'),
(9, 'Bitwolf', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 175, '0000-00-00', 'Drainage of Left Lower Leg Ten', 0, '2018-04-23 06:18:57'),
(10, 'Subin', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 731, '0000-00-00', 'Range of Motion and Joint Mobi', 0, '2018-04-23 06:18:57'),
(11, 'Greenlam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 577, '0000-00-00', 'Removal of Synthetic Substitut', 0, '2018-04-23 06:18:57'),
(12, 'Matsoft', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 869, '0000-00-00', 'Bypass Right Hepatic Duct to C', 0, '2018-04-23 06:18:57'),
(13, 'Keylex', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 227, '0000-00-00', 'Occlusion of Small Intestine w', 0, '2018-04-23 06:18:57'),
(14, 'Ventosanzap', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 527, '0000-00-00', 'Dilation of Left Axillary Arte', 0, '2018-04-23 06:18:57'),
(15, 'Alphazap', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 965, '0000-00-00', 'Replacement of Right Posterior', 0, '2018-04-23 06:18:57'),
(16, 'Fix San', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 809, '0000-00-00', 'Division of Lumbar Nerve, Perc', 0, '2018-04-23 06:18:57'),
(17, 'Quo Lux', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 857, '0000-00-00', 'Removal of Nonautologous Tissu', 0, '2018-04-23 06:18:57'),
(18, 'Lotlux', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 408, '0000-00-00', 'Destruction of Right Spermatic', 0, '2018-04-23 06:18:57'),
(19, 'Redhold', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 452, '0000-00-00', 'Supplement Left Femoral Shaft ', 0, '2018-04-23 06:18:57'),
(20, 'Keylex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 278, '0000-00-00', 'Fluoroscopy of Ileal Diversion', 0, '2018-04-23 06:18:57'),
(21, 'Bitwolf', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 930, '0000-00-00', 'Drainage of Lumbar Vertebra wi', 0, '2018-04-23 06:18:57'),
(22, 'Konklux', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 947, '0000-00-00', 'Release Right Upper Leg Subcut', 0, '2018-04-23 06:18:57'),
(23, 'Mat Lam Tam', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 627, '0000-00-00', 'Revision of Drainage Device in', 0, '2018-04-23 06:18:57'),
(24, 'Quo Lux', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 333, '0000-00-00', 'Alteration of Left Shoulder Re', 0, '2018-04-23 06:18:57'),
(25, 'Biodex', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 844, '0000-00-00', 'Insertion of Radioactive Eleme', 0, '2018-04-23 06:18:57'),
(26, 'Wrapsafe', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 392, '0000-00-00', 'Introduction of Local Anesthet', 0, '2018-04-23 06:18:57'),
(27, 'Sub-Ex', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 458, '0000-00-00', 'Reattachment of Right Abdomen ', 0, '2018-04-23 06:18:57'),
(28, 'Rank', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 258, '0000-00-00', 'Resection of Right Ureter, Ope', 0, '2018-04-23 06:18:57'),
(29, 'Solarbreeze', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 415, '0000-00-00', 'Insertion of Cardiac Lead into', 0, '2018-04-23 06:18:57'),
(30, 'Konklab', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 38, '0000-00-00', 'Supplement Right Abdomen Tendo', 0, '2018-04-23 06:18:57'),
(31, 'Viva', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 901, '0000-00-00', 'Insertion of Bone Growth Stimu', 0, '2018-04-23 06:18:57'),
(32, 'Lotstring', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 912, '0000-00-00', 'Revision of Synthetic Substitu', 0, '2018-04-23 06:18:57'),
(33, 'Job', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 755, '0000-00-00', 'Drainage of Left Finger Phalan', 0, '2018-04-23 06:18:57'),
(34, 'Daltfresh', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 975, '0000-00-00', 'Drainage of Right Finger Phala', 0, '2018-04-23 06:18:57'),
(35, 'Hatity', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 552, '0000-00-00', 'Supplement Left Vocal Cord wit', 0, '2018-04-23 06:18:57'),
(36, 'Treeflex', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 78, '0000-00-00', 'Ultrasonography of Penile Arte', 0, '2018-04-23 06:18:57'),
(37, 'Flexidy', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 792, '0000-00-00', 'Destruction of Right Abdomen M', 0, '2018-04-23 06:18:57'),
(38, 'Alpha', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 169, '0000-00-00', 'Occlusion of Left Foot Vein wi', 0, '2018-04-23 06:18:57'),
(39, 'Fix San', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 422, '0000-00-00', 'Release Right Tarsal, Open App', 0, '2018-04-23 06:18:57'),
(40, 'Kanlam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 757, '0000-00-00', 'Replacement of Left Upper Arm ', 0, '2018-04-23 06:18:57'),
(41, 'Holdlamis', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 817, '0000-00-00', 'Excision of Face, Percutaneous', 0, '2018-04-23 06:18:57'),
(42, 'Cookley', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 913, '0000-00-00', 'Dilation of Right Common Iliac', 0, '2018-04-23 06:18:57'),
(43, 'Tresom', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 93, '0000-00-00', 'Extraction of Oculomotor Nerve', 0, '2018-04-23 06:18:57'),
(44, 'Aerified', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 687, '0000-00-00', 'Revision of Synthetic Substitu', 0, '2018-04-23 06:18:57'),
(45, 'Trippledex', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 356, '0000-00-00', 'Release Left Frontal Bone, Ope', 0, '2018-04-23 06:18:57'),
(46, 'Tin', 1, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 399, '0000-00-00', 'Contact Radiation of Abdomen', 0, '2018-04-23 06:18:57'),
(47, 'Stim', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 337, '0000-00-00', 'Revision of External Fixation ', 0, '2018-04-23 06:18:57'),
(48, 'Treeflex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 142, '0000-00-00', 'Dilation of Hepatic Artery wit', 0, '2018-04-23 06:18:57'),
(49, 'Temp', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 710, '0000-00-00', 'Pheresis of Leukocytes, Multip', 0, '2018-04-23 06:18:57'),
(50, 'Tres-Zap', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 716, '0000-00-00', 'Supplement Jejunum with Autolo', 0, '2018-04-23 06:18:57'),
(51, 'Stringtough', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 865, '0000-00-00', 'Computerized Tomography (CT Sc', 0, '2018-04-23 06:18:57'),
(52, 'Bitchip', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 684, '0000-00-00', 'Supplement Lumbosacral Disc wi', 0, '2018-04-23 06:18:57'),
(53, 'Flowdesk', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 984, '0000-00-00', 'Excision of Left Vertebral Vei', 0, '2018-04-23 06:18:57'),
(54, 'Sonair', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 408, '0000-00-00', 'Revision of Extraluminal Devic', 0, '2018-04-23 06:18:57'),
(55, 'Bigtax', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 180, '0000-00-00', 'Dilation of Ampulla of Vater w', 0, '2018-04-23 06:18:57'),
(56, 'Daltfresh', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 278, '0000-00-00', 'Dilation of Coronary Artery, O', 0, '2018-04-23 06:18:57'),
(57, 'Cardify', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 851, '0000-00-00', 'Fusion of Right Metatarsal-Pha', 0, '2018-04-23 06:18:57'),
(58, 'Cardify', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 715, '0000-00-00', 'Respiratory System, Fragmentat', 0, '2018-04-23 06:18:57'),
(59, 'Bytecard', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 845, '0000-00-00', 'Supplement Right Maxilla with ', 0, '2018-04-23 06:18:57'),
(60, 'Treeflex', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 416, '0000-00-00', 'Supplement Left Hand Artery wi', 0, '2018-04-23 06:18:57'),
(61, 'Mat Lam Tam', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 232, '0000-00-00', 'Repair Vagina, Via Natural or ', 0, '2018-04-23 06:18:57'),
(62, 'Cardify', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 215, '0000-00-00', 'Bypass Left Temporal Artery to', 0, '2018-04-23 06:18:57'),
(63, 'Asoka', 1, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 690, '0000-00-00', 'Revision of Nonautologous Tiss', 0, '2018-04-23 06:18:57'),
(64, 'Sub-Ex', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 534, '0000-00-00', 'Removal of Internal Fixation D', 0, '2018-04-23 06:18:57'),
(65, 'Kanlam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 121, '0000-00-00', 'Supplement Left Internal Mamma', 0, '2018-04-23 06:18:57'),
(66, 'Kanlam', 2, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 329, '0000-00-00', 'Repair Eye in Products of Conc', 0, '2018-04-23 06:18:57'),
(67, 'Redhold', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 413, '0000-00-00', 'Fusion of Lumbar Vertebral Joi', 0, '2018-04-23 06:18:57'),
(68, 'Yash Pro', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815', 'Texas', 'US', 3, 1000000, '0000-00-00', 'AI Specialist', 0, '2018-04-23 07:47:18'),
(69, 'Bitchip', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 313, '0000-00-00', 'Removal of Radioactive Element', 0, '2018-04-23 06:18:57'),
(70, 'Cardify', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 5, '0000-00-00', 'Revision of Synthetic Substitu', 0, '2018-04-23 06:18:57'),
(71, 'Regrant', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 788, '0000-00-00', 'Excision of Right Diaphragm, P', 0, '2018-04-23 06:18:57'),
(72, 'Temp', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 401, '0000-00-00', 'Extirpation of Matter from Rad', 0, '2018-04-23 06:18:57'),
(73, 'Solarbreeze', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 798, '0000-00-00', 'Low Dose Rate (LDR) Brachyther', 0, '2018-04-23 06:18:57'),
(74, 'Keylex', 1, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 300, '0000-00-00', 'Bypass Cerebral Ventricle to B', 0, '2018-04-23 06:18:57'),
(75, 'Tin', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 883, '0000-00-00', 'Introduction of Anti-inflammat', 0, '2018-04-23 06:18:57'),
(76, 'Matsoft', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 592, '0000-00-00', 'Removal of Synthetic Substitut', 0, '2018-04-23 06:18:57'),
(77, 'Tampflex', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 254, '0000-00-00', 'Repair Left Upper Lung Lobe, O', 0, '2018-04-23 06:18:57'),
(78, 'Voyatouch', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 447, '0000-00-00', 'Map Basal Ganglia, Percutaneou', 0, '2018-04-23 06:18:57'),
(79, 'Namfix', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 386, '0000-00-00', 'Excision of Left Hand Subcutan', 0, '2018-04-23 06:18:57'),
(80, 'Overhold', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 485, '0000-00-00', 'Extirpation of Matter from Olf', 0, '2018-04-23 06:18:57'),
(81, 'Voyatouch', 1, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 41, '0000-00-00', 'Restriction of Right Common Ca', 0, '2018-04-23 06:18:57'),
(82, 'Zathin', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 702, '0000-00-00', 'Release Left External Carotid ', 0, '2018-04-23 06:18:57'),
(83, 'Zontrax', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 953, '0000-00-00', 'Revision of Extraluminal Devic', 0, '2018-04-23 06:18:57'),
(84, 'Asoka', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 232, '0000-00-00', 'Introduction of Other Anti-inf', 0, '2018-04-23 06:18:57'),
(85, 'Sub-Ex', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 947, '0000-00-00', 'Revision of Artificial Sphinct', 0, '2018-04-23 06:18:57'),
(86, 'Quo Lux', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 533, '0000-00-00', 'Bypass Left Ureter to Left Ure', 0, '2018-04-23 06:18:57'),
(87, 'Daltfresh', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 519, '0000-00-00', 'Dilation of Left Internal Mamm', 0, '2018-04-23 06:18:57'),
(88, 'Holdlamis', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 947, '0000-00-00', 'Excision of Left Peroneal Arte', 0, '2018-04-23 06:18:57'),
(89, 'Subin', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 383, '0000-00-00', 'Drainage of Spleen, Open Appro', 0, '2018-04-23 06:18:57'),
(90, 'Zoolab', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 835, '0000-00-00', 'Repair Head, Open Approach', 0, '2018-04-23 06:18:57'),
(91, 'Flowdesk', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 600, '0000-00-00', 'Insertion of Monitoring Device', 0, '2018-04-23 06:18:57'),
(92, 'Sub-Ex', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 165, '0000-00-00', 'Removal of Autologous Tissue S', 0, '2018-04-23 06:18:57'),
(93, 'Prodder', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 959, '0000-00-00', 'Revision of External Fixation ', 0, '2018-04-23 06:18:57'),
(94, 'Voyatouch', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 8, '0000-00-00', 'Restriction of Left Femoral Ve', 0, '2018-04-23 06:18:57'),
(95, 'Andalax', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 481, '0000-00-00', 'Supplement Left Metacarpal wit', 0, '2018-04-23 06:18:57'),
(96, 'Cookley', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 282, '0000-00-00', 'Supplement Left Axillary Arter', 0, '2018-04-23 06:18:57'),
(97, 'Bytecard', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 416, '0000-00-00', 'Drainage of Right Lower Extrem', 0, '2018-04-23 06:18:57'),
(98, 'Hatity', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 489, '0000-00-00', 'Dilation of Innominate Artery,', 0, '2018-04-23 06:18:57'),
(99, 'Andalax', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 623, '0000-00-00', 'Release Right Kidney Pelvis, O', 0, '2018-04-23 06:18:57'),
(100, 'It', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 497, '0000-00-00', 'Computerized Tomography (CT Sc', 0, '2018-04-23 06:18:57'),
(101, 'Cookley', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 29, '0000-00-00', 'Transfer Femoral Nerve to Tibi', 0, '2018-04-23 06:18:57'),
(102, 'Zamit', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 637, '0000-00-00', 'Supplement Left Internal Iliac', 0, '2018-04-23 06:18:57'),
(103, 'Latlux', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 861, '0000-00-00', 'Release Colic Vein, Percutaneo', 0, '2018-04-23 06:18:57'),
(104, 'Trippledex', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 285, '0000-00-00', 'Insertion of Neurostimulator L', 0, '2018-04-23 06:18:57'),
(105, 'Pannier', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 35, '0000-00-00', 'Bypass Right Fallopian Tube to', 0, '2018-04-23 06:18:57'),
(106, 'Fintone', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 734, '0000-00-00', 'Bypass Common Bile Duct to Com', 0, '2018-04-23 06:18:57'),
(107, 'Veribet', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 821, '0000-00-00', 'Transfer Hypoglossal Nerve to ', 0, '2018-04-23 06:18:57'),
(108, 'Aerified', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 816, '0000-00-00', 'Supplement Atrial Septum with ', 0, '2018-04-23 06:18:57'),
(109, 'Cardguard', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 389, '0000-00-00', 'Bypass Abdominal Aorta to Mese', 0, '2018-04-23 06:18:57'),
(110, 'Konklab', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 683, '0000-00-00', 'Release Right External Iliac A', 0, '2018-04-23 06:18:57'),
(111, 'Tin', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 713, '0000-00-00', 'Bypass Bilateral Vas Deferens ', 0, '2018-04-23 06:18:57'),
(112, 'Viva', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 546, '0000-00-00', 'Bypass Esophagus to Cutaneous ', 0, '2018-04-23 06:18:57'),
(113, 'Cardify', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 650, '0000-00-00', 'Drainage of Left Sacroiliac Jo', 0, '2018-04-23 06:18:57'),
(114, 'Ventosanzap', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 410, '0000-00-00', 'Repair Left Elbow Joint, Percu', 0, '2018-04-23 06:18:57'),
(115, 'Y-find', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 404, '0000-00-00', 'Bypass Right Pleural Cavity to', 0, '2018-04-23 06:18:57'),
(116, 'Stronghold', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 595, '0000-00-00', 'Resection of Left Lower Eyelid', 0, '2018-04-23 06:18:57'),
(117, 'Namfix', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 278, '0000-00-00', 'Supplement Skull with Nonautol', 0, '2018-04-23 06:18:57'),
(118, 'Home Ing', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 619, '0000-00-00', 'Destruction of Stomach, Pyloru', 0, '2018-04-23 06:18:57'),
(119, 'Wrapsafe', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 145, '0000-00-00', 'Supplement Right Frontal Bone ', 0, '2018-04-23 06:18:57'),
(120, 'Otcom', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 493, '0000-00-00', 'Insertion of Monitoring Device', 0, '2018-04-23 06:18:57'),
(121, 'Wrapsafe', 2, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 780, '0000-00-00', 'Drainage of Right Inguinal Reg', 0, '2018-04-23 06:18:57'),
(122, 'Matsoft', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 893, '0000-00-00', 'Drainage of Left Acromioclavic', 0, '2018-04-23 06:18:57'),
(123, 'Fix San', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 625, '0000-00-00', 'Excision of Uterus, Percutaneo', 0, '2018-04-23 06:18:57'),
(124, 'Cardguard', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 915, '0000-00-00', 'Reposition Left Subclavian Vei', 0, '2018-04-23 06:18:57'),
(125, 'Otcom', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 783, '0000-00-00', 'Drainage of Left Temporomandib', 0, '2018-04-23 06:18:57'),
(126, 'Lotlux', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 479, '0000-00-00', 'Bypass Left Hypogastric Vein t', 0, '2018-04-23 06:18:57'),
(127, 'Alpha', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 397, '0000-00-00', 'Repair Right Pleura, Percutane', 0, '2018-04-23 06:18:57'),
(128, 'Home Ing', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 613, '0000-00-00', 'Replacement of Right Subclavia', 0, '2018-04-23 06:18:57'),
(129, 'Pannier', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 19, '0000-00-00', 'Bypass Right Common Iliac Arte', 0, '2018-04-23 06:18:57'),
(130, 'Y-find', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 350, '0000-00-00', 'Removal of External Fixation D', 0, '2018-04-23 06:18:57'),
(131, 'Y-Solowarm', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 436, '0000-00-00', 'Supplement Nasal Turbinate wit', 0, '2018-04-23 06:18:57'),
(132, 'Kanlam', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 275, '0000-00-00', 'Excision of Right Atrium, Perc', 0, '2018-04-23 06:18:57'),
(133, 'Zaam-Dox', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 257, '0000-00-00', 'Drainage of Left Trunk Tendon,', 0, '2018-04-23 06:18:57'),
(134, 'Ronstring', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 762, '0000-00-00', 'Occlusion of Right Cephalic Ve', 0, '2018-04-23 06:18:57'),
(135, 'Lotstring', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 73, '0000-00-00', 'Release Right Colic Artery, Op', 0, '2018-04-23 06:18:57'),
(136, 'Job', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 572, '0000-00-00', 'Insertion of Other Device into', 0, '2018-04-23 06:18:57'),
(137, 'Span', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 199, '0000-00-00', 'Dilation of Right External Car', 0, '2018-04-23 06:18:57'),
(138, 'Asoka', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 821, '0000-00-00', 'Supplement Head with Nonautolo', 0, '2018-04-23 06:18:57'),
(139, 'Fix San', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 845, '0000-00-00', 'Drainage of Femoral Nerve with', 0, '2018-04-23 06:18:57'),
(140, 'Lotstring', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 883, '0000-00-00', 'Excision of Right Parietal Bon', 0, '2018-04-23 06:18:57'),
(141, 'Flowdesk', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 522, '0000-00-00', 'Dilation of Left Common Iliac ', 0, '2018-04-23 06:18:57'),
(142, 'Mat Lam Tam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 621, '0000-00-00', 'Repair Left Ethmoid Bone, Open', 0, '2018-04-23 06:18:57'),
(143, 'Zaam-Dox', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 730, '0000-00-00', 'Repair Hyoid Bone, Percutaneou', 0, '2018-04-23 06:18:57'),
(144, 'Temp', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 247, '0000-00-00', 'Beam Radiation of Liver using ', 0, '2018-04-23 06:18:57'),
(145, 'It', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 557, '0000-00-00', 'Extirpation of Matter from Rig', 0, '2018-04-23 06:18:57'),
(146, 'Keylex', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 943, '0000-00-00', 'Repair Left Inguinal Region, O', 0, '2018-04-23 06:18:57'),
(147, 'Voltsillam', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 379, '0000-00-00', 'Drainage of Right Lower Lobe B', 0, '2018-04-23 06:18:57'),
(148, 'Y-find', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 920, '0000-00-00', 'Resection of Uvula, Open Appro', 0, '2018-04-23 06:18:57'),
(149, 'Alphazap', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 698, '0000-00-00', 'Bypass Right Subclavian Artery', 0, '2018-04-23 06:18:57'),
(150, 'Zamit', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 717, '0000-00-00', 'Bypass Left Popliteal Artery t', 0, '2018-04-23 06:18:57'),
(151, 'Flexidy', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 122, '0000-00-00', 'Bypass Right Internal Iliac Ar', 0, '2018-04-23 06:18:57'),
(152, 'Bamity', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 838, '0000-00-00', 'Repair Face Subcutaneous Tissu', 0, '2018-04-23 06:18:57'),
(153, 'Ronstring', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 182, '0000-00-00', 'Supplement Left Atrium with No', 0, '2018-04-23 06:18:57'),
(154, 'Keylex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 10, '0000-00-00', 'Supplement Cervical Vertebral ', 0, '2018-04-23 06:18:57'),
(155, 'Veribet', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 314, '0000-00-00', 'Extirpation of Matter from Lef', 0, '2018-04-23 06:18:57'),
(156, 'Y-find', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 279, '0000-00-00', 'Removal of Synthetic Substitut', 0, '2018-04-23 06:18:57'),
(157, 'Duobam', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 714, '0000-00-00', 'Extirpation of Matter from Lum', 0, '2018-04-23 06:18:57'),
(158, 'Domainer', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 246, '0000-00-00', 'Bypass Jejunum to Descending C', 0, '2018-04-23 06:18:57'),
(159, 'Matsoft', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 117, '0000-00-00', 'Drainage of Right Lower Femur,', 0, '2018-04-23 06:18:57'),
(160, 'Bamity', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 959, '0000-00-00', 'High Dose Rate (HDR) Brachythe', 0, '2018-04-23 06:18:57'),
(161, 'Stronghold', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 168, '0000-00-00', 'Lower Veins, Repair', 0, '2018-04-23 06:18:57'),
(162, 'Stim', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 371, '0000-00-00', 'Repair Left External Jugular V', 0, '2018-04-23 06:18:57'),
(163, 'Job', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 460, '0000-00-00', 'Detachment at Right Upper Leg,', 0, '2018-04-23 06:18:57'),
(164, 'Duobam', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 996, '0000-00-00', 'Restriction of Right Greater S', 0, '2018-04-23 06:18:57'),
(165, 'Rank', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 994, '0000-00-00', 'Supplement Ileocecal Valve wit', 0, '2018-04-23 06:18:57'),
(166, 'Zathin', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 293, '0000-00-00', 'Revision of Bone Growth Stimul', 0, '2018-04-23 06:18:57'),
(167, 'Zontrax', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 431, '0000-00-00', 'Drainage of Multiple Parathyro', 0, '2018-04-23 06:18:57'),
(168, 'Zaam-Dox', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 117, '0000-00-00', 'Destruction of Hepatic Vein, O', 0, '2018-04-23 06:18:57'),
(169, 'Tampflex', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 93, '0000-00-00', 'Dilation of Right Common Iliac', 0, '2018-04-23 06:18:57'),
(170, 'Y-find', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 534, '0000-00-00', 'Excision of Left Thyroid Gland', 0, '2018-04-23 06:18:57'),
(171, 'Opela', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 17, '0000-00-00', 'Destruction of Upper Esophagus', 0, '2018-04-23 06:18:57'),
(172, 'Y-find', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 698, '0000-00-00', 'Change Drainage Device in Mese', 0, '2018-04-23 06:18:57'),
(173, 'Subin', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 308, '0000-00-00', 'Bypass Right Fallopian Tube to', 0, '2018-04-23 06:18:57'),
(174, 'Zamit', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 125, '0000-00-00', 'Chiropractic Manipulation of T', 0, '2018-04-23 06:18:57'),
(175, 'It', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 35, '0000-00-00', 'Restriction of Left Large Inte', 0, '2018-04-23 06:18:57'),
(176, 'Fixflex', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 578, '0000-00-00', 'Drainage of Right Ulnar Artery', 0, '2018-04-23 06:18:57'),
(177, 'Zamit', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 206, '0000-00-00', 'Drainage of Right Upper Eyelid', 0, '2018-04-23 06:18:57'),
(178, 'Rank', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 813, '0000-00-00', 'Removal of Nonautologous Tissu', 0, '2018-04-23 06:18:57'),
(179, 'Namfix', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 939, '0000-00-00', 'Bypass Right Ventricle to Left', 0, '2018-04-23 06:18:57'),
(180, 'Toughjoyfax', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 350, '0000-00-00', 'Revision of Radioactive Elemen', 0, '2018-04-23 06:18:57'),
(181, 'Job', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 808, '0000-00-00', 'Replacement of Left Metatarsal', 0, '2018-04-23 06:18:57'),
(182, 'Biodex', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 647, '0000-00-00', 'Beam Radiation of Kidney using', 0, '2018-04-23 06:18:57'),
(183, 'Pannier', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 630, '0000-00-00', 'Destruction of Left Axillary V', 0, '2018-04-23 06:18:57'),
(184, 'Lotlux', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 223, '0000-00-00', 'Resection of Left Upper Arm Mu', 0, '2018-04-23 06:18:57'),
(185, 'Opela', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 431, '0000-00-00', 'Supplement Aortic Valve with S', 0, '2018-04-23 06:18:57'),
(186, 'Bitchip', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 924, '0000-00-00', 'Insertion of Tissue Expander i', 0, '2018-04-23 06:18:57'),
(187, 'Domainer', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 485, '0000-00-00', 'Bypass Abdominal Aorta to Bila', 0, '2018-04-23 06:20:57'),
(188, 'Bamity', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 446, '0000-00-00', 'Transfer Accessory Nerve to Va', 0, '2018-04-23 06:18:57'),
(189, 'Konklab', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 244, '0000-00-00', 'Bypass Left Vertebral Vein to ', 0, '2018-04-23 06:18:57'),
(190, 'Fintone', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 746, '0000-00-00', 'Destruction of Accessory Pancr', 0, '2018-04-23 06:18:57'),
(191, 'Stim', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 460, '0000-00-00', 'Dilation of Left Thyroid Arter', 0, '2018-04-23 06:18:57'),
(192, 'Sub-Ex', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 91, '0000-00-00', 'Alteration of Right Lower Eyel', 0, '2018-04-23 06:18:57'),
(193, 'Mat Lam Tam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 960, '0000-00-00', 'Destruction of Right Lower Ext', 0, '2018-04-23 06:18:57'),
(194, 'Gembucket', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 591, '0000-00-00', 'Fluoroscopy of Sacroiliac Join', 0, '2018-04-23 06:18:57'),
(195, 'Y-Solowarm', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 875, '0000-00-00', 'Replacement of Right Nipple wi', 0, '2018-04-23 06:18:57'),
(196, 'Voltsillam', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 956, '0000-00-00', 'Drainage of Right Superior Par', 0, '2018-04-23 06:18:57'),
(197, 'Duobam', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 114, '0000-00-00', 'Drainage of Right Fibula, Perc', 0, '2018-04-23 06:18:57'),
(198, 'Sonsing', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 896, '0000-00-00', 'Motor Function Treatment of In', 0, '2018-04-23 07:25:34'),
(199, 'Tin', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 454, '0000-00-00', 'Revision of Autologous Tissue ', 0, '2018-04-23 06:18:57'),
(200, 'Sub-Ex', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 724, '0000-00-00', 'Tinnitus Masker Assessment usi', 0, '2018-04-23 06:18:57'),
(201, 'Chatham Courts', 2, 1, 'def@gmail.com', 'Dallas', '7815 McCallum Blvd Apt', 'TX', 'United States', NULL, 1200, NULL, 'Chatham Court & Reflections Apartments offer residents exceptional design, energized living, and extraordinary beauty perfectly positioned in Dallas, Texas. Our apartment community provides a variety of distinctive 1 and 2 bedroom apartment homes that accommodate your lifestyle.\r\n              ', NULL, '2018-04-23 08:03:27'),
(202, 'Chatham Courts', 2, 1, 'def@gmail.com', 'Dallas', '7815 McCallum Blvd', 'Texas', 'United States', NULL, 1100, NULL, 'Best swimming pool              ', 0, '2018-04-23 08:23:15'),
(203, 'McCallum Meadows', 2, 1, 'def@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 1000, NULL, 'Here at our community, we strive to offer EXCELLENT customer service to each and every individual.  We offer convenient living experiences located close to George Bush Tollway, Interstate 75, and Highway 635.  We are walking distance to major shopping centers and UTD College.', 0, '2018-04-23 08:25:38'),
(204, 'McCallum Glen', 2, 1, 'def@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 1300, NULL, 'Here at our community, we strive to offer EXCELLENT customer service to each and every individual.  We offer convenient living experiences located close to George Bush Tollway, Interstate 75, and Highway 635.  We are walking distance to major shopping centers and UTD College.\r\n              ', 0, '2018-04-23 08:27:32'),
(205, 'McCallum Communities', 2, 1, 'def@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 1200, NULL, 'Here at our community, we strive to offer EXCELLENT customer service to each and every individual.  We offer convenient living experiences located close to George Bush Tollway, Interstate 75, and Highway 635.  We are walking distance to major shopping centers and UTD College.              ', 0, '2018-04-23 08:28:39'),
(206, 'Sofa set', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 49, NULL, 'Comfortable Sofa set               ', 0, '2018-04-23 08:30:56'),
(207, 'Dining Table', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 80, NULL, 'Family Dining Table              ', 0, '2018-04-23 08:31:58'),
(208, 'Ashwood ', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 1000, NULL, 'Welcome to Ashwood Park. We are glad you are visiting our community - you will find valuable information about us as you explore this site. Finding a home that reflects your lifestyle is important, and you will find that Ashwood Park exemplifies our commitment to Living Excellence. Great amenities, professional management, and convenient location add up to an incredible living experience. Make Ashwood Park your new home. Rent payment options include check, electronic (ACH) & credit cards. Now offering concessions to 55+ residents, teachers, military, police officers and fire fighters. Contact the office today for details.              ', 0, '2018-04-23 08:35:29'),
(209, 'McCallum Courts', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 1300, NULL, 'Comfortable dwelling              ', 0, '2018-04-23 08:36:30'),
(210, 'University Village', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 1000, NULL, 'Best place to live              ', 0, '2018-04-23 08:38:03'),
(211, 'Crockery', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 140, NULL, 'Crockery set              ', 0, '2018-04-23 08:38:54'),
(212, 'Double bed', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 50, NULL, 'Bed              ', 0, '2018-04-23 08:42:50'),
(213, 'Ladies Bag', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 67, NULL, 'Fancy bag              ', 0, '2018-04-23 08:43:37'),
(214, 'Laptop', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 790, NULL, 'Best features              ', 0, '2018-04-23 08:45:50'),
(215, 'Dress', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 67, NULL, 'Beautiful dress              ', 0, '2018-04-23 08:46:35'),
(216, 'Estates of Frankford', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 1600, NULL, 'Welcome to Estates on Frankford, a fantastic place to call home! Convenient to the Dallas North Tollway and 190, we offer granite countertops, ceramic tile entry, plank flooring, built-in bookshelves, ceiling fans, and washer/dryer. Spectacular amenities include a resort-style pool, indoor and outdoor basketball, racquetball, lighted tennis, lighted sand/water volleyball, putting green, playground, fitness center, game room w/ pool table/foosball/air hockey, and business center              ', 0, '2018-04-23 08:48:12'),
(217, 'Estates of Frankford', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'Texas', 'United States', NULL, 3000, NULL, 'Welcome to Estates on Frankford, a fantastic place to call home! Convenient to the Dallas North Tollway and 190, we offer granite countertops, ceramic tile entry, plank flooring, built-in bookshelves, ceiling fans, and washer/dryer. Spectacular amenities include a resort-style pool, indoor and outdoor basketball, racquetball, lighted tennis, lighted sand/water volleyball, putting green, playground, fitness center, game room w/ pool table/foosball/air hockey, and business center              ', 0, '2018-04-23 08:50:08'),
(218, 'Earphones', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 50, NULL, 'Earphones               ', 0, '2018-04-23 08:52:11'),
(219, 'Earrings', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 80, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 08:58:18'),
(220, 'Bracelet', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 29, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:00:18'),
(221, 'Palencia', 2, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 1400, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:02:22'),
(222, 'Jacket', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 69, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:03:10'),
(223, 'Gown', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd Apt', 'TX', 'United States', NULL, 380, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:04:58'),
(224, 'Mobile', 1, 1, 'yashpradhan46@gmail.com', 'Dallas', '7815 McCallum Blvd ', 'TX', 'United States', NULL, 1290, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:07:12'),
(225, '7421 Frankford', 2, 1, 'shivani95thakkar@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 3200, NULL, 'Brief description...\r\n              ', 1, '2018-04-23 09:12:56'),
(226, '7421 Frankford', 2, 1, 'shivani95thakkar@gmail.com', 'Dallas', '7815 McCallum Blvd', 'Texas', 'United States', NULL, 3200, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:13:58'),
(227, 'Hat', 1, 1, 'shivani95thakkar@gmail.com', 'Dallas', '7815 McCallum Blvd Apt', 'TX', 'United States', NULL, 12, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:15:01'),
(228, 'microwave', 1, 1, 'shivani95thakkar@gmail.com', 'Dallas', '7815 McCallum Blvd', 'TX', 'United States', NULL, 56, NULL, 'Brief description...\r\n              ', 0, '2018-04-23 09:16:03');

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
  `image_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_image`
--

INSERT INTO `utility_image` (`utility_id`, `image_path`) VALUES
(1, '../php/product-images/sahayrupali@gmail.com/7.jpg'),
(2, '../php/product-images/yash@gmail.com/9.jpg'),
(3, '../php/product-images/sahayrupali@gmail.com/3.jpg'),
(4, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(5, '../php/product-images/yash@gmail.com/2.jpg'),
(6, '../php/product-images/yash@gmail.com/2.jpg'),
(7, '../php/product-images/shivani95thakkar@gmail.com/5.jpg'),
(8, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(9, '../php/product-images/sahayrupali@gmail.com/2.jpg'),
(10, '../php/product-images/yash@gmail.com/9.jpg'),
(11, '../php/product-images/yash@gmail.com/9.jpg'),
(12, '../php/product-images/yashpradhan46@gmail.com/6.jpg'),
(13, '../php/product-images/sahayrupali@gmail.com/5.jpg'),
(14, '../php/product-images/sahayrupali@gmail.com/9.jpg'),
(15, '../php/product-images/sahayrupali@gmail.com/9.jpg'),
(16, '../php/product-images/rupali@gmail.com/8.jpg'),
(17, '../php/product-images/sahayrupali@gmail.com/4.jpg'),
(18, '../php/product-images/yash@gmail.com/2.jpg'),
(19, '../php/product-images/yash@gmail.com/3.jpg'),
(20, '../php/product-images/shivani95thakkar@gmail.com/3.jpg'),
(21, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(22, '../php/product-images/rupali@gmail.com/2.jpg'),
(23, '../php/product-images/yash@gmail.com/6.jpg'),
(24, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(25, '../php/product-images/shivani95thakkar@gmail.com/2.jpg'),
(26, '../php/product-images/yash@gmail.com/4.jpg'),
(27, '../php/product-images/yash@gmail.com/8.jpg'),
(28, '../php/product-images/shivani95thakkar@gmail.com/5.jpg'),
(29, '../php/product-images/yash@gmail.com/3.jpg'),
(30, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(31, '../php/product-images/sahayrupali@gmail.com/4.jpg'),
(32, '../php/product-images/rupali@gmail.com/2.jpg'),
(33, '../php/product-images/rupali@gmail.com/7.jpg'),
(34, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(35, '../php/product-images/yash@gmail.com/7.jpg'),
(36, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(37, '../php/product-images/rupali@gmail.com/3.jpg'),
(38, '../php/product-images/yash@gmail.com/2.jpg'),
(39, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(40, '../php/product-images/rupali@gmail.com/7.jpg'),
(41, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(42, '../php/product-images/yash@gmail.com/5.jpg'),
(43, '../php/product-images/shivani95thakkar@gmail.com/7.jpg'),
(44, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(45, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(46, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(47, '../php/product-images/shivani95thakkar@gmail.com/7.jpg'),
(48, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(49, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(50, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(51, '../php/product-images/rupali@gmail.com/3.jpg'),
(52, '../php/product-images/shivani95thakkar@gmail.com/3.jpg'),
(53, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(54, '../php/product-images/rupali@gmail.com/4.jpg'),
(55, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(56, '../php/product-images/sahayrupali@gmail.com/5.jpg'),
(57, '../php/product-images/rupali@gmail.com/8.jpg'),
(58, '../php/product-images/yash@gmail.com/4.jpg'),
(59, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(60, '../php/product-images/sahayrupali@gmail.com/8.jpg'),
(61, '../php/product-images/yash@gmail.com/4.jpg'),
(62, '../php/product-images/shivani95thakkar@gmail.com/6.jpg'),
(63, '../php/product-images/yash@gmail.com/5.jpg'),
(64, '../php/product-images/rupali@gmail.com/3.jpg'),
(65, '../php/product-images/rupali@gmail.com/3.jpg'),
(66, '../php/product-images/rupali@gmail.com/3.jpg'),
(67, '../php/product-images/shivani95thakkar@gmail.com/5.jpg'),
(68, '../php/product-images/yashpradhan46@gmail.com/68yashpradhan.jpg'),
(69, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(70, '../php/product-images/sahayrupali@gmail.com/8.jpg'),
(71, '../php/product-images/yash@gmail.com/7.jpg'),
(72, '../php/product-images/yash@gmail.com/8.jpg'),
(73, '../php/product-images/shivani95thakkar@gmail.com/3.jpg'),
(74, '../php/product-images/yashpradhan46@gmail.com/2.jpg'),
(75, '../php/product-images/yash@gmail.com/1.jpg'),
(76, '../php/product-images/sahayrupali@gmail.com/7.jpg'),
(77, '../php/product-images/rupali@gmail.com/5.jpg'),
(78, '../php/product-images/rupali@gmail.com/6.jpg'),
(79, '../php/product-images/yash@gmail.com/9.jpg'),
(80, '../php/product-images/yashpradhan46@gmail.com/7.jpg'),
(81, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(82, '../php/product-images/sahayrupali@gmail.com/7.jpg'),
(83, '../php/product-images/sahayrupali@gmail.com/9.jpg'),
(84, '../php/product-images/rupali@gmail.com/7.jpg'),
(85, '../php/product-images/rupali@gmail.com/1.jpg'),
(86, '../php/product-images/yash@gmail.com/3.jpg'),
(87, '../php/product-images/rupali@gmail.com/3.jpg'),
(88, '../php/product-images/yash@gmail.com/3.jpg'),
(89, '../php/product-images/yash@gmail.com/7.jpg'),
(90, '../php/product-images/yash@gmail.com/7.jpg'),
(91, '../php/product-images/rupali@gmail.com/1.jpg'),
(92, '../php/product-images/rupali@gmail.com/5.jpg'),
(93, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(94, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(95, '../php/product-images/yash@gmail.com/5.jpg'),
(96, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(97, '../php/product-images/rupali@gmail.com/6.jpg'),
(98, '../php/product-images/yash@gmail.com/9.jpg'),
(99, '../php/product-images/rupali@gmail.com/5.jpg'),
(100, '../php/product-images/yashpradhan46@gmail.com/1.jpg'),
(101, '../php/product-images/rupali@gmail.com/3.jpg'),
(102, '../php/product-images/yashpradhan46@gmail.com/6.jpg'),
(103, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(104, '../php/product-images/rupali@gmail.com/4.jpg'),
(105, '../php/product-images/shivani95thakkar@gmail.com/8.jpg'),
(106, '../php/product-images/rupali@gmail.com/9.jpg'),
(107, '../php/product-images/rupali@gmail.com/4.jpg'),
(108, '../php/product-images/yashpradhan46@gmail.com/7.jpg'),
(109, '../php/product-images/rupali@gmail.com/7.jpg'),
(110, '../php/product-images/sahayrupali@gmail.com/2.jpg'),
(111, '../php/product-images/sahayrupali@gmail.com/4.jpg'),
(112, '../php/product-images/shivani95thakkar@gmail.com/7.jpg'),
(113, '../php/product-images/sahayrupali@gmail.com/7.jpg'),
(114, '../php/product-images/rupali@gmail.com/4.jpg'),
(115, '../php/product-images/yashpradhan46@gmail.com/6.jpg'),
(116, '../php/product-images/yashpradhan46@gmail.com/1.jpg'),
(117, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(118, '../php/product-images/yashpradhan46@gmail.com/2.jpg'),
(119, '../php/product-images/sahayrupali@gmail.com/3.jpg'),
(120, '../php/product-images/sahayrupali@gmail.com/5.jpg'),
(121, '../php/product-images/yashpradhan46@gmail.com/4.jpg'),
(122, '../php/product-images/rupali@gmail.com/7.jpg'),
(123, '../php/product-images/rupali@gmail.com/5.jpg'),
(124, '../php/product-images/sahayrupali@gmail.com/6.jpg'),
(125, '../php/product-images/sahayrupali@gmail.com/2.jpg'),
(126, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(127, '../php/product-images/yashpradhan46@gmail.com/1.jpg'),
(128, '../php/product-images/yashpradhan46@gmail.com/3.jpg'),
(129, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(130, '../php/product-images/sahayrupali@gmail.com/5.jpg'),
(131, '../php/product-images/yash@gmail.com/2.jpg'),
(132, '../php/product-images/rupali@gmail.com/5.jpg'),
(133, '../php/product-images/sahayrupali@gmail.com/9.jpg'),
(134, '../php/product-images/yash@gmail.com/8.jpg'),
(135, '../php/product-images/sahayrupali@gmail.com/2.jpg'),
(136, '../php/product-images/sahayrupali@gmail.com/6.jpg'),
(137, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(138, '../php/product-images/shivani95thakkar@gmail.com/2.jpg'),
(139, '../php/product-images/yash@gmail.com/9.jpg'),
(140, '../php/product-images/yash@gmail.com/1.jpg'),
(141, '../php/product-images/rupali@gmail.com/4.jpg'),
(142, '../php/product-images/sahayrupali@gmail.com/3.jpg'),
(143, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(144, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(145, '../php/product-images/yashpradhan46@gmail.com/4.jpg'),
(146, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(147, '../php/product-images/yash@gmail.com/1.jpg'),
(148, '../php/product-images/yashpradhan46@gmail.com/1.jpg'),
(149, '../php/product-images/sahayrupali@gmail.com/6.jpg'),
(150, '../php/product-images/rupali@gmail.com/2.jpg'),
(151, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(152, '../php/product-images/shivani95thakkar@gmail.com/6.jpg'),
(153, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(154, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(155, '../php/product-images/shivani95thakkar@gmail.com/3.jpg'),
(156, '../php/product-images/rupali@gmail.com/5.jpg'),
(157, '../php/product-images/shivani95thakkar@gmail.com/3.jpg'),
(158, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(159, '../php/product-images/yash@gmail.com/5.jpg'),
(160, '../php/product-images/sahayrupali@gmail.com/3.jpg'),
(161, '../php/product-images/sahayrupali@gmail.com/7.jpg'),
(162, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(163, '../php/product-images/yash@gmail.com/9.jpg'),
(164, '../php/product-images/yash@gmail.com/9.jpg'),
(165, '../php/product-images/sahayrupali@gmail.com/4.jpg'),
(166, '../php/product-images/rupali@gmail.com/4.jpg'),
(167, '../php/product-images/yash@gmail.com/6.jpg'),
(168, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(169, '../php/product-images/yash@gmail.com/9.jpg'),
(170, '../php/product-images/shivani95thakkar@gmail.com/4.jpg'),
(171, '../php/product-images/yashpradhan46@gmail.com/6.jpg'),
(172, '../php/product-images/rupali@gmail.com/9.jpg'),
(173, '../php/product-images/rupali@gmail.com/8.jpg'),
(174, '../php/product-images/yash@gmail.com/7.jpg'),
(175, '../php/product-images/yashpradhan46@gmail.com/8.jpg'),
(176, '../php/product-images/rupali@gmail.com/5.jpg'),
(177, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(178, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(179, '../php/product-images/rupali@gmail.com/7.jpg'),
(180, '../php/product-images/sahayrupali@gmail.com/1.jpg'),
(181, '../php/product-images/shivani95thakkar@gmail.com/7.jpg'),
(182, '../php/product-images/rupali@gmail.com/6.jpg'),
(183, '../php/product-images/sahayrupali@gmail.com/1.jpg'),
(184, '../php/product-images/yashpradhan46@gmail.com/9.jpg'),
(185, '../php/product-images/yash@gmail.com/7.jpg'),
(186, '../php/product-images/shivani95thakkar@gmail.com/6.jpg'),
(187, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(188, '../php/product-images/rupali@gmail.com/3.jpg'),
(189, '../php/product-images/shivani95thakkar@gmail.com/2.jpg'),
(190, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(191, '../php/product-images/yashpradhan46@gmail.com/3.jpg'),
(192, '../php/product-images/rupali@gmail.com/8.jpg'),
(193, '../php/product-images/rupali@gmail.com/7.jpg'),
(194, '../php/product-images/shivani95thakkar@gmail.com/1.jpg'),
(195, '../php/product-images/sahayrupali@gmail.com/5.jpg'),
(196, '../php/product-images/yash@gmail.com/2.jpg'),
(197, '../php/product-images/yashpradhan46@gmail.com/2.jpg'),
(198, '../php/product-images/yashpradhan46@gmail.com/198yashpradhan.jpg'),
(199, '../php/product-images/rupali@gmail.com/6.jpg'),
(200, '../php/product-images/yashpradhan46@gmail.com/5.jpg'),
(201, '../php/product-images/def@gmail.com/201house1.jpg'),
(202, '../php/product-images/def@gmail.com/202house2.jpg'),
(203, '../php/product-images/def@gmail.com/203house3.jpg'),
(204, '../php/product-images/def@gmail.com/204house4.jpg'),
(205, '../php/product-images/def@gmail.com/205house5.jpg'),
(206, '../php/product-images/yashpradhan46@gmail.com/206item2.jpg'),
(207, '../php/product-images/yashpradhan46@gmail.com/207item3.jpg'),
(208, '../php/product-images/yashpradhan46@gmail.com/208house7.jpg'),
(209, '../php/product-images/yashpradhan46@gmail.com/209house8.jpg'),
(210, '../php/product-images/yashpradhan46@gmail.com/210house9.jpg'),
(211, '../php/product-images/yashpradhan46@gmail.com/211item9.jpg'),
(212, '../php/product-images/yashpradhan46@gmail.com/212item4.jpeg'),
(213, '../php/product-images/yashpradhan46@gmail.com/213item10.jpg'),
(214, '../php/product-images/yashpradhan46@gmail.com/214item8.jpg'),
(215, '../php/product-images/yashpradhan46@gmail.com/215item16.jpg'),
(216, '../php/product-images/yashpradhan46@gmail.com/216house10.jpg'),
(217, '../php/product-images/yashpradhan46@gmail.com/217house20.jpg'),
(218, '../php/product-images/yashpradhan46@gmail.com/218item18.jpg'),
(219, '../php/product-images/yashpradhan46@gmail.com/219item19.jpg'),
(220, '../php/product-images/yashpradhan46@gmail.com/220item11.jpg'),
(221, '../php/product-images/yashpradhan46@gmail.com/221house19.jpg'),
(222, '../php/product-images/yashpradhan46@gmail.com/222item17.jpg'),
(223, '../php/product-images/yashpradhan46@gmail.com/223item15.jpg'),
(224, '../php/product-images/yashpradhan46@gmail.com/224item5.jpg'),
(225, '../php/product-images/shivani95thakkar@gmail.com/225house17.jpg'),
(226, '../php/product-images/shivani95thakkar@gmail.com/226house17.jpg'),
(227, '../php/product-images/shivani95thakkar@gmail.com/227item20.jpg'),
(228, '../php/product-images/shivani95thakkar@gmail.com/228item13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `email_id` varchar(30) NOT NULL,
  `utility_id` bigint(30) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`email_id`, `utility_id`, `timestamp`) VALUES
('def@gmail.com', 198, '2018-04-23 08:26:19.260353'),
('shivani95thakkar@gmail.com', 224, '2018-04-23 09:14:30.045031'),
('shivani95thakkar@gmail.com', 226, '2018-04-23 09:14:22.102508'),
('shivani95thakkar@gmail.com', 227, '2018-04-23 09:15:24.763414'),
('yashpradhan46@gmail.com', 4, '2018-04-23 06:12:23.410111'),
('yashpradhan46@gmail.com', 7, '2018-04-23 06:32:17.895987'),
('yashpradhan46@gmail.com', 8, '2018-04-23 06:12:20.777001'),
('yashpradhan46@gmail.com', 13, '2018-04-23 06:32:35.812124'),
('yashpradhan46@gmail.com', 33, '2018-04-23 06:34:10.067831'),
('yashpradhan46@gmail.com', 37, '2018-04-23 06:34:04.670538'),
('yashpradhan46@gmail.com', 49, '2018-04-23 06:34:15.604423'),
('yashpradhan46@gmail.com', 52, '2018-04-23 07:28:14.652842'),
('yashpradhan46@gmail.com', 158, '2018-04-23 06:28:14.122321'),
('yashpradhan46@gmail.com', 175, '2018-04-23 06:13:44.153448');

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
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `utility_image`
--
ALTER TABLE `utility_image`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
