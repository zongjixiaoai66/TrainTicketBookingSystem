/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t289`;
CREATE DATABASE IF NOT EXISTS `t289` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t289`;

DROP TABLE IF EXISTS `checi`;
CREATE TABLE IF NOT EXISTS `checi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `checi_name` varchar(200) DEFAULT NULL COMMENT '车次标题 Search111 ',
  `checi_photo` varchar(200) DEFAULT NULL COMMENT '火车照片',
  `checi_types` int DEFAULT NULL COMMENT '火车类型 Search111',
  `checi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `checi_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `checi_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `checi_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `section_number` int DEFAULT NULL COMMENT '车厢',
  `zuowei_number` int DEFAULT NULL COMMENT '座位',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `checi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `checi_content` text COMMENT '经停站、到达时间详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='车次信息';

DELETE FROM `checi`;
INSERT INTO `checi` (`id`, `checi_name`, `checi_photo`, `checi_types`, `checi_new_money`, `checi_chufadi`, `checi_mudidi`, `checi_time`, `section_number`, `zuowei_number`, `shangxia_types`, `checi_delete`, `checi_content`, `create_time`) VALUES
	(1, '车次标题1', 'http://localhost:8080/huochpiaodingpiao/upload/1648621950417.jpeg', 2, 260.63, '出发地1', '目的地1', '2022-03-30 06:23:57', 1, 20, 1, 1, '<p>经停站、到达时间详情1</p>', '2022-03-30 06:23:57'),
	(2, '车次标题2', 'http://localhost:8080/huochpiaodingpiao/upload/1648621941816.jpeg', 1, 470.82, '出发地2', '目的地2', '2022-03-30 06:23:57', 2, 20, 1, 1, '<p>经停站、到达时间详情2</p>', '2022-03-30 06:23:57'),
	(3, '车次标题3', 'http://localhost:8080/huochpiaodingpiao/upload/1648621934089.jpeg', 1, 79.38, '出发地3', '目的地3', '2022-03-30 06:23:57', 3, 20, 1, 1, '<p>经停站、到达时间详情3</p>', '2022-03-30 06:23:57'),
	(4, '车次标题4', 'http://localhost:8080/huochpiaodingpiao/upload/1648621926297.jpeg', 2, 373.35, '出发地4', '目的地4', '2022-03-30 06:23:57', 4, 20, 1, 1, '<p>经停站、到达时间详情4</p>', '2022-03-30 06:23:57'),
	(5, '车次标题5', 'http://localhost:8080/huochpiaodingpiao/upload/1648621917229.jpeg', 3, 191.86, '出发地5', '目的地5', '2022-03-30 06:23:57', 5, 20, 1, 1, '<p>经停站、到达时间详情5</p>', '2022-03-30 06:23:57');

DROP TABLE IF EXISTS `checi_order`;
CREATE TABLE IF NOT EXISTS `checi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `checi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `checi_id` int DEFAULT NULL COMMENT '车次',
  `yonghu_id` int DEFAULT NULL COMMENT '会员',
  `checi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `checi_order_types` int DEFAULT NULL COMMENT '订单类型',
  `buy_section_number` int DEFAULT NULL COMMENT '车厢',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购票订单';

DELETE FROM `checi_order`;
INSERT INTO `checi_order` (`id`, `checi_order_uuid_number`, `checi_id`, `yonghu_id`, `checi_order_true_price`, `checi_order_types`, `buy_section_number`, `buy_zuowei_number`, `buy_zuowei_time`, `insert_time`, `create_time`) VALUES
	(1, '1648622220219', 4, 1, 1120.05, 1, 1, '1,2,3', '2022-03-30', '2022-03-30 06:37:00', '2022-03-30 06:37:00'),
	(2, '1648622337704', 4, 1, 746.70, 2, 1, '4,5', '2022-03-30', '2022-03-30 06:38:58', '2022-03-30 06:38:58'),
	(3, '1648622350043', 2, 1, 1412.46, 3, 1, '3,4,5', '2022-03-30', '2022-03-30 06:39:10', '2022-03-30 06:39:10'),
	(4, '1721790716676', 2, 1, 470.82, 1, 1, '4', '2024-07-24', '2024-07-24 03:11:57', '2024-07-24 03:11:57');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/huochpiaodingpiao/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/huochpiaodingpiao/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/huochpiaodingpiao/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(103, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-30 06:23:47'),
	(104, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-30 06:23:47'),
	(105, 'checi_types', '火车类型', 1, '火车类型1', NULL, NULL, '2022-03-30 06:23:47'),
	(106, 'checi_types', '火车类型', 2, '火车类型2', NULL, NULL, '2022-03-30 06:23:47'),
	(107, 'checi_types', '火车类型', 3, '火车类型3', NULL, NULL, '2022-03-30 06:23:47'),
	(108, 'checi_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-03-30 06:23:47'),
	(109, 'checi_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-30 06:23:47'),
	(110, 'checi_order_types', '订单类型', 3, '已使用', NULL, NULL, '2022-03-30 06:23:47'),
	(111, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-30 06:23:47'),
	(112, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-30 06:23:47');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '会员',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言版';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2022-03-30 06:23:57', '回复信息1', '2022-03-30 06:23:57', '2022-03-30 06:23:57'),
	(2, 3, '留言标题2', '留言内容2', '2022-03-30 06:23:57', '回复信息2', '2022-03-30 06:23:57', '2022-03-30 06:23:57'),
	(3, 3, '留言标题3', '留言内容3', '2022-03-30 06:23:57', '回复信息3', '2022-03-30 06:23:57', '2022-03-30 06:23:57'),
	(4, 1, '留言标题4', '留言内容4', '2022-03-30 06:23:57', '回复信息4', '2022-03-30 06:23:57', '2022-03-30 06:23:57'),
	(5, 2, '留言标题5', '留言内容5', '2022-03-30 06:23:57', '回复信息5', '2022-03-30 06:23:57', '2022-03-30 06:23:57'),
	(7, 1, '666', '6666', '2024-07-24 03:12:02', NULL, NULL, '2024-07-24 03:12:02');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '会员', 'b9s0emyf7n39732e2v3hfcwsiceqhp4w', '2022-03-30 06:15:23', '2024-07-24 04:11:42'),
	(2, 1, 'admin', 'users', '管理员', '43mfmn69bsyd2jtviori4nip6yqtyn3t', '2022-03-30 06:31:01', '2024-07-24 04:10:38');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `sex_types`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '会员1', '123456', '会员姓名1', 'http://localhost:8080/huochpiaodingpiao/upload/yonghu1.jpg', '17703786901', '410224199610232001', 2, 76270.83, 1, '2022-03-30 06:23:57'),
	(2, '会员2', '123456', '会员姓名2', 'http://localhost:8080/huochpiaodingpiao/upload/yonghu2.jpg', '17703786902', '410224199610232002', 2, 834.76, 1, '2022-03-30 06:23:57'),
	(3, '会员3', '123456', '会员姓名3', 'http://localhost:8080/huochpiaodingpiao/upload/yonghu3.jpg', '17703786903', '410224199610232003', 1, 436.53, 1, '2022-03-30 06:23:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
