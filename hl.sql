-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-08-30 04:48:30
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hl`
--

-- --------------------------------------------------------

--
-- 表的结构 `hl_booklist`
--

CREATE TABLE `hl_booklist` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `county` varchar(32) DEFAULT NULL,
  `lg` varchar(32) DEFAULT NULL,
  `lt` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `gro` int(11) DEFAULT NULL,
  `pics` varchar(32) DEFAULT NULL,
  `details` varchar(32) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `time` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hl_booklist`
--

INSERT INTO `hl_booklist` (`id`, `pid`, `uname`, `county`, `lg`, `lt`, `type`, `gro`, `pics`, `details`, `price`, `time`) VALUES
(17, 3, 'zzzzzzzz', '渝中区', '45', '96.32', '酒店公寓', 1, 'img/detail/Duk/Duk3/1.jpg', NULL, '339.00', '2019-08-08 00:00:00 - 2019-08-10 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `hl_details`
--

CREATE TABLE `hl_details` (
  `pid` int(11) NOT NULL,
  `hl_big` varchar(64) NOT NULL,
  `hl_small1` varchar(64) NOT NULL,
  `hl_small2` varchar(64) NOT NULL,
  `hl_small3` varchar(64) NOT NULL,
  `hl_small4` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hl_details`
--

INSERT INTO `hl_details` (`pid`, `hl_big`, `hl_small1`, `hl_small2`, `hl_small3`, `hl_small4`) VALUES
(1, 'img/detail/Duk/Duk1/1.jpg', 'img/detail/Duk/Duk1/2.jpg', 'img/detail/Duk/Duk1/3.jpg', 'img/detail/Duk/Duk1/4.jpg', 'img/detail/Duk/Duk1/5.jpg'),
(2, 'img/detail/Duk/Duk2/1.jpg', 'img/detail/Duk/Duk2/2.jpg', 'img/detail/Duk/Duk2/3.jpg', 'img/detail/Duk/Duk2/4.jpg', 'img/detail/Duk/Duk2/5.jpg'),
(3, 'img/detail/Duk/Duk3/1.jpg', 'img/detail/Duk/Duk3/2.jpg', 'img/detail/Duk/Duk3/3.jpg', 'img/detail/Duk/Duk3/4.jpg', 'img/detail/Duk/Duk3/5.jpg'),
(4, 'img/detail/Duk/Duk4/1.jpg', 'img/detail/Duk/Duk4/2.jpg', 'img/detail/Duk/Duk4/3.jpg', 'img/detail/Duk/Duk4/4.jpg', 'img/detail/Duk/Duk4/5.jpg'),
(5, 'img/detail/Duk/Duk5/1.jpg', 'img/detail/Duk/Duk5/2.jpg', 'img/detail/Duk/Duk5/3.jpg', 'img/detail/Duk/Duk5/4.jpg', 'img/detail/Duk/Duk5/5.jpg'),
(6, 'img/detail/Duk/Duk6/1.jpg', 'img/detail/Duk/Duk6/2.jpg', 'img/detail/Duk/Duk6/3.jpg', 'img/detail/Duk/Duk6/4.jpg', 'img/detail/Duk/Duk6/5.jpg'),
(7, 'img/detail/Duk/Duk7/1.jpg', 'img/detail/Duk/Duk7/2.jpg', 'img/detail/Duk/Duk7/3.jpg', 'img/detail/Duk/Duk7/4.jpg', 'img/detail/Duk/Duk7/5.jpg'),
(8, 'img/detail/Duk/Duk8/1.jpg', 'img/detail/Duk/Duk8/2.jpg', 'img/detail/Duk/Duk8/3.jpg', 'img/detail/Duk/Duk8/4.jpg', 'img/detail/Duk/Duk8/5.jpg'),
(9, 'img/detail/Jb/Jb1/1.jpg', 'img/detail/Jb/Jb1/2.jpg', 'img/detail/Jb/Jb1/3.jpg', 'img/detail/Jb/Jb1/4.jpg', 'img/detail/Jb/Jb1/5.jpg'),
(10, 'img/detail/Jb/Jb2/1.jpg', 'img/detail/Jb/Jb2/2.jpg', 'img/detail/Jb/Jb2/3.jpg', 'img/detail/Jb/Jb2/4.jpg', 'img/detail/Jb/Jb2/5.jpg'),
(11, 'img/detail/Jb/Jb3/1.jpg', 'img/detail/Jb/Jb3/2.jpg', 'img/detail/Jb/Jb3/3.jpg', 'img/detail/Jb/Jb3/4.jpg', 'img/detail/Jb/Jb3/5.jpg'),
(12, 'img/detail/Jb/Jb4/1.jpg', 'img/detail/Jb/Jb4/2.jpg', 'img/detail/Jb/Jb4/3.jpg', 'img/detail/Jb/Jb4/4.jpg', 'img/detail/Jb/Jb4/5.jpg'),
(13, 'img/detail/Jb/Jb5/1.jpg', 'img/detail/Jb/Jb5/2.jpg', 'img/detail/Jb/Jb5/3.jpg', 'img/detail/Jb/Jb5/4.jpg', 'img/detail/Jb/Jb5/5.jpg'),
(14, 'img/detail/Jb/Jb6/1.jpg', 'img/detail/Jb/Jb6/2.jpg', 'img/detail/Jb/Jb6/3.jpg', 'img/detail/Jb/Jb6/4.jpg', 'img/detail/Jb/Jb6/5.jpg'),
(15, 'img/detail/Jb/Jb7/1.jpg', 'img/detail/Jb/Jb7/2.jpg', 'img/detail/Jb/Jb7/3.jpg', 'img/detail/Jb/Jb7/4.jpg', 'img/detail/Jb/Jb7/5.jpg'),
(16, 'img/detail/Jb/Jb8/1.jpg', 'img/detail/Jb/Jb8/2.jpg', 'img/detail/Jb/Jb8/3.jpg', 'img/detail/Jb/Jb8/4.jpg', 'img/detail/Jb/Jb8/5.jpg'),
(17, 'img/detail/Jlp/Jlp1/1.jpg', 'img/detail/Jlp/Jlp1/2.jpg', 'img/detail/Jlp/Jlp1/3.jpg', 'img/detail/Jlp/Jlp1/4.jpg', 'img/detail/Jlp/Jlp1/5.jpg'),
(18, 'img/detail/Jlp/Jlp2/1.jpg', 'img/detail/Jlp/Jlp2/2.jpg', 'img/detail/Jlp/Jlp2/3.jpg', 'img/detail/Jlp/Jlp2/4.jpg', 'img/detail/Jlp/Jlp2/5.jpg'),
(19, 'img/detail/Jlp/Jlp3/1.jpg', 'img/detail/Jlp/Jlp3/2.jpg', 'img/detail/Jlp/Jlp3/3.jpg', 'img/detail/Jlp/Jlp3/4.jpg', 'img/detail/Jlp/Jlp3/5.jpg'),
(20, 'img/detail/Jlp/Jlp4/1.jpg', 'img/detail/Jlp/Jlp4/2.jpg', 'img/detail/Jlp/Jlp4/3.jpg', 'img/detail/Jlp/Jlp4/4.jpg', 'img/detail/Jlp/Jlp4/5.jpg'),
(21, 'img/detail/Jlp/Jlp5/1.jpg', 'img/detail/Jlp/Jlp5/2.jpg', 'img/detail/Jlp/Jlp5/3.jpg', 'img/detail/Jlp/Jlp5/4.jpg', 'img/detail/Jlp/Jlp5/5.jpg'),
(22, 'img/detail/Jlp/Jlp6/1.jpg', 'img/detail/Jlp/Jlp6/2.jpg', 'img/detail/Jlp/Jlp6/3.jpg', 'img/detail/Jlp/Jlp6/4.jpg', 'img/detail/Jlp/Jlp6/5.jpg'),
(23, 'img/detail/Jlp/Jlp7/1.jpg', 'img/detail/Jlp/Jlp7/2.jpg', 'img/detail/Jlp/Jlp7/3.jpg', 'img/detail/Jlp/Jlp7/4.jpg', 'img/detail/Jlp/Jlp7/5.jpg'),
(24, 'img/detail/Jlp/Jlp8/1.jpg', 'img/detail/Jlp/Jlp8/2.jpg', 'img/detail/Jlp/Jlp8/3.jpg', 'img/detail/Jlp/Jlp8/4.jpg', 'img/detail/Jlp/Jlp8/5.jpg'),
(25, 'img/detail/Na/Na1/1.jpg', 'img/detail/Na/Na1/2.jpg', 'img/detail/Na/Na1/3.jpg', 'img/detail/Na/Na1/4.jpg', 'img/detail/Na/Na1/5.jpg'),
(26, 'img/detail/Na/Na2/1.jpg', 'img/detail/Na/Na2/2.jpg', 'img/detail/Na/Na2/3.jpg', 'img/detail/Na/Na2/4.jpg', 'img/detail/Na/Na2/5.jpg'),
(27, 'img/detail/Na/Na3/1.jpg', 'img/detail/Na/Na3/2.jpg', 'img/detail/Na/Na3/3.jpg', 'img/detail/Na/Na3/4.jpg', 'img/detail/Na/Na3/5.jpg'),
(28, 'img/detail/Na/Na4/1.jpg', 'img/detail/Na/Na4/2.jpg', 'img/detail/Na/Na4/3.jpg', 'img/detail/Na/Na4/4.jpg', 'img/detail/Na/Na4/5.jpg'),
(29, 'img/detail/Na/Na5/1.jpg', 'img/detail/Na/Na5/2.jpg', 'img/detail/Na/Na5/3.jpg', 'img/detail/Na/Na5/4.jpg', 'img/detail/Na/Na5/5.jpg'),
(30, 'img/detail/Na/Na6/1.jpg', 'img/detail/Na/Na6/2.jpg', 'img/detail/Na/Na6/3.jpg', 'img/detail/Na/Na6/4.jpg', 'img/detail/Na/Na6/5.jpg'),
(31, 'img/detail/Na/Na7/1.jpg', 'img/detail/Na/Na7/2.jpg', 'img/detail/Na/Na7/3.jpg', 'img/detail/Na/Na7/4.jpg', 'img/detail/Na/Na7/5.jpg'),
(32, 'img/detail/Na/Na8/1.jpg', 'img/detail/Na/Na8/2.jpg', 'img/detail/Na/Na8/3.jpg', 'img/detail/Na/Na8/4.jpg', 'img/detail/Na/Na8/5.jpg'),
(33, 'img/detail/Spb/Spb1/1.jpg', 'img/detail/Spb/Spb1/2.jpg', 'img/detail/Spb/Spb1/3.jpg', 'img/detail/Spb/Spb1/4.jpg', 'img/detail/Spb/Spb1/5.jpg'),
(34, 'img/detail/Spb/Spb2/1.jpg', 'img/detail/Spb/Spb2/2.jpg', 'img/detail/Spb/Spb2/3.jpg', 'img/detail/Spb/Spb2/4.jpg', 'img/detail/Spb/Spb2/5.jpg'),
(35, 'img/detail/Spb/Spb3/1.jpg', 'img/detail/Spb/Spb3/2.jpg', 'img/detail/Spb/Spb3/3.jpg', 'img/detail/Spb/Spb3/4.jpg', 'img/detail/Spb/Spb3/5.jpg'),
(36, 'img/detail/Spb/Spb4/1.jpg', 'img/detail/Spb/Spb4/2.jpg', 'img/detail/Spb/Spb4/3.jpg', 'img/detail/Spb/Spb4/4.jpg', 'img/detail/Spb/Spb4/5.jpg'),
(37, 'img/detail/Spb/Spb5/1.jpg', 'img/detail/Spb/Spb5/2.jpg', 'img/detail/Spb/Spb5/3.jpg', 'img/detail/Spb/Spb5/4.jpg', 'img/detail/Spb/Spb5/5.jpg'),
(38, 'img/detail/Spb/Spb6/1.jpg', 'img/detail/Spb/Spb6/2.jpg', 'img/detail/Spb/Spb6/3.jpg', 'img/detail/Spb/Spb6/4.jpg', 'img/detail/Spb/Spb6/5.jpg'),
(39, 'img/detail/Spb/Spb7/1.jpg', 'img/detail/Spb/Spb7/2.jpg', 'img/detail/Spb/Spb7/3.jpg', 'img/detail/Spb/Spb7/4.jpg', 'img/detail/Spb/Spb7/5.jpg'),
(40, 'img/detail/Spb/Spb8/1.jpg', 'img/detail/Spb/Spb8/2.jpg', 'img/detail/Spb/Spb8/3.jpg', 'img/detail/Spb/Spb8/4.jpg', 'img/detail/Spb/Spb8/5.jpg'),
(41, 'img/detail/Yb/Yb1/1.jpg', 'img/detail/Yb/Yb1/2.jpg', 'img/detail/Yb/Yb1/3.jpg', 'img/detail/Yb/Yb1/4.jpg', 'img/detail/Yb/Yb1/5.jpg'),
(42, 'img/detail/Yb/Yb2/1.jpg', 'img/detail/Yb/Yb2/2.jpg', 'img/detail/Yb/Yb2/3.jpg', 'img/detail/Yb/Yb2/4.jpg', 'img/detail/Yb/Yb2/5.jpg'),
(43, 'img/detail/Yb/Yb3/1.jpg', 'img/detail/Yb/Yb3/2.jpg', 'img/detail/Yb/Yb3/3.jpg', 'img/detail/Yb/Yb3/4.jpg', 'img/detail/Yb/Yb3/5.jpg'),
(44, 'img/detail/Yb/Yb4/1.jpg', 'img/detail/Yb/Yb4/2.jpg', 'img/detail/Yb/Yb4/3.jpg', 'img/detail/Yb/Yb4/4.jpg', 'img/detail/Yb/Yb4/5.jpg'),
(45, 'img/detail/Yb/Yb5/1.jpg', 'img/detail/Yb/Yb5/2.jpg', 'img/detail/Yb/Yb5/3.jpg', 'img/detail/Yb/Yb5/4.jpg', 'img/detail/Yb/Yb5/5.jpg'),
(46, 'img/detail/Yb/Yb6/1.jpg', 'img/detail/Yb/Yb6/2.jpg', 'img/detail/Yb/Yb6/3.jpg', 'img/detail/Yb/Yb6/4.jpg', 'img/detail/Yb/Yb6/5.jpg'),
(47, 'img/detail/Yb/Yb7/1.jpg', 'img/detail/Yb/Yb7/2.jpg', 'img/detail/Yb/Yb7/3.jpg', 'img/detail/Yb/Yb7/4.jpg', 'img/detail/Yb/Yb7/5.jpg'),
(48, 'img/detail/Yb/Yb8/1.jpg', 'img/detail/Yb/Yb8/2.jpg', 'img/detail/Yb/Yb8/3.jpg', 'img/detail/Yb/Yb8/4.jpg', 'img/detail/Yb/Yb8/5.jpg'),
(49, 'img/detail/Yz/Yz1/1.jpg', 'img/detail/Yz/Yz1/2.jpg', 'img/detail/Yz/Yz1/3.jpg', 'img/detail/Yz/Yz1/4.jpg', 'img/detail/Yz/Yz1/5.jpg'),
(50, 'img/detail/Yz/Yz2/1.jpg', 'img/detail/Yz/Yz2/2.jpg', 'img/detail/Yz/Yz2/3.jpg', 'img/detail/Yz/Yz2/4.jpg', 'img/detail/Yz/Yz2/5.jpg'),
(51, 'img/detail/Yz/Yz3/1.jpg', 'img/detail/Yz/Yz3/2.jpg', 'img/detail/Yz/Yz3/3.jpg', 'img/detail/Yz/Yz3/4.jpg', 'img/detail/Yz/Yz3/5.jpg'),
(52, 'img/detail/Yz/Yz4/1.jpg', 'img/detail/Yz/Yz4/2.jpg', 'img/detail/Yz/Yz4/3.jpg', 'img/detail/Yz/Yz4/4.jpg', 'img/detail/Yz/Yz4/5.jpg'),
(53, 'img/detail/Yz/Yz5/1.jpg', 'img/detail/Yz/Yz5/2.jpg', 'img/detail/Yz/Yz5/3.jpg', 'img/detail/Yz/Yz5/4.jpg', 'img/detail/Yz/Yz5/5.jpg'),
(54, 'img/detail/Yz/Yz6/1.jpg', 'img/detail/Yz/Yz6/2.jpg', 'img/detail/Yz/Yz6/3.jpg', 'img/detail/Yz/Yz6/4.jpg', 'img/detail/Yz/Yz6/5.jpg'),
(55, 'img/detail/Yz/Yz7/1.jpg', 'img/detail/Yz/Yz7/2.jpg', 'img/detail/Yz/Yz7/3.jpg', 'img/detail/Yz/Yz7/4.jpg', 'img/detail/Yz/Yz7/5.jpg'),
(56, 'img/detail/Yz/Yz8/1.jpg', 'img/detail/Yz/Yz8/2.jpg', 'img/detail/Yz/Yz8/3.jpg', 'img/detail/Yz/Yz8/4.jpg', 'img/detail/Yz/Yz8/5.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hl_products`
--

CREATE TABLE `hl_products` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `county` varchar(32) DEFAULT NULL,
  `lg` varchar(32) DEFAULT NULL,
  `lt` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `gro` int(11) DEFAULT NULL,
  `pics` varchar(32) DEFAULT NULL,
  `details` varchar(32) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `book` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hl_products`
--

INSERT INTO `hl_products` (`id`, `pid`, `county`, `lg`, `lt`, `type`, `gro`, `pics`, `details`, `price`, `book`) VALUES
(1, 1, '渝北', '99.255', '2154.155', '公寓', 2, 'img/detail/Duk/Duk1/1.jpg', '靠近南山', '157.25', 1),
(2, 2, '渝中区', '45.66', '88.25', '整套酒店公寓', 2, 'img/detail/Duk/Duk2/1.jpg', '【雾都江景】洪崖洞/解放碑/大礼堂/轻轨站旁', '309.00', 1),
(3, 3, '渝中区', '45', '96.32', '酒店公寓', 1, 'img/detail/Duk/Duk3/1.jpg', '『时光留白』解放碑旁一线阳光江景公寓', '339.00', 0),
(4, 4, '渝中区', '45.55', '88.25', '酒店房间', 2, 'img/detail/Duk/Duk4/1.jpg', '【雾都江景】洪崖洞/解放碑/大礼堂/轻轨站旁', '339.00', 0),
(5, 5, '渝中区', '45.96', '95.33', '酒店公寓', 2, 'img/detail/Duk/Duk5/1.jpg', '高级住宅/夜景房间', '309.00', 1),
(6, 6, '渝中区', '95.55', '89.25', '酒店房间', 2, 'img/detail/Duk/Duk6/1.jpg', '【雾都江景】洪崖洞/解放碑/轻轨站旁', '339.00', 1),
(7, 7, '渝中区', '45', '80.25', '酒店房间', 2, 'img/detail/Duk/Duk7/1.jpg', '普通酒店/离轻轨较近', '309.00', 0),
(8, 8, '渝中区', '56.23', '56.21', '酒店房间', 2, 'img/detail/Duk/Duk8/1.jpg', '高级住宅/夜景房', '339.00', 0),
(9, 9, '渝中区', '42.66', '82.36', '酒店房间', 2, 'img/detail/Jb/Jb1/1.jpg', '周围商场/好吃街居多', '369.00', 1),
(10, 10, '渝北区', '99.55', '90.32', '独立民宿房间', 2, 'img/detail/Jb/Jb2/1.jpg', '轨道6号线/温馨双人房', '309.00', 0),
(11, 11, '渝北区', '45.55', '85.13', '酒店房间', 2, 'img/detail/Jb/Jb3/1.jpg', '6号线/周边商场/轻轨', '299.00', 0),
(12, 12, '渝北区', '45', '96.32', '酒店房间', 2, 'img/detail/Jb/Jb4/1.jpg', '6号轻轨直达解放碑/机场 毗邻观音桥/九街', '339.00', 1),
(13, 13, '渝北区', '45', '96.32', '独立房间', 2, 'img/detail/Jb/Jb5/1.jpg', '解放碑观音桥之间! 门口就是轻轨站', '339.00', 1),
(14, 14, '渝北区', '35', '88.25', '独立房间', 2, 'img/detail/Jb/Jb6/1.jpg', '新房~近洪崖洞,解放碑黄泥磅自由loft', '339.00', 0),
(15, 15, '渝北区', '45.55', '96.32', '独立民宿房间', 2, 'img/detail/Jb/Jb7/1.jpg', '观音桥九街北仓真正地铁口(直达洪崖洞)', '339.00', 0),
(16, 16, '渝北区', '40.33', '88.25', '酒店公寓', 2, 'img/detail/Jb/Jb8/1.jpg', '距地铁口70米/观音桥商圈', '455.00', 1),
(17, 17, '沙坪坝区', '45.55', '88', '独立房间', 2, 'img/detail/Jlp/Jlp1/1.jpg', '磁器口古镇\\川外\\西政\\重庆西站', '339.00', 1),
(18, 18, '沙坪坝区', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Jlp/Jlp2/1.jpg', '沙坪坝站/磁器口古镇//地铁一号线&温馨小北欧风小暖窝', '455.00', 0),
(19, 19, '沙坪坝区', '45', '89.25', '酒店公寓', 2, 'img/detail/Jlp/Jlp3/1.jpg', '地铁1号线沙坪坝站附近柚子臻品大床房', '455.00', 0),
(20, 20, '沙坪坝区', '45.55', '88.25', '整套公寓', 2, 'img/detail/Jlp/Jlp4/1.jpg', '1号线小龙坎旁近沙坪坝站重庆西站北欧风', '309.00', 0),
(21, 21, '沙坪坝区', '45.55', '88', '独立民宿房间', 2, 'img/detail/Jlp/Jlp5/1.jpg', '磁器口古镇\\川外\\西政\\红岩歌乐山\\三峡广场\\重庆西站', '455.00', 1),
(22, 22, '沙坪坝区', '45.55', '88.25', '酒店公寓', 2, 'img/detail/Jlp/Jlp6/1.jpg', '酒店公寓（落地窗大床房）', '309.00', 1),
(23, 23, '沙坪坝区', '45', '89.25', '独立民宿房间', 2, 'img/detail/Jlp/Jlp7/1.jpg', '住进设计师的画与梦中/交通便利 榻榻米床', '309.00', 0),
(24, 24, '沙坪坝区', '45.55', '88', '酒店房间', 2, 'img/detail/Jlp/Jlp8/1.jpg', '近磁器口古镇/沙坪坝商业中心/温馨甜心小窝', '339.00', 0),
(25, 25, '南岸区', '45.55', '88', '独立民宿房间', 1, 'img/detail/Na/Na1/1.jpg', '鹅公岩南桥头出行便利临南坪杨家坪两大商圈', '309.00', 1),
(26, 26, '南岸区', '40.33', '96.32', '独立民宿房间', 2, 'img/detail/Na/Na2/1.jpg', '重庆解放碑对面南滨路美食街中心位置/按摩椅全夜景江景房', '339.00', 1),
(27, 27, '南岸区', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Na/Na3/1.jpg', '地铁环线/近解放碑洪崖洞/长江索道/美食商圈影院', '339.00', 1),
(28, 28, '南岸区', '45', '88.25', '独立民宿房间', 1, 'img/detail/Na/Na4/1.jpg', '无敌江景大床房/南滨路江边赏解放碑/渝中半岛夜景', '309.00', 1),
(29, 29, '南岸区', '45', '88', '酒店公寓', 1, 'img/detail/Na/Na5/1.jpg', '江景房/南滨路/长江国际/65平/独立公寓', '339.00', 1),
(30, 30, '南岸区', '45', '96.32', '独立民宿房间', 1, 'img/detail/Na/Na6/1.jpg', '临江100米/温馨现代美式/安全舒适', '309.00', 0),
(31, 31, '南岸区', '45.55', '88.25', '独立民宿房间', 1, 'img/detail/Na/Na7/1.jpg', '南滨路江边赏解放碑/渝中半岛夜景', '455.00', 0),
(32, 32, '九龙坡区', '45.55', '88.25', '独立房间', 1, 'img/detail/Na/Na8/1.jpg', '近解放碑 万象城商圈 网红轻轨2号线旁', '309.00', 1),
(33, 33, '九龙坡区', '45', '96.32', '整套酒店公寓', 1, 'img/detail/Spb/Spb1/1.jpg', '商圈密码锁公寓/100兆宽带/北欧阳光/空中小花园', '455.00', 0),
(34, 34, '九龙坡区', '99.66', '96.32', '独立民宿房间', 2, 'img/detail/Spb/Spb2/1.jpg', '近解放碑+洪崖洞+川美涂鸦街+动物园', '339.00', 0),
(35, 35, '九龙坡区', '40.33', '88.88', '独立民宿房间', 2, 'img/detail/Spb/Spb3/1.jpg', '轻轨杨家坪站 钟书阁 万象城.近解放碑 洪崖洞', '339.00', 1),
(36, 36, '九龙坡区', '40.33', '96.32', '独立民宿房间', 1, 'img/detail/Spb/Spb4/1.jpg', '近解放碑南坪万象城旁', '339.00', 1),
(37, 37, '九龙坡区', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Spb/Spb5/1.jpg', '轻轨旁/步行街/川美/万象城/明亮榻榻米影音房', '339.00', 1),
(38, 38, '九龙坡区', '40.33', '96.39', '独立民宿房间', 1, 'img/detail/Spb/Spb6/1.jpg', '轻轨网红2号线直达解放碑､洪崖洞､体验李子坝轻轨穿楼', '309.00', 0),
(39, 39, '九龙坡区', '45', '89.25', '独立民宿房间', 1, 'img/detail/Spb/Spb7/1.jpg', '网红2号轻轨直达解放碑/洪崖洞/李子坝/川美 INS风', '339.00', 1),
(40, 40, '江北区', '45', '96.32', '独立房间', 1, 'img/detail/Spb/Spb8/1.jpg', '美式壁炉观景套房,近解放碑洪崖洞', '309.00', 0),
(41, 41, '江北区', '40.33', '88.25', '独立房间', 2, 'img/detail/Yb/Yb1/1.jpg', '梦想家/临近市中心观音桥步行街', '309.00', 1),
(42, 42, '江北区', '45', '96.32', '独立房间', 1, 'img/detail/Yb/Yb2/1.jpg', '巨幕影院加10米巨大江景飘窗', '309.00', 0),
(43, 43, '江北区', '45.66', '89.25', '独立民宿房间', 2, 'img/detail/Yb/Yb3/1.jpg', 'LOFT 解放碑直达 100寸投影江北九街', '339.00', 1),
(44, 44, '江北区', '45.55', '91.32', '独立房间', 2, 'img/detail/Yb/Yb4/1.jpg', '江北九街漫漫|Pomelo西柚/观音桥九街', '339.00', 0),
(45, 45, '江北区', '45.55', '91.38', '独立民宿房间', 2, 'img/detail/Yb/Yb5/1.jpg', '步行街内 解放碑洪崖洞地铁直达 私家影院', '309.00', 1),
(46, 46, '江北区', '45', '91.32', '独立民宿房间', 2, 'img/detail/Yb/Yb6/1.jpg', '汪汪窝【一狗两猫宠物民宿】近解放碑 洪崖洞 ', '309.00', 0),
(47, 47, '江北区', '45.55', '80', '独立民宿房间', 1, 'img/detail/Yb/Yb7/1.jpg', '薄荷蓝/江景/雾都重庆/楼下地铁', '309.00', 1),
(48, 48, '大渡口区', '45', '91.32', '独立民宿房间', 2, 'img/detail/Yb/Yb8/1.jpg', '江景房 杨家坪动物园/北欧风大床房', '339.00', 1),
(49, 49, '大渡口区', '45', '89.25', '酒店公寓', 2, 'img/detail/Yz/Yz1/1.jpg', '重庆西站/杨家坪动物园/梦幻城堡', '309.00', 1),
(50, 50, '大渡口区', '40.33', '91.32', '独立民宿房间', 2, 'img/detail/Yz/Yz2/1.jpg', '美式大床房公寓.可做饭停车.近重庆西站', '309.00', 1),
(51, 51, '大渡口区', '45', '88.25', '酒店公寓', 2, 'img/detail/Yz/Yz2/1.jpg', '网红2号线,近西站,解放碑,洪崖洞', '309.00', 0),
(52, 52, '大渡口区', '45.55', '89.25', '独立民宿房间', 1, 'img/detail/Yz/Yz4/1.jpg', '雅居乐精装房/临近重庆西站', '309.00', 1),
(53, 53, '大渡口区', '45.55', '91.32', '独立民宿房间', 1, 'img/detail/Yz/Yz5/1.jpg', '重庆西站-近梦幻城堡-轻轨直达李子坝', '339.00', 1),
(54, 54, '大渡口区', '40.33', '91.32', '独立民宿房间', 2, 'img/detail/Yz/Yz6/1.jpg', '北欧简约风格. 近西站,轻轨2号线旁', '309.00', 0),
(55, 55, '大渡口区', '46', '88', '独立民宿房间', 2, 'img/detail/Yz/Yz7/1.jpg', '山城隐渡', '309.00', 0),
(56, 56, '大渡口区', '46', '88', '独立民宿房间', 2, 'img/detail/Yz/Yz8/1.jpg', '山城隐渡', '309.00', 0),
(57, 57, '洪崖洞', '99.255', '2154.155', '公寓', 2, 'img/detail/Duk/Duk1/1.jpg', '靠近南山', '157.25', 1),
(58, 58, '洪崖洞', '45.66', '88.25', '整套酒店公寓', 2, 'img/detail/Duk/Duk2/1.jpg', '【雾都江景】洪崖洞/解放碑/大礼堂/轻轨站旁', '309.00', 1),
(59, 59, '洪崖洞', '45', '96.32', '酒店公寓', 1, 'img/detail/Duk/Duk3/1.jpg', '『时光留白』解放碑旁一线阳光江景公寓', '339.00', 0),
(60, 60, '洪崖洞', '45.55', '88.25', '酒店房间', 2, 'img/detail/Duk/Duk4/1.jpg', '【雾都江景】洪崖洞/解放碑/大礼堂/轻轨站旁', '339.00', 0),
(61, 61, '洪崖洞', '45.96', '95.33', '酒店公寓', 2, 'img/detail/Duk/Duk5/1.jpg', '高级住宅/夜景房间', '309.00', 1),
(62, 62, '洪崖洞', '95.55', '89.25', '酒店房间', 2, 'img/detail/Duk/Duk6/1.jpg', '【雾都江景】洪崖洞/解放碑/轻轨站旁', '339.00', 1),
(63, 63, '洪崖洞', '45', '80.25', '酒店房间', 2, 'img/detail/Duk/Duk7/1.jpg', '普通酒店/离轻轨较近', '309.00', 0),
(64, 64, '洪崖洞', '56.23', '56.21', '酒店房间', 2, 'img/detail/Duk/Duk8/1.jpg', '高级住宅/夜景房', '339.00', 0),
(65, 65, '解放碑', '42.66', '82.36', '酒店房间', 2, 'img/detail/Jb/Jb1/1.jpg', '周围商场/好吃街居多', '369.00', 1),
(66, 66, '解放碑', '99.55', '90.32', '独立民宿房间', 2, 'img/detail/Jb/Jb2/1.jpg', '轨道6号线/温馨双人房', '309.00', 0),
(67, 67, '解放碑', '45.55', '85.13', '酒店房间', 2, 'img/detail/Jb/Jb3/1.jpg', '6号线/周边商场/轻轨', '299.00', 0),
(68, 68, '解放碑', '45', '96.32', '酒店房间', 2, 'img/detail/Jb/Jb4/1.jpg', '6号轻轨直达解放碑/机场 毗邻观音桥/九街', '339.00', 1),
(69, 69, '解放碑', '45', '96.32', '独立房间', 2, 'img/detail/Jb/Jb5/1.jpg', '解放碑观音桥之间! 门口就是轻轨站', '339.00', 1),
(70, 70, '解放碑', '35', '88.25', '独立房间', 2, 'img/detail/Jb/Jb6/1.jpg', '新房~近洪崖洞,解放碑黄泥磅自由loft', '339.00', 0),
(71, 71, '解放碑', '45.55', '96.32', '独立民宿房间', 2, 'img/detail/Jb/Jb7/1.jpg', '观音桥九街北仓真正地铁口(直达洪崖洞)', '339.00', 0),
(72, 72, '解放碑', '40.33', '88.25', '酒店公寓', 2, 'img/detail/Jb/Jb8/1.jpg', '距地铁口70米/观音桥商圈', '455.00', 1),
(73, 73, '观音桥', '45.55', '88', '独立房间', 2, 'img/detail/Jlp/Jlp1/1.jpg', '磁器口古镇\\川外\\西政\\重庆西站', '339.00', 1),
(74, 74, '观音桥', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Jlp/Jlp2/1.jpg', '沙坪坝站/磁器口古镇//地铁一号线&温馨小北欧风小暖窝', '455.00', 0),
(75, 75, '观音桥', '45', '89.25', '酒店公寓', 2, 'img/detail/Jlp/Jlp3/1.jpg', '地铁1号线沙坪坝站附近柚子臻品大床房', '455.00', 0),
(76, 76, '观音桥', '45.55', '88.25', '整套公寓', 2, 'img/detail/Jlp/Jlp4/1.jpg', '1号线小龙坎旁近沙坪坝站重庆西站北欧风', '309.00', 0),
(77, 77, '观音桥', '45.55', '88', '独立民宿房间', 2, 'img/detail/Jlp/Jlp5/1.jpg', '磁器口古镇\\川外\\西政\\红岩歌乐山\\三峡广场\\重庆西站', '455.00', 1),
(78, 78, '观音桥', '45.55', '88.25', '酒店公寓', 2, 'img/detail/Jlp/Jlp6/1.jpg', '酒店公寓（落地窗大床房）', '309.00', 1),
(79, 79, '观音桥', '45', '89.25', '独立民宿房间', 2, 'img/detail/Jlp/Jlp7/1.jpg', '住进设计师的画与梦中/交通便利 榻榻米床', '309.00', 0),
(80, 80, '观音桥', '45.55', '88', '酒店房间', 2, 'img/detail/Jlp/Jlp8/1.jpg', '近磁器口古镇/沙坪坝商业中心/温馨甜心小窝', '339.00', 0),
(81, 81, '磁器口', '45.55', '88', '独立民宿房间', 1, 'img/detail/Na/Na1/1.jpg', '鹅公岩南桥头出行便利临南坪杨家坪两大商圈', '309.00', 1),
(82, 82, '磁器口', '40.33', '96.32', '独立民宿房间', 2, 'img/detail/Na/Na2/1.jpg', '重庆解放碑对面南滨路美食街中心位置/按摩椅全夜景江景房', '339.00', 1),
(83, 83, '磁器口', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Na/Na3/1.jpg', '地铁环线/近解放碑洪崖洞/长江索道/美食商圈影院', '339.00', 1),
(84, 84, '磁器口', '45', '88.25', '独立民宿房间', 1, 'img/detail/Na/Na4/1.jpg', '无敌江景大床房/南滨路江边赏解放碑/渝中半岛夜景', '309.00', 1),
(85, 85, '磁器口', '45', '88', '酒店公寓', 1, 'img/detail/Na/Na5/1.jpg', '江景房/南滨路/长江国际/65平/独立公寓', '339.00', 1),
(86, 86, '磁器口', '45', '96.32', '独立民宿房间', 1, 'img/detail/Na/Na6/1.jpg', '临江100米/温馨现代美式/安全舒适', '309.00', 0),
(87, 87, '磁器口', '45.55', '88.25', '独立民宿房间', 1, 'img/detail/Na/Na7/1.jpg', '南滨路江边赏解放碑/渝中半岛夜景', '455.00', 0),
(88, 88, '磁器口', '45.55', '88.25', '独立房间', 1, 'img/detail/Na/Na8/1.jpg', '近解放碑 万象城商圈 网红轻轨2号线旁', '309.00', 1),
(89, 89, '朝天门', '45', '96.32', '整套酒店公寓', 1, 'img/detail/Spb/Spb1/1.jpg', '商圈密码锁公寓/100兆宽带/北欧阳光/空中小花园', '455.00', 0),
(90, 90, '朝天门', '99.66', '96.32', '独立民宿房间', 2, 'img/detail/Spb/Spb2/1.jpg', '近解放碑+洪崖洞+川美涂鸦街+动物园', '339.00', 0),
(91, 91, '朝天门', '40.33', '88.88', '独立民宿房间', 2, 'img/detail/Spb/Spb3/1.jpg', '轻轨杨家坪站 钟书阁 万象城.近解放碑 洪崖洞', '339.00', 1),
(92, 92, '朝天门', '40.33', '96.32', '独立民宿房间', 1, 'img/detail/Spb/Spb4/1.jpg', '近解放碑南坪万象城旁', '339.00', 1),
(93, 93, '朝天门', '45.55', '88.25', '独立民宿房间', 2, 'img/detail/Spb/Spb5/1.jpg', '轻轨旁/步行街/川美/万象城/明亮榻榻米影音房', '339.00', 1),
(94, 94, '朝天门', '40.33', '96.39', '独立民宿房间', 1, 'img/detail/Spb/Spb6/1.jpg', '轻轨网红2号线直达解放碑､洪崖洞､体验李子坝轻轨穿楼', '309.00', 0),
(95, 95, '朝天门', '45', '89.25', '独立民宿房间', 1, 'img/detail/Spb/Spb7/1.jpg', '网红2号轻轨直达解放碑/洪崖洞/李子坝/川美 INS风', '339.00', 1),
(96, 96, '朝天门', '45', '96.32', '独立房间', 1, 'img/detail/Spb/Spb8/1.jpg', '美式壁炉观景套房,近解放碑洪崖洞', '309.00', 0),
(97, 97, '南滨路', '40.33', '88.25', '独立房间', 2, 'img/detail/Yb/Yb1/1.jpg', '梦想家/临近市中心观音桥步行街', '309.00', 1),
(98, 98, '南滨路', '45', '96.32', '独立房间', 1, 'img/detail/Yb/Yb2/1.jpg', '巨幕影院加10米巨大江景飘窗', '309.00', 0),
(99, 99, '南滨路', '45.66', '89.25', '独立民宿房间', 2, 'img/detail/Yb/Yb3/1.jpg', 'LOFT 解放碑直达 100寸投影江北九街', '339.00', 1),
(100, 100, '南滨路', '45.55', '91.32', '独立房间', 2, 'img/detail/Yb/Yb4/1.jpg', '江北九街漫漫|Pomelo西柚/观音桥九街', '339.00', 0),
(101, 101, '南滨路', '45.55', '91.38', '独立民宿房间', 2, 'img/detail/Yb/Yb5/1.jpg', '步行街内 解放碑洪崖洞地铁直达 私家影院', '309.00', 1),
(102, 102, '南滨路', '45', '91.32', '独立民宿房间', 2, 'img/detail/Yb/Yb6/1.jpg', '汪汪窝【一狗两猫宠物民宿】近解放碑 洪崖洞 ', '309.00', 0),
(103, 103, '南滨路', '45.55', '80', '独立民宿房间', 1, 'img/detail/Yb/Yb7/1.jpg', '薄荷蓝/江景/雾都重庆/楼下地铁', '309.00', 1),
(104, 104, '南滨路', '45', '91.32', '独立民宿房间', 2, 'img/detail/Yb/Yb8/1.jpg', '江景房 杨家坪动物园/北欧风大床房', '339.00', 1),
(105, 105, '江北机场', '45', '89.25', '酒店公寓', 2, 'img/detail/Yz/Yz1/1.jpg', '重庆西站/杨家坪动物园/梦幻城堡', '309.00', 1),
(106, 106, '江北机场', '40.33', '91.32', '独立民宿房间', 2, 'img/detail/Yz/Yz2/1.jpg', '美式大床房公寓.可做饭停车.近重庆西站', '309.00', 1),
(107, 107, '江北机场', '45', '88.25', '酒店公寓', 2, 'img/detail/Yz/Yz2/1.jpg', '网红2号线,近西站,解放碑,洪崖洞', '309.00', 0),
(108, 108, '江北机场', '45.55', '89.25', '独立民宿房间', 1, 'img/detail/Yz/Yz4/1.jpg', '雅居乐精装房/临近重庆西站', '309.00', 1),
(109, 109, '江北机场', '45.55', '91.32', '独立民宿房间', 1, 'img/detail/Yz/Yz5/1.jpg', '重庆西站-近梦幻城堡-轻轨直达李子坝', '339.00', 1),
(110, 110, '江北机场', '40.33', '91.32', '独立民宿房间', 2, 'img/detail/Yz/Yz6/1.jpg', '北欧简约风格. 近西站,轻轨2号线旁', '309.00', 0),
(111, 111, '江北机场', '46', '88', '独立民宿房间', 2, 'img/detail/Yz/Yz7/1.jpg', '山城隐渡', '309.00', 0),
(112, 112, '江北机场', '45.66', '89.25', '独立民宿房间', 2, 'img/detail/Yz/Yz8/1.jpg', 'LOFT 解放碑直达 100寸投影江北九街', '339.00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hl_user`
--

CREATE TABLE `hl_user` (
  `id` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `password` varchar(62) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hl_user`
--

INSERT INTO `hl_user` (`id`, `uname`, `password`, `tel`) VALUES
(6, 'username01', '123456', '12345678910'),
(7, 'username02', '123456', '12345678910'),
(8, 'username03', '123456', '12345678910'),
(9, 'username04', '123456', '12345678910'),
(10, 'username05', '123456', '12345678910'),
(25, 'username007', '123456789', '13648344320'),
(27, 'username000', '123456789', '13648344320'),
(28, 'usename007', '123456789', '13648344320'),
(29, 'zzzzzzzz', 'yyyyyyyy', '13254687914');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hl_booklist`
--
ALTER TABLE `hl_booklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hl_products`
--
ALTER TABLE `hl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hl_user`
--
ALTER TABLE `hl_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hl_booklist`
--
ALTER TABLE `hl_booklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `hl_products`
--
ALTER TABLE `hl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- 使用表AUTO_INCREMENT `hl_user`
--
ALTER TABLE `hl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
