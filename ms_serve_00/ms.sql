-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-26 12:53:44
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
-- Database: `ms`
--


USE app_ms02;


-- --------------------------------------------------------

--
-- 表的结构 `ms_amenities`
--

CREATE TABLE `ms_amenities` (
  `Amenities_id` int(11) NOT NULL,
  `Amenities_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_bed_type`
--

CREATE TABLE `ms_bed_type` (
  `Bed_type_id` int(11) NOT NULL,
  `Bed_type_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_bed_type`
--

INSERT INTO `ms_bed_type` (`Bed_type_id`, `Bed_type_name`) VALUES
(1, '沙发床'),
(2, '沙发'),
(3, '地板床垫'),
(4, '单人床'),
(5, '双人床');

-- --------------------------------------------------------

--
-- 表的结构 `ms_building`
--

CREATE TABLE `ms_building` (
  `Building_id` int(11) NOT NULL,
  `Building_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_carousel`
--

CREATE TABLE `ms_carousel` (
  `Carousel_id` int(11) NOT NULL,
  `Carousel_imgurl` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_carousel`
--

INSERT INTO `ms_carousel` (`Carousel_id`, `Carousel_imgurl`) VALUES
(1, 'carousel1.jpg'),
(2, 'carousel2.jpg'),
(3, 'carousel3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ms_city`
--

CREATE TABLE `ms_city` (
  `City_id` int(11) NOT NULL,
  `City_name` varchar(64) DEFAULT NULL,
  `City_longitude` varchar(64) DEFAULT NULL,
  `City_latitude` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_city`
--

INSERT INTO `ms_city` (`City_id`, `City_name`, `City_longitude`, `City_latitude`) VALUES
(1, '上海', '121.47', '31.23'),
(2, '北京', '116.4', '39.9');

-- --------------------------------------------------------

--
-- 表的结构 `ms_district`
--

CREATE TABLE `ms_district` (
  `District_id` int(11) NOT NULL,
  `District_name` varchar(64) DEFAULT NULL,
  `District_longitude` varchar(64) DEFAULT NULL,
  `District_latitude` varchar(64) DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_district`
--

INSERT INTO `ms_district` (`District_id`, `District_name`, `District_longitude`, `District_latitude`, `City_id`) VALUES
(1, '静安区', '121.45', '31.23', 1),
(2, '徐汇区', '121.43', '31.18', 1),
(3, '长宁区', '121.42', '31.22', 1),
(4, '黄浦区', '121.48', '31.23', 1),
(5, '虹口区', '121.50', '31.27', 1),
(6, '宝山区', '121.48', '31.40', 1),
(7, '浦东新区', '121.53', '31.22', 1),
(8, '普陀区', '121.40', '31.25', 1),
(9, '杨浦区', '121.52', '31.27', 1),
(10, '闵行区', '121.38', '31.12', 1),
(11, '嘉定区', '121.27', '31.38', 1),
(12, '松江区', '121.22', '31.03', 1),
(13, '金山区', '121.33', '30.75', 1),
(14, '青浦区', '121.12', '31.15', 1),
(15, '奉贤区', '121.47', '30.92', 1),
(16, '崇明区', '121.40', '31.62', 1),
(17, '西城区', '116.37', '39.92', 2),
(18, '东城区', '116.42', '39.93', 2),
(19, '朝阳区', '116.43', '39.92', 2),
(20, '房山区', '116.13', '39.75', 2),
(21, '海淀区', '116.30', '39.95', 2),
(22, '石景山区', '116.22', '39.90', 2),
(23, '顺义区', '116.65', '40.13', 2),
(24, '丰台区', '116.28', '39.85', 2),
(25, '怀柔区', '116.63', '40.32', 2),
(26, '密云区', '116.83', '40.37', 2),
(27, '昌平区', '116.23', '40.22', 2),
(28, '大兴区', '116.33', '39.73', 2),
(29, '平谷区', '117.12', '40.13', 2),
(30, '通州区', '116.65', '39.92', 2),
(31, '延庆区', '115.97', '40.45', 2),
(32, '门头沟区', '116.10', '39.93', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ms_hot_place`
--

CREATE TABLE `ms_hot_place` (
  `hotid` int(11) NOT NULL,
  `hot_place_img` varchar(64) DEFAULT NULL,
  `hot_city` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_hot_place`
--

INSERT INTO `ms_hot_place` (`hotid`, `hot_place_img`, `hot_city`) VALUES
(1, 'img/story/hot_place_1.jpg', '东京'),
(2, 'img/story/hot_place_2.jpg', '大阪'),
(3, 'img/story/hot_place_3.jpg', '京都'),
(4, 'img/story/hot_place_4.jpg', '巴黎'),
(5, 'img/story/hot_place_5.jpg', '台北'),
(6, 'img/story/hot_place_6.jpg', '成都'),
(7, 'img/story/hot_place_7.jpg', '洛杉矶'),
(8, 'img/story/hot_place_8.jpg', '伦敦'),
(9, 'img/story/hot_place_9.jpg', '曼谷'),
(10, 'img/story/hot_place_10.jpg', '北京'),
(11, 'img/story/hot_place_11.jpg', '上海'),
(12, 'img/story/hot_place_12.jpg', '香港');

-- --------------------------------------------------------

--
-- 表的结构 `ms_house`
--

CREATE TABLE `ms_house` (
  `House_id` int(11) NOT NULL,
  `House_City_id` int(11) DEFAULT NULL,
  `House_District_id` int(11) DEFAULT NULL,
  `House_name` varchar(128) DEFAULT NULL,
  `House_User_id` int(11) DEFAULT NULL,
  `House_longitude` varchar(64) DEFAULT NULL,
  `House_latitude` varchar(64) DEFAULT NULL,
  `House_people_num` int(11) DEFAULT NULL,
  `House_type` varchar(64) DEFAULT NULL,
  `House_price` int(11) DEFAULT NULL,
  `House_tag` varchar(64) DEFAULT NULL,
  `House_bednum` int(11) DEFAULT NULL,
  `House_Bed` varchar(128) DEFAULT NULL,
  `House_restroom` int(11) DEFAULT NULL,
  `House_HouseAmenities` varchar(128) DEFAULT NULL,
  `House_Amenities` varchar(64) DEFAULT NULL,
  `House_Building` varchar(64) DEFAULT NULL,
  `House_detail` varchar(256) DEFAULT NULL,
  `House_address` varchar(128) DEFAULT NULL,
  `House_number` varchar(128) DEFAULT NULL,
  `House_trip` varchar(128) DEFAULT NULL,
  `House_label` varchar(64) DEFAULT NULL,
  `House_imgurl` varchar(128) DEFAULT NULL,
  `House_rool` varchar(128) NOT NULL,
  `House_travel_message` varchar(1000) NOT NULL,
  `House_detailed_address` varchar(1000) NOT NULL,
  `House_Aimg` varchar(10000) NOT NULL,
  `House_message` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_house`
--

INSERT INTO `ms_house` (`House_id`, `House_City_id`, `House_District_id`, `House_name`, `House_User_id`, `House_longitude`, `House_latitude`, `House_people_num`, `House_type`, `House_price`, `House_tag`, `House_bednum`, `House_Bed`, `House_restroom`, `House_HouseAmenities`, `House_Amenities`, `House_Building`, `House_detail`, `House_address`, `House_number`, `House_trip`, `House_label`, `House_imgurl`, `House_rool`, `House_travel_message`, `House_detailed_address`, `House_Aimg`, `House_message`) VALUES
(1, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.45', '31.23', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(2, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.43', '31.18', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(3, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.42', '31.22', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(4, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.48', '31.23', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(5, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.50', '31.27', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(6, 1, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '121.48', '31.40', 3, '独立房间', 521, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '精品酒店', 'null', 'null', NULL, 'null', 'null', '/img-index/index1.jpg', '', '', '', '', NULL),
(7, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.5', '38.9', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(8, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.13', '40.71', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(9, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.23', '39.77', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(10, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.43', '39.92', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(11, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.42', '39.93', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(12, 2, NULL, '【浪漫满屋】国贸CBD三里屯的阳光复古浪漫公寓 托斯卡纳色调 夜景超美', 1, '116.37', '39.92', 3, '独立房间', 600, '0.9', 2, '圆床', 2, '厨房,空调', '免费停车位', '整间Loft', 'null', 'null', NULL, 'null', 'null', '/img-index/index2.jpg', '', '', '', '', NULL),
(13, 11, NULL, 'Sunny | 地中海度假屋×超大私人露台绿植环绕|天安门北京站10分钟 楼下新世界百货国瑞城', 1, '1231321', '12313213', 2, '整套公寓', 598, '9折', 1, '标准双人床', 11, '无线网络,厨房,洗发水,吹风机,生活必需品,空调', '免费停车位', '精品酒店', 'null', '兴隆都市馨园,北京,中国', NULL, 'null', '4.3分▪33条评论,超赞房东,近地铁,可以做饭,自主入住,有洗衣机', '/img-index/index1.jpg', '独享整个房源，无需与房东或他人共住,超赞房东经验丰富、评分很高，他们致力于为房客提供优质的住宿体验,入住时间 15:00后 · 退房时间 12:00,通过密码锁自助入住', '\r\n•\r\n\r\n1､到达我家的最近地铁站\r\n5/7号线【磁器口】站,步行600米\r\n1站￫天坛､崇文门\r\n2站￫北京站､东单\r\n4站￫东四\r\n6站￫北京南站\r\n8站￫ 北京西站\r\n9站￫欢乐谷景区 \r\n\r\n\r\n2､火车站\r\n  【北京站】打车10分钟/地铁2站\r\n  【北京南站】打车/地铁28分钟\r\n  【北京西站】打车34分钟/地铁29分钟\r\n\r\n\r\n3､机场\r\n  【首都国际机场】45分钟打车/地铁60分钟\r\n\r\n\r\nPS:在您成功预定【Sunny】后,将会收到我制作的详细想路图,我会在每个地铁口､十字路口､地标建筑前拍照,陪着你快速回家', '\r\n•\r\n\r\n\r\n住在这里,不仅享受舒适的居住空间,而且你的生活有超多选择,很多地方抬脚即达~\r\n\r\n\r\n1､我家楼下就有各式各样的生活类小店､生活非常方便,有新辣道､戈拿旺巴西烤肉､将太无二､海底捞火锅､绿茶餐厅等;全时､物美24小时便利､水果店､中国移动､各大银行｡\r\n\r\n\r\n2､购物逛街:300步行到帝都老牌购物商圈 崇文门新世界百货､国瑞城､20分钟步行:王府井大街､东单､东交民巷\r\n\r\n\r\n3､临近多家著名医院:北京两广中医､同仁堂中医､北京医院､协和医院,都在10分钟左右车程\r\n\r\n\r\n4､位于首都中心景区,15分钟左右车程至:天坛､天安门､故宫､南锣鼓巷等地,对旅游观光的朋友太友好了\r\n\r\n\r\n5､20分钟车程:到达朝阳门商圈(悠唐生活广场､赛特购物中心),三里屯太古里､酒吧街､工体商圈', 'm12 15a3 3 0 1 0 0 6 3 3 0 0 0 0-6zm0 5a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm5.92-5.78a.5.5 0 1 1 -.84.55c-1.19-1.81-3.07-2.77-5.08-2.77s-3.89.96-5.08 2.78a.5.5 0 0 1 -.84-.55c1.38-2.1 3.58-3.23 5.92-3.23s4.54 1.13 5.92 3.23zm2.98-3.03a.5.5 0 1 1 -.79.61c-1.66-2.14-5.22-3.8-8.11-3.8-2.83 0-6.26 1.62-8.12 3.82a.5.5 0 0 1 -.76-.65c2.05-2.42 5.75-4.17 8.88-4.17 3.19 0 7.05 1.8 8.9 4.19zm2.95-2.33a.5.5 0 0 1 -.71-.02c-2.94-3.07-6.71-4.84-11.14-4.84s-8.2 1.77-11.14 4.85a.5.5 0 0 1 -.72-.69c3.12-3.27 7.14-5.16 11.86-5.16s8.74 1.89 11.86 5.16a.5.5 0 0 1 -.02.71z,m10.5 0a .5.5 0 0 0 -.5.5v7a .5.5 0 0 1 -.49.5h-1.51v-7.5a.5.5 0 1 0 -1 0v7.5h-1.51a.5.5 0 0 1 -.49-.5v-7a .5.5 0 1 0 -1 0v7c0 .83.67 1.5 1.49 1.5h1.51v5c0 .03.01.06.02.09a1.49 1.49 0 0 0 -1.02 1.41v7c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5v-7c0-.66-.43-1.21-1.02-1.41.01-.03.02-.06.02-.09v-5h1.51a1.5 1.5 0 0 0 1.49-1.5v-7a .5.5 0 0 0 -.5-.5zm-2.5 15.5v7a .5.5 0 0 1 -.5.5.5.5 0 0 1 -.5-.5v-7c0-.28.22-.5.5-.5s.5.22.5.5zm11.5-15.5h-2c-1.4 0-2.5 1.07-2.5 2.5v7c0 1.43 1.1 2.5 2.5 2.5h1.5v2.09a1.49 1.49 0 0 0 -.5-.09c-.83 0-1.5.67-1.5 1.5v7c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5v-22.5zm-2 11c-.86 0-1.5-.63-1.5-1.5v-7c0-.87.65-1.5 1.5-1.5h1.5v10zm1.5 11.5a.5.5 0 0 1 -.5.5.5.5 0 0 1 -.5-.5v-7c0-.28.22-.5.5-.5s.5.22.5.5z,m14.5 4h .5v-1.5c0-1.39-1.12-2.5-2.5-2.5h-.99a2.5 2.5 0 0 0 -2.51 2.5v1.5zm-4.5-1.5c0-.83.67-1.5 1.51-1.5h.99c.83 0 1.5.67 1.5 1.5v.5h-4zm5.5 2.5h-7a3.5 3.5 0 0 0 -3.5 3.49v12.01c0 1.93 1.57 3.5 3.5 3.5h7a3.5 3.5 0 0 0 3.5-3.49v-12.02c0-1.92-1.57-3.49-3.5-3.49zm2.5 15.51a2.5 2.5 0 0 1 -2.5 2.49h-7a2.5 2.5 0 0 1 -2.5-2.49v-12.02a2.5 2.5 0 0 1 2.5-2.49h7a2.5 2.5 0 0 1 2.5 2.49v12.01zm-1-11.01a.5.5 0 0 1 -.5.5h-9a .5.5 0 0 1 0-1h9a .5.5 0 0 1 .5.5z,m6.5 5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zm0 4a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm10.15-4.09a125.01 125.01 0 0 0 -1.43-.45 217.8 217.8 0 0 0 -3.98-1.21c-2.68-.78-4.51-1.23-5.24-1.25-3.43.04-6.01 2.28-6.01 5.5 0 2 .98 3.62 2.53 4.57 0 .02 0 .04.01.06.19.68.31 1.6.39 2.7a40.42 40.42 0 0 1 .05 4.17 2.01 2.01 0 0 0 2.03 2h2.03c1.25 0 1.97-.73 1.97-1.98 0-.07 0-.14 0-.31-.03-1.86.16-3.27.89-4.81a7.75 7.75 0 0 1 1-1.59.5.5 0 0 0 .09-.17 71.83 71.83 0 0 0 1.53-.4 97.27 97.27 0 0 0 4.15-1.24.5.5 0 0 0 .34-.48v-4.65a.5.5 0 0 0 -.35-.48zm-7.67 8.57c-.81 1.71-1.01 3.26-.98 5.25v.29c0 .7-.28.98-.97.98h-2.03c-.6 0-1.03-.48-1.03-.98a41.35 41.35 0 0 0 -.05-4.26 18.74 18.74 0 0 0 -.26-2.15c.71.25 1.5.39 2.33.39.85 0 2.05-.19 3.53-.51-.21.32-.39.65-.55.99zm7.02-6.98v3.17a96.43 96.43 0 0 1 -3.76 1.11 69.77 69.77 0 0 1 -1.72.45c-1.98.49-3.55.76-4.52.76-2.89 0-5-1.85-5-4.5 0-2.63 2.11-4.47 5.01-4.5.59.01 2.41.46 4.97 1.21a216.71 216.71 0 0 1 4.99 1.53l.04.01v.75zm7.92 3.1a1.91 1.91 0 0 1 -.42.46 1.97 1.97 0 0 1 -1.25.44c-.47 0-.8-.15-1.51-.57-.54-.33-.77-.43-.99-.43-.3 0-.55.05-.75.13a.91.91 0 0 0 -.19.09.5.5 0 0 1 -.62-.78c.09-.07.24-.16.44-.24a3.01 3.01 0 0 1 1.12-.2c.47 0 .8.15 1.51.57.54.33.77.43.99.43a.98.98 0 0 0 .63-.22.98.98 0 0 0 .2-.21.5.5 0 0 1 .85.53zm-5.81-2.95a.5.5 0 0 1 .08-.7c.09-.07.24-.16.44-.24a3.01 3.01 0 0 1 1.12-.2c.47 0 .8.15 1.51.57.54.33.77.43.99.43a.98.98 0 0 0 .63-.22.98.98 0 0 0 .2-.21.5.5 0 0 1 .85.53 1.91 1.91 0 0 1 -.42.46 1.97 1.97 0 0 1 -1.25.44c-.47 0-.8-.15-1.51-.57-.54-.33-.77-.43-.99-.43-.3 0-.55.05-.75.13a.91.91 0 0 0 -.19.09.5.5 0 0 1 -.7-.08z,m23.5 4h-1.5v-1.5c0-1.38-1.12-2.5-2.5-2.5h-15a2.5 2.5 0 0 0 -2.5 2.5v1.5h-1.5a.5.5 0 1 0 0 1h1.5v15.5c0 .83.67 1.5 1.5 1.5h1.5v.5c0 .83.67 1.5 1.5 1.5h14c .83 0 1.5-.67 1.5-1.5v-17.5h1.5a.5.5 0 0 0 0-1zm-20.5-1.5c0-.82.67-1.5 1.5-1.5h15.01c.82 0 1.49.67 1.49 1.5v1.5h-2v-.51a.5.5 0 0 1 .5-.49.5.5 0 0 0 0-1 1.5 1.5 0 0 0 -1.5 1.5v11.5h-15zm0 13.5h15v2h-15zm .5 5a .5.5 0 0 1 -.5-.5v-1.5h15v1.51c0 .27-.23.5-.5.5h-14zm17.5 1.5c0 .28-.22.5-.5.5h-14a .5.5 0 0 1 -.5-.5v-.5h11.5c.83 0 1.5-.67 1.5-1.5v-15.5h2z,m21.89 18a .5.5 0 0 1 -.68.18l-3.29-1.9.79 2.93a.5.5 0 0 1 -.97.26l-1.04-3.89-4.7-2.71v5.43l2.85 2.85a.5.5 0 1 1 -.71.71l-2.14-2.15v3.79a.5.5 0 1 1 -1 0v-3.79l-2.15 2.15a.5.5 0 1 1 -.71-.71l2.86-2.86v-5.43l-4.7 2.72-1.04 3.9a.5.5 0 1 1 -.97-.26l.79-2.93-3.28 1.9a.5.5 0 0 1 -.5-.87l3.28-1.9-2.93-.79a.5.5 0 0 1 -.35-.61.51.51 0 0 1 .61-.35l3.89 1.04 4.7-2.71-4.7-2.71-3.9 1.04a.5.5 0 0 1 -.61-.35.5.5 0 0 1 .35-.61l2.93-.79-3.28-1.9a.5.5 0 1 1 .5-.87l3.28 1.9-.78-2.93a.5.5 0 0 1 .97-.26l1.04 3.9 4.7 2.71v-5.42l-2.85-2.86a.5.5 0 1 1 .71-.71l2.14 2.15v-3.79a.5.5 0 1 1 1 0v3.79l2.15-2.15a.5.5 0 1 1 .71.71l-2.86 2.86v5.43l4.7-2.71 1.04-3.9a.5.5 0 1 1 .97.26l-.79 2.93 3.29-1.9a.5.5 0 1 1 .5.87l-3.29 1.89 2.93.79a.5.5 0 1 1 -.26.97l-3.89-1.05-4.7 2.71 4.7 2.71 3.9-1.05a.5.5 0 0 1 .26.97l-2.93.79 3.29 1.9a.5.5 0 0 1 .18.68z,m21.89 18a .5.5 0 0 1 -.68.18l-3.29-1.9.79 2.93a.5.5 0 0 1 -.97.26l-1.04-3.89-4.7-2.71v5.43l2.85 2.85a.5.5 0 1 1 -.71.71l-2.14-2.15v3.79a.5.5 0 1 1 -1 0v-3.79l-2.15 2.15a.5.5 0 1 1 -.71-.71l2.86-2.86v-5.43l-4.7 2.72-1.04 3.9a.5.5 0 1 1 -.97-.26l.79-2.93-3.28 1.9a.5.5 0 0 1 -.5-.87l3.28-1.9-2.93-.79a.5.5 0 0 1 -.35-.61.51.51 0 0 1 .61-.35l3.89 1.04 4.7-2.71-4.7-2.71-3.9 1.04a.5.5 0 0 1 -.61-.35.5.5 0 0 1 .35-.61l2.93-.79-3.28-1.9a.5.5 0 1 1 .5-.87l3.28 1.9-.78-2.93a.5.5 0 0 1 .97-.26l1.04 3.9 4.7 2.71v-5.42l-2.85-2.86a.5.5 0 1 1 .71-.71l2.14 2.15v-3.79a.5.5 0 1 1 1 0v3.79l2.15-2.15a.5.5 0 1 1 .71.71l-2.86 2.86v5.43l4.7-2.71 1.04-3.9a.5.5 0 1 1 .97.26l-.79 2.93 3.29-1.9a.5.5 0 1 1 .5.87l-3.29 1.89 2.93.79a.5.5 0 1 1 -.26.97l-3.89-1.05-4.7 2.71 4.7 2.71 3.9-1.05a.5.5 0 0 1 .26.97l-2.93.79 3.29 1.9a.5.5 0 0 1 .18.68z', '整套房子/公寓,超赞房东,入住/退房,自助入住\r\n'),
(14, -1, -1, '', NULL, NULL, NULL, 4, '', NULL, NULL, 1, NULL, 1, NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, '', '', '', '', NULL),
(15, -1, -1, '', NULL, NULL, NULL, 4, '', NULL, NULL, 1, NULL, 1, NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ms_house_amenities`
--

CREATE TABLE `ms_house_amenities` (
  `HouseAmenities_id` int(11) NOT NULL,
  `HouseAmenities_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_house_bed`
--

CREATE TABLE `ms_house_bed` (
  `HouseBed_id` int(11) NOT NULL,
  `HouseBed_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_house_img`
--

CREATE TABLE `ms_house_img` (
  `HouseImg_id` int(11) NOT NULL,
  `HouseImg_House_id` int(11) DEFAULT NULL,
  `HouseImg_sm` varchar(128) DEFAULT NULL,
  `HouseImg_md` varchar(128) DEFAULT NULL,
  `HouseImg_lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_house_img`
--

INSERT INTO `ms_house_img` (`HouseImg_id`, `HouseImg_House_id`, `HouseImg_sm`, `HouseImg_md`, `HouseImg_lg`) VALUES
(1, 13, NULL, 'https://z1.muscache.cn/im/pictures/f4043af9-eacb-47c2-b350-d6ad0e8e419b.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/f3e442f6-f07a-4a8e-a5c4-7b5d7495df0b.jpg?aki_policy=xx_large'),
(2, 13, NULL, 'https://z1.muscache.cn/im/pictures/79c0a62a-72b4-4587-a556-a600ca25b0ec.jpg?aki_policy=large', NULL),
(3, 13, NULL, 'https://z1.muscache.cn/im/pictures/a96de13b-5497-4361-82ff-c653cf181036.jpg?aki_policy=large', NULL),
(4, 13, NULL, 'https://z1.muscache.cn/im/pictures/51e269e5-e80d-4ab6-8581-635714422640.jpg?aki_policy=large', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ms_house_time`
--

CREATE TABLE `ms_house_time` (
  `Time_id` int(11) NOT NULL,
  `Time_House_id` int(11) DEFAULT NULL,
  `Time_start` bigint(20) DEFAULT NULL,
  `Time_end` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_house_time`
--

INSERT INTO `ms_house_time` (`Time_id`, `Time_House_id`, `Time_start`, `Time_end`) VALUES
(1, 4, 2019, 2019),
(2, 6, 2019, 2019),
(3, 4, 2019, 2019),
(4, 1, 2019, 2019),
(5, 1, 2019, 2019),
(6, 2, 2019, 2019),
(7, 2, 2019, 2019),
(8, 2, 2019, 2019),
(9, 3, 2019, 2019),
(10, 3, 2019, 2019),
(11, 4, 2019, 2019),
(12, 5, 2019, 2019),
(13, 5, 2019, 2019),
(14, 6, 2019, 2019),
(15, 7, 2019, 2019),
(16, 8, 2019, 2019),
(17, 9, 2019, 2019),
(18, 10, 2019, 2019),
(19, 11, 2019, 2019),
(20, 12, 2019, 2019);

-- --------------------------------------------------------

--
-- 表的结构 `ms_housingresources_type`
--

CREATE TABLE `ms_housingresources_type` (
  `housingResources_id` int(11) NOT NULL,
  `housingResources_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_housingresources_type`
--

INSERT INTO `ms_housingresources_type` (`housingResources_id`, `housingResources_name`) VALUES
(1, '公寓型住宅'),
(2, '独栋房'),
(3, '别墅'),
(4, 'Loft'),
(5, '酒店'),
(6, '酒店式公寓'),
(7, '精品酒店'),
(8, '青年旅舍'),
(9, '农家乐'),
(10, '度假村'),
(11, '乡村小屋'),
(12, '蒙古包'),
(13, '平房'),
(14, '联排别墅'),
(15, '木屋'),
(16, '露营车/房车'),
(17, '帐篷'),
(18, '露营地'),
(19, '树屋'),
(20, '船屋'),
(21, '茅屋'),
(22, '冰屋'),
(23, '城堡'),
(24, '风车房'),
(25, '灯塔'),
(26, '巴士'),
(27, '火车'),
(28, '飞机');

-- --------------------------------------------------------

--
-- 表的结构 `ms_rent_type`
--

CREATE TABLE `ms_rent_type` (
  `Rent_id` int(11) NOT NULL,
  `Rent_name` varchar(64) DEFAULT NULL,
  `Rent_about` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_rent_type`
--

INSERT INTO `ms_rent_type` (`Rent_id`, `Rent_name`, `Rent_about`) VALUES
(1, '整个房源', '房客独享整个房源，无需与您或他人共住'),
(2, '独立房间', '房客有自己的独立房间，与他人共享客厅等空间'),
(3, '合住房间', '房客住在与他人合用的卧室或公共区域');

-- --------------------------------------------------------

--
-- 表的结构 `ms_story`
--

CREATE TABLE `ms_story` (
  `stid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_img` varchar(200) DEFAULT NULL,
  `md_img` varchar(200) DEFAULT NULL,
  `story_family` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `give_like` int(11) DEFAULT NULL,
  `give_comment` int(11) DEFAULT NULL,
  `detail_title` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_story`
--

INSERT INTO `ms_story` (`stid`, `family_id`, `user_id`, `user_name`, `user_img`, `md_img`, `story_family`, `city`, `give_like`, `give_comment`, `detail_title`) VALUES
(1, 1, 1, 'Kiki', 'img/story/user_img_1.jpg', 'img/story/bg_img1_1.jpg', '美食', '大阪', 13, 24, '将海鲜做到极致的大叔居酒屋'),
(2, 1, 2, 'Yummy', 'img/story/user_img_2.jpg', 'img/story/bg_img1_2.jpg', '景点', '花莲', 16, 33, '超级赞的民宿'),
(3, 2, 3, 'Shujing', 'img/story/user_img_3.jpg', 'img/story/bg_img1_3.jpg', '美食', '大阪', 24, 11, '高级版的庶民小吃“炸串”，会有不凡的惊喜'),
(4, 1, 4, 'Ling', 'img/story/user_img_4.jpg', 'img/story/bg_img1_4.jpg', '房源', '胡志明市', 32, 18, '居民楼里的“少女心”'),
(5, 2, 5, 'Kank', 'img/story/user_img_5.jpg', 'img/story/bg_img1_5.jpg', '景点', '舟山', 17, 13, '舟山东极 - 两条路线环岛庙子湖'),
(6, 2, 6, 'Reyna', 'img/story/user_img_6.jpg', 'img/story/bg_img1_6.jpg', '房源', '重庆', 188, 12, '在重庆的半山腰发现了陶渊明式的“桃花源记”'),
(7, 2, 7, 'Veronica', 'img/story/user_img_7.jpg', 'img/story/bg_img1_7.jpg', '景点', '厦门', 5, 2, '帝都赏花二十四景，长春园的荷花池'),
(8, 2, 8, 'Polly330', 'img/story/user_img_8.jpg', 'img/story/bg_img1_8.jpg', '店铺', '上海', 28, 7, '给仙女食用的迷你汉堡'),
(9, 2, 9, 'Reyna', 'img/story/user_img_9.jpg', 'img/story/bg_img1_9.jpg', '店铺', '上海', 18, 2, '好看哭了…这间Fresh的快闪店到底是什么神仙颜值啊‼️'),
(10, 2, 10, 'Polly170', 'img/story/user_img_10.jpg', 'img/story/bg_img1_10.jpg', '美食', '清迈', 17, 0, '清迈清迈探店 | 慵懒的小城慵懒的下午茶'),
(11, 2, 11, '吃橙子的helan63', 'img/story/user_img_11.jpg', 'img/story/bg_img1_11.jpg', '文化', '深圳', 26, 8, '看展OOTD | 来深圳必打卡的何香凝美术馆'),
(12, 2, 12, 'Polly182', 'img/story/user_img_12.jpg', 'img/story/bg_img1_12.jpg', '美食', '厦门', 34, 9, '百吃不腻的Pizza Express甜品更出彩'),
(13, 2, 13, 'Polly114', 'img/story/user_img_13.jpg', 'img/story/bg_img1_13.jpg', '房源', '北京', 83, 10, '在北京，做个懂生活的朝阳群众'),
(14, 2, 14, 'Polly115', 'img/story/user_img_14.jpg', 'img/story/bg_img1_14.jpg', '房源', '北京', 34, 6, '和屋主日夜时差 还是错不开最后的惊喜'),
(15, 2, 15, 'Polly116', 'img/story/user_img_15.jpg', 'img/story/bg_img1_15.jpg', '房源', '北京', 52, 41, '北京在景山，住进画室里'),
(16, 2, 16, 'Polly117', 'img/story/user_img_16.jpg', 'img/story/bg_img1_16.jpg', '房源', '北京', 34, 20, '和好朋友们的满意度假'),
(17, 2, 17, 'Siming628', 'img/story/user_img_17.jpg', 'img/story/bg_img1_17.jpg', '美食', '北京', 63, 33, '跌落在旧时光，民国风的咖啡馆'),
(18, 2, 18, 'Siming638', 'img/story/user_img_18.jpg', 'img/story/bg_img1_18.jpg', '美食', '北京', 45, 13, '莎士比亚出没的卫生间，汽修厂里的咖啡馆'),
(19, 2, 19, 'Siming648', 'img/story/user_img_19.jpg', 'img/story/bg_img1_19.jpg', '美食', '北京', 35, 65, '终于来到百闻不如一见的Cafe Clark'),
(20, 2, 20, 'Siming658', 'img/story/user_img_20.jpg', 'img/story/bg_img1_20.jpg', '美食', '北京', 255, 144, '把元素周期表喝到肚子里——精确到0.1g的咖啡馆'),
(21, 2, 21, '茄子10911', 'img/story/user_img_21.jpg', 'img/story/bg_img1_21.jpg', '文化', '北京', 109, 11, '这个展让你拍的照片在朋友圈C位出道'),
(22, 2, 22, '茄子10912', 'img/story/user_img_22.jpg', 'img/story/bg_img1_22.jpg', '文化', '北京', 139, 41, '与Paul Smith回看过往'),
(23, 2, 23, '茄子10913', 'img/story/user_img_23.jpg', 'img/story/bg_img1_23.jpg', '文化', '北京', 75, 62, '红遍ins的粉红墙和设计鬼才的“脑洞”都来北京了'),
(24, 2, 24, '茄子10914', 'img/story/user_img_24.jpg', 'img/story/bg_img1_24.jpg', '文化', '北京', 234, 51, '智珠寺有JamesTurrell在中国的第一件艺术');

-- --------------------------------------------------------

--
-- 表的结构 `ms_story_collection`
--

CREATE TABLE `ms_story_collection` (
  `scid` int(11) NOT NULL,
  `sc_title` varchar(300) DEFAULT NULL,
  `sc_subtitle` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_story_collection`
--

INSERT INTO `ms_story_collection` (`scid`, `sc_title`, `sc_subtitle`) VALUES
(1, '北京竟然有这些不可思议的酒吧', '帝都包罗万有的文化自然少不了酒吧文化，三里屯到亮马桥，不但分布着各国使馆，更有不同地域风格的酒吧。周末到了，要过一个怎样的夜晚呢？粗旷还是精致、热闹还是安静？从南洋到英伦，从精酿到鸡尾酒，总能找到一间酒吧称你的心情。'),
(2, '住进「山水间」在民宿中亲近自然', '本期「爱彼迎民宿指南」精选好风景的爱彼迎民宿，开窗即是山水，呼吸都有绿意。带着全家、约上朋友，寻其中一处宅子，也许在大理的洱海边，也许在莫干山的深处，或是在重庆的田园里，日出日落，做饭聊天，旅行从舒心净肺开始。'),
(3, '住进「旧时光」在民宿中重拾历史', '本期「爱彼迎民宿指南」带你跳跃时间和空间，找到国内有历史的老宅：从清时的乾隆行宫，到现代的珠江旧船厂；从南京的科举考试旧址，到大理的白族传统民居，都在爱彼迎民宿。邀你住进去，深入其中，一秒穿越不同年代，聆听每一座城市的故事。');

-- --------------------------------------------------------

--
-- 表的结构 `ms_story_family`
--

CREATE TABLE `ms_story_family` (
  `fid` int(11) NOT NULL,
  `family_name` varchar(30) DEFAULT NULL,
  `story_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_story_family`
--

INSERT INTO `ms_story_family` (`fid`, `family_name`, `story_num`) VALUES
(1, '房源', 126),
(2, '景点', 161),
(3, '美食', 198),
(4, '文化', 24),
(5, '活动', 39),
(6, '店铺', 51);

-- --------------------------------------------------------

--
-- 表的结构 `ms_story_pic`
--

CREATE TABLE `ms_story_pic` (
  `pid` int(11) NOT NULL,
  `story_id` int(11) DEFAULT NULL,
  `bg_img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_story_pic`
--

INSERT INTO `ms_story_pic` (`pid`, `story_id`, `bg_img`) VALUES
(1, 1, 'img/story/bg_img1_1.jpg'),
(2, 1, 'img/story/bg_img1_2.jpg'),
(3, 1, 'img/story/bg_img1_3.jpg'),
(4, 1, 'img/story/bg_img1_4.jpg'),
(5, 1, 'img/story/bg_img1_5.jpg'),
(6, 1, 'img/story/bg_img1_6.jpg'),
(7, 1, 'img/story/bg_img1_7.jpg'),
(8, 1, 'img/story/bg_img1_8.jpg'),
(9, 1, 'img/story/bg_img1_9.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ms_user`
--

CREATE TABLE `ms_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `user_pwd` varchar(64) DEFAULT NULL,
  `user_email` varchar(64) DEFAULT NULL,
  `user_phone` varchar(32) NOT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_reg_time` datetime DEFAULT NULL,
  `user_login_time` datetime DEFAULT NULL,
  `user_imgurl` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_user`
--

INSERT INTO `ms_user` (`user_id`, `user_name`, `user_pwd`, `user_email`, `user_phone`, `user_gender`, `user_reg_time`, `user_login_time`, `user_imgurl`) VALUES
(1, '迪丽热巴', 'reba', 'reba@163.com', '15660902590', 0, '2018-01-01 00:00:00', '2018-01-02 00:00:00', 'img/user/reba.jpeg'),
(2, '高圆圆', 'gaoyuanyuan', 'gaoyuanyuan@163.com', '15660902591', 0, '2018-01-03 00:00:00', '2018-01-04 00:00:00', 'img/user/gaoyuanyuan.jpg'),
(3, '杨幂', 'yangmi', 'yangmi@163.com', '15660902592', 0, '2018-01-05 00:00:00', '2018-01-06 00:00:00', 'img/user/yangmi.jpeg'),
(4, '赵丽颖', 'zhaoliying', 'zhaoliying@163.com', '15660902593', 0, '2018-01-07 00:00:00', '2018-01-08 00:00:00', 'img/user/zhaoliying.jpeg'),
(5, '郑凯', 'zhengkai', 'zhengkai@163.com', '15660902594', 1, '2018-01-09 00:00:00', '2018-01-10 00:00:00', 'img/user/zhengkai.jpeg'),
(6, '无头像', 'wutouxiang', 'wutouxiang@163.com', '15660902595', 1, '2019-01-09 00:00:00', '2019-01-10 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_amenities`
--
ALTER TABLE `ms_amenities`
  ADD PRIMARY KEY (`Amenities_id`);

--
-- Indexes for table `ms_bed_type`
--
ALTER TABLE `ms_bed_type`
  ADD PRIMARY KEY (`Bed_type_id`);

--
-- Indexes for table `ms_building`
--
ALTER TABLE `ms_building`
  ADD PRIMARY KEY (`Building_id`);

--
-- Indexes for table `ms_carousel`
--
ALTER TABLE `ms_carousel`
  ADD PRIMARY KEY (`Carousel_id`);

--
-- Indexes for table `ms_city`
--
ALTER TABLE `ms_city`
  ADD PRIMARY KEY (`City_id`),
  ADD UNIQUE KEY `City_name` (`City_name`),
  ADD UNIQUE KEY `City_longitude` (`City_longitude`),
  ADD UNIQUE KEY `City_latitude` (`City_latitude`);

--
-- Indexes for table `ms_district`
--
ALTER TABLE `ms_district`
  ADD PRIMARY KEY (`District_id`),
  ADD UNIQUE KEY `District_name` (`District_name`);

--
-- Indexes for table `ms_hot_place`
--
ALTER TABLE `ms_hot_place`
  ADD PRIMARY KEY (`hotid`);

--
-- Indexes for table `ms_house`
--
ALTER TABLE `ms_house`
  ADD PRIMARY KEY (`House_id`);

--
-- Indexes for table `ms_house_amenities`
--
ALTER TABLE `ms_house_amenities`
  ADD PRIMARY KEY (`HouseAmenities_id`);

--
-- Indexes for table `ms_house_bed`
--
ALTER TABLE `ms_house_bed`
  ADD PRIMARY KEY (`HouseBed_id`);

--
-- Indexes for table `ms_house_img`
--
ALTER TABLE `ms_house_img`
  ADD PRIMARY KEY (`HouseImg_id`);

--
-- Indexes for table `ms_house_time`
--
ALTER TABLE `ms_house_time`
  ADD PRIMARY KEY (`Time_id`);

--
-- Indexes for table `ms_housingresources_type`
--
ALTER TABLE `ms_housingresources_type`
  ADD PRIMARY KEY (`housingResources_id`);

--
-- Indexes for table `ms_rent_type`
--
ALTER TABLE `ms_rent_type`
  ADD PRIMARY KEY (`Rent_id`);

--
-- Indexes for table `ms_story`
--
ALTER TABLE `ms_story`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `ms_story_collection`
--
ALTER TABLE `ms_story_collection`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `ms_story_family`
--
ALTER TABLE `ms_story_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `ms_story_pic`
--
ALTER TABLE `ms_story_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `ms_user`
--
ALTER TABLE `ms_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ms_amenities`
--
ALTER TABLE `ms_amenities`
  MODIFY `Amenities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ms_bed_type`
--
ALTER TABLE `ms_bed_type`
  MODIFY `Bed_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `ms_building`
--
ALTER TABLE `ms_building`
  MODIFY `Building_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ms_carousel`
--
ALTER TABLE `ms_carousel`
  MODIFY `Carousel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `ms_city`
--
ALTER TABLE `ms_city`
  MODIFY `City_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `ms_district`
--
ALTER TABLE `ms_district`
  MODIFY `District_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用表AUTO_INCREMENT `ms_hot_place`
--
ALTER TABLE `ms_hot_place`
  MODIFY `hotid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `ms_house`
--
ALTER TABLE `ms_house`
  MODIFY `House_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `ms_house_amenities`
--
ALTER TABLE `ms_house_amenities`
  MODIFY `HouseAmenities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ms_house_bed`
--
ALTER TABLE `ms_house_bed`
  MODIFY `HouseBed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `ms_house_img`
--
ALTER TABLE `ms_house_img`
  MODIFY `HouseImg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `ms_house_time`
--
ALTER TABLE `ms_house_time`
  MODIFY `Time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `ms_housingresources_type`
--
ALTER TABLE `ms_housingresources_type`
  MODIFY `housingResources_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `ms_rent_type`
--
ALTER TABLE `ms_rent_type`
  MODIFY `Rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `ms_story`
--
ALTER TABLE `ms_story`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `ms_story_collection`
--
ALTER TABLE `ms_story_collection`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `ms_story_family`
--
ALTER TABLE `ms_story_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `ms_story_pic`
--
ALTER TABLE `ms_story_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `ms_user`
--
ALTER TABLE `ms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
