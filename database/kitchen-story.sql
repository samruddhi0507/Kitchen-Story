-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 14, 2021 at 11:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitchen-story`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `unit_price`, `image_url`, `date_created`, `last_updated`, `category_id`) VALUES
(1, 'Apple', 'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus', '20', 'https://cdn.picpng.com/apple/apple-view-25231.png', '2021-07-13 08:26:21.000000', '2021-07-13 11:32:47.000000', 1),
(2, 'Orange', 'The vitamin C in oranges helps your body in lots of ways:\r\nProtects your cells from damage.\r\nHelps your body make collagen, a protein that heals wounds and gives you smoother skin.', '24', 'https://cdn.pixabay.com/photo/2016/02/23/17/42/orange-1218158_960_720.png', '2021-07-23 11:33:01.000000', '2021-07-12 11:32:52.000000', 1),
(3, 'Pears', 'Pears are fruits produced and consumed around the world, growing on a tree and harvested in late Summer into October. The pear tree and shrub are a species of genus Pyrus, ', '11', 'https://toppng.com/uploads/preview/pear-fruits-11528330750x9tey9x2an.png', '2021-07-22 11:13:25.000000', '2021-07-05 11:32:56.000000', 1),
(4, 'onion', 'onion nice', '14', 'https://toppng.com/uploads/preview/brown-onion-115283502637y3hhhogtu.png', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 3),
(5, 'potato', 'potato', '53', 'https://toppng.com/uploads/preview/otato-free-download-png-potato-11563264419umm60g6okx.png', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 3),
(7, 'Rice', 'Rice', '34', 'https://toppng.com/uploads/preview/white-basmati-jasmine-transprent-cooked-rice-11563246781w8drsgmryp.png', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 4),
(8, 'wheat', 'wheat', '35', 'http://masalakada.com/uploads/products/162220605311.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 4),
(9, 'fish ', 'fish ', '56', 'https://purepng.com/public/uploads/large/91508177304fwtqbi6ctvq3s7govin9kdhbopkgx6pm2tw9buwrhpiqjgygotyhs5dblx1tu7hnlc4ybfyrbkoebudhrtkjjfco08gx1ebrpncy.png', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 5),
(10, 'milk ', 'milk ', '24', 'https://clipart-best.com/img/milk/milk-clip-art-31.png', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 6),
(11, 'Yogurt', 'Yogurt also spelled yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk. The bacteria used to make yogurt are known as yogurt culturesز', '24', 'https://e7.pngegg.com/pngimages/139/319/png-clipart-yogurt-yogurt.png', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`) VALUES
(1, 'Fruits'),
(3, 'Vegetables'),
(4, 'Grains'),
(5, 'Protein'),
(6, 'Dairy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(50) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `email`) VALUES
(1, 'admin', 'admin', 1, 'admin@admin.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category-id` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `category-id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
