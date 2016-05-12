-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-05-12 22:17:39
-- 服务器版本： 5.7.12-0ubuntu1
-- PHP Version: 7.0.4-7ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eb_lms`
--

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `date_receive` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category_id`, `author`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `date_receive`, `date_added`, `status`) VALUES
(1, 'MySQL必知必会', 0, '福塔', 1, '', '人民邮电出版社', '9787115191120', 2009, '', '2015-11-21 19:22:35', '新书'),
(2, 'C程序设计语言', 0, 'Brian W. Kernighan', 1, '', '机械工业出版社', '9787111196266', 2006, '', '2015-11-21 19:22:54', '新书'),
(3, '深入浅出WPF', 0, '刘铁猛', 1, '', '中国水利水电出版社', '9787508476353', 2010, '', '2015-11-21 19:23:27', '新书'),
(4, '软件工程导论', 0, '张海藩', 1, '', '清华大学出版社', '9787302164784', 2008, '', '2015-11-21 19:23:53', '新书'),
(5, 'Linux操作系统实用教程', 0, '文东戈//孙昌立//王旭', 1, '', '清华大学', '9787302212300', 2010, '', '2015-11-21 19:24:19', '新书'),
(6, '数字图像处理', 0, '冈萨雷斯', 1, '', '电子工业出版社', '9787121043970', 2007, '', '2015-11-21 19:25:22', '新书'),
(7, '计算机网络', 0, '谢希仁', 1, '', '电子工业出版社', '9787121053863', 2008, '', '2015-11-21 19:25:58', '新书'),
(8, '网络工程师考试试题分类精解', 0, '施游//胡钊源', 1, '', '电子工业', '9787121083860', 2009, '', '2015-11-21 19:26:48', '新书'),
(9, '精通JavaScript', 0, 'John Resig', 1, '', '人民邮电出版社', '9787115175403', 2008, '', '2015-11-21 19:27:14', '新书'),
(10, '信息安全概论', 0, '牛少彰，崔宝江，', 1, '', '北京邮电大学', '9787563514861', 2007, '', '2015-11-21 19:27:45', '新书'),
(11, 'C专家编程', 0, 'Peter Van Der Linden', 1, '', '人民邮电出版社', '9787115171801', 2008, '', '2015-11-21 19:31:11', '新书'),
(12, 'C陷阱与缺陷', 0, '凯尼格', 1, '', '人民邮电出版社', '9787115171795', 2008, '', '2015-11-21 19:31:28', '新书'),
(13, '逆向工程核心原理', 0, '[韩] 李承远', 1, '', '人民邮电出版社', '9787115350183', 2014, '', '2015-11-21 21:03:43', '新书'),
(14, '恶意软件、Rootkit和僵尸网络', 0, 'Christopher C.Elisan', 1, '', '机械工业出版社', '9787111436959', 2013, '', '2015-11-21 21:04:02', '新书'),
(15, 'Rootkit：系统灰色地带的潜伏者', 0, 'Bill Blunden', 1, '', '机械工业出版社', '9787111441786', 2013, '', '2015-11-21 21:04:18', '新书'),
(16, 'XSS跨站脚本攻击剖析与防御', 0, '邱永华', 1, '', '人民邮电出版社', '9787115311047', 2013, '', '2015-11-21 21:04:41', '新书'),
(17, 'SQL注入攻击与防御（第2版）', 0, 'Justin Clarke', 1, '', '清华大学出版社', '9787302340058', 2013, '', '2015-11-21 21:05:08', '新书'),
(18, '计算机网络', 0, '谢希仁', 1, '', '电子工业出版社', '9787121201677', 2013, '', '2015-11-21 21:33:11', '新书'),
(19, 'Java虚拟机规范(Java SE 7版)', 0, 'Tim Lindholm', 1, '', '机械工业出版社', '9787111445159', 2014, '', '2015-11-21 22:39:09', '新书'),
(20, 'C++ Primer 中文版（第 5 版）', 0, '[美] Stanley B. Lippman', 1, '', '电子工业出版社', '9787121155352', 2013, '', '2015-11-23 18:14:45', '新书');

-- --------------------------------------------------------

--
-- 表的结构 `book_entity`
--

CREATE TABLE IF NOT EXISTS `book_entity` (
  `id` int(11) NOT NULL COMMENT '识别一本书的唯一 id',
  `book_id` int(11) NOT NULL COMMENT '书的信息',
  `member_id` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='与 book 表不同， book_entity 是将每一本作为一个实例，';

--
-- 转存表中的数据 `book_entity`
--

INSERT INTO `book_entity` (`id`, `book_id`, `member_id`) VALUES
(1, 1, '70'),
(2, 2, '70'),
(3, 3, '70'),
(4, 4, '70'),
(5, 5, '70'),
(6, 6, '70'),
(7, 7, '70'),
(8, 8, '70'),
(9, 9, '70'),
(10, 10, '70'),
(11, 11, '70'),
(12, 12, '70'),
(13, 13, '70'),
(14, 14, '70'),
(15, 15, '70'),
(16, 16, '70'),
(17, 17, '70'),
(18, 18, '70'),
(19, 19, '70'),
(21, 20, '70');

-- --------------------------------------------------------

--
-- 替换视图以便查看 `book_info`
--
CREATE TABLE IF NOT EXISTS `book_info` (
`id` int(11)
,`book_id` int(11)
,`book_title` varchar(100)
,`isbn` varchar(50)
,`member_id` varchar(20)
,`firstname` varchar(100)
,`lastname` varchar(100)
,`id_number` varchar(8)
,`status` bigint(21)
);

-- --------------------------------------------------------

--
-- 表的结构 `book_sum`
--

CREATE TABLE IF NOT EXISTS `book_sum` (
  `id` int(50) NOT NULL,
  `data` int(50) DEFAULT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `borrowdetails`
--

CREATE TABLE IF NOT EXISTS `borrowdetails` (
  `borrow_details_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_entity_id` int(11) NOT NULL,
  `borrow_id` int(11) NOT NULL,
  `borrower_name` varchar(50) NOT NULL,
  `borrow_status` varchar(50) NOT NULL,
  `date_return` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 触发器 `borrowdetails`
--
DELIMITER $$
CREATE TRIGGER `tigger_dailysumup` BEFORE INSERT ON `borrowdetails`
 FOR EACH ROW Begin

INSERT INTO dailysumup_temp(summary_time)
VALUE(NOW());
 
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `classname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, '互联网'),
(2, '编程语言'),
(3, '算法'),
(4, 'Web'),
(5, '文学'),
(6, '生活'),
(7, '文化'),
(8, '经济与管理'),
(9, '设计与用户体验'),
(10, '计算机与操作系统'),
(11, '社会心理学'),
(12, '未定');

-- --------------------------------------------------------

--
-- 表的结构 `dailysumup_temp`
--

CREATE TABLE IF NOT EXISTS `dailysumup_temp` (
  `id` int(11) NOT NULL COMMENT '当天借阅条目编号',
  `borrow_id` int(11) NOT NULL COMMENT '借书条目',
  `summary_time` date NOT NULL,
  `sum_temp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dailysumup_temp`
--

INSERT INTO `dailysumup_temp` (`id`, `borrow_id`, `summary_time`, `sum_temp`) VALUES
(17, 0, '2015-11-18', 0),
(18, 0, '2015-11-18', 0),
(19, 0, '2015-11-18', 0),
(20, 0, '2015-11-18', 0),
(21, 0, '2015-11-18', 0),
(22, 0, '2015-11-18', 0),
(23, 0, '2015-11-23', 0);

-- --------------------------------------------------------

--
-- 表的结构 `daily_sumup`
--

CREATE TABLE IF NOT EXISTS `daily_sumup` (
  `id` int(11) NOT NULL COMMENT '编号',
  `time` date NOT NULL COMMENT '统计日期',
  `sum_dnum` int(11) NOT NULL COMMENT '统计数量'
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `daily_sumup`
--

INSERT INTO `daily_sumup` (`id`, `time`, `sum_dnum`) VALUES
(686, '0000-00-00', 0),
(687, '0000-00-00', 0),
(688, '0000-00-00', 0),
(689, '0000-00-00', 0),
(690, '0000-00-00', 0),
(691, '0000-00-00', 0),
(692, '0000-00-00', 0),
(693, '0000-00-00', 0),
(694, '0000-00-00', 0),
(695, '0000-00-00', 0),
(696, '0000-00-00', 0),
(697, '0000-00-00', 12),
(698, '0000-00-00', 0),
(699, '0000-00-00', 1),
(700, '0000-00-00', 0),
(701, '0000-00-00', 0),
(702, '0000-00-00', 0),
(703, '0000-00-00', 0),
(704, '0000-00-00', 0),
(705, '0000-00-00', 0),
(706, '0000-00-00', 0),
(707, '0000-00-00', 0),
(708, '0000-00-00', 0),
(709, '0000-00-00', 3),
(710, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `lost_book`
--

CREATE TABLE IF NOT EXISTS `lost_book` (
  `Book_ID` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `Member_No` varchar(50) NOT NULL,
  `Date Lost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_number` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `open_id` varchar(60) DEFAULT NULL COMMENT '微信的唯一识别码',
  `job_title` varchar(45) DEFAULT '' COMMENT '职位\n',
  `self_intro` varchar(150) DEFAULT NULL COMMENT '职位描述',
  `postiton` varchar(20) DEFAULT '' COMMENT '成员职位，\n由 postiton 表中的 id 和 ,  组合成，\n例如 1,4 代表这个人是 safe 组成员\n同时兼任会长',
  `knowledge` varchar(45) DEFAULT NULL COMMENT '个人知识列表，\n由 knowledge 的 id  和 , 组成',
  `portrait` varchar(300) DEFAULT 'http://7xjlp0.com1.z0.glb.clouddn.com/01.jpg' COMMENT '肖像 的 url '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `postiton`
--

CREATE TABLE IF NOT EXISTS `postiton` (
  `id` int(11) NOT NULL,
  `postiton` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='职位表';

--
-- 转存表中的数据 `postiton`
--

INSERT INTO `postiton` (`id`, `postiton`) VALUES
(1, '会长'),
(2, '组长'),
(3, '组员'),
(4, '安全组'),
(5, 'Web组'),
(6, '技术运营组'),
(7, '视觉设计组');

-- --------------------------------------------------------

--
-- 表的结构 `social_info`
--

CREATE TABLE IF NOT EXISTS `social_info` (
  `member_id` int(11) NOT NULL,
  `website` varchar(45) DEFAULT '' COMMENT '个人站点 , 可以是个人博客，\n也可以是个人站点',
  `github` varchar(45) DEFAULT '' COMMENT 'github 帐号',
  `dribbble` varchar(30) NOT NULL,
  `linkedin` varchar(45) DEFAULT '' COMMENT '领英',
  `weibo` varchar(45) DEFAULT '',
  `twitter` varchar(45) NOT NULL COMMENT '推特',
  `instagram` varchar(45) NOT NULL,
  `facebook` varchar(45) NOT NULL,
  `wechat` varchar(45) DEFAULT '' COMMENT '微信',
  `qq` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='infocol';

-- --------------------------------------------------------

--
-- 表的结构 `sumup`
--

CREATE TABLE IF NOT EXISTS `sumup` (
  `id` int(11) NOT NULL COMMENT '统计条目',
  `sum_time` date NOT NULL COMMENT '统计时间',
  `sum_num` int(11) NOT NULL COMMENT '统计数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL,
  `borrowertype` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `borrowertype`) VALUES
(30, '成员'),
(31, '学生'),
(32, '老"湿"');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', '', '');

-- --------------------------------------------------------

--
-- 视图结构 `book_info`
--
DROP TABLE IF EXISTS `book_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`demo`@`%` SQL SECURITY DEFINER VIEW `book_info` AS select `T`.`id` AS `id`,`T`.`book_id` AS `book_id`,`book`.`book_title` AS `book_title`,`book`.`isbn` AS `isbn`,`T`.`member_id` AS `member_id`,`member`.`firstname` AS `firstname`,`member`.`lastname` AS `lastname`,`member`.`id_number` AS `id_number`,(select count(0) from `borrowdetails` where ((`borrowdetails`.`book_entity_id` = `T`.`id`) and (`borrowdetails`.`borrow_status` = 'pending'))) AS `status` from ((`book_entity` `T` join `book` on((`T`.`book_id` = `book`.`book_id`))) join `member` on((`T`.`member_id` = `member`.`member_id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_entity`
--
ALTER TABLE `book_entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_sum`
--
ALTER TABLE `book_sum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowdetails`
--
ALTER TABLE `borrowdetails`
  ADD PRIMARY KEY (`borrow_details_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD KEY `classid` (`category_id`);

--
-- Indexes for table `dailysumup_temp`
--
ALTER TABLE `dailysumup_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_sumup`
--
ALTER TABLE `daily_sumup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost_book`
--
ALTER TABLE `lost_book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `postiton`
--
ALTER TABLE `postiton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_info`
--
ALTER TABLE `social_info`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `sumup`
--
ALTER TABLE `sumup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowertype` (`borrowertype`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `book_entity`
--
ALTER TABLE `book_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '识别一本书的唯一 id',AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `book_sum`
--
ALTER TABLE `book_sum`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `borrowdetails`
--
ALTER TABLE `borrowdetails`
  MODIFY `borrow_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dailysumup_temp`
--
ALTER TABLE `dailysumup_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '当天借阅条目编号',AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `daily_sumup`
--
ALTER TABLE `daily_sumup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',AUTO_INCREMENT=711;
--
-- AUTO_INCREMENT for table `lost_book`
--
ALTER TABLE `lost_book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `postiton`
--
ALTER TABLE `postiton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sumup`
--
ALTER TABLE `sumup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '统计条目';
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
DELIMITER $$
--
-- 事件
--
CREATE DEFINER=`root`@`localhost` EVENT `Auto_dailysumup` ON SCHEDULE EVERY 1 DAY STARTS '2015-09-25 00:33:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO daily_sumup(sum_dnum)
SELECT Count(*) FROM dailysumup_temp$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_del` ON SCHEDULE EVERY 2 DAY STARTS '2015-09-26 00:32:00' ON COMPLETION NOT PRESERVE ENABLE DO delete from dailysumup_temp$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_del_book_sum` ON SCHEDULE EVERY 30 DAY STARTS '2015-09-26 21:29:00' ON COMPLETION NOT PRESERVE ENABLE DO delete from book_sum$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_del_dailysumup` ON SCHEDULE EVERY 30 DAY STARTS '2015-09-26 21:16:00' ON COMPLETION NOT PRESERVE ENABLE DO delete from daily_sumup$$

CREATE DEFINER=`root`@`localhost` EVENT `auto_sumup` ON SCHEDULE EVERY 1 DAY STARTS '2015-09-26 21:21:00' ON COMPLETION PRESERVE ENABLE DO INSERT INTO book_sum(data)
SELECT Count(*) FROM book WHERE STATUS !="Archive"$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
