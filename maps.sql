-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2014 at 08:23 PM
-- Server version: 5.5.40-36.1
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `boknows_hex`
--

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapArray` longtext,
  `mapProperties` longtext,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `mapArray`, `mapProperties`, `name`) VALUES
(5, '[[{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#00FF00","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}],[{"type":"water","units":0,"n":"","s":"#00FF00","nw":"","ne":"","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":[{"row":1,"col":11}],"group":"1"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"","owner":"","color":"","connect":"","group":"1"},{"type":"land","units":0,"n":"#000000","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":[{"row":1,"col":5}],"group":"1"},{"type":"water","n":"","s":"#00FF00","nw":"","ne":"","sw":"#000000","se":"#000000","units":0,"connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":[{"row":1,"col":3}],"group":"3"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"","owner":"","color":"","connect":"","group":"3"},{"type":"land","units":0,"n":"#000000","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"3"},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"#000000","nw":"#000000","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":[{"row":1,"col":1}],"group":"5"},{"type":"water","units":0,"n":"","s":"#00FF00","nw":"","ne":"","sw":"#000000","se":"#00FF00","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#00FF00","s":"","nw":"#00FF00","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}],[{"type":"water","n":"#00FF00","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","units":0,"owner":"","color":"","connect":"","group":""},{"type":"land","units":0,"n":"","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"1"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":"1"},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"1"},{"type":"water","n":"#00FF00","s":"","nw":"#000000","ne":"#000000","sw":"#000000","se":"#000000","units":0,"owner":"","color":"","connect":"","group":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"3"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":"3"},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"3"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"land","units":0,"n":"#000000","s":"","nw":"","ne":"","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"5"},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","units":0,"n":"#00FF00","s":"","nw":"#000000","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""}],[{"type":"water","n":"","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","units":0,"connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"1"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"1"},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"#000000","ne":"#000000","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"#00FF00","nw":"","ne":"#000000","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"3"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"4"},{"type":"land","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"5"},{"type":"water","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""}],[{"type":"water","n":"","s":"","nw":"","ne":"#000000","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"1"},{"type":"water","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"#00FF00","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"#00FF00","nw":"","ne":"","sw":"","se":"#00FF00","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#00FF00","s":"","nw":"#00FF00","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":""},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":[{"row":5,"col":3}],"group":"4"},{"type":"land","units":0,"n":"","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"4"},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"","ne":"#000000","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"5"},{"type":"land","units":0,"n":"#000000","s":"#000000","nw":"","ne":"#000000","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"5"},{"type":"water","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"#000000","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}],[{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"2"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"","owner":"","color":"","connect":"","group":"2"},{"type":"land","units":0,"n":"#000000","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":[{"row":4,"col":6}],"group":"2"},{"type":"water","units":0,"n":"#00FF00","s":"","nw":"#00FF00","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","n":"","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","units":0,"connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"4"},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"4"},{"type":"water","n":"","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","units":0,"connect":"","group":"4","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","owner":"","color":"","connect":"","group":"6"},{"type":"land","units":0,"n":"#000000","s":"","nw":"#000000","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"6"},{"type":"water","units":0,"n":"","s":"","nw":"#000000","ne":"","sw":"#000000","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""}],[{"type":"water","n":"","s":"","nw":"","ne":"#000000","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"","ne":"#000000","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"2"},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"#000000","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"#000000","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"4"},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"#000000","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"#000000","sw":"","se":"#000000","connect":"","group":"","owner":"","color":""},{"type":"land","units":0,"n":"","s":"#000000","nw":"#000000","ne":"","sw":"#000000","se":"#000000","owner":"","color":"","connect":"","group":"6"},{"type":"land","units":0,"n":"","s":"#000000","nw":"","ne":"#000000","sw":"","se":"#000000","owner":"","color":"","connect":"","group":"6"},{"type":"water","n":"","s":"","nw":"#000000","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}],[{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"#000000","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"#000000","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"","ne":"","sw":"","se":"","owner":"","color":"","connect":"","group":""},{"type":"water","units":0,"n":"#000000","s":"","nw":"#000000","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""}],[{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}],[{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","n":"","s":"","nw":"","ne":"","sw":"","se":"","units":0,"connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""},{"type":"water","units":0,"n":"","s":"","nw":"","ne":"","sw":"","se":"","connect":"","group":"","owner":"","color":""}]]', '{"owners": [],"users": [],"colors": [],"turn": 0,"turnPhase": "unitPlacement","hexSize":30,"fortifies": 3,"fortifiesUsed": 0,"rows": 8,"cols": 14,"creator": "", "mapBonus": [{"group":1, "sum":9, "amount":5},{"group":2, "sum":4, "amount":2},{"group":3, "sum":7, "amount":5},{"group":4, "sum":6, "amount":3},{"group":5, "sum":10, "amount":7},{"group":6, "sum":4, "amount":2}]}', 'Default Map');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;