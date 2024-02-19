-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 04:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `Password`) VALUES
(17, 'James Arthur', 'jamesarthur', '5721c634b6c516e6b87417f1ca775be5'),
(18, 'Test', 'Test', '68eacb97d86f0c4621fa2b0e17cabd8c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `foodlists_id` int(11) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `foodlists_id`, `featured`, `active`) VALUES
(11, 'Vanilla', 'Light and fluffy cake made with vanilla extract.', '6', 'Food922.jpg', 0, 'No', 'Yes'),
(12, 'Red Velvet', 'Our Red velvet cake is a moist and fluffy, layered with cream cheese frosting and has a slightly tangy and chocolatey flavour.', '6', 'Food9485.jpg', 0, 'No', 'Yes'),
(14, 'Oreo', 'Our Oreo cake made with layers of moist chocolate cake and creamy Oreo frosting, topped with crushed Oreo cookies for an irresistible crunch.', '6', 'Food346.jpg', 0, 'No', 'Yes'),
(15, 'Biscoff', 'Our Biscoff cake features layers of fluffy vanilla cake and creamy Biscoff spread, which is made from crushed speculoos cookies.', '7', 'Food2096.jpg', 8, 'Yes', 'Yes'),
(16, 'Strawberry Sensation', ' Sweet combination of fluffy waffles topped with fresh juicy strawberries and whipped cream.', '12', 'Food204.jpg', 0, 'No', 'Yes'),
(17, 'Fluffy Banana Bliss', 'Fluffy waffle base topped with fresh bananas and whipped cream. ', '12', 'Food1712.jpg', 6, 'Yes', 'Yes'),
(18, 'Berries Bliss', 'Fluffy waffle base topped with fresh berries and whipped cream. ', '12', 'Food4911.jpg', 6, 'Yes', 'Yes'),
(19, 'Chocolate Delight', 'Fluffy waffle base topped with chocolate sauce and whipped cream. ', '12', 'Food8192.jpg', 0, 'No', 'Yes'),
(20, 'Bubble Gum', '', '4', 'Food5593.jpg', 9, 'Yes', 'Yes'),
(21, 'Chocolate', '', '4', 'Food9255.jpg', 0, 'No', 'Yes'),
(22, 'Cookies & Cream', '', '4', 'Food395.jpg', 0, 'No', 'Yes'),
(23, 'Mango', '', '4', 'Food6116.jpg', 9, 'Yes', 'Yes'),
(24, 'Strawberry', '', '4', 'Food3766.jpg', 0, 'No', 'Yes'),
(25, 'Vanilla', '', '4', 'Food5502.jpg', 0, 'No', 'Yes'),
(26, 'Brownie Milkshake', '', '8', 'Food2995.jpg', 0, 'No', 'Yes'),
(27, 'Caramel Milkshake', '', '8', 'Food8851.jpg', 0, 'No', 'Yes'),
(28, 'Oreo Milkshake', '', '8', 'Food9102.jpg', 10, 'Yes', 'Yes'),
(29, 'Rainbow Milkshake', '', '8', 'Food9629.jpg', 10, 'Yes', 'Yes'),
(30, 'Strawberry Milkshake', '', '8', 'Food8381.jpg', 0, 'No', 'Yes'),
(31, 'Americano', '', '5', 'Food931.jpg', 0, 'No', 'Yes'),
(32, 'Cappuccino', '', '5', 'Food9313.jpg', 11, 'Yes', 'Yes'),
(33, 'Flat White', '', '5', 'Food9903.jpg', 0, 'No', 'Yes'),
(34, 'Hot Chocolate', '', '6', 'Food9127.jpg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foodlists`
--

CREATE TABLE `tbl_foodlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Image_name` varchar(255) NOT NULL,
  `Featured` varchar(10) NOT NULL,
  `Active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_foodlists`
--

INSERT INTO `tbl_foodlists` (`id`, `Title`, `Image_name`, `Featured`, `Active`) VALUES
(8, 'Cakes', 'categories_948.jpg', 'Yes', 'Yes'),
(9, 'Ice Cream', 'categories_111.jpg', 'Yes', 'Yes'),
(10, 'Milkshake', 'categories_141.jpg', 'Yes', 'Yes'),
(11, 'Coffee', 'categories_666.jpg', 'Yes', 'Yes'),
(12, 'Waffles', 'categories_915.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `Food` varchar(150) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_phone` varchar(11) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_postcode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `Food`, `Price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_postcode`) VALUES
(1, 'Biscoff', '7', 2, '14', '2023-05-10 03:07:29', 'Ordered', 'Helen Khan', '07123456789', 'helenkhan@gmail.com', '324 Manchester road', 'MXX 3A'),
(2, 'Chocolate', '6', 3, '18', '2023-05-10 03:17:52', 'Delivered', 'Sarah Atkinson', '07123456789', 'sarah@gmail.com', 'NE2 45', 'NE2 45'),
(3, 'Fluffy Banana Bliss', '12', 3, '36', '2023-05-17 11:20:18', 'Delivered', 'Helen Khan', '07123456789', 'helenkhan@gmail.com', 'm19 2b', 'm19 2b'),
(4, 'Vanilla', '6', 4, '24', '2023-05-19 08:44:26', 'Delivered', 'Eman Nadeem', '07123456789', 'emannadeem@mail.com', 'M19 2P', 'M19 2P'),
(5, 'Biscoff', '7', 3, '21', '2023-05-19 09:01:40', 'Delivered', 'Eman Khan', '07123456789', 'emankhan@gamil.com', 'M20 4R', 'M20 4R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foodlists`
--
ALTER TABLE `tbl_foodlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_foodlists`
--
ALTER TABLE `tbl_foodlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
