-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 12:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `aamarpay`
--

CREATE TABLE `aamarpay` (
  `id` int(100) NOT NULL,
  `cus_name` text NOT NULL,
  `amount` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pay_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_id` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aamarpay`
--

INSERT INTO `aamarpay` (`id`, `cus_name`, `amount`, `status`, `pay_time`, `transaction_id`, `card_type`) VALUES
(3, 'Karim Molla', 600, 'Successful', '2022-01-25 07:29:16', 'ONL-PAY-R969U0935P', 'DBBL-MASTERDEBIT'),
(5, 'Hamza Hasan', 180, 'Successful', '2022-01-25 10:32:31', 'ONL-PAY-VLIBNZG666', 'DBBL-MobileBanking'),
(6, 'Montu Mia', 470, 'Successful', '2022-01-25 11:10:05', 'ONL-PAY-MTL9PG98XZ', 'DBBL-NEXUS');

-- --------------------------------------------------------

--
-- Table structure for table `online_orders_new`
--

CREATE TABLE `online_orders_new` (
  `order_id` int(100) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online_orders_new`
--

INSERT INTO `online_orders_new` (`order_id`, `Item_Name`, `Price`, `Quantity`) VALUES
(36, 'French Fries', 80, 1),
(37, 'Beef Burger', 150, 1),
(38, 'Beef Burger', 150, 3),
(38, 'Pizza', 250, 1),
(39, 'French Fries', 80, 1),
(40, 'Beef Burger', 150, 4),
(41, 'Beef Burger', 150, 1),
(42, 'Margherita Pizza', 200, 1),
(42, 'Regular French Fries', 100, 2),
(43, 'Beef Burger', 150, 1),
(44, 'Beef Burger', 150, 1),
(45, 'Vegetarian Pizza', 180, 1),
(46, 'Mexican Pizza', 250, 1),
(47, 'Vegetarian Pizza', 180, 1),
(48, 'Beef Burger', 150, 1),
(1, 'Mexican Pizza', 250, 1),
(1, 'Buffalo Wings', 250, 1),
(1, 'Regular French Fries', 100, 2),
(2, 'Pepperoni Pizza', 220, 1),
(3, 'Mexican Pizza', 250, 1),
(3, 'Beef Burger', 150, 1),
(3, 'Regular French Fries', 100, 2),
(4, 'Vegetarian Pizza', 180, 1),
(5, 'Buffalo Wings', 250, 1),
(6, 'Buffalo Wings', 250, 1),
(7, 'Vegetarian Pizza', 180, 1),
(8, 'Beef Burger', 150, 1),
(9, 'Buffalo Wings', 250, 1),
(9, 'Pepperoni Pizza', 220, 1),
(10, 'Regular French Fries', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'John Doe', 'john.doe@email.com', '01711111111', 0, 'Dhaka', 'Pending', 'SSLCZ_TEST_61e43d6424a58', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(100) NOT NULL,
  `cus_name` text NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_add1` varchar(100) NOT NULL,
  `cus_city` text NOT NULL,
  `cus_phone` bigint(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `cus_name`, `cus_email`, `cus_add1`, `cus_city`, `cus_phone`, `payment_status`, `pay_mode`, `total_amount`, `transaction_id`) VALUES
(3, 'Karim Molla', 'karim.m34@gmail.com', 'House -3, Road -20, Aftabnagar', 'Dhaka', 1673248675, 'successful', 'amrpay', 600, 'ONL-PAY-R969U0935P'),
(7, 'Hamza Hasan', 'hamza34@gmail.com', 'Baridhara, Dhaka', 'Dhaka', 1987564523, 'successful', 'amrpay', 180, 'ONL-PAY-VLIBNZG666'),
(8, 'Kader Molla', 'kader@gmail.com', 'Basabo, Dhaka', 'Dhaka', 1345345543, 'pending', 'amrpay', 150, 'ONL-PAY-ZTGGIJHJFV'),
(9, 'Montu Mia', 'montu45@gmail.com', 'Uttara, Dhaka', 'Dhaka', 1734628348, 'successful', 'amrpay', 470, 'ONL-PAY-MTL9PG98XZ'),
(10, 'Kev Khan', 'kevs34@gmail.com', 'Khilkhet, Dhaka', 'Dhaka', 1645982637, 'pending', 'amrpay', 100, 'ONL-PAY-I4S0D89FEC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(15, 'Mohammad Wasikuzzaman', 'wasikz', '2464b94ceb49c2115c4238f51be98d8b'),
(20, 'Maheosy Haque', 'sristy', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(16, 'Pizza', 'Food_Category_988.jpg', 'Yes', 'Yes'),
(17, 'Burger', 'Food_Category_305.jpg', 'Yes', 'Yes'),
(18, 'Fries', 'Food_Category_878.jpg', 'Yes', 'Yes'),
(19, 'Wings', 'Food_Category_97123.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eipay`
--

CREATE TABLE `tbl_eipay` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_eipay`
--

INSERT INTO `tbl_eipay` (`id`, `table_id`, `amount`, `tran_id`, `order_date`, `status`) VALUES
(366, 'table1', '54.00', 'WEP-FRZHSH', '2022-01-18 06:49:08', 'Successful'),
(368, 'table1', '45.00', 'WEP-DYS0ON', '2022-01-18 06:52:47', 'Successful'),
(370, 'table1', '56.00', 'WEP-YRG95X', '2022-01-18 07:02:22', 'Successful'),
(371, 'table1', '67.00', 'WEP-LWYILM', '2022-01-18 07:03:06', 'Successful'),
(372, 'table1', '532.00', 'WEP-M5C2BE', '2022-01-18 07:06:02', 'Successful'),
(376, 'Table 1', '85.00', 'WEP-4R5BTI', '2022-01-18 07:27:40', 'Successful'),
(379, 'table1', '89.00', 'WEP-IPSUYH', '2022-01-18 08:11:37', 'Successful'),
(380, 'table1', '100.00', 'WEP-6A0QEV', '2022-01-18 09:51:14', 'Successful'),
(381, 'table1', '67.00', 'WEP-FE0H2W', '2022-01-18 09:52:03', 'Successful'),
(383, 'table1', '89.00', 'WEP-AMV4GD', '2022-01-18 12:00:06', 'Successful'),
(384, 'table1', '677.00', 'WEP-89G3YX', '2022-01-18 12:03:30', 'Successful'),
(385, 'table1', '74.00', 'WEP-I8Q2DL', '2022-01-18 12:04:45', 'Successful'),
(386, 'Table 4', '140.00', 'WEP-EY54UD', '2022-01-18 12:08:55', 'Successful'),
(387, 'Table 4', '776.00', 'WEP-90PADT', '2022-01-18 12:15:01', 'Successful'),
(388, 'Table 6', '65.00', 'WEP-XCKFK5', '2022-01-18 12:15:36', 'Successful'),
(389, 'Table 5', '65.00', 'WEP-SMBE2A', '2022-01-18 12:33:56', 'Successful'),
(390, 'Table 2', '73.00', 'WEP-WGQJ1L', '2022-01-18 12:36:59', 'Successful'),
(391, 'Table 1', '76.00', 'WEP-KC3UXM', '2022-01-19 06:14:20', 'Successful'),
(392, 'Table 3', '565.00', 'WEP-SC0FS3', '2022-01-19 10:51:21', 'Successful'),
(393, 'Table 3', '65.00', 'WEP-GSIYGA', '2022-01-19 10:53:45', 'Successful'),
(394, 'Table 4', '656.00', 'WEP-B0B3KI', '2022-01-19 11:02:17', 'Successful'),
(395, 'Table 1', '34.00', 'WEP-90NZG3', '2022-01-19 11:07:37', 'Successful'),
(396, '546', '250.00', 'WEP-CFX70X', '2022-01-21 14:22:31', 'Successful'),
(397, 'Maheosy Haque', '200.00', 'WEP-5Y0NCY', '2022-01-21 14:23:47', 'Successful'),
(398, 'werwre', '220.00', 'WEP-NRDG4R', '2022-01-21 14:38:52', 'Successful'),
(399, 'Table 4', '665.00', 'ROBO-CAFE-POAHBP', '2022-01-24 05:41:19', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eipay_new`
--

CREATE TABLE `tbl_eipay_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `tran_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Margherita Pizza', 'Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil.', '200.00', 'Food-Name-7632.jpg', 16, 'Yes', 'Yes'),
(5, 'Pepperoni Pizza', 'Pepperoni is an American variety of spicy salami made from cured pork and beef seasoned with paprika or other chili pepper.', '220.00', 'Food-Name-3285.jpg', 16, 'Yes', 'Yes'),
(6, 'Vegetarian Pizza', 'This vegetarian pizza recipe will delight vegetarians and carnivores alike. It’s fresh and full of flavor.', '180.00', 'Food-Name-6096.jpg', 16, 'Yes', 'Yes'),
(7, 'Mexican Pizza', 'Mexican Pizza is filled with seasoned ground beef, refried beans, melty cheese and enchilada sauce stuffed between two flour tortillas.', '250.00', 'Food-Name-9277.jpg', 16, 'Yes', 'Yes'),
(8, 'Beef Burger', 'Beef burger                                                                                                \r\n\r\n', '150.00', 'Food-Name-5467.jpg', 17, 'Yes', 'Yes'),
(9, 'Buffalo Wings', 'Buffalo wing, also called hot wing, chicken wing, or wing, deep-fried unbreaded chicken wings or drumsticks coated with a vinegar-and-cayenne-pepper hot sauce mixed with butter.', '250.00', 'Food-Name-5223.jpg', 19, 'Yes', 'Yes'),
(10, 'Regular French Fries', 'Regular french fries. ', '100.00', 'Food-Name-2780.jpg', 18, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(150) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `transaction_id`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Pepperoni Pizza', '220.00', '2022-01-16 06:47:44', 'Ordered', 'my full name', 'country name', 'me@mydomain.com', ''),
(2, 'Pepperoni Pizza', '220.00', '2022-01-16 06:50:46', 'Delivered', 'my full name', 'country name', 'me@mydomain.com', ''),
(3, 'Beef Burger', '150.00', '2022-01-16 08:09:49', 'Cancelled', 'my full name', 'country name', 'me@mydomain.com', ''),
(4, 'Mexican Pizza', '750.00', '2022-01-16 08:10:16', 'Ordered', 'my full name', 'country name', 'me@mydomain.com', ''),
(5, 'Buffalo Wings', '250.00', '2022-01-16 08:35:55', 'On Delivery', 'Maheosy Haque', '01717731002', 'me@mydomain.com', ''),
(6, 'Pepperoni Pizza', '220.00', '2022-01-17 07:10:28', 'Ordered', 'my full name', 'country name', 'me@mydomain.com', ''),
(7, 'Buffalo Wings', '250.00', '2022-01-17 07:11:00', 'Ordered', 'my full name', 'country name', 'me@mydomain.com', ''),
(8, 'Mexican Pizza', '250.00', '2022-01-17 07:11:56', 'Ordered', 'my full name', 'country name', 'me@mydomain.com', ''),
(9, '', '200.00', '2022-01-21 21:29:42', 'Successful', 'Maheosy Haque', '01717731002', 'maheosy.sristy@gmail.com', ''),
(10, '', '220.00', '2022-01-21 21:31:46', 'Successful', 'Maheosy Haque', '01717731002', 'me@mydomain.com', ''),
(11, '', '250.00', '2022-01-21 21:32:43', 'Successful', 'Maheosy Haque', '01717731002', 'maheosy.sristy@gmail.com', ''),
(12, 'HF141T', '220.00', '2022-01-21 21:38:46', 'Successful', 'Forest Gump', '01717731002', 'forest@gmail.com', ''),
(13, 'IVVOP1', '250.00', '2022-01-21 21:40:30', 'Successful', 'Maheosy Haque', '9', 'me@mydomain.com', ''),
(14, 'ROBO-CAFEMP5J31', '250.00', '2022-01-21 21:42:27', 'Successful', 'Maheosy Haque', '23', 'maheosy.sristy@gmail.com', ''),
(15, 'ROBO-CAFE-K0WPJ8', '150.00', '2022-01-21 21:49:59', 'Successful', 'Maheosy Haque', '2', 'maheosy.sristy@gmail.com', ''),
(16, 'ROBO-CAFE-7XS507', '680.00', '2022-01-21 23:18:36', 'Successful', 'Maheosy Haque', '01717732432', 'maheosy.sristy@gmail.com', ''),
(17, 'ROBO-CAFE-0GI4JT', '180.00', '2022-01-21 23:21:39', 'Successful', 'Maheosy Haque', '45345345', 'maheosy.sristy@gmail.com', ''),
(18, '', '0.00', '2022-01-22 02:05:57', '', '', '', '', ''),
(19, '', '0.00', '2022-01-22 02:14:44', '', '', '', '', ''),
(20, '', '0.00', '2022-01-22 02:15:44', '', '', '', '', ''),
(21, '', '0.00', '2022-01-22 02:17:10', '', '', '', '', 'Array'),
(22, 'Array', '0.00', '2022-01-22 02:18:24', '', '', '', '', 'cus_add1'),
(23, 'Array', '0.00', '2022-01-22 02:22:21', '', '', '', '', ''),
(24, 'Array', '0.00', '2022-01-22 02:23:30', '', '', '', '', ''),
(25, 'ROBO-CAFE-MML336', '250.00', '2022-01-22 02:27:11', '', 'my full name', '34534', 'me@mydomain.com', '01'),
(26, 'ROBO-CAFE-MML336', '250.00', '2022-01-22 02:28:40', '', 'my full name', '34534', 'me@mydomain.com', '01'),
(27, 'ROBO-CAFE-A1DFRQ', '250.00', '2022-01-22 02:29:22', '', 'my full name', '45', 'me@mydomain.com', '01'),
(28, 'ROBO-CAFE-S4B37V', '250.00', '2022-01-22 02:30:25', '', 'my full name', '45', 'me@mydomain.com', '01'),
(29, 'ROBO-CAFE-F7Y4XU', '250.00', '2022-01-22 02:31:15', '', 'my full name', '56', 'me@mydomain.com', '01'),
(30, 'ROBO-CAFE-F7Y4XU', '250.00', '2022-01-22 02:32:19', '', 'my full name', '56', 'me@mydomain.com', '01'),
(31, 'ROBO-CAFE-PQZ46L', '250.00', '2022-01-22 02:32:26', '', 'my full name', '4', 'me@mydomain.com', '01'),
(32, 'ROBO-CAFE-9F5EG7', '250.00', '2022-01-22 02:57:56', '', 'my full name', '345', 'me@mydomain.com', '01'),
(33, 'ROBO-CAFE-9F5EG7', '250.00', '2022-01-22 02:57:59', '', 'my full name', '345', 'me@mydomain.com', '01'),
(34, 'ROBO-CAFE-3N4U4N', '250.00', '2022-01-22 02:58:04', '', 'my full name', '234', 'me@mydomain.com', '01'),
(35, 'ROBO-CAFE-3N4U4N', '250.00', '2022-01-22 02:58:52', '', 'my full name', '234', 'me@mydomain.com', '01'),
(36, 'ROBO-CAFE-51G6DI', '100.00', '2022-01-22 05:52:14', '', 'Mohammad Wasikuzzaman', '01717731002', 'wasik@gmail.com', 'Banani, Dhaka'),
(37, 'ROBO-CAFE-CJAJIH', '250.00', '2022-01-22 05:54:56', '', 'my full name', '4', 'me@mydomain.com', '01'),
(38, 'ROBO-CAFE-MH9P87', '150.00', '2022-01-22 17:56:12', 'Successful', 'my full name', '8', 'me@mydomain.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aamarpay`
--
ALTER TABLE `aamarpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_eipay`
--
ALTER TABLE `tbl_eipay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_eipay_new`
--
ALTER TABLE `tbl_eipay_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
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
-- AUTO_INCREMENT for table `aamarpay`
--
ALTER TABLE `aamarpay`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_eipay`
--
ALTER TABLE `tbl_eipay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `tbl_eipay_new`
--
ALTER TABLE `tbl_eipay_new`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
