-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 05:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 17, 'shafin', 'asd@gmail.com', '46546123', 'fgdfgdfg'),
(15, 19, 'towhid', 'kmtowhidulislam@gmail.com', '01730266478', 'hi, I want to buy a flower');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 17, 'asdasdaseaweaklsdflasdkf;lsdjfsdf', '56456165', 'paul@gmail.com', 'cash on delivery', 'flat no. a5, 10, dhaka, bd - 1000', ', pink rose (1) , cottage rose (1) , lavendor rose (1) ', 40, '20-Apr-2022', 'completed'),
(21, 19, 'paul', '12121313', 'paul@gmail.com', 'bkash', 'flat no. asdasdasd, sadasd, fgdfgdfg, fghfghfgh - 12346', ', pink rose (1) ', 150, '21-Apr-2022', 'completed'),
(22, 19, 'Towhid', '01730266478', 'kmtowhidulislam@gmail.com', 'cash on delivery', 'flat no. a8, bashundhara, dhaka, bangladesh - 1200', ', lavendor rose (1) , red tulipa (1) ', 200, '21-Apr-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'pink rose', 'Grace, happiness and gentleness are the meanings for these delicate blooms. If you know someone who represents these qualities — such as a motherly-figure in your life.', 150, 'pink roses.jpg'),
(15, 'cottage rose', 'Cottage Rose\' is a repeat flowering, old fashion shrub rose. It is an upright, spreading shrub with green, glossy foliage. From mid-summer until early autumn it bears fragrant.', 200, 'cottage rose.jpg'),
(16, 'lavendor rose', 'Lavender rose is easy to grow and prefers dry ground. It brings a colored and perfumed note to any space in nature. Its flower can also be consumed. ', 120, 'lavendor rose.jpg'),
(17, 'yellow tulipa', 'Tulips typically bear cup-shaped flowers in almost every shade but true blue. They can be double or single, fringed or twisted, perfumed or nonscented.\r\n', 90, 'yellow tulipa.jpg'),
(18, 'red tulipa', 'Their deep red hues evoke feelings of passion, love, and lust – making them an especially popular choice for new, younger couples. They can also mean “believe me,”.', 80, 'red tulipa.jpg'),
(19, 'pink bouquet', 'Pink Bouquet by Moschino is a Floral Fruity fragrance for women. Pink Bouquet was launched in 2012. The nose behind this fragrance is Olivier Pescheux. ', 250, 'pink bouquet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(16, 'Excali', 'excali@gmail.com', 'bd2f26bb46be0139db18e5fb62a9d68b', 'admin'),
(17, 'shafin', 'excaliburfsh@gmail.com', '3aa221a649ee69e58cf52b85a4e56dac', 'user'),
(18, 'towsif', 'towsif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(19, 'paul', 'paul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(20, 'jahin', 'jahin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
