-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2014 at 05:52 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `snapme`
--

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
CREATE TABLE `icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unicode` varchar(255) NOT NULL,
  `html` varchar(255) NOT NULL,
  `css` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=285 ;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` VALUES(1, 'U+1F4DE', '#128222;', '');
INSERT INTO `icons` VALUES(2, 'U+1F4F1', '#128241;', '');
INSERT INTO `icons` VALUES(3, 'U+E789', '#59273;', '');
INSERT INTO `icons` VALUES(4, 'U+E723', '#59171;', '');
INSERT INTO `icons` VALUES(5, 'U+2709', '#9993;', '');
INSERT INTO `icons` VALUES(6, 'U+1F53F', '#128319;', '');
INSERT INTO `icons` VALUES(7, 'U+270E', '#9998;', '');
INSERT INTO `icons` VALUES(8, 'U+2712', '#10002;', '');
INSERT INTO `icons` VALUES(9, 'U+1F4CE', '#128206;', '');
INSERT INTO `icons` VALUES(10, 'U+E777', '#59255;', '');
INSERT INTO `icons` VALUES(11, 'U+E712', '#59154;', '');
INSERT INTO `icons` VALUES(12, 'U+E713', '#59155;', '');
INSERT INTO `icons` VALUES(13, 'U+27A6', '#10150;', '');
INSERT INTO `icons` VALUES(14, 'U+1F464', '#128100;', '');
INSERT INTO `icons` VALUES(15, 'U+1F465', '#128101;', '');
INSERT INTO `icons` VALUES(16, 'U+E700', '#59136;', '');
INSERT INTO `icons` VALUES(17, 'U+E722', '#59170;', '');
INSERT INTO `icons` VALUES(18, 'U+E715', '#59157;', '');
INSERT INTO `icons` VALUES(19, 'U+E724', '#59172;', '');
INSERT INTO `icons` VALUES(20, 'U+E727', '#59175;', '');
INSERT INTO `icons` VALUES(21, 'U+E728', '#59176;', '');
INSERT INTO `icons` VALUES(22, 'U+27A2', '#10146;', '');
INSERT INTO `icons` VALUES(23, 'U+1F3AF', '#127919;', '');
INSERT INTO `icons` VALUES(24, 'U+E73C', '#59196;', '');
INSERT INTO `icons` VALUES(25, 'U+E73E', '#59198;', '');
INSERT INTO `icons` VALUES(26, 'U+2665', 'hearts;', '');
INSERT INTO `icons` VALUES(27, 'U+2661', '#9825;', '');
INSERT INTO `icons` VALUES(28, 'U+2605', '#9733;', '');
INSERT INTO `icons` VALUES(29, 'U+2606', '#9734;', '');
INSERT INTO `icons` VALUES(30, 'U+1F44D', '#128077;', '');
INSERT INTO `icons` VALUES(31, 'U+1F44E', '#128078;', '');
INSERT INTO `icons` VALUES(32, 'U+E720', '#59168;', '');
INSERT INTO `icons` VALUES(33, 'U+E718', '#59160;', '');
INSERT INTO `icons` VALUES(34, 'U+275E', '#10078;', '');
INSERT INTO `icons` VALUES(35, 'U+2302', '#8962;', '');
INSERT INTO `icons` VALUES(36, 'U+E74C', '#59212;', '');
INSERT INTO `icons` VALUES(37, 'U+1F50D', '#128269;', '');
INSERT INTO `icons` VALUES(38, 'U+1F526', '#128294;', '');
INSERT INTO `icons` VALUES(39, 'U+E716', '#59158;', '');
INSERT INTO `icons` VALUES(40, 'U+1F514', '#128276;', '');
INSERT INTO `icons` VALUES(41, 'U+1F517', '#128279;', '');
INSERT INTO `icons` VALUES(42, 'U+2691', '#9873;', '');
INSERT INTO `icons` VALUES(43, 'U+2699', '#9881;', '');
INSERT INTO `icons` VALUES(44, 'U+2692', '#9874;', '');
INSERT INTO `icons` VALUES(45, 'U+1F3C6', '#127942;', '');
INSERT INTO `icons` VALUES(46, 'U+E70C', '#59148;', '');
INSERT INTO `icons` VALUES(47, 'U+1F4F7', '#128247;', '');
INSERT INTO `icons` VALUES(48, 'U+1F4E3', '#128227;', '');
INSERT INTO `icons` VALUES(49, 'U+263D', '#9789;', '');
INSERT INTO `icons` VALUES(50, 'U+1F3A8', '#127912;', '');
INSERT INTO `icons` VALUES(51, 'U+1F342', '#127810;', '');
INSERT INTO `icons` VALUES(52, 'U+266A', '#9834;', '');
INSERT INTO `icons` VALUES(53, 'U+266B', '#9835;', '');
INSERT INTO `icons` VALUES(54, 'U+1F4A5', '#128165;', '');
INSERT INTO `icons` VALUES(55, 'U+1F393', '#127891;', '');
INSERT INTO `icons` VALUES(56, 'U+1F4D5', '#128213;', '');
INSERT INTO `icons` VALUES(57, 'U+1F4F0', '#128240;', '');
INSERT INTO `icons` VALUES(58, 'U+1F45C', '#128092;', '');
INSERT INTO `icons` VALUES(59, 'U+2708', '#9992;', '');
INSERT INTO `icons` VALUES(60, 'U+E788', '#59272;', '');
INSERT INTO `icons` VALUES(61, 'U+E70A', '#59146;', '');
INSERT INTO `icons` VALUES(62, 'U+1F554', '#128340;', '');
INSERT INTO `icons` VALUES(63, 'U+1F3A4', '#127908;', '');
INSERT INTO `icons` VALUES(64, 'U+1F4C5', '#128197;', '');
INSERT INTO `icons` VALUES(65, 'U+26A1', '#9889;', '');
INSERT INTO `icons` VALUES(66, 'U+26C8', '#9928;', '');
INSERT INTO `icons` VALUES(67, 'U+1F4A7', '#128167;', '');
INSERT INTO `icons` VALUES(68, 'U+1F4BF', '#128191;', '');
INSERT INTO `icons` VALUES(69, 'U+1F4BC', '#128188;', '');
INSERT INTO `icons` VALUES(70, 'U+1F4A8', '#128168;', '');
INSERT INTO `icons` VALUES(71, 'U+23F3', '#9203;', '');
INSERT INTO `icons` VALUES(72, 'U+1F6C7', '#128711;', '');
INSERT INTO `icons` VALUES(73, 'U+1F394', '#127892;', '');
INSERT INTO `icons` VALUES(74, 'U+E776', '#59254;', '');
INSERT INTO `icons` VALUES(75, 'U+1F511', '#128273;', '');
INSERT INTO `icons` VALUES(76, 'U+1F50B', '#128267;', '');
INSERT INTO `icons` VALUES(77, 'U+1F4FE', '#128254;', '');
INSERT INTO `icons` VALUES(78, 'U+E7A1', '#59297;', '');
INSERT INTO `icons` VALUES(79, 'U+1F4FD', '#128253;', '');
INSERT INTO `icons` VALUES(80, 'U+2615', '#9749;', '');
INSERT INTO `icons` VALUES(81, 'U+1F680', '#128640;', '');
INSERT INTO `icons` VALUES(82, 'U+E79A', '#59290;', '');
INSERT INTO `icons` VALUES(83, 'U+1F6C6', '#128710;', '');
INSERT INTO `icons` VALUES(84, 'U+1F6C8', '#128712;', '');
INSERT INTO `icons` VALUES(85, 'U+1F30E', '#127758;', '');
INSERT INTO `icons` VALUES(86, 'U+2328', '#9000;', '');
INSERT INTO `icons` VALUES(87, 'U+E74E', '#59214;', '');
INSERT INTO `icons` VALUES(88, 'U+E74D', '#59213;', '');
INSERT INTO `icons` VALUES(89, 'U+E76B', '#59243;', '');
INSERT INTO `icons` VALUES(90, 'U+E76A', '#59242;', '');
INSERT INTO `icons` VALUES(91, 'U+E769', '#59241;', '');
INSERT INTO `icons` VALUES(92, 'U+E768', '#59240;', '');
INSERT INTO `icons` VALUES(93, 'U+1F505', '#128261;', '');
INSERT INTO `icons` VALUES(94, 'U+1F506', '#128262;', '');
INSERT INTO `icons` VALUES(95, 'U+25D1', '#9681;', '');
INSERT INTO `icons` VALUES(96, 'U+E714', '#59156;', '');
INSERT INTO `icons` VALUES(97, 'U+1F4BB', '#128187;', '');
INSERT INTO `icons` VALUES(98, 'U+221E', 'infin;', '');
INSERT INTO `icons` VALUES(99, 'U+1F4A1', '#128161;', '');
INSERT INTO `icons` VALUES(100, 'U+1F4B3', '#128179;', '');
INSERT INTO `icons` VALUES(101, 'U+1F4F8', '#128248;', '');
INSERT INTO `icons` VALUES(102, 'U+2707', '#9991;', '');
INSERT INTO `icons` VALUES(103, 'U+1F4CB', '#128203;', '');
INSERT INTO `icons` VALUES(104, 'U+E73D', '#59197;', '');
INSERT INTO `icons` VALUES(105, 'U+1F4E6', '#128230;', '');
INSERT INTO `icons` VALUES(106, 'U+1F3AB', '#127915;', '');
INSERT INTO `icons` VALUES(107, 'U+E73A', '#59194;', '');
INSERT INTO `icons` VALUES(108, 'U+1F4F6', '#128246;', '');
INSERT INTO `icons` VALUES(109, 'U+1F4FF', '#128255;', '');
INSERT INTO `icons` VALUES(110, 'U+1F4A6', '#128166;', '');
INSERT INTO `icons` VALUES(111, 'U+F601', '#62977;', '');
INSERT INTO `icons` VALUES(112, 'U+1F4C8', '#128200;', '');
INSERT INTO `icons` VALUES(113, 'U+25F4', '#9716;', '');
INSERT INTO `icons` VALUES(114, 'U+1F4CA', '#128202;', '');
INSERT INTO `icons` VALUES(115, 'U+1F53E', '#128318;', '');
INSERT INTO `icons` VALUES(116, 'U+1F512', '#128274;', '');
INSERT INTO `icons` VALUES(117, 'U+1F513', '#128275;', '');
INSERT INTO `icons` VALUES(118, 'U+E741', '#59201;', '');
INSERT INTO `icons` VALUES(119, 'U+E740', '#59200;', '');
INSERT INTO `icons` VALUES(120, 'U+2713', '#10003;', '');
INSERT INTO `icons` VALUES(121, 'U+274C', '#10060;', '');
INSERT INTO `icons` VALUES(122, 'U+229F', '#8863;', '');
INSERT INTO `icons` VALUES(123, 'U+229E', '#8862;', '');
INSERT INTO `icons` VALUES(124, 'U+274E', '#10062;', '');
INSERT INTO `icons` VALUES(125, 'U+2296', '#8854;', '');
INSERT INTO `icons` VALUES(126, 'U+2295', 'oplus;', '');
INSERT INTO `icons` VALUES(127, 'U+2716', '#10006;', '');
INSERT INTO `icons` VALUES(128, 'U+2796', '#10134;', '');
INSERT INTO `icons` VALUES(129, 'U+2795', '#10133;', '');
INSERT INTO `icons` VALUES(130, 'U+232B', '#9003;', '');
INSERT INTO `icons` VALUES(131, 'U+1F6AB', '#128683;', '');
INSERT INTO `icons` VALUES(132, 'U+2139', '#8505;', '');
INSERT INTO `icons` VALUES(133, 'U+E705', '#59141;', '');
INSERT INTO `icons` VALUES(134, 'U+2753', '#10067;', '');
INSERT INTO `icons` VALUES(135, 'U+E704', '#59140;', '');
INSERT INTO `icons` VALUES(136, 'U+26A0', '#9888;', '');
INSERT INTO `icons` VALUES(137, 'U+1F504', '#128260;', '');
INSERT INTO `icons` VALUES(138, 'U+27F3', '#10227;', '');
INSERT INTO `icons` VALUES(139, 'U+27F2', '#10226;', '');
INSERT INTO `icons` VALUES(140, 'U+1F500', '#128256;', '');
INSERT INTO `icons` VALUES(141, 'U+1F519', '#128281;', '');
INSERT INTO `icons` VALUES(142, 'U+21B3', '#8627;', '');
INSERT INTO `icons` VALUES(143, 'U+E717', '#59159;', '');
INSERT INTO `icons` VALUES(144, 'U+1F501', '#128257;', '');
INSERT INTO `icons` VALUES(145, 'U+E771', '#59249;', '');
INSERT INTO `icons` VALUES(146, 'U+21B0', '#8624;', '');
INSERT INTO `icons` VALUES(147, 'U+21C6', '#8646;', '');
INSERT INTO `icons` VALUES(148, 'U+E005', '#57349;', '');
INSERT INTO `icons` VALUES(149, 'U+E003', '#57347;', '');
INSERT INTO `icons` VALUES(150, 'U+268F', '#9871;', '');
INSERT INTO `icons` VALUES(151, 'U+2630', '#9776;', '');
INSERT INTO `icons` VALUES(152, 'U+1F4C4', '#128196;', '');
INSERT INTO `icons` VALUES(153, 'U+E731', '#59185;', '');
INSERT INTO `icons` VALUES(154, 'U+E730', '#59184;', '');
INSERT INTO `icons` VALUES(155, 'U+E736', '#59190;', '');
INSERT INTO `icons` VALUES(156, 'U+E737', '#59191;', '');
INSERT INTO `icons` VALUES(157, 'U+1F304', '#127748;', '');
INSERT INTO `icons` VALUES(158, 'U+1F3AC', '#127916;', '');
INSERT INTO `icons` VALUES(159, 'U+1F3B5', '#127925;', '');
INSERT INTO `icons` VALUES(160, 'U+1F4C1', '#128193;', '');
INSERT INTO `icons` VALUES(161, 'U+E800', '#59392;', '');
INSERT INTO `icons` VALUES(162, 'U+E729', '#59177;', '');
INSERT INTO `icons` VALUES(163, 'U+1F4E4', '#128228;', '');
INSERT INTO `icons` VALUES(164, 'U+1F4E5', '#128229;', '');
INSERT INTO `icons` VALUES(165, 'U+1F4BE', '#128190;', '');
INSERT INTO `icons` VALUES(166, 'U+E778', '#59256;', '');
INSERT INTO `icons` VALUES(167, 'U+2601', '#9729;', '');
INSERT INTO `icons` VALUES(168, 'U+E711', '#59153;', '');
INSERT INTO `icons` VALUES(169, 'U+1F516', '#128278;', '');
INSERT INTO `icons` VALUES(170, 'U+1F4D1', '#128209;', '');
INSERT INTO `icons` VALUES(171, 'U+1F4D6', '#128214;', '');
INSERT INTO `icons` VALUES(172, 'U+25B6', '#9654;', '');
INSERT INTO `icons` VALUES(173, 'U+2016', '#8214;', '');
INSERT INTO `icons` VALUES(174, 'U+25CF', '#9679;', '');
INSERT INTO `icons` VALUES(175, 'U+25A0', '#9632;', '');
INSERT INTO `icons` VALUES(176, 'U+23E9', '#9193;', '');
INSERT INTO `icons` VALUES(177, 'U+23EA', '#9194;', '');
INSERT INTO `icons` VALUES(178, 'U+23EE', '#9198;', '');
INSERT INTO `icons` VALUES(179, 'U+23ED', '#9197;', '');
INSERT INTO `icons` VALUES(180, 'U+E744', '#59204;', '');
INSERT INTO `icons` VALUES(181, 'U+E746', '#59206;', '');
INSERT INTO `icons` VALUES(182, 'U+23F7', '#9207;', '');
INSERT INTO `icons` VALUES(183, 'U+1F50A', '#128266;', '');
INSERT INTO `icons` VALUES(184, 'U+1F507', '#128263;', '');
INSERT INTO `icons` VALUES(185, 'U+1F568', '#128360;', '');
INSERT INTO `icons` VALUES(186, 'U+1F569', '#128361;', '');
INSERT INTO `icons` VALUES(187, 'U+1F56A', '#128362;', '');
INSERT INTO `icons` VALUES(188, 'U+1F56B', '#128363;', '');
INSERT INTO `icons` VALUES(189, 'U+1F56C', '#128364;', '');
INSERT INTO `icons` VALUES(190, 'U+E4AD', '#58541;', '');
INSERT INTO `icons` VALUES(191, 'U+E4B0', '#58544;', '');
INSERT INTO `icons` VALUES(192, 'U+E4AF', '#58543;', '');
INSERT INTO `icons` VALUES(193, 'U+E4AE', '#58542;', '');
INSERT INTO `icons` VALUES(194, 'U+2B05', '#11013;', '');
INSERT INTO `icons` VALUES(195, 'U+2B07', '#11015;', '');
INSERT INTO `icons` VALUES(196, 'U+2B06', '#11014;', '');
INSERT INTO `icons` VALUES(197, 'U+27A1', '#10145;', '');
INSERT INTO `icons` VALUES(198, 'U+E759', '#59225;', '');
INSERT INTO `icons` VALUES(199, 'U+E758', '#59224;', '');
INSERT INTO `icons` VALUES(200, 'U+E75B', '#59227;', '');
INSERT INTO `icons` VALUES(201, 'U+E75A', '#59226;', '');
INSERT INTO `icons` VALUES(202, 'U+25C2', '#9666;', '');
INSERT INTO `icons` VALUES(203, 'U+25BE', '#9662;', '');
INSERT INTO `icons` VALUES(204, 'U+25B4', '#9652;', '');
INSERT INTO `icons` VALUES(205, 'U+25B8', '#9656;', '');
INSERT INTO `icons` VALUES(206, 'U+E75D', '#59229;', '');
INSERT INTO `icons` VALUES(207, 'U+E75C', '#59228;', '');
INSERT INTO `icons` VALUES(208, 'U+E75F', '#59231;', '');
INSERT INTO `icons` VALUES(209, 'U+E75E', '#59230;', '');
INSERT INTO `icons` VALUES(210, 'U+E761', '#59233;', '');
INSERT INTO `icons` VALUES(211, 'U+E760', '#59232;', '');
INSERT INTO `icons` VALUES(212, 'U+E763', '#59235;', '');
INSERT INTO `icons` VALUES(213, 'U+E762', '#59234;', '');
INSERT INTO `icons` VALUES(214, 'U+E765', '#59237;', '');
INSERT INTO `icons` VALUES(215, 'U+E764', '#59236;', '');
INSERT INTO `icons` VALUES(216, 'U+E767', '#59239;', '');
INSERT INTO `icons` VALUES(217, 'U+E766', '#59238;', '');
INSERT INTO `icons` VALUES(218, 'U+2190', 'larr;', '');
INSERT INTO `icons` VALUES(219, 'U+2193', 'darr;', '');
INSERT INTO `icons` VALUES(220, 'U+2191', 'uarr;', '');
INSERT INTO `icons` VALUES(221, 'U+2192', 'rarr;', '');
INSERT INTO `icons` VALUES(222, 'U+E74F', '#59215;', '');
INSERT INTO `icons` VALUES(223, 'U+23F6', '#9206;', '');
INSERT INTO `icons` VALUES(224, 'U+23F5', '#9205;', '');
INSERT INTO `icons` VALUES(225, 'U+23F4', '#9204;', '');
INSERT INTO `icons` VALUES(226, 'U+1F545', '#128325;', '');
INSERT INTO `icons` VALUES(227, 'U+1F546', '#128326;', '');
INSERT INTO `icons` VALUES(228, 'U+1F547', '#128327;', '');
INSERT INTO `icons` VALUES(229, 'U+1F548', '#128328;', '');
INSERT INTO `icons` VALUES(230, 'U+1F549', '#128329;', '');
INSERT INTO `icons` VALUES(231, 'U+1F54A', '#128330;', '');
INSERT INTO `icons` VALUES(232, 'U+1F54B', '#128331;', '');
INSERT INTO `icons` VALUES(233, 'U+1F54C', '#128332;', '');
INSERT INTO `icons` VALUES(234, 'U+1F54D', '#128333;', '');
INSERT INTO `icons` VALUES(235, 'U+1F54E', '#128334;', '');
INSERT INTO `icons` VALUES(236, 'U+1F54F', '#128335;', '');
INSERT INTO `icons` VALUES(237, 'U+1F5F9', '#128505;', '');
INSERT INTO `icons` VALUES(238, 'U+1F5FA', '#128506;', '');
INSERT INTO `icons` VALUES(239, 'U+F300', '#62208;', '');
INSERT INTO `icons` VALUES(240, 'U+F301', '#62209;', '');
INSERT INTO `icons` VALUES(241, 'U+F303', '#62211;', '');
INSERT INTO `icons` VALUES(242, 'U+F304', '#62212;', '');
INSERT INTO `icons` VALUES(243, 'U+F306', '#62214;', '');
INSERT INTO `icons` VALUES(244, 'U+F307', '#62215;', '');
INSERT INTO `icons` VALUES(245, 'U+F309', '#62217;', '');
INSERT INTO `icons` VALUES(246, 'U+F30A', '#62218;', '');
INSERT INTO `icons` VALUES(247, 'U+F30C', '#62220;', '');
INSERT INTO `icons` VALUES(248, 'U+F30D', '#62221;', '');
INSERT INTO `icons` VALUES(249, 'U+F30E', '#62222;', '');
INSERT INTO `icons` VALUES(250, 'U+F30F', '#62223;', '');
INSERT INTO `icons` VALUES(251, 'U+F310', '#62224;', '');
INSERT INTO `icons` VALUES(252, 'U+F312', '#62226;', '');
INSERT INTO `icons` VALUES(253, 'U+F313', '#62227;', '');
INSERT INTO `icons` VALUES(254, 'U+F315', '#62229;', '');
INSERT INTO `icons` VALUES(255, 'U+F316', '#62230;', '');
INSERT INTO `icons` VALUES(256, 'U+F318', '#62232;', '');
INSERT INTO `icons` VALUES(257, 'U+F319', '#62233;', '');
INSERT INTO `icons` VALUES(258, 'U+F31B', '#62235;', '');
INSERT INTO `icons` VALUES(259, 'U+F31C', '#62236;', '');
INSERT INTO `icons` VALUES(260, 'U+F31E', '#62238;', '');
INSERT INTO `icons` VALUES(261, 'U+F31F', '#62239;', '');
INSERT INTO `icons` VALUES(262, 'U+F321', '#62241;', '');
INSERT INTO `icons` VALUES(263, 'U+F322', '#62242;', '');
INSERT INTO `icons` VALUES(264, 'U+F324', '#62244;', '');
INSERT INTO `icons` VALUES(265, 'U+F325', '#62245;', '');
INSERT INTO `icons` VALUES(266, 'U+F327', '#62247;', '');
INSERT INTO `icons` VALUES(267, 'U+F328', '#62248;', '');
INSERT INTO `icons` VALUES(268, 'U+F32A', '#62250;', '');
INSERT INTO `icons` VALUES(269, 'U+F32D', '#62253;', '');
INSERT INTO `icons` VALUES(270, 'U+F330', '#62256;', '');
INSERT INTO `icons` VALUES(271, 'U+F333', '#62259;', '');
INSERT INTO `icons` VALUES(272, 'U+F336', '#62262;', '');
INSERT INTO `icons` VALUES(273, 'U+F339', '#62265;', '');
INSERT INTO `icons` VALUES(274, 'U+F33A', '#62266;', '');
INSERT INTO `icons` VALUES(275, 'U+F33C', '#62268;', '');
INSERT INTO `icons` VALUES(276, 'U+F33F', '#62271;', '');
INSERT INTO `icons` VALUES(277, 'U+F342', '#62274;', '');
INSERT INTO `icons` VALUES(278, 'U+F345', '#62277;', '');
INSERT INTO `icons` VALUES(279, 'U+F348', '#62280;', '');
INSERT INTO `icons` VALUES(280, 'U+F34B', '#62283;', '');
INSERT INTO `icons` VALUES(281, 'U+F34E', '#62286;', '');
INSERT INTO `icons` VALUES(282, 'U+F351', '#62289;', '');
INSERT INTO `icons` VALUES(283, 'U+F354', '#62292;', '');
INSERT INTO `icons` VALUES(284, 'U+F357', '#62295;', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `bg` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `born` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `user_ref` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` VALUES(1, 'mich8060', 'michael-stevens.jpeg', 'designery.jpg', 'Michael Stevens', 'North Salt Lake', 'UT', '84054', 1982, 'Male', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et justo quis erat consequat faucibus eu at sapien. Ut sollicitudin erat non cursus sollicitudin. Donec ultrices tortor quis dolor condimentum, sed hendrerit elit suscipit. Fusce in enim eget neque rutrum placerat.', 'www.michael-stevens.me', 1);

-- --------------------------------------------------------

--
-- Table structure for table `simpleurl`
--

DROP TABLE IF EXISTS `simpleurl`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `simpleurl`
--

INSERT INTO `simpleurl` VALUES(66, 'pages/home', 'snaps_model', 'index', 0, 1, '', 'iSnap Homepage');
INSERT INTO `simpleurl` VALUES(67, 'pages/listing', 'snaps_model', 'page', 0, 1, 'page', 'iSnap | Page');
INSERT INTO `simpleurl` VALUES(68, 'pages/signup', '', '', 0, 1, 'signup', 'Sign up');
INSERT INTO `simpleurl` VALUES(69, 'pages/guide', '', '', 0, 1, 'guide', 'Guide');
INSERT INTO `simpleurl` VALUES(73, 'pages/snaps', 'snaps_model', 'id', 0, 1, '42-eighthourday-com', 'Eight Hour Day');
INSERT INTO `simpleurl` VALUES(74, 'pages/snaps', 'snaps_model', 'id', 0, 1, '43-alwayscreative-net', 'Always Creative - Branding, Responsive Web Development, and Print Design - Houston TX');
INSERT INTO `simpleurl` VALUES(75, 'pages/snaps', 'snaps_model', 'id', 0, 1, '44-exposure-co', 'Create beautiful photo narratives - Exposure');
INSERT INTO `simpleurl` VALUES(76, 'pages/snaps', 'snaps_model', 'id', 0, 1, '45-theclymb-com', 'Home Sweet Oregon');
INSERT INTO `simpleurl` VALUES(77, 'pages/snaps', 'snaps_model', 'id', 0, 1, '39-rileyscycles-co-uk', 'Riley''s Cycles - Bike Shop based in Sherborne, Dorset');
INSERT INTO `simpleurl` VALUES(78, 'pages/snaps', 'snaps_model', 'id', 0, 1, '46-theclymb-com', 'Home Sweet Oregon');
INSERT INTO `simpleurl` VALUES(79, 'pages/snaps', 'snaps_model', 'id', 0, 1, '47-thibaultjorge-com', 'Thibault Jorge, web project manager from Paris');
INSERT INTO `simpleurl` VALUES(80, 'pages/snaps', 'snaps_model', 'id', 0, 1, '48-niice-co', 'Niice. A search engine with taste.');
INSERT INTO `simpleurl` VALUES(81, 'pages/snaps', 'snaps_model', 'id', 0, 1, '49-grovemade-com', 'Grovemade');
INSERT INTO `simpleurl` VALUES(82, 'pages/snaps', 'snaps_model', 'id', 0, 1, '50-threatstream-com', 'Home | ThreatStream');
INSERT INTO `simpleurl` VALUES(83, 'pages/snaps', 'snaps_model', 'id', 0, 1, '51-thenothingapp-com', 'The Nothing App');
INSERT INTO `simpleurl` VALUES(84, 'pages/snaps', 'snaps_model', 'id', 0, 1, '52-medium-com', 'How I Got from Idea to Product Hunt in 4 Hours — Medium');
INSERT INTO `simpleurl` VALUES(85, 'pages/snaps', 'snaps_model', 'id', 0, 1, '53-facebook-com', 'Paper | Stories from Facebook');
INSERT INTO `simpleurl` VALUES(86, 'pages/snaps', 'snaps_model', 'id', 0, 1, '54-iconmonstr-com', 'iconmonstr - Free simple icons for your next project');
INSERT INTO `simpleurl` VALUES(87, 'pages/snaps', 'snaps_model', 'id', 0, 1, '55-union-co', 'Digital Marketing Agency | Charlotte, NC | UNION');
INSERT INTO `simpleurl` VALUES(88, 'pages/snaps', 'snaps_model', 'id', 0, 1, '56-hugeinc-com', 'Huge. Digital agency. Digital business, design, marketing, technology');
INSERT INTO `simpleurl` VALUES(89, 'pages/snaps', 'snaps_model', 'id', 0, 1, '57-captaindash-com', 'Captain Dash');
INSERT INTO `simpleurl` VALUES(90, 'pages/snaps', 'snaps_model', 'id', 0, 1, '58-squarespace-com', 'Build a Website — Squarespace');
INSERT INTO `simpleurl` VALUES(91, 'pages/snaps', 'snaps_model', 'id', 0, 1, '59-krystalrae-com', 'KRYSTALRAE');
INSERT INTO `simpleurl` VALUES(92, 'pages/snaps', 'snaps_model', 'id', 0, 1, '60-daumandco-com', 'DAUM&amp;CO | Home');
INSERT INTO `simpleurl` VALUES(93, 'pages/snaps', 'snaps_model', 'id', 0, 1, '61-fruute-com', 'Gourmet Cookies | gift baskets | corporate gifts | gourmet cookies - fruute');
INSERT INTO `simpleurl` VALUES(95, 'pages/snaps', 'snaps_model', 'id', 0, 1, '63-thecut-net-au', 'Branding, Graphic Design, Advertising, Websites, Django Application Development - Perth WA - The Cut Creative');
INSERT INTO `simpleurl` VALUES(96, 'pages/snaps', 'snaps_model', 'id', 0, 1, '64-shop-ugmonk-com', 'Ugmonk');
INSERT INTO `simpleurl` VALUES(97, 'pages/snaps', 'snaps_model', 'id', 0, 1, '65-exposure-co', 'Create beautiful photo narratives - Exposure');
INSERT INTO `simpleurl` VALUES(98, 'pages/snaps', 'snaps_model', 'id', 0, 1, '66-anck-tv', 'Renaud Futterer — Design / Direction');
INSERT INTO `simpleurl` VALUES(99, 'pages/snaps', 'snaps_model', 'id', 0, 1, '67-ui8-net', 'UI8 | Carefully Crafted UI Design Assets');
INSERT INTO `simpleurl` VALUES(100, 'pages/snaps', 'snaps_model', 'id', 0, 1, '68-flowhub-io', 'Flowhub - Peer-to-peer full-stack visual programming for your fingers | Flowhub');
INSERT INTO `simpleurl` VALUES(101, 'pages/snaps', 'snaps_model', 'id', 0, 1, '69-piotrkwiatkowski-co-uk', 'Piotr Kwiatkowski - User Interface Designer');
INSERT INTO `simpleurl` VALUES(102, 'pages/snaps', 'snaps_model', 'id', 0, 1, '70-squarespace-com', 'Build a Website - Squarespace');
INSERT INTO `simpleurl` VALUES(103, 'pages/snaps', 'snaps_model', 'id', 0, 1, '71-alwayscreative-net', 'Always Creative - Branding, Responsive Web Development, and Print Design - Houston TX');
INSERT INTO `simpleurl` VALUES(104, 'pages/snaps', 'snaps_model', 'id', 0, 1, '72-studiomds-co', 'Work « Studio Mds');
INSERT INTO `simpleurl` VALUES(105, 'pages/snaps', 'snaps_model', 'id', 0, 1, '73-getuikit-com', 'UIkit');
INSERT INTO `simpleurl` VALUES(106, 'pages/snaps', 'snaps_model', 'id', 0, 1, '74-2011-buildconf-com', 'Workshops — Build 2011');
INSERT INTO `simpleurl` VALUES(107, 'pages/snaps', 'snaps_model', 'id', 0, 1, '75-2012-buildconf-com', 'Build 2012');
INSERT INTO `simpleurl` VALUES(108, 'pages/snaps', 'snaps_model', 'id', 0, 1, '76-2013-buildconf-com', 'Build · 11–14 November 2013 · Belfast');
INSERT INTO `simpleurl` VALUES(109, 'pages/snaps', 'snaps_model', 'id', 0, 1, '77-bellbros-com', 'Bell Brothers');
INSERT INTO `simpleurl` VALUES(110, 'pages/snaps', 'snaps_model', 'id', 0, 1, '78-boxx-hk', 'SUM HING CARTON BOX FACTORY ????? - CARTON BOX | BOX | CORRUGATED BOX | ?? | ?? | ????');
INSERT INTO `simpleurl` VALUES(111, 'pages/snaps', 'snaps_model', 'id', 0, 1, '79-followbubble-com', 'Follow Bubble');
INSERT INTO `simpleurl` VALUES(112, 'pages/snaps', 'snaps_model', 'id', 0, 1, '80-symbolset-com', 'Symbolset - Turn words into icons using font magic');
INSERT INTO `simpleurl` VALUES(113, 'pages/snaps', 'snaps_model', 'id', 0, 1, '81-hatchbuck-com', 'Sales and Marketing Software for Small Business - Hatchbuck');
INSERT INTO `simpleurl` VALUES(114, 'pages/snaps', 'snaps_model', 'id', 0, 1, '82-joshuablankenship-com', 'Joshua Blankenship');
INSERT INTO `simpleurl` VALUES(115, 'pages/snaps', 'snaps_model', 'id', 0, 1, '83-upperdog-se', 'UPPERDOG - Web Agency in Stockholm');
INSERT INTO `simpleurl` VALUES(116, 'pages/snaps', 'snaps_model', 'id', 0, 1, '84-getfinch-com', 'FINCH - Designer, Writer, Human');
INSERT INTO `simpleurl` VALUES(117, 'pages/snaps', 'snaps_model', 'id', 0, 1, '85-builtwithmomentum-com', 'Web Design &amp; Web Development Colchester | momentum');
INSERT INTO `simpleurl` VALUES(118, 'pages/snaps', 'snaps_model', 'id', 0, 1, '86-developers-squarespace-com', 'Squarespace Developer Center');
INSERT INTO `simpleurl` VALUES(119, 'pages/snaps', 'snaps_model', 'id', 0, 1, '87-themetrust-com', 'Craft');
INSERT INTO `simpleurl` VALUES(120, 'pages/snaps', 'snaps_model', 'id', 0, 1, '88-aworkinglibrary-com', 'A Working Library');
INSERT INTO `simpleurl` VALUES(121, 'pages/snaps', 'snaps_model', 'id', 0, 1, '89-mandrill-com', 'Transactional Email from MailChimp - Mandrill');
INSERT INTO `simpleurl` VALUES(122, 'pages/snaps', 'snaps_model', 'id', 0, 1, '90-consumerbarometer-com', 'CONSUMER BAROMETER - insights in online &amp; offline purchase behavior');
INSERT INTO `simpleurl` VALUES(123, 'pages/snaps', 'snaps_model', 'id', 0, 1, '91-diehlgroup-com', 'DGA | Diehl Group Architects');
INSERT INTO `simpleurl` VALUES(124, 'pages/snaps', 'snaps_model', 'id', 0, 1, '92-colingrist-com', 'Blog – Colin Grist – Website Designer, Developer and General Rambler');
INSERT INTO `simpleurl` VALUES(125, 'pages/snaps', 'snaps_model', 'id', 0, 1, '93-fruute-com', 'Gourmet Tarts | gift baskets | corporate gifts | gourmet cookies - fruute');
INSERT INTO `simpleurl` VALUES(126, 'pages/snaps', 'snaps_model', 'id', 0, 1, '94-arias-ca', 'David Arias – Branding and Design / Freelance Graphic Designer / Vancouver, Canada');
INSERT INTO `simpleurl` VALUES(127, 'pages/snaps', 'snaps_model', 'id', 0, 1, '95-simplehonestwork-com', 'Simple.Honest.Work.');
INSERT INTO `simpleurl` VALUES(130, 'pages/snaps', 'snaps_model', 'id', 0, 1, '98-gv-com', 'Google Ventures');
INSERT INTO `simpleurl` VALUES(131, 'pages/snaps', 'snaps_model', 'id', 0, 1, '99-kaestle-ski-com', 'KÄSTLE Ski - Pure Alpine Performance');
INSERT INTO `simpleurl` VALUES(133, 'pages/snaps', 'snaps_model', 'id', 0, 1, '101-ff0000-com', 'RED Interactive | A Digital Agency');
INSERT INTO `simpleurl` VALUES(134, 'pages/snaps', 'snaps_model', 'id', 0, 1, '102-campaignmonitor-com', 'Send beautiful email newsletters with Campaign Monitor');
INSERT INTO `simpleurl` VALUES(135, 'pages/snaps', 'snaps_model', 'id', 0, 1, '103-stinkdigital-com', 'Stinkdigital - Home');
INSERT INTO `simpleurl` VALUES(136, 'pages/snaps', 'snaps_model', 'id', 0, 1, '104-socketstudios-com', 'Socket Studios 2013');
INSERT INTO `simpleurl` VALUES(137, 'pages/snaps', 'snaps_model', 'id', 0, 1, '105-designspiration-net', 'Designspiration');
INSERT INTO `simpleurl` VALUES(138, 'pages/snaps', 'snaps_model', 'id', 0, 1, '106-luiskonrad-com', 'Luís Konrad');
INSERT INTO `simpleurl` VALUES(139, 'pages/snaps', 'snaps_model', 'id', 0, 1, '107-a-g-com', 'allen &amp; gerritsen | a&amp;g');
INSERT INTO `simpleurl` VALUES(140, 'pages/snaps', 'snaps_model', 'id', 0, 1, '108-a-glabs-com', 'a&amp;g Labs');
INSERT INTO `simpleurl` VALUES(141, 'pages/snaps', 'snaps_model', 'id', 0, 1, '109-tapmates-com', 'Tapmates Inc.');
INSERT INTO `simpleurl` VALUES(142, 'pages/snaps', 'snaps_model', 'id', 0, 1, '110-webzap-uiparade-com', 'WebZap - Photoshop panel plugin for web developers');
INSERT INTO `simpleurl` VALUES(143, 'pages/snaps', 'snaps_model', 'id', 0, 1, '111-designbyface-com', 'Face. Design Bureau.');
INSERT INTO `simpleurl` VALUES(144, 'pages/snaps', 'snaps_model', 'id', 0, 1, '112-r-ny-com', 'R&amp;Co. Design');
INSERT INTO `simpleurl` VALUES(145, 'pages/snaps', 'snaps_model', 'id', 0, 1, '113-wildandfearless-com', 'Aaron Robbs');
INSERT INTO `simpleurl` VALUES(146, 'pages/snaps', 'snaps_model', 'id', 0, 1, '114-typecode-com', 'Type/Code - from 2010 till ?');
INSERT INTO `simpleurl` VALUES(147, 'pages/snaps', 'snaps_model', 'id', 0, 1, '115-elabs-se', 'Elabs - Agile Web Developers using Ruby on Rails in Gothenburg, Sweden');
INSERT INTO `simpleurl` VALUES(148, 'pages/snaps', 'snaps_model', 'id', 0, 1, '116-triplagent-com', 'TriplAgent');
INSERT INTO `simpleurl` VALUES(149, 'pages/snaps', 'snaps_model', 'id', 0, 1, '117-mydirtydesk-com', 'MyDirtyDesk - web designers, web developers, front-end and Drupal developers');
INSERT INTO `simpleurl` VALUES(150, 'pages/snaps', 'snaps_model', 'id', 0, 1, '118-perspectivemockups-com', 'Photoshop Perspective Mockups Plugin');
INSERT INTO `simpleurl` VALUES(151, 'pages/snaps', 'snaps_model', 'id', 0, 1, '119-boy-coy-com', 'Boy-Coy - Creative Design Studio - Mobile &amp; Web');
INSERT INTO `simpleurl` VALUES(152, 'pages/snaps', 'snaps_model', 'id', 0, 1, '120-envylabs-com', 'Envy Labs');
INSERT INTO `simpleurl` VALUES(153, 'pages/snaps', 'snaps_model', 'id', 0, 1, '121-svenread-com', 'CSS Typography cheat sheet');
INSERT INTO `simpleurl` VALUES(154, 'pages/snaps', 'snaps_model', 'id', 0, 1, '122-snazzymaps-com', 'Snazzy Maps - Free Styles for Google Maps');
INSERT INTO `simpleurl` VALUES(155, 'pages/snaps', 'snaps_model', 'id', 0, 1, '123-elegantseagulls-com', 'Portfolio | Elegant Seagulls - A Creative Agency | Web &amp; App Design, Branding, Marketing &amp; E Commerce');
INSERT INTO `simpleurl` VALUES(156, 'pages/snaps', 'snaps_model', 'id', 0, 1, '124-volpelino-com', 'Petra Sell – volpelino.com');
INSERT INTO `simpleurl` VALUES(157, 'pages/snaps', 'snaps_model', 'id', 0, 1, '125-saus-co', 'Saus.co');
INSERT INTO `simpleurl` VALUES(158, 'pages/snaps', 'snaps_model', 'id', 0, 1, '126-exposure-co', 'Create beautiful photo narratives - Exposure');
INSERT INTO `simpleurl` VALUES(159, 'pages/snaps', 'snaps_model', 'id', 0, 1, '127-railman-viktorhanacek-cz', 'RailMan — Clean WordPress Theme for Photography-addicted Writers');
INSERT INTO `simpleurl` VALUES(160, 'pages/snaps', 'snaps_model', 'id', 0, 1, '128-theflov-com', 'CAB4YOU | FLOV Creative Agency');
INSERT INTO `simpleurl` VALUES(161, 'pages/snaps', 'snaps_model', 'id', 0, 1, '129-medialoot-com', 'Document');
INSERT INTO `simpleurl` VALUES(162, 'pages/snaps', 'snaps_model', 'id', 0, 1, '130-ambercreative-co', 'Meet higher standards in UI/UX design | Amber Creative');
INSERT INTO `simpleurl` VALUES(163, 'pages/snaps', 'snaps_model', 'id', 0, 1, '131-thelifecycle-roblutter-com', 'The Lifecycle Adventure | Rob Lutter');
INSERT INTO `simpleurl` VALUES(164, 'pages/snaps', 'snaps_model', 'id', 0, 1, '132-madeawkward-com', 'Awkward — We create digital products.');
INSERT INTO `simpleurl` VALUES(165, 'pages/snaps', 'snaps_model', 'id', 0, 1, '133-labfiftyfive-com', 'Lab Fiftyfive - Creators of fine internet products');
INSERT INTO `simpleurl` VALUES(166, 'pages/snaps', 'snaps_model', 'id', 0, 1, '134-heymosaic-com', 'Mosaic');
INSERT INTO `simpleurl` VALUES(167, 'pages/snaps', 'snaps_model', 'id', 0, 1, '135-pierrickcalvez-com', 'Pierrick Calvez Studio');
INSERT INTO `simpleurl` VALUES(168, 'pages/snaps', 'snaps_model', 'id', 0, 1, '136-humaan-com', 'Ideas &amp; Insights – The Humaan blog');
INSERT INTO `simpleurl` VALUES(169, 'pages/snaps', 'snaps_model', 'id', 0, 1, '137-awsme-me', 'Timothy Achumba - Interface Designer » Scribbles');
INSERT INTO `simpleurl` VALUES(170, 'pages/snaps', 'snaps_model', 'id', 0, 1, '138-joeyrabbitt-com', 'Joey Rabbitt, Digital Designer');
INSERT INTO `simpleurl` VALUES(171, 'pages/snaps', 'snaps_model', 'id', 0, 1, '139-scotch-soda-com', 'Portraits | Scotch &amp; Soda');
INSERT INTO `simpleurl` VALUES(172, 'pages/snaps', 'snaps_model', 'id', 0, 1, '140-weareanonymous-fr', 'Anonymous / Home - Digital production company');
INSERT INTO `simpleurl` VALUES(173, 'pages/snaps', 'snaps_model', 'id', 0, 1, '141-buy-alwaysreadthemanual-com', 'The Manual');
INSERT INTO `simpleurl` VALUES(175, 'pages/snaps', 'snaps_model', 'id', 0, 1, '143-cargocollective-com', 'KITCHEN AID - Caio Rogério');
INSERT INTO `simpleurl` VALUES(176, 'pages/snaps', 'snaps_model', 'id', 0, 1, '144-aar-n-com', 'Aa. Selected Work');
INSERT INTO `simpleurl` VALUES(178, 'pages/snaps', 'snaps_model', 'id', 0, 1, '146-saturdaysnyc-com', 'SATURDAYS - NEW YORK CITY');
INSERT INTO `simpleurl` VALUES(179, 'pages/snaps', 'snaps_model', 'id', 0, 1, '147-ucdarchitecture-ie', 'UCD School of Architecture - Timeline');
INSERT INTO `simpleurl` VALUES(180, 'pages/snaps', 'snaps_model', 'id', 0, 1, '148-carolynsinger-com', 'Carolyn Singer - Garden Designer');
INSERT INTO `simpleurl` VALUES(181, 'pages/snaps', 'snaps_model', 'id', 0, 1, '149-tylerbuilds-co', 'Tyler Smith | Portfolio');
INSERT INTO `simpleurl` VALUES(182, 'pages/snaps', 'snaps_model', 'id', 0, 1, '150-budnitzbicycles-com', 'No.1 Titanium and Steel City Bike | Order | Budnitz Bicycles Store');
INSERT INTO `simpleurl` VALUES(183, 'pages/snaps', 'snaps_model', 'id', 0, 1, '151-plasso-co', 'Plasso');
INSERT INTO `simpleurl` VALUES(184, 'pages/snaps', 'snaps_model', 'id', 0, 1, '152-yourkarma-com', 'Karma');
INSERT INTO `simpleurl` VALUES(185, 'pages/snaps', 'snaps_model', 'id', 0, 1, '153-designmadeingermany-de', 'DMIG 13-1');
INSERT INTO `simpleurl` VALUES(186, 'pages/snaps', 'snaps_model', 'id', 0, 1, '154-danedwards-me', 'Dan Edwards - Freelance Web Designer');
INSERT INTO `simpleurl` VALUES(187, 'pages/snaps', 'snaps_model', 'id', 0, 1, '155-budnitzbicycles-com', 'Budnitz Bicycles | High end titanium and steel city bikes, cycling apparel, components, and accessories');
INSERT INTO `simpleurl` VALUES(188, 'pages/snaps', 'snaps_model', 'id', 0, 1, '156-jardan-com-au', 'Jardan Furniture | Designed and made in Melbourne');
INSERT INTO `simpleurl` VALUES(189, 'pages/snaps', 'snaps_model', 'id', 0, 1, '157-anotherpony-com', 'Another Pony - Digital craft for screens and galleries');
INSERT INTO `simpleurl` VALUES(190, 'pages/snaps', 'snaps_model', 'id', 0, 1, '158-pltts-me', 'PLTTS - Popular');
INSERT INTO `simpleurl` VALUES(191, 'pages/snaps', 'snaps_model', 'id', 0, 1, '159-hex-colorrrs-com', 'HEX to RGB Converter');
INSERT INTO `simpleurl` VALUES(192, 'pages/snaps', 'snaps_model', 'id', 0, 1, '160-proclaim-se', 'Proclaim Design | Graphic Design from Stockholm by David Wärnberg');
INSERT INTO `simpleurl` VALUES(193, 'pages/snaps', 'snaps_model', 'id', 0, 1, '161-girlfriendnyc-com', 'Girlfriend');
INSERT INTO `simpleurl` VALUES(194, 'pages/snaps', 'snaps_model', 'id', 0, 1, '162-screensiz-es', 'Screen Sizes');
INSERT INTO `simpleurl` VALUES(195, 'pages/snaps', 'snaps_model', 'id', 0, 1, '163-demo-themezilla-com', 'Blox | A Bold and Beautiful Portfolio Theme');
INSERT INTO `simpleurl` VALUES(196, 'pages/snaps', 'snaps_model', 'id', 0, 1, '164-thelincolnmovie-com', 'Lincoln: The Official Blu-ray™, DVD and HD Digital Website');
INSERT INTO `simpleurl` VALUES(197, 'pages/snaps', 'snaps_model', 'id', 0, 1, '165-basheertome-com', 'Hue | Basheer Tome');
INSERT INTO `simpleurl` VALUES(198, 'pages/snaps', 'snaps_model', 'id', 0, 1, '166-uiparade-com', 'Ui Parade – User interface design inspiration &amp; design tools');
INSERT INTO `simpleurl` VALUES(199, 'pages/snaps', 'snaps_model', 'id', 0, 1, '167-minimallyminimal-com', 'Minimally Minimal');
INSERT INTO `simpleurl` VALUES(200, 'pages/snaps', 'snaps_model', 'id', 0, 1, '168-thepatternlibrary-com', 'The Pattern Library');
INSERT INTO `simpleurl` VALUES(201, 'pages/profile', 'profile_model', 'find', 1, 1, 'mich8060', 'Michael Stevens');

-- --------------------------------------------------------

--
-- Table structure for table `snaps`
--

DROP TABLE IF EXISTS `snaps`;
CREATE TABLE `snaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `colors` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_url` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `snaps`
--

INSERT INTO `snaps` VALUES(42, 1, 'http://eighthourday.com/', 'eighthourday.com', 'Eight Hour Day is the graphic design and illustration studio of Nathan Strandberg and Katie Kirk.', '', 'img/snaps/53fb87330badf.png', 'B3B4B4,F4CBC4,9A8C21,F6F6F4,EF4832', 'Eight Hour Day', 73, '2014-08-25 12:57:55');
INSERT INTO `snaps` VALUES(43, 1, 'http://alwayscreative.net/', 'alwayscreative.net', 'Always Creative is a multi-disciplinary design office in Houston, Texas specializing in brand building and website design and development.', 'branding, creative agency, responsive web design, web development, houston, texas, logos, identity', 'img/snaps/53fb92827d1a6.png', 'EA34AE,EAABA4,A3A3A3', 'Always Creative - Branding, Responsive Web Development, and Print Design - Houston TX', 74, '2014-08-25 13:46:10');
INSERT INTO `snaps` VALUES(44, 1, 'https://exposure.co/', 'exposure.co', 'Exposure is a tool to create beautiful photo narratives. It’s also a community of passionate photographers and storytellers. Join us.', 'photos, photography, stories, storytelling, photo essay, photo sharing', 'img/snaps/53fb954ce0ad8.png', '2A312E,999999,706861,FFFFFF,000000', 'Create beautiful photo narratives - Exposure', 75, '2014-08-25 13:58:04');
INSERT INTO `snaps` VALUES(45, 1, 'http://www.theclymb.com/stories/featured-stories/home-sweet-oregon-2/', 'theclymb.com', 'A tribute to seven spectacular natural wonders right in our backyard', '', 'img/snaps/53fb9cb6e9dbb.png', '7E7D7F,393939,DCDADB', 'Home Sweet Oregon', 76, '2014-08-25 14:29:42');
INSERT INTO `snaps` VALUES(47, 1, 'http://www.thibaultjorge.com/en', 'thibaultjorge.com', 'Thibault Jorge is a project director at Uzik, a Parisian interactive agency', 'web, design, communication, portfolio, webdesign, mobile, tablet, UI, websites, madebytj, thibault jorge, visual arts, project manager, project director, account manager, project management, project direction, clientele management, digital, strategic planning, architecture design, ergonomics, UX consultant, responsive, festival', 'img/snaps/53fba9bbdd76b.png', '995295,535353,0083C1,EBEBEB,141414', 'Thibault Jorge, web project manager from Paris', 79, '2014-08-25 15:25:15');
INSERT INTO `snaps` VALUES(48, 1, 'https://niice.co/', 'niice.co', '', '', 'img/snaps/53fbaa1de7a4a.png', '7CB0A9,C9C9C9,D54734,212121,FFFFFF', 'Niice. A search engine with taste.', 80, '2014-08-25 15:26:53');
INSERT INTO `snaps` VALUES(49, 1, 'http://grovemade.com/', 'grovemade.com', 'We are a family of creators – close knit and a little crazy – handcrafting goods at our workshop in Portland, Oregon. We love what we do, and when work matters, it just keeps getting better. Our process is uncompromising, because we believe every product is a representation of who we are.', '', 'img/snaps/53fbaa5e41177.png', 'BEC2C5,616161,2B2B2B,FFFFFF,404040', 'Grovemade', 81, '2014-08-25 15:27:58');
INSERT INTO `snaps` VALUES(50, 1, 'http://threatstream.com/', 'threatstream.com', '', '', 'img/snaps/53fbaa6d51b15.png', 'F48F8C,E85A5A,FFFFFF,646464,052029', 'Home | ThreatStream', 82, '2014-08-25 15:28:13');
INSERT INTO `snaps` VALUES(51, 1, 'http://www.thenothingapp.com/', 'thenothingapp.com', '', '', 'img/snaps/53fbaa8227374.png', 'F7E866,79733E,F6E766,FBFBFB,222222', 'The Nothing App', 83, '2014-08-25 15:28:34');
INSERT INTO `snaps` VALUES(52, 1, 'https://medium.com/@johnnylin/going-from-nothing-to-product-hunt-in-4-hours-89cfb67977b3', 'medium.com', 'The short journey to the front page of Silicon Valley', '', 'img/snaps/53fbaa9aba5ea.png', '847972,BEB7B6,FFFFFF,1C1E38', 'How I Got from Idea to Product Hunt in 4 Hours — Medium', 84, '2014-08-25 15:28:58');
INSERT INTO `snaps` VALUES(53, 1, 'https://www.facebook.com/paper', 'facebook.com', 'Explore and share stories from friends and the world — in immersive designs and fullscreen, distraction-free layouts. Paper includes your Facebook News Feed and sections about your favorite topics.', '', 'img/snaps/53fbaaa96d006.png', '919091,EAE8EA,C3A794,362622', 'Paper | Stories from Facebook', 85, '2014-08-25 15:29:13');
INSERT INTO `snaps` VALUES(54, 1, 'http://iconmonstr.com/', 'iconmonstr.com', 'Discover 1000+ free simple icons for your next project. Available in both PNG and SVG.', '', 'img/snaps/53fbaab7d6b06.png', '5D5D5D,3CF614,000000,969696,FFFFFF', 'iconmonstr - Free simple icons for your next project', 86, '2014-08-25 15:29:27');
INSERT INTO `snaps` VALUES(55, 1, 'http://union.co/', 'union.co', 'Union is a digital–first agency located in Charlotte, NC. We unify brands with consumers, strategy with technology and goals with results', '', 'img/snaps/53fbaac485561.png', '31302F', 'Digital Marketing Agency | Charlotte, NC | UNION', 87, '2014-08-25 15:29:40');
INSERT INTO `snaps` VALUES(56, 1, 'http://www.hugeinc.com/', 'hugeinc.com', 'Huge is a full service digital agency headquartered in Brooklyn with offices worldwide. We transform brands and build businesses.', '', 'img/snaps/53fbaad0a7ca9.png', '4E5154,D59BBE,EC008C,15181D,CECECE', 'Huge. Digital agency. Digital business, design, marketing, technology', 88, '2014-08-25 15:29:52');
INSERT INTO `snaps` VALUES(57, 1, 'http://captaindash.com/', 'captaindash.com', 'Build your Ultimate Dashboard. Prepare for take-off. Captain dash.', '', 'img/snaps/53fbaadd5ca99.png', '1F1F1F,434343,B4B4B4,FFFFFF', 'Captain Dash', 89, '2014-08-25 15:30:05');
INSERT INTO `snaps` VALUES(58, 1, 'http://www.squarespace.com/#weddings', 'squarespace.com', 'Squarespace is the easiest way for anyone to create an exceptional website. Pages, galleries, blogs, e-commerce, domains, hosting, analytics, 24/7 support - all included.', '', 'img/snaps/53fbaae93388f.png', 'A49A92,606060,ECE8E5', 'Build a Website — Squarespace', 90, '2014-08-25 15:30:17');
INSERT INTO `snaps` VALUES(59, 1, 'http://krystalrae.com/', 'krystalrae.com', 'The Krystalrae Collection is a contemporary lifestyle brand that features bold, fun, and exciting prints. Designer Krystalrae creates clothing with daring pattern combinations—designed for that rare woman who has the confidence to stand out, pioneer trends, and is never one to follow.', 'Krystalrae, collection, fashion, womenswear, spring, fall, summer, holiday, brand, design', 'img/snaps/53fbaaf98845c.png', 'C0C0C0,3E3E3E,000000,FFFFFF,969696', 'KRYSTALRAE', 91, '2014-08-25 15:30:33');
INSERT INTO `snaps` VALUES(60, 1, 'http://www.daumandco.com/', 'daumandco.com', '', '', 'img/snaps/53fbaaffeb4fd.png', '828282,C3C1BD,CACACA,FFFFFF,2A2A2A', 'DAUM&amp;CO | Home', 92, '2014-08-25 15:30:39');
INSERT INTO `snaps` VALUES(61, 1, 'https://www.fruute.com/gourmet-cookies', 'fruute.com', 'Gourmet Cookies by früute. Salted Caramel, Lavender Noir, Raspberry Rolls, Hazelnut Yogurt, Passion Fruit, Coconut Wafer, Green Tea Sablé, Lemon Pistachio Biscotti, Peanut Butter Nibbler', 'Salted Caramel, Lavender Noir, Raspberry Rolls, Hazelnut Yogurt, Passion Fruit, Coconut Wafer, Green Tea Sablé, Lemon Pistachio Biscotti, Peanut Butter Nibbler', 'img/snaps/53fbab075fa96.png', '788328,CE9E78,CC3542,E69F2D,FFFFFF', 'Gourmet Cookies | gift baskets | corporate gifts | gourmet cookies - fruute', 93, '2014-08-25 15:30:47');
INSERT INTO `snaps` VALUES(63, 1, 'http://www.thecut.net.au/', 'thecut.net.au', 'Perth web design web development logo design advertising', '', 'img/snaps/53fbab210836b.png', 'C0C0C0,3F3F3F,696969,000000,FFFFFF', 'Branding, Graphic Design, Advertising, Websites, Django Application Development - Perth WA - The Cut Creative', 95, '2014-08-25 15:31:13');
INSERT INTO `snaps` VALUES(64, 1, 'http://shop.ugmonk.com/', 'shop.ugmonk.com', 'Ugmonk was founded by designer Jeff Sheldon with a mission to produce high-quality products with simple, fresh designs. Jeff originally launched Ugmonk as a simple side project to marry his passion for typography and tshirt design but it quickly grew into a much bigger brand. Ugmonk continues to expand beyond tshirts and has been sold to over 60 countries around the world.', '', 'img/snaps/53fbabb92c9d3.png', '69CFFF,969696,5F5F5F,0C0C0C,FFFFFF', 'Ugmonk', 96, '2014-08-25 15:33:45');
INSERT INTO `snaps` VALUES(65, 1, 'https://exposure.co/', 'exposure.co', 'Exposure is a tool to create beautiful photo narratives. It’s also a community of passionate photographers and storytellers. Join us.', 'photos, photography, stories, storytelling, photo essay, photo sharing', 'img/snaps/53fbabc681426.png', '484848,9C9C9C,FFFFFF,171717,0C0C0C', 'Create beautiful photo narratives - Exposure', 97, '2014-08-25 15:33:58');
INSERT INTO `snaps` VALUES(66, 1, 'http://www.anck.tv/', 'anck.tv', 'I’m a designer, director and things maker', 'renaud futterer, design, art direction, graphic design, motion design, artworks, typography, 3d, paris, london', 'img/snaps/53fbabde6e8a4.png', 'C85B64,7C3840,5C5A61,0E0E0E,97949B', 'Renaud Futterer — Design / Direction', 98, '2014-08-25 15:34:22');
INSERT INTO `snaps` VALUES(67, 1, 'http://ui8.net/category/all', 'ui8.net', 'Premium digital assets for UI and UX designers. Industry-leading wireframing tools, icons, templates and more.', '', 'img/snaps/53fbabe924a25.png', '76B93A,1C1C1C,ABD388,FDC81D,F8F8F8', 'UI8 | Carefully Crafted UI Design Assets', 99, '2014-08-25 15:34:33');
INSERT INTO `snaps` VALUES(68, 1, 'http://flowhub.io/', 'flowhub.io', '', '', 'img/snaps/53fbac038e993.png', '3F4749,666D6E,0BB8DA,091416', 'Flowhub - Peer-to-peer full-stack visual programming for your fingers | Flowhub', 100, '2014-08-25 15:34:59');
INSERT INTO `snaps` VALUES(69, 1, 'http://www.piotrkwiatkowski.co.uk/', 'piotrkwiatkowski.co.uk', 'User Interface designer based in London, UK.', 'piotr kwiatkowski, ui design, ui designer, user interface, web design, web designer, graphic design, graphic designer, london, freelance designer, portfolio', 'img/snaps/53fbac21a7b23.png', 'ADAEAE,3D3D3D,F3F3F3,151515', 'Piotr Kwiatkowski - User Interface Designer', 101, '2014-08-25 15:35:29');
INSERT INTO `snaps` VALUES(70, 1, 'http://www.squarespace.com/tour/overview/', 'squarespace.com', '', '', 'img/snaps/53fbac29d1366.png', 'C0C0C0,654C38,010101,FFFFFF,999999', 'Build a Website - Squarespace', 102, '2014-08-25 15:35:37');
INSERT INTO `snaps` VALUES(71, 1, 'http://alwayscreative.net/', 'alwayscreative.net', 'Always Creative is a multi-disciplinary design office in Houston, Texas specializing in brand building and website design and development.', 'branding, creative agency, responsive web design, web development, houston, texas, logos, identity', 'img/snaps/53fbac3a7d7b2.png', 'EA34AE,EAABA4,A3A3A3', 'Always Creative - Branding, Responsive Web Development, and Print Design - Houston TX', 103, '2014-08-25 15:35:54');
INSERT INTO `snaps` VALUES(72, 1, 'http://studiomds.co/work/', 'studiomds.co', 'Studio Mds produces award-winning design, 360? panoramas and engaging cross-platform digital experiences.', 'ux design, user experience, interface design, Digital Experiences, 360 panoramas, Cross-platform digital experiences, mobile apps, iphone apps, ipad apps, interactive design, responsive web design, mds, studio mds', 'img/snaps/53fbac4067d3a.png', '3A93CF,EA4C89,252525,DDDDDD,FFFFFF', 'Work « Studio Mds', 104, '2014-08-25 15:36:00');
INSERT INTO `snaps` VALUES(73, 1, 'http://getuikit.com/', 'getuikit.com', '', '', 'img/snaps/53fbac479812f.png', 'AADAEE,FFFFFF,19607D,000000,2BA3D4', 'UIkit', 105, '2014-08-25 15:36:07');
INSERT INTO `snaps` VALUES(74, 1, 'http://2011.buildconf.com/workshops', '2011.buildconf.com', '', '', 'img/snaps/53fbac5048ecb.png', '3CC0E3,A0A0A0,6E6E6E,181819,FFFFFF', 'Workshops — Build 2011', 106, '2014-08-25 15:36:16');
INSERT INTO `snaps` VALUES(75, 1, 'http://2012.buildconf.com/', '2012.buildconf.com', '', '', 'img/snaps/53fbac57415bf.png', 'BCBCBC,901C2C,FFFFFF,191818,E41F3A', 'Build 2012', 107, '2014-08-25 15:36:23');
INSERT INTO `snaps` VALUES(76, 1, 'http://2013.buildconf.com/', '2013.buildconf.com', 'Build is a design festival for people who work on the web.', '', 'img/snaps/53fbac5e23ea5.png', 'BA9A5B,FFFFFF', 'Build · 11–14 November 2013 · Belfast', 108, '2014-08-25 15:36:30');
INSERT INTO `snaps` VALUES(78, 1, 'http://boxx.hk/#Welcome', 'boxx.hk', 'We provides a wide range of corrugated boxes ?????????????????', '?????,??,??,????, carton box, hong kong, SUM  HING  CARTON  BOX  FACTORY, sum hing, why interacitve, corrugated box', 'img/snaps/53fbac8f45ded.png', '828282,D2B99A,F0F0F0', 'SUM HING CARTON BOX FACTORY ????? - CARTON BOX | BOX | CORRUGATED BOX | ?? | ?? | ????', 110, '2014-08-25 15:37:19');
INSERT INTO `snaps` VALUES(79, 1, 'http://followbubble.com/', 'followbubble.com', 'We are Bubble, Digital and Social Media Agency', '', 'img/snaps/53fbac968b689.png', '74B6E8', 'Follow Bubble', 111, '2014-08-25 15:37:26');
INSERT INTO `snaps` VALUES(80, 1, 'https://symbolset.com/', 'symbolset.com', 'Symbolset uses font magic to change words into icons. Made with love for computers and people.', '', 'img/snaps/53fbb132ada9f.png', 'A5D63F,E2F1C0,FFFFFF,88C800', 'Symbolset - Turn words into icons using font magic', 112, '2014-08-25 15:57:06');
INSERT INTO `snaps` VALUES(81, 1, 'http://www.hatchbuck.com/home-2/?utm_expid=69239528-4.XcjVV1HiQgmWjqSK3OaL1Q.1', 'hatchbuck.com', 'Hatchbuck merges small business crm functionality and automated marketing software in an easy-to-use solution geared for smaller businesses.', '', 'img/snaps/53fbb4ab3362f.png', 'CAD6B7,A4A5A5,F17157,505050,EBEDEF', 'Sales and Marketing Software for Small Business - Hatchbuck', 113, '2014-08-25 16:11:55');
INSERT INTO `snaps` VALUES(82, 1, 'http://joshuablankenship.com/blog/archives/', 'joshuablankenship.com', '', '', 'img/snaps/53fbb4c596e52.png', '444444,6C6C6C,252525,060606,FFFFFF', 'Joshua Blankenship', 114, '2014-08-25 16:12:21');
INSERT INTO `snaps` VALUES(83, 1, 'http://upperdog.se/', 'upperdog.se', 'Upperdog – en prisbelönt webbyrå med affärsnyttan i fokus. Kontakta oss idag.', '', 'img/snaps/53fbb4e3de5e6.png', '000000,8F8F8F,202020,B9BABE,F8F8F8', 'UPPERDOG - Web Agency in Stockholm', 115, '2014-08-25 16:12:51');
INSERT INTO `snaps` VALUES(84, 1, 'http://www.getfinch.com/', 'getfinch.com', 'Experience design for humanware', 'Design, Designer, iamFinch, Experience Design, User Experience, UX, UI, XD, Writer, Author, Blogger, Web, Design, Interaction, Website, Interactive, Devices, Multi-Device, Creative, Applications, Grand Rapids, Michigan, USA, United States', 'img/snaps/53fbb5133a6a7.png', '805428,BEC1C1,11191B,FFFFFF,2F393B', 'FINCH - Designer, Writer, Human', 116, '2014-08-25 16:13:39');
INSERT INTO `snaps` VALUES(85, 1, 'http://builtwithmomentum.com/', 'builtwithmomentum.com', 'Momentum is a small studio of web designers, developers. We all believe in effective web design and development and are dedicated to creating websites that work not just for you but for your users too.', '', 'img/snaps/53fbb54563fa8.png', 'A1A1A2,121314,EEEEEE,404648', 'Web Design &amp; Web Development Colchester | momentum', 117, '2014-08-25 16:14:29');
INSERT INTO `snaps` VALUES(86, 1, 'http://developers.squarespace.com/', 'developers.squarespace.com', '', '', 'img/snaps/53fbb55e747bc.png', '7EDABC,32BD90,B8B8B8,F0F0F0,0E0D0E', 'Squarespace Developer Center', 118, '2014-08-25 16:14:54');
INSERT INTO `snaps` VALUES(87, 1, 'http://themetrust.com/demos/craft/', 'themetrust.com', '', '', 'img/snaps/53fbb591737ed.png', 'E8A9A6,DB312A,11384E,B2C5CC,FFFFFF', 'Craft', 119, '2014-08-25 16:15:45');
INSERT INTO `snaps` VALUES(88, 1, 'http://aworkinglibrary.com/', 'aworkinglibrary.com', 'Reading and writing by Mandy Brown', '', 'img/snaps/53fbb5ad90f19.png', '8C8B88,000000,C8C8C8,222222,FFFFFF', 'A Working Library', 120, '2014-08-25 16:16:13');
INSERT INTO `snaps` VALUES(89, 1, 'http://mandrill.com/', 'mandrill.com', 'Mandrill is a transactional email platform from MailChimp', '', 'img/snaps/53fbb5d4ec48e.png', 'D9ADA4,037DAC,4D4D4D,F4F4F4,171717', 'Transactional Email from MailChimp - Mandrill', 121, '2014-08-25 16:16:52');
INSERT INTO `snaps` VALUES(90, 1, 'http://www.consumerbarometer.com/#?app=home&amp;viewMode=0', 'consumerbarometer.com', '', '', 'img/snaps/53fbb5e85b2f8.png', '40464D,BFBFBF,61C4C7,409ACF,F0F0F0', 'CONSUMER BAROMETER - insights in online &amp; offline purchase behavior', 122, '2014-08-25 16:17:12');
INSERT INTO `snaps` VALUES(91, 1, 'http://www.diehlgroup.com/', 'diehlgroup.com', 'We are the Diehl Group Architects, a full-service design and consulting firm specializing in forensic architecture, quality assurance, and expert witness testimony.', 'knormal dga diehl group architects', 'img/snaps/53fbb6018d003.png', '737373,050505', 'DGA | Diehl Group Architects', 123, '2014-08-25 16:17:37');
INSERT INTO `snaps` VALUES(92, 1, 'http://www.colingrist.com/blog/', 'colingrist.com', '', '', 'img/snaps/53fbb634bc7c0.png', 'E4997D,5E656F,4F6A38,D46F28,FFFFFF', 'Blog – Colin Grist – Website Designer, Developer and General Rambler', 124, '2014-08-25 16:18:28');
INSERT INTO `snaps` VALUES(93, 1, 'https://www.fruute.com/index.php?/tarts', 'fruute.com', 'früute tarts - our tarts only travel in los angeles - Gourmet Cookies &amp; Gift Baskets', 'fruute, gourmet cookies, gift baskets, gifting, gift, unique basket, cookie basket', 'img/snaps/53fbb65e6dcb0.png', 'BF6C08,F1BD38,574235,8B7A6C,FFFFFF', 'Gourmet Tarts | gift baskets | corporate gifts | gourmet cookies - fruute', 125, '2014-08-25 16:19:10');
INSERT INTO `snaps` VALUES(94, 1, 'http://arias.ca/', 'arias.ca', 'Freelance graphic designer specializing in logo design, branding, print design, web design, and marketing visual communications, Vancouver, Canada', 'graphic design, branding, logos, logo design, corporate identity, creative direction, freelance, professional graphic designer, web design, print design, print promotions, stationery packages, poster design, flyer, brochure design, book design, book cover, typography, magazine design, magazine layout, publication design, catalog design, packaging design, label design, signage, environmental graphics, display graphics, illustration, fashion, urban, skate, fourwear, mtb, retail, real estate, industrial, tourism, fresh, creative, cool, clean, vancouver, surrey, langley, canada', 'img/snaps/53fbb677470cb.png', '000000,2C2C2C,676767,F4F5F5', 'David Arias – Branding and Design / Freelance Graphic Designer / Vancouver, Canada', 126, '2014-08-25 16:19:35');
INSERT INTO `snaps` VALUES(95, 1, 'http://simplehonestwork.com/', 'simplehonestwork.com', '', '', 'img/snaps/53fbb68fb044a.png', '858585,434345,0E0E0E', 'Simple.Honest.Work.', 127, '2014-08-25 16:19:59');
INSERT INTO `snaps` VALUES(98, 1, 'http://www.gv.com/', 'gv.com', 'GV provides seed, venture, and growth-stage funding to the best companies. We’ve invested in more than 250 companies, including Uber, Nest, and RetailMeNot. We provide these companies support in design, recruiting, marketing, and more.', '', 'img/snaps/53fbb72b7e418.png', '656565,353535,919191,000000,FFFFFF', 'Google Ventures', 130, '2014-08-25 16:22:35');
INSERT INTO `snaps` VALUES(99, 1, 'http://www.kaestle-ski.com/en/', 'kaestle-ski.com', 'KÄSTLE is an Austrian ski manufacturer. Whether if freeriding or on the slope - at KÄSTLE everyone can find the right skis.', '', 'img/snaps/53fbb8adb9f4b.png', 'AB1120,ED4D4F,000000,636363,FFFFFF', 'KÄSTLE Ski - Pure Alpine Performance', 131, '2014-08-25 16:29:01');
INSERT INTO `snaps` VALUES(101, 1, 'http://ff0000.com/', 'ff0000.com', 'RED is a digital agency that offers a range of services including strategy, design, technology and media.', 'Digital Agency, Digital campaigns, Websites, HTML5, Social media, Mobile apps, Digital advertising, User experience design, Content creation', 'img/snaps/53fbb8d65ae37.png', '133F6C,FE0000,FFFFFF,111517,808283', 'RED Interactive | A Digital Agency', 133, '2014-08-25 16:29:42');
INSERT INTO `snaps` VALUES(102, 1, 'https://www.campaignmonitor.com/', 'campaignmonitor.com', 'Campaign Monitor makes it easy to attract new subscribers, send them beautiful email newsletters and see stunning reports on the results.', '', 'img/snaps/53fbb9363df74.png', '5C6065,8D9094,272D34,FFFFFF,2B3139', 'Send beautiful email newsletters with Campaign Monitor', 134, '2014-08-25 16:31:18');
INSERT INTO `snaps` VALUES(103, 1, 'http://www.stinkdigital.com/en/', 'stinkdigital.com', 'Stinkdigital is an award-winning production agency consisting of interactive creatives, developers, animators, designers, digital producers, film producers and directors who work together as a team to create innovative and engaging interactive experiences. We currently have offices in London, New York and Paris.', 'stinkdigital, london, new york, paris, interactive production, stink, digital, production company, digital agency, creative studio, stink, agency, nyc, interactive, film, mobile, app, development, cannes, awards, fwa, awwwards, design, france, uk, england, europe, usa, us', 'img/snaps/53fbba87dbdd3.png', '34FF9A,797F7D,C8CABC,5D0C20,010123', 'Stinkdigital - Home', 135, '2014-08-25 16:36:55');
INSERT INTO `snaps` VALUES(104, 1, 'http://www.socketstudios.com/#work0', 'socketstudios.com', 'The portfolio of freelancer designer, Paul Macgregor', 'Socket Studios, Socket, Studios, Paul Macgregor, Paul, Macgregor, Design, Portfolio', 'img/snaps/53fbbad9c366d.png', '9E9EA0,F4F4F4,222228', 'Socket Studios 2013', 136, '2014-08-25 16:38:17');
INSERT INTO `snaps` VALUES(105, 1, 'http://designspiration.net/search/web%20design/', 'designspiration.net', 'Designspiration is a way to discover and share your design, architecture, photography and fashion inspiration.', 'designspiration, designinspiration, designspirations, inspiration, design inspiration, discover inspiration, image bookmarking, dspn, photography inspiration, fashion inspiration, architecture inspiration', 'img/snaps/53fbbbdbe8013.png', '323332,E26824,AF272D,000000,FFFFFF', 'Designspiration', 137, '2014-08-25 16:42:35');
INSERT INTO `snaps` VALUES(106, 1, 'http://www.luiskonrad.com/', 'luiskonrad.com', 'Luís Konrad is a Brazilian Product Designer with seven years experience with digital projects.', 'luís konrad, designer, ux, ui, interface, portfolio, web design, mobile, ios, app, stout 26, huge', 'img/snaps/53fbbbf51fe4b.png', 'BDBDBD,3A3A3A,111111,646464,FCFCFC', 'Luís Konrad', 138, '2014-08-25 16:43:01');
INSERT INTO `snaps` VALUES(107, 1, 'http://a-g.com/', 'a-g.com', '', '', 'img/snaps/53fbbc40d0189.png', '7E7E7E,444444,FD3348,F9F8F6,090909', 'allen &amp; gerritsen | a&amp;g', 139, '2014-08-25 16:44:16');
INSERT INTO `snaps` VALUES(108, 1, 'http://a-glabs.com/', 'a-glabs.com', '', '', 'img/snaps/53fbbc619415d.png', '8DA3A0,FFFFFF,AAD7CF,4B5A58,AAD7D0', 'a&amp;g Labs', 140, '2014-08-25 16:44:49');
INSERT INTO `snaps` VALUES(109, 1, 'http://www.tapmates.com/', 'tapmates.com', 'We handcraft apps for iPhone, Mac and iPad.', 'iOS Development, Mac Development, Objective-C, Cocoa, Ruby On Rails, OpenGL, Backend &amp; API, Icons, User Interface, Experience, AppStore Marketing, Wireframes, Prototypes, Visuals, Art Direction', 'img/snaps/53fbbc9941652.png', 'BF63E7,3BCAE3,FEFEFE', 'Tapmates Inc.', 141, '2014-08-25 16:45:45');
INSERT INTO `snaps` VALUES(110, 1, 'http://webzap.uiparade.com/', 'webzap.uiparade.com', '', '', 'img/snaps/53fbbca24c2fc.png', 'FEA55E,999999,FFF0E5,323232,FF7100', 'WebZap - Photoshop panel plugin for web developers', 142, '2014-08-25 16:45:54');
INSERT INTO `snaps` VALUES(111, 1, 'http://www.designbyface.com/', 'designbyface.com', 'Face is a supermodernist design studio specialised in developing honest branding projects across the world.', 'Designbyface, face., face monterrey, face diseño, face design, mexico, supermodernismo, supermodernism, monterrey, diseño gráfico, branding, diseño editorial, design by face, web design, graphic design, mexican, face mexico, modern, moderno, modernismo, identity, identidad, logotipo, diseño web', 'img/snaps/53fbbcbd84948.png', 'E9A08F,7A7A7A,91434B,FFFFFF', 'Face. Design Bureau.', 143, '2014-08-25 16:46:21');
INSERT INTO `snaps` VALUES(112, 1, 'http://r-ny.com/', 'r-ny.com', 'R&amp;Co. is a contemporary graphic design studio specializing in reductive design for web and brand identity. We create effective design solutions that', '', 'img/snaps/53fbbce8d71ab.png', 'C39362,F5CDA0,000000,797979,F1F1F1', 'R&amp;Co. Design', 144, '2014-08-25 16:47:04');
INSERT INTO `snaps` VALUES(113, 1, 'http://www.wildandfearless.com/', 'wildandfearless.com', '', '', 'img/snaps/53fbbcf11c03a.png', '545454,848283,AFADAE,FFFFFF', 'Aaron Robbs', 145, '2014-08-25 16:47:13');
INSERT INTO `snaps` VALUES(114, 1, 'http://typecode.com/work/', 'typecode.com', 'Type/Code is a studio of designers and developers based in Dumbo, Brooklyn. We invent, communicate, build, and refine things with ambitious clients who want to bring powerful ideas to life.', 'type/code, typecode, typeslashcode, type code, design, web, development, frontend, front-end, interaction, interactive, studio, firm, dumbo, brooklyn, new york, new york city, nyc, parsons, princeton, instream, slated, slated.com, moma, google, currents, google currents, hops, hops chart, hopschart, voxpop, itsalmost, itsalmo.st, its almost, ian lord, andrew mahon, lev kanter, zeke shore, tyler madsen', 'img/snaps/53fbbcf72508d.png', 'F7F07E,067970,4E4E50,000001,FFFFFF', 'Type/Code - from 2010 till ?', 146, '2014-08-25 16:47:19');
INSERT INTO `snaps` VALUES(115, 1, 'http://www.elabs.se/', 'elabs.se', 'We help you work and communicate more efficiently by creating reliable software that supports your business.', '', 'img/snaps/53fbbd0142d52.png', 'C5C8C9,747474,F4F4F4,FFFFFF,1A1A1A', 'Elabs - Agile Web Developers using Ruby on Rails in Gothenburg, Sweden', 147, '2014-08-25 16:47:29');
INSERT INTO `snaps` VALUES(116, 1, 'http://www.triplagent.com/', 'triplagent.com', '', '', 'img/snaps/53fbbd088f66e.png', 'C7C3C2,F7F7F0,AB8052,A798A4,594056', 'TriplAgent', 148, '2014-08-25 16:47:36');
INSERT INTO `snaps` VALUES(117, 1, 'http://www.mydirtydesk.com/', 'mydirtydesk.com', 'We are small. Super small, but big enough to take serious job and do it proffesionally. We are designers, front-end and Drupal developers who love what they do.', 'web design, corporate identity, outdoor, indoor ads, drupal developer, front-end developer, PSD2HTML', 'img/snaps/53fbbd1705e43.png', 'C74F4F,000000,ADCED0,8DA8A9', 'MyDirtyDesk - web designers, web developers, front-end and Drupal developers', 149, '2014-08-25 16:47:51');
INSERT INTO `snaps` VALUES(118, 1, 'http://perspectivemockups.com/', 'perspectivemockups.com', 'Photoshop Perspective Mockups Plugin. Perspective Mockups is a clever little Photoshop Plugin that makes presenting your ideas a breeze.', '', 'img/snaps/53fbbd74263fe.png', '22674E,FFFFFF,010101,848586,27292B', 'Photoshop Perspective Mockups Plugin', 150, '2014-08-25 16:49:24');
INSERT INTO `snaps` VALUES(119, 1, 'http://boy-coy.com/#home', 'boy-coy.com', 'Boy-Coy is a creative design studio. The place where perfect websites, mobile apps &amp; games come to life.', 'mobile android ios applications apps development design graphics usability html html5 web web2.0 website websites creative studio', 'img/snaps/53fbbdb933945.png', '8194BD,714240,DBDECB,DCDDCD,F15D58', 'Boy-Coy - Creative Design Studio - Mobile &amp; Web', 151, '2014-08-25 16:50:33');
INSERT INTO `snaps` VALUES(120, 1, 'http://envylabs.com/', 'envylabs.com', '', '', 'img/snaps/53fbbddf67c52.png', 'EC6730,F18D63,1B4355,25B0D7,FFFFFF', 'Envy Labs', 152, '2014-08-25 16:51:11');
INSERT INTO `snaps` VALUES(121, 1, 'http://www.svenread.com/css-typography-cheat-sheet/', 'svenread.com', '', '', 'img/snaps/53fbbdf970e50.png', 'D27D1B,A2A09E,C0C0C0,FFFFFF,000000', 'CSS Typography cheat sheet', 153, '2014-08-25 16:51:37');
INSERT INTO `snaps` VALUES(122, 1, 'http://snazzymaps.com/?page=3', 'snazzymaps.com', 'Snazzy Maps is a repository of different color schemes for Google Maps aimed towards web designers and developers.', 'google,maps,google maps,styled maps,styles,color,schemes,themes', 'img/snaps/53fbbe205e3e0.png', '2ECC71,394B76,333739,C0C1C2,EFEFEF', 'Snazzy Maps - Free Styles for Google Maps', 154, '2014-08-25 16:52:16');
INSERT INTO `snaps` VALUES(123, 1, 'http://elegantseagulls.com/portfolio.php', 'elegantseagulls.com', 'Explore the design portfolio highlighting responsive web design, UI/UX design, branding, print, and breathe of experience.', 'creative agency, web design, website development, elegant seagulls, marketing agency, graphic design, search engine marketing, search engine optimization, logo design, branding, marquette', 'img/snaps/53fbbe29659de.png', 'B5D448,747474,F4B82E,000000,FFFFFF', 'Portfolio | Elegant Seagulls - A Creative Agency | Web &amp; App Design, Branding, Marketing &amp; E Commerce', 155, '2014-08-25 16:52:25');
INSERT INTO `snaps` VALUES(124, 1, 'http://www.volpelino.com/', 'volpelino.com', '', '', 'img/snaps/53fbbeb03e573.png', '9E9F9F,F9C0C6,F27986,EB1D34', 'Petra Sell – volpelino.com', 156, '2014-08-25 16:54:40');
INSERT INTO `snaps` VALUES(125, 1, 'http://saus.co/', 'saus.co', 'Creatieve Communicatie Studio', 'Studio, Saus, SAUS, reclame, advertentie, grafische vormgeving, graphic, design, graphic design, ontwerp, ontwerpen, visuele communicatie, buro, bureau, studio, reclameburo, reclamebureau, print, web, webdesign, 2d, 3d, 4d, App, iOs, typografie, typo, apps, font, logo, visitekaartje, envelop, poster, posters, verpakkingen, verpakking, flyer, brochure, boek, jaarverslag, Frank Slangen, Will Muijrers, WillMuij, info@studiosaus.com, mail@saus.co, Het Bat 5, Maastricht, Limburg, zuiden, zuid, social, media, social media, saus.co, .co, sausje, epub, ipad, retina, magazine, krant, huisstijl, animatie', 'img/snaps/53fbbed2838ee.png', 'FFFFFF', 'Saus.co', 157, '2014-08-25 16:55:14');
INSERT INTO `snaps` VALUES(126, 1, 'https://exposure.co/', 'exposure.co', 'Exposure is a tool to create beautiful photo narratives. It’s also a community of passionate photographers and storytellers. Join us.', 'photos, photography, stories, storytelling, photo essay, photo sharing', 'img/snaps/53fbbedf40b45.png', '8D918F,000000,FFFFFF,706861', 'Create beautiful photo narratives - Exposure', 158, '2014-08-25 16:55:27');
INSERT INTO `snaps` VALUES(127, 1, 'http://railman.viktorhanacek.cz/', 'railman.viktorhanacek.cz', 'RailMan is super-clean and simple WordPress theme for photography addicted writers. Designed by Viktor Hanacek and ready to download on Creative Market!', '', 'img/snaps/53fbc02b3942e.png', '4D6DA6,D1D2D3,3E3D43,A7ABAE,FFFFFF', 'RailMan — Clean WordPress Theme for Photography-addicted Writers', 159, '2014-08-25 17:00:59');
INSERT INTO `snaps` VALUES(128, 1, 'http://www.theflov.com/en/portfolio/cab4you', 'theflov.com', 'app design, responsive website design &amp; development', 'corporate identity, graphic design, web design and development', 'img/snaps/53fbc037c87ac.png', 'F0AD57,707070,F29100,FFFFFF', 'CAB4YOU | FLOV Creative Agency', 160, '2014-08-25 17:01:11');
INSERT INTO `snaps` VALUES(129, 1, 'http://medialoot.com/preview/AmpPortfolio/index.html', 'medialoot.com', '', '', 'img/snaps/53fbc059e0803.png', 'A3A3A3,FFFFFF,232222', 'Document', 161, '2014-08-25 17:01:45');
INSERT INTO `snaps` VALUES(130, 1, 'http://ambercreative.co/', 'ambercreative.co', 'We design and code responsive web applications. From London with LOVE.', '', 'img/snaps/53fbc06244c46.png', '387D9B,B3B4B6,F5F4F1,171B1E', 'Meet higher standards in UI/UX design | Amber Creative', 162, '2014-08-25 17:01:54');
INSERT INTO `snaps` VALUES(131, 1, 'http://thelifecycle.roblutter.com/', 'thelifecycle.roblutter.com', '', '', 'img/snaps/53fbc06f99c85.png', '392715,4C4E50,494B4D,727374,FFFFFF', 'The Lifecycle Adventure | Rob Lutter', 163, '2014-08-25 17:02:07');
INSERT INTO `snaps` VALUES(132, 1, 'http://madeawkward.com/', 'madeawkward.com', '', '', 'img/snaps/53fca28da2385.png', 'F8B09F,4A5053,EE3F15,121B1F,FFFFFF', 'Awkward — We create digital products.', 164, '2014-08-26 09:06:53');
INSERT INTO `snaps` VALUES(133, 1, 'http://www.labfiftyfive.com/', 'labfiftyfive.com', 'Lab Fiftyfive is a design and development company based in Perth, Australia. We make things for the internet that look and work beautifully', 'internet, web sites, nice pictures', 'img/snaps/53fca2a302e17.png', '9FA4A6,72797C,FFFFFF,2A363B', 'Lab Fiftyfive - Creators of fine internet products', 165, '2014-08-26 09:07:15');
INSERT INTO `snaps` VALUES(134, 1, 'http://heymosaic.com/', 'heymosaic.com', 'Create a stunning photo book from your iPhone in a snap.', '', 'img/snaps/53fca2ab0e2ab.png', '5F789A,4D341E,EFEDE8,0B0100,B39F8D', 'Mosaic', 166, '2014-08-26 09:07:23');
INSERT INTO `snaps` VALUES(135, 1, 'http://pierrickcalvez.com/', 'pierrickcalvez.com', 'A Boutique Design Studio with expertise in Fashion, Luxury and Digital Arts.', '', 'img/snaps/53fca2b500eea.png', 'CB5463,900000,FFFFFF,000000,DFDFDF', 'Pierrick Calvez Studio', 167, '2014-08-26 09:07:33');
INSERT INTO `snaps` VALUES(136, 1, 'http://humaan.com/blog/', 'humaan.com', 'Our perspectives on digital, and other things.', '', 'img/snaps/53fca2c24ae6c.png', '767579,AAAAAC,ACACAE,FFFFFF,15141A', 'Ideas &amp; Insights – The Humaan blog', 168, '2014-08-26 09:07:46');
INSERT INTO `snaps` VALUES(137, 1, 'http://awsme.me/', 'awsme.me', 'Thoughts scribbled down in pixels', '', 'img/snaps/53fca2ca8f9b3.png', 'B05B46', 'Timothy Achumba - Interface Designer » Scribbles', 169, '2014-08-26 09:07:54');
INSERT INTO `snaps` VALUES(138, 1, 'http://joeyrabbitt.com/', 'joeyrabbitt.com', 'UI / UX design portfolio, London', 'joey rabbitt,designer,digital,web design,app,design', 'img/snaps/53fca2d181a38.png', 'D28690,6E6E6E,F4F4F4', 'Joey Rabbitt, Digital Designer', 170, '2014-08-26 09:08:01');
INSERT INTO `snaps` VALUES(139, 1, 'http://www.scotch-soda.com/campaigns/portraits/#portrait-5_matthijs', 'scotch-soda.com', 'This December we present a selection of 30 people that inspire us with their remarkable personalities.', '', 'img/snaps/53fca2d95932c.png', 'A4A4A4,7F7F7F,494949,797979,000000', 'Portraits | Scotch &amp; Soda', 171, '2014-08-26 09:08:09');
INSERT INTO `snaps` VALUES(140, 1, 'http://weareanonymous.fr/', 'weareanonymous.fr', 'Anonymous is a digital production company based in Paris // France.', '', 'img/snaps/53fca3155f910.png', '7D7D7D,595959,B6B6B6,202020', 'Anonymous / Home - Digital production company', 172, '2014-08-26 09:09:09');
INSERT INTO `snaps` VALUES(141, 1, 'http://buy.alwaysreadthemanual.com/', 'buy.alwaysreadthemanual.com', 'The Manual is thrice-yearly publication on web design as a discipline.', '', 'img/snaps/53fca32b9a5cd.png', 'BEA57F,C9C8C8,231F20,70604D,FFFFFF', 'The Manual', 173, '2014-08-26 09:09:31');
INSERT INTO `snaps` VALUES(143, 1, 'http://cargocollective.com/caiorogerio/KITCHEN-AID', 'cargocollective.com', '', '', 'img/snaps/53fca3397f92c.png', 'CA7274,EF3937,7C7C7C,252525,FFFFFF', 'KITCHEN AID - Caio Rogério', 175, '2014-08-26 09:09:45');
INSERT INTO `snaps` VALUES(144, 1, 'http://www.aar-n.com/', 'aar-n.com', 'Creative practice of designer Aarón R. Domínguez &amp; collaborators.', 'aa, aaron, aar-n, aa design and development, design, development, design and development, aaron r dominguez', 'img/snaps/53fca3423c8b6.png', '41B9E8,DD4C44,171717,8A3935,FFFFFF', 'Aa. Selected Work', 176, '2014-08-26 09:09:54');
INSERT INTO `snaps` VALUES(146, 1, 'http://www.saturdaysnyc.com/', 'saturdaysnyc.com', 'Saturdays opened its flagship store in SoHo as New York&amp;#039;s premier downtown surf shop. Determined to suit a lifestyle occupied with surfing, living and working in New York City, Saturdays began selling boards and wetsuits as well fine art and other lifestyle accessories. Now open in New York&amp;#039;s West Village and Tokyo as well.', '', 'img/snaps/53fca35174bd7.png', '494B5C,FDD22C,FEF068,FFFFFF,AF973F', 'SATURDAYS - NEW YORK CITY', 178, '2014-08-26 09:10:09');
INSERT INTO `snaps` VALUES(147, 1, 'http://www.ucdarchitecture.ie/', 'ucdarchitecture.ie', '', '', 'img/snaps/53fca367a29e1.png', 'F4F4F4', 'UCD School of Architecture - Timeline', 179, '2014-08-26 09:10:31');
INSERT INTO `snaps` VALUES(148, 1, 'http://carolynsinger.com/', 'carolynsinger.com', '', '', 'img/snaps/53fca3a1a1ace.png', 'A0A2A2,262B25,597870,F9F9F9', 'Carolyn Singer - Garden Designer', 180, '2014-08-26 09:11:29');
INSERT INTO `snaps` VALUES(149, 1, 'http://www.tylerbuilds.co/', 'tylerbuilds.co', 'Tyler Smith is a front-end developer &amp; designer living in Portland, OR. He is the author of FlexSlider and spends his days building robust front-ends for websites and applications.', 'Tyler Smith, front-end developer, web developer, front-end designer, web designer, branding, website, mobile, responsive, responsive web design, adapative, adapative web design, FlexSlider, FlexSlider 2, semantics, css3, html5', 'img/snaps/53fca3ba03794.png', '202020,949495,E4B8A8,BD522C,FFFFFF', 'Tyler Smith | Portfolio', 181, '2014-08-26 09:11:54');
INSERT INTO `snaps` VALUES(150, 1, 'http://budnitzbicycles.com/bicycles/buy/titanium-no1', 'budnitzbicycles.com', 'Budnitz Bicycles creates the lightest, fastest, and most elegant city bikes in the world. Custom built for each customer, our handmade titanium belt drive bicycles set the standard for exceptional beauty, speed, and comfort.', 'bike, bicycle, bikes, bicycles, cycle, cycles, custom, custom bike, custom bicycle, velo, titanium, titanium bike, titanium bicycle, steel bike, steel bicycle, steel, road bike, mtb, city bike, city bicycle, downhill bike, mountain bike, belt drive, belt drive bicycle, belt drive bike, belt bike, gates carbon drive, carbon drive, ti, ti bike, ti bicycle, cro-moly, frame, frames, titanium frame, ti frame, steel frame, budnitz, paul budnitz, kidrobot, fork, commuter, cycle touring, touring bike, touring bicycle, townie, cruiser, city bike, city bicycle, cyclocross, cyclo cross, best city bike, best city bicycle, chris king, white industries, paul components, stem, brooks, brooks saddle, seatpost, handlebar, handelbars, riser, riser bar, schwalbe, mini bike, minibike, fixie, singlespeed, rohloff, alfine, shimano alfine, bb7, sram, shimano, trek, cannondale, moots, specialized, felt, gary fisher, fisher bikes, peloton, rapha, lynskey, surly, independent fabrication, if, pearl izumi, budnitz', 'img/snaps/53fca3ca1e1ce.png', '999999,5D5D5D,D5D5D5,FFFFFF', 'No.1 Titanium and Steel City Bike | Order | Budnitz Bicycles Store', 182, '2014-08-26 09:12:10');
INSERT INTO `snaps` VALUES(151, 1, 'https://plasso.co/', 'plasso.co', 'Plasso: Payments made simple. Sign Up Now!', '', 'img/snaps/53fca3d56b8cd.png', 'FB7469,747481,9F4849,EDF1F9,302E44', 'Plasso', 183, '2014-08-26 09:12:21');
INSERT INTO `snaps` VALUES(152, 1, 'https://yourkarma.com/', 'yourkarma.com', 'Karma offers no contract, pay-as-you-go, portable WiFi with data that never expires. Stay connected on-the-go, with all devices, headache-free.', 'karma,karma wifi,karma hotspot,portable wifi,pay as you go wifi,no contract wifi,mobile wifi,social wifi,yourkarma', 'img/snaps/53fca3dd238b6.png', '414141,030102,020202,FFFFFF,A5978C', 'Karma', 184, '2014-08-26 09:12:29');
INSERT INTO `snaps` VALUES(153, 1, 'http://www.designmadeingermany.de/13-1/2/', 'designmadeingermany.de', '', '', 'img/snaps/53fca3e5972e9.png', '333333,161616,9F9F9F,5C5C5C,FFFFFF', 'DMIG 13-1', 185, '2014-08-26 09:12:37');
INSERT INTO `snaps` VALUES(154, 1, 'http://danedwards.me/', 'danedwards.me', 'The portfolio of Dan Edwards, a Freelance Web / UI designer from the UK', '', 'img/snaps/53fca3ea8a294.png', 'D27244,424242,FFFFFF', 'Dan Edwards - Freelance Web Designer', 186, '2014-08-26 09:12:42');
INSERT INTO `snaps` VALUES(155, 1, 'http://budnitzbicycles.com/', 'budnitzbicycles.com', 'Budnitz Bicycles creates the lightest, fastest, and most elegant city bikes in the world. Custom built for each customer, our handmade titanium belt drive bicycles set the standard for exceptional beauty, speed, and comfort.', 'bike, bicycle, bikes, bicycles, cycle, cycles, custom, custom bike, custom bicycle, velo, titanium, titanium bike, titanium bicycle, steel bike, steel bicycle, steel, road bike, mtb, city bike, city bicycle, downhill bike, mountain bike, belt drive, belt drive bicycle, belt drive bike, belt bike, gates carbon drive, carbon drive, ti, ti bike, ti bicycle, cro-moly, frame, frames, titanium frame, ti frame, steel frame, budnitz, paul budnitz, kidrobot, fork, commuter, cycle touring, touring bike, touring bicycle, townie, cruiser, city bike, city bicycle, cyclocross, cyclo cross, best city bike, best city bicycle, chris king, white industries, paul components, stem, brooks, brooks saddle, seatpost, handlebar, handelbars, riser, riser bar, schwalbe, mini bike, minibike, fixie, singlespeed, rohloff, alfine, shimano alfine, bb7, sram, shimano, trek, cannondale, moots, specialized, felt, gary fisher, fisher bikes, peloton, rapha, lynskey, surly, independent fabrication, if, pearl izumi, budnitz', 'img/snaps/53fca3f656fbf.png', '9D9C9B,0099FF,65BFFC,282828,F7F7F7', 'Budnitz Bicycles | High end titanium and steel city bikes, cycling apparel, components, and accessories', 187, '2014-08-26 09:12:54');
INSERT INTO `snaps` VALUES(156, 1, 'http://www.jardan.com.au/', 'jardan.com.au', 'Furniture. Designed and made in Melbourne for the world. Make yourself comfortable.', '', 'img/snaps/53fca404e01ee.png', '000000,50AFAA,C9CBCA,7A7F7E,FFFFFF', 'Jardan Furniture | Designed and made in Melbourne', 188, '2014-08-26 09:13:08');
INSERT INTO `snaps` VALUES(157, 1, 'http://www.anotherpony.com/', 'anotherpony.com', '', '', 'img/snaps/53fca44cef0bc.png', 'FFFFFF,4A4545', 'Another Pony - Digital craft for screens and galleries', 189, '2014-08-26 09:14:20');
INSERT INTO `snaps` VALUES(158, 1, 'http://pltts.me/', 'pltts.me', '', '', 'img/snaps/53fca454c61a4.png', 'FF3B7E,A19EA3,011432,918972,FAFAFA', 'PLTTS - Popular', 190, '2014-08-26 09:14:28');
INSERT INTO `snaps` VALUES(159, 1, 'http://hex.colorrrs.com/', 'hex.colorrrs.com', 'A simple tool for converting HEX values to RGB and vice versa.', 'hex, hexadecimal, rgb, converter, hex to rgb, hexadecimal to rgb, hex to rgb converter, rgb to hex, rgb to hex converter, convert hex to rgb, convert rgb to hex, hex to rgb conversion, rgb to hex conversion, hex converter, rgb converter, simple hex to rgb converter', 'img/snaps/53fca468a3e05.png', '897539,FFD454', 'HEX to RGB Converter', 191, '2014-08-26 09:14:48');
INSERT INTO `snaps` VALUES(160, 1, 'http://proclaim.se/', 'proclaim.se', '', '', 'img/snaps/53fca47cb02ce.png', '25383D,99B0B7,6E7F81,FFFFFF,38FAD3', 'Proclaim Design | Graphic Design from Stockholm by David Wärnberg', 192, '2014-08-26 09:15:08');
INSERT INTO `snaps` VALUES(161, 1, 'http://www.girlfriendnyc.com/', 'girlfriendnyc.com', 'Girlfriend is a design, branding and technology studio.', 'girlfriend, girlfriend nyc, girlfriend llc, design, branding, technology, eli rousso, manhattan, nyc, new york, new york city, design, branding, technology, internet, web engineering, web development, digital , interactive studio, iPad, iPhone, mobile, copywriting, interaction design, art direction, visual design, code, experience design, usability, iterative, responsive, lean, product development, content design, agency', 'img/snaps/53fca48b231db.png', '929292,5E6163,020202,23272A,FFFFFF', 'Girlfriend', 193, '2014-08-26 09:15:23');
INSERT INTO `snaps` VALUES(162, 1, 'http://screensiz.es/phone', 'screensiz.es', 'Screensiz.es is a nifty little database of screen specifications for the most popular devices on the market.', 'screensizes, screen sizes, screen specifications, screen specs, smartphone, tablet, monitor, resolution, pixel density, PPI, popularity, device', 'img/snaps/53fca4bb8c99c.png', 'F8F8F8', 'Screen Sizes', 194, '2014-08-26 09:16:11');
INSERT INTO `snaps` VALUES(163, 1, 'http://demo.themezilla.com/blox/', 'demo.themezilla.com', '', '', 'img/snaps/53fca50227b38.png', '7C7D7E,FEE8A3,FEC91F,FCC71F,FFFFFF', 'Blox | A Bold and Beautiful Portfolio Theme', 195, '2014-08-26 09:17:22');
INSERT INTO `snaps` VALUES(164, 1, 'http://www.thelincolnmovie.com/?cast', 'thelincolnmovie.com', '', '', 'img/snaps/53fca50d4b481.png', '73DEC2,606456,0D0C11,FFFFFF,343D38', 'Lincoln: The Official Blu-ray™, DVD and HD Digital Website', 196, '2014-08-26 09:17:33');
INSERT INTO `snaps` VALUES(165, 1, 'http://basheertome.com/hue/', 'basheertome.com', 'Hue is a toaster that harnesses the power of an array of color sensors via a simple interface in order to intuitively and smartly toast bread to that perfect shade of golden brown.', 'hue, toaster, color, sensor, interaction, industrial, design, user experience, basheer, tome, san, francisco, california', 'img/snaps/53fca53f5baf3.png', 'B88E29,FDD133,000000', 'Hue | Basheer Tome', 197, '2014-08-26 09:18:23');
INSERT INTO `snaps` VALUES(166, 1, 'http://www.uiparade.com/', 'uiparade.com', '', '', 'img/snaps/53fca58d1e836.png', 'C2C3C4,867B82,CD8D83,323334,F4F4F4', 'Ui Parade – User interface design inspiration &amp; design tools', 198, '2014-08-26 09:19:41');
INSERT INTO `snaps` VALUES(167, 1, 'http://www.minimallyminimal.com/?offset=1384327219722&amp;reversePaginate=true', 'minimallyminimal.com', 'The thoughts and work of Andrew Kim.', '', 'img/snaps/53fcc090eddcd.png', '768171,292411,A6978B,F6F6F6', 'Minimally Minimal', 199, '2014-08-26 11:14:56');
INSERT INTO `snaps` VALUES(168, 1, 'http://thepatternlibrary.com/#science', 'thepatternlibrary.com', 'Patterns for the people, by the people', '', 'img/snaps/53fcc0ad4ed6b.png', '8E96C3,F8CEC9,FF7766', 'The Pattern Library', 200, '2014-08-26 11:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
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
