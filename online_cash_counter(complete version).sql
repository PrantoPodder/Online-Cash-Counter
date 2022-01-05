-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 04:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_cash_counter`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_selling_price` varchar(50) NOT NULL,
  `product_cost_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `quantity` int(111) NOT NULL,
  `cost_total_price` varchar(255) NOT NULL,
  `selling_total_price` varchar(255) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `amount_cost` varchar(100) NOT NULL,
  `order_date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `amount_cost`, `order_date_time`) VALUES
(1, 'Yeamin Rabbi', '01768002727', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'cash', 'Chocolates(5), Samsung Galaxy 10(6), Cookie (3)', '122000', '73200', '2021-05-18 19:44:22'),
(2, 'Jaria Tanha', '01950845204', 'Bashundhara, Block #c', 'cash', 'Chocolates(5), Cookie (13), Samsung Galaxy 10(5)', '104500', '62700', '2021-05-18 19:46:38'),
(3, 'Yeamin Rabbi', '01768002727', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'cash', 'Cookie (10)', '2500', '1500', '2021-05-18 19:47:30'),
(4, 'Jaria Tanha', '01950845204', 'Bashundhara, Block #c', 'cash', 'Cookie (1)', '250', '150', '2021-05-18 19:47:55'),
(6, 'Jaria Tanha', '01950845204', 'Bashundhara, Block #c', 'cash', 'Cookie (3)', '750', '450', '2021-05-18 19:48:51'),
(7, 'Yeamin Rabbi', '01768002727', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'cash', 'Cookie (1500)', '375000', '225000', '2021-05-18 19:51:11'),
(8, 'Pranto', '01950845204', 'Bashundhara, Block #c', 'cash', 'Tea(2), Samsung Galaxy 10(1)', '20300', '12240', '2021-05-18 20:25:12'),
(9, 'Jaria Tanha', '01950845204', 'Bashundhara, Block #c', 'cash', 'Samsung Galaxy 10(1)', '20000', '12000', '2021-05-18 20:26:47'),
(10, 'Yeamin Rabbi', '01768002727', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'cash', 'Samsung Galaxy 10(3)', '60000', '36000', '2021-05-18 20:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cost_price` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `unit_type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cost_price`, `selling_price`, `quantity`, `company_name`, `company_address`, `company_email`, `unit_type`, `created_at`, `product_image`) VALUES
(13, 'Chocolates', '150', '250', '10', 'TOTO Company', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-120', 'yeaminrabbi@gmail.com', 'per_piece', '2021-05-05 18:19:24', 'product_images/download (7).jpg'),
(15, 'Cookie ', '150', '250', '13', 'TOTO Company', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'yeaminrabbi@gmail.com', 'per_piece', '2021-05-05 18:19:01', 'product_images/download (1).jpg'),
(17, 'Samsung Galaxy 10', '12000', '20000', '20', 'TOTO Company', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'yeaminrabbi@gmail.com', 'per_piece', '2021-05-11 21:06:58', 'product_images/3454384eee5e9e79cc4aacfef58fe0d73a6fcdec.jpeg'),
(18, 'Tea', '120', '150', '13', 'TOTO Company', 'U/36, Nurjahan Road, Mohammadpur, Dhaka-1207', 'yeaminrabbi@gmail.com', 'per_unit', '2021-05-18 20:23:51', 'product_images/download_tae.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
