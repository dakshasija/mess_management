-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 07:04 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mess management`
--

-- --------------------------------------------------------

--
-- Table structure for table `mess_no`
--

CREATE TABLE IF NOT EXISTS `mess_no` (
  `Mess_id` int(11) NOT NULL,
  `Mess_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess_no`
--

INSERT INTO `mess_no` (`Mess_id`, `Mess_name`) VALUES
(1, 'Special Mess'),
(2, 'North Indian Veg'),
(3, 'North Indian NVeg'),
(4, 'South Indian');

-- --------------------------------------------------------

--
-- Table structure for table `north_indian_nv`
--

CREATE TABLE IF NOT EXISTS `north_indian_nv` (
  `Day` varchar(10) NOT NULL,
  `Breakfast` varchar(200) NOT NULL,
  `Lunch` varchar(200) NOT NULL,
  `Snacks` varchar(200) NOT NULL,
  `Dinner` varchar(200) NOT NULL,
  `Mess_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `north_indian_nv`
--

INSERT INTO `north_indian_nv` (`Day`, `Breakfast`, `Lunch`, `Snacks`, `Dinner`, `Mess_id`) VALUES
('Monday', 'Poori,Aloo Masala,BBJ,TCM,Boiled Egg', 'Phulka,Cabbage Peas,Chenna Dal,Rice,Curd,Salad', 'Sponge Cake,TCM', 'Phulka,Paneer Butter Masala,Dhal Rajasthani,Rice,Fruit,Gulab Jamun', 3),
('Tuesday', 'Pav Bhaji,Fried Chilly,BBJ,TCM,Egg Bhurji', 'Phulka,Dhal Makhani,Rice,Bottle Garnet Masala,Papad,Pickle', 'Cutlet,TCM', 'Phulka,Meal Maker Sabji,Black Dhal,Noodles,Rice,Banana,Chilly Chicken', 3),
('Wednesday', 'Aloo Parantha, Loose Curd,BBJ,TCM,Boiled Egg', 'Phulka, Moong Dhal,Veg Manchurian,Rice,Pickle', 'Samosa', 'Poori Aloo,Yello Dhal,Rice,Pulao,Loose Curd,Fruit,Kheer', 3),
('Thursday', 'Utthapam,Sambhar,Chutney,BBJ,TCM,Omelette', 'Phulka,Aloo Dum,Mix Dhal,Raita,Rice,Pcikle,Chicken Biryani', 'Sandwich', 'Phulka,Chilly Paneer,Yellow Dhal,Fruit,Rice,Butter Milk', 3),
('Friday', 'Vada Pav,Sambhar Vadai,BBJ,TCM,Boiled Egg', 'Phulka,Dhal Rajasthani,Kerala Masala,Rice,Papad,Pickle', 'Veg Puff,TCM', 'Phulka,Veg Kofta Curry,Kla Dhal,Fried Rice,Rice, Banana,Butter Chicken', 3),
('Saturday', 'Aloo Parantha,Loose Curd,BBJ,TCM,Boiled Egg', 'Phulka,Kadi Pakoda,Rice,Butter Milk,Papad', 'Papadi Chat', 'Phulka,Aloo Beans,Sabji,Mixed Dhal,Rice,Butter Milk,Jangiri', 3),
('Sunday', 'Poha,Namkeen,Uppuma,Chutney,BBJ,TCM,Scrambled Egg', 'Phulka,Dhal Makhani,Aloo Gobi,Rice,Chips,Curd,Pickle', 'Biscuits,TCM', 'Phulka,Tinly Masala Dry,Yellow Dhal,Rice,Butter Milk, Banana,Egg Masala/Fish', 3);

-- --------------------------------------------------------

--
-- Table structure for table `north_indian_v`
--

CREATE TABLE IF NOT EXISTS `north_indian_v` (
  `Day` varchar(10) NOT NULL,
  `Breakfast` varchar(200) NOT NULL,
  `Lunch` varchar(200) NOT NULL,
  `Snacks` varchar(200) NOT NULL,
  `Dinner` varchar(200) NOT NULL,
  `Mess_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `north_indian_v`
--

INSERT INTO `north_indian_v` (`Day`, `Breakfast`, `Lunch`, `Snacks`, `Dinner`, `Mess_id`) VALUES
('Monday', 'Poori,Aloo Masala,BBJ,TCM', 'Phulka,Cabbage Peas,Chenna Dal,Rice,Curd,Salad', 'Sponge Cake,TCM', 'Phulka,Paneer Butter Masala,Dhal Rajasthani,Rice,Fruit,Gulab Jamun', 2),
('Tuesday', 'Pav Bhaji,Fried Chilly,BBJ,TCM', 'Phulka,Dhal Makhani,Rice,Bottle Garnet Masala,Papad,Pickle', 'Cutlet,TCM', 'Phulka,Meal Maker Sabji,Black Dhal,Noodles,Rice,Banana', 2),
('Wednesday', 'Aloo Parantha, Loose Curd,BBJ,TCM', 'Phulka, Moong Dhal,Veg Manchurian,Rice,Pickle', 'Samosa', 'Poori Aloo,Yello Dhal,Rice,Pulao,Loose Curd,Fruit,Kheer', 2),
('Thursday', 'Utthapam,Sambhar,Chutney,BBJ,TCM', 'Phulka,Aloo Dum,Mix Dhal,Raita,Rice,Pcikle,Veg Biryani', 'Sandwich', 'Phulka,Chilly Paneer,Yellow Dhal,Fruit,Rice,Butter Milk', 2),
('Friday', 'Vada PAv,Sambhar Vadai,BBJ,TCM', 'Phulka,Dhal Rajasthani,Kerala Masala,Rice,Papad,Pickle', 'Veg Puff,TCM', 'Phulka,Veg Kofta Curry,Kla Dhal,Fried Rice,Rice, Banana', 2),
('Saturday', 'Aloo Parantha,Loose Curd,BBJ,TCM', 'Phulka,Kadi Pakoda,Rice,Butter Milk,Papad', 'Papadi Chat', 'Phulka,Aloo Beans,Sabji,Mixed Dhal,Rice,Butter Milk,Jangiri', 2),
('Sunday', 'Poha,Namkeen,Uppuma,Chutney,BBJ,TCM', 'Phulka,Dhal Makhani,Aloo Gobi,Rice,Chips,Curd,Pickle', 'Biscuits,TCM', 'Phulka,Tinly Masala Dry,Yellow Dhal,Rice,Butter Milk, Banana', 2);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `regno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `block` varchar(10) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`regno`, `name`, `block`, `mname`, `mid`) VALUES
('13BCE807', 'Kartik Chopra', 'E Block', 'NIV', 2),
('13BEE0088', 'Faijal Khan', 'Waseypur', 'NIV', 2),
('13BIT0001', 'Pratt', 'E Block', 'S', 1),
('13BIT0009', 'Amit Kumar', 'E Block', 'S', 1),
('13BIT01000', 'Dahgh', 'kjkjkjkh', 'NIV', 2),
('13BIT01000000', 'Dahgh', 'kjkjkjkh', 'NIV', 2),
('13BIT0160', 'Da', 'kjk', 'S', 1),
('13BIT0164', 'Dahgh', 'kjkjkjkh', 'NIV', 2),
('13BIT0168', 'Daksh', 'hgh', 'NIV', 2);

-- --------------------------------------------------------

--
-- Table structure for table `south_indian`
--

CREATE TABLE IF NOT EXISTS `south_indian` (
  `Day` varchar(10) NOT NULL,
  `Breakfast` varchar(200) NOT NULL,
  `Lunch` varchar(200) NOT NULL,
  `Snacks` varchar(200) NOT NULL,
  `Dinner` varchar(200) NOT NULL,
  `Mess_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `south_indian`
--

INSERT INTO `south_indian` (`Day`, `Breakfast`, `Lunch`, `Snacks`, `Dinner`, `Mess_id`) VALUES
('Monday', 'Pongal,Vada,Sambhar,Chutney,BBJ,Omlette', 'Rice,Basebella Bath,Rasam,PappuKora,Pickle', 'Biscuits/Cutlet, TCM', 'Chapatthi,Aloo Kurma,Rice,Rasam Banana,Semia Payasam', 4),
('Tuesday', 'Idly,Sambhar,Kara Chutney,BBJ,TCM,Boiled Egg', 'Rice,Khushka Rice,Sambar,Poriyal,Raitha,Appalam', 'Onion Pakoda, TCM', 'Uthapam,Chutney,Rice,Sambhar,Rasam,Brinjal,Chettinad Chicken Gravy, Milk', 4),
('Wednesday', 'Poori Masala, BBJ,TCM,Omlette', 'Rice,Lemon Rice,Sambhar,Chana Dhal,Jeera Rasam,Pickle,Butter Milk', 'Mixture, TCM', 'Veg Pulao,Rice,Sambhar,Rasam,Beetroot Poriyal,Curd,Ladoo', 4),
('Thursday', 'Khitchadi,Sambhar,Chutney,BBJ,TCM', 'Rice,Biryani,Raitha,Chettinadu Rasam,Butter Milk,Pickle', 'Sponge Cake, TCM', 'Roti,Paneer Butter Masala,Rice,Rasam Poriyal,Milk', 4),
('Friday', 'Idly,Vadai,Sambhar,Chutney,BBJ,TCM', 'Rice,Sambhar Rice,Brinjal Mochai Poriyal,Dhal Rasam,Pickle', 'Veg Puff', 'Roti,Veg Gravy,White Rice,Rasam,Loose Curd,Egg Masala/Fish Fry', 4),
('Saturday', 'Uppuma,Chutney,Sambhar,BBJ,TCM', 'Rice,Tomato Rice,Drum Stick Sambhar,Rasam,Tomato Dhal', 'Samosa,TCM', 'Uttapam,Chutney,Rice,Sambhar,Rasam,Aloo Peas Poriyal,Fruit Custard', 4),
('Sunday', 'Pongal,Vadai,Sambhar,Chutney,BBJ,TCM', 'Fried Rice,Hyderabad Sambhar,Jeera Rasam,Chenna Dhal,Pickle, Butter Milk', 'Mysore Bonda,TCM', 'Roti,Veg Kuruma,Rice,Sambhar,Rasam,Kathamba Poriyal,Green Banana,Butter Chicken Gravy', 4);

-- --------------------------------------------------------

--
-- Table structure for table `special_mess`
--

CREATE TABLE IF NOT EXISTS `special_mess` (
  `Day` varchar(10) NOT NULL,
  `Breakfast` varchar(200) NOT NULL,
  `Lunch` varchar(200) NOT NULL,
  `Snacks` varchar(200) NOT NULL,
  `Dinner` varchar(200) NOT NULL,
  `Mess_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_mess`
--

INSERT INTO `special_mess` (`Day`, `Breakfast`, `Lunch`, `Snacks`, `Dinner`, `Mess_id`) VALUES
('Monday', 'ALoo Parantha,Curd,Pickle,BBJ,TCM,Cornflakes,Omelette', 'Roti,Chettinadu Chicken/Paneer Makhini,Black Dhal,Rice,Sambhar,Sweet', 'Cutelt,TCM', 'Mushroom Soup, Poori, Channa Masala,Variety Rice,Banana', 1),
('Tuesday', 'Dosai,Sambhar,Chutney, Scrambled Egg,Juice,Cornflakes,TCM', 'Phulka, Kadi Pakoda,Dhal Dhadka,Rice,Sambhar,Rasam,Buter Milk', 'Burger,TCM', 'Corn Soup,Phulka,Mixed Dhal,Kofta Curry,Tamarind Rice,Salad,Banana', 1),
('Wednesday', 'Vada Pav,Boiled Egg,BBJ,TCM,Juice,Cornflakes', 'Chapatti,Butter Chicken/Paneer,Black Dhal,Rice,Sambhar,Papad,Sweet', 'Aloo Samosa', 'Ministrone Soup,Roti,Aloo Jeera Dry,Dhal Fry,Rice,Fruit', 1),
('Thursday', 'Poha,Namkeen,Idly,Chutney,Juice,BBJ,TCM,Cornflakes', 'Chicken Biryani/Veg Biryani, French Fry,Brinjal,Rice,Pepper Rasam', 'Sponge Cake,TCM', 'Tomato Coup,Tandoori Roti,Black Dhal,Veg Manchurian,Pulao,Banana,Milk', 1),
('Friday', 'Dosai,Sambhar,Chutney,Boiled Egg,BBJ,TCM,Juice,Cornflakes', 'Phulka,Aloo Mutter,Dhal Punjabi,Rice,Sambhar,Rasam,Papad,Dahi Vada', 'Masala Poori,TCM', 'Hot and Sour Soup,Chapathi,Veg Kurma,Yellow Dhal,Noodles,Fruit,Milk', 1),
('Saturday', 'French Toast,Poha,BBJ,TCM,Juice,Cornflakes', 'Chilly Aloo,Yellow Dhal,Rice,Sambhar,Rasam,Sweet', 'Veg Puff,TCM', 'Tomato Soup,Meal Maker Sabsi,Roti,Black Dhal,Fried Rice,Banana,Milk', 1),
('Sunday', '', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
 ADD PRIMARY KEY (`regno`), ADD UNIQUE KEY `regno` (`regno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
