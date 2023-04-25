-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 05:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fm`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `experience_years` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`username`, `name`, `surname`, `age`, `experience_years`) VALUES
('testCoach', 'Test', 'Coach', 41, 10);

-- --------------------------------------------------------

--
-- Table structure for table `coach_training_evaluation`
--

CREATE TABLE `coach_training_evaluation` (
  `id` int(10) NOT NULL,
  `coach` varchar(255) NOT NULL,
  `exercise` varchar(255) NOT NULL,
  `evaluation` enum('1 Star','2 Stars','3 Stars','4 Stars','5 Stars') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach_training_evaluation`
--

INSERT INTO `coach_training_evaluation` (`id`, `coach`, `exercise`, `evaluation`) VALUES
(1, 'testCoach', 'Exercise 1', '4 Stars');

-- --------------------------------------------------------

--
-- Table structure for table `formations`
--

CREATE TABLE `formations` (
  `types` enum('4-3-3','4-3-1-2','4-3-2-1','4-4-2','4-5-1','3-5-2','3-4-1-2','3-4-2-1','3-3-3-1','3-3-2-2','') NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formations`
--

INSERT INTO `formations` (`types`, `notes`) VALUES
('4-3-2-1', '2 Passes, 1 Shot');

-- --------------------------------------------------------

--
-- Table structure for table `match_data`
--

CREATE TABLE `match_data` (
  `id` int(10) NOT NULL,
  `against_team` enum('AEK','OLYMPIAKOS','PANATHINAIKOS','PAOK','ARIS') NOT NULL,
  `ball_pocession` int(10) NOT NULL,
  `attempts` int(10) NOT NULL,
  `attempts_onTarget` int(10) NOT NULL,
  `passes` int(10) NOT NULL,
  `fouls` int(10) NOT NULL,
  `offsides` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `match_data`
--

INSERT INTO `match_data` (`id`, `against_team`, `ball_pocession`, `attempts`, `attempts_onTarget`, `passes`, `fouls`, `offsides`) VALUES
(1, 'AEK', 67, 6, 3, 240, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `training_exerxises`
--

CREATE TABLE `training_exerxises` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_exerxises`
--

INSERT INTO `training_exerxises` (`name`, `description`) VALUES
('Exercise 1', 'Attack with 2 Midfielders and 1 Striker against 3 Defenders.');

-- --------------------------------------------------------

--
-- Table structure for table `training_plan`
--

CREATE TABLE `training_plan` (
  `name` varchar(255) NOT NULL,
  `exercise` varchar(255) NOT NULL,
  `formation` enum('4-3-3','4-3-1-2','4-3-2-1','4-4-2','4-5-1','3-5-2','3-4-1-2','3-4-2-1','3-3-3-1','3-3-2-2','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_plan`
--

INSERT INTO `training_plan` (`name`, `exercise`, `formation`) VALUES
('Plan 1', 'Exercise 1', '4-3-2-1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` set('Coach & Assistants','Nutritionist','Physiotherapist','Player') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `userType`) VALUES
('nikolas', 'test', 'Player'),
('testCoach', 'test', 'Coach & Assistants'),
('testNutr', 'test', 'Nutritionist'),
('testPhysio', 'test', 'Physiotherapist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `coach_training_evaluation`
--
ALTER TABLE `coach_training_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coach_name` (`coach`),
  ADD KEY `exercise_name` (`exercise`);

--
-- Indexes for table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`types`);

--
-- Indexes for table `match_data`
--
ALTER TABLE `match_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_exerxises`
--
ALTER TABLE `training_exerxises`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `training_plan`
--
ALTER TABLE `training_plan`
  ADD PRIMARY KEY (`name`),
  ADD KEY `plan_exercise` (`exercise`),
  ADD KEY `plan_formation` (`formation`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach_training_evaluation`
--
ALTER TABLE `coach_training_evaluation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `match_data`
--
ALTER TABLE `match_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `coach_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coach_training_evaluation`
--
ALTER TABLE `coach_training_evaluation`
  ADD CONSTRAINT `coach_name` FOREIGN KEY (`coach`) REFERENCES `coach` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `exercise_name` FOREIGN KEY (`exercise`) REFERENCES `training_exerxises` (`name`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `training_plan`
--
ALTER TABLE `training_plan`
  ADD CONSTRAINT `plan_exercise` FOREIGN KEY (`exercise`) REFERENCES `training_exerxises` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plan_formation` FOREIGN KEY (`formation`) REFERENCES `formations` (`types`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
