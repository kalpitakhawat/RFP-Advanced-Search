-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 05:44 PM
-- Server version: 5.6.35-log
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfp`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `country_id` int(10) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorr'),
(5, 'Angola'),
(6, 'Anguilla'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Netherland'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Ascension'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Azores'),
(18, 'Bahamas'),
(19, 'Bahrain'),
(20, 'Bangladesh'),
(21, 'Barbados'),
(22, 'Barbuda'),
(23, 'Belarus'),
(24, 'Belgium'),
(25, 'Belize'),
(26, 'Benin'),
(27, 'Bermuda'),
(28, 'Bhutan'),
(29, 'Bolivia'),
(30, 'Bonaire'),
(31, 'Bosnia'),
(32, 'Herzegovina'),
(33, 'Botswana'),
(34, 'Brazil'),
(35, 'British Indian Ocean'),
(36, 'Indian Ocean Terr'),
(37, 'British Virgin Islands'),
(38, 'Islands'),
(39, 'Brunei'),
(40, 'Bulgaria'),
(41, 'Burkina'),
(42, 'Faso Burkina'),
(43, 'Burma (Myanmar)Burma (Myanmar)'),
(44, 'Burundi'),
(45, 'Cambodia (Kampuchea)Cambodia'),
(46, 'Cameroon'),
(47, 'Canada'),
(48, 'Canary Islands'),
(49, 'Cape Verde'),
(50, 'Cayman Islands'),
(51, 'Central African Republic'),
(52, 'African Republic'),
(53, 'Chad'),
(54, 'Channel Islands'),
(55, 'Chile'),
(56, 'China'),
(57, 'Christmas Island'),
(58, 'IslandCocos (Keeling)'),
(59, 'Island'),
(60, 'Colombia'),
(61, 'Comoros'),
(62, 'Congo'),
(63, 'Cook Islands'),
(64, 'Corsica'),
(65, 'Costa Rica'),
(66, 'Croatia'),
(67, 'Cuba'),
(68, 'Curacao'),
(69, 'Cyprus'),
(70, 'Czech Republic'),
(71, 'Denmark'),
(72, 'Dominica'),
(73, 'Dominican Republic'),
(74, 'East Timor'),
(75, 'Ecuador'),
(76, 'Egypt'),
(77, 'El Salvador'),
(78, 'England'),
(79, 'Equatorial Guinea'),
(80, 'Eritrea'),
(81, 'Estonia'),
(82, 'Ethiopia'),
(83, 'Falkland Islands'),
(84, 'Faroe Islands'),
(85, 'Fiji'),
(86, 'Finland'),
(87, 'France'),
(88, 'French Guiana'),
(89, 'French Polynesia'),
(90, 'India'),
(91, 'French Southern/AntarcticFrench'),
(92, 'Southern/Antarctic'),
(93, 'Gabon'),
(94, 'Gambia'),
(95, 'Gaza Strip'),
(96, 'Georgia, Republic'),
(97, 'Germany'),
(98, 'Ghana'),
(99, 'Gibraltar'),
(100, 'Great Britain'),
(101, 'Zimbabwe'),
(102, 'Greece'),
(103, 'Greenland'),
(104, 'Grenada'),
(105, 'Guadeloupe'),
(106, 'Guatemala'),
(107, 'Guernsey'),
(108, 'Guinea'),
(109, 'Guinea-Bissau'),
(110, 'Guyana, British'),
(111, 'Haiti'),
(112, 'Island Heard'),
(113, 'Mcdonald Island'),
(114, 'Holland'),
(115, 'Honduras'),
(116, 'Hong Kong'),
(117, 'Hungary'),
(118, 'Iceland'),
(119, 'Indonesia'),
(120, 'Iran'),
(121, 'VIraq'),
(122, 'Iraq-Saudi'),
(123, 'Neutral Zone'),
(124, 'Republic of Ireland'),
(125, 'Israel'),
(126, 'Italy'),
(127, 'Ivory Coast'),
(128, 'Jamaica'),
(129, 'Japan'),
(130, 'Jersey'),
(131, 'Jordan'),
(132, 'Kampuchea'),
(133, 'Kazakhstan'),
(134, 'Kenya'),
(135, 'Kiribatii'),
(136, 'Korea, North'),
(137, 'Korea, South'),
(138, 'Kosrae'),
(139, 'Kuwait'),
(140, 'Kyrgyzstan'),
(141, 'Laos'),
(142, 'Latvia'),
(143, 'Lebanon'),
(144, 'Lesotho'),
(145, 'Liberia'),
(146, 'Libya'),
(147, 'Liechtenstein'),
(148, 'Lithuania'),
(149, 'Luxembourg'),
(150, 'Macau'),
(151, 'Macedonia'),
(152, 'Madagascar'),
(153, 'Madeira Islands'),
(154, 'Malawi'),
(155, 'Malaysia'),
(156, 'Maldives'),
(157, 'Mali'),
(158, 'Malta'),
(159, 'Martinique'),
(160, 'Mauritania'),
(161, 'Mauritius'),
(162, 'Mexico'),
(163, 'Moldova'),
(164, 'Monaco'),
(165, 'Mongolia'),
(166, 'Montenegro'),
(167, 'Montserrat'),
(168, 'Morocco'),
(169, 'Mozambique'),
(170, 'Myanmar'),
(171, 'Namibia'),
(172, 'Nauru'),
(173, 'Nepal'),
(174, 'Nevis'),
(175, 'New Caledonia'),
(176, 'New Zealand'),
(177, 'Nicaragua'),
(178, 'Niger'),
(179, 'Nigeria'),
(180, 'Niue'),
(181, 'Norfolk'),
(182, 'Northern'),
(183, 'Norway'),
(184, 'Oman'),
(185, 'Pakistan'),
(186, 'Panama'),
(187, 'Vapua New Guinea'),
(188, 'Paraguay'),
(189, 'Peru'),
(190, 'Philippines'),
(191, 'Pitcairn Islands'),
(192, 'Pohnpei'),
(193, 'Poland'),
(194, 'Portugal'),
(195, 'Puerto Rico'),
(196, 'Qatar'),
(197, 'Reunion'),
(198, 'Romania'),
(199, 'Rota'),
(200, 'Russia'),
(201, 'Rwanda'),
(202, 'Saba'),
(203, 'Saipan'),
(204, 'San Marino (Italy)'),
(205, 'Principe'),
(206, 'Saudi Arabia'),
(207, 'Scotland'),
(208, 'Senegal'),
(209, 'Serbia'),
(210, 'Seychelles'),
(211, 'Sierra Leone'),
(212, 'Singapore'),
(213, 'Slovakia'),
(214, 'Slovenia'),
(215, 'Solomon Islands'),
(216, 'Somalia'),
(217, 'South Africa'),
(218, 'Spain'),
(219, 'Sri Lanka'),
(220, 'St. Barthelemy'),
(221, 'St. Christopher'),
(222, 'St. Eustatius'),
(223, 'St. Helena'),
(224, 'St. Kitts'),
(225, 'St. Lucia'),
(226, 'St. Maarten'),
(227, 'St. Martin'),
(228, 'St. Pierre'),
(229, 'St. Vincent'),
(230, 'Sudan'),
(231, 'Suriname'),
(232, 'Svalbard'),
(233, 'Swaziland'),
(234, 'Sweden'),
(235, 'Syria'),
(236, 'Tahiti'),
(237, 'Taiwan'),
(238, 'Tajikistan'),
(239, 'Tanzania'),
(240, 'Thailand'),
(241, 'Tinian'),
(242, 'Togo'),
(243, 'Tokelau'),
(244, 'Tonga'),
(245, 'Tortola'),
(246, 'Trinidad'),
(247, 'Tobago'),
(248, 'Tristan'),
(249, 'Truk'),
(250, 'Tunisia'),
(251, 'Turkey'),
(252, 'Turkmenistan'),
(253, 'Caicos Islands'),
(254, 'Tuvalu'),
(255, 'Uganda'),
(256, 'Ukraine'),
(257, 'Union Island'),
(258, 'United Arab Emirates'),
(259, 'United Kingdom'),
(260, 'United States'),
(261, 'Uruguay'),
(262, 'US Minor Outlying Islands'),
(263, 'Uzbekistan'),
(264, 'Vanuatu'),
(265, 'Venezuela'),
(266, 'Vietnam'),
(267, 'Virgin Islands (British)'),
(268, 'Wake Island'),
(269, 'Wales'),
(270, 'Futuna Islands'),
(271, 'West Bank'),
(272, 'Western Samoa'),
(273, 'Western Saraha'),
(274, 'Yap'),
(275, 'Yemen'),
(276, 'Yugoslavia'),
(277, 'Zaire'),
(278, 'Zambia');

-- --------------------------------------------------------

--
-- Table structure for table `experience_master`
--

CREATE TABLE `experience_master` (
  `level_id` int(1) NOT NULL,
  `level_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience_master`
--

INSERT INTO `experience_master` (`level_id`, `level_name`) VALUES
(1, 'novice'),
(2, 'beginner'),
(3, 'intermediate'),
(4, 'advanced'),
(5, 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `rating_master`
--

CREATE TABLE `rating_master` (
  `rating_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_master`
--

INSERT INTO `rating_master` (`rating_id`, `rating_number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `experience` varchar(15) DEFAULT NULL,
  `experience_level` int(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(15) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `services` varchar(2000) DEFAULT NULL,
  `schedule` varchar(2000) DEFAULT NULL,
  `picture` varchar(2000) DEFAULT NULL,
  `certificate` varchar(2000) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `last_login_date` date DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `user_type` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `first_name`, `last_name`, `password`, `gender`, `birth_date`, `email_id`, `phone_no`, `mobile_no`, `experience`, `experience_level`, `address`, `city`, `postalcode`, `country`, `services`, `schedule`, `picture`, `certificate`, `cost`, `bio`, `join_date`, `last_login_date`, `status`, `user_type`) VALUES
(5, 'yash', 'Raj', '$2y$10$fmjvVHezrEDR3aOzGLL./ubkFm3GJ9sh1kY0iNka6P2UWGzcdG1iu', NULL, '1992-06-12', 'yr@gmail.com', '1234456778', NULL, NULL, NULL, 'jhss hsiagh', 'ottawa', 'k2b 7t2', NULL, 'pt,pc,nu,yg,mt', 'mon-8,tue-10,wed-12,thu-14,fri-16,sat-14,sun-12', '/rfp/image/uploads/Capture.PNG', '/rfp/image/uploads/Capture.PNG', '50.00', 'hi', '2018-03-22', '2018-03-22', NULL, 'r'),
(6, 'j', 'h', '$2y$10$LjIhNQLRFQFR5cnU2/EUS.XHYynGgM7.zGor3Y5pGswVpgQI9luQO', NULL, '1992-06-06', 'jh@gmail.com', '1111111111', NULL, NULL, NULL, 'gfghh', 'ottawa', '712k2b', NULL, 'pt,pc', 'mon-8,tue-10,sat-14,sun-14', '/rfp/image/uploads/Capture.PNG', '/rfp/image/uploads/Capture.PNG', '70', 'hi', '2018-03-22', '2018-03-22', NULL, 'r');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `experience_master`
--
ALTER TABLE `experience_master`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `level_id` (`level_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `experience_level` (`experience_level`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_master`
--
ALTER TABLE `country_master`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `user_master_ibfk_1` FOREIGN KEY (`experience_level`) REFERENCES `experience_master` (`level_id`),
  ADD CONSTRAINT `user_master_ibfk_2` FOREIGN KEY (`country`) REFERENCES `country_master` (`country_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
