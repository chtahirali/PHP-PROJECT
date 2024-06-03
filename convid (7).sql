-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 10:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `convid`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `app_id` int(11) NOT NULL,
  `pat_email` varchar(250) NOT NULL,
  `app_date` date NOT NULL,
  `app_status` varchar(250) NOT NULL DEFAULT 'pending',
  `pat_num` varchar(50) DEFAULT NULL,
  `app_type` varchar(50) DEFAULT NULL,
  `vac_type` varchar(50) DEFAULT NULL,
  `app_time` varchar(50) DEFAULT NULL,
  `result_status` varchar(50) DEFAULT 'pending',
  `hos_id` int(11) DEFAULT NULL,
  `pat_name` varchar(250) DEFAULT NULL,
  `pat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`app_id`, `pat_email`, `app_date`, `app_status`, `pat_num`, `app_type`, `vac_type`, `app_time`, `result_status`, `hos_id`, `pat_name`, `pat_id`) VALUES
(10, 'hammad@gmail.com', '2024-02-07', 'approved', '23435455', 'vaccination', 'MRNA Vaccine', '3:00 PM', 'vaccinated', 51, 'Hammad', 48),
(11, 'hammad@gmail.com', '2024-02-09', 'approved', '23435455', 'test', NULL, '4:00 PM', 'pending', 37, 'Hammad', 48),
(12, 'hammad@gmail.com', '2024-02-10', 'rejected', '23435455', 'vaccination', 'Vector Vaccine', '4:00 PM', 'pending', 47, 'Hammad', 48),
(13, 'ali@aptechkarachi.edu.pk', '2024-02-07', 'approved', '321212', 'vaccination', 'MRNA Vaccine', '4:00 PM', 'non-vaccinated', 51, 'Ali', 42),
(14, 'hammad@gmail.com', '2024-02-12', 'approved', '23435455', 'test', NULL, '4:00 PM', 'positive', 51, 'Hammad', 48),
(15, 'hammad@gmail.com', '2024-02-13', 'approved', '23435455', 'test', NULL, '3:00 PM', 'negative', 51, 'Hammad', 48),
(16, 'hammad@gmail.com', '2024-02-13', 'pending', '23435455', 'test', NULL, '3:00 PM', 'positive', 51, 'Hammad', 48);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `vaccine` varchar(250) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `number`, `address`, `vaccine`, `userID`) VALUES
(4, 'burhani', '321251231', 'karachi Pakistan', 'MRNA Vaccine,Protien Sub-Unit Vaccine', 37),
(5, 'rajpoot', '521455', 'karachi Pakistan', 'MRNA Vaccine,Protien Sub-Unit Vaccine', 38),
(11, 'saifee', '54654545', 'karachi,Pakistan', 'MRNA Vaccine,Protien Sub-Unit Vaccine', 47),
(14, 'Zia Uddin', '5454565', 'karachi,Pakistan', 'MRNA Vaccine,Vector Vaccine', 51);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `id_address` varchar(250) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `id_number`, `id_address`, `blood`, `gender`, `age`, `userId`) VALUES
(9, 'ali', '321212', 'Hyder Buksh Gabol Road, Safoora Chowrangi, Karachi, Pakistan.', 'O+', 'male', 23, 42),
(10, 'Hammad', '23435455', 'karachi,Pakistan', 'O+', 'male', 23, 48);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_role` varchar(250) DEFAULT NULL,
  `user_img` varchar(250) DEFAULT 'avatar.webp',
  `user_status` varchar(250) DEFAULT 'pending',
  `user_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_img`, `user_status`, `user_date`) VALUES
(5, 'Faizan', 'faizan@gmail.com', '123', 'admin', 'user.jpg', 'approved', NULL),
(17, 'faraz', 'faraz@gmail.com', '123', 'patient', 'avatar.webp', 'approved', NULL),
(37, 'burhani', 'bur@gmail.com', '123', 'hospital', 'paypal.png', 'approved', '2024-02-02'),
(38, 'rajpoot', 'raj@gmail.com', '123', 'hospital', 'paypal.png', 'pending', '2024-02-02'),
(40, 'faizan', 'faizan123@gmail.com', '123', 'patient', '06.jpg', 'approved', '2024-02-03'),
(42, 'ali', 'ali@aptechkarachi.edu.pk', '123', 'patient', '04.jpg', 'approved', '2024-02-03'),
(46, 'burhani', 'burhani@gmail.com', '123', 'hospital', '02.jpg', 'approved', '2024-02-04'),
(47, 'saifee', 'saifee@gmail.com', '123', 'hospital', '01.jpg', 'approved', '2024-02-04'),
(48, 'Hammad', 'hammad@gmail.com', '123', 'patient', '02.jpg', 'approved', '2024-02-05'),
(51, 'Zia Uddin', 'zia@gmail.com', '123', 'hospital', '06.jpg', 'approved', '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `vac`
--

CREATE TABLE `vac` (
  `vac1_id` int(11) NOT NULL,
  `hos1_name` varchar(50) NOT NULL,
  `vac1_name` varchar(100) NOT NULL,
  `hos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vac`
--

INSERT INTO `vac` (`vac1_id`, `hos1_name`, `vac1_name`, `hos_id`) VALUES
(4, 'Zia Uddin', 'Vector Vaccine', 51),
(5, 'Zia Uddin', 'MRNA Vaccine', 51);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `vac_id` int(11) NOT NULL,
  `hos_name` varchar(250) NOT NULL,
  `MRNA` int(11) NOT NULL,
  `vector` int(11) NOT NULL,
  `protien` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`vac_id`, `hos_name`, `MRNA`, `vector`, `protien`, `userid`) VALUES
(4, 'burhani', 12, 23, 0, 46),
(5, 'saifee', 12, 0, 23, 47),
(8, 'Zia Uddin', 2, 4, 0, 51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `hos_id` (`hos_id`),
  ADD KEY `pat_id` (`pat_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vac`
--
ALTER TABLE `vac`
  ADD PRIMARY KEY (`vac1_id`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`vac_id`),
  ADD KEY `user_id` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `vac`
--
ALTER TABLE `vac`
  MODIFY `vac1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `vac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`pat_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD CONSTRAINT `hospitals_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `vac`
--
ALTER TABLE `vac`
  ADD CONSTRAINT `vac_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
