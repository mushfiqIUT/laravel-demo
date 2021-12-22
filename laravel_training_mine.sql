-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2015 at 05:07 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_training`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_01_16_044736_create_users_table', 1),
('2015_01_16_044918_create_user_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shuvro1226@gmail.com', '$2y$10$gdvf3Sg5p8jCPF0OSQ1Ksete.vV5twbWcQpt2Ymf273ZeHwZvHf5u', NULL, '2015-01-16 00:04:21', '2015-01-16 00:04:21'),
(2, 'abcd@gmail.com', '$2y$10$cwr1NPnrAppNdA5BBYE5F.FoSPoMau/5pLG1iEHNlV6tZqcKRNt6W', NULL, '2015-01-16 00:08:05', '2015-01-16 00:08:05'),
(3, 'abcd@abcd.com', '$2y$10$WQDkfVpVRFGumzah4T6g7.542eVXE58r0lbSgk038N8/gPZH.WgRm', NULL, '2015-01-20 05:11:37', '2015-01-20 05:11:37'),
(4, 'aaa@aaa.com', '$2y$10$g2N5qFgtsvPqsIEBLy13VuXmwJzAt3.DBtAekX5RQd1ZPgxm0iIFW', NULL, '2015-01-21 22:51:30', '2015-01-21 22:51:30'),
(5, 'mushy@mushy.mush', '$2y$10$SCX7hbw8kbYoNV/FFw6uYeICIiZtj3f7/plAvswVhszH23oPBExHO', 'UCuSqDCXLHJr36DDoWKGujmBN6f1ANxBbnltQE7fOeHIhwe9MtniQjiNQ8jB', '2015-01-21 23:06:27', '2015-01-21 23:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_details_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `name`, `company`, `designation`, `biography`) VALUES
(1, 1, 'Moinul Hasan Shuvro', NULL, NULL, NULL),
(2, 2, 'Shuvro', NULL, NULL, NULL),
(3, 3, 'Shuvro', NULL, NULL, NULL),
(4, 4, 'Mushfiq', NULL, NULL, NULL),
(5, 5, 'Mushfiq', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
