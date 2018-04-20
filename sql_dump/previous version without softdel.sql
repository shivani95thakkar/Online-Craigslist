-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 06:23 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
('dheeptha@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('shivani95thakkar@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447'),
('yash@gmail.com', '8b2b3f84a09e4906bb5aa57031a02aad6ca85447');

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
  `zipcode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email_id`, `firstname`, `lastname`, `phone_no`, `street`, `city`, `state`, `country`, `rating`, `isAdmin`, `zipcode`) VALUES
('dheeptha@gmail.com', 'Dheephtha', 'Badrinarayanan', '9875645256', '7825 McCallum', 'Dallas', 'TX', 'US', 0, 0, '75252'),
('shivani95thakkar@gmail.com', 'Shivani', 'Thakkar', '4697336827', '7815 McCallum Blvd', 'Dallas', 'TX', 'US', 0, 0, '75252'),
('yash@gmail.com', 'Yash', 'Pradhan', '2145173549', '7825 McCallumBlvd', 'Dallas', 'TX ', 'US', 0, 0, '75252');

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `utility_id` varchar(30) NOT NULL,
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
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`utility_id`, `name`, `category_id`, `isAvailable`, `email_id`, `city`, `street`, `state`, `country`, `rating`, `price`, `post_date`, `description`) VALUES
('10', 'Flexidy', 1, 1, 'hshreve9@addtoany.com', 'Lansing', 'Green', 'Michigan', 'United States', 2, 451, '0000-00-00', 'Drainage of Hymen with Drainag'),
('100', 'Fixflex', 2, 0, 'hgobert2r@sina.com.cn', 'Hyattsville', 'Ridgeway', 'Maryland', 'United States', 5, 375, '0000-00-00', 'Release Left External Ear, Per'),
('101', 'Cardguard', 1, 0, 'mbeckley2s@gnu.org', 'Spokane', 'Hanson', 'Washington', 'United States', 4, 508, '0000-00-00', 'Inspection of Adrenal Gland, P'),
('102', 'Overhold', 2, 1, 'mduding2t@latimes.com', 'Springfield', 'Elmside', 'Illinois', 'United States', 2, 862, '0000-00-00', 'Excision of Cervix, Open Appro'),
('103', 'Home Ing', 2, 1, 'hjane2u@freewebs.com', 'Springfield', 'Sunfield', 'Missouri', 'United States', 5, 38, '0000-00-00', 'Destruction of Left Ankle Burs'),
('104', 'Tempsoft', 1, 0, 'lgreenrodd2v@europa.eu', 'Philadelphia', 'Golf', 'Pennsylvania', 'United States', 2, 850, '0000-00-00', 'Supplement Mediastinum with Sy'),
('105', 'Toughjoyfax', 2, 1, 'partois2w@tinyurl.com', 'Springfield', 'Jackson', 'Illinois', 'United States', 2, 198, '0000-00-00', 'Repair Left Hand Subcutaneous '),
('106', 'Zontrax', 1, 0, 'cgrasha2x@hibu.com', 'Akron', 'Barby', 'Ohio', 'United States', 4, 708, '0000-00-00', 'Replacement of Upper Vein with'),
('107', 'Bitwolf', 1, 0, 'jledrun2y@hexun.com', 'Charlotte', 'Oakridge', 'North Carolina', 'United States', 2, 861, '0000-00-00', 'Supplement Papillary Muscle wi'),
('108', 'Vagram', 2, 0, 'kklemke2z@va.gov', 'Washington', 'Monterey', 'District of Columbia', 'United States', 5, 399, '0000-00-00', 'Fusion of Thoracic Vertebral J'),
('109', 'Cookley', 2, 0, 'ddeambrosis30@live.com', 'Fresno', 'Michigan', 'California', 'United States', 2, 232, '0000-00-00', 'Reattachment of Soft Palate, O'),
('11', 'Cardify', 1, 0, 'jhilldrupa@auda.org.au', 'Spokane', 'Pierstorff', 'Washington', 'United States', 2, 947, '0000-00-00', 'Bypass Left Axillary Artery to'),
('110', 'Sonsing', 1, 1, 'psherborn31@xrea.com', 'Newton', 'Lawn', 'Massachusetts', 'United States', 1, 14, '0000-00-00', 'Revision of Bone Growth Stimul'),
('111', 'Temp', 2, 0, 'fsilkstone32@icio.us', 'Gainesville', 'Hansons', 'Georgia', 'United States', 5, 101, '0000-00-00', 'Insertion of Tissue Expander i'),
('112', 'Veribet', 1, 1, 'tmullin33@google.it', 'Houston', 'Judy', 'Texas', 'United States', 5, 309, '0000-00-00', 'Reposition Right Clavicle, Ext'),
('113', 'Greenlam', 1, 1, 'kpawelek34@icq.com', 'York', 'Tomscot', 'Pennsylvania', 'United States', 4, 740, '0000-00-00', 'Fusion of Lumbosacral Joint wi'),
('114', 'Job', 1, 0, 'mmosen35@fda.gov', 'Fresno', 'Vermont', 'California', 'United States', 3, 573, '0000-00-00', 'Excision of Glossopharyngeal N'),
('115', 'Namfix', 1, 0, 'awolverson36@army.mil', 'Dallas', 'Schurz', 'Texas', 'United States', 4, 92, '0000-00-00', 'Occlusion of Right Lower Lobe '),
('116', 'Bitwolf', 2, 1, 'lbryden37@cbc.ca', 'Portland', 'Namekagon', 'Oregon', 'United States', 2, 984, '0000-00-00', 'Voice Assessment using Compute'),
('117', 'Prodder', 1, 1, 'nmaryott38@ucoz.com', 'Colorado Springs', 'Almo', 'Colorado', 'United States', 1, 330, '0000-00-00', 'Excision of Right Adrenal Glan'),
('118', 'Lotstring', 1, 1, 'omudie39@harvard.edu', 'Kansas City', 'Spohn', 'Missouri', 'United States', 5, 321, '0000-00-00', 'Computerized Tomography (CT Sc'),
('119', 'Rank', 2, 1, 'bsoppett3a@abc.net.au', 'Hartford', '3rd', 'Connecticut', 'United States', 4, 161, '0000-00-00', 'Plaque Radiation of Thymus'),
('12', 'Alpha', 2, 0, 'ckeyworthb@naver.com', 'Terre Haute', 'Marcy', 'Indiana', 'United States', 1, 641, '0000-00-00', 'Reposition Left Tarsal, Extern'),
('120', 'Ronstring', 1, 0, 'bcolliber3b@msu.edu', 'Grand Junction', 'Meadow Vale', 'Colorado', 'United States', 1, 810, '0000-00-00', 'Bypass Left External Iliac Art'),
('121', 'Regrant', 2, 0, 'shynes3c@telegraph.co.uk', 'Roanoke', 'South', 'Virginia', 'United States', 1, 812, '0000-00-00', 'Drainage of Left Trunk Tendon,'),
('122', 'Tampflex', 2, 0, 'sdoucette3d@nsw.gov.au', 'Reno', 'Melby', 'Nevada', 'United States', 5, 817, '0000-00-00', 'Bypass Transverse Colon to Sig'),
('123', 'Latlux', 1, 0, 'kalmak3e@newyorker.com', 'Portsmouth', 'Briar Crest', 'New Hampshire', 'United States', 1, 529, '0000-00-00', 'Replacement of Left External J'),
('124', 'Gembucket', 2, 0, 'pjosowitz3f@usgs.gov', 'Wichita', 'Forster', 'Kansas', 'United States', 3, 342, '0000-00-00', 'Revision of Nonautologous Tiss'),
('125', 'Bitchip', 1, 0, 'dkarczinski3g@abc.net.au', 'Morgantown', 'Carberry', 'West Virginia', 'United States', 5, 49, '0000-00-00', 'Reposition Left Sphenoid Bone,'),
('126', 'Aerified', 1, 1, 'nburbank3h@behance.net', 'Springfield', 'Bayside', 'Missouri', 'United States', 3, 98, '0000-00-00', 'Reattachment of Perineum Bursa'),
('127', 'Keylex', 2, 0, 'jollerton3i@telegraph.co.uk', 'New Orleans', 'Kedzie', 'Louisiana', 'United States', 2, 937, '0000-00-00', 'Removal of Drainage Device fro'),
('128', 'Konklux', 2, 0, 'cfahrenbacher3j@dropbox.com', 'Washington', 'Briar Crest', 'District of Columbia', 'United States', 2, 799, '0000-00-00', 'Supplement Left Radius with Au'),
('129', 'Latlux', 2, 1, 'lwindybank3k@biglobe.ne.jp', 'Conroe', 'Hayes', 'Texas', 'United States', 3, 28, '0000-00-00', 'Bypass Right Lesser Saphenous '),
('13', 'Flexidy', 2, 0, 'tbendelc@qq.com', 'Amarillo', 'Arizona', 'Texas', 'United States', 5, 18, '0000-00-00', 'Dilation of Right Colic Artery'),
('130', 'It', 1, 1, 'jmccoll3l@guardian.co.uk', 'Austin', 'Farmco', 'Texas', 'United States', 3, 946, '0000-00-00', 'Supplement Right Internal Jugu'),
('131', 'Fix San', 1, 0, 'bleif3m@google.fr', 'Sacramento', 'Walton', 'California', 'United States', 2, 354, '0000-00-00', 'Dilation of Upper Vein with In'),
('132', 'Duobam', 2, 0, 'nwhitham3n@ycombinator.com', 'Oklahoma City', 'Dorton', 'Oklahoma', 'United States', 2, 777, '0000-00-00', 'Release Left Zygomatic Bone, P'),
('133', 'Keylex', 1, 1, 'piddins3o@goodreads.com', 'Honolulu', 'Hooker', 'Hawaii', 'United States', 3, 497, '0000-00-00', 'Removal of Infusion Device fro'),
('134', 'Mat Lam Tam', 2, 1, 'hgallico3p@fda.gov', 'Honolulu', 'Stoughton', 'Hawaii', 'United States', 1, 289, '0000-00-00', 'Dilation of Right Hand Artery '),
('135', 'Alphazap', 2, 0, 'sprigg3q@elegantthemes.com', 'Peoria', 'Bobwhite', 'Illinois', 'United States', 2, 219, '0000-00-00', 'Occlusion of Pulmonary Valve w'),
('136', 'Tempsoft', 1, 1, 'gcannop3r@sakura.ne.jp', 'Tuscaloosa', 'Drewry', 'Alabama', 'United States', 5, 127, '0000-00-00', 'Drainage of Nasal Bone, Open A'),
('137', 'Mat Lam Tam', 2, 0, 'gdaley3s@newsvine.com', 'Las Vegas', 'Lighthouse Bay', 'Nevada', 'United States', 1, 550, '0000-00-00', 'Reposition Cul-de-sac, Open Ap'),
('138', 'Alpha', 2, 1, 'mhuckle3t@booking.com', 'Las Cruces', 'Dapin', 'New Mexico', 'United States', 2, 273, '0000-00-00', 'Dilation of Right Greater Saph'),
('139', 'Y-Solowarm', 2, 0, 'ewakelam3u@123-reg.co.uk', 'Tampa', 'Swallow', 'Florida', 'United States', 2, 431, '0000-00-00', 'Drainage of Right Middle Lung '),
('14', 'Namfix', 1, 0, 'adanielotd@ucsd.edu', 'Macon', 'Dunning', 'Georgia', 'United States', 2, 750, '0000-00-00', 'Dilation of Cecum with Intralu'),
('140', 'Konklux', 1, 1, 'gfarlham3v@prlog.org', 'Des Moines', 'Mayer', 'Iowa', 'United States', 1, 331, '0000-00-00', 'Release Upper Artery, Open App'),
('141', 'Gembucket', 1, 0, 'gjankovic3w@1688.com', 'Arlington', 'Sachtjen', 'Virginia', 'United States', 3, 807, '0000-00-00', 'Replacement of Upper Vein with'),
('142', 'Home Ing', 1, 1, 'kpaolinelli3x@skyrock.com', 'Lehigh Acres', 'Beilfuss', 'Florida', 'United States', 1, 654, '0000-00-00', 'Reattachment of Right Hip Tend'),
('143', 'Tin', 2, 1, 'blawless3y@trellian.com', 'Duluth', 'Cambridge', 'Georgia', 'United States', 4, 408, '0000-00-00', 'Destruction of Coccyx, Percuta'),
('144', 'Sonsing', 2, 1, 'dbattell3z@squarespace.com', 'Lincoln', 'Westerfield', 'Nebraska', 'United States', 1, 127, '0000-00-00', 'Extirpation of Matter from Lef'),
('145', 'Duobam', 1, 0, 'ciliff40@theatlantic.com', 'Washington', 'Hagan', 'District of Columbia', 'United States', 5, 668, '0000-00-00', 'Drainage of Left Temporomandib'),
('146', 'Bitwolf', 1, 0, 'pmcparlin41@harvard.edu', 'Sacramento', 'Havey', 'California', 'United States', 3, 595, '0000-00-00', 'Extirpation of Matter from Lef'),
('147', 'Bytecard', 1, 1, 'mfeldberger42@imdb.com', 'Houston', 'Golf View', 'Texas', 'United States', 3, 450, '0000-00-00', 'Replacement of Right Common Il'),
('148', 'Flowdesk', 1, 1, 'fjouannot43@a8.net', 'Gulfport', 'Vernon', 'Mississippi', 'United States', 3, 602, '0000-00-00', 'Insertion of Spacer into Left '),
('149', 'Stringtough', 2, 1, 'wseymour44@pagesperso-orange.f', 'Honolulu', 'Harper', 'Hawaii', 'United States', 3, 620, '0000-00-00', 'Occlusion of Innominate Artery'),
('15', 'Transcof', 2, 0, 'kmarkwelle@furl.net', 'Memphis', 'Gerald', 'Tennessee', 'United States', 3, 782, '0000-00-00', 'High Dose Rate (HDR) Brachythe'),
('150', 'Bamity', 2, 1, 'mstryde45@ebay.co.uk', 'Trenton', 'Milwaukee', 'New Jersey', 'United States', 2, 313, '0000-00-00', 'Dilation of Left Vertebral Art'),
('151', 'Tampflex', 2, 0, 'smcterlagh46@nbcnews.com', 'Orlando', '4th', 'Florida', 'United States', 1, 64, '0000-00-00', 'Reposition Right Radius with I'),
('152', 'Daltfresh', 2, 1, 'tburwin47@bbc.co.uk', 'San Francisco', 'Onsgard', 'California', 'United States', 2, 585, '0000-00-00', 'Occlusion of Right Hand Artery'),
('153', 'Gembucket', 1, 0, 'sburborough48@baidu.com', 'Ridgely', 'Ludington', 'Maryland', 'United States', 1, 751, '0000-00-00', 'Restriction of Ascending Colon'),
('154', 'Pannier', 1, 1, 'lanwyl49@indiegogo.com', 'Charleston', 'Randy', 'West Virginia', 'United States', 4, 219, '0000-00-00', 'Restriction of Right Radial Ar'),
('155', 'Tempsoft', 1, 1, 'cspringell4a@ucsd.edu', 'Idaho Falls', 'Stephen', 'Idaho', 'United States', 5, 780, '0000-00-00', 'Fusion of 2 or more Cervical V'),
('156', 'Sonair', 2, 1, 'cwash4b@nature.com', 'Washington', 'Roxbury', 'District of Columbia', 'United States', 1, 633, '0000-00-00', 'Inspection of Right Toe Phalan'),
('157', 'Home Ing', 1, 1, 'smattschas4c@over-blog.com', 'Reading', 'Sugar', 'Pennsylvania', 'United States', 1, 633, '0000-00-00', 'Drainage of Left Sacroiliac Jo'),
('158', 'Konklux', 1, 0, 'jhead4d@who.int', 'Omaha', 'Badeau', 'Nebraska', 'United States', 3, 107, '0000-00-00', 'Removal of Intraluminal Device'),
('159', 'Lotlux', 1, 1, 'kpereira4e@etsy.com', 'New York City', 'Warbler', 'New York', 'United States', 1, 776, '0000-00-00', 'Extirpation of Matter from Lef'),
('16', 'Keylex', 1, 1, 'hharlockf@quantcast.com', 'Saint Paul', 'Namekagon', 'Minnesota', 'United States', 5, 653, '0000-00-00', 'Bypass Esophagus to Duodenum, '),
('160', 'Matsoft', 2, 1, 'egethyn4f@reverbnation.com', 'Cedar Rapids', 'Warrior', 'Iowa', 'United States', 5, 860, '0000-00-00', 'Dilation of Intracranial Arter'),
('161', 'Bitwolf', 1, 1, 'mbodemeaid4g@cpanel.net', 'Atlanta', 'Hauk', 'Georgia', 'United States', 5, 995, '0000-00-00', 'Immobilization of Right Upper '),
('162', 'Andalax', 2, 1, 'bsouthon4h@ow.ly', 'Washington', 'Anderson', 'District of Columbia', 'United States', 1, 815, '0000-00-00', 'Removal of Drainage Device fro'),
('163', 'Andalax', 1, 1, 'wmuffin4i@quantcast.com', 'Fort Pierce', 'Hoffman', 'Florida', 'United States', 4, 627, '0000-00-00', 'Replacement of Right Maxilla w'),
('164', 'Aerified', 2, 1, 'aklarzynski4j@shareasale.com', 'Tacoma', 'Pleasure', 'Washington', 'United States', 2, 213, '0000-00-00', 'Reposition Right Femoral Arter'),
('165', 'Duobam', 2, 1, 'slarose4k@amazonaws.com', 'Erie', 'Raven', 'Pennsylvania', 'United States', 1, 677, '0000-00-00', 'Reattachment of Ascending Colo'),
('166', 'Span', 2, 0, 'dmccarry4l@imdb.com', 'Rockville', 'Eagle Crest', 'Maryland', 'United States', 1, 492, '0000-00-00', 'Revision of Infusion Device in'),
('167', 'Toughjoyfax', 1, 1, 'kburdekin4m@ezinearticles.com', 'Dallas', 'Hollow Ridge', 'Texas', 'United States', 5, 503, '0000-00-00', 'Removal of Splint on Left Uppe'),
('168', 'Aerified', 2, 0, 'gdaggett4n@tripod.com', 'Baton Rouge', 'Oxford', 'Louisiana', 'United States', 1, 672, '0000-00-00', 'Bypass Right Popliteal Artery '),
('169', 'Zaam-Dox', 1, 0, 'jgurery4o@apple.com', 'Pittsburgh', 'Prentice', 'Pennsylvania', 'United States', 3, 796, '0000-00-00', 'Removal of Intraluminal Device'),
('17', 'Solarbreeze', 2, 1, 'ncolombierg@un.org', 'Macon', 'Cordelia', 'Georgia', 'United States', 5, 658, '0000-00-00', 'Magnetic Resonance Imaging (MR'),
('170', 'Treeflex', 2, 0, 'wcarbine4p@angelfire.com', 'Lehigh Acres', 'Westerfield', 'Florida', 'United States', 5, 97, '0000-00-00', 'Supplement of Right Eye with N'),
('171', 'Tampflex', 1, 1, 'gsuffe4q@woothemes.com', 'Hayward', 'Aberg', 'California', 'United States', 5, 876, '0000-00-00', 'Excision of Left Common Iliac '),
('172', 'Solarbreeze', 2, 0, 'otomas4r@reddit.com', 'Saint Louis', 'Lakewood', 'Missouri', 'United States', 3, 752, '0000-00-00', 'Supplement Bilateral Epididymi'),
('173', 'Daltfresh', 1, 0, 'tsnadden4s@reddit.com', 'Brooklyn', 'Merry', 'New York', 'United States', 4, 270, '0000-00-00', 'Bypass Innominate Artery to Le'),
('174', 'Pannier', 2, 1, 'mdziwisz4t@google.pl', 'Omaha', 'Paget', 'Nebraska', 'United States', 3, 387, '0000-00-00', 'Destruction of Appendix, Via N'),
('175', 'Hatity', 2, 0, 'railsbury4u@biblegateway.com', 'New Haven', 'Leroy', 'Connecticut', 'United States', 1, 904, '0000-00-00', 'Restriction of Right Internal '),
('176', 'Hatity', 2, 0, 'mfownes4v@github.com', 'Cincinnati', 'Pawling', 'Ohio', 'United States', 3, 123, '0000-00-00', 'Fluoroscopy of Right External '),
('177', 'Subin', 2, 1, 'ktutton4w@biglobe.ne.jp', 'Baltimore', 'Carioca', 'Maryland', 'United States', 1, 538, '0000-00-00', 'Resection of Right Temporomand'),
('178', 'Otcom', 1, 1, 'drotge4x@elpais.com', 'Evansville', 'Pearson', 'Indiana', 'United States', 1, 79, '0000-00-00', 'Computerized Tomography (CT Sc'),
('179', 'Cardguard', 2, 0, 'hales4y@china.com.cn', 'Lubbock', 'Scofield', 'Texas', 'United States', 3, 923, '0000-00-00', 'Therapeutic Exercise Treatment'),
('18', 'Fintone', 1, 0, 'jbowshireh@about.com', 'Greensboro', 'Talmadge', 'North Carolina', 'United States', 3, 663, '0000-00-00', 'Drainage of Right Femoral Regi'),
('180', 'Voltsillam', 2, 0, 'icursey4z@state.tx.us', 'Wichita', 'Northfield', 'Kansas', 'United States', 1, 131, '0000-00-00', 'Division of Hyoid Bone, Percut'),
('181', 'Zontrax', 1, 0, 'kroskeilly50@discovery.com', 'Columbus', 'Briar Crest', 'Georgia', 'United States', 5, 564, '0000-00-00', 'Replacement of Right Abdomen T'),
('182', 'Fixflex', 1, 1, 'lstanger51@auda.org.au', 'Sacramento', 'Bonner', 'California', 'United States', 4, 872, '0000-00-00', 'Removal of External Fixation D'),
('183', 'Lotlux', 2, 1, 'jdeller52@merriam-webster.com', 'Temple', 'Esker', 'Texas', 'United States', 1, 266, '0000-00-00', 'Removal of Synthetic Substitut'),
('184', 'Home Ing', 2, 0, 'kpettipher53@amazon.de', 'Louisville', 'Hovde', 'Kentucky', 'United States', 1, 724, '0000-00-00', 'Supplement Tricuspid Valve cre'),
('185', 'Mat Lam Tam', 2, 1, 'wwakeling54@hao123.com', 'Dayton', 'Hanover', 'Ohio', 'United States', 5, 87, '0000-00-00', 'Removal of Cast on Left Hand'),
('186', 'Aerified', 1, 0, 'clovelock55@sourceforge.net', 'Tacoma', 'Jenna', 'Washington', 'United States', 2, 161, '0000-00-00', 'Measurement of Products of Con'),
('187', 'Sonair', 1, 1, 'jmisselbrook56@webeden.co.uk', 'Sioux Falls', 'Barby', 'South Dakota', 'United States', 5, 920, '0000-00-00', 'Revision of Spacer in Left Tem'),
('188', 'Fintone', 2, 0, 'kmagrannell57@blinklist.com', 'Olympia', 'Everett', 'Washington', 'United States', 3, 366, '0000-00-00', 'Replacement of Left Temporal B'),
('189', 'Quo Lux', 2, 0, 'gcalcraft58@nasa.gov', 'Akron', 'Michigan', 'Ohio', 'United States', 5, 192, '0000-00-00', 'Excision of Bilateral Carotid '),
('19', 'Konklux', 2, 1, 'yoldami@vistaprint.com', 'Duluth', 'Drewry', 'Minnesota', 'United States', 3, 307, '0000-00-00', 'Destruction of Left Radius, Pe'),
('190', 'Flexidy', 2, 0, 'cweald59@meetup.com', 'Minneapolis', 'Holmberg', 'Minnesota', 'United States', 4, 910, '0000-00-00', 'Insertion of Infusion Device i'),
('2', 'Konklux', 2, 0, 'wpenquet1@clickbank.net', 'Cleveland', 'Vermont', 'Ohio', 'United States', 4, 876, '0000-00-00', 'Insertion of Infusion Pump int'),
('20', 'Viva', 1, 1, 'ktrimj@ebay.com', 'Los Angeles', 'Oneill', 'California', 'United States', 3, 755, '0000-00-00', 'Insertion of Infusion Pump int'),
('21', 'Subin', 2, 1, 'kboark@sbwire.com', 'Waterbury', 'Spaight', 'Connecticut', 'United States', 3, 232, '0000-00-00', 'Release Right Extraocular Musc'),
('22', 'Greenlam', 2, 1, 'jlidgettl@hud.gov', 'Sacramento', 'Boyd', 'California', 'United States', 4, 365, '0000-00-00', 'Drainage of Coccyx, Open Appro'),
('23', 'Span', 1, 1, 'cfeganm@pen.io', 'Canton', 'Hoard', 'Ohio', 'United States', 4, 837, '0000-00-00', 'Drainage of Left Ankle Tendon,'),
('24', 'Solarbreeze', 1, 1, 'ajacobsonn@51.la', 'Denton', 'Lotheville', 'Texas', 'United States', 5, 23, '0000-00-00', 'Bypass Gallbladder to Common B'),
('25', 'Bamity', 2, 0, 'wcarnacheno@psu.edu', 'Denver', 'Knutson', 'Colorado', 'United States', 5, 481, '0000-00-00', 'Insertion of Hybrid External F'),
('26', 'Latlux', 1, 0, 'lwaggittp@theguardian.com', 'Pittsburgh', 'Emmet', 'Pennsylvania', 'United States', 2, 476, '0000-00-00', 'Release Ascending Colon, Via N'),
('27', 'Opela', 2, 0, 'gbalineq@amazon.co.uk', 'Kansas City', 'Hermina', 'Kansas', 'United States', 3, 747, '0000-00-00', 'Insertion of Infusion Device i'),
('28', 'Stronghold', 1, 0, 'cmerrisonr@symantec.com', 'Jackson', 'Express', 'Mississippi', 'United States', 1, 715, '0000-00-00', 'Dilation of Left Popliteal Art'),
('29', 'Namfix', 1, 0, 'bcrews@wiley.com', 'Sioux Falls', 'Kropf', 'South Dakota', 'United States', 3, 656, '0000-00-00', 'Control Bleeding in Left Lower'),
('3', 'Home Ing', 2, 1, 'espere2@umich.edu', 'Brooklyn', 'Badeau', 'New York', 'United States', 4, 473, '0000-00-00', 'Insertion of Radioactive Eleme'),
('30', 'Voyatouch', 1, 0, 'llipscombet@unc.edu', 'Minneapolis', 'Pawling', 'Minnesota', 'United States', 2, 562, '0000-00-00', 'Inspection of Right Pleural Ca'),
('31', 'Tin', 2, 0, 'kshepherdsonu@webs.com', 'Honolulu', 'Green Ridge', 'Hawaii', 'United States', 4, 711, '0000-00-00', 'Removal of Nonautologous Tissu'),
('32', 'Bamity', 2, 0, 'larundalev@cbsnews.com', 'Temple', 'Corscot', 'Texas', 'United States', 2, 815, '0000-00-00', 'Drainage of Left Vocal Cord wi'),
('33', 'Voltsillam', 2, 0, 'glearmonthw@addthis.com', 'Sacramento', 'Towne', 'California', 'United States', 4, 725, '0000-00-00', 'Dilation of Left Common Iliac '),
('34', 'Quo Lux', 1, 1, 'iworvellx@unicef.org', 'Mesa', 'Green', 'Arizona', 'United States', 1, 323, '0000-00-00', 'Supplement Left Temporal Arter'),
('35', 'Zamit', 2, 0, 'lambrogiottiy@myspace.com', 'Port Washington', 'Arizona', 'New York', 'United States', 1, 466, '0000-00-00', 'Drainage of Medulla Oblongata,'),
('36', 'Kanlam', 1, 0, 'amoynez@ftc.gov', 'Arlington', 'Loftsgordon', 'Texas', 'United States', 2, 405, '0000-00-00', 'Extirpation of Matter from Rig'),
('37', 'Zoolab', 1, 0, 'fdarnbrook10@techcrunch.com', 'Boca Raton', 'Del Sol', 'Florida', 'United States', 1, 324, '0000-00-00', 'Dilation of Hepatic Artery, Bi'),
('38', 'Zaam-Dox', 2, 1, 'oszwandt11@google.ca', 'Saint Petersburg', 'Sloan', 'Florida', 'United States', 1, 62, '0000-00-00', 'Transfer Vagus Nerve to Glosso'),
('39', 'Opela', 2, 1, 'bnanuccioi12@stumbleupon.com', 'Louisville', 'Crest Line', 'Kentucky', 'United States', 4, 729, '0000-00-00', 'Removal of Nonautologous Tissu'),
('4', 'Bigtax', 1, 0, 'rlovelace3@sciencedaily.com', 'Minneapolis', 'Di Loreto', 'Minnesota', 'United States', 4, 210, '0000-00-00', 'Removal of Other Device from L'),
('40', 'Bytecard', 2, 1, 'akinson13@com.com', 'Lincoln', 'Ramsey', 'Nebraska', 'United States', 5, 801, '0000-00-00', 'Replacement of Thoracic Aorta,'),
('41', 'Bitchip', 2, 1, 'nfendlen14@fastcompany.com', 'Tulsa', 'Vernon', 'Oklahoma', 'United States', 2, 655, '0000-00-00', 'Revision of Spacer in Left Toe'),
('42', 'Andalax', 1, 0, 'tsimmgen15@home.pl', 'Spring Hill', 'Continental', 'Florida', 'United States', 4, 562, '0000-00-00', 'Removal of Autologous Tissue S'),
('43', 'Redhold', 2, 0, 'mskippings16@google.it', 'Corpus Christi', 'Shasta', 'Texas', 'United States', 2, 431, '0000-00-00', 'Occlusion of Left Internal Jug'),
('44', 'Temp', 1, 0, 'liban17@phoca.cz', 'Irvine', 'Farragut', 'California', 'United States', 5, 659, '0000-00-00', 'Bypass Left Popliteal Artery t'),
('45', 'Bamity', 2, 1, 'nmathivat18@example.com', 'Burbank', 'Warner', 'California', 'United States', 3, 622, '0000-00-00', 'Restriction of Rectum with Ext'),
('46', 'Tampflex', 2, 0, 'jseneschal19@mtv.com', 'Minneapolis', 'Morningstar', 'Minnesota', 'United States', 2, 601, '0000-00-00', 'Bypass Left Common Iliac Arter'),
('47', 'Sonair', 2, 1, 'beastwell1a@techcrunch.com', 'Fullerton', 'Twin Pines', 'California', 'United States', 2, 875, '0000-00-00', 'Supplement Left Knee Joint wit'),
('48', 'Stronghold', 1, 1, 'mlawful1b@reddit.com', 'El Paso', 'Upham', 'Texas', 'United States', 4, 845, '0000-00-00', 'Insertion of Hybrid External F'),
('49', 'Trippledex', 1, 0, 'ebreche1c@gizmodo.com', 'Greenville', 'Kenwood', 'South Carolina', 'United States', 3, 883, '0000-00-00', 'Fragmentation in Pelvic Cavity'),
('5', 'Sub-Ex', 2, 0, 'sragless4@rambler.ru', 'Flushing', 'Coolidge', 'New York', 'United States', 5, 997, '0000-00-00', 'Removal of Feeding Device from'),
('50', 'Daltfresh', 2, 1, 'hdanat1d@prnewswire.com', 'Jacksonville', 'Rusk', 'Florida', 'United States', 2, 123, '0000-00-00', 'Synthetic Sentence Identificat'),
('51', 'Tampflex', 1, 0, 'sgall1e@sun.com', 'Honolulu', 'Waubesa', 'Hawaii', 'United States', 2, 244, '0000-00-00', 'Excision of Left Pulmonary Art'),
('52', 'Aerified', 2, 1, 'ryouings1f@woothemes.com', 'Danbury', 'Summerview', 'Connecticut', 'United States', 2, 207, '0000-00-00', 'Occlusion of Right Lesser Saph'),
('53', 'Trippledex', 2, 0, 'mgouldthorp1g@newyorker.com', 'Omaha', 'Erie', 'Nebraska', 'United States', 2, 674, '0000-00-00', 'Drainage of Esophageal Vein, O'),
('54', 'Zoolab', 1, 0, 'bhatherell1h@bloglovin.com', 'New York City', 'Randy', 'New York', 'United States', 2, 146, '0000-00-00', 'Bypass Thoracic Aorta, Ascendi'),
('55', 'Span', 1, 0, 'acollison1i@newyorker.com', 'Denver', '1st', 'Colorado', 'United States', 4, 455, '0000-00-00', 'Low Dose Rate (LDR) Brachyther'),
('56', 'Latlux', 2, 0, 'amcbrearty1j@xinhuanet.com', 'Tulsa', 'Shoshone', 'Oklahoma', 'United States', 3, 18, '0000-00-00', 'Replacement of Right Upper Eye'),
('57', 'Kanlam', 1, 0, 'gfine1k@mit.edu', 'Huntington', 'Katie', 'West Virginia', 'United States', 5, 936, '0000-00-00', 'Supplement Left Common Iliac A'),
('58', 'Y-find', 1, 1, 'amardee1l@cloudflare.com', 'Reno', 'Rockefeller', 'Nevada', 'United States', 5, 820, '0000-00-00', 'Replacement of Right Ankle Ten'),
('59', 'Vagram', 1, 0, 'nrevans1m@vistaprint.com', 'Baltimore', 'Toban', 'Maryland', 'United States', 1, 832, '0000-00-00', 'Release Innominate Artery, Per'),
('6', 'Solarbreeze', 2, 1, 'larne5@instagram.com', 'Fort Wayne', 'Veith', 'Indiana', 'United States', 2, 628, '0000-00-00', 'Ultrasonography of Right Breas'),
('60', 'Konklab', 1, 0, 'mdoale1n@java.com', 'Little Rock', 'Pond', 'Arkansas', 'United States', 4, 97, '0000-00-00', 'Drainage of Right Upper Extrem'),
('61', 'Greenlam', 1, 0, 'dnorthidge1o@gravatar.com', 'Santa Barbara', 'American Ash', 'California', 'United States', 5, 291, '0000-00-00', 'Bypass Coronary Artery, Three '),
('62', 'It', 1, 0, 'achattock1p@nps.gov', 'Pasadena', 'Artisan', 'California', 'United States', 2, 78, '0000-00-00', 'Removal of Spacer from Right C'),
('63', 'Job', 2, 0, 'llongland1q@wsj.com', 'Nashville', 'Northland', 'Tennessee', 'United States', 1, 248, '0000-00-00', 'Immobilization of Right Lower '),
('64', 'Duobam', 2, 1, 'doneal1r@springer.com', 'Fargo', 'Village Green', 'North Dakota', 'United States', 2, 986, '0000-00-00', 'High Dose Rate (HDR) Brachythe'),
('65', 'Zamit', 1, 0, 'hmaud1s@i2i.jp', 'Brooklyn', 'Farwell', 'New York', 'United States', 2, 452, '0000-00-00', 'Introduction of Other Therapeu'),
('66', 'Biodex', 1, 0, 'zbanbury1t@eventbrite.com', 'Norfolk', 'Sunnyside', 'Virginia', 'United States', 2, 425, '0000-00-00', 'Restriction of Left External I'),
('67', 'Pannier', 1, 1, 'uost1u@csmonitor.com', 'Riverside', 'Rutledge', 'California', 'United States', 1, 417, '0000-00-00', 'Fragmentation in Right Upper L'),
('68', 'Bitwolf', 2, 0, 'redyson1v@storify.com', 'Nashville', 'David', 'Tennessee', 'United States', 2, 423, '0000-00-00', 'Transfer Left Lower Extremity '),
('69', 'Daltfresh', 2, 1, 'mgolton1w@msu.edu', 'Punta Gorda', 'Hovde', 'Florida', 'United States', 1, 113, '0000-00-00', 'Revision of Intraluminal Devic'),
('7', 'Fixflex', 2, 0, 'etimbridge6@shareasale.com', 'Northridge', 'Comanche', 'California', 'United States', 2, 434, '0000-00-00', 'Removal of Internal Fixation D'),
('70', 'Sonsing', 1, 0, 'tarno1x@cam.ac.uk', 'Madison', 'Rusk', 'Wisconsin', 'United States', 3, 431, '0000-00-00', 'Excision of Sigmoid Colon, Per'),
('71', 'Temp', 2, 1, 'bbloor1y@google.de', 'Richmond', 'Shasta', 'Virginia', 'United States', 4, 293, '0000-00-00', 'Repair of Lower Tooth, Multipl'),
('72', 'Prodder', 1, 0, 'nblacklock1z@wp.com', 'Houston', 'Petterle', 'Texas', 'United States', 2, 43, '0000-00-00', 'Resection of Right Upper Leg M'),
('73', 'Sonair', 2, 1, 'tjerrome20@mtv.com', 'Pasadena', 'Holmberg', 'California', 'United States', 2, 907, '0000-00-00', 'Introduction of Regional Anest'),
('74', 'Biodex', 2, 0, 'eotteridge21@bigcartel.com', 'Vero Beach', 'Old Shore', 'Florida', 'United States', 1, 297, '0000-00-00', 'Replacement of Pharynx with Au'),
('75', 'Duobam', 2, 1, 'gbreckell22@etsy.com', 'Columbus', 'Jackson', 'Ohio', 'United States', 1, 866, '0000-00-00', 'Drainage of Right Parotid Duct'),
('76', 'Tres-Zap', 1, 0, 'sneville23@cocolog-nifty.com', 'Phoenix', 'Judy', 'Arizona', 'United States', 4, 571, '0000-00-00', 'Introduction of Liquid Brachyt'),
('77', 'Home Ing', 1, 1, 'abamfield24@huffingtonpost.com', 'Monroe', 'Golden Leaf', 'Louisiana', 'United States', 1, 101, '0000-00-00', 'Repair Right 1st Toe, Open App'),
('78', 'Konklux', 2, 0, 'nbillin25@elegantthemes.com', 'San Francisco', 'Summerview', 'California', 'United States', 5, 89, '0000-00-00', 'Removal of Drainage Device fro'),
('79', 'Redhold', 1, 0, 'lheale26@adobe.com', 'Sacramento', 'Lakewood Gardens', 'California', 'United States', 5, 742, '0000-00-00', 'Communicative/Cognitive Integr'),
('8', 'Sub-Ex', 1, 0, 'zsheeran7@answers.com', 'Miami', 'Warbler', 'Florida', 'United States', 1, 618, '0000-00-00', 'Bypass Thoracic Aorta, Ascendi'),
('80', 'Tres-Zap', 2, 1, 'dmariot27@columbia.edu', 'Norfolk', 'Darwin', 'Virginia', 'United States', 2, 612, '0000-00-00', 'Bypass Bladder to Ileocutaneou'),
('81', 'Flexidy', 1, 1, 'dpavey28@princeton.edu', 'Miami', 'Atwood', 'Florida', 'United States', 4, 279, '0000-00-00', 'Release Left Trunk Muscle, Ext'),
('82', 'Flexidy', 1, 1, 'morrell29@tuttocitta.it', 'Columbia', 'Valley Edge', 'Missouri', 'United States', 3, 798, '0000-00-00', 'Extirpation of Matter from Lef'),
('83', 'Bitchip', 2, 0, 'cchugg2a@booking.com', 'San Diego', 'Nancy', 'California', 'United States', 4, 884, '0000-00-00', 'Destruction of Right Upper Fem'),
('84', 'Mat Lam Tam', 2, 0, 'oaps2b@jalbum.net', 'Mountain View', 'Sundown', 'California', 'United States', 2, 602, '0000-00-00', 'Revision of Zooplastic Tissue '),
('85', 'Bamity', 2, 1, 'dharlett2c@instagram.com', 'Orlando', 'Colorado', 'Florida', 'United States', 4, 531, '0000-00-00', 'Removal of Stimulator Lead fro'),
('86', 'Flexidy', 2, 0, 'vbabbe2d@studiopress.com', 'Flint', 'Division', 'Michigan', 'United States', 2, 416, '0000-00-00', 'Removal of Drainage Device fro'),
('87', 'Fintone', 2, 0, 'rfeldon2e@123-reg.co.uk', 'Glendale', 'Service', 'Arizona', 'United States', 4, 745, '0000-00-00', 'Supplement Right 5th Toe with '),
('88', 'Redhold', 1, 1, 'cbolgar2f@princeton.edu', 'Dayton', 'Clove', 'Ohio', 'United States', 2, 933, '0000-00-00', 'Bypass Right Internal Iliac Ar'),
('89', 'Holdlamis', 1, 1, 'pbuttler2g@multiply.com', 'Maple Plain', 'Veith', 'Minnesota', 'United States', 1, 260, '0000-00-00', 'Dilation of Right Femoral Arte'),
('9', 'Tampflex', 2, 1, 'jspandley8@wikispaces.com', 'Roanoke', 'Fulton', 'Virginia', 'United States', 4, 561, '0000-00-00', 'Replacement of Left Posterior '),
('90', 'It', 2, 1, 'jgiraldez2h@hibu.com', 'San Antonio', 'Spenser', 'Texas', 'United States', 1, 460, '0000-00-00', 'Drainage of Upper Tooth, Open '),
('91', 'Otcom', 2, 0, 'jrablen2i@ask.com', 'Worcester', 'Pierstorff', 'Massachusetts', 'United States', 1, 39, '0000-00-00', 'Supplement Left Peroneal Arter'),
('92', 'Mat Lam Tam', 1, 1, 'kfowls2j@hp.com', 'Colorado Springs', 'Straubel', 'Colorado', 'United States', 2, 796, '0000-00-00', 'Bypass Ileum to Descending Col'),
('93', 'Namfix', 1, 0, 'dkingzett2k@blog.com', 'Austin', 'Onsgard', 'Texas', 'United States', 1, 394, '0000-00-00', 'Computer Assisted Procedure of'),
('94', 'Cookley', 1, 0, 'vcrowter2l@photobucket.com', 'Buffalo', 'Manley', 'New York', 'United States', 5, 638, '0000-00-00', 'Insertion of Infusion Device i'),
('95', 'Stringtough', 2, 1, 'ldall2m@topsy.com', 'Akron', 'Springview', 'Ohio', 'United States', 4, 23, '0000-00-00', 'Repair Left Large Intestine, P'),
('96', 'Wrapsafe', 2, 0, 'nhembry2n@lulu.com', 'Tuscaloosa', 'Wayridge', 'Alabama', 'United States', 1, 199, '0000-00-00', 'Supplement Left Brachial Arter'),
('97', 'Tampflex', 2, 0, 'hleaney2o@kickstarter.com', 'Milwaukee', 'Linden', 'Wisconsin', 'United States', 2, 69, '0000-00-00', 'Supplement of Right Lower Leg '),
('98', 'Cardguard', 2, 1, 'lpibsworth2p@gravatar.com', 'Chicago', 'Eagan', 'Illinois', 'United States', 5, 428, '0000-00-00', 'Dilation of Upper Artery, Bifu'),
('99', 'Job', 1, 1, 'mbeaves2q@va.gov', 'Arlington', 'Crownhardt', 'Texas', 'United States', 5, 374, '0000-00-00', 'Supplement Left Patella with A');

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
  `utility_id` varchar(30) NOT NULL,
  `image_path` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_image`
--

INSERT INTO `utility_image` (`utility_id`, `image_path`) VALUES
('10', 'product-images/8.jpg'),
('100', 'product-images/7.jpg'),
('101', 'product-images/2.jpg'),
('102', 'product-images/8.jpg'),
('103', 'product-images/1.jpg'),
('104', 'product-images/2.jpg'),
('105', 'product-images/1.jpg'),
('106', 'product-images/5.jpg'),
('107', 'product-images/8.jpg'),
('108', 'product-images/1.jpg'),
('109', 'product-images/9.jpg'),
('11', 'product-images/8.jpg'),
('110', 'product-images/9.jpg'),
('111', 'product-images/9.jpg'),
('112', 'product-images/9.jpg'),
('113', 'product-images/1.jpg'),
('114', 'product-images/9.jpg'),
('115', 'product-images/8.jpg'),
('116', 'product-images/6.jpg'),
('117', 'product-images/4.jpg'),
('118', 'product-images/5.jpg'),
('119', 'product-images/1.jpg'),
('12', 'product-images/8.jpg'),
('120', 'product-images/3.jpg'),
('121', 'product-images/9.jpg'),
('122', 'product-images/3.jpg'),
('123', 'product-images/6.jpg'),
('124', 'product-images/2.jpg'),
('125', 'product-images/1.jpg'),
('126', 'product-images/9.jpg'),
('127', 'product-images/4.jpg'),
('128', 'product-images/1.jpg'),
('129', 'product-images/3.jpg'),
('13', 'product-images/7.jpg'),
('130', 'product-images/5.jpg'),
('131', 'product-images/7.jpg'),
('132', 'product-images/1.jpg'),
('133', 'product-images/4.jpg'),
('134', 'product-images/2.jpg'),
('135', 'product-images/8.jpg'),
('136', 'product-images/4.jpg'),
('137', 'product-images/7.jpg'),
('138', 'product-images/8.jpg'),
('139', 'product-images/1.jpg'),
('14', 'product-images/1.jpg'),
('140', 'product-images/2.jpg'),
('141', 'product-images/9.jpg'),
('142', 'product-images/7.jpg'),
('143', 'product-images/1.jpg'),
('144', 'product-images/4.jpg'),
('145', 'product-images/8.jpg'),
('146', 'product-images/3.jpg'),
('147', 'product-images/7.jpg'),
('148', 'product-images/1.jpg'),
('149', 'product-images/5.jpg'),
('15', 'product-images/8.jpg'),
('150', 'product-images/3.jpg'),
('151', 'product-images/2.jpg'),
('152', 'product-images/8.jpg'),
('153', 'product-images/4.jpg'),
('154', 'product-images/4.jpg'),
('155', 'product-images/5.jpg'),
('156', 'product-images/4.jpg'),
('157', 'product-images/6.jpg'),
('158', 'product-images/6.jpg'),
('159', 'product-images/8.jpg'),
('16', 'product-images/2.jpg'),
('160', 'product-images/7.jpg'),
('161', 'product-images/8.jpg'),
('162', 'product-images/3.jpg'),
('163', 'product-images/8.jpg'),
('164', 'product-images/2.jpg'),
('165', 'product-images/9.jpg'),
('166', 'product-images/4.jpg'),
('167', 'product-images/5.jpg'),
('168', 'product-images/2.jpg'),
('169', 'product-images/8.jpg'),
('17', 'product-images/9.jpg'),
('170', 'product-images/7.jpg'),
('171', 'product-images/1.jpg'),
('172', 'product-images/2.jpg'),
('173', 'product-images/3.jpg'),
('174', 'product-images/8.jpg'),
('175', 'product-images/2.jpg'),
('176', 'product-images/3.jpg'),
('177', 'product-images/6.jpg'),
('178', 'product-images/6.jpg'),
('179', 'product-images/3.jpg'),
('18', 'product-images/8.jpg'),
('180', 'product-images/5.jpg'),
('181', 'product-images/3.jpg'),
('182', 'product-images/5.jpg'),
('183', 'product-images/5.jpg'),
('184', 'product-images/9.jpg'),
('185', 'product-images/3.jpg'),
('186', 'product-images/1.jpg'),
('187', 'product-images/6.jpg'),
('188', 'product-images/9.jpg'),
('189', 'product-images/9.jpg'),
('19', 'product-images/7.jpg'),
('190', 'product-images/4.jpg'),
('191', 'product-images/5.jpg'),
('192', 'product-images/5.jpg'),
('193', 'product-images/5.jpg'),
('194', 'product-images/5.jpg'),
('195', 'product-images/2.jpg'),
('196', 'product-images/6.jpg'),
('197', 'product-images/3.jpg'),
('198', 'product-images/9.jpg'),
('199', 'product-images/4.jpg'),
('2', 'product-images/1.jpg'),
('20', 'product-images/7.jpg'),
('200', 'product-images/7.jpg'),
('21', 'product-images/2.jpg'),
('22', 'product-images/6.jpg'),
('23', 'product-images/9.jpg'),
('24', 'product-images/2.jpg'),
('25', 'product-images/8.jpg'),
('26', 'product-images/3.jpg'),
('27', 'product-images/4.jpg'),
('28', 'product-images/6.jpg'),
('29', 'product-images/1.jpg'),
('3', 'product-images/7.jpg'),
('30', 'product-images/4.jpg'),
('31', 'product-images/2.jpg'),
('32', 'product-images/7.jpg'),
('33', 'product-images/3.jpg'),
('34', 'product-images/4.jpg'),
('35', 'product-images/9.jpg'),
('36', 'product-images/8.jpg'),
('37', 'product-images/7.jpg'),
('38', 'product-images/3.jpg'),
('39', 'product-images/9.jpg'),
('4', 'product-images/9.jpg'),
('40', 'product-images/1.jpg'),
('41', 'product-images/9.jpg'),
('42', 'product-images/6.jpg'),
('43', 'product-images/1.jpg'),
('44', 'product-images/2.jpg'),
('45', 'product-images/3.jpg'),
('46', 'product-images/5.jpg'),
('47', 'product-images/5.jpg'),
('48', 'product-images/2.jpg'),
('49', 'product-images/2.jpg'),
('5', 'product-images/1.jpg'),
('50', 'product-images/8.jpg'),
('51', 'product-images/3.jpg'),
('52', 'product-images/4.jpg'),
('53', 'product-images/2.jpg'),
('54', 'product-images/9.jpg'),
('55', 'product-images/8.jpg'),
('56', 'product-images/3.jpg'),
('57', 'product-images/9.jpg'),
('58', 'product-images/2.jpg'),
('59', 'product-images/4.jpg'),
('6', 'product-images/9.jpg'),
('60', 'product-images/6.jpg'),
('61', 'product-images/5.jpg'),
('62', 'product-images/7.jpg'),
('63', 'product-images/7.jpg'),
('64', 'product-images/3.jpg'),
('65', 'product-images/3.jpg'),
('66', 'product-images/5.jpg'),
('67', 'product-images/8.jpg'),
('68', 'product-images/2.jpg'),
('69', 'product-images/7.jpg'),
('7', 'product-images/7.jpg'),
('70', 'product-images/6.jpg'),
('71', 'product-images/8.jpg'),
('72', 'product-images/6.jpg'),
('73', 'product-images/6.jpg'),
('74', 'product-images/4.jpg'),
('75', 'product-images/1.jpg'),
('76', 'product-images/9.jpg'),
('77', 'product-images/9.jpg'),
('78', 'product-images/6.jpg'),
('79', 'product-images/3.jpg'),
('8', 'product-images/7.jpg'),
('80', 'product-images/9.jpg'),
('81', 'product-images/2.jpg'),
('82', 'product-images/8.jpg'),
('83', 'product-images/9.jpg'),
('84', 'product-images/5.jpg'),
('85', 'product-images/9.jpg'),
('86', 'product-images/7.jpg'),
('87', 'product-images/5.jpg'),
('88', 'product-images/8.jpg'),
('89', 'product-images/6.jpg'),
('9', 'product-images/1.jpg'),
('90', 'product-images/1.jpg'),
('91', 'product-images/1.jpg'),
('92', 'product-images/8.jpg'),
('93', 'product-images/3.jpg'),
('94', 'product-images/2.jpg'),
('95', 'product-images/3.jpg'),
('96', 'product-images/3.jpg'),
('97', 'product-images/7.jpg'),
('98', 'product-images/1.jpg'),
('99', 'product-images/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `email_id` varchar(30) NOT NULL,
  `utility_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD CONSTRAINT `utility_image_ibfk_1` FOREIGN KEY (`utility_id`) REFERENCES `utility` (`utility_id`);

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
