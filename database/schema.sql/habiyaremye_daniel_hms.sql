-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 08:41 PM
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
-- Database: `habiyaremye_daniel_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `bank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `email`, `password`, `phone_number`, `role`, `bank_id`) VALUES
(1, 'huye', 'habiyaremyedaniel@gmail.com', '1234', '0791291384', 'manager', 20),
(7, 'peter', 'peter@gmail.com', 'password124', '+250783940473', 'Admin', 2),
(9, 'PRINCE', 'prince@gmail.com', 'password123', '+250783240473', 'Admin', 1),
(10, 'PRINCE', 'prince@gmail.com', 'password123', '+250783240473', 'Admin', 1),
(11, 'PRINCILLE', 'princille@gmail.com', 'password125', '+250783640403', 'Admin', 3),
(12, 'PRINCILLE', 'princille@gmail.com', 'password125', '+250783640403', 'Admin', 3),
(13, 'habiyaremye daniel ', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'admin super', 2),
(14, 'umwizerwa marie solange', 'umwizerwa@gmail.com', '1234', '0725050334', 'super manager', 1),
(17, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0737317171', 'sinior manager', 1),
(18, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0737317171', 'sinior manager', 1),
(19, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0729554144', 'MANAGER', 1),
(21, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 1),
(22, 'mahirwe aime christia', 'chris@gmail.com', '12345', '0725050277', 'sinior manager', 2),
(23, 'mahirwe aime christia', 'chris@gmail.com', '12345', '0725050277', 'sinior manager', 2),
(26, 'mahirwe aime christia', 'chris@gmail.com', '12345', '0725050277', 'sinior manager', 3),
(27, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '12345', '0725050277', 'sinior manager', 2),
(28, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0737317171', 'sinior manager', 2),
(29, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'admin super', 2),
(30, 'nsengimana eric', 'eric@gmail.com', '1234', '0725050277', 'admin super', 2),
(31, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0737317171', 'sinior manager', 3),
(32, 'niyori', 'niyori@gmail.com', '1234', '0725050277', 'admin super', 3),
(33, 'tovu', 'tov@gmail.com', '1234', '0725050277', 'admin super', 2),
(34, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'admin super', 1),
(36, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'admin super', 2),
(37, 'tovu', 'tov@gmail.com', '1234', '0737317171', 'sinior manager', 2),
(38, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 2),
(39, 'habibi', 'habibi@gmail.com', '1234', '0725050277', 'super admin', 2),
(40, 'solange', 'umwizerwa@gmail.com', 'solange', '0725050277', 'admin super', 1),
(41, 'solange', 'umwizerw@gmail.com', 'solange', '0725050277', 'admin super', 1),
(42, 'imaniradukunda', 'imaniradukunda@gmail.com', 'solange', '0725050277', 'super admin', 1),
(44, 'daniel habiyaremye', 'umwizerwara@gmail.com', '1200080161516030', '0725050277', 'admin super', 24),
(45, 'daniel habiyaremye', 'eric@gmail.com', '12345', '0725050277', 'sinior manager', 1),
(46, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '123456', '0725050277', 'sinior manager', 1),
(47, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '123456', '0725050277', 'sinior manager', 1),
(48, 'NIYONSHUTI Jean Pierre', 'jeanpierreniyonshuti@gmail.com', '1234', '0786407569', 'sinior manager', 1),
(49, 'NIYONSHUTI Jean Pierre', 'jeanpierreniyonshuti@gmail.com', '1234', '', 'sinior manager', 1),
(50, 'niyori', 'niyor@gmail.com', '12345', '', 'sinior manager', 1),
(51, 'nsengimana eric', 'umwizerwa@gmail.com', '1234', '', 'MANAGER', 1),
(52, 'gitanda', 'gitanda@gmail.com', '1234', '', 'admin super', 2),
(53, 'daniel habiyaremyewayo', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 24),
(54, 'fotide', 'danisoLo2y@gmail.com', '12346', '0729554144', 'managerial function', 3),
(55, 'daniel habiyaremye', 'tuyisengesilas9@gmail.com', '1234', '0725050277', 'sinior manager', 24),
(56, 'daniel nturanyenabo', 'tuyisengeaugustin9@gmail.com', '1234', '0725050277', 'sinior manager', 2),
(58, 'niyonshuti jean pierre', 'niyibigirafidele@gmail.com', '1234', '0737317171', 'super admin', 2),
(59, 'weba', 'chris@gmail.com', '1234', '0725050277', 'admin super', 24),
(60, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 24),
(61, 'daniel habiyaremye', 'eric@gmail.com', '1234', '0725050277', 'MANAGER', 24),
(62, 'Mukamana alece', 'jean@gmail.com', '1234', '0786407569', 'super admin', 24),
(63, 'daniel habiyaremye', 'danisoLo22y@gmail.com', '12346', '0725050277', 'MANAGER', 24),
(64, 'daniel habiyaremye', 'danisoLo2y2@yahoo.com', '12346', '0725050277', 'MANAGER', 24),
(65, 'daniel habiyaremye', 'habiyaremyedaniel2021@yahoo.com', '$2y$10$LQuC9Xy9WZEdJe2jl.btKeHcwqs0IwUwBAudSToMV5SbxRbB4x5ey', '0725050277', 'sinior manager', 24),
(66, 'daniel habiyaremye', 'habiyaremyedaniel21@gmail.com', '$2y$10$nKj8Wlv3MO2zpl3ujLF8curN06SSESP4x4qysz7JY1tC182b7KuUu', '0725050277', 'admin super', 24),
(67, 'mukara', 'habiyaremyedaniel1@gmail.com', '$2y$10$czX6g.w.yQqzSGzEU3BxF.RpHh2hNUaCagnM4Ekq7CC1Z9ZLkMIbi', '0725050277', 'super manager', 24),
(68, 'daniel habiyaremye', 'habiyaremyedaniel13@gmail.com', '$2y$10$JSJz6enkIKYKMrwiXURJYuhxcsMq7cuFXS78CU1QfyvICELM9xNFS', '0725050277', 'MANAGER', 1),
(69, 'Pierre niyonshuti', 'habiyaremy2002@gmail.com', '$2y$10$EFIX.m7V.JCzenPjYk234.uY2c8q3z3Bp7FAySZ7CRLgtin8hJARW', '0725050277', 'sinior manager', 24),
(74, 'daniel habiyaremye', 'habiyaremye2002@gmail.com', '$2y$10$zwIxMpZtjUWXX6uGIItJK.IgaXaD33EIT2RZ9miF1/BXvE39eEHuW', '0725050277', 'super manager', 24),
(76, 'rwesa', 'habiyaremyedaniel1@gmail.com', '$2y$10$VkDHwUC8PVPux/aoz9Bu/ecLOEqlMClTVE79Y4Cp0UCoV7d32yivG', '0725050277', 'manager', 2),
(77, 'FOFO', 'fodite@gmail.com', '$2y$10$6lrIPrBgAst3vqT1tb4VR.nuDSoq/IJPYbgQG1.U0mS.71ptt9mOi', '0725050277', 'super admin', 24),
(78, 'NIYONSHUTI Jean Pierre', 'jeanpierreniyonshuti@gmail.com', '$2y$10$micQtffjhwaLlJcIDMNj6ec4xTFu9lG2.edvT3zZuuz2WgqBxrTvi', '0786407569', 'sinior manager', 24),
(79, 'daniel habiyaremye', 'habiyaremye2000@gmail.com', '$2y$10$KLynjHJjF5H17sGJScP39.LelZJJN043xFKyJNasdzu5L57Fgz77e', '0725050277', 'MANAGER', 24),
(80, 'Emmanuel ', 'bugingo@gmail.com', '$2y$10$bZwX9fQrQ1ZjqIvSb79.F.s77rNEQZxzSGRNaWIQSE5gkXWWCDZh2', '0725050277', 'sinior admin', 24),
(81, 'niyonambaza photide', 'habiyaremyedaniel21@gmail.com', '$2y$10$w3w1AZKiyo0tgqgA8/1wH.xqnJv5hjWyqZJoNMdwSxuFwkFhZPiie', '1', 'super manager', 24),
(82, 'niyonambaza', 'niyonambaza@gmail.com', '$2y$10$iYOYgGOu9ch06xsl5RgCRe/mJLVSSfay1KVXMnIDGGym5QkQl/FwS', '0725050277', 'MANAGER', 24),
(83, 'fotide', 'dominiquedaniel2021@gmail.com', '$2y$10$ZQoPmQcwCykcBd/qXF5vUugtDIEh1xDfMRz49AaRoic8dH0cAcL/K', '0786407569', 'managerial function', 20),
(85, 'daniel habiyaremye', 'dominiquedaniel2021@gmail.com', '$2y$10$Q9DWmkbF/5ENeglX0L2zguqLsFzmwJfk/vzLmVC6XdDuFzph5mpEK', '0725050277', 'sinior manager', 24),
(86, 'daniel habiyaremye', 'daniel2021@gmail.com', '$2y$10$Cz1Rfq506F5yNV1Xv8vYvO/s486.u8kH8Pnc5cDcD20RAofQxumvi', '0725050277', 'super admin', 24),
(87, 'daniel habiyaremye', 'daniel201@gmail.com', '$2y$10$Gzrqn7hYe6Q/dUSag6p4U.M7f1eZeqqnOAavFR0bdK07vEipSlCum', '0725050277', 'admin super', 24),
(88, 'Emmanuel ', 'emmanuel@gmail.com', '$2y$10$eRgogOUBxW3FUBvBNcsLYODMx5qyzWzCBO606Zc8KfCBS9Ii.Z/V.', '0725050277', 'admin', 24),
(89, 'Daniel', 'bugingo@gmail.com', '$2y$10$JEeHjW.GrAnaTNWSd1iB/O5ypRH.sKaAd7tvnl22JcymZu3E9UkcG', '0725050277', 'sinior admin', 24),
(91, 'Daniel', 'fodite@gmail.com', '$2y$10$PBYMxYIf3eECHFoKc8CqK.kElblBiT7/9IJjrho1qyP3QxR73GLfe', '0725050277', 'sinior admin', 24),
(92, 'Daniel', 'fodite@gmail.com', '$2y$10$bs2RlwHZ3sKB6d/Brz/YC.BsmIpFrq.jXQqwKfMgovh/TTV6qhdN6', '0725050277', 'sinior admin', 24),
(93, 'Daniel', 'fodite@gmail.com', '$2y$10$Wx6a1tKeWsGU9mn4lgeDEO3aGrGWQ9IWgXUkxkxko2e3w8ZCd.Hnu', '0725050277', 'super admin', 24),
(94, 'Daniel', 'habiri@gmail.com', '1234', '0725050277', 'admin super', 24),
(95, 'Daniel', 'jean@gmail.com', '1234', '0725050277', 'MANAGER', 24),
(96, '', 'habiyaremyedaniel2021@gmail.com', '1234', '0786407569', 'managerial function', 24),
(97, 'Daniel', 'umwizerwa@gmail.com', '1234', '0725050277', 'sinior manager', 24),
(98, 'Daniel', 'tuyisengesilas9@gmail.com', '1234', '0725050277', 'admin super', 24),
(99, 'Daniel', 'fodite@gmail.com', '5678', '0725050277', 'admin super', 24),
(100, 'eric', 'eric@gmail.com', '1234', '0725050277', 'admin super', 24),
(101, 'photide', 'fodite@gmail.com', '5678', '0725050277', 'admin super', 24),
(102, 'emmanuel', 'emmanuel@gmail.com', '98765', '0725050277', 'admin super', 24);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `name`, `address`, `contact_number`, `account_number`) VALUES
(1, 'bank of kigali', 'huye', '+250729554144', '1234567890'),
(2, 'Bank of kigali', 'kigali', '+250791291384', '1234567890'),
(3, 'Bank of kigali', 'rulindo', '+250791298384', '1234567890'),
(19, 'bank of kigali', 'huye', '+250729554144', '1234567890'),
(20, 'bank of kigali', 'huye', '+250729554144', '1234567890'),
(21, 'Bank of kigali', 'kigali', '+250791291384', '1234567890'),
(22, 'bank of kigali', 'huye', '+250729554144', '1234567890'),
(24, 'bank of kigali', 'huye', '+250729554144', '1234567890'),
(25, 'bank of kigali', 'RANGO', '+250729554144', '1234567890'),
(26, 'huye', 'kigali-huye', '0791291384', '1234567890'),
(27, 'huye', 'kigali-huye', '0791291384', '1234567890'),
(28, 'EQUITY BANK', 'BUSHOKI', '0725050277', '12345'),
(29, 'bk', 'kigali-huye', '0725050277', '12345'),
(30, 'bk', 'kigali-huye', '0725050277', '12345'),
(31, 'bushoki', 'kigali-huye', '0793000645', '12345'),
(32, 'tumba', 'kigali-huye', '0725050277', '1234567890'),
(33, 'tumba', 'kigali-huye', '0725050277', '1234567890'),
(34, 'ruti', 'kigali-huye', '0725050277', '1234567890'),
(35, 'ruti', 'kigali-huye', '0725050277', '1234567890'),
(36, 'ruhango', 'kigali-ruhango', '0791291384', '1234'),
(37, 'muhanga', 'muhanga', '0725050277', '1234567'),
(38, 'kigali', 'kigali_rwanda', '0729554144', '12345'),
(39, 'kigali', 'kigali', '0729554144', '12344567'),
(40, 'rwanda', 'kigali-huye', '0791291384', '12345'),
(41, 'base', 'kigali-huye', '0791291384', '12345'),
(42, 'gitanda', 'kigali-huye', '0734393880', '12345678'),
(43, 'gitanda', 'kigali-huye', '1234', '0734393880'),
(44, 'danizo', 'kigali-huye', '1234', '0734393880'),
(45, 'danizo', 'kigali-huye', '1234', '0729554144'),
(46, 'rukumbi', 'musanze', '0722213916', '54321'),
(47, 'rukumbi', 'musanze', '0722213916', '54321'),
(48, 'rukumbii', 'musanzee', '0722213917', '654321'),
(49, 'ruli', 'kigali-huye', '0733313916', '4321'),
(50, 'gako', 'kigali-huye', '0791291384', '1234'),
(51, 'umutanguha', 'kigali-huye', '0791291394', '12345'),
(52, 'COGEBANK', 'kigali-huye', '0791291394', '7654321'),
(53, 'rwanda', 'kigali-huye', '0791291394', '1'),
(54, 'rwanda', 'kigali-huye', '0791291394', '1'),
(55, 'rwanda', 'kigali-huye', '0791291394', '1'),
(56, 'bk', 'kigali-huye', '0791291394', '1'),
(57, 'bk', 'kigali-huye', '0791291394', '1'),
(58, 'bk', 'kigali-huye', '0791291394', '1'),
(59, 'urwego', 'kigali-huye', '0791291394', '12345'),
(60, 'urwego', 'kigali-huye', '0791291394', '12345'),
(61, 'bank of africa', 'rwanda', '0791291394', '1001'),
(62, 'daniel habiyaremye', 'kigali-huye', '0791291394', '1'),
(63, 'daniel habiyaremye', 'kigali-huye', '0791291394', '28'),
(64, 'rwezamenyo bank', 'kigali-huye', '0791291394', '1234'),
(65, 'urwego bank', 'kigali-huye', '0791291394', '1'),
(66, 'gasogi', 'kigali-huye', '0791291394', '1234');

--
-- Triggers `bank`
--
DELIMITER $$
CREATE TRIGGER `AfterInsertBank` AFTER INSERT ON `bank` FOR EACH ROW BEGIN
    INSERT INTO bank_audit (bank_id, action, action_date)
    VALUES (NEW.bank_id, 'INSERT', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `AfterUpdateBank` AFTER UPDATE ON `bank` FOR EACH ROW BEGIN
    INSERT INTO bank_audit (bank_id, action, action_date)
    VALUES (NEW.bank_id, 'UPDATE', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_audit`
--

CREATE TABLE `bank_audit` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `action_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_audit`
--

INSERT INTO `bank_audit` (`id`, `bank_id`, `action`, `action_date`) VALUES
(1, 1, 'UPDATE', '2024-02-16 08:30:46'),
(2, 2, 'UPDATE', '2024-02-16 08:32:33'),
(3, 1, 'UPDATE', '2024-02-16 08:34:22'),
(4, 19, 'INSERT', '2024-02-16 08:37:16'),
(5, 1, 'UPDATE', '2024-02-16 08:37:27'),
(6, 1, 'UPDATE', '2024-02-16 08:37:27'),
(7, 20, 'INSERT', '2024-02-16 08:54:25'),
(8, 1, 'UPDATE', '2024-02-16 08:54:30'),
(9, 21, 'INSERT', '2024-02-16 11:22:22'),
(10, 2, 'UPDATE', '2024-02-16 11:22:36'),
(11, 22, 'INSERT', '2024-02-16 11:24:14'),
(12, 1, 'UPDATE', '2024-02-16 11:24:20'),
(13, 23, 'INSERT', '2024-02-16 11:27:09'),
(14, 24, 'INSERT', '2024-02-18 14:14:53'),
(15, 1, 'UPDATE', '2024-02-18 14:14:58'),
(16, 25, 'INSERT', '2024-02-18 14:15:12'),
(17, 26, 'INSERT', '2024-04-03 16:12:26'),
(18, 27, 'INSERT', '2024-04-03 16:23:51'),
(19, 28, 'INSERT', '2024-04-03 16:28:56'),
(20, 29, 'INSERT', '2024-04-09 13:59:53'),
(21, 30, 'INSERT', '2024-04-09 14:01:17'),
(22, 31, 'INSERT', '2024-04-09 14:01:43'),
(23, 32, 'INSERT', '2024-04-09 14:19:24'),
(24, 33, 'INSERT', '2024-04-09 14:25:11'),
(25, 34, 'INSERT', '2024-04-09 14:25:23'),
(26, 35, 'INSERT', '2024-04-09 14:26:14'),
(27, 36, 'INSERT', '2024-04-09 14:33:21'),
(28, 37, 'INSERT', '2024-04-09 14:45:09'),
(29, 38, 'INSERT', '2024-04-09 14:58:59'),
(30, 39, 'INSERT', '2024-04-09 14:59:34'),
(31, 40, 'INSERT', '2024-04-09 15:05:35'),
(32, 41, 'INSERT', '2024-04-09 15:20:17'),
(33, 42, 'INSERT', '2024-04-12 13:55:50'),
(34, 43, 'INSERT', '2024-04-12 14:03:39'),
(35, 44, 'INSERT', '2024-04-12 14:08:44'),
(36, 45, 'INSERT', '2024-04-12 14:09:14'),
(37, 46, 'INSERT', '2024-04-12 16:07:18'),
(38, 47, 'INSERT', '2024-04-12 16:08:36'),
(39, 48, 'INSERT', '2024-04-12 16:10:24'),
(40, 49, 'INSERT', '2024-04-13 16:44:46'),
(41, 50, 'INSERT', '2024-04-15 14:56:07'),
(42, 51, 'INSERT', '2024-04-15 15:01:26'),
(43, 52, 'INSERT', '2024-04-15 15:02:08'),
(44, 53, 'INSERT', '2024-04-16 09:35:04'),
(45, 54, 'INSERT', '2024-04-16 09:36:27'),
(46, 55, 'INSERT', '2024-04-16 09:40:26'),
(47, 56, 'INSERT', '2024-04-16 09:51:32'),
(48, 57, 'INSERT', '2024-04-16 09:57:49'),
(49, 58, 'INSERT', '2024-04-16 09:58:04'),
(50, 59, 'INSERT', '2024-04-16 13:07:26'),
(51, 60, 'INSERT', '2024-04-16 13:08:55'),
(52, 61, 'INSERT', '2024-04-16 13:20:57'),
(53, 62, 'INSERT', '2024-04-17 11:25:19'),
(54, 63, 'INSERT', '2024-04-17 21:05:37'),
(55, 64, 'INSERT', '2024-04-19 07:39:33'),
(56, 65, 'INSERT', '2024-04-23 10:58:07'),
(57, 66, 'INSERT', '2024-04-26 20:09:55');

-- --------------------------------------------------------

--
-- Stand-in structure for view `delete_view`
-- (See below for the actual view)
--
CREATE TABLE `delete_view` (
`name` varchar(255)
,`address` varchar(255)
,`contact_number` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `hostel_manager_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `bank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`hostel_manager_id`, `name`, `email`, `password`, `phone_number`, `role`, `bank_id`) VALUES
(109, 'Mary', 'mary@gmail.com', 'password789', '+250729554184', 'Hostel ManagerI', 1),
(110, 'dad', 'dad@gmail.com', 'password791', '+250729554104', 'Hostel ManagerIII', 3),
(111, 'Maria', 'maria@gmail.com', 'password790', '+250729550144', 'Hostel ManagerII', 2),
(112, 'Maria', 'maria@gmail.com', 'password790', '+250729550144', 'Hostel ManagerII', 2),
(113, 'Mary', 'mary@gmail.com', 'password789', '+250729554184', 'Hostel ManagerI', 1),
(114, 'Mary', 'mary@gmail.com', 'password789', '+250729554184', 'Hostel ManagerI', 1),
(115, 'Mary', 'mary@gmail.com', 'password789', '+250729554184', 'Hostel ManagerI', 1),
(117, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0729037722', 'MANAGER', 21),
(119, 'niyonshuti jean pieere', 'niyoli@gmail.com', '123456', '0786407569', 'sinior manager', 20),
(120, 'nsengimana eric', 'eric@gmail.com', '1234', '0725050277', 'sinior manager', 21),
(121, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'MANAGER', 1),
(122, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 2),
(123, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'MANAGER', 2),
(124, 'niyonshuti jean pierre', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'MANAGER', 2),
(125, 'nsengimana eric', 'eric@gmail.com', '1234', '0725050277', 'sinior manager', 21),
(126, 'nsengimana eric', 'eric@gmail.com', '1234', '0725050277', 'sinior manager', 21),
(127, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 2),
(128, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'super manager', 2),
(129, 'gitoki', 'gitoki@gmail.com', '1234', '0725050277', 'MANAGER', 3),
(132, 'jean pierre', 'niyori@gmail.com', '1234', '0725050277', 'super manager', 3),
(133, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'sinior manager', 2),
(134, 'mendy', 'med@gmail.com', '1234', '0725050277', 'MANAGER', 3),
(135, 'daniel habiyaremye', 'umwizera@gmail.com', '123456', '0725050277', 'admin super', 1),
(136, 'daniel habiyaremye', 'umwizerwa@gmail.com', '12345', '0725050277', 'MANAGER', 1),
(137, 'imaniragena', 'imaniragena@gmai.com', '1200280114693067', '0725050277', 'MANAGER', 1),
(139, 'karake', 'karake@gmail.com', '12345', '0725050266', 'MANAGER', 1),
(140, 'fodite', 'fodite@gmail.com', '12345', '0725050277', 'super manager', 24),
(141, 'francine', 'francine@gmail.com', '12345', '0725050277', 'MANAGER', 24);

-- --------------------------------------------------------

--
-- Table structure for table `maintenancestaff`
--

CREATE TABLE `maintenancestaff` (
  `StaffID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `WorkSchedule` varchar(100) DEFAULT NULL,
  `DateOfEmployment` date DEFAULT NULL,
  `EmergencyContact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenancestaff`
--

INSERT INTO `maintenancestaff` (`StaffID`, `Name`, `ContactNumber`, `Specialization`, `WorkSchedule`, `DateOfEmployment`, `EmergencyContact`) VALUES
(9, 'jane', '', '', '', '0000-00-00', ''),
(10, 'donatha', '', 'plumbing', 'mon-Sat 10 AM - 6 PM', '2021-10-11', '555-555-5565'),
(11, '', '0729554144', 'water', 'weekly ', '2024-04-11', '123'),
(13, '', '0793000645', 'water', 'weekly ', '2024-04-09', '123'),
(14, '', '0793000646', 'water', 'weekly ', '2024-04-09', '123'),
(15, '', '0791291384', 'water', 'weekly ', '2024-04-04', '123'),
(16, '', '0791291385', 'water', 'weekly ', '2024-04-04', '123'),
(17, '', '0791291384', 'water', 'weekly ', '2024-04-04', '123'),
(18, '', '0722213916', 'tv', 'day', '2024-04-06', '321'),
(19, '', '0722213916', 'tv', 'weekly ', '2024-04-04', '1234'),
(20, '', '098765', 'water', 'day', '2024-04-14', '098765'),
(21, '', '098765', 'water', 'day', '2024-04-14', '098765'),
(22, '', '098765', 'water', 'day', '2024-04-14', '098765'),
(23, '', '0987', 'weell', 'day', '2024-05-09', '0987'),
(24, '', '', 'weell', 'day', '2024-05-09', '0987'),
(25, 'qwery', '0987', NULL, NULL, NULL, NULL),
(26, 'jp', '0987', NULL, NULL, NULL, NULL),
(27, 'nsengimana eric', '0729554144', NULL, NULL, NULL, NULL),
(28, 'donatha', '0729554144', 'tv', 'Saturday ', '2024-05-08', '123'),
(29, '', '0798765432', 'water', 'weekly ', '2024-05-11', '123'),
(30, '', '0798765432', 'water', 'weekly ', '2024-05-11', '123'),
(31, '', '', '', 'dayly', '0000-00-00', ''),
(32, '', '0793000645', 'water', 'weekly ', '2024-04-03', '1234'),
(33, '', '0725050277', 'water', 'weekly ', '2024-04-03', '0783240473'),
(34, '', '0725050277', 'water', 'weekly ', '2024-04-05', '1234'),
(35, 'habiyaremye daniel ', '0793000645', 'weell', 'weekly ', '2024-04-14', '456'),
(36, '', '0725050277', 'water', 'weekly ', '2024-04-03', '9090'),
(37, '', '0725050277', 'water', 'weekly ', '2024-04-11', '1234'),
(38, '', '0725050277', 'water', 'weekly ', '2024-04-04', '12345'),
(39, 'yeahe', '0793005555', 'tv', 'weekly ', '2024-05-10', '54'),
(40, 'gashuhe', '0793000645', 'water', 'full-day ', '2023-07-07', '1'),
(41, '', '0725050277', 'water', 'weekly ', '2024-04-03', '1'),
(42, '', '0725050277', 'water', 'weekly ', '2024-04-03', '1'),
(43, '', '0725050277', 'water', 'weekly ', '2024-04-03', '1'),
(44, '', '0793000645', 'water', 'weekly ', '2024-04-03', '34'),
(45, '', '0793000645', 'water', 'weekly ', '2024-04-04', '1'),
(46, 'habiyaremye daniel ', '0793000645', 'water', 'full-day ', '2024-04-16', '234'),
(47, 'barore', '0793000645', 'water', 'full-day ', '2024-04-16', '234');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rent` float NOT NULL,
  `facilities` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_number`, `capacity`, `type`, `rent`, `facilities`) VALUES
(2, 108, 3, 'Single', 5000, 'tv'),
(3, 109, 8, 'Single', 6000, 'Wifi'),
(4, 101, 2, 'Single', 4000, 'Wifi'),
(5, 108, 3, 'Single', 8000, 'tv'),
(6, 108, 3, 'Single', 8000, 'tv'),
(8, 3, 32, 'single', 3588, 'tv'),
(9, 3, 32, 'single', 3588, 'tv'),
(11, 2, 2, 'single', 2345, 'tv'),
(12, 1, 100, 'hundredth ', 100000, 'wifi'),
(13, 1, 100, 'hundredth ', 100000, 'wifi'),
(14, 1, 3, 'single', 2000, 'wifi'),
(16, 577, 10000, 'hundredth ', 5000, 'wifi,tv'),
(18, 4, 1, 'single', 50000, 'wifi,tv,restourant,dushes'),
(19, 0, 2, 'double', 100000, 'wifi, restourant'),
(20, 0, 100, 'hundredth ', 300000, 'wifi,tv,restourant,dushes'),
(21, 7, 100, 'hundredth ', 300000, 'wifi,tv,restourant,dushes'),
(22, 179, 25, 'hundredth ', 300000, 'wifi,tv,restaurant,dushes, ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_of_study` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `bank_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `password`, `phone_number`, `gender`, `date_of_birth`, `course`, `year_of_study`, `room_number`, `bank_id`, `room_id`) VALUES
(222007498, 'daniel', 'fwr@gmail.com', 'password455', '0725050334', 'Male', '2001-01-01', 'Computer Science', 1, 108, 2, 2),
(222007500, 'daniel', 'dani@2024', 'password455', '0725050334', 'Male', '2001-01-01', 'Computer Science', 1, 108, 2, 2),
(222007502, 'daniel', 'fsgfhjjg.gmail.com', 'password455', '0725050334', 'Male', '2001-01-01', 'Computer Science', 1, 108, 2, 2),
(222007508, 'daniel', '', 'password455', '0725050334', 'Male', '2001-01-01', 'Computer Science', 1, 108, 2, 2),
(222007509, 'daniel', '', 'password455', '0725050334', 'Male', '2001-01-01', 'Computer Science', 1, 108, 2, 2),
(222007510, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007511, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007512, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007513, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007514, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007515, 'daniel habiyaremye', 'habiyaremyedaniel2021@gmail.com', '1234', '0725050277', 'male', '2022-05-06', 'IT', 2, 1, 3, 3),
(222007518, 'tuyizere', 'tuyisengesilas9@gmail.com', '1200080161516030', '0725050277', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007519, 'tuyizere', 'tuyisengesilas9@gmail.com', '1200080161516030', '0725050277', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007520, 'tuyizere', 'tuyisengesilas9@gmail.com', '1200080161516030', '0725050277', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007521, 'tuyizere', 'tuyisengesilas9@gmail.com', '1200080161516030', '0725050277', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007522, 'tuyizere', 'tuyisengesilas9@gmail.com', '1200080161516030', '0725050277', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007523, 'tuyizere', 'uyisengesilas9@gmail.com', '1200080161516030', '0725050278', 'male', '2024-05-02', 'bit', 4, 2, 3, 3),
(222007543, 'Niyonshuti', 'jean@gmail.com', '1234', '0786407569', 'male', '0000-00-00', 'BIT', 2, 4, 2, 2),
(222007569, 'NIYONSHUTI Jean Pierre', 'jeanpierreniyonshuti@gmail.com', '1234', '0786407569', 'goalkeeper', '2024-04-17', 'bit', 1, 1, 24, 3),
(222007571, 'NIYONSHUTI Jean Pierre', 'jeanpierreniyonshuti@gmail.com', '1234', '0786407569', 'male', '2024-04-17', 'bit', 1, 1, 24, 3);

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `AfterUpdateStudent` AFTER UPDATE ON `student` FOR EACH ROW BEGIN
    INSERT INTO student_audit (student_id, action, audit_timestamp)
    VALUES (NEW.student_id, 'UPDATE', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `studentinformation`
--

CREATE TABLE `studentinformation` (
  `student_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `year_of_study` int(11) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentroomtypeview`
--

CREATE TABLE `studentroomtypeview` (
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentroomview`
--

CREATE TABLE `studentroomview` (
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `room_rent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updatablestudentview`
--

CREATE TABLE `updatablestudentview` (
  `student_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `year_of_study` int(11) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `delete_view`
--
DROP TABLE IF EXISTS `delete_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `delete_view`  AS SELECT `bank`.`name` AS `name`, `bank`.`address` AS `address`, `bank`.`contact_number` AS `contact_number` FROM `bank` WHERE `bank`.`address` = 'huye'union all select `room`.`capacity` AS `capacity`,`room`.`type` AS `type`,`room`.`rent` AS `rent` from `room` where `room`.`capacity` > 3  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `fk_admin_bank` (`bank_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `bank_audit`
--
ALTER TABLE `bank_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`hostel_manager_id`),
  ADD KEY `fk_hostel_manager_bank` (`bank_id`);

--
-- Indexes for table `maintenancestaff`
--
ALTER TABLE `maintenancestaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_bank` (`bank_id`),
  ADD KEY `fk_student_room` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `bank_audit`
--
ALTER TABLE `bank_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `hostel_manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `maintenancestaff`
--
ALTER TABLE `maintenancestaff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222007572;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_bank` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `fk_hostel_manager_bank` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_bank` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`),
  ADD CONSTRAINT `fk_student_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
