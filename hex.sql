-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2014 at 08:22 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hex`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `mapID` int(7) NOT NULL,
  `gameID` int(7) NOT NULL,
  `game_name` varchar(40) NOT NULL,
  `created` int(16) NOT NULL,
  `ended` int(16) DEFAULT NULL,
  `player_name` varchar(25) NOT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`mapID`, `gameID`, `game_name`, `created`, `ended`, `player_name`, `status`) VALUES
(3, 3, 'test game 1', 1407158474, NULL, 'bo_knows', 'yourTurn'),
(4, 4, 'test game 2', 1407158475, NULL, 'bo_knows', 'invite');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapArray` longtext NOT NULL,
  `mapProperties` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `mapArray`, `mapProperties`) VALUES
(1, '[[{"type":"land","owner":"Bo","units":2},{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"land","owner":"Bo","units":3},{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"water"},{"type":"grass","owner":"Bo","units":3},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"grass","owner":"Bo","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"water"},{"type":"land","owner":"Bo","units":2},{"type":"grass","owner":"Bo","units":1}],[{"type":"desert","owner":"Marlon","units":1},{"type":"grass","owner":"Marlon","units":3},{"type":"water"},{"type":"mountains","owner":"Marlon","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":1},{"type":"desert","owner":"Bo","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":1},{"type":"grass","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":2},{"type":"desert","owner":"Marlon","units":3},{"type":"water"},{"type":"desert","owner":"Bo","units":1},{"type":"desert","owner":"Bo","units":2},{"type":"land","owner":"Marlon","units":3},{"type":"water"},{"type":"desert","owner":"Bo","units":2},{"type":"water"}],[{"type":"land","owner":"Marlon","units":2},{"type":"land","owner":"Marlon","units":1},{"type":"grass","owner":"Marlon","units":3},{"type":"land","owner":"Bo","units":1},{"type":"mountains","owner":"Marlon","units":2},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":1},{"type":"mountains","owner":"Marlon","units":1},{"type":"grass","owner":"Bo","units":2},{"type":"mountains","owner":"Marlon","units":1},{"type":"water"},{"type":"land","owner":"Marlon","units":2},{"type":"grass","owner":"Marlon","units":1},{"type":"desert","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"water"},{"type":"desert","owner":"Marlon","units":3}],[{"type":"desert","owner":"Marlon","units":3},{"type":"desert","owner":"Marlon","units":1},{"type":"land","owner":"Marlon","units":1},{"type":"water"},{"type":"desert","owner":"Bo","units":1},{"type":"land","owner":"Marlon","units":2},{"type":"land","owner":"Marlon","units":1},{"type":"water"},{"type":"water"},{"type":"mountains","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"land","owner":"Bo","units":1},{"type":"mountains","owner":"Bo","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"land","owner":"Bo","units":2},{"type":"desert","owner":"Bo","units":3},{"type":"water"},{"type":"mountains","owner":"Bo","units":3},{"type":"water"},{"type":"water"}],[{"type":"mountains","owner":"Marlon","units":2},{"type":"mountains","owner":"Marlon","units":3},{"type":"water"},{"type":"mountains","owner":"Bo","units":3},{"type":"water"},{"type":"land","owner":"Marlon","units":1},{"type":"water"},{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":1},{"type":"desert","owner":"Bo","units":1},{"type":"desert","owner":"Bo","units":1},{"type":"desert","owner":"Marlon","units":1},{"type":"water"},{"type":"desert","owner":"Bo","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"water"},{"type":"mountains","owner":"Bo","units":3}],[{"type":"grass","owner":"Bo","units":3},{"type":"water"},{"type":"land","owner":"Bo","units":3},{"type":"land","owner":"Bo","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"water"},{"type":"grass","owner":"Bo","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"water"},{"type":"water"},{"type":"desert","owner":"Marlon","units":3},{"type":"desert","owner":"Marlon","units":2},{"type":"desert","owner":"Bo","units":2},{"type":"water"},{"type":"mountains","owner":"Marlon","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"desert","owner":"Bo","units":1},{"type":"land","owner":"Bo","units":3}],[{"type":"grass","owner":"Marlon","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"water"},{"type":"mountains","owner":"Marlon","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"land","owner":"Bo","units":1},{"type":"mountains","owner":"Bo","units":1},{"type":"desert","owner":"Bo","units":3},{"type":"water"},{"type":"desert","owner":"Bo","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"water"},{"type":"desert","owner":"Marlon","units":3}],[{"type":"water"},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"water"},{"type":"water"},{"type":"land","owner":"Bo","units":1},{"type":"desert","owner":"Bo","units":3},{"type":"water"},{"type":"land","owner":"Bo","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"desert","owner":"Bo","units":3}],[{"type":"land","owner":"Bo","units":3},{"type":"water"},{"type":"grass","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"desert","owner":"Bo","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"water"},{"type":"desert","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"mountains","owner":"Marlon","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"grass","owner":"Marlon","units":3}],[{"type":"land","owner":"Marlon","units":3},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"land","owner":"Bo","units":3},{"type":"desert","owner":"Marlon","units":3},{"type":"land","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"land","owner":"Marlon","units":3},{"type":"water"},{"type":"desert","owner":"Bo","units":3},{"type":"mountains","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"water"},{"type":"water"},{"type":"desert","owner":"Bo","units":3},{"type":"grass","owner":"Bo","units":3},{"type":"water"},{"type":"grass","owner":"Bo","units":3}]]', ''),
(3, '[[{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":6,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"water"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"}],[{"type":"land","owner":"bo_knows","units":1,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":23,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"bo_knows","units":26,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"}],[{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":84,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":15,"color":"Orange"},{"type":"water"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":15,"color":"Orange"},{"type":"water"},{"type":"grass","owner":"bo_knows","units":19,"color":"Orange"},{"type":"water"}],[{"type":"water"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":5,"color":"Orange"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":5,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":1,"color":"Orange"},{"type":"water"}],[{"type":"water"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"water"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"}],[{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"water"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"}],[{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"water"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"}],[{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"}],[{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"}],[{"type":"mountains","owner":"Marlon","units":10,"color":"Purple"},{"type":"water"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"water"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"},{"type":"grass","owner":"Marlon","units":10,"color":"Purple"},{"type":"land","owner":"bo_knows","units":10,"color":"Orange"},{"type":"mountains","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"desert","owner":"bo_knows","units":10,"color":"Orange"},{"type":"land","owner":"Marlon","units":10,"color":"Purple"}]]', '{"owners":["bo_knows","Marlon"],"colors":["Orange","Purple"],"turn":0,"turnPhase":"unitPlacement","fortifies":6}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`) VALUES
(1, 'bo_knows', 'ffe62e8fd5f46f83e9e8128a6da2c2664803acb7c3991553624435235a694e56', '3e3e9a66aad3975', 'lawrence.boland@gmail.com'),
(2, 'bo_knows2', 'fd991089c88418f72b1de36436b65c21ab0367a10b83b772d03e3eb59bea3a53', '5f07348f781214cd', 'bo_knows@cfiresim.com'),
(3, 'bo_knows3', '31dc3fec81cd8f8f597457ce93062cc76f277bd73574139043a3cade8949c83b', '76184c807bf18dc9', 'bo@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
