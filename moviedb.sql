-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 12:04 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `year`, `poster`) VALUES
(263, 'Guardians of the Galaxy', '2014-07-30', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/y31QB9kn3XSudA15tV7UWQ9XLuW.jpg'),
(264, 'Guardians of the Galaxy Vol. 2', '2017-04-19', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/y4MBh0EjBlMuOzv9axM4qJlmhzz.jpg'),
(265, 'Guardians of the Galaxy Vol. 3', '2022-05-06', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/6rsLfXqlZSXa6zLfbofHVhXs8Yr.jpg'),
(266, 'LEGO Marvel Super Heroes - Guardians of the Galaxy: The Thanos Threat', '2017-12-09', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/e5h1RlnQzjgEAh4s96k50S8XkKa.jpg'),
(267, 'Guardians of the Galaxy: Inferno', '', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/iQXBH74Cs4eHrhtypEJZVU4M9d9.jpg'),
(268, 'Superman', '1978-12-13', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/n2DOECThGG7h7m5AjLi2Nuh23u1.jpg'),
(269, 'Superman Returns', '2006-06-28', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/e3aLTaD5ppxo3en0GAGceekEPAe.jpg'),
(270, 'Superman II', '1980-12-04', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/uvxjXSfph2FD07A2jBG9NHJnl27.jpg'),
(271, 'Superman III', '1983-06-17', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/pDjfBk3YkdvRK2VERvoHaXJdNxF.jpg'),
(272, 'Superman: Doomsday', '2007-09-18', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/3of4nShmv1hBmrebOQqGlfZ9ZL0.jpg'),
(273, 'Superman: Unbound', '2013-05-06', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/sbGj8yQeUlIDZdffsuFv4Cy9snk.jpg'),
(274, 'Superman', '1948-07-15', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/pDi8uqSg4dfcedkU6CTHvBWdv2H.jpg'),
(275, 'The Death of Superman', '2018-07-03', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/y0uxSHaSFmt6XaBJgjkeLqe7aM.jpg'),
(276, 'Batman v Superman: Dawn of Justice', '2016-03-23', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/cGOPbv9wA5gEejkUN892JrveARt.jpg'),
(277, 'Superman/Batman: Public Enemies', '2009-09-29', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/bJBZxzFHfTAOtBg8fOCCaBmh4hF.jpg'),
(278, 'Superman vs. The Elite', '2012-06-12', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/cilpU63HE0nsbqMytvO3Mlltotw.jpg'),
(279, 'Superman/Batman: Apocalypse', '2010-09-28', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/wNtrbql45NqvomsYKr3uHXgFj2D.jpg'),
(280, 'All Star Superman', '2011-02-22', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/yVPzeI4OsJtJ5g17NM3ZBYdEVRW.jpg'),
(281, 'Superman IV: The Quest for Peace', '1987-07-23', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/q1P6UHWdrtZNkmdnoprV0ILfLlr.jpg'),
(282, 'Waiting for \"Superman\"', '2010-09-24', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/l7mRlEi4VCEH7sfgaXX1b6LzsXn.jpg'),
(283, 'Superman: The Mad Scientist', '1941-09-26', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4DK6wWZTp6v32NUXszkHOPGxm16.jpg'),
(284, 'Superman 75th Anniversary', '2013-10-13', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/iTCXQX0aucY3DjXP7AiD3vHFVCi.jpg'),
(285, 'Superman', '1987-12-31', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/zkrp5u79tKTlOm9Hu3ICGhqv9W8.jpg'),
(286, 'Superman/Shazam!: The Return of Black Adam', '2010-11-09', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/tMQHV6qh8YcoGB28CGDQxCZLnjY.jpg'),
(287, 'Sunshine Superman', '2015-05-22', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/np1wtAPrxwvmQXj5MGnn2bw5rtS.jpg'),
(288, 'Captain Marvel', '2019', '[object Object]Poster'),
(289, 'Captain Marvel', '2019', '[object Object]Poster'),
(290, 'Marvel One-Shot: Item 47', '2012', '[object Object]Poster'),
(291, 'Marvel One-Shot: All Hail the King', '2014', '[object Object]Poster'),
(292, 'Marvel One-Shot: Agent Carter', '2013', '[object Object]Poster'),
(293, 'Marvel One-Shot: A Funny Thing Happened on the Way to Thor\'s Hammer', '2011', '[object Object]Poster'),
(294, 'Marvel One-Shot: The Consultant', '2011', '[object Object]Poster'),
(295, 'Lego Marvel Super Heroes', '2013', '[object Object]Poster'),
(296, 'Marvel: Ultimate Alliance', '2006', '[object Object]Poster'),
(297, 'Adventures of Captain Marvel', '1941', '[object Object]Poster');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
