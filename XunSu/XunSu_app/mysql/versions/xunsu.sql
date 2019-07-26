-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-26 14:04:10
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
-- Database: `xunsu`
--

-- --------------------------------------------------------

--
-- 表的结构 `add_guest_msg`
--

CREATE TABLE `add_guest_msg` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `credentials` varchar(12) DEFAULT NULL,
  `cardid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `chooseroom`
--

CREATE TABLE `chooseroom` (
  `id` int(11) NOT NULL,
  `cuid` int(11) NOT NULL,
  `checkIn` datetime DEFAULT NULL,
  `checkOut` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `fit` int(11) DEFAULT NULL,
  `replyId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fromUid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `facility`
--

CREATE TABLE `facility` (
  `faid` int(11) NOT NULL,
  `fhtid` int(11) NOT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `hotShower` tinyint(1) DEFAULT NULL,
  `airCondition` tinyint(1) DEFAULT NULL,
  `television` tinyint(1) DEFAULT NULL,
  `elevator` tinyint(1) DEFAULT NULL,
  `entranceGuard` tinyint(1) DEFAULT NULL,
  `washer` tinyint(1) DEFAULT NULL,
  `freezer` tinyint(1) DEFAULT NULL,
  `parkingSpace` tinyint(1) DEFAULT NULL,
  `wiredNetwork` tinyint(1) DEFAULT NULL,
  `slipper` tinyint(1) DEFAULT NULL,
  `toiletThings` tinyint(1) DEFAULT NULL,
  `washcloth` tinyint(1) DEFAULT NULL,
  `bathProduct` tinyint(1) DEFAULT NULL,
  `waterDispenser` tinyint(1) DEFAULT NULL,
  `bathtub` tinyint(1) DEFAULT NULL,
  `centralHeating` tinyint(1) DEFAULT NULL,
  `airport` tinyint(1) DEFAULT NULL,
  `baggage` tinyint(1) DEFAULT NULL,
  `wakeup` tinyint(1) DEFAULT NULL,
  `monotype` tinyint(1) DEFAULT NULL,
  `orderfood` tinyint(1) DEFAULT NULL,
  `wash` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `facility`
--

INSERT INTO `facility` (`faid`, `fhtid`, `wifi`, `hotShower`, `airCondition`, `television`, `elevator`, `entranceGuard`, `washer`, `freezer`, `parkingSpace`, `wiredNetwork`, `slipper`, `toiletThings`, `washcloth`, `bathProduct`, `waterDispenser`, `bathtub`, `centralHeating`, `airport`, `baggage`, `wakeup`, `monotype`, `orderfood`, `wash`) VALUES
(1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(2, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(4, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(5, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0),
(6, 5, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0),
(7, 6, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0),
(8, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0),
(9, 8, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0),
(10, 9, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
(11, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0),
(12, 11, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0),
(13, 12, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1),
(14, 13, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(15, 14, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0),
(16, 15, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `homepic`
--

CREATE TABLE `homepic` (
  `hid` int(11) NOT NULL,
  `homeid` int(11) DEFAULT NULL,
  `imgurl` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `homepic`
--

INSERT INTO `homepic` (`hid`, `homeid`, `imgurl`) VALUES
(1, 1, '/images/house/1a8cad81-5292-4d41-bb3d-68c67c32483b.jpg'),
(2, 1, '/images/house/1efdaad6-dbe5-4ed9-94ef-1ce95214b3ec.jpg'),
(3, 1, '/images/house/7d179cec-d038-40a5-ad42-c7cac8dd51f5.jpg'),
(4, 1, '/images/house/4d5fd8ae-9622-440e-86cf-e774d7334363.jpg'),
(5, 1, '/images/house/55ee0693-10c2-4f7b-b087-552119be4a80.jpg'),
(6, 1, '/images/house/56cf291b-2f0a-4e84-b626-42f9c2bae321.jpg'),
(7, 1, '/images/house/065d6932-54d6-4b41-b890-972061636d3c.jpg'),
(8, 1, '/images/house/86fcf2e6-f0e5-41d6-ad23-3090d71af137.jpg'),
(9, 1, '/images/house/769070ea-99f0-4ec0-a916-b444ef2ebcce.jpg'),
(10, 1, '/images/house/b9a5feae-b7ce-4aee-b4bb-7416bd7a8521.jpg'),
(11, 1, '/images/house/a76d63a1-d98e-4fff-9b94-e19f99efb3e6.jpg'),
(12, 1, '/images/house/b159d3bf-7afc-4076-a7f9-dbd31cfc9a37.jpg'),
(13, 1, '/images/house/c42e5398-0117-46fa-8436-33533b178763.jpg'),
(14, 1, '/images/house/d5794be2-decd-4441-925b-57f98ed5af0f.jpg'),
(15, 1, '/images/house/e57be7fb-dd2b-4a23-81b9-717b9b4764f1.jpg'),
(16, 1, '/images/house/e69acad3-482f-4d82-bf9c-cc63a00ba0eb.jpg'),
(17, 2, '/images/house/a52dc8b1-e8b8-47cf-8424-4b4ae6b8ddc8.jpg'),
(18, 2, '/images/house/9cfc2dd3-7125-4c02-b613-658da6256e54.jpg'),
(19, 2, '/images/house/17391c61-419e-4eb7-8ab6-3e885b7835c6.jpg'),
(20, 2, '/images/house/30af9c24-ed64-453b-9b90-b4b6091d3ce5.jpg'),
(21, 2, '/images/house/77af0b03-0105-4fc7-ac20-9985eaf2897d.jpg'),
(22, 2, '/images/house/a012fd26-d7fd-430e-aa2f-32126a735fab.jpg'),
(23, 2, '/images/house/aa33a222-6924-4d75-8bc4-c2523169d385.jpg'),
(24, 2, '/images/house/b5f353e7-0330-4747-bc3b-b6219bc472f4.jpg'),
(25, 2, '/images/house/f2b12504-f3ef-476d-8991-34e2eec2d289.jpg'),
(26, 2, '/images/house/1352ae78-4763-4c29-a263-0bf23d821d65.jpg'),
(27, 2, '/images/house/04b38ad8-e0ce-4739-ad79-2c1082a15751.jpg'),
(28, 2, '/images/house/274e1994-d77a-4d89-b007-8f426998caea.jpg'),
(29, 2, '/images/house/7df78041-24fd-4f2f-9d54-604fcc767c74.jpg'),
(30, 3, '/images/house/dd91d52a-90a5-437f-8ab7-a154af864485.jpg'),
(31, 3, '/images/house/003a8ada-ca4a-4cb1-b5db-d1a33873527d.jpg'),
(32, 3, '/images/house/2f53c37c-5576-430c-91ce-5d7fbf9f837c.jpg'),
(33, 3, '/images/house/625759bf-81d2-425c-8af8-14a0aeec21b1.jpg'),
(34, 3, '/images/house/122db68c-9034-407e-b3f8-14046135170f.jpg'),
(35, 3, '/images/house/75c258f3-cac2-4118-aac9-5c6809a640a7.jpg'),
(36, 4, '/images/house/1564133389079.jpeg'),
(37, 4, '/images/house/1564133387527.jpeg'),
(38, 4, '/images/house/1564133387045.jpeg'),
(39, 4, '/images/house/1564133387719.jpeg'),
(40, 4, '/images/house/1564133387323.jpeg'),
(41, 4, '/images/house/1564133389316.jpeg'),
(42, 4, '/images/house/1564133387582.jpeg'),
(43, 5, '/images/house/1564133811040.jpeg'),
(44, 5, '/images/house/1564133810469.jpeg'),
(45, 5, '/images/house/1564133810777.jpeg'),
(46, 5, '/images/house/1564133809227.jpeg'),
(47, 5, '/images/house/1564133810258.jpeg'),
(48, 5, '/images/house/1564133811630.jpeg'),
(49, 5, '/images/house/1564133811037.jpeg'),
(50, 5, '/images/house/1564133810767.jpeg'),
(51, 6, '/images/house/1564134068666.jpeg'),
(52, 6, '/images/house/1564134068460.jpeg'),
(53, 6, '/images/house/1564134067968.jpeg'),
(54, 6, '/images/house/1564134068352.jpeg'),
(55, 6, '/images/house/1564134068668.jpeg'),
(56, 6, '/images/house/1564134067692.jpeg'),
(57, 6, '/images/house/1564134068809.jpeg'),
(58, 6, '/images/house/1564134068731.jpeg'),
(59, 7, '/images/house/1564134385280.jpeg'),
(60, 7, '/images/house/1564134385648.jpeg'),
(61, 7, '/images/house/1564134385874.jpeg'),
(62, 7, '/images/house/1564134383888.jpeg'),
(63, 7, '/images/house/1564134384381.jpeg'),
(64, 7, '/images/house/1564134385153.jpeg'),
(65, 7, '/images/house/1564134384607.jpeg'),
(66, 8, '/images/house/1564134626730.jpeg'),
(67, 8, '/images/house/1564134626958.jpeg'),
(68, 8, '/images/house/1564134627470.jpeg'),
(69, 8, '/images/house/1564134626580.jpeg'),
(70, 8, '/images/house/1564134626960.jpeg'),
(71, 8, '/images/house/1564134626592.jpeg'),
(72, 8, '/images/house/1564134627652.jpeg'),
(73, 8, '/images/house/1564134626194.jpeg'),
(74, 9, '/images/house/1564135085625.jpeg'),
(75, 9, '/images/house/1564135086159.jpeg'),
(76, 9, '/images/house/1564135085082.jpeg'),
(77, 9, '/images/house/1564135087384.jpeg'),
(78, 9, '/images/house/1564135086240.jpeg'),
(79, 9, '/images/house/1564135086907.jpeg'),
(80, 9, '/images/house/1564135086716.jpeg'),
(81, 9, '/images/house/1564135086757.jpeg'),
(82, 10, '/images/house/1564135398924.jpeg'),
(83, 10, '/images/house/1564135400046.jpeg'),
(84, 10, '/images/house/1564135399331.jpeg'),
(85, 10, '/images/house/1564135398649.jpeg'),
(86, 10, '/images/house/1564135398689.jpeg'),
(87, 10, '/images/house/1564135399236.jpeg'),
(88, 10, '/images/house/1564135400575.jpeg'),
(89, 10, '/images/house/1564135400164.jpeg'),
(90, 11, '/images/house/1564135643471.jpeg'),
(91, 11, '/images/house/1564135643285.jpeg'),
(92, 11, '/images/house/1564135642318.jpeg'),
(93, 11, '/images/house/1564135643059.jpeg'),
(94, 11, '/images/house/1564135644148.jpeg'),
(95, 11, '/images/house/1564135642031.jpeg'),
(96, 11, '/images/house/1564135643950.jpeg'),
(97, 11, '/images/house/1564135642270.jpeg'),
(98, 11, '/images/house/1564135643478.jpeg'),
(99, 12, '/images/house/1564135972348.jpeg'),
(100, 12, '/images/house/1564135973564.jpeg'),
(101, 12, '/images/house/1564135973747.jpeg'),
(102, 12, '/images/house/1564135973474.jpeg'),
(103, 12, '/images/house/1564135972633.jpeg'),
(104, 12, '/images/house/1564135974018.jpeg'),
(105, 12, '/images/house/1564135972107.jpeg'),
(106, 12, '/images/house/1564135972390.jpeg'),
(107, 13, '/images/house/1564137184286.jpeg'),
(108, 13, '/images/house/1564137184478.jpeg'),
(109, 13, '/images/house/1564137184628.jpeg'),
(110, 13, '/images/house/1564137185146.jpeg'),
(111, 13, '/images/house/1564137184309.jpeg'),
(112, 13, '/images/house/1564137182705.jpeg'),
(113, 13, '/images/house/1564137184084.jpeg'),
(114, 13, '/images/house/1564137185369.jpeg'),
(115, 13, '/images/house/1564137185362.jpeg'),
(116, 13, '/images/house/1564137184190.jpeg'),
(117, 13, '/images/house/1564137185524.jpeg'),
(118, 13, '/images/house/1564137183797.jpeg'),
(119, 13, '/images/house/1564137183365.jpeg'),
(120, 14, '/images/house/1564140672016.jpeg'),
(121, 14, '/images/house/1564140671070.jpeg'),
(122, 14, '/images/house/1564140671814.jpeg'),
(123, 14, '/images/house/1564140670228.jpeg'),
(124, 14, '/images/house/1564140671016.jpeg'),
(125, 14, '/images/house/1564140671846.jpeg'),
(126, 15, '/images/house/1564141787415.jpeg'),
(127, 15, '/images/house/1564141787874.jpeg'),
(128, 15, '/images/house/1564141787504.jpeg'),
(129, 15, '/images/house/1564141788259.jpeg'),
(130, 15, '/images/house/1564141787534.jpeg'),
(131, 15, '/images/house/1564141788305.jpeg'),
(132, 15, '/images/house/1564141786706.jpeg'),
(133, 15, '/images/house/1564141787619.jpeg'),
(134, 15, '/images/house/1564141786444.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `leaseroom`
--

CREATE TABLE `leaseroom` (
  `lid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(11) DEFAULT '',
  `describe` varchar(60) DEFAULT NULL,
  `detail` varchar(2000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `holidayPrice` float DEFAULT NULL,
  `img` varchar(500) DEFAULT '',
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `houseDistrict` varchar(20) DEFAULT NULL,
  `houseStreet` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT '',
  `htType` varchar(10) DEFAULT NULL,
  `tenant` int(3) DEFAULT NULL,
  `bedroom` int(3) DEFAULT NULL,
  `bed` int(3) DEFAULT NULL,
  `bedSize` varchar(10) DEFAULT NULL,
  `toilet` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `leaseroom`
--

INSERT INTO `leaseroom` (`lid`, `uid`, `time`, `title`, `describe`, `detail`, `price`, `holidayPrice`, `img`, `province`, `city`, `houseDistrict`, `houseStreet`, `address`, `htType`, `tenant`, `bedroom`, `bed`, `bedSize`, `toilet`, `area`) VALUES
(1, 1, '2019-07-04 00:00:00', '王府井 胡同里的设计酒', '【Stey】 共享居住空间｢胡同里的设计酒店Studio｣步行可达故宫&王府井,适合差旅､年轻旅行者', '你好,欢迎回家!-王府井不仅是一个由先锋设计师打造的精品酒店,更是你旅途中的家,一个充满多元与活力的社区｡', 780, 780, '/images/house/1a8cad81-5292-4d41-bb3d-68c67c32483b.jpg', '北京市', '北京市', '海淀区', '王府井', '王府井', '单间出租', 2, 1, 1, '双人床', '独卫', '15'),
(2, 2, '2019-02-03 00:00:00', '桃可了 茶室主题民宿', '【桃可了Cola】茶室主题民宿 地铁口200米投影仪独立小院,地铁一站直达五四广场及各大景点', '这间房子的前身是一个茶室,位于一个幽静巷深的老房子一楼一室一厅带一个小院(房客享用整个房源)木板小院与四周的草木林给您呼唤出内心最深处的惬意平和,茶室现在升级搬去别的地方,于是就有了“茶居”｡房子的主题围绕茶文化所铺设,落地玻璃房的院子,在阳台晒着太阳,喝着茶再惬意不过了｡', 650, 650, '/images/house/a52dc8b1-e8b8-47cf-8424-4b4ae6b8ddc8.jpg', '北京市', '北京市', '海淀区', '王府井', '王府井', '单间出租', 3, 1, 1, '双人床', '独卫', '15'),
(3, 3, '2019-02-03 00:00:00', '奕25 风景民宿', '【奕25】地铁房,万达,五四广场,栈桥,八大关,啤酒博物馆,小鱼山,海底世界,奥帆中心,送旅行攻略', '距地铁站500米,可乘地铁游览青岛所有景点:五四广场,灯光秀,奥帆中心,海水浴场,极地海洋世界,八大关风景区,海底世界,崂山风景区,小鱼山,栈桥,啤酒博物馆,海军博物馆,火车站,火车北站等｡', 234, 234, '/images/house/dd91d52a-90a5-437f-8ab7-a154af864485.jpg', '山东省', '青岛市', '市北区', '新疆路', '敦化路街道', '整套公寓', 3, 1, 1, '单人床', '独卫', '60'),
(4, 4, NULL, '大理 感通别墅', '(独栋小别墅)大理感通别墅内独栋私密小loft[远山情怀宿]', '1:整洁干净的简约北欧风,别墅区里的独栋小复式,上下两层,两个卫生间,一楼是休闲区及厨房区域,二楼是卧室｡每一层都有一个阳台,房间里的光线极其棒,尤其上午,阳光洒在二楼的飘窗和床上,看起来都是一个很温暖的画面~夜晚的时候,把星星灯一打开,在飘窗台上聊聊天,看看星星,想必也是个很浪漫的夜晚吧｡\n\n2:房子里提供厨房,厨具,厨房里的一些干粮都是可以免费使用的,另有冰箱,网络电视机,吹风机,洗衣机,24小时热水等便捷设施｡因为大理这边比较少用到空调,所以房子里是没有安装空调的哟,但提供有电热毯,取暖器｡', 188, 188, '', '北京市', '北京市', '海淀区', '七里香', '希尔顿小区1102楼3单元102号', '单间出租', 2, 1, 1, '双人床', '独立卫生间', '20'),
(5, 5, NULL, '大理 星空海景大床房', '大理南门清奢原宿·星空海景大床房·卧星', '关于卧星,顾名思义,我们合理利用场地之后,得到了一间星空房,我们思考了很多方案,最终还是选择了平屋顶,让人可以躺在床上就可以看到满天星空,所以入住的你只要知道,大理的星星很美,很美~\n\n房间有25㎡,内有一张1.8m定制大床,轻飘的帷幔,,48寸大屏电视,有独立卫浴,带吹风机,运用了北欧的简约的装饰元素,平视三面有窗,阳光充足,正视整个中式庭院,还可以看到洱海｡\n\n法谷客栈·大理隐境清奢原宿|南门店——位于文献路197号,距离古城南门仅600m,这里没有古城当中嘈杂的喧闹,在出则繁华,入则宁静之中,多出几分慵懒,所以,来这里的人们可以闲庭漫步,可以泡茶闲谈,可以改造自大理白族民居,因为对于别具一格与继承发扬的追求,我们进行了大范围的改造,中式风格作为主体,然后运用北欧风格与日式风格的元素进行设计碰撞｡\n\n客栈公共区域设有咖啡厅､厨房以及公共茶室,可以任意使用｡ 我们一共有9间房间,可以点击我的头像,拉到最下面查看全部的房间｡', 149, 149, '', '云南省', '大理白族自治州', '大理市', '天空之城街道', '海源小区122楼11单元103号', '整套出租', 2, 1, 2, '单人床', '1', '35'),
(6, 5, NULL, '大理 古城步行街清净家', '大理·古城步行街清静小院·家 A quiet courtyard in Dali old town', '小院地处古城内步行街附近,出门就是人民路,离步行街就5分钟,人民路上有独立书店､手作､咖啡店､小酒馆等极其方便｡石榴树下陋室三间､懒猫三只､大厨房一个,房间带独立卫浴,公用全自动洗衣机,可观苍山大露台,适合喜欢安静的你(无电视)｡\n\n房源细节\n我家小院属于当地原住民两层老建筑带一个小院子,整个院落小而安静,只有陋室三间带独立卫浴｡院内石榴树､炮仗花､紫藤在不同季节绽放｡小院里适合喝茶､睡觉､看书等慢生活旅行｡', 198, 330, '', '云南省', '大理白族自治州', '大理市', '古朴街道', '古城小区1003楼3单元1102', '单间出租', 2, 2, 2, '双人床', '公共卫生间', '29'),
(7, 6, NULL, '大理 感通别墅，完美别', '(独栋小别墅)大理感通别墅内独栋私密小loft[远山情怀宿]', '房源细节\n1:整洁干净的简约北欧风,别墅区里的独栋小复式,上下两层,两个卫生间,一楼是休闲区及厨房区域,二楼是卧室｡每一层都有一个阳台,房间里的光线极其棒,尤其上午,阳光洒在二楼的飘窗和床上,看起来都是一个很温暖的画面~夜晚的时候,把星星灯一打开,在飘窗台上聊聊天,看看星星,想必也是个很浪漫的夜晚吧｡\n\n2:房子里提供厨房,厨具,厨房里的一些干粮都是可以免费使用的,另有冰箱,网络电视机,吹风机,洗衣机,24小时热水等便捷设施｡因为大理这边比较少用到空调,所以房子里是没有安装空调的哟,但提供有电热毯,取暖器｡', 188, 188, '', '云南省', '大理白族自治州', '大理市', '萝莉街道', '萝莉小区11楼3单元101', '单间出租', 2, 1, 1, '双人床', '独立卫生间', '21'),
(8, 6, NULL, '大理  有晴岁月客栈 ', '【古城内,独卫带投影】舒适标间.大理古城有晴岁月客栈 Always Sunshine Villa 1', '我们是一座有三层楼的小洋房, 十间观景客房, 有一个100多平的观景大露台, 有一个30多平的阳光玻璃房, 还有一个100多平的复古文艺大厅和种满花草的大院子.\n\n房间配备如下:\n·室内高速100M无线WIFI\n·室外免费洗衣机\n·房型面积: 20㎡, 床型: 双床1.2*2m, 最大可住人数: 2, 不可加床\n·所有房间均有窗户带独立卫浴\n·牙刷牙膏, 漱口杯, 洗发水, 沐浴露, 毛巾, 浴巾, 拖鞋\n·高清投影电视, 电吹风, 电热水壶, 电热毯, 电风扇\n\n同类型的房型还有3个,如果日历不可预定,请咨询我们帮忙调整.\n\n房客使用权限:\n·免费自助洗衣服务\n·免费行李寄存\n·快递收发服务\n·帮忙联系汽车站/火车站/机场/各大景点及周边县市(昆明, 丽江, 香格里拉)的接送服务\n\n大理天气:\n大理海拔2090米, 属于高原气候. 冬无严寒, 夏无酷暑. 7月~9月, 是大理的雨季, 气温在20~25之间, 建议带薄外套, 11月~2月, 大理的冬季, 气温在6~22之间, 早晚温差大, 也可能下雪, 建议带毛衣, 厚外套等防寒服. 3月~6月夏季, 夏装加薄外套. 另外, 紫外线强, 气候干燥, 带好防晒霜, 帽子, 墨镜. 防晒! 防晒! 防晒! 重要的事情说三遍!', 181, 230, '', '云南省', '大理白族自治州', '大理市', '苍山洱海', '苍山小区1楼1单元102号', '整套出租', 2, 2, 2, '双人床', '公共卫生间', '30'),
(9, 7, NULL, '杭州 林森公寓', '【林森】林森公寓银泰旁榻榻米巨屏投影舒适两床环境优美', 'Summary\n点击我头像可看到我其他优质房源哦~(^^\n\n)房源位于城西繁华商圈内,银泰旁80平复式两居小清新设计｡屋内视野开阔,各种生活用品一应俱全,自带榻榻米茶室,120寸家庭影院免费使用｡有两房适宜2-4人入住~(另外不支持聚会)\n\n房源细节\n最多可容纳四人;处于卫生考虑,我们不提供毛巾,但有干净牙刷牙膏', 278, 320, '', '浙江省', '杭州市', '西湖区', '科技街道', '云深不知处小区132楼22单元1101号', '整套出租', 4, 2, 2, '双人床', '公共卫生间', '50'),
(10, 8, NULL, '杭州 重庆森林民宿', '【重庆森林】ELE JANE-2/西湖边/定安路地铁口/带浴缸', '灵感来源于王家卫导演的《重庆森林》,淡淡的感情色彩带入,将自己交给这个房间里每一处细小的感动｡\n-配备浴缸,因设计视觉效果没有遮挡,所以适合很亲密的组合出行｡(淋浴浴缸同一区域,电压小的关系 之前因为使用及时加热的热水器功率太大导致频繁跳闸 影响到各位的入住体验这边就置换了储水型的热水器 但是因为洗手间空间有限 我们热水器容量不大 这对我们的浴缸设计带来弊病 淋浴和浴缸是一起的 淋浴是没有问题 尽量分开洗漱｡\n-配备一次性备品,沐浴用品｡五星级别一客一换干净床单被套毛巾｡\n-独立卫生间和厨房,配备厨具,需自带调料｡\n-位于定安地铁口出口,步行仅需3分钟\n-配有烟雾探测器和一氧化碳探测器安全放心\n\n以这里为据点与杭州相拥,在一个清晨打开窗,于西湖荷香中吮吸着俗世阳光｡\n\n特别提醒:商业拍摄需要额外收费,请订房前咨询客服\n位于杭州本地社区 市区的房子普遍不是很新 我们尽最大可能进行改造 如有对老社区设施/环境/房内老旧格局等介意的 请慎拍\n这边我会尽快安排处理方案', 239, 330, '', '浙江省', '杭州市', '淳安县', '重庆森林街道', '重庆森林小区11楼32单元1102号', '单间出租', 2, 2, 1, '双人床', '独立卫生间', '17'),
(11, 8, NULL, '杭州 七言龙井别墅', '【七言】和当地人一起住西湖西岸 龙井山下的别墅吧【阁楼】', '知道airbnb是因为去日本旅行,朋友推荐使用这个软件来预定住宿,我们住在京都的一个小山上,虽然住宿条件不比酒店,但是那种走过社区､小路,到达小窝,可以和日本房东交流,了解当地生活,感觉格外棒｡\n『我家的样子』\n我家是独栋房屋别墅,一楼有个院子,三楼有个天台;\n我的爸爸妈妈还有奶奶也住在这里,他们都是地道的杭州人,奶奶说杭州话｡\n『你的房间』\n我家有三间房提供预定,您现在浏览的是【三楼的一间坡屋顶阁楼小窝,有一张1.5m宽的床】;\n厕所在二楼,是一个干净的共用厕所,与其他房客共同使用;\n其他房间可以点我头像浏览照片,都在一幢房子里;\n如果你需要住宿的日期已经被预定了,可以直接联系我,询问其他房间情况,欢迎来我家呀｡', 178, 220, '', '浙江省', '杭州市', '拱墅区', '笼笼肉街道', '小龙柏11楼22单元11号', '单间出租', 2, 1, 1, '单人床', '独立卫生间', '15'),
(12, 9, NULL, '杭州 奶喵屋摄影拍照民', '【Aircats奶喵屋】ins摄影拍照民宿/近宝龙近云水地铁站/卧室投影仪音响/可撸猫', '你好这里是aircats奶喵屋｡\n房屋距离地铁一号线云水地铁口仅有400米,步行6分钟可到,火车东站半小时可到云水地铁站,步行12分钟可到宝龙城市广场及影院,临近下沙大学城,楼下有十足便利店｡\n独享整个房源,独立卫生间｡装修色系为淡黄色ins风格适合拍照｡\n\n房源细节\n房间厨房客厅卧室一体,配有双人床､办公桌､化妆台､厨具和投影仪｡房间还在不断完善中,其他装饰品将在近期更新｡\n房间算是一个半成品的ins风摄影民宿吧,可时租,有拍摄需求请先咨询｡\n房东是一名摄影师,接拍写真和淘宝,兼猫舍店长,如果想预订猫咪或者有拍摄需求可与直接与我联系哦~', 130, 220, '', '浙江省', '杭州市', '建德市', '小龙人街道', '龙傲九天小区32楼12单元1144号', '单间出租', 2, 1, 1, '双人床', '公共卫生间', '17'),
(13, 10, NULL, '重庆 榻榻米电影屋', '【竹里·禅潺】解放碑最中心/紧邻地铁口/超赞江景/榻榻米电影屋', '若这间小屋在您的行程时间已满房,点我头像可以查看更多房源哦｡\n\n小屋位于解放碑商圈,独立整套房子｡出门即到有地铁1号线和2号线的较场口站｡楼下即是较场口夜市,5分钟步行可到解放碑碑中心､八一好吃街､十八梯｡10分钟步行到洪崖洞,长江索道｡周围美食更是多不胜举,不仅有莽子火锅､珮姐火锅､渝宗火锅等重庆火锅前20强,还有花市碗杂面､眼睛面等重庆著名小面,以及各式特色小吃｡房间坐拥超赞江景,远眺南山,视野非常好｡一件精致的羽织,一套历经时光打磨的老物件,一杯功夫茶,一泓洗尽绿意风尘的潺潺流水,在这个充满了雕刻质感的城市里,我们想在这个空间里追寻一花一世界的禅意｡三五个友人,可以清晨时看着江水流逝,江风徐徐,黄昏时看阳光温暖整条长江,傍晚时欣赏这个城市古朴与时尚融合的夜景｡\n\n房源细节\n小屋有两间卧室,一个客厅,配有开敞式厨房以及独立卫生间｡两间卧室各置有一张双人床,人多的时候可以在榻榻米区域铺上10cm厚的地垫床,睡起来相当舒适,另有两张沙放床也均可使用,最多可容纳8人同时入住｡厨房通气可做饭,各类生活用品配备齐全｡', 327, 327, '', '重庆市', '重庆市', '渝北区', '解放街道', '解放小区122楼22单元12号', '整套出租', 3, 1, 1, '双人床', '独立卫生间', '15'),
(14, 10, NULL, '重庆 漫漫|Mocha', '漫漫|Mocha摩卡 观音桥九街/地铁出口/直通解放碑/双层loft/4.5米超大落地窗/原创设计', '睡眠:位于热门商圈,但房子是高楼层,朝向小区中庭,并且隔音效果很好,完全不用担心您的睡眠质量会受影响｡另外还配备了星级酒店专用枕芯､全套宜家床品｡希望带给您无忧的睡眠体验｡\n\n设备:\n坚果高清投影仪\n新版马歇尔无线蓝牙音响\n100M无线wifi\n柜式变频冷暖空调\n标准橱柜\n电冰箱\n微波炉\n烤箱\n厨房用品\n烘干服务\n\n为您提供:24小时热水,一客一换的床上用品及毛巾浴巾､一次性牙膏牙刷梳子､无印良品洗面奶及化妆棉､品牌洗发水和沐浴液､品牌面巾纸､入住日咖啡焦糖饼干及矿泉水两瓶｡', 188, 190, '', '重庆市', '重庆市', '铜梁区', '星城地址', '小星乘11楼22单元1002', '合住房间', 1, 5, 5, '双人床', '公共卫生间', '110'),
(15, 11, NULL, '厦门 欧美简约风,落地', '【宿海】曾厝垵/曾厝垵站附近/距离曾厝垵小吃街100米海边3分钟/欧美简约风,落地窗/雅致浴缸大床房', '民宿的设计极为简约,干净整洁的室内设计,硬件齐全,24小时都有热水,空调,无线网络,自助洗衣等等应有具有,布置很温馨,房间的空间足够大,但是不会大到空当,进入的一瞬间就可以征服你的心,舒适松软的大床就如同回到自己家一样｡\n出行很方便,离环岛南路海边不到三分钟,周边有各大公交站,比如你想去鼓浪屿,中山路,厦大白城,厦门大学等景点都有直达的公交车,\n民宿靠海,景色特别棒,民宿楼上有大露台,当你上了露台,大海对于你就可以一览无余,海天相接,星帆点点,都成了近在咫尺的美景,当然,如果你喜欢热闹一些,可以走出门让自己与海浪作伴,与沙滩,蓝天白云融为一体,在山海之间,安静舒适,自由的海风,绝对是您散心解压的好去处｡对着民宿有着高追求的朋友们,一定记得来感受一下｡', 125, 144, '', '福建省', '三明市', '梅列区', '小街区', '社会小区113楼3大单元3302', '单间出租', 2, 1, 1, '单人床', '独立卫生间', '163');

-- --------------------------------------------------------

--
-- 表的结构 `needknow`
--

CREATE TABLE `needknow` (
  `nid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `checkTime` int(11) NOT NULL,
  `minimumDay` int(11) NOT NULL,
  `pets` tinyint(1) DEFAULT NULL,
  `cooking` tinyint(1) DEFAULT NULL,
  `meeting` tinyint(1) DEFAULT NULL,
  `smoke` tinyint(1) DEFAULT NULL,
  `oldMan` tinyint(1) DEFAULT NULL,
  `children` tinyint(1) DEFAULT NULL,
  `infant` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `needknow`
--

INSERT INTO `needknow` (`nid`, `fid`, `checkTime`, `minimumDay`, `pets`, `cooking`, `meeting`, `smoke`, `oldMan`, `children`, `infant`) VALUES
(1, 1, 2, 1, 1, 1, 0, 1, 1, 0, 0),
(2, 2, 2, 2, 1, 1, 0, 1, 1, 0, 0),
(3, 2, 2, 3, 1, 1, 1, 1, 1, 0, 0),
(4, 2, 2, 4, 1, 1, 1, 1, 1, 0, 0),
(5, 4, 2, 1, 1, 0, 1, 1, 1, 1, 0),
(6, 5, 3, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 6, 2, 2, 1, 1, 1, 1, 1, 1, 0),
(8, 7, 2, 2, 1, 1, 1, 1, 0, 0, 0),
(9, 8, 2, 2, 1, 1, 1, 1, 1, 0, 0),
(10, 9, 2, 2, 0, 1, 1, 1, 0, 1, 0),
(11, 10, 3, 2, 1, 1, 0, 1, 0, 1, 0),
(12, 11, 2, 4, 1, 1, 0, 1, 1, 0, 0),
(13, 12, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(14, 13, 2, 2, 1, 1, 1, 0, 1, 0, 0),
(15, 14, 2, 2, 1, 1, 0, 1, 1, 0, 1),
(16, 15, 3, 2, 0, 0, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `roomitem`
--

CREATE TABLE `roomitem` (
  `riid` int(11) NOT NULL,
  `riuid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `isChecked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `roomorder`
--

CREATE TABLE `roomorder` (
  `roid` int(11) NOT NULL,
  `rouid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `homeCount` int(11) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `payTime` datetime DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `leaveTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `ID_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `uname`, `upwd`, `phone`, `email`, `user_name`, `avatar`, `gender`, `remark`, `ID_number`) VALUES
(1, '1', '111111', '17622222221', NULL, '1233', NULL, NULL, NULL, NULL),
(2, '17622222222', '111111', '17622222222', NULL, '小红帽', '/images/avatar/1563471178300.jpeg', NULL, NULL, '610423199803061974'),
(3, '17622222223', '111111', '17622222223', NULL, '小红帽', '/images/avatar/1563471178300.jpeg', NULL, NULL, '610423199803061974'),
(4, NULL, '111111', '17611111111', NULL, '小红帽', '/images/avatar/1564132422357.jpeg', NULL, NULL, '610423198811250325'),
(5, NULL, '111111', '17611111112', NULL, '小飞侠', '/images/avatar/1564133505422.jpeg', NULL, NULL, '610423199205093252'),
(6, NULL, '111111', '17611111113', NULL, '小萝莉', '/images/avatar/1564134138862.jpeg', NULL, NULL, '610423199204039587'),
(7, NULL, '111111', '17611111114', NULL, '小天使', '/images/avatar/1564134737943.jpeg', NULL, NULL, '610423199205082548'),
(8, NULL, '111111', '17611111115', NULL, '小哪吒', '/images/avatar/1564135158913.jpeg', NULL, NULL, '610423199308042458'),
(9, NULL, '111111', '17611111116', NULL, '小书名', '/images/avatar/1564135710193.jpeg', NULL, NULL, '610423199802035484'),
(10, NULL, '111111', '17611111118', NULL, '小甜甜', '/images/avatar/1564136709006.jpeg', NULL, NULL, '610423199201053516'),
(11, NULL, '111111', '17611111119', NULL, '小混混', '/images/avatar/1564141006927.jpeg', NULL, NULL, '610423199503051959');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_guest_msg`
--
ALTER TABLE `add_guest_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chooseroom`
--
ALTER TABLE `chooseroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuid` (`cuid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`faid`),
  ADD KEY `fhtId` (`fhtid`);

--
-- Indexes for table `homepic`
--
ALTER TABLE `homepic`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `homeid` (`homeid`);

--
-- Indexes for table `leaseroom`
--
ALTER TABLE `leaseroom`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `needknow`
--
ALTER TABLE `needknow`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `roomitem`
--
ALTER TABLE `roomitem`
  ADD PRIMARY KEY (`riid`),
  ADD KEY `riuid` (`riuid`);

--
-- Indexes for table `roomorder`
--
ALTER TABLE `roomorder`
  ADD PRIMARY KEY (`roid`),
  ADD KEY `rouid` (`rouid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `add_guest_msg`
--
ALTER TABLE `add_guest_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `chooseroom`
--
ALTER TABLE `chooseroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `facility`
--
ALTER TABLE `facility`
  MODIFY `faid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `homepic`
--
ALTER TABLE `homepic`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- 使用表AUTO_INCREMENT `leaseroom`
--
ALTER TABLE `leaseroom`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `needknow`
--
ALTER TABLE `needknow`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `roomitem`
--
ALTER TABLE `roomitem`
  MODIFY `riid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `roomorder`
--
ALTER TABLE `roomorder`
  MODIFY `roid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000000;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 限制导出的表
--

--
-- 限制表 `chooseroom`
--
ALTER TABLE `chooseroom`
  ADD CONSTRAINT `cuid` FOREIGN KEY (`cuid`) REFERENCES `users` (`uid`);

--
-- 限制表 `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `fhtId` FOREIGN KEY (`fhtid`) REFERENCES `leaseroom` (`lid`);

--
-- 限制表 `homepic`
--
ALTER TABLE `homepic`
  ADD CONSTRAINT `homepic_ibfk_1` FOREIGN KEY (`homeid`) REFERENCES `leaseroom` (`lid`);

--
-- 限制表 `leaseroom`
--
ALTER TABLE `leaseroom`
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- 限制表 `needknow`
--
ALTER TABLE `needknow`
  ADD CONSTRAINT `fid` FOREIGN KEY (`fid`) REFERENCES `leaseroom` (`lid`);

--
-- 限制表 `roomitem`
--
ALTER TABLE `roomitem`
  ADD CONSTRAINT `riuid` FOREIGN KEY (`riuid`) REFERENCES `users` (`uid`);

--
-- 限制表 `roomorder`
--
ALTER TABLE `roomorder`
  ADD CONSTRAINT `rouid` FOREIGN KEY (`rouid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
