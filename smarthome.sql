-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2022 at 02:44 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthome`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_electic`
--

CREATE TABLE `tb_electic` (
  `elec_id` int(10) NOT NULL,
  `home_id` int(10) NOT NULL,
  `elec_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `elec_month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_electic`
--

INSERT INTO `tb_electic` (`elec_id`, `home_id`, `elec_unit`, `elec_month`) VALUES
(1, 1, '252', 'มกราคม'),
(2, 1, '134', 'กุมภาพันธุ์'),
(3, 1, '124', 'มีนาคม'),
(4, 1, '155', 'เมษายน'),
(5, 1, '555', 'พฤษภาคม'),
(6, 2, '121', 'มีนาคม');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gas`
--

CREATE TABLE `tb_gas` (
  `gas_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  `gas_unit` varchar(50) NOT NULL,
  `gas_month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_gas`
--

INSERT INTO `tb_gas` (`gas_id`, `home_id`, `gas_unit`, `gas_month`) VALUES
(1, 1, '123', 'มกราคา');

-- --------------------------------------------------------

--
-- Table structure for table `tb_home`
--

CREATE TABLE `tb_home` (
  `home_id` int(10) NOT NULL,
  `home_name` varchar(50) NOT NULL,
  `home_number` varchar(50) NOT NULL,
  `soi` varchar(50) NOT NULL,
  `parish` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_home`
--

INSERT INTO `tb_home` (`home_id`, `home_name`, `home_number`, `soi`, `parish`, `district`, `province`, `zip_code`, `user_id`) VALUES
(1, 'บ้านหลังที่ 1', '12314', 'Ladpao', 'Ladpao', 'Bangkapi', 'Bangkok', '10240', '1'),
(2, 'บ้านหลังที่ 2', '1231231', 'ลาดพร้าว ', 'Ladpao', 'Bangkapi', 'Bangkok', '123123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_home_climate`
--

CREATE TABLE `tb_home_climate` (
  `climate_id` int(10) NOT NULL,
  `temp` varchar(20) NOT NULL,
  `humi` varchar(20) NOT NULL,
  `pm_25` varchar(20) NOT NULL,
  `home_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_home_climate`
--

INSERT INTO `tb_home_climate` (`climate_id`, `temp`, `humi`, `pm_25`, `home_id`) VALUES
(1, '27', '50', '10', 1),
(2, '23', '60', '80', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_home_eq`
--

CREATE TABLE `tb_home_eq` (
  `home_eq_id` int(11) NOT NULL,
  `home_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eq_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eq_status` int(50) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_home_eq`
--

INSERT INTO `tb_home_eq` (`home_eq_id`, `home_id`, `eq_name`, `eq_status`, `img`) VALUES
(1, '1', 'โคมไฟ', 1, 'light.png'),
(2, '1', 'tv', 1, 'tv.png'),
(3, '2', 'โคมไฟ', 0, 'light.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_room`
--

CREATE TABLE `tb_room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `home_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_room`
--

INSERT INTO `tb_room` (`room_id`, `room_name`, `img`, `home_id`) VALUES
(1, 'ห้องนั่งเล่น', 'image_picker4443466549784253189.png', 1),
(2, 'ห้องนอน 1', 'image_picker7632540109786128461.jpg', 1),
(5, 'ห้องน้ำ', 'image_picker491166059667335514.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_room_eq`
--

CREATE TABLE `tb_room_eq` (
  `room_eq_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `home_id` int(50) NOT NULL,
  `eq_name` varchar(50) NOT NULL,
  `eq_status` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_room_eq`
--

INSERT INTO `tb_room_eq` (`room_eq_id`, `room_id`, `home_id`, `eq_name`, `eq_status`, `img`) VALUES
(1, 1, 1, 'โคมไฟ', 0, 'light.png'),
(2, 1, 1, 'tv', 0, 'tv.png'),
(3, 2, 1, 'tv', 1, 'tv.png'),
(4, 5, 2, 'โคมไฟ', 0, 'light.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `name`, `phone`, `email`, `username`, `password`, `img`) VALUES
(1, 'test1', '0999', 'test@gmail.com', 'test', '123456', 'image_picker4816952150033621487.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_water`
--

CREATE TABLE `tb_water` (
  `water_id` int(10) NOT NULL,
  `home_id` int(10) NOT NULL,
  `water_unit` varchar(50) NOT NULL,
  `water_month` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_water`
--

INSERT INTO `tb_water` (`water_id`, `home_id`, `water_unit`, `water_month`) VALUES
(1, 1, '120', 'มกราคม'),
(2, 1, '100', 'มีนาคม'),
(3, 1, '232', 'ธันวาคม');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_electic`
--
ALTER TABLE `tb_electic`
  ADD PRIMARY KEY (`elec_id`);

--
-- Indexes for table `tb_gas`
--
ALTER TABLE `tb_gas`
  ADD PRIMARY KEY (`gas_id`);

--
-- Indexes for table `tb_home`
--
ALTER TABLE `tb_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `tb_home_climate`
--
ALTER TABLE `tb_home_climate`
  ADD PRIMARY KEY (`climate_id`);

--
-- Indexes for table `tb_home_eq`
--
ALTER TABLE `tb_home_eq`
  ADD PRIMARY KEY (`home_eq_id`);

--
-- Indexes for table `tb_room`
--
ALTER TABLE `tb_room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tb_room_eq`
--
ALTER TABLE `tb_room_eq`
  ADD PRIMARY KEY (`room_eq_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_water`
--
ALTER TABLE `tb_water`
  ADD PRIMARY KEY (`water_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_electic`
--
ALTER TABLE `tb_electic`
  MODIFY `elec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_gas`
--
ALTER TABLE `tb_gas`
  MODIFY `gas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_home`
--
ALTER TABLE `tb_home`
  MODIFY `home_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_home_climate`
--
ALTER TABLE `tb_home_climate`
  MODIFY `climate_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_home_eq`
--
ALTER TABLE `tb_home_eq`
  MODIFY `home_eq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_room`
--
ALTER TABLE `tb_room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_room_eq`
--
ALTER TABLE `tb_room_eq`
  MODIFY `room_eq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_water`
--
ALTER TABLE `tb_water`
  MODIFY `water_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
