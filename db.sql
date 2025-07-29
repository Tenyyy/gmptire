-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 08:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientorder`
--

CREATE TABLE `clientorder` (
  `OrderID` int(10) NOT NULL,
  `clientorderId` int(11) NOT NULL,
  `ClientOrderNo` int(10) NOT NULL,
  `ClientName` varchar(20) NOT NULL,
  `OrderItem` int(11) NOT NULL,
  `ItemQty` int(10) NOT NULL,
  `ItemPrice` float NOT NULL,
  `orderStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientName` varchar(30) NOT NULL,
  `ClientPlate` varchar(50) NOT NULL,
  `ClientDesc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientName`, `ClientPlate`, `ClientDesc`) VALUES
('john lemon', 'sk 231', 'rim'),
('พกร ไอติม', 'กช 1435', 'ปะยาง'),
('Michael Lee', 'ABC 1234', 'Tire rotation'),
('Sarah Johnson', 'XYZ 5678', 'Flat tire repair'),
('David Williams', 'LMN 4567', 'Wheel balancing'),
('Jennifer Garcia', 'PQR 7890', 'Tire replacement'),
('Alex Turner', 'DEF 2345', 'Tire inspection'),
('185/60/15 ', '1กณ 288', 'Maxis P5 4 เส้น 8000 บาท'),
('123/24/74', '1กณ 288', '2 เส้น');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProdId` int(10) NOT NULL,
  `ProdSize` varchar(50) NOT NULL,
  `ProdBrandName` varchar(50) NOT NULL,
  `ProdYear` year(4) NOT NULL,
  `ProdQuan` int(10) NOT NULL,
  `ProdDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProdId`, `ProdSize`, `ProdBrandName`, `ProdYear`, `ProdQuan`, `ProdDate`) VALUES
(4, '165/75/58', 'firestone ek8', '2021', 2, '2024-01-15'),
(5, '175/95/18', 'michellin rk23', '2023', 3, '2023-12-06'),
(6, '225/70/17', 'yokohama advan sport v105', '2022', 4, '2024-01-12'),
(7, '205/60/16', 'yokohama avid ascend gt', '2022', 2, '2024-01-12'),
(8, '245/45/18', 'yokohama iceguard ig53', '2022', 3, '2024-01-12'),
(9, '195/65/16', 'firestone champion fuel fighter XE', '2023', 4, '2024-01-12'),
(10, '265/70/17', 'firestone destination le2', '2022', 2, '2024-01-12'),
(11, '225/55/17', 'pirelli p-zero', '2022', 4, '2024-01-12'),
(12, '275/40/20', 'pirelli scorpion verde', '2022', 3, '2024-01-12'),
(13, '215/60/16', 'michelin defender t+h', '2022', 6, '2024-01-12'),
(14, '285/45/22', 'michelin pilot sport 4s', '2022', 2, '2024-01-12'),
(15, '195/60/15', 'bridgestone ecopia ep422 plus', '2022', 3, '2024-01-12'),
(16, '255/50/19', 'bridgestone blizzak dm-v2', '2022', 4, '2024-01-12'),
(17, '205/55/16', 'goodyear assurance all-season', '2022', 5, '2024-01-12'),
(18, '275/60/20', 'goodyear wrangler duratrac', '2022', 2, '2024-01-12'),
(19, '225/50/17', 'continental extremecontact dws06', '2022', 4, '2024-01-12'),
(20, '265/35/20', 'continental terraincontact a/t', '2022', 3, '2024-01-12'),
(21, '215/65/16', 'hankook kinergy gt', '2022', 6, '2024-01-12'),
(22, '285/30/22', 'hankook ventus s1 evo3', '2022', 2, '2024-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `PoID` int(10) NOT NULL,
  `PurchaseorderId` int(20) NOT NULL,
  `PurchaseorderNo` int(20) NOT NULL,
  `SupplierName` varchar(50) NOT NULL,
  `Orders` int(50) NOT NULL,
  `OrderQty` int(10) NOT NULL,
  `OrderPrice` float NOT NULL,
  `OrderStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupId` int(11) NOT NULL,
  `SupName` varchar(50) NOT NULL,
  `SupAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UserPassword`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientorder`
--
ALTER TABLE `clientorder`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProdId`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`PoID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientorder`
--
ALTER TABLE `clientorder`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9708;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProdId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `PoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
