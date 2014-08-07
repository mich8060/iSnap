-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 07, 2014 at 01:46 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `snapme`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `born` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `user_ref` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `profile`
--


-- --------------------------------------------------------

--
-- Table structure for table `simpleurl`
--

CREATE TABLE `simpleurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `function` varchar(255) NOT NULL,
  `premissions` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `simpleurl`
--

INSERT INTO `simpleurl` VALUES(66, 'pages/home', '', '', 0, 1, '', 'iSnap Homepage');
INSERT INTO `simpleurl` VALUES(67, 'pages/listing', '', '', 0, 1, 'page', 'iSnap | Page');
INSERT INTO `simpleurl` VALUES(68, 'pages/register', '', '', 0, 1, 'register', 'Register');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'mich8060', '8d85628db204a4c4665fe3f3a29f8cd0', '8lgiwriUirnk5TO3B7x71wTRtIp2c5X0', 'mich8060@hotmail.com');
