-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 05:35 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `javas_chain`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch code` char(3) NOT NULL DEFAULT '',
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  PRIMARY KEY (`branch code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch code`, `name`, `address`, `email`, `telephone`) VALUES
('B01', 'kisementi', 'Acacia Avenue', 'javaskisementi@gmail.com', '0400300230'),
('B02', 'boulevard', 'kampala road', 'javasboulevard@gmail.com', '0400300224'),
('B03', '8th wonder', 'jinja road', 'javaswounder@gmail.com', '0400300225'),
('B04', 'wandegeya', 'bombo road', 'javasbombord@gmail.com', '0400300226'),
('B05', 'nakawa', 'nakawa road', 'javasnakawa@gmail.com', '0400300227'),
('B06', 'entebbe', 'entebbe stretch', 'javasebbs@gmail.com', '0400300228'),
('B07', 'oasis', 'gardencity road', 'javasoasis@gmail.com', '0400300229'),
('B08', 'village mall', 'bugolobi road', 'javasbugos@gmail.com', '0400300223');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer id` char(4) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `product_ordered` varchar(20) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  `branch code` varchar(25) DEFAULT NULL COMMENT 'foriegn key',
  PRIMARY KEY (`customer id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer id`, `fname`, `lname`, `product_ordered`, `address`, `email`, `telephone`, `branch code`) VALUES
('C001', 'alicia', 'keys', 'caribean jerk', 'muyenga tankhill', 'keysalicia@gmail.com', '0782345234', 'B001'),
('C002', 'kemigisha', 'adam', 'blue lagoon', 'ntinda', 'keysadams@gmail.com', '0782456345', 'B002'),
('C003', 'hurt', 'lavish', 'frapuccino', 'munyoyo', 'lavishhurt@gmail.com', '0701243564', 'B003'),
('C004', 'death', 'chocolate', 'cake slice', 'bugolobi', 'chocdeath@gmail.com', '0701767342', 'B004'),
('C005', 'street', 'beats', 'egg in a nest', 'muyenga', 'strtbeats@gmail.com', '0701746235', 'B005'),
('C006', 'cristiano', 'ronaldo', 'big boy breakfast', 'muyenga', 'ronaldocr7@gmail.com', '0778645323', 'B006'),
('C007', 'leonel', 'messi', 'baby chino', 'ntinda', 'leom10@gmail.com', '0778635636', 'B007'),
('C008', 'edin', 'harzard', 'lollipop waffle', 'kabalagala', 'harzardfire@gmail.com', '0774560746', 'B008'),
('C009', 'grey', 'white', 'rangerscino', 'namuwongo', 'whitgrey@gmail.com', '0773456456', 'B002'),
('C010', 'platinum', 'heist', 'tommy fish fingers', 'namuwongo', 'heistplat@gmail.com', '0774756376', 'B003'),
('C011', 'tommy', 'hilfiger', 'grilled steak', 'state house', 'tommyhilfig@gmail.com', '0785457890', 'B001'),
('C012', 'avenge', 'laker', 'quesidilla', 'boulevard villa', 'lakeravenge@yahoo.com', '0778654323', 'B001'),
('C013', 'april', 'west', 'vegetable spring rol', 'katumwa rd', 'aprilwest@yahoo.com', '0754356674', 'B005'),
('C014', 'kim', 'kardashian', 'barbeque chicken win', 'los angeles', 'kimk@gmail.com', '0789656436', 'B007'),
('C015', 'wild', 'pervie', 'plantian', 'kamwokya road', 'wildpervie@gmail.com', '0768546753', 'B004'),
('C016', 'kanye', 'west', 'cajun chicken salad', 'ntinda', 'kanyew@hotmail.com', '0789656774', 'B003'),
('C017', 'charlie', 'puth', 'caesar salad', 'muyonyo', 'charlieputh@gmail.com', '0756854643', 'B001'),
('C018', 'cheat', 'codes', 'thai chicken salad', 'namuwongo', 'cheatcodes@yahoo.com', '0786595464', 'B002'),
('C019', 'justin', 'beiber', 'tuna salad', 'justin rd', 'justinbeib@gmail.com', '0766744667', 'B003'),
('C020', 'katy', 'perry', 'smoked tilapia salad', 'perry lane', 'perrykate@gmail.com', '078964633', 'B004'),
('C021', 'callie', 'arizona', 'chicken pesto', 'arizona', 'callieariz@gmail.com', '0786456342', 'B005'),
('C022', 'moreno', 'star', 'chicken tikka classi', 'namuwongo', 'morenostar@hotmail.com', '0789646330', 'B003'),
('C023', 'chris', 'lane', 'tuna salad sandwich', 'christopher ave', 'lanechris@hotmail.com', '0776566464', 'B007'),
('C024', 'dierks', 'bentley', 'carlifonian burger', 'ntinda', 'bentleyd@yahoo.com', '0789646345', 'B008'),
('C025', 'brantley', 'gilbert', 'big is big burger', 'muyonyo', 'brantgilbz@hotmail.com', '0756854656', 'B008'),
('C026', 'beyonce', 'knowles', 'peri peri chicken', 'ntinda', 'quuenb@yahoo.com', '0789647671', 'B008'),
('C027', 'luis', 'fonte', 'english style fish', 'muyonyo', 'luisfont@yahoo.com', '0756854687', 'B006'),
('C028', 'chris', 'brown', 'thai peanut chicken ', 'privacy lane', 'brownchris@yahoo.com', '0789646354', 'B006'),
('C029', 'clarkson', 'kelly', 'chicken parmesan', 'boulevard villa', 'clarkelly@yahoo.com', '0756854612', 'B007'),
('C030', 'franklin', 'covey', 'pizza margherita', 'ntinda', 'frankcovey@yahoo.com', '0786595354', 'B008');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `code` int(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qty` varchar(25) DEFAULT NULL,
  `unit price` int(10) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`code`, `name`, `qty`, `unit price`) VALUES
(1, 'chicken breast', '50 kg', 20000),
(2, 'chicken wings', '55 kg', 13000),
(3, 'chicken drumsticks', '35 kg', 15000),
(4, 'whole chicken', '70 birds (3kg)', 18000),
(5, 'whole fish', '70 peices (large)', 12000),
(6, 'fish fillets', '45 kg', 13000),
(7, 'beef fillets', '45 kg', 10000),
(8, 't born steak', '85 kg', 15000),
(9, 'milk', '29l', 3000),
(10, 'icecream', '100 kg', 33500),
(11, 'coffee', '10 kg', 2500),
(12, 'whip cream', '10 pieces', 10500),
(13, 'irish potatoes', '130 kg', 150000),
(14, 'rice', '48 kg', 44000),
(15, 'pineapples', '17 peices', 3500),
(16, 'apples', '12 peices', 2500),
(17, 'watermelon', '12 peices', 8000),
(18, 'papaya', '10 peices', 6000),
(19, 'spices', '35 pax', 34000),
(20, 'vegetables', '35 bundles', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(8) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `qty`, `price`) VALUES
(1, 'grilled steak', 'main course', '45 portions', 35000),
(2, 'chicken wings', 'main course', '25 portions', 35000),
(3, 'caribean jerk', 'main course', '30 potions', 30000),
(4, 'blue lagoon', 'drinks', '30 glasses', 15000),
(5, 'frapuccino', 'drinks', '60 glasses', 10000),
(6, 'cake slice', 'pastries', '25 slices', 9000),
(7, 'egg in a nest', 'breakfast', '20 portions', 10000),
(8, 'big boy breakfast', 'breakfast', '20 portions', 13000),
(9, 'baby chino', 'coffee', '45 portions', 10000),
(10, 'lollilop waffle', 'starter', '48 portions', 19000),
(11, 'rangerscino', 'coffee', '56 portions', 7000),
(12, 'tommy fish fingers', 'starters', '59 portions', 23000),
(13, 'grilled steak', 'main course', '90 portions', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `emp id` char(4) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  `branch code` varchar(4) NOT NULL,
  PRIMARY KEY (`emp id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp id`, `fname`, `lname`, `position`, `address`, `email`, `telephone`, `branch code`) VALUES
('E001', 'jack', 'efron', 'manager', 'plot 5 boulevar', 'jackef@gmail.com', '0778665498', 'B002'),
('E002', 'bobby', 'light', 'baristor', '32 envar', 'boblit@gmail.com', '0770909865', 'B003'),
('E003', 'ying', 'terminatz', 'chef', '45 course', 'termzyin@gmail.com', '0775676876', 'B006'),
('E004', 'eva', 'lilian', 'human resource manag', 'villa extra', 'evalillian@hotmail.com', '0775676886', 'B004'),
('E005', 'penny', 'prossy', ' manager', 'muyenga', 'prossypenny@yahoo.com', '0775768975', 'B006'),
('E006', 'irene', 'priscilla', ' waitress', 'muyonyo', 'prossypenny@yahoo.com', '0773509878', 'B008'),
('E007', 'timmy', 'turner', ' cleaner', 'kamwokay', 'timmyturn@hotmail.com', '0773290976', 'B001'),
('E008', 'mr', 'eazi', ' cleaner', 'ntinda', 'eazi@hotmail.com', '0773200756', 'B006'),
('E009', 'hurt', 'spears', ' supervisor', 'ntinda', 'spearshurt@bing.com', '0719654907', 'B004'),
('E010', 'picture', 'perfect', 'waiter', 'plot 5 boulevar', 'picperfect@bing.com', '0745398678', 'B005'),
('E011', 'chris', 'cyrus', 'cleaner', '32 envar', 'cyrus101@gmail.com', '0702397696', 'B005'),
('E012', 'chris', 'brown', 'supervisor', '45 course', 'chrisbrown@gmail.com', '0701597790', 'B007'),
('E013', 'rihana', 'mima', 'waiter', 'villa extra', 'rihamina@gmail.com', '0708769060', 'B001'),
('E014', 'dj', 'khaled', 'baristor', 'muyenga', 'khaled@gmail.com', '0704099867', 'B002'),
('E015', 'usher', 'ray', 'waiter', 'kamwokya', 'usherray@gmail.com', '0701900987', 'B004');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier id` char(4) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `product_supplied` varchar(20) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  PRIMARY KEY (`supplier id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier id`, `fname`, `lname`, `product_supplied`, `address`, `email`, `telephone`) VALUES
('S001', 'snoop', 'dog', 'chicken', 'kamwokya', 'snoopyeyes@gmail.com', '0773426234'),
('S002', 'derullo', 'jason', 'beef', 'mbarara', 'derulojay@gmail.com', '0712345644'),
('S003', 'asap', 'rocky', 'coffee', 'mbale', 'sapyrock@gmail.com', '0798345644'),
('S004', 'dim', 'lite', 'icecream', 'kololo', 'litecream@gmail.com', '0765645644'),
('S005', 'imagine', 'dragon', 'irish potatoes', 'nakawa', 'dragonpotats@gmail.com', '0735609644'),
('S006', 'mariam', 'xera', 'ketchup', 'nakawa', 'xeramariam@gmail.com', '0766567476'),
('S007', 'certified', 'solo', 'fish', 'nakawa', 'certsolo@gmail.com', '0723456776'),
('S008', 'early', 'breezy', 'tomatoes', 'nakasero', 'earlybreeze@gmail.com', '0723457866'),
('S009', 'pink', 'grey', 'foodcolor', 'nakasero', 'greypink@gmail.com', '0767886600'),
('S010', 'teckno', 'hearts', 'olives', 'nakasero', 'olivehearts@gmail.com', '0772234657');
