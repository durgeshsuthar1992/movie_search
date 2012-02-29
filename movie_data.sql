-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2012 at 05:14 AM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movie_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `Title` text NOT NULL,
  `Director` text NOT NULL,
  `Writer` text NOT NULL,
  `Year` int(11) NOT NULL,
  `Rated` text NOT NULL,
  `Released` text NOT NULL,
  `Genre` text NOT NULL,
  `Actors` text NOT NULL,
  `Plot` text NOT NULL,
  `Runtime` text NOT NULL,
  `Rating` text NOT NULL,
  `ID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Title`, `Director`, `Writer`, `Year`, `Rated`, `Released`, `Genre`, `Actors`, `Plot`, `Runtime`, `Rating`, `ID`) VALUES
('finding nemo', 'Andrew Stanton, Lee Unkrich', 'Andrew Stanton, Andrew Stanton', 2003, 'G', '', 'Animation, Adventure, Comedy, Family', 'Albert Brooks, Ellen DeGeneres, Alexander Gould, Willem Dafoe', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', '1 hr 40 mins', '8.1', 'tt0266543'),
('crouching tiger, hidden dragon', 'N/A', 'N/A', 2003, 'N/A', '', 'Action, Adventure, Drama, Fantasy, Romance', 'Yun-Fat Chow, Michelle Yeoh', 'Control Lu Mu Bi, Shu Lien, Jen, and Dark Cloud as you take part in the story of the film Crouching Tiger, Hidden Dragon. This time however, your actions decide the final ending.', 'N/A', '8.0', 'tt0795363'),
('american dream: the movie', 'Joel Christian McEwen', 'Kurt Engfehr', 2008, 'N/A', '', 'Documentary', 'Danny Glover, Howard Zinn, Ed Begley Jr., Vicki Robin', 'N/A', 'N/A', 'N/A', 'tt1045574');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
