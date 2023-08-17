-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 07:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaccount`
--

CREATE TABLE `adminaccount` (
  `admin_username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminaccount`
--

INSERT INTO `adminaccount` (`admin_username`, `admin_password`, `admin_fullname`) VALUES
('admin1', '14e1b600b1fd579f47433b88e8d85291', 'Administrator 1'),
('admin2', '14e1b600b1fd579f47433b88e8d85291', 'Administrator 2');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_title`, `contact_message`, `contact_time`) VALUES
(13, 'User 01', 'user1@gmail.com', 'Help me', 'I don not know how to purchase, please guide me. Thank you.', '2022-12-03'),
(14, 'User 02', 'user02@yahoo.com', 'User 02 feedback', 'Please guide me how to change password.\r\nThanks.', '2022-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp(),
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `user_id`, `total_price`, `create_date`, `address`) VALUES
(4, 15, 50000, '2022-12-03', '41 CMT8, Q.Ninh Kiều, TP.Cần Thơ'),
(5, 16, 210000, '2022-12-03', '66 Võ Văn Tần, quận Thanh Khê, Đà Nẵng');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `product_id`, `quantity`, `invoice_id`) VALUES
(8, 78, 3, 4),
(9, 82, 2, 4),
(10, 88, 2, 5),
(11, 82, 3, 5),
(12, 80, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES
(78, 'APTALE Sneakers', 200000, 'APTALE Sneakers', 'Images/giay1.jpg'),
(79, '	basketball shoes', 200000, '	basketball shoes', 'Images/giay2.jpg'),
(80, 'Football shoes', 200000, 'Football shoes', 'Images/giay3.jpg'),
(81, 'Lazy shoes', 100000, 'Lazy shoes', 'Images/giay4.jpg'),
(82, 'Women Sneakers', 150000, 'Women Sneakers', 'Images/giay5.jpg'),
(83, 'RUFINE shoes', 200000, 'RUFINE shoes', 'Images/giay6.jpg'),
(84, 'Mens Sneakers', 200000, 'Mens Sneakers', 'Images/giay7.jpg'),
(85, 'Mens Sports Shoes', 100000, 'Mens Sports Shoes', 'Images/giay8.jpg'),
(86, 'Mens Sports Shoes', 150000, 'Mens Sports Shoes', 'Images/giay9.jpg'),
(87, 'Nike Air force Sneakers', 200000, 'Nike Air force Sneakers', 'Images/giay10.jpg'),
(88, 'mk sports shoes', 185000, 'mk sports shoes', 'Images/giay11.jpg'),
(89, 'RO Sports Shoes', 120000, 'RO Sports Shoes', 'Images/giay12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(9) NOT NULL,
  `user_fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phonenumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `user_fullname`, `user_email`, `user_phonenumber`, `user_password`, `user_address`, `user_status`) VALUES
(15, 'User 01', 'user1@gmail.com', '0988888777', 'e10adc3949ba59abbe56e057f20f883e', '41 CMT8, Q.Ninh Kiều, TP.Cần Thơ', 1),
(16, 'User 02', 'user2@yahoo.com', '0911223344', 'e10adc3949ba59abbe56e057f20f883e', '66 Võ Văn Tần, quận Thanh Khê, Đà Nẵng', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminaccount`
--
ALTER TABLE `adminaccount`
  ADD PRIMARY KEY (`admin_username`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `invoice_detail_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `invoice_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
