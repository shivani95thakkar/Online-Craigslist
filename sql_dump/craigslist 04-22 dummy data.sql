-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 05:57 AM
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
(1, 'It', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 601, '0000-00-00', 'Division of Glossopharyngeal N', 0),
(2, 'Tresom', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 419, '0000-00-00', 'Drainage of Right Brachial Vei', 1),
(3, 'Ventosanzap', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 338, '0000-00-00', 'Reattachment of Large Intestin', 1),
(4, 'Stim', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 142, '0000-00-00', 'Introduction of Other Therapeu', 0),
(5, 'Namfix', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 677, '0000-00-00', 'Revision of Other Device in He', 1),
(6, 'Greenlam', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 854, '0000-00-00', 'Destruction of Lower Esophagus', 0),
(7, 'Duobam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 281, '0000-00-00', 'Bypass Left Kidney Pelvis to L', 0),
(8, 'Wrapsafe', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 802, '0000-00-00', 'Excision of Tibial Nerve, Perc', 0),
(9, 'Bitwolf', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 175, '0000-00-00', 'Drainage of Left Lower Leg Ten', 0),
(10, 'Subin', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 731, '0000-00-00', 'Range of Motion and Joint Mobi', 0),
(11, 'Greenlam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 577, '0000-00-00', 'Removal of Synthetic Substitut', 0),
(12, 'Matsoft', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 869, '0000-00-00', 'Bypass Right Hepatic Duct to C', 0),
(13, 'Keylex', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 227, '0000-00-00', 'Occlusion of Small Intestine w', 0),
(14, 'Ventosanzap', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 527, '0000-00-00', 'Dilation of Left Axillary Arte', 0),
(15, 'Alphazap', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 965, '0000-00-00', 'Replacement of Right Posterior', 0),
(16, 'Fix San', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 809, '0000-00-00', 'Division of Lumbar Nerve, Perc', 0),
(17, 'Quo Lux', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 857, '0000-00-00', 'Removal of Nonautologous Tissu', 0),
(18, 'Lotlux', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 408, '0000-00-00', 'Destruction of Right Spermatic', 0),
(19, 'Redhold', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 452, '0000-00-00', 'Supplement Left Femoral Shaft ', 0),
(20, 'Keylex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 278, '0000-00-00', 'Fluoroscopy of Ileal Diversion', 0),
(21, 'Bitwolf', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 930, '0000-00-00', 'Drainage of Lumbar Vertebra wi', 0),
(22, 'Konklux', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 947, '0000-00-00', 'Release Right Upper Leg Subcut', 0),
(23, 'Mat Lam Tam', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 627, '0000-00-00', 'Revision of Drainage Device in', 0),
(24, 'Quo Lux', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 333, '0000-00-00', 'Alteration of Left Shoulder Re', 0),
(25, 'Biodex', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 844, '0000-00-00', 'Insertion of Radioactive Eleme', 0),
(26, 'Wrapsafe', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 392, '0000-00-00', 'Introduction of Local Anesthet', 0),
(27, 'Sub-Ex', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 458, '0000-00-00', 'Reattachment of Right Abdomen ', 0),
(28, 'Rank', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 258, '0000-00-00', 'Resection of Right Ureter, Ope', 0),
(29, 'Solarbreeze', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 415, '0000-00-00', 'Insertion of Cardiac Lead into', 0),
(30, 'Konklab', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 38, '0000-00-00', 'Supplement Right Abdomen Tendo', 0),
(31, 'Viva', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 901, '0000-00-00', 'Insertion of Bone Growth Stimu', 0),
(32, 'Lotstring', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 912, '0000-00-00', 'Revision of Synthetic Substitu', 0),
(33, 'Job', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 755, '0000-00-00', 'Drainage of Left Finger Phalan', 0),
(34, 'Daltfresh', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 975, '0000-00-00', 'Drainage of Right Finger Phala', 0),
(35, 'Hatity', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 552, '0000-00-00', 'Supplement Left Vocal Cord wit', 0),
(36, 'Treeflex', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 78, '0000-00-00', 'Ultrasonography of Penile Arte', 0),
(37, 'Flexidy', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 792, '0000-00-00', 'Destruction of Right Abdomen M', 0),
(38, 'Alpha', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 169, '0000-00-00', 'Occlusion of Left Foot Vein wi', 0),
(39, 'Fix San', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 422, '0000-00-00', 'Release Right Tarsal, Open App', 0),
(40, 'Kanlam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 757, '0000-00-00', 'Replacement of Left Upper Arm ', 0),
(41, 'Holdlamis', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 817, '0000-00-00', 'Excision of Face, Percutaneous', 0),
(42, 'Cookley', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 913, '0000-00-00', 'Dilation of Right Common Iliac', 0),
(43, 'Tresom', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 93, '0000-00-00', 'Extraction of Oculomotor Nerve', 0),
(44, 'Aerified', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 687, '0000-00-00', 'Revision of Synthetic Substitu', 0),
(45, 'Trippledex', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 356, '0000-00-00', 'Release Left Frontal Bone, Ope', 0),
(46, 'Tin', 1, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 399, '0000-00-00', 'Contact Radiation of Abdomen', 0),
(47, 'Stim', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 337, '0000-00-00', 'Revision of External Fixation ', 0),
(48, 'Treeflex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 142, '0000-00-00', 'Dilation of Hepatic Artery wit', 0),
(49, 'Temp', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 710, '0000-00-00', 'Pheresis of Leukocytes, Multip', 0),
(50, 'Tres-Zap', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 716, '0000-00-00', 'Supplement Jejunum with Autolo', 0),
(51, 'Stringtough', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 865, '0000-00-00', 'Computerized Tomography (CT Sc', 0),
(52, 'Bitchip', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 684, '0000-00-00', 'Supplement Lumbosacral Disc wi', 0),
(53, 'Flowdesk', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 984, '0000-00-00', 'Excision of Left Vertebral Vei', 0),
(54, 'Sonair', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 408, '0000-00-00', 'Revision of Extraluminal Devic', 0),
(55, 'Bigtax', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 180, '0000-00-00', 'Dilation of Ampulla of Vater w', 0),
(56, 'Daltfresh', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 278, '0000-00-00', 'Dilation of Coronary Artery, O', 0),
(57, 'Cardify', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 851, '0000-00-00', 'Fusion of Right Metatarsal-Pha', 0),
(58, 'Cardify', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 715, '0000-00-00', 'Respiratory System, Fragmentat', 0),
(59, 'Bytecard', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 845, '0000-00-00', 'Supplement Right Maxilla with ', 0),
(60, 'Treeflex', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 416, '0000-00-00', 'Supplement Left Hand Artery wi', 0),
(61, 'Mat Lam Tam', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 232, '0000-00-00', 'Repair Vagina, Via Natural or ', 0),
(62, 'Cardify', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 215, '0000-00-00', 'Bypass Left Temporal Artery to', 0),
(63, 'Asoka', 1, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 690, '0000-00-00', 'Revision of Nonautologous Tiss', 0),
(64, 'Sub-Ex', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 534, '0000-00-00', 'Removal of Internal Fixation D', 0),
(65, 'Kanlam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 121, '0000-00-00', 'Supplement Left Internal Mamma', 0),
(66, 'Kanlam', 2, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 329, '0000-00-00', 'Repair Eye in Products of Conc', 0),
(67, 'Redhold', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 413, '0000-00-00', 'Fusion of Lumbar Vertebral Joi', 0),
(68, 'Zathin', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 836, '0000-00-00', 'Supplement Right Rib with Nona', 0),
(69, 'Bitchip', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 313, '0000-00-00', 'Removal of Radioactive Element', 0),
(70, 'Cardify', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 5, '0000-00-00', 'Revision of Synthetic Substitu', 0),
(71, 'Regrant', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 788, '0000-00-00', 'Excision of Right Diaphragm, P', 0),
(72, 'Temp', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 401, '0000-00-00', 'Extirpation of Matter from Rad', 0),
(73, 'Solarbreeze', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 798, '0000-00-00', 'Low Dose Rate (LDR) Brachyther', 0),
(74, 'Keylex', 1, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 300, '0000-00-00', 'Bypass Cerebral Ventricle to B', 0),
(75, 'Tin', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 883, '0000-00-00', 'Introduction of Anti-inflammat', 0),
(76, 'Matsoft', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 592, '0000-00-00', 'Removal of Synthetic Substitut', 0),
(77, 'Tampflex', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 254, '0000-00-00', 'Repair Left Upper Lung Lobe, O', 0),
(78, 'Voyatouch', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 447, '0000-00-00', 'Map Basal Ganglia, Percutaneou', 0),
(79, 'Namfix', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 386, '0000-00-00', 'Excision of Left Hand Subcutan', 0),
(80, 'Overhold', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 485, '0000-00-00', 'Extirpation of Matter from Olf', 0),
(81, 'Voyatouch', 1, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 41, '0000-00-00', 'Restriction of Right Common Ca', 0),
(82, 'Zathin', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 702, '0000-00-00', 'Release Left External Carotid ', 0),
(83, 'Zontrax', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 953, '0000-00-00', 'Revision of Extraluminal Devic', 0),
(84, 'Asoka', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 232, '0000-00-00', 'Introduction of Other Anti-inf', 0),
(85, 'Sub-Ex', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 947, '0000-00-00', 'Revision of Artificial Sphinct', 0),
(86, 'Quo Lux', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 533, '0000-00-00', 'Bypass Left Ureter to Left Ure', 0),
(87, 'Daltfresh', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 519, '0000-00-00', 'Dilation of Left Internal Mamm', 0),
(88, 'Holdlamis', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 947, '0000-00-00', 'Excision of Left Peroneal Arte', 0),
(89, 'Subin', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 383, '0000-00-00', 'Drainage of Spleen, Open Appro', 0),
(90, 'Zoolab', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 835, '0000-00-00', 'Repair Head, Open Approach', 0),
(91, 'Flowdesk', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 600, '0000-00-00', 'Insertion of Monitoring Device', 0),
(92, 'Sub-Ex', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 165, '0000-00-00', 'Removal of Autologous Tissue S', 0),
(93, 'Prodder', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 959, '0000-00-00', 'Revision of External Fixation ', 0),
(94, 'Voyatouch', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 8, '0000-00-00', 'Restriction of Left Femoral Ve', 0),
(95, 'Andalax', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 481, '0000-00-00', 'Supplement Left Metacarpal wit', 0),
(96, 'Cookley', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 282, '0000-00-00', 'Supplement Left Axillary Arter', 0),
(97, 'Bytecard', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 416, '0000-00-00', 'Drainage of Right Lower Extrem', 0),
(98, 'Hatity', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 489, '0000-00-00', 'Dilation of Innominate Artery,', 0),
(99, 'Andalax', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 623, '0000-00-00', 'Release Right Kidney Pelvis, O', 0),
(100, 'It', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 497, '0000-00-00', 'Computerized Tomography (CT Sc', 0),
(101, 'Cookley', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 29, '0000-00-00', 'Transfer Femoral Nerve to Tibi', 0),
(102, 'Zamit', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 637, '0000-00-00', 'Supplement Left Internal Iliac', 0),
(103, 'Latlux', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 861, '0000-00-00', 'Release Colic Vein, Percutaneo', 0),
(104, 'Trippledex', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 285, '0000-00-00', 'Insertion of Neurostimulator L', 0),
(105, 'Pannier', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 35, '0000-00-00', 'Bypass Right Fallopian Tube to', 0),
(106, 'Fintone', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 734, '0000-00-00', 'Bypass Common Bile Duct to Com', 0),
(107, 'Veribet', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 821, '0000-00-00', 'Transfer Hypoglossal Nerve to ', 0),
(108, 'Aerified', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 816, '0000-00-00', 'Supplement Atrial Septum with ', 0),
(109, 'Cardguard', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 389, '0000-00-00', 'Bypass Abdominal Aorta to Mese', 0),
(110, 'Konklab', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 683, '0000-00-00', 'Release Right External Iliac A', 0),
(111, 'Tin', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 713, '0000-00-00', 'Bypass Bilateral Vas Deferens ', 0),
(112, 'Viva', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 546, '0000-00-00', 'Bypass Esophagus to Cutaneous ', 0),
(113, 'Cardify', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 650, '0000-00-00', 'Drainage of Left Sacroiliac Jo', 0),
(114, 'Ventosanzap', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 410, '0000-00-00', 'Repair Left Elbow Joint, Percu', 0),
(115, 'Y-find', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 404, '0000-00-00', 'Bypass Right Pleural Cavity to', 0),
(116, 'Stronghold', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 595, '0000-00-00', 'Resection of Left Lower Eyelid', 0),
(117, 'Namfix', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 278, '0000-00-00', 'Supplement Skull with Nonautol', 0),
(118, 'Home Ing', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 619, '0000-00-00', 'Destruction of Stomach, Pyloru', 0),
(119, 'Wrapsafe', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 145, '0000-00-00', 'Supplement Right Frontal Bone ', 0),
(120, 'Otcom', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 493, '0000-00-00', 'Insertion of Monitoring Device', 0),
(121, 'Wrapsafe', 2, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 780, '0000-00-00', 'Drainage of Right Inguinal Reg', 0),
(122, 'Matsoft', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 893, '0000-00-00', 'Drainage of Left Acromioclavic', 0),
(123, 'Fix San', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 625, '0000-00-00', 'Excision of Uterus, Percutaneo', 0),
(124, 'Cardguard', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 915, '0000-00-00', 'Reposition Left Subclavian Vei', 0),
(125, 'Otcom', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 783, '0000-00-00', 'Drainage of Left Temporomandib', 0),
(126, 'Lotlux', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 479, '0000-00-00', 'Bypass Left Hypogastric Vein t', 0),
(127, 'Alpha', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 397, '0000-00-00', 'Repair Right Pleura, Percutane', 0),
(128, 'Home Ing', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 613, '0000-00-00', 'Replacement of Right Subclavia', 0),
(129, 'Pannier', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 19, '0000-00-00', 'Bypass Right Common Iliac Arte', 0),
(130, 'Y-find', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 350, '0000-00-00', 'Removal of External Fixation D', 0),
(131, 'Y-Solowarm', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 436, '0000-00-00', 'Supplement Nasal Turbinate wit', 0),
(132, 'Kanlam', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 275, '0000-00-00', 'Excision of Right Atrium, Perc', 0),
(133, 'Zaam-Dox', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 257, '0000-00-00', 'Drainage of Left Trunk Tendon,', 0),
(134, 'Ronstring', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 762, '0000-00-00', 'Occlusion of Right Cephalic Ve', 0),
(135, 'Lotstring', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 73, '0000-00-00', 'Release Right Colic Artery, Op', 0),
(136, 'Job', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 572, '0000-00-00', 'Insertion of Other Device into', 0),
(137, 'Span', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 199, '0000-00-00', 'Dilation of Right External Car', 0),
(138, 'Asoka', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 821, '0000-00-00', 'Supplement Head with Nonautolo', 0),
(139, 'Fix San', 2, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 845, '0000-00-00', 'Drainage of Femoral Nerve with', 0),
(140, 'Lotstring', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 883, '0000-00-00', 'Excision of Right Parietal Bon', 0),
(141, 'Flowdesk', 2, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 522, '0000-00-00', 'Dilation of Left Common Iliac ', 0),
(142, 'Mat Lam Tam', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 621, '0000-00-00', 'Repair Left Ethmoid Bone, Open', 0),
(143, 'Zaam-Dox', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 730, '0000-00-00', 'Repair Hyoid Bone, Percutaneou', 0),
(144, 'Temp', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 247, '0000-00-00', 'Beam Radiation of Liver using ', 0),
(145, 'It', 1, 1, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 557, '0000-00-00', 'Extirpation of Matter from Rig', 0),
(146, 'Keylex', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 943, '0000-00-00', 'Repair Left Inguinal Region, O', 0),
(147, 'Voltsillam', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 379, '0000-00-00', 'Drainage of Right Lower Lobe B', 0),
(148, 'Y-find', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 920, '0000-00-00', 'Resection of Uvula, Open Appro', 0),
(149, 'Alphazap', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 698, '0000-00-00', 'Bypass Right Subclavian Artery', 0),
(150, 'Zamit', 1, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 717, '0000-00-00', 'Bypass Left Popliteal Artery t', 0),
(151, 'Flexidy', 1, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 122, '0000-00-00', 'Bypass Right Internal Iliac Ar', 0),
(152, 'Bamity', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 838, '0000-00-00', 'Repair Face Subcutaneous Tissu', 0),
(153, 'Ronstring', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 182, '0000-00-00', 'Supplement Left Atrium with No', 0),
(154, 'Keylex', 1, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 10, '0000-00-00', 'Supplement Cervical Vertebral ', 0),
(155, 'Veribet', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 314, '0000-00-00', 'Extirpation of Matter from Lef', 0),
(156, 'Y-find', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 1, 279, '0000-00-00', 'Removal of Synthetic Substitut', 0),
(157, 'Duobam', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 714, '0000-00-00', 'Extirpation of Matter from Lum', 0),
(158, 'Domainer', 2, 0, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 246, '0000-00-00', 'Bypass Jejunum to Descending C', 0),
(159, 'Matsoft', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 2, 117, '0000-00-00', 'Drainage of Right Lower Femur,', 0),
(160, 'Bamity', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 959, '0000-00-00', 'High Dose Rate (HDR) Brachythe', 0),
(161, 'Stronghold', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 168, '0000-00-00', 'Lower Veins, Repair', 0),
(162, 'Stim', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 371, '0000-00-00', 'Repair Left External Jugular V', 0),
(163, 'Job', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 460, '0000-00-00', 'Detachment at Right Upper Leg,', 0),
(164, 'Duobam', 2, 0, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 996, '0000-00-00', 'Restriction of Right Greater S', 0),
(165, 'Rank', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 994, '0000-00-00', 'Supplement Ileocecal Valve wit', 0),
(166, 'Zathin', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 293, '0000-00-00', 'Revision of Bone Growth Stimul', 0),
(167, 'Zontrax', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 431, '0000-00-00', 'Drainage of Multiple Parathyro', 0),
(168, 'Zaam-Dox', 1, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 117, '0000-00-00', 'Destruction of Hepatic Vein, O', 0),
(169, 'Tampflex', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 93, '0000-00-00', 'Dilation of Right Common Iliac', 0),
(170, 'Y-find', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 534, '0000-00-00', 'Excision of Left Thyroid Gland', 0),
(171, 'Opela', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 17, '0000-00-00', 'Destruction of Upper Esophagus', 0),
(172, 'Y-find', 1, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 698, '0000-00-00', 'Change Drainage Device in Mese', 0),
(173, 'Subin', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 308, '0000-00-00', 'Bypass Right Fallopian Tube to', 0),
(174, 'Zamit', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 125, '0000-00-00', 'Chiropractic Manipulation of T', 0),
(175, 'It', 1, 0, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 35, '0000-00-00', 'Restriction of Left Large Inte', 0),
(176, 'Fixflex', 1, 1, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 578, '0000-00-00', 'Drainage of Right Ulnar Artery', 0),
(177, 'Zamit', 2, 0, 'sahayrupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 206, '0000-00-00', 'Drainage of Right Upper Eyelid', 0),
(178, 'Rank', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 813, '0000-00-00', 'Removal of Nonautologous Tissu', 0),
(179, 'Namfix', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 939, '0000-00-00', 'Bypass Right Ventricle to Left', 0),
(180, 'Toughjoyfax', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 350, '0000-00-00', 'Revision of Radioactive Elemen', 0),
(181, 'Job', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 808, '0000-00-00', 'Replacement of Left Metatarsal', 0),
(182, 'Biodex', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 647, '0000-00-00', 'Beam Radiation of Kidney using', 0),
(183, 'Pannier', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 630, '0000-00-00', 'Destruction of Left Axillary V', 0),
(184, 'Lotlux', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 4, 223, '0000-00-00', 'Resection of Left Upper Arm Mu', 0),
(185, 'Opela', 2, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 431, '0000-00-00', 'Supplement Aortic Valve with S', 0),
(186, 'Bitchip', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 924, '0000-00-00', 'Insertion of Tissue Expander i', 0),
(187, 'Domainer', 2, 1, 'rupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 485, '0000-00-00', 'Bypass Abdominal Aorta to Bila', 0),
(188, 'Bamity', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 446, '0000-00-00', 'Transfer Accessory Nerve to Va', 0),
(189, 'Konklab', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 244, '0000-00-00', 'Bypass Left Vertebral Vein to ', 0),
(190, 'Fintone', 1, 1, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 3, 746, '0000-00-00', 'Destruction of Accessory Pancr', 0),
(191, 'Stim', 1, 0, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 460, '0000-00-00', 'Dilation of Left Thyroid Arter', 0),
(192, 'Sub-Ex', 1, 0, 'rupali@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 4, 91, '0000-00-00', 'Alteration of Right Lower Eyel', 0),
(193, 'Mat Lam Tam', 2, 1, 'sahayrupali@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 960, '0000-00-00', 'Destruction of Right Lower Ext', 0),
(194, 'Gembucket', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 1, 591, '0000-00-00', 'Fluoroscopy of Sacroiliac Join', 0),
(195, 'Y-Solowarm', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 5, 875, '0000-00-00', 'Replacement of Right Nipple wi', 0),
(196, 'Voltsillam', 2, 1, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 956, '0000-00-00', 'Drainage of Right Superior Par', 0),
(197, 'Duobam', 1, 1, 'yash@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 114, '0000-00-00', 'Drainage of Right Fibula, Perc', 0),
(198, 'Sonsing', 2, 1, 'yashpradhan46@gmail.com', 'dallas', '7825 McCallum Blvd', 'Texas', 'US', 5, 896, '0000-00-00', 'Motor Function Treatment of In', 0),
(199, 'Tin', 2, 0, 'yash@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 3, 454, '0000-00-00', 'Revision of Autologous Tissue ', 0),
(200, 'Sub-Ex', 2, 0, 'shivani95thakkar@gmail.com', 'dallas', '7815 McCallum Blvd', 'Texas', 'US', 2, 724, '0000-00-00', 'Tinnitus Masker Assessment usi', 0);

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
(68, '../php/product-images/yash@gmail.com/9.jpg'),
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
(198, '../php/product-images/shivani95thakkar@gmail.com/9.jpg'),
(199, '../php/product-images/rupali@gmail.com/6.jpg'),
(200, '../php/product-images/yashpradhan46@gmail.com/5.jpg');

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
('shivani95thakkar@gmail.com', 1),
('yashpradhan46@gmail.com', 1),
('yashpradhan46@gmail.com', 6),
('yashpradhan46@gmail.com', 119),
('yashpradhan46@gmail.com', 137);

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
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `utility_image`
--
ALTER TABLE `utility_image`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

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
