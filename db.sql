-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 14, 2021 at 08:43 AM
-- Server version: 5.7.32
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `artstailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `password`) VALUES
(1, 'Sudhanshu', 'abc@gmail.com', 'd47f18dc7780fe47c24759714e2cd58f');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `payment_id` int(11) NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `product_bought` varchar(255) NOT NULL,
  `credit_card_number` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `comments` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`payment_id`, `buyer_name`, `product_bought`, `credit_card_number`, `cvv`, `comments`) VALUES
(2, 'Sudhanshu', 'Mens Shirt', '1234123412341234', '123', 'first'),
(3, '$buyer_name', '$product', '$credit_no', '$cvv', '$comments'),
(4, '$buyer_name', '$product', '$credit_no', '$cvv', '$comments'),
(5, 'qweerty', 'Mens Shirt', '1234123412341234', '123', 'asd'),
(6, 'qweerty', 'Mens Shirt', '1234123412341234', '123', 'asd'),
(7, 'qweerty', 'Mens Shirt', '1234123412341234', '123', 'asd'),
(8, 'qweerty', 'Mens Shirt', '1234123412341234', '123', 'asd'),
(9, '%', 'Mens Shirt', '1234 1234 1234 1234', '123', 'asd'),
(10, '\"', 'Mens Shirt', '1234 1234 1234 1234', '123', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `customer_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cost`, `customer_cost`) VALUES
(1, 'Mens Dress Shirts', '50', 0),
(2, 'Womens dresses', '60', 0),
(3, 'skirt', '10', 30),
(4, 'shorts', '12', 32),
(9, 'Yellow dress', '10', 20),
(10, 'Levis Jeans', '30', 40),
(11, 'KEY001-asgbnd45am,auiKT5:,hTW', '20', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
