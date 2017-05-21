-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2017 at 02:07 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(8, 'Clifford D. Simak'),
(3, 'Douglas Adams'),
(1, 'Isaac Asimov'),
(4, 'Jules Verne'),
(2, 'Ray Bradbury'),
(6, 'Roger Zelazny'),
(5, 'Stanislaw Lem'),
(7, 'Stephen King');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author_id`) VALUES
(1, 'I, Robot', 1),
(2, 'The Caves of Steel', 1),
(3, 'The Naked Sun', 1),
(4, 'The Robots of Dawn', 1),
(5, 'Robots and Empire', 1),
(6, 'Dandelion Wine', 2),
(7, 'The Halloween Tree', 2),
(8, 'Honoris causa', 2),
(9, 'Fahrenheit 451', 2),
(10, 'Curiosity', 2),
(11, 'Ordre des Arts et des Lettres', 2),
(12, 'Hitchhiker\'s Guide to the Galaxy', 3),
(13, 'The Meaning of Liff', 3),
(14, 'The Adventures of Captain Hatteras', 4),
(15, 'Around the Moon', 4),
(16, 'Around the World in Eighty Days', 4),
(17, 'Eight Hundred Leagues on the Amazon', 4),
(18, 'From the Earth to the Moon', 4),
(19, 'Journey to the Center of the Earth', 4),
(20, 'Master of the World', 4),
(21, 'The Mysterious Island', 4),
(22, 'The Sea Serpent', 4),
(23, 'Twenty Thousand Leagues Under the Sea', 4),
(24, 'Solaris', 5),
(25, 'His Master\'s Voice', 5),
(26, 'Fiasco', 5),
(27, 'Nine Princes in Amber', 6),
(28, 'The Guns of Avalon', 6),
(29, 'Sign of the Unicorn', 6),
(30, 'The Hand of Oberon', 6),
(31, 'The Courts of Chaos', 6),
(32, 'Trumps of Doom', 6),
(33, 'Blood of Amber', 6),
(34, 'Sign of Chaos', 6),
(35, 'Knight of Shadows', 6),
(36, 'Prince of Chaos', 6),
(37, '11/22/63', 7),
(38, '\'Salem\'s Lot', 7),
(39, '\'Salem\'s Lot Illustrated Edition', 7),
(40, 'Bag of Bones', 7),
(41, 'Black House', 7),
(42, 'Carrie', 7),
(43, 'Cell', 7),
(44, 'Christine', 7),
(45, 'The Colorado Kid', 7),
(46, 'Cujo', 7),
(47, 'Cycle of the Werewolf', 7),
(48, 'The Dark Half', 7),
(49, 'The Dark Tower: Song of Susannah', 7),
(50, 'The Dark Tower', 7),
(51, 'The Dark Tower: The Drawing of the Three', 7),
(52, 'The Dark Tower: The Gunslinger (Revised)', 7),
(53, 'The Dark Tower: The Gunslinger', 7),
(54, 'The Dark Tower: The Waste Lands', 7),
(55, 'The Dark Tower: The Wind Through the Keyhole', 7),
(56, 'The Dark Tower: Wizard and Glass', 7),
(57, 'The Dark Tower: Wolves of the Calla', 7),
(58, 'The Dead Zone', 7),
(59, 'Desperation', 7),
(60, 'Doctor Sleep', 7),
(61, 'Dolores Claiborne', 7),
(62, 'Dreamcatcher', 7),
(63, 'Duma Key', 7),
(64, 'End of Watch', 7),
(65, 'The Eyes of the Dragon', 7),
(66, 'Finders Keepers', 7),
(67, 'Firestarter', 7),
(68, 'From A Buick 8', 7),
(69, 'Gerald\'s Game', 7),
(70, 'The Girl Who Loved Tom Gordon', 7),
(71, 'The Green Mile: Coffey on the Mile', 7),
(72, 'The Green Mile: Coffey\'s Hands', 7),
(73, 'The Green Mile: Night Journey', 7),
(74, 'The Green Mile: The Bad Death of Eduard Delacroix', 7),
(75, 'The Green Mile: The Complete Serial Novel', 7),
(76, 'The Green Mile: The Mouse on the Mile', 7),
(77, 'The Green Mile: The Two Dead Girls', 7),
(78, 'Insomnia', 7),
(79, 'IT', 7),
(80, 'Joyland', 7),
(81, 'Joyland Illustrated Edition', 7),
(82, 'Lisey\'s Story', 7),
(83, 'Misery', 7),
(84, 'Mr. Mercedes', 7),
(85, 'Needful Things', 7),
(86, 'Pet Sematary', 7),
(87, 'Revival', 7),
(88, 'Rose Madder', 7),
(89, 'The Shining', 7),
(90, 'Sleeping Beauties', 7),
(91, 'The Stand', 7),
(92, 'The Stand: The Complete & Uncut Edition', 7),
(93, 'The Talisman', 7),
(94, 'The Tommyknockers', 7),
(95, 'Under the Dome', 7),
(96, 'The Creator', 8),
(97, 'Cosmic Engineers', 8),
(98, 'Galaxy novel', 8),
(99, 'Time and Again', 8),
(100, 'City', 8),
(101, 'Ring Around the Sun', 8),
(102, 'Time is the Simplest Thing', 8),
(103, 'The Trouble with Tycho', 8),
(104, 'Tycho', 8),
(105, 'Way Station', 8),
(106, 'All Flesh Is Grass', 8),
(107, 'Why Call Them Back From Heaven?', 8),
(108, 'The Werewolf Principle', 8),
(109, 'The Goblin Reservation', 8),
(110, 'Out of Their Minds', 8),
(111, 'Destiny Doll', 8),
(112, 'A Choice of Gods', 8),
(113, 'Cemetery World', 8),
(114, 'Our Children\'s Children', 8),
(115, 'Enchanted Pilgrimage', 8),
(116, 'Shakespeare\'s Planet', 8),
(117, 'A Heritage of Stars', 8),
(118, 'The Fellowship of the Talisman', 8),
(119, 'Mastodonia', 8),
(120, 'X Minus One', 8),
(121, 'The Visitors', 8),
(122, 'Project Pope', 8),
(123, 'Where the Evil Dwells', 8),
(124, 'Special Deliverance', 8),
(125, 'Highway of Eternity', 8);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `added` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `buyer_name`, `book_id`, `added`) VALUES
(1, 'Gabriella Smith', 76, '2005-08-12 18:15:00'),
(2, 'David Johnson', 83, '2010-07-19 18:28:00'),
(3, 'London Williams', 120, '2013-11-21 00:54:00'),
(4, 'Natalie Jones', 20, '2002-04-28 10:41:00'),
(5, 'Aria Brown', 8, '2005-03-22 02:16:00'),
(6, 'Hunter Davis', 58, '2006-07-09 21:34:00'),
(7, 'Layla Miller', 36, '2006-02-07 06:53:00'),
(8, 'Eliana Wilson', 74, '2013-11-28 09:43:00'),
(9, 'Lucas Moore', 72, '2004-09-26 14:39:00'),
(10, 'Jocelyn Taylor', 19, '2008-11-11 13:17:00'),
(11, 'Caroline Anderson', 91, '2002-06-02 06:01:00'),
(12, 'Avery Thomas', 48, '2009-04-28 07:51:00'),
(13, 'Aurora Jackson', 110, '2000-02-04 23:36:00'),
(14, 'Evelyn White', 40, '2009-05-13 04:14:00'),
(15, 'Logan Harris', 111, '2000-01-19 18:17:00'),
(16, 'Anthony Martin', 116, '2013-04-29 14:27:00'),
(17, 'Elijah Thompson', 14, '2016-07-05 17:25:00'),
(18, 'Charlie Garcia', 124, '2006-08-26 03:09:00'),
(19, 'Emma Martinez', 64, '2011-12-10 11:15:00'),
(20, 'Liliana Robinson', 32, '2014-09-08 21:48:00'),
(21, 'Keira Clark', 115, '2007-08-03 13:21:00'),
(22, 'Zane Rodriguez', 93, '2009-07-14 03:14:00'),
(23, 'Ellie Lewis', 95, '2014-12-25 19:14:00'),
(24, 'Lucy Lee', 16, '2009-08-23 13:11:00'),
(25, 'Max Walker', 76, '2015-01-23 20:45:00'),
(26, 'Alexandra Hall', 44, '2012-07-15 01:36:00'),
(27, 'Stella Allen', 37, '2016-03-03 21:18:00'),
(28, 'Olivia Young', 116, '2013-01-17 14:54:00'),
(29, 'Hannah Hernandez', 8, '2006-12-27 15:08:00'),
(30, 'Connor King', 30, '2010-06-07 10:08:00'),
(31, 'Sophie Wright', 96, '2003-09-26 15:04:00'),
(32, 'Alaina Lopez', 90, '2007-10-25 17:34:00'),
(33, 'Alice Hill', 10, '2014-07-11 18:22:00'),
(34, 'Ava Scott', 52, '2006-10-09 11:17:00'),
(35, 'Sadie Green', 95, '2006-06-27 19:52:00'),
(36, 'Jacob Adams', 13, '2011-02-26 21:12:00'),
(37, 'Brooklyn Baker', 45, '2000-04-26 14:43:00'),
(38, 'Madelyn Gonzalez', 60, '2015-08-27 05:15:00'),
(39, 'Adrian Nelson', 35, '2011-01-03 19:04:00'),
(40, 'Mason Carter', 3, '2003-05-14 06:41:00'),
(41, 'Declan Mitchell', 54, '2002-05-27 11:21:00'),
(42, 'Jackson Perez', 89, '2016-07-15 01:36:00'),
(43, 'Alyssa Roberts', 9, '2006-03-15 19:18:00'),
(44, 'Cameron Turner', 5, '2016-08-19 17:11:00'),
(45, 'Zoe Phillips', 93, '2010-08-17 07:49:00'),
(46, 'Benjamin Campbell', 70, '2011-04-20 23:27:00'),
(47, 'William Parker', 34, '2016-08-09 04:03:00'),
(48, 'Mila Evans', 73, '2014-09-23 09:36:00'),
(49, 'Eli Edwards', 51, '2003-04-10 12:08:00'),
(50, 'Aaron Collins', 96, '2005-03-10 00:39:00'),
(51, 'Amelia Stewart', 72, '2006-02-17 16:11:00'),
(52, 'Nathan Sanchez', 27, '2009-04-06 08:10:00'),
(53, 'Hudson Morris', 100, '2002-11-09 17:02:00'),
(54, 'Kaylee Rogers', 107, '2000-07-21 11:19:00'),
(55, 'Gianna Reed', 72, '2015-02-08 02:41:00'),
(56, 'Chloe Cook', 121, '2007-10-18 06:05:00'),
(57, 'Charlie Morgan', 9, '2002-09-24 12:37:00'),
(58, 'Alexander Bell', 2, '2004-05-15 22:57:00'),
(59, 'Audrey Murphy', 27, '2007-02-17 00:53:00'),
(60, 'Kylie Bailey', 40, '2014-03-21 06:27:00'),
(61, 'Violet Rivera', 7, '2001-05-14 16:59:00'),
(62, 'Isabelle Cooper', 76, '2004-11-03 16:58:00'),
(63, 'Allison Richardson', 51, '2011-08-17 01:38:00'),
(64, 'Jayce Cox', 72, '2002-07-28 14:53:00'),
(65, 'Leah Howard', 71, '2007-02-25 09:00:00'),
(66, 'Aaliyah Ward', 122, '2007-03-08 12:58:00'),
(67, 'Ian Torres', 75, '2005-10-16 09:20:00'),
(68, 'Sophia Peterson', 22, '2015-07-18 12:42:00'),
(69, 'Carter Gray', 40, '2010-06-02 22:47:00'),
(70, 'Sarah Ramirez', 29, '2008-06-15 11:06:00'),
(71, 'Parker James', 82, '2014-11-26 16:51:00'),
(72, 'Emily Watson', 13, '2008-05-10 14:33:00'),
(73, 'Juliana Brooks', 89, '2010-05-25 20:05:00'),
(74, 'Lillian Kelly', 39, '2005-08-01 02:32:00'),
(75, 'Addison Sanders', 61, '2007-06-07 01:45:00'),
(76, 'Jason Price', 105, '2003-12-05 22:50:00'),
(77, 'Nolan Bennett', 32, '2014-06-12 20:22:00'),
(78, 'Maria Wood', 74, '2015-12-30 14:29:00'),
(79, 'Adalyn Barnes', 10, '2003-12-18 06:40:00'),
(80, 'Cole Ross', 66, '2007-03-19 10:14:00'),
(81, 'Riley Henderson', 99, '2003-11-21 01:28:00'),
(82, 'Paisley Coleman', 104, '2009-09-18 10:57:00'),
(83, 'Jonathan Jenkins', 60, '2012-03-30 06:30:00'),
(84, 'Elliot Perry', 22, '2016-03-10 20:48:00'),
(85, 'Mateo Powell', 5, '2009-11-19 20:54:00'),
(86, 'Camden Long', 26, '2013-12-01 19:24:00'),
(87, 'Elizabeth Patterson', 86, '2008-07-02 16:08:00'),
(88, 'Colton Hughes', 10, '2015-05-10 06:59:00'),
(89, 'Grayson Flores', 112, '2006-11-12 10:44:00'),
(90, 'Wyatt Washington', 63, '2005-08-23 15:55:00'),
(91, 'Harper Butler', 108, '2011-09-09 03:11:00'),
(92, 'Joseph Simmons', 2, '2013-08-14 01:56:00'),
(93, 'Grace Foster', 58, '2001-09-06 08:51:00'),
(94, 'Christopher Gonzales', 125, '2007-08-17 23:57:00'),
(95, 'Xavier Bryant', 15, '2008-03-19 02:47:00'),
(96, 'Asher Alexander', 82, '2009-08-15 01:05:00'),
(97, 'Josiah Russell', 20, '2006-08-28 09:33:00'),
(98, 'James Griffin', 108, '2012-04-30 01:59:00'),
(99, 'Nicholas Diaz', 67, '2014-07-18 11:46:00'),
(100, 'Leo Hayes', 101, '2006-05-27 13:45:00'),
(101, 'Cooper Myers', 26, '2015-11-20 08:17:00'),
(102, 'Austin Ford', 101, '2009-03-24 03:26:00'),
(103, 'Jordyn Hamilton', 7, '2007-10-10 06:57:00'),
(104, 'Easton Graham', 5, '2016-02-18 06:09:00'),
(105, 'Miles Sullivan', 52, '2012-11-30 16:46:00'),
(106, 'Bryson Wallace', 41, '2001-01-23 16:16:00'),
(107, 'Annabelle Woods', 108, '2015-03-26 14:42:00'),
(108, 'Ezra Cole', 56, '2004-08-27 13:05:00'),
(109, 'Levi West', 29, '2006-10-11 03:09:00'),
(110, 'Mackenzie Jordan', 7, '2004-04-05 00:28:00'),
(111, 'Everly Owens', 41, '2003-07-14 21:11:00'),
(112, 'Abigail Reynolds', 65, '2015-01-19 14:09:00'),
(113, 'Bella Fisher', 36, '2010-07-25 18:43:00'),
(114, 'Peyton Ellis', 74, '2007-10-05 01:56:00'),
(115, 'Lila Harrison', 20, '2004-11-26 00:12:00'),
(116, 'Jeremiah Gibson', 30, '2016-10-05 06:13:00'),
(117, 'Hazel Mcdonald', 98, '2007-06-24 01:33:00'),
(118, 'Luna Cruz', 42, '2006-02-20 21:40:00'),
(119, 'Isabella Marshall', 96, '2008-02-05 08:28:00'),
(120, 'Scarlett Ortiz', 113, '2000-05-03 03:13:00'),
(121, 'Sebastian Gomez', 38, '2016-02-20 20:43:00'),
(122, 'Kinsley Murray', 102, '2008-01-29 20:03:00'),
(123, 'Cora Freeman', 29, '2013-04-25 08:29:00'),
(124, 'Owen Wells', 44, '2007-06-01 01:51:00'),
(125, 'Nora Webb', 27, '2010-03-25 21:16:00'),
(126, 'Christian Simpson', 118, '2002-09-02 17:08:00'),
(127, 'Ethan Stevens', 113, '2010-01-18 03:36:00'),
(128, 'Caleb Tucker', 110, '2013-07-23 05:55:00'),
(129, 'Lincoln Porter', 52, '2012-11-11 16:55:00'),
(130, 'Muhammad Hunter', 113, '2000-04-04 16:47:00'),
(131, 'Makayla Hicks', 34, '2003-06-20 08:34:00'),
(132, 'Vivian Crawford', 105, '2002-10-25 07:17:00'),
(133, 'Dylan Henry', 47, '2013-11-20 09:01:00'),
(134, 'Noah Boyd', 61, '2010-12-23 17:25:00'),
(135, 'Damian Mason', 22, '2005-02-02 05:34:00'),
(136, 'Lily Morales', 64, '2009-06-22 08:10:00'),
(137, 'Jack Kennedy', 47, '2001-12-19 05:26:00'),
(138, 'Ella Warren', 114, '2009-03-30 15:06:00'),
(139, 'Julia Dixon', 72, '2003-12-02 00:09:00'),
(140, 'Alex Ramos', 70, '2000-04-06 08:51:00'),
(141, 'Liam Reyes', 56, '2000-12-21 18:44:00'),
(142, 'Claire Burns', 72, '2012-04-17 03:49:00'),
(143, 'Tyler Gordon', 45, '2009-07-28 12:31:00'),
(144, 'Samantha Shaw', 92, '2003-06-29 06:26:00'),
(145, 'Adeline Holmes', 81, '2002-06-06 19:48:00'),
(146, 'Aubrey Rice', 35, '2001-12-26 05:09:00'),
(147, 'Henry Robertson', 36, '2011-11-24 08:44:00'),
(148, 'Madison Hunt', 44, '2002-09-21 04:06:00'),
(149, 'Matthew Black', 38, '2005-10-19 22:24:00'),
(150, 'Brayden Daniels', 80, '2014-07-03 07:17:00'),
(151, 'Michael Palmer', 102, '2006-12-16 03:41:00'),
(152, 'Isaac Mills', 85, '2003-05-22 14:11:00'),
(153, 'Dominic Nichols', 73, '2010-09-24 21:29:00'),
(154, 'Charlotte Grant', 78, '2003-01-29 23:09:00'),
(155, 'Samuel Knight', 13, '2004-08-18 02:13:00'),
(156, 'Elias Ferguson', 9, '2002-10-06 13:47:00'),
(157, 'Carson Rose', 32, '2004-06-27 16:11:00'),
(158, 'Elena Stone', 86, '2006-11-19 04:50:00'),
(159, 'Aiden Hawkins', 90, '2013-06-27 02:08:00'),
(160, 'Savannah Dunn', 22, '2001-09-28 04:20:00'),
(161, 'Andrew Perkins', 1, '2014-10-08 06:43:00'),
(162, 'Anna Hudson', 82, '2015-05-28 18:55:00'),
(163, 'Harrison Spencer', 93, '2004-09-19 22:16:00'),
(164, 'Ryan Gardner', 90, '2008-02-25 20:51:00'),
(165, 'Mia Stephens', 122, '2000-06-15 01:45:00'),
(166, 'Emilia Payne', 18, '2007-12-19 03:55:00'),
(167, 'Victoria Pierce', 89, '2006-05-23 19:24:00'),
(168, 'Jordan Berry', 102, '2002-08-17 02:17:00'),
(169, 'Evan Matthews', 56, '2011-05-24 15:27:00'),
(170, 'Reagan Arnold', 52, '2003-06-16 23:42:00'),
(171, 'Maya Wagner', 65, '2001-10-19 23:51:00'),
(172, 'Eleanor Willis', 53, '2014-07-09 19:48:00'),
(173, 'Oliver Ray', 55, '2015-05-04 08:38:00'),
(174, 'John Watkins', 68, '2004-10-06 05:14:00'),
(175, 'Daniel Olson', 107, '2009-10-19 05:43:00'),
(176, 'Camilla Carroll', 82, '2015-08-16 23:55:00'),
(177, 'Kai Duncan', 18, '2011-10-29 18:00:00'),
(178, 'Callie Snyder', 104, '2011-01-13 15:47:00'),
(179, 'Skyler Hart', 56, '2010-06-03 07:25:00'),
(180, 'Thomas Cunningham', 98, '2014-09-11 18:03:00'),
(181, 'Isaiah Bradley', 109, '2009-11-30 05:55:00'),
(182, 'Melanie Lane', 9, '2014-04-01 21:31:00'),
(183, 'Luke Andrews', 48, '2011-07-12 16:26:00'),
(184, 'Adam Ruiz', 84, '2001-10-14 14:20:00'),
(185, 'Arianna Harper', 103, '2008-06-19 11:11:00'),
(186, 'Gabriel Fox', 47, '2015-09-20 00:21:00'),
(187, 'Joshua Riley', 112, '2015-08-28 19:09:00'),
(188, 'Jayden Armstrong', 112, '2006-02-03 08:47:00'),
(189, 'Eva Carpenter', 35, '2008-04-22 16:16:00'),
(190, 'Chase Weaver', 28, '2007-01-01 21:04:00'),
(191, 'Zachary Greene', 5, '2002-12-26 12:14:00'),
(192, 'Hailey Lawrence', 12, '2003-09-21 04:13:00'),
(193, 'Tristan Elliott', 68, '2002-02-10 07:05:00'),
(194, 'Caden Chavez', 16, '2005-01-11 15:21:00'),
(195, 'Landon Sims', 70, '2007-03-04 08:50:00'),
(196, 'Penelope Austin', 116, '2009-02-04 16:35:00'),
(197, 'Julian Peters', 28, '2009-09-11 11:51:00'),
(198, 'Gavin Kelley', 53, '2006-02-25 13:54:00'),
(199, 'Bailey Franklin', 3, '2003-11-25 16:58:00'),
(200, 'Kennedy Lawson', 59, '2009-05-19 12:26:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idx` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idx` (`name`),
  ADD KEY `fk_author_id` (`author_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_name_idx` (`buyer_name`),
  ADD KEY `book_id_idx` (`book_id`),
  ADD KEY `added_idx` (`added`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
