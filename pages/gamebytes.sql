-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 09:17 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamebytes`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bk_id` varchar(8) NOT NULL,
  `id` varchar(8) DEFAULT NULL,
  `g_id` varchar(8) DEFAULT NULL,
  `l_id` varchar(8) DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `book_timestart` varchar(4) DEFAULT NULL,
  `book_timeend` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `center_manager`
--

CREATE TABLE `center_manager` (
  `cm_id` varchar(8) NOT NULL,
  `cm_fname` varchar(20) DEFAULT NULL,
  `cm_lname` varchar(20) DEFAULT NULL,
  `cm_phno` varchar(10) DEFAULT NULL,
  `l_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `center_manager`
--

INSERT INTO `center_manager` (`cm_id`, `cm_fname`, `cm_lname`, `cm_phno`, `l_id`) VALUES
('GBA8Y7', 'Akeem', 'Gutierrez', '7913936703', 'L07'),
('GBC2S5', 'Duncan', 'Stewart', '3038621209', 'L01'),
('GBD0V4', 'Dai', 'Duran', '6488226017', 'L15'),
('GBD2A5', 'Victor', 'Sanchez', '9887866545', 'L25'),
('GBG2P9', 'Mariam', 'Adams', '9539842876', 'L12'),
('GBH2D0', 'Keane', 'Figueroa', '9582635303', 'L04'),
('GBH9P1', 'Cedric', 'French', '7027279637', 'L03'),
('GBJ9C7', 'Jada', 'Brock', '9783493205', 'L06'),
('GBK5V4', 'Harper', 'Summers', '7276037731', 'L18'),
('GBK8A7', 'Wyatt', 'Miranda', '2951835286', 'L10'),
('GBL8I1', 'Brooke', 'Hansen', '6816529903', 'L16'),
('GBN6K1', 'Hilary', 'Parrish', '3803191567', 'L20'),
('GBO4X5', 'Tanya', 'Page', '5795695319', 'L17'),
('GBQ4H4', 'Amena', 'Jackson', '2798665658', 'L09'),
('GBS0S4', 'Macey', 'Wooten', '3568648077', 'L13'),
('GBS8G2', 'Isaiah', 'Stark', '7472799484', 'L14'),
('GBT0M5', 'Yvonne', 'Richards', '7895213350', 'L02'),
('GBT9F9', 'Jarrod', 'Houston', '7463668807', 'L05'),
('GBU1M2', 'Priscilla', 'Stanley', '1596673352', 'L08'),
('GBW5X5', 'Avye', 'Barnes', '4236153784', 'L23'),
('GBY1L0', 'Callum', 'Potts', '3122483563', 'L22'),
('GBY2H6', 'Boris', 'Cantu', '2545412091', 'L24'),
('GBY5U0', 'Christine', 'Patton', '2622690049', 'L19'),
('GBY7Q2', 'Briar', 'Wiggins', '4223399371', 'L21'),
('GBZ1R8', 'Remedios', 'Gross', '8713860810', 'L11');

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `c_id` varchar(8) NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_release` decimal(4,0) DEFAULT NULL,
  `c_href` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`c_id`, `c_name`, `c_release`, `c_href`) VALUES
('PC', 'Desktop', '1990', ''),
('PS3', 'Play Station 3', '2006', ''),
('PS4', 'Play Station 4', '2013', ''),
('Wii', 'Wii', '2006', ''),
('X1', 'Xbox One', '2013', ''),
('X360', 'Xbox 360', '2005', '');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `g_id` varchar(8) NOT NULL,
  `g_name` varchar(30) DEFAULT NULL,
  `g_publisher` varchar(20) DEFAULT NULL,
  `g_price` decimal(4,0) DEFAULT NULL,
  `g_href` varchar(30) DEFAULT NULL,
  `g_release` decimal(4,0) DEFAULT NULL,
  `r_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`g_id`, `g_name`, `g_publisher`, `g_price`, `g_href`, `g_release`, `r_id`) VALUES
('BF1', 'Battlefield 1', 'Electronic Arts', '100', '', '2017', '18'),
('BF4', 'Battlefield 4', 'Electronic Arts', '30', '', '2013', '18'),
('BFH', 'Battlefield: Hardline', 'Electronic Arts', '50', '', '2015', '16'),
('CODBO', 'Call Of Duty: Black Ops', 'Ubisoft', '70', '', '2010', '18'),
('CODBO2', 'Call Of Duty: Black Ops 2', 'Ubisoft', '100', '', '2016', '18'),
('CODG', 'Call Of Duty: Ghosts', 'Ubisoft', '100', '', '2018', '12'),
('CODMW1', 'Call Of Duty: Modern Warfare 1', 'Ubisoft', '20', '', '2007', '16'),
('CODMW2', 'Call Of Duty: Modern Warfare 2', 'Ubisoft', '50', '', '2008', '16'),
('CODMW3', 'Call Of Duty: Modern Warfare 3', 'Ubisoft', '70', '', '2013', '18'),
('CODWW', 'Call Of Duty: World War', 'Ubisoft', '100', '', '2014', '18'),
('CS1.6', 'Counter Strike 1.6', 'Ubisoft', '30', '', '2006', '18'),
('CSGO', 'Counter Strike: Global Offensi', 'Ubisoft', '70', '', '2010', '18'),
('F15', 'Fifa 15', 'Electronic Arts', '30', '', '2014', '3'),
('F16', 'Fifa 16', 'Electronic Arts', '50', '', '2015', '3'),
('F17', 'Fifa 17', 'Electronic Arts', '70', '', '2016', '3'),
('F18', 'Fifa 18', 'Electronic Arts', '100', '', '2017', '3'),
('NFL17', 'NFL 2017', 'Electronic Arts', '50', '', '2016', '3'),
('NFL18', 'NFL 2018', 'Electronic Arts', '70', '', '2017', '3'),
('NFSMW', 'Need For Speed: Most Wanted', 'Electronic Arts', '50', '', '2012', '7'),
('NFSPB', 'Need For Speed: Payback', 'Electronic Arts', '100', '', '2017', '7'),
('TF', 'Titanfall', 'Electronic Arts', '50', '', '2014', '16'),
('UFC3', 'UFC 3', 'Electronic Arts', '100', '', '2018', '12');

-- --------------------------------------------------------

--
-- Table structure for table `game_genre`
--

CREATE TABLE `game_genre` (
  `g_id` varchar(8) NOT NULL,
  `genre_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_genre`
--

INSERT INTO `game_genre` (`g_id`, `genre_id`) VALUES
('BF1', 'Act'),
('BF1', 'Adv'),
('BF4', 'Act'),
('BF4', 'Adv'),
('BFH', 'Act'),
('BFH', 'Sim'),
('CODBO', 'Act'),
('CODBO', 'FPS'),
('CODBO', 'RPG'),
('CODBO2', 'Act'),
('CODBO2', 'FPS'),
('CODBO2', 'RPG'),
('CODG', 'Act'),
('CODG', 'FPS'),
('CODG', 'Str'),
('CODMW1', 'Act'),
('CODMW1', 'FPS'),
('CODMW1', 'Str'),
('CODMW2', 'Act'),
('CODMW2', 'FPS'),
('CODMW2', 'Str'),
('CODMW3', 'Act'),
('CODMW3', 'FPS'),
('CODMW3', 'Str'),
('CODWW', 'Act'),
('CODWW', 'FPS'),
('CODWW', 'Str'),
('CS1.6', 'FPS'),
('CS1.6', 'RPG'),
('CS1.6', 'Str'),
('CSGO', 'FPS'),
('CSGO', 'RPG'),
('CSGO', 'Str'),
('F15', 'RPG'),
('F15', 'Spo'),
('F16', 'RPG'),
('F16', 'Spo'),
('F17', 'RPG'),
('F17', 'Spo'),
('F18', 'RPG'),
('F18', 'Spo'),
('NFL17', 'RPG'),
('NFL17', 'Spo'),
('NFL18', 'RPG'),
('NFL18', 'Spo'),
('NFSMW', 'Adv'),
('NFSMW', 'Rac'),
('NFSPB', 'Adv'),
('NFSPB', 'Rac'),
('TF', 'Adv'),
('TF', 'Sim'),
('UFC3', 'Act'),
('UFC3', 'Sim');

-- --------------------------------------------------------

--
-- Table structure for table `game_location`
--

CREATE TABLE `game_location` (
  `g_id` varchar(8) NOT NULL,
  `l_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_location`
--

INSERT INTO `game_location` (`g_id`, `l_id`) VALUES
('CODMW2', 'L14'),
('CODMW2', 'L16'),
('CODMW2', 'L24'),
('CODMW3', 'L04'),
('CODMW3', 'L05'),
('CODMW3', 'L09'),
('CODMW3', 'L10'),
('CODMW3', 'L12'),
('CODWW', 'L15'),
('CODWW', 'L16'),
('CODWW', 'L17'),
('CS1.6', 'L03'),
('CSGO', 'L01'),
('CSGO', 'L22'),
('F15', 'L03'),
('F15', 'L07'),
('F15', 'L09'),
('F15', 'L22'),
('F15', 'L23'),
('F16', 'L06'),
('F16', 'L07'),
('F16', 'L18'),
('F16', 'L24'),
('F17', 'L06'),
('F17', 'L09'),
('F17', 'L14'),
('F17', 'L21'),
('F18', 'L01'),
('F18', 'L08'),
('F18', 'L20'),
('F18', 'L21'),
('F18', 'L23'),
('F18', 'L24'),
('NFL17', 'L06'),
('NFL17', 'L18'),
('NFL17', 'L19'),
('NFL18', 'L03'),
('NFL18', 'L13'),
('NFSMW', 'L02'),
('NFSMW', 'L04'),
('NFSMW', 'L19'),
('NFSMW', 'L23'),
('NFSPB', 'L05'),
('NFSPB', 'L06'),
('NFSPB', 'L08'),
('NFSPB', 'L09'),
('NFSPB', 'L14'),
('NFSPB', 'L16'),
('NFSPB', 'L21'),
('TF', 'L06'),
('TF', 'L09'),
('TF', 'L14');

-- --------------------------------------------------------

--
-- Table structure for table `game_reviews`
--

CREATE TABLE `game_reviews` (
  `g_r_title` varchar(20) DEFAULT NULL,
  `g_r_review` varchar(50) DEFAULT NULL,
  `g_r_stars` decimal(2,0) DEFAULT NULL,
  `g_id` varchar(8) NOT NULL,
  `m_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_reviews`
--

INSERT INTO `game_reviews` (`g_r_title`, `g_r_review`, `g_r_stars`, `g_id`, `m_id`) VALUES
('HIGHLY RECOMMENDED', 'a purus. Duis elementum, dui quis accumsan convall', '4', 'BF4', 'M08'),
('THE BEST', 'Nullam ut nisi a odio semper cursus. Integer molli', '1', 'CODBO', 'M14'),
('BAD', 'montes, nascetur ridiculus mus. Aenean eget magna.', '3', 'CODBO', 'M24'),
('SPECTACULAR', 'ut, pellentesque eget, dictum placerat, augue. Sed', '2', 'CODBO2', 'M04'),
('AMAZING', 'Ut tincidunt orci quis lectus. Nullam suscipit, es', '1', 'CODG', 'M08'),
('BEST GAME EVER', 'Proin vel arcu eu odio tristique pharetra. Quisque', '4', 'CS1.6', 'M23'),
('AWFUL', 'fames ac turpis egestas. Aliquam fringilla cursus ', '1', 'F16', 'M13'),
('BEST GAME EVER', 'litora torquent per conubia nostra, per inceptos h', '2', 'F16', 'M23'),
('TERRIBLE', 'non, bibendum sed, est. Nunc laoreet lectus quis m', '4', 'F17', 'M13'),
('TERRIBLE', 'scelerisque scelerisque dui. Suspendisse ac metus ', '5', 'F17', 'M17'),
('MUST PLAY', 'luctus felis purus ac tellus. Suspendisse sed dolo', '4', 'F17', 'M24'),
('BAD', 'magna a tortor. Nunc commodo auctor velit. Aliquam', '3', 'F18', 'M01'),
('THE BEST', 'molestie dapibus ligula. Aliquam erat volutpat. Nu', '4', 'F18', 'M05'),
('HIGHLY RECOMMENDED', 'malesuada. Integer id magna et ipsum cursus vestib', '3', 'F18', 'M06'),
('TERRIBLE', 'auctor, velit eget laoreet posuere, enim nisl elem', '3', 'NFL17', 'M01'),
('THE BEST', 'morbi tristique senectus et netus et malesuada fam', '3', 'NFL17', 'M24'),
('HIGHLY RECOMMENDED', 'a, dui. Cras pellentesque. Sed dictum. Proin eget ', '1', 'NFL18', 'M03'),
('MUST PLAY', 'pede, nonummy ut, molestie in, tempus eu, ligula. ', '3', 'NFSMW', 'M22'),
('BEST GAME EVER', 'amet ante. Vivamus non lorem vitae odio sagittis s', '5', 'NFSPB', 'M10'),
('SPECTACULAR', 'sit amet, dapibus id, blandit at, nisi. Cum sociis', '1', 'NFSPB', 'M13'),
('MUST PLAY', 'quis, pede. Praesent eu dui. Cum sociis natoque pe', '5', 'TF', 'M03');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` varchar(8) NOT NULL,
  `genre_name` varchar(20) DEFAULT NULL,
  `genre_desc` varchar(200) DEFAULT NULL,
  `genre_href` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `genre_desc`, `genre_href`) VALUES
('Act', 'Action', 'Action games, as one of the most popular ones currently, provide a great deal of fun for those who do not necessarily need a great story within the game.', ''),
('Adv', 'Adventure', 'These games require you to think before you make a decision that may change the entire course of the game. For those who find enjoyment in playing particular stories this is a genre to try out.', ''),
('FPS', 'FPS', 'First-person shooter (FPS) is a video game genre centered around gun and other weapon-based combat in a first-person perspective; that is, the player experiences the action through the eyes of the pro', ''),
('Rac', 'Racing', 'The racing video game genre is the genre of video games, either in the first-person or third-person perspective, in which the player partakes in a racing competition with any type of land, water, air ', ''),
('RPG', 'RPG', 'RPG is a genre in which player takes control over the character, plays the role, and simply decides its fate. It also involves the growth of the character that is played and allows character customiza', ''),
('Sim', 'Simulators', 'The aim of those games is to simulate specific aspect of real world. And believe me when I say it – there is a simulator game to absolutely everything!', ''),
('Spo', 'Sports', 'Everybody loves a dose of sports games. Whether it’s football, basketball or racing, everyone can find something for themselves. Their aim is to simulate real sports.', ''),
('Str', 'Strategy', 'Strategy video game is a video game that focuses on skillful thinking and planning to achieve victory. It emphasizes strategic, tactical, and sometimes logistical challenges.', '');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` varchar(8) NOT NULL,
  `guest_phno` varchar(10) DEFAULT NULL,
  `guest_fname` varchar(20) DEFAULT NULL,
  `guest_lname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_phno`, `guest_fname`, `guest_lname`) VALUES
('16010524', '7637403807', 'Jena', 'Tran'),
('16060725', '3693612629', 'Irma', 'Hutchinson'),
('16090627', '8859453364', 'Dieter', 'Barlow'),
('16150603', '8485317520', 'Oprah', 'Elliott'),
('16160418', '7571087710', 'Price', 'Henson'),
('16170628', '4178184439', 'Barrett', 'Bradford'),
('16230809', '7297006414', 'Carly', 'Warren'),
('16361101', '6999852919', 'Colt', 'Reynolds'),
('16410722', '9935525803', 'Sylvester', 'Hamilton'),
('16411217', '8567273062', 'Scott', 'Navarro'),
('16451016', '3242009528', 'Montana', 'Wolf'),
('16500506', '9629826971', 'Kirk', 'Day'),
('16510111', '0699056299', 'Adam', 'Ayers'),
('16510820', '8333112118', 'Jasmine', 'Norman'),
('16530311', '1927175402', 'Adena', 'Sargent'),
('16540914', '4023667549', 'Erin', 'Deleon'),
('16550313', '4759556366', 'Brianna', 'Goff'),
('16580320', '8374670438', 'Raphael', 'Mccullough'),
('16580924', '2346625224', 'Lareina', 'Morton'),
('16720226', '7628343404', 'William', 'Keller'),
('16740702', '7765717257', 'Colin', 'Ellis'),
('16740714', '7354936999', 'Sebastian', 'York'),
('16830608', '2296087179', 'Bert', 'Stevens'),
('16830627', '5058784289', 'Sacha', 'Finch'),
('16851121', '9021718392', 'Bruce', 'Maddox'),
('16861206', '4570629459', 'Lionel', 'Charles'),
('16870720', '9484248768', 'Nasim', 'Gardner'),
('16950714', '3199362494', 'Keith', 'Boyle'),
('16951123', '4209070568', 'Kathleen', 'Henry'),
('16951223', '2970349546', 'Gareth', 'Griffith');

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `m_id` varchar(8) DEFAULT NULL,
  `g_id` varchar(8) NOT NULL,
  `points` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_id` varchar(8) NOT NULL,
  `l_name` varchar(10) DEFAULT NULL,
  `l_address` varchar(50) DEFAULT NULL,
  `l_areacode` varchar(6) DEFAULT NULL,
  `l_href` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_id`, `l_name`, `l_address`, `l_areacode`, `l_href`) VALUES
('L01', 'Rogue Game', '14, 2nd B Main, 2nd Stage, Peenya', '560011', ''),
('L02', 'Karma Game', '483, 3, Beml Layt, Rajarajeshwari Nagar', '560001', ''),
('L03', 'Abacus Gam', '6, M S Ramarah Industrial Estate, Mathikere', '560054', ''),
('L04', 'The Vineya', '10, 2 A Cross, 1st Main, 1st Stage, Baseveshwara N', '560079', ''),
('L05', 'Nova Games', '71/7, Kanakapura Main Road, Jaraganahalli, JP Naga', '560078', ''),
('L06', 'The Sapphi', '4, Edgha Bld, B S A Road, Tannery Road', '560005', ''),
('L07', 'The Polar ', '217, 27th Cross, Opp Post Office, Jayanagar', '560011', ''),
('L08', 'The Galler', '63/4, 10th Main, 4th Block, Jayanagar', '560011', ''),
('L09', 'The Silver', 'Block B-2, B B Road,allasandra, Yelahanka', '560065', ''),
('L10', 'The French', '827/6, 827/6 Ramamurthyngrmnrd Bglr-43, Ramamurthy', '560033', ''),
('L11', 'Fire n Ice', '39/c, K R Road, Near Cauvery Ford, Yelachenahalli', '560078', ''),
('L12', 'Ivy Games', '127/2, 4 Main Rajajinagar Indl Town, Near Hyundai ', '560044', ''),
('L13', 'The Tower ', 'Hesraghata, Near Ammaji Kalana Matapa, Hessaraghat', '560088', ''),
('L14', 'Purity Gam', '13/20, New Galic Complex, Apmc Yard, Yeshwanthpur', '560012', ''),
('L15', 'Sunset Gam', '16, NGV, Koramangla', '560014', ''),
('L16', 'The Brimst', '100/1, Arabic College Mn Rd, Opp Bilal Cplx, Venka', '560011', ''),
('L17', 'The Origin', '31, 4th Main, Chamarajpet', '560018', ''),
('L18', 'The Cool C', '11, 5th Main Road, Indiranagar', '560071', ''),
('L19', 'City Plaza', '#22, 12th Main, Indiranagar', '560055', ''),
('L20', 'The Pepper', '#3, Puttenhalli, JP Nagar', '560078', ''),
('L21', 'Basil Game', '75, 6th Cross, RR Nagar', '560071', ''),
('L22', 'The Empero', '654/3d, Thangiamma Rd, R S Palya, Kanakapura', '560011', ''),
('L23', 'Starlight ', 'Hotelmaurya, Race Course Road', '560089', ''),
('L24', 'The Lamb G', '28/29, Mallasandra', '560007', ''),
('L25', 'Shambles G', '9, GC Esquire Center, MG Road', '560001', '');

-- --------------------------------------------------------

--
-- Table structure for table `location_reviews`
--

CREATE TABLE `location_reviews` (
  `l_r_title` varchar(20) DEFAULT NULL,
  `l_r_review` varchar(50) DEFAULT NULL,
  `l_r_stars` decimal(2,0) DEFAULT NULL,
  `l_id` varchar(8) NOT NULL,
  `m_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_reviews`
--

INSERT INTO `location_reviews` (`l_r_title`, `l_r_review`, `l_r_stars`, `l_id`, `m_id`) VALUES
('AMBIANCE ON POINT ', 'libero. Donec consectetuer mauris id sapien. Cras ', '3', 'L01', 'M11'),
('SPECTACULAR', 'massa lobortis ultrices. Vivamus rhoncus. Donec es', '4', 'L04', 'M08'),
('AMBIANCE ON POINT ', 'nascetur ridiculus mus. Proin vel arcu eu odio tri', '1', 'L04', 'M10'),
('AMAZING', 'aliquet molestie tellus. Aenean egestas hendrerit ', '8', 'L04', 'M12'),
('SPECTACULAR', 'mi. Aliquam gravida mauris ut mi. Duis risus odio,', '10', 'L05', 'M04'),
('AWFUL', 'eros. Proin ultrices. Duis volutpat nunc sit amet ', '7', 'L05', 'M09'),
('GOOD', 'imperdiet, erat nonummy ultricies ornare, elit eli', '3', 'L05', 'M18'),
('HIGHLY RECOMMENDED', 'dictum mi, ac mattis velit justo nec ante. Maecena', '1', 'L07', 'M07'),
('BAD', 'orci. Ut sagittis lobortis mauris. Suspendisse ali', '4', 'L07', 'M09'),
('HIGHLY RECOMMENDED', 'urna suscipit nonummy. Fusce fermentum fermentum a', '8', 'L08', 'M05'),
('TERRIBLE', 'at, egestas a, scelerisque sed, sapien. Nunc pulvi', '7', 'L08', 'M13'),
('HIGHLY RECOMMENDED', 'tempus scelerisque, lorem ipsum sodales purus, in ', '5', 'L08', 'M24'),
('TERRIBLE', 'fermentum risus, at fringilla purus mauris a nunc.', '8', 'L10', 'M10'),
('AMAZING', 'vestibulum lorem, sit amet ultricies sem magna nec', '7', 'L10', 'M17'),
('BAD', 'pharetra. Quisque ac libero nec ligula consectetue', '5', 'L11', 'M23'),
('AWFUL', 'euismod est arcu ac orci. Ut semper pretium neque.', '9', 'L12', 'M17'),
('BEST', 'natoque penatibus et magnis dis parturient montes,', '10', 'L13', 'M05'),
('AWFUL', 'orci lacus vestibulum lorem, sit amet ultricies se', '7', 'L15', 'M07'),
('AWFUL', 'a, scelerisque sed, sapien. Nunc pulvinar arcu et ', '3', 'L16', 'M01'),
('HIGHLY RECOMMENDED', 'ac sem ut dolor dapibus gravida. Aliquam tincidunt', '3', 'L16', 'M06'),
('AMBIANCE ON POINT ', 'nunc id enim. Curabitur massa. Vestibulum accumsan', '2', 'L16', 'M13'),
('AMBIANCE ON POINT ', 'turpis. Aliquam adipiscing lobortis risus. In mi p', '10', 'L17', 'M15'),
('AMBIANCE ON POINT ', 'vel est tempor bibendum. Donec felis orci, adipisc', '2', 'L18', 'M10'),
('AWFUL', 'Donec elementum, lorem ut aliquam iaculis, lacus p', '8', 'L18', 'M16'),
('AWFUL', 'dui, in sodales elit erat vitae risus. Duis a mi', '10', 'L19', 'M14'),
('AWFUL', 'urna. Nullam lobortis quam a felis ullamcorper viv', '4', 'L20', 'M13'),
('AMBIANCE ON POINT ', 'dictum eu, placerat eget, venenatis a, magna. Lore', '5', 'L20', 'M19'),
('GOOD', 'porttitor tellus non magna. Nam ligula elit, preti', '9', 'L21', 'M13'),
('HIGHLY RECOMMENDED', 'gravida non, sollicitudin a, malesuada id, erat. E', '1', 'L23', 'M08'),
('HIGHLY RECOMMENDED', 'nibh. Phasellus nulla. Integer vulputate, risus a ', '7', 'L24', 'M03');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` varchar(8) NOT NULL,
  `m_password` varchar(50) NOT NULL,
  `m_phno` varchar(10) DEFAULT NULL,
  `m_fname` varchar(20) DEFAULT NULL,
  `m_lname` varchar(20) DEFAULT NULL,
  `m_address` varchar(100) DEFAULT NULL,
  `m_startdate` date DEFAULT NULL,
  `m_enddate` date DEFAULT NULL,
  `m_href` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `m_password`, `m_phno`, `m_fname`, `m_lname`, `m_address`, `m_startdate`, `m_enddate`, `m_href`) VALUES
('M01', 'hello123', '9035239025', 'Aditya', 'Pandey', 'JP Nagar', '2018-02-01', '2019-02-01', ''),
('M02', 'hello123', '9090112215', 'Aditya', 'Pandey', 'Banashankari', '2018-02-01', '2019-02-01', ''),
('M03', 'hello123', '9035232335', 'Aditya', 'Pandey', 'JP Nagar', '2018-02-01', '2019-02-01', ''),
('M04', 'hello123', '9217800826', 'Danika', 'Unruh', 'JP Nagar', '2018-01-17', '2019-01-17', ''),
('M05', 'hello123', '9337800826', 'Carolyne', 'Durrant', 'Jaya Nagar', '2018-01-17', '2019-01-17', ''),
('M06', 'hello123', '9314800826', 'Rupert', 'Sande', 'RR Nagar', '2018-01-17', '2019-01-17', ''),
('M07', 'hello123', '9314470826', 'Theodore', 'Grego', 'RR Nagar', '2018-01-17', '2019-01-17', ''),
('M08', 'hello123', '9317888826', 'Akilah', 'Rozar', 'RT Nagar', '2018-01-17', '2019-01-17', ''),
('M09', 'hello123', '9317801216', 'Corina', 'Griffy', 'BG Road', '2018-01-17', '2019-01-17', ''),
('M10', 'hello123', '9111822826', 'Liberty', 'Shepard', 'Jaya Nagar', '2018-01-17', '2019-01-17', ''),
('M11', 'hello123', '8277803826', 'Kathel', 'Dalzell', 'RT Nagar', '2018-01-17', '2019-01-17', ''),
('M12', 'hello123', '9112300827', 'Maegan', 'Loth', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M13', 'hello123', '9317812323', 'Erasmo', 'Mendez', 'Koramangla', '2018-01-17', '2019-01-17', ''),
('M14', 'hello123', '9000200822', 'Abbie', 'Varnell', 'Banashankari', '2018-01-17', '2019-01-17', ''),
('M15', 'hello123', '9317833822', 'Mendy', 'Reagan', 'Koramangla', '2018-01-17', '2019-01-17', ''),
('M16', 'hello123', '9317823823', 'Domenica', 'Wellman', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M17', 'hello123', '9317855822', 'Alta', 'Mclendon', 'RR Nagar', '2018-01-17', '2019-01-17', ''),
('M18', 'hello123', '9317854826', 'Eusebia', 'Henegar', 'Banashankari', '2018-01-17', '2019-01-17', ''),
('M19', 'hello123', '9317834827', 'Dot', 'Bolster', 'Indiranagar', '2018-01-17', '2019-01-17', ''),
('M20', 'hello123', '9317842825', 'Larae', 'Mccon', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M21', 'hello123', '9317800826', 'Shemika', 'Janas', 'Indiranagar', '2018-01-17', '2019-01-17', ''),
('M22', 'hello123', '9317855524', 'Vasiliki', 'Quesada', 'JP Nagar', '2018-01-17', '2019-01-17', ''),
('M23', 'hello123', '9317800237', 'Era', 'Bohnert', 'Nagar', '2018-01-17', '2019-01-17', ''),
('M24', 'hello123', '9317240820', 'Jodee', 'Venema', 'JP Nagar', '2018-01-17', '2019-01-17', ''),
('M25', 'hello123', '9317990820', 'Kimberley', 'Cutlip', 'Indiranagar', '2018-01-17', '2019-01-17', ''),
('M26', 'hello123', '9317900877', 'Javier', 'Creager', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M27', 'hello123', '9317910827', 'Frida', 'Castello', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M28', 'hello123', '9317823825', 'Gail', 'Villalba', 'Banashankari', '2018-01-17', '2019-01-17', ''),
('M29', 'hello123', '9317834082', 'Myrle', 'Kimler', 'JP Nagar', '2018-01-17', '2019-01-17', ''),
('M30', 'hello123', '9317303421', 'Thersa', 'Mcdonald', 'Banashankari', '2018-01-17', '2019-01-17', ''),
('M31', 'hello123', '9317840826', 'Charmaine', 'Dupras', 'Kanakapura', '2018-01-17', '2019-01-17', ''),
('M32', 'hello123', '8886740831', 'Mikel', 'Weissinger', 'Banashankari', '2018-01-17', '2019-01-17', '');

-- --------------------------------------------------------

--
-- Table structure for table `pegi_rating`
--

CREATE TABLE `pegi_rating` (
  `r_id` varchar(8) NOT NULL,
  `r_name` varchar(50) DEFAULT NULL,
  `r_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegi_rating`
--

INSERT INTO `pegi_rating` (`r_id`, `r_name`, `r_reason`) VALUES
('12', 'Suitable for persons 12 and older.', 'Contains one or a combination of the following content(s): Bad Language, Violence, Sex, Gambling, Fear'),
('16', 'Suitable for persons 16 and older.', 'Contains one or a combination of the following content(s): Bad Language, Violence, Sex, Drugs, Gambling'),
('18', 'Suitable only for persons 18 and older.', 'Contains one or a combination of the following content(s): Bad Language, Violence, Sex, Drugs, Gambling'),
('3', 'Suitable for persons 3 and older.', 'Contains one or a combination of the following content(s): Online'),
('7', 'Suitable for persons 7 and older.', 'Contains one or a combination of the following content(s): Violence, Fear');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bk_id`),
  ADD KEY `g_id` (`g_id`),
  ADD KEY `l_id` (`l_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `center_manager`
--
ALTER TABLE `center_manager`
  ADD PRIMARY KEY (`cm_id`,`l_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`g_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `game_location`
--
ALTER TABLE `game_location`
  ADD PRIMARY KEY (`g_id`,`l_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD PRIMARY KEY (`g_id`,`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `location_reviews`
--
ALTER TABLE `location_reviews`
  ADD PRIMARY KEY (`l_id`,`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `pegi_rating`
--
ALTER TABLE `pegi_rating`
  ADD PRIMARY KEY (`r_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `game` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `location` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`id`) REFERENCES `member` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `center_manager`
--
ALTER TABLE `center_manager`
  ADD CONSTRAINT `center_manager_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `location` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `pegi_rating` (`r_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `game_genre_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `game` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_location`
--
ALTER TABLE `game_location`
  ADD CONSTRAINT `game_location_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `game` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_location_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `location` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD CONSTRAINT `game_reviews_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `game` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_reviews_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `member` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD CONSTRAINT `leaderboard_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `game` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leaderboard_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `member` (`m_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `location_reviews`
--
ALTER TABLE `location_reviews`
  ADD CONSTRAINT `location_reviews_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `location` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_reviews_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `member` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
