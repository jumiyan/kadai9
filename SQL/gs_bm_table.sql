-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 02:01 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `date`) VALUES
(1, 'NO RULES', 'https://www.amazon.co.jp/NO-RULES-%E3%83%8E%E3%83%BC%E3%83%BB%E3%83%AB%E3%83%BC%E3%83%AB%E3%82%BA-%E4%B8%96%E7%95%8C%E4%B8%80%E3%80%8C%E8%87%AA%E7%94%B1%E3%80%8D%E3%81%AA%E4%BC%9A%E7%A4%BE%E3%80%81NETFLIX-%E3%83%AA%E3%83%BC%E3%83%89%E3%83%BB%E3%83%98%E3%82%A4%E3%82%B9%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0%E3%82%B9/dp/4532323673', 'This is my bible!', '2022-06-01 22:16:16'),
(3, '生命科学クライシス', 'https://www.amazon.co.jp/dp/B07TTFWWRJ/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1', '後で読む', '2022-06-09 21:46:06'),
(4, '独習PHP 第4版', 'https://www.amazon.co.jp/%E7%8B%AC%E7%BF%92PHP-%E7%AC%AC4%E7%89%88-%E5%B1%B1%E7%94%B0%E7%A5%A5%E5%AF%9B-ebook/dp/B09372PSG7/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=3CH9P1SNC7ACN&keywords=%E7%8B%AC%E7%BF%92php&qid=1654778828&s=digital-text&sprefix=%E7%8B%AC%E7%BF%92php%2Cdigital-text%2C233&sr=1-1', '買ってみた', '2022-06-09 21:47:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
