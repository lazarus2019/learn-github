-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 10:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `nickname` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `join_date` date NOT NULL,
  `is_artist` tinyint(1) NOT NULL DEFAULT 0,
  `follower` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_request` tinyint(1) NOT NULL DEFAULT 0,
  `auth_provider` varchar(25) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `nickname`, `firstname`, `lastname`, `email`, `birthday`, `gender`, `image`, `join_date`, `is_artist`, `follower`, `description`, `is_active`, `is_request`, `auth_provider`, `country_id`) VALUES
(1, 'a', '', 'John Doe', '', '', 'a1', '2021-11-22', '', 'artist1.jpg', '2021-11-22', 1, 12333, '', 1, 0, '', 1),
(2, 'b', '', 'Megan Thee', '', '', 'b2', '2021-11-22', '', 'artist2.jpg', '2021-11-22', 1, 123321, '', 1, 0, '', 1),
(3, 'c', '', 'Jason Aldean', '', '', 'c3', '2021-11-22', '', 'artist3.jpg', '2021-11-22', 1, 12333, '', 1, 0, '', 1),
(4, 'd', '', 'Locash', '', '', 'd4', '2021-11-22', '', 'artist4.jpg', '2021-11-22', 1, 123321, '', 1, 0, '', 1),
(5, 'e', '', 'Summer Walker', '', '', 'e5', '2021-11-22', '', 'artist5.jpg', '2021-11-22', 1, 12333, '', 1, 0, '', 1),
(6, 'f', '', 'Juice WRLD', '', '', 'f6', '2021-11-15', '', 'artist6.jpg', '2021-11-15', 1, 123321, '', 1, 0, '', 1),
(7, 'g', '', 'NLE Choppa ', '', '', 'g7', '2021-11-15', '', 'artist7.jpg', '2021-11-15', 1, 12333, '', 1, 0, '', 1),
(8, 'h', '', 'Stefflon Don', '', '', 'h8', '2021-11-09', '', 'artist8.jpg', '2021-11-09', 1, 123321, '', 1, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_playlist`
--

CREATE TABLE `account_playlist` (
  `playlist_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `is_own` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_role`
--

CREATE TABLE `account_role` (
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_role`
--

INSERT INTO `account_role` (`account_id`, `role_id`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `account_setting`
--

CREATE TABLE `account_setting` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `new_follower` tinyint(1) NOT NULL,
  `package_out_date` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `artist_track`
--

CREATE TABLE `artist_track` (
  `account_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `is_own` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `setting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `account_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `contact_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_type`
--

CREATE TABLE `contact_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_type`
--

INSERT INTO `contact_type` (`id`, `name`) VALUES
(1, 'Error'),
(2, 'Product comments'),
(3, 'Renew, buy Premium'),
(4, 'Content release'),
(5, 'Content cooperation'),
(6, 'Orther problems');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `thumbnail`) VALUES
(1, 'Pop', ''),
(2, 'R&D', ''),
(3, 'Rap', ''),
(4, 'Country', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `account_id`, `message`, `date`, `is_read`) VALUES
(3, 2, 'Your Premium package is nearly expiration date!', '2021-11-19 03:40:13', 1),
(4, 2, 'user0909012 was follow you!', '2021-11-13 03:40:13', 1),
(5, 4, 'Your Premium package is nearly expiration date!', '2021-11-15 03:40:13', 1),
(6, 4, 'user0909012 was follow you!', '2021-11-10 03:40:13', 1),
(13, 1, 'Something wrong!', '2021-11-24 08:53:33', 1),
(14, 1, 'Your Premium package is nearly expiration date!', '2021-11-19 03:40:13', 1),
(15, 1, 'user0909012 was follow you!', '2021-11-13 03:40:13', 0),
(16, 1, 'Your Premium package is nearly expiration date!', '2021-11-15 03:40:13', 0),
(17, 1, 'user0909012 was follow you!', '2021-11-10 03:40:13', 1),
(19, 1, 'New notification!', '2021-11-24 08:54:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_info`
--

CREATE TABLE `package_info` (
  `package_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `publish_date` date NOT NULL,
  `last_updated` date NOT NULL,
  `description` text NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `title`, `thumbnail`, `publish_date`, `last_updated`, `description`, `likes`, `status_id`, `category_id`) VALUES
(1, 'Rocky Pub', 'event1.jpg', '2021-12-31', '2021-12-31', 'good', 0, 1, 3),
(2, 'Elastic Heart', 'event2.jpg', '2021-12-25', '2021-12-25', 'perfect', 0, 1, 3),
(3, 'We Are Born', 'event3.jpg', '2021-12-30', '2021-12-30', 'good', 0, 1, 3),
(4, 'Fearless', 'event4.jpg', '2021-12-27', '2021-12-27', 'perfect', 0, 1, 3),
(5, 'Lover', 'event5.jpg', '2021-12-22', '2021-12-22', 'good', 0, 1, 3),
(6, 'For you', 'event6.jpg', '2021-12-26', '2021-12-26', 'perfect', 0, 1, 3),
(7, 'Rocky Pub', 'event1.jpg', '2021-12-31', '2021-12-31', 'good', 82345, 1, 4),
(8, 'Elastic Heart', 'event2.jpg', '2021-12-25', '2021-12-25', 'perfect', 63464, 1, 4),
(9, 'We Are Born', 'event3.jpg', '2021-12-30', '2021-12-30', 'good', 19087623, 1, 4),
(10, 'Fearless', 'event4.jpg', '2021-12-27', '2021-12-27', 'perfect', 56565, 1, 4),
(11, 'Lover', 'event5.jpg', '2021-12-22', '2021-12-22', 'good', 9546, 1, 4),
(12, 'For you', 'event6.jpg', '2021-12-26', '2021-12-26', 'perfect', 5456, 1, 4),
(13, 'Rocky Pub', 'event1.jpg', '2021-12-31', '2021-12-31', 'good', 123443, 1, 5),
(14, 'Elastic Heart', 'event2.jpg', '2021-12-25', '2021-12-25', 'perfect', 45243, 1, 5),
(15, 'We Are Born', 'event3.jpg', '2021-12-30', '2021-12-30', 'good', 5642, 1, 5),
(16, 'Fearless', 'event4.jpg', '2021-12-27', '2021-12-27', 'perfect', 72321, 1, 5),
(17, 'Lover', 'event5.jpg', '2021-12-22', '2021-12-22', 'good', 123324, 1, 5),
(18, 'For you', 'event6.jpg', '2021-12-26', '2021-10-26', 'perfect', 654342, 1, 5),
(19, 'Fearless', 'event4.jpg', '2021-12-27', '2021-10-27', 'perfect', 72321, 1, 3),
(20, 'Lover', 'event5.jpg', '2021-12-22', '2021-11-22', 'good', 123324, 1, 3),
(21, 'For you', 'event6.jpg', '2021-12-26', '2021-07-26', 'perfect', 654342, 1, 3),
(23, 'new playlist', '00f5a3759e6c4917864370e2d32c4c9b.jpg', '2021-11-26', '2021-11-26', 'something new hehe', 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_category`
--

CREATE TABLE `playlist_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist_category`
--

INSERT INTO `playlist_category` (`id`, `name`) VALUES
(1, 'Recently played'),
(2, 'Favorite song'),
(3, 'Album'),
(4, 'Sleeping '),
(5, 'Party');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_track`
--

CREATE TABLE `playlist_track` (
  `playlist_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'manager'),
(2, 'admin'),
(3, 'user\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `service_package`
--

CREATE TABLE `service_package` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_package`
--

INSERT INTO `service_package` (`id`, `name`, `price`, `duration`, `status`, `description`, `is_delete`) VALUES
(1, 'Basic', 0, 0, 1, 'good', 0),
(2, 'Premium', 9.99, 1, 1, 'good', 0),
(3, 'Pro Premium', 59.99, 6, 1, 'perfect', 0),
(4, 'Starter', 3.99, 1, 0, 'normal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `show_top_chart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `show_top_chart`) VALUES
(1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Public'),
(2, 'Pending'),
(3, 'Hidden');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `lyrics` text NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT current_timestamp(),
  `listens` int(11) NOT NULL DEFAULT 0,
  `base_listens` int(11) NOT NULL DEFAULT 0,
  `weekly_listens` int(11) NOT NULL DEFAULT 0,
  `is_premium` tinyint(1) NOT NULL DEFAULT 0,
  `publish_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `file_name`, `title`, `lyrics`, `thumbnail`, `likes`, `duration`, `listens`, `base_listens`, `weekly_listens`, `is_premium`, `publish_date`, `status_id`, `genres_id`) VALUES
(1, '', 'We don\'t talk anymore', 'test', 'cover1.jpg', 120, 233, 30000, 12000, 25000, 0, '2021-11-23', 1, 1),
(2, '', 'Easy On Me', 'test', 'cover1.jpg', 120, 242, 30000, 29000, 29000, 0, '2021-11-16', 1, 1),
(3, '', 'STAY', 'test', 'cover2.jpg', 120, 214, 31000, 30000, 28000, 0, '2021-11-18', 1, 2),
(4, '', 'Need To Know', 'test', 'cover3.jpg', 120, 214, 32000, 12000, 30000, 0, '2021-11-19', 1, 3),
(5, '', 'Fancy Like', 'test', 'cover4.jpg', 120, 219, 33000, 23000, 23000, 0, '2021-11-19', 1, 4),
(6, '', 'Kiss Me More', 'test', 'cover5.jpg', 120, 202, 34000, 23400, 29000, 0, '2021-11-16', 1, 1),
(7, '', 'You Right', 'test', 'cover6.jpg', 120, 301, 35000, 13464, 12000, 0, '2021-11-18', 1, 2),
(8, '', 'All To Well', 'test', 'cover7.jpg', 120, 256, 36000, 31564, 34000, 0, '2021-11-19', 1, 3),
(9, '', 'MONEY', 'test', 'cover8.jpg', 120, 284, 37000, 29456, 36500, 0, '2021-11-19', 1, 4),
(10, '', 'good 4 u', 'test', 'cover9.jpg', 120, 234, 38000, 34231, 20000, 0, '2021-11-16', 1, 1),
(11, '', 'Mood', 'test', 'cover10.jpg', 120, 265, 39000, 22342, 38000, 0, '2021-11-18', 1, 2),
(12, '', 'THATS WHAT I WANT', 'test', 'cover11.jpg', 120, 238, 40000, 37012, 34000, 0, '2021-11-19', 1, 3),
(13, '', 'Beggin\'', 'test', 'cover12.jpg', 120, 249, 41000, 41010, 25000, 0, '2021-11-19', 1, 4),
(14, '', 'Easy On Me 22222', 'test', 'cover1.jpg', 120, 217, 42000, 40010, 39000, 0, '2021-11-16', 1, 1),
(15, '', 'STAY 22222', 'test', 'cover2.jpg', 120, 222, 43000, 34567, 39500, 0, '2021-11-18', 1, 2),
(16, '', 'Need To Know 22222', 'test', 'cover3.jpg', 120, 229, 44000, 29576, 40000, 0, '2021-11-19', 1, 3),
(17, '', 'Fancy Like 22222', 'test', 'cover4.jpg', 120, 226, 45000, 42123, 44000, 0, '2021-11-19', 1, 4),
(18, '', 'Kiss Me More 22222', 'test', 'cover5.jpg', 120, 232, 46000, 12312, 45900, 0, '2021-11-16', 1, 1),
(19, '', 'You Right 22222', 'test', 'cover6.jpg', 120, 235, 47000, 44321, 28000, 0, '2021-11-18', 1, 2),
(20, '', 'All To Well 22222', 'test', 'cover7.jpg', 120, 241, 48000, 41978, 23000, 0, '2021-11-19', 1, 3),
(21, '', 'MONEY 22222', 'test', 'cover8.jpg', 120, 230, 49000, 32989, 48000, 0, '2021-02-02', 1, 4),
(22, '', 'good 4 u 22222', 'test', 'cover9.jpg', 120, 220, 50000, 12000, 23000, 0, '2021-02-06', 1, 1),
(23, '', 'Mood 22222', 'test', 'cover10.jpg', 120, 234, 51000, 23345, 45000, 0, '2021-11-18', 1, 2),
(24, '', 'THATS WHAT I WANT 22222', 'test', 'cover11.jpg', 120, 221, 52000, 33033, 43000, 0, '2021-11-21', 1, 3),
(25, '', 'Beggin\' 22222', 'test', 'cover12.jpg', 120, 224, 53000, 44984, 29000, 0, '1899-07-03', 1, 4),
(26, '', 'THATS WHAT I WANT 3333333', 'test', 'cover11.jpg', 120, 300, 52000, 18654, 34000, 0, '1899-07-31', 1, 3),
(27, '', 'Beggin\' 333333333', 'test', 'cover12.jpg', 120, 301, 53000, 34908, 34000, 0, '1899-07-12', 1, 4),
(28, '', 'We don\'t talk anymore 333333333', 'test', 'cover1.jpg', 120, 290, 30000, 23098, 25000, 0, '1899-08-09', 1, 1),
(29, '', 'Easy On Me 333333333', 'test', 'cover1.jpg', 120, 199, 30000, 9000, 11000, 0, '1899-10-31', 1, 1),
(30, '', 'STAY 333333333', 'test', 'cover2.jpg', 120, 198, 31000, 23442, 30000, 0, '2021-09-04', 1, 2),
(31, '', 'Need To Know 333333333', 'test', 'cover3.jpg', 120, 236, 32000, 25234, 26000, 0, '2021-11-01', 1, 3),
(32, '', 'Fancy Like 333333333', 'test', 'cover4.jpg', 120, 226, 33000, 31907, 31000, 0, '2021-10-01', 1, 4),
(33, '', 'Kiss Me More 333333333', 'test', 'cover5.jpg', 120, 240, 34000, 34123, 32000, 0, '2021-08-05', 1, 1),
(34, '', 'You Right 333333333', 'test', 'cover6.jpg', 120, 234, 35000, 22022, 25000, 0, '2021-05-29', 1, 2),
(35, '', 'All To Well 333333333', 'test', 'cover7.jpg', 120, 213, 36000, 33903, 34000, 0, '2021-09-03', 1, 3),
(36, '', 'MONEY 333333333', 'test', 'cover8.jpg', 120, 244, 37000, 35123, 13000, 0, '2021-08-11', 1, 4),
(37, '', 'good 4 u 333333333', 'test', 'cover9.jpg', 120, 233, 38000, 33123, 23456, 0, '2021-10-16', 1, 1),
(38, '', 'Mood 333333333', 'test', 'cover10.jpg', 120, 250, 39000, 36867, 34567, 0, '2021-11-18', 1, 2),
(39, '', 'THATS WHAT I WANT 333333333', 'test', 'cover11.jpg', 120, 233, 40000, 39123, 39234, 0, '2021-11-19', 1, 3),
(40, '', 'Beggin\' 333333333', 'test', 'cover12.jpg', 120, 244, 41000, 16098, 38345, 0, '2021-10-19', 1, 4),
(41, '', 'Beggin\' 5555555', 'test', 'cover12.jpg', 120, 241, 53000, 20122, 51567, 0, '1899-07-03', 1, 4),
(42, '', 'THATS WHAT I WANT  5555555', 'test', 'cover11.jpg', 120, 276, 52000, 26345, 49345, 0, '1899-07-31', 1, 3),
(43, '', 'Beggin\'  5555555', 'test', 'cover12.jpg', 120, 263, 53000, 29029, 34555, 0, '1899-07-12', 1, 4),
(44, '', 'We don\'t talk anymore  5555555', 'test', 'cover1.jpg', 120, 252, 30000, 12021, 23555, 0, '1899-08-09', 1, 1),
(45, '', 'Easy On Me  5555555', 'test', 'cover1.jpg', 120, 224, 30000, 22423, 19067, 0, '1899-10-31', 1, 1),
(46, '', 'STAY  5555555', 'test', 'cover2.jpg', 120, 222, 31000, 30000, 29867, 0, '2021-09-04', 1, 2),
(47, '', 'Need To Know  5555555', 'test', 'cover3.jpg', 120, 298, 32000, 29876, 31956, 0, '2021-11-01', 1, 3),
(48, '', 'Fancy Like  5555555', 'test', 'cover4.jpg', 120, 248, 33000, 31098, 123123, 0, '2021-10-01', 1, 4),
(49, '', 'Kiss Me More  5555555', 'test', 'cover5.jpg', 120, 246, 34000, 17980, 22222, 0, '2021-08-05', 1, 1),
(50, '', 'You Right  5555555', 'test', 'cover6.jpg', 120, 239, 35000, 23098, 9086, 0, '2021-05-29', 1, 2),
(51, '', 'All To Well  5555555', 'test', 'cover7.jpg', 120, 230, 36000, 18534, 23422, 0, '2021-09-03', 1, 3),
(52, '', 'MONEY  5555555', 'test', 'cover8.jpg', 120, 246, 37000, 29876, 19876, 0, '2021-08-11', 1, 4),
(53, '', 'good 4 u  5555555', 'test', 'cover9.jpg', 120, 245, 38000, 30984, 15000, 0, '2021-10-16', 1, 1),
(54, '', 'Mood  5555555', 'test', 'cover10.jpg', 120, 225, 39000, 32678, 21784, 0, '2021-11-18', 1, 2),
(55, '', 'THATS WHAT I WANT  5555555', 'test', 'cover11.jpg', 120, 216, 40000, 24986, 23451, 0, '2021-11-19', 1, 3),
(56, '', 'Beggin\' 666666666', 'test', 'cover12.jpg', 120, 244, 41000, 12353, 12093, 0, '2021-10-19', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `account_playlist`
--
ALTER TABLE `account_playlist`
  ADD PRIMARY KEY (`playlist_id`,`account_id`),
  ADD KEY `artist_id` (`playlist_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`account_id`,`role_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `account_setting`
--
ALTER TABLE `account_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist_track`
--
ALTER TABLE `artist_track`
  ADD PRIMARY KEY (`account_id`,`track_id`),
  ADD KEY `artist_id` (`account_id`),
  ADD KEY `song_id` (`track_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_id` (`setting_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`account_id`,`track_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `track_id` (`track_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_type_id` (`contact_type_id`);

--
-- Indexes for table `contact_type`
--
ALTER TABLE `contact_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`account_id`);

--
-- Indexes for table `package_info`
--
ALTER TABLE `package_info`
  ADD PRIMARY KEY (`package_id`,`account_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`category_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `playlist_category`
--
ALTER TABLE `playlist_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_track`
--
ALTER TABLE `playlist_track`
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `song_id` (`track_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_package`
--
ALTER TABLE `service_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genres_id` (`genres_id`),
  ADD KEY `status_id` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_setting`
--
ALTER TABLE `account_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_type`
--
ALTER TABLE `contact_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `playlist_category`
--
ALTER TABLE `playlist_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_package`
--
ALTER TABLE `service_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `account_playlist`
--
ALTER TABLE `account_playlist`
  ADD CONSTRAINT `account_playlist_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `account_playlist_ibfk_3` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);

--
-- Constraints for table `account_role`
--
ALTER TABLE `account_role`
  ADD CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `account_setting`
--
ALTER TABLE `account_setting`
  ADD CONSTRAINT `account_setting_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `artist_track`
--
ALTER TABLE `artist_track`
  ADD CONSTRAINT `artist_track_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`),
  ADD CONSTRAINT `artist_track_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`contact_type_id`) REFERENCES `contact_type` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `package_info`
--
ALTER TABLE `package_info`
  ADD CONSTRAINT `package_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `package_info_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `service_package` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `playlist_category` (`id`),
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `playlist_track`
--
ALTER TABLE `playlist_track`
  ADD CONSTRAINT `playlist_track_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`id`),
  ADD CONSTRAINT `playlist_track_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `track_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
