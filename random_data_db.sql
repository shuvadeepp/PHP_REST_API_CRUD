-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 08:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `random_data_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_api_crud`
--

CREATE TABLE `db_api_crud` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_api_crud`
--

INSERT INTO `db_api_crud` (`id`, `name`, `phone`, `email`, `country`) VALUES
(1, 'Macaulay Castro', '1-865-158-7392', 'nibh.vulputate@aol.net', 'United States'),
(2, 'Lee Richardson', '(182) 228-3717', 'commodo.ipsum@protonmail.net', 'Netherlands'),
(3, 'Timon Garner', '1-468-514-4556', 'mauris.morbi.non@yahoo.com', 'Austria'),
(4, 'Ruth Mayo', '(697) 833-1112', 'neque.tellus@hotmail.ca', 'Canada'),
(5, 'Brody Pope', '1-544-835-6919', 'morbi.quis@icloud.net', 'Singapore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_api_crud`
--
ALTER TABLE `db_api_crud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_api_crud`
--
ALTER TABLE `db_api_crud`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
