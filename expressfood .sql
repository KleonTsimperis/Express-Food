-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2018 at 07:13 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountID` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingAddressID` int(11) NOT NULL,
  `accActive` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountID`, `address`, `postcode`, `phone`, `billingAddressID`, `accActive`) VALUES
(1, 'Via Enrico Fermi 23, Ascoli', '63074', '3216059879', 333, 1),
(2, 'Via Truento 15, Centobuchi', '63076', '3286059226', 444, 1),
(3, 'Via Pasubio 44, San Benedetto Del Tronto', '63089', '3689269850', 555, 1),
(4, 'Via Pasubio 99, San Benedetto Del Tronto', '63089', '3689269859', 559, 1),
(5, 'Via Schermo 33', '99876', '302654987', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `orderID` int(11) NOT NULL,
  `deliveryPersonID` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onTime` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`orderID`, `deliveryPersonID`, `accountID`, `date`, `day`, `orderStatus`, `paymentStatus`, `onTime`) VALUES
(1, 1, 4, '2018-03-01', 'Monday', 'Delivered', 'Paid', 1),
(2, 2, 2, '2018-03-01', 'Monday', 'Delivered', 'Paid', 1),
(3, 3, 3, '2018-03-01', 'Monday', 'Delivered', 'Paid', 1),
(4, 1, 1, '2018-03-02', 'Tuesday', 'Delivered', 'Paid', 1),
(5, 3, 2, '2018-03-02', 'Tuesday', 'Delivered', 'Paid', 1),
(6, 2, 2, '2018-03-02', 'Tuesday', 'Delivered', 'Paid', 0),
(7, 1, 1, '2018-03-03', 'Wednesday', 'Delivered', 'Paid', 1),
(8, 2, 4, '2018-03-03', 'Wednesday', 'Delivered', 'Paid', 1),
(9, 3, 3, '2018-03-03', 'Wednesday', 'Delivered', 'Paid', 1),
(10, 1, 2, '2018-03-04', 'Thursday', 'Delivered', 'Paid', 1),
(11, 3, 2, '2018-03-04', 'Thursday', 'Delivered', 'Paid', 0),
(12, 3, 3, '2018-03-04', 'Thursday', 'Delivered', 'Paid', 0),
(13, 2, 2, '2018-03-05', 'Friday', 'Delivered', 'Paid', 1),
(14, 2, 1, '2018-03-05', 'Friday', 'Delivered', 'Paid', 0),
(15, 1, 3, '2018-03-05', 'Friday', 'Delivered', 'Paid', 1),
(16, 1, 2, '2018-03-06', 'Saturday', 'Delivered', 'Paid', 1),
(17, 2, 1, '2018-03-06', 'Saturday', 'Delivered', 'Paid', 1),
(18, 2, 3, '2018-03-06', 'Saturday', 'Delivered', 'Paid', 1),
(19, 3, 2, '2018-03-07', 'Sunday', 'Processing', 'PendingPayment', 0),
(20, 1, 4, '2018-03-07', 'Sunday', 'Dispatched', 'Paid', 1),
(21, 3, 3, '2018-03-07', 'Sunday', 'Dispatched', 'Paid', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deliverystaff`
--

CREATE TABLE `deliverystaff` (
  `deliveryPersonID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `firstName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverystaff`
--

INSERT INTO `deliverystaff` (`deliveryPersonID`, `userID`, `firstName`, `lastName`) VALUES
(1, 5, 'Bruce', 'Wayne'),
(2, 6, 'Clark', 'Kent'),
(3, 7, 'Tony', 'Stark');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `accEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Administrator` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`ID`, `userID`, `accountID`, `accEmail`, `address`, `Administrator`) VALUES
(1, 2, 1, 'pgraves@gmail.com', 'Via Enrico Fermi 23, Ascoli', 1),
(2, 3, 2, 'alext@hotmail.com', 'Via Truento 15, Centobuchi', 1),
(3, 4, 3, 'dferrari@email.com', 'Via Pasubio 44, San Benedetto Del Tronto', 1),
(4, 4, 4, 'company@account.com', 'Via Pasubio 99, San Benedetto Del Tronto', 1),
(5, 2, 4, 'company@account.com', 'Via Pasubio 99, San Benedetto Del Tronto', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `ID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `itemCost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`ID`, `orderID`, `productID`, `quantity`, `itemCost`) VALUES
(1, 1, 2, 12, 144),
(2, 2, 3, 11, 165),
(3, 3, 23, 2, 6),
(4, 4, 28, 3, 18),
(5, 5, 21, 10, 30),
(6, 6, 25, 3, 15),
(7, 7, 12, 3, 60),
(8, 8, 11, 2, 44),
(9, 9, 13, 4, 36),
(10, 10, 16, 2, 18),
(11, 1, 4, 3, 60),
(12, 2, 5, 2, 40),
(13, 3, 8, 2, 36),
(14, 4, 9, 1, 8),
(15, 5, 11, 1, 22),
(16, 6, 12, 1, 20),
(17, 7, 7, 2, 28),
(18, 8, 8, 2, 36),
(19, 9, 9, 3, 24),
(20, 10, 10, 2, 14),
(21, 11, 6, 2, 50),
(22, 11, 1, 2, 20),
(23, 12, 10, 3, 21),
(24, 12, 9, 1, 8),
(25, 13, 10, 2, 14),
(26, 13, 13, 1, 9),
(27, 14, 20, 2, 20),
(28, 14, 14, 2, 12),
(29, 15, 19, 3, 9),
(30, 15, 8, 3, 54),
(31, 16, 12, 2, 40),
(32, 16, 27, 2, 6),
(33, 17, 26, 2, 4),
(34, 17, 25, 2, 10),
(35, 18, 9, 4, 32),
(36, 18, 22, 3, 9),
(37, 19, 19, 2, 6),
(38, 19, 21, 3, 9),
(39, 20, 20, 2, 20),
(40, 20, 23, 3, 9),
(41, 21, 12, 8, 160),
(42, 21, 24, 4, 24);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitPrice` int(4) NOT NULL,
  `unitStock` int(4) NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dishType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `unitPrice`, `unitStock`, `day`, `dishType`) VALUES
(1, 'White Fish', 10, 800, 'Monday', 'main'),
(2, 'Red Fish', 12, 800, 'Monday', 'main'),
(3, 'White Crab', 15, 500, 'Tuesday', 'main'),
(4, 'Red Crab', 20, 400, 'Tuesday', 'main'),
(5, 'White Tuna', 20, 700, 'Wednesday', 'main'),
(6, 'Yellow Tuna', 25, 1000, 'Wednesday', 'main'),
(7, 'Chiken Teryiaki', 14, 250, 'Thursday', 'main'),
(8, 'Jungle Fowl', 18, 450, 'Thursday', 'main'),
(9, 'Roasted Pork', 8, 600, 'Friday', 'main'),
(10, 'Pulled Pork', 7, 500, 'Friday', 'main'),
(11, 'Roast Beef', 22, 700, 'Saturday', 'main'),
(12, 'Fried Beef', 20, 500, 'Saturday', 'main'),
(13, 'Pizza', 9, 350, 'Sunday', 'main'),
(14, 'Noodles', 6, 450, 'Sunday', 'main'),
(15, 'Toffee', 4, 200, 'Monday', 'dessert'),
(16, 'Cheescake', 9, 200, 'Monday', 'dessert'),
(17, 'Tiramisu', 5, 200, 'Tuesday', 'dessert'),
(18, 'Halvah', 4, 300, 'Tuesday', 'dessert'),
(19, 'Danish', 3, 300, 'Wednesday', 'dessert'),
(20, 'Marzipan', 10, 400, 'Wednesday', 'dessert'),
(21, 'Wafer', 3, 300, 'Thursday', 'dessert'),
(22, 'Sweet Roll', 3, 300, 'Thursday', 'dessert'),
(23, 'Jujubes', 3, 100, 'Friday', 'dessert'),
(24, 'Brownie', 6, 400, 'Friday', 'dessert'),
(25, 'Pudding', 5, 300, 'Saturday', 'dessert'),
(26, 'Cotton Candy', 2, 400, 'Saturday', 'dessert'),
(27, 'Donuts', 3, 100, 'Sunday', 'dessert'),
(28, 'Macaroon', 6, 500, 'Sunday', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleDescription` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roleDescription`) VALUES
(1, 'Administrator'),
(2, 'Customer'),
(3, 'deliveryStaff');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `email`, `password`, `firstName`, `lastName`, `created`) VALUES
(1, 'admin@expressfood.com', 'love', 'Peter', 'Parker', '2017-12-12'),
(2, 'pgraves@gmail.com', 'god', 'Pamela', 'Graves', '2018-01-01'),
(3, 'alext@hotmail.com', 'dog', 'Alex', 'Tron', '2018-01-01'),
(4, 'dferrari@email.com', 'cat', 'Domenico', 'Ferrari', '2018-01-01'),
(5, 'brucewayne@batman.com', 'manbat', 'Bruce', 'Wayne', '2017-12-12'),
(6, 'clarkkent@superman.com', 'mansuper', 'Clark', 'Kent', '2017-12-12'),
(7, 'tonystark@ironman.com', 'maniron', 'Tony', 'Stark', '2017-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`ID`, `userID`, `roleID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `accountID` (`accountID`);

--
-- Indexes for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `accountID` (`accountID`),
  ADD KEY `deliveryPersonID` (`deliveryPersonID`);

--
-- Indexes for table `deliverystaff`
--
ALTER TABLE `deliverystaff`
  ADD PRIMARY KEY (`deliveryPersonID`),
  ADD KEY `deliveryPersonID` (`deliveryPersonID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `accountID` (`accountID`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`),
  ADD UNIQUE KEY `roleID` (`roleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customerorder`
--
ALTER TABLE `customerorder`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `deliverystaff`
--
ALTER TABLE `deliverystaff`
  MODIFY `deliveryPersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`),
  ADD CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`deliveryPersonID`) REFERENCES `deliverystaff` (`deliveryPersonID`);

--
-- Constraints for table `deliverystaff`
--
ALTER TABLE `deliverystaff`
  ADD CONSTRAINT `deliverystaff_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_role` (`userID`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `membership_ibfk_2` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `customerorder` (`orderID`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
