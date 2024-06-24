-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 02:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hilits`
--

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL,
  `prestasi` varchar(50) DEFAULT NULL,
  `kontak` varchar(50) NOT NULL,
  `review` varchar(250) DEFAULT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `judul`, `deskripsi`, `kata_kunci`, `prestasi`, `kontak`, `review`, `berkas`, `user_id`) VALUES
(1, 'Blockchain for Supply Chain', 'Propose using blockchain to enhance transparency and security in supply chains.', 'blockchain, supply chain, transparency', 'Finalist in Blockchain Innovation Awards', 'alice.wong@example.com', 'Interesting idea, needs feasibility study.', 'idea1.pdf', 4),
(2, 'AI-Powered Customer Service Chatbot', 'Develop an AI chatbot to handle customer queries and improve response times.', 'AI, chatbot, customer service', 'Winner of AI Innovation Challenge', 'bob.chen@example.com', 'Great potential, needs technical validation.', NULL, 5),
(3, 'Global Market Entry Framework', 'Create a framework to help businesses strategize international market entry.', 'market strategy, global expansion', NULL, 'eva.li@example.com', NULL, 'idea3.docx', 6);

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL,
  `perusahaan` varchar(50) DEFAULT NULL,
  `kontak` varchar(50) NOT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `judul`, `deskripsi`, `kata_kunci`, `perusahaan`, `kontak`, `berkas`, `user_id`) VALUES
(1, 'Supply Chain Optimization', 'Need to optimize supply chain logistics for faster delivery times.', 'supply chain, logistics, optimization', 'ABC Company', 'john.doe@abccompany.com', 'problem1.pdf', 1),
(2, 'Customer Support Enhancement', 'Improvement needed in customer support responsiveness and quality.', 'customer support, enhancement, service', 'XYZ Inc.', 'jane.smith@xyzinc.com', NULL, 2),
(3, 'Market Expansion Strategy', 'Looking for strategies to enter new international markets.', 'market expansion, international strategy', 'Global Enterprises', 'eric.jones@globent.com', 'problem3.docx', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'john_doe', 'john.doe@example.com', 'hashed_password_here'),
(2, 'jane_smith', 'jane.smith@example.com', 'hashed_password_here'),
(3, 'eric_jones', 'eric.jones@example.com', 'hashed_password_here'),
(4, 'alice_wong', 'alice.wong@example.com', 'hashed_password_here'),
(5, 'bob_chen', 'bob.chen@example.com', 'hashed_password_here'),
(6, 'eva_li', 'eva.li@example.com', 'hashed_password_here'),
(7, 'admin', 'corneliusv35@gmail.com', '$2y$10$cbESVm4j37AYF1f6KcSPg.aa8HoFqIplfi980KeMHcyqAK4khqtf6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
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
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
