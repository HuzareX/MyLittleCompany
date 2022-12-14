-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Paź 2022, 21:14
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mylittlecompany`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employessinfo`
--

CREATE TABLE `employessinfo` (
  `employeeID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Age` int(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Team` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `employessinfo`
--

INSERT INTO `employessinfo` (`employeeID`, `Name`, `Surname`, `Age`, `City`, `Team`, `PhoneNumber`, `Position`) VALUES
(1, 'Tomasz', 'Kowalski', 26, 'Złotów', 'Manager', '111-111-112', 'Production Manager'),
(2, 'Bartosz', 'Kowalski', 26, 'Piła', 'Red', '111-111-113', 'Line Master'),
(3, 'Bartosz', 'Malarski', 35, 'Piła', 'Red', '111-111-114', 'Packer'),
(4, 'Dariusz', 'Typik', 35, 'Piła', 'Red', '111-111-114', 'Packer'),
(5, 'Maria', 'Typik', 35, 'Piła', 'Red', '111-111-115', 'Packer'),
(6, 'Maria', 'Wrzeszcz', 45, 'Piła', 'Red', '111-111-116', 'Edgebander'),
(7, 'Daniel', 'Węgierski', 26, 'Złotów', 'Blue', '111-111-117', 'Line Master'),
(8, 'Monika', 'Mąciwoda', 34, 'Trzcianka', 'Blue', '111-111-118', 'Packer'),
(9, 'Franek', 'Węsierski', 32, 'Trzcianka', 'Blue', '111-111-119', 'Packer'),
(10, 'Tobiasz', 'Malarz', 64, 'Piła', 'Blue', '111-111-120', 'Packer'),
(11, 'Dawid', 'Kowalski', 32, 'Złotów', 'Blue', '111-111-121', 'Edgebanner'),
(12, 'Magdalena', 'Sobieraj', 26, 'Złotów', 'Blue', '111-111-122', 'Line Master');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ordersinfo`
--

CREATE TABLE `ordersinfo` (
  `OrderID` int(40) NOT NULL,
  `ClientName` varchar(111) NOT NULL,
  `Quantity` int(40) NOT NULL,
  `ValuePLN` int(111) NOT NULL,
  `OrderDate` date NOT NULL,
  `Completed` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ordersinfo`
--

INSERT INTO `ordersinfo` (`OrderID`, `ClientName`, `Quantity`, `ValuePLN`, `OrderDate`, `Completed`) VALUES
(1, 'MarysShop', 200, 500, '2022-08-01', 'Yes'),
(2, 'TomysShop', 300, 750, '2022-08-01', 'Yes'),
(3, 'FranekShop', 100, 250, '2022-08-01', 'Yes'),
(4, 'LIDL', 600, 1500, '2022-08-01', 'Yes'),
(5, 'NETTO', 1000, 2500, '2022-08-01', 'Yes'),
(6, 'TomysShop', 200, 500, '2022-09-01', 'No'),
(7, 'MarysShop', 300, 750, '2022-09-01', 'No'),
(8, 'LIDL', 800, 2000, '2022-09-01', 'No'),
(9, 'NETTO', 500, 1250, '2022-09-01', 'No');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `productivityinfo`
--

CREATE TABLE `productivityinfo` (
  `employeeID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `SpeedPerDay` int(255) NOT NULL,
  `Date` date NOT NULL,
  `Shift` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `productivityinfo`
--

INSERT INTO `productivityinfo` (`employeeID`, `Name`, `Surname`, `SpeedPerDay`, `Date`, `Shift`) VALUES
(3, 'Bartosz', 'Malarski', 123, '2022-01-01', 1),
(3, 'Bartosz', 'Malarski', 125, '2022-01-02', 1),
(3, 'Bartosz', 'Malarski', 128, '2022-01-03', 1),
(3, 'Bartosz', 'Malarski', 135, '2022-01-04', 1),
(3, 'Bartosz', 'Malarski', 140, '2022-01-05', 1),
(4, 'Dariusz', 'Typik', 80, '2022-01-01', 1),
(4, 'Dariusz', 'Typik', 90, '2022-01-02', 1),
(4, 'Dariusz', 'Typik', 90, '2022-01-03', 1),
(4, 'Dariusz', 'Typik', 85, '2022-01-04', 1),
(4, 'Dariusz', 'Typik', 72, '2022-01-05', 1),
(5, 'Maria', 'Typik', 135, '2022-01-01', 1),
(5, 'Maria', 'Typik', 135, '2022-01-02', 1),
(5, 'Maria', 'Typik', 140, '2022-01-03', 1),
(5, 'Maria', 'Typik', 120, '2022-01-04', 1),
(5, 'Maria', 'Typik', 140, '2022-01-05', 1),
(8, 'Monika', 'Mąciwoda', 124, '2022-01-01', 2),
(8, 'Monika', 'Mąciwoda', 125, '2022-01-02', 2),
(8, 'Monika', 'Mąciwoda', 145, '2022-01-03', 2),
(8, 'Monika', 'Mąciwoda', 145, '2022-01-04', 2),
(8, 'Monika', 'Mąciwoda', 150, '2022-01-05', 2),
(9, 'Franek', 'Węsierski', 150, '2022-01-01', 2),
(9, 'Franek', 'Węsierski', 163, '2022-01-02', 2),
(9, 'Franek', 'Węsierski', 170, '2022-01-03', 2),
(9, 'Franek', 'Węsierski', 163, '2022-01-04', 2),
(9, 'Franek', 'Węsierski', 178, '2022-01-05', 2),
(10, 'Tobiasz', 'Malarz', 80, '2022-01-01', 2),
(10, 'Tobiasz', 'Malarz', 82, '2022-01-02', 2),
(10, 'Tobiasz', 'Malarz', 79, '2022-01-03', 2),
(10, 'Tobiasz', 'Malarz', 59, '2022-01-04', 2),
(10, 'Tobiasz', 'Malarz', 62, '2022-01-05', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resources`
--

CREATE TABLE `resources` (
  `PalletID` int(40) NOT NULL,
  `Item` varchar(40) NOT NULL,
  `Quantity` int(40) NOT NULL,
  `UnitOfMeasurement` varchar(40) NOT NULL,
  `TypeOfPallet` varchar(40) NOT NULL,
  `ExpiryDate` date NOT NULL,
  `Location` varchar(40) NOT NULL,
  `PalletWeight` int(40) NOT NULL,
  `PalletHeight` int(40) NOT NULL,
  `DeliveryNumber` int(40) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `resources`
--

INSERT INTO `resources` (`PalletID`, `Item`, `Quantity`, `UnitOfMeasurement`, `TypeOfPallet`, `ExpiryDate`, `Location`, `PalletWeight`, `PalletHeight`, `DeliveryNumber`, `SupplierID`) VALUES
(1, 'Cugar', 1000000, 'g', 'Big bag', '2023-06-30', 'C1', 1000, 150, 1, 1),
(2, 'Cugar', 1000000, 'g', 'Big Bag', '2023-06-30', 'C1', 1000, 150, 1, 1),
(3, 'Cugar', 1000000, 'g', 'Big Bag', '2023-06-30', 'C1', 1000, 150, 1, 1),
(4, 'Cugar', 1000000, 'g', 'Big Bag', '2023-06-30', 'C1', 1000, 150, 1, 1),
(5, 'Cugar', 1000000, 'g', 'Big Bag', '2023-06-30', 'C1', 1000, 150, 1, 1),
(6, 'Cugar', 1000000, 'g', 'Big Bag', '2024-04-28', 'C1', 1000, 150, 1, 1),
(7, 'Cugar', 1000000, 'g', 'Big Bag', '2024-04-28', 'C1', 1000, 150, 1, 1),
(8, 'Cugar', 1000000, 'g', 'Big Bag', '2024-04-28', 'C1', 1000, 150, 1, 1),
(9, 'Cugar', 1000000, 'g', 'Big Bag', '2024-04-28', 'C1', 1000, 150, 1, 1),
(10, 'Cugar', 1000000, 'g', 'Big Bag', '2024-04-28', 'C1', 1000, 150, 1, 1),
(11, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(12, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(13, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(14, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(15, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(16, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(17, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(18, 'Glucouse Syrop', 1000000, 'ml', 'Barrel', '2023-02-28', 'GS1', 1000, 140, 1, 1),
(19, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(20, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(21, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(22, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(23, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(24, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(25, 'Peanuts', 500000, 'g', 'Plastik Box 120x80', '2023-02-28', 'P1', 500, 120, 2, 2),
(26, 'Milk Powder', 800000, 'g', 'Big Bag', '2022-12-31', 'MP1', 800, 150, 3, 3),
(27, 'Milk Powder', 800000, 'g', 'Big Bag', '2022-12-31', 'MP1', 800, 150, 3, 3),
(28, 'Milk Powder', 800000, 'g', 'Big Bag', '2022-12-31', 'MP1', 800, 150, 3, 3),
(29, 'Milk Powder', 800000, 'g', 'Big Bag', '2022-12-31', 'MP1', 800, 150, 3, 3),
(30, 'Milk Powder', 800000, 'g', 'Big Bag', '2022-12-31', 'MP1', 800, 150, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `supplierinfo`
--

CREATE TABLE `supplierinfo` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(111) NOT NULL,
  `ContactName` varchar(111) NOT NULL,
  `City` varchar(111) NOT NULL,
  `Country` varchar(111) NOT NULL,
  `PhoneNumber` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `supplierinfo`
--

INSERT INTO `supplierinfo` (`SupplierID`, `SupplierName`, `ContactName`, `City`, `Country`, `PhoneNumber`) VALUES
(1, 'PatryśPL', 'Patryk Kowalski', 'Poznań', 'Poland', '111-111-111'),
(2, 'Schmilk', 'Stuart Schmidt', 'Berlin', 'Germany', '222-111-111'),
(3, 'PeanutCrazy', 'Johny Peanut', 'London', 'England', '333-111-111');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employessinfo`
--
ALTER TABLE `employessinfo`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indeksy dla tabeli `ordersinfo`
--
ALTER TABLE `ordersinfo`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indeksy dla tabeli `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`PalletID`),
  ADD KEY `ID Pallet` (`PalletID`),
  ADD KEY `ID Pallet_2` (`PalletID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indeksy dla tabeli `supplierinfo`
--
ALTER TABLE `supplierinfo`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `employessinfo`
--
ALTER TABLE `employessinfo`
  MODIFY `employeeID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `ordersinfo`
--
ALTER TABLE `ordersinfo`
  MODIFY `OrderID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `resources`
--
ALTER TABLE `resources`
  MODIFY `PalletID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `supplierinfo`
--
ALTER TABLE `supplierinfo`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplierinfo` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
