-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 10:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automotive`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(8) NOT NULL,
  `car_type` int(20) NOT NULL,
  `buildyear` varchar(40) DEFAULT NULL,
  `firstregistration` varchar(40) DEFAULT NULL,
  `odometerreading` varchar(40) DEFAULT NULL,
  `cylindercapacity` varchar(40) DEFAULT NULL,
  `transmission` varchar(40) DEFAULT NULL,
  `fueltype` varchar(40) DEFAULT NULL,
  `doors` varchar(5) NOT NULL,
  `drivetrain` varchar(3) NOT NULL,
  `horsepower` varchar(50) DEFAULT NULL,
  `picture_location` varchar(100) NOT NULL,
  `date_posted` date NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `price`, `car_type`, `buildyear`, `firstregistration`, `odometerreading`, `cylindercapacity`, `transmission`, `fueltype`, `doors`, `drivetrain`, `horsepower`, `picture_location`, `date_posted`, `posted_by`) VALUES
(1, 'Alfa Romeo Giulia', 31000, 7, '2019', '07/2019', '98,000 km', '1993 ccm', 'Automatic', 'Diesel', '4/5', 'AWD', '280 hp', 'images/cars/carpictures/alfaromeo.jpg', '2022-02-23', 0),
(2, 'Audi A1 Sportback\r\n\r\n', 23000, 1, '2018', '01/2019', '102,000 km', '1563 ccm', 'Automatic', 'Diesel', '4/5', 'AWD', '95 hp', 'images/cars/carpictures/audia1.jpg', '2022-02-23', 7),
(3, 'Audi A4 (B9) Facelift', 39000, 7, '2019', '03/2020', '75,000 km', '2993 ccm', 'Automatic', 'Diesel', '', '', '286 hp', 'images/cars/carpictures/audia4.jpg', '2022-02-23', 7),
(4, 'Audi A4 Allroad (B9 8W)\r\n', 42000, 4, '2020', '06/2020', '56,047 km', '2993 ccm', 'Automatic', 'Diesel', '4/5', 'AWD', '265 hp', 'images/cars/carpictures/audia4allroad.jpg', '2022-02-23', 0),
(5, 'BMW 4 Series Gran Coupe (F36)\r\n', 37000, 2, '2016', '12/2016', '256,457 km', '2993 ccm', 'Automatic', 'Diesel', '', '', '326 hp', 'images/cars/carpictures/bmw4.jpg', '0000-00-00', 9),
(6, 'BMW 7 Series Long', 69000, 7, '2015', '03/2015', '352,457 km', '3993 ccm', 'Automatic', 'Diesel', '', '', '320 hp', 'images/cars/carpictures/bmw7.jpg', '0000-00-00', 9),
(7, 'Ford Fiesta VIII (Mk8)', 11000, 1, '2020', '02/2020', '46,475 km', '1563 ccm', 'Manual', 'Diesel', '2/3', 'FWD', '120 hp', 'images/cars/carpictures/fordfiesta.jpg', '0000-00-00', 9),
(8, 'Vauxhall Insignia II Grand Sport', 19115, 7, '2020', '07/2020', '124,445 km', '1993 ccm', 'Automatic', 'Diesel', '', '', '174 hp', 'images/cars/carpictures/insigna.jpg', '0000-00-00', 9),
(9, 'Jaguar XJ R', 54900, 5, '2013', '08/2015', '345,447 km', '4993 ccm', 'Automatic', 'Petrol', '', '', '550 hp', 'images/cars/carpictures/jaguar.jpg', '0000-00-00', 9),
(10, 'Peugeot 508 SW', 25340, 7, '2012', '07/2012', '378,445 km', '1448 ccm', 'Manual', 'Diesel', '', '', '130 hp', 'images/cars/carpictures/peugeot508.jpg', '0000-00-00', 9),
(11, 'VW Polo', 12000, 1, '2018', '07/2018', '100,758 km', '1563 ccm', 'Manual', 'Petrol', '', '', '272 hp', 'images/cars/carpictures/polo.jpg', '0000-00-00', 9),
(12, 'Suzuki Ignis', 14000, 1, '2017', '11/2017', '147,445 km', '1197 ccm', 'Manual', 'Diesel', '', '', '91', 'images/cars/carpictures/suzuki.jpg', '0000-00-00', 9),
(13, 'VW Golf VIII GTD', 35000, 2, '2020', '01/2020', '65,321 km', '1993 ccm', 'Automatic', 'Diesel', '4/5', 'AWD', '184 hp', 'images/cars/carpictures/golf8.jpg', '0000-00-00', 9),
(14, 'Mercedes Benz G-Class (W463)', 21000, 6, '2010', '08/2011', '457,636 km', '2993 cm', 'Automatic', 'Diesel ', '', '', '211', 'images/cars/carpictures/gclass.jpg', '0000-00-00', 9),
(15, 'Mercedes Benz E-Class (W212)', 19000, 7, '2014', '02/2014', '258,137 km', '1993 ccm', 'Automatic ', 'Diesel', '', '', '156 hp', 'images/cars/carpictures/eclass.jpg', '0000-00-00', 9),
(16, 'BMW M3 Competition (G80)', 42000, 7, '2021', '09/2021', '34,457 km', '2993 ccm', 'Automatic ', 'Diesel', '', '', '510 hp', 'images/cars/carpictures/bmwm3.jpg', '0000-00-00', 9),
(17, 'VW Golf VII ', 13500, 2, '2014', '08/2015', '194,774 km', '1993 ccm', 'Automatic', 'Diesel', '', '', '150 hp', 'images/cars/carpictures/golf7.jpg', '0000-00-00', 9),
(18, 'Mercedes Benz E63 (S213)', 79000, 4, '2020', '04/2020', '17,457 km', '4964 ccm', 'Automatic', 'Petrol', '', '', '612 hp', 'images/cars/carpictures/e63.jpg', '0000-00-00', 9),
(29, 'Rivian R1S', 70000, 6, NULL, '2022', '0', NULL, 'Automatic', 'Electric', '4/5', 'AWD', '800', 'images/cars/carpictures/rivian-r1s-in-white.jpg', '2022-03-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `car_types`
--

CREATE TABLE `car_types` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_types`
--

INSERT INTO `car_types` (`id`, `name`) VALUES
(1, 'Small'),
(2, 'Hatchback'),
(3, 'Minivan'),
(4, 'Estate'),
(5, 'Sport'),
(6, 'SUV'),
(7, 'Sedan');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `subject` varchar(70) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_posted` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `subject`, `message`, `date_posted`) VALUES
(76, 'John', 'john@gmail.com', 'Congrats!', 'I just wanted to say congratulations on releasing this website!', '2022-03-01'),
(77, 'George', 'george@gmail.com', 'Just a simple question', 'Can you guys please notify me when u bring any BMW 5 Series?', '2022-03-01'),
(78, 'Alex', 'alex@gmail.com', 'Wooow!', 'Here i found the car of my dreams.\r\nThank you AUTOMOTIVE!', '2022-03-01'),
(85, 'filan', 'filan@gmail.com', 'pyeetje', 'vhweoblbnlcahwui4v h89cw', '2022-03-01'),
(86, '', '', '', '', '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `car` int(10) NOT NULL,
  `date_purchased` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user`, `car`, `date_purchased`) VALUES
(1, 0, 29, '2022-03-01'),
(2, 7, 29, '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `specific1` varchar(30) NOT NULL,
  `specific2` varchar(30) NOT NULL,
  `specific3` varchar(30) NOT NULL,
  `picture_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `specific1`, `specific2`, `specific3`, `picture_location`) VALUES
(1, 'Brake Repair', 'From the brake pedal to hydraulic\r\nbrake fluid, brake master cylinder to\r\npower brake booster, drum brakes to\r\ndisc brakes and electronic.', 'Brake repair', 'Changing rotor kits', 'Sensor repair', 'images/services/parts/brakes.png'),
(2, 'Tyres', 'Selecting the right set of tyres for\r\nyour car can have a significant\r\nimpact on your car’s characteristics,\r\nhaving an influence on braking\r\ndistances.', 'Summer tyres', 'Winter tyres', 'Runflat tyres', 'images/services/parts/tires.png'),
(3, 'Oil Service', 'Regularly check up your car by\r\nchanging the engine oil to keep it\r\nrunning perfect, our oil types which\r\nwe use are:', '5W-30 Diesel oil', '5W-40 Petrol oil', '5W-20 Synthetic oil', 'images/services/parts/oil.png'),
(4, 'Batteries', 'Why waste time shopping for car\r\nbatteries or waiting in an auto repair\r\nshop? We are competitively priced\r\nbattery replacements for most\r\nvehicles.', 'Free testing', 'Long Lasting', '6-year warranty', 'images/services/parts/batteries2.png'),
(5, 'Diagnostics', 'Take a free car diagnostic without\r\nleaving your garage. We will help you\r\nsolve your car problems with easy-to-\r\nfollow auto repair troubleshooting\r\nguides.', 'Brake repair', 'Changing rotor kits', 'Sensor repair', 'images/services/parts/diagnostics.jpg'),
(6, 'Filter Changing', 'Fuel filters serve a vital function in\r\ntoday’s modern, tight-tolerance\r\nengine fuel systems. Unfiltered fuel\r\nmay contain several kinds of\r\ncontamination.', 'Fuel filter', 'Air filter replacement', 'Cabin filter', 'images/services/parts/filters.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `salted_hash` varchar(200) NOT NULL,
  `salt` varchar(20) NOT NULL,
  `privileges` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `salted_hash`, `salt`, `privileges`) VALUES
(0, 'admin', 'admin@automotive.com', 'cd6057569b78847b0b121b02fde617ad2d016183c378ebac3d765193c3a13f39', 'doZ0H28m9NcTtA==', 0),
(7, 'nderim', 'nderim@ubt-uni.net', '6319a4f127671e64a037813639484dd1ffa882af3fe311f3d8d391cbe52c45ae', 'cPIJkFQ6I+ZQmw==', 1),
(9, 'visar', 'visar@ubt-uni.net', '271f37408e7481c6e53eb3455d453f571e055aba5d9731578975dc6db08c5e3f', 'f4ob6BSl9xaWKg==', 1),
(12, 'betim', 'betim@ubt-uni.net', 'a4e690413688cea0b3303ac8c3724fa2cfd28b9f66924eaa525587ac834aa85e', 'rZx/ODyX+7/Jkw==', 1),
(13, 'sample', 'sample@gmail.com', '39725ee315c8b268773b3e659ebfcaaa19197125ef66021acc70984ca8f9556c', 'M24k+//bxQzpGA==', 1),
(15, 'filan', 'f@f.f', 'aaebc725cf06f4fb6145dc0a622802b9e47b665bfc8f9a1ed96e9f2ec4943169', '9Y16BuRWPRKH7Q==', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_types`
--
ALTER TABLE `car_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `car_types`
--
ALTER TABLE `car_types`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
