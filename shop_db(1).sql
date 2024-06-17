-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 08:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `detail` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `detail`) VALUES
(1, 'ali', 'ØªØ³Øª Ø§Ø±Ø³Ø§Ù„');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `orderdate` date NOT NULL,
  `pro_code` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `mobile` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `address` varchar(400) COLLATE utf8_persian_ci NOT NULL,
  `trackcode` varchar(24) COLLATE utf8_persian_ci NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `orderdate`, `pro_code`, `pro_qty`, `pro_price`, `mobile`, `address`, `trackcode`, `state`) VALUES
(1, 'ali', '2017-08-06', 2, 200, 60000, '09163410272', 'Ø®ÙˆØ²Ø³ØªØ§Ù† Ø¯Ø²ÙÙˆÙ„ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¹Ø§Ø±Ù Ø¯Ø²ÙÙˆÙ„ÛŒ Ø¨ÛŒÙ† Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø´ØªÛŒ Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø­Ø¶Ø±Øª Ø±Ø³ÙˆÙ„ (Øµ) Ù¾Ù„Ø§Ú© 92', '000000000000000000000000', 0),
(2, 'mary', '2024-06-07', 1, 2, 35000, '09131231234', 'l;fkdhgirtuorjgkdmflf;bkb', '000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_code` int(10) NOT NULL,
  `pro_name` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_image` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `pro_detail` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_code`, `pro_name`, `pro_qty`, `pro_price`, `pro_image`, `pro_detail`) VALUES
(1, 'اجاق گاز', 98, 35000, 'images7.jpg', 'این محصول بسیار عالی میباشد'),
(2, 'نارنگی', 2000, 60000, 'orange-tree.jpg', 'این محصول از باغ های شمال \r\n      '),
(3, 'گچ اصفهانی', 182, 80000, 'gaz.jpg', 'محصول نرغوب اصفهان'),
(4, 'پسته', 1800, 550000, 'images12.jpg', 'پسته بسیتر مرغوبی است'),
(5, 'زعفران', 600, 900000, 'index1.jpg', 'زعفران اصل مشهد'),
(6, 'رطب', 1800, 89000, '895412_946.jpg', 'رطب مرغوب خوزستان'),
(7, 'فرش گلباف', 50, 3900000, '2492_629.jpg', 'بافت بسیار نرم و راحت و بادوام'),
(8, 'صندوقچه', 14, 190000, 'khtamkari.jpg', 'جنس گردو');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `realname` varchar(80) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`realname`, `username`, `password`, `email`, `type`) VALUES
('Ù…Ø¯ÛŒØ±ÛŒØª Ø³Ø§ÛŒØª', 'admin', 'admin', 'admin@medu.ir', 1),
('ali mohammadi', 'ali', '123', 'ali@irib.ir', 0),
('maryam', 'mary', '1234', 'm@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
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
  ADD PRIMARY KEY (`pro_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
