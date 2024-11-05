/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - youxialvxing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`youxialvxing` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `youxialvxing`;

/*Table structure for table `chepiao` */

DROP TABLE IF EXISTS `chepiao`;

CREATE TABLE `chepiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chepiao_name` varchar(200) DEFAULT NULL COMMENT '班车  Search111 ',
  `chepiao_types` int(11) DEFAULT NULL COMMENT '车票类型  Search111 ',
  `chepiao_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地  ',
  `chepiao_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地  ',
  `chepiao_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `chepiao_money` decimal(10,4) DEFAULT NULL COMMENT '票价',
  `chepiao_content` text COMMENT '车票详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车票';

/*Data for the table `chepiao` */

insert  into `chepiao`(`id`,`chepiao_name`,`chepiao_types`,`chepiao_chufadi`,`chepiao_mudidi`,`chepiao_photo`,`chepiao_money`,`chepiao_content`,`create_time`) values (1,'班车1',2,'出发地1','目的地1','http://localhost:8080/youxialvxing/file/download?fileName=1618449403572.jpg','1000.0000','车票详情车票详情车票详情\r\n','2021-04-15 09:16:58'),(2,'班车2',1,'出发地2','目的地2','http://localhost:8080/youxialvxing/file/download?fileName=1618449429930.jpg','2000.0000','车票详情\r\n','2021-04-15 09:17:15');

/*Table structure for table `chepiao_order` */

DROP TABLE IF EXISTS `chepiao_order`;

CREATE TABLE `chepiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chepiao_id` int(11) DEFAULT NULL COMMENT '车票id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chepiao_order_start_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车票订单';

/*Data for the table `chepiao_order` */

insert  into `chepiao_order`(`id`,`chepiao_id`,`yonghu_id`,`chepiao_order_start_time`,`insert_time`,`create_time`) values (1,2,2,'2021-04-17 00:00:00','2021-04-15 11:26:59','2021-04-15 11:26:59');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/youxialvxing/upload/1618449320514.jpg'),(2,'picture2','http://localhost:8080/youxialvxing/upload/1618449367145.jpg'),(3,'picture3','http://localhost:8080/youxialvxing/upload/1618449337134.jpg'),(6,'homepage','http://localhost:8080/youxialvxing/upload/1618449348962.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-14 21:04:15'),(2,'sex_types','性别',2,'女',NULL,'2021-04-14 21:04:15'),(3,'shangpin_types','商品类型名称',1,'商品类型1',NULL,'2021-04-14 21:04:15'),(4,'shangpin_types','商品类型名称',2,'商品类型2',NULL,'2021-04-14 21:04:15'),(5,'jiudian_types','酒店星级名称',1,'一星酒店',NULL,'2021-04-14 21:04:15'),(6,'jiudian_types','酒店星级名称',2,'二星酒店',NULL,'2021-04-14 21:04:15'),(7,'jiudian_types','酒店星级名称',3,'三星酒店',NULL,'2021-04-14 21:04:15'),(8,'jiudian_types','酒店星级名称',4,'四星酒店',NULL,'2021-04-14 21:04:15'),(9,'jiudian_types','酒店星级名称',5,'五星酒店',NULL,'2021-04-14 21:04:15'),(10,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-14 21:04:15'),(11,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-14 21:04:15'),(12,'chepiao_types','车票类型',1,'火车票',NULL,'2021-04-14 21:04:15'),(13,'chepiao_types','车票类型',2,'飞机票',NULL,'2021-04-14 21:04:15');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称  Search111 ',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '酒店星级  Search111 ',
  `jiudian_weizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置  Search111 ',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店缩略图',
  `jiudian_money` decimal(10,4) DEFAULT NULL COMMENT '酒店每日单价',
  `jiudian_content` text COMMENT '酒店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`jiudian_name`,`jiudian_types`,`jiudian_weizhi`,`jiudian_photo`,`jiudian_money`,`jiudian_content`,`create_time`) values (1,'酒店名称1',1,'酒店位置1','http://localhost:8080/youxialvxing/file/download?fileName=1618449602599.jpg','1000.0000','酒店详情酒店详情酒店详情\r\n','2021-04-15 09:20:11'),(2,'酒店名称2',3,'酒店位置2','http://localhost:8080/youxialvxing/file/download?fileName=1618449644926.jpg','2000.0000','酒店详情酒店详情酒店详情\r\n','2021-04-15 09:20:50'),(3,'酒店名称3',5,'酒店位置3','http://localhost:8080/youxialvxing/file/download?fileName=1618449666466.jpg','3000.0000','酒店详情酒店详情酒店详情酒店详情酒店详情酒店详情\r\n','2021-04-15 09:21:12');

/*Table structure for table `jiudian_liuyan` */

DROP TABLE IF EXISTS `jiudian_liuyan`;

CREATE TABLE `jiudian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='酒店留言';

/*Data for the table `jiudian_liuyan` */

insert  into `jiudian_liuyan`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,1,'123123123\r\n','123123123\r\n','2021-04-15 11:29:54','2021-04-15 11:29:54');

/*Table structure for table `jiudian_order` */

DROP TABLE IF EXISTS `jiudian_order`;

CREATE TABLE `jiudian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_order_start_time` timestamp NULL DEFAULT NULL COMMENT '预定开始时间',
  `jiudian_order_end_time` timestamp NULL DEFAULT NULL COMMENT '预定结束时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='酒店订单';

/*Data for the table `jiudian_order` */

insert  into `jiudian_order`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_order_start_time`,`jiudian_order_end_time`,`insert_time`,`create_time`) values (1,1,2,'2021-04-17 00:00:00','2021-04-24 00:00:00','2021-04-15 11:27:13','2021-04-15 11:27:13'),(2,3,1,'2021-04-24 00:00:00','2021-05-01 00:00:00','2021-04-15 11:28:15','2021-04-15 11:28:15'),(3,3,1,'2021-04-24 00:00:00','2021-05-01 00:00:00','2021-04-15 11:28:15','2021-04-15 11:28:15');

/*Table structure for table `lvxingshe` */

DROP TABLE IF EXISTS `lvxingshe`;

CREATE TABLE `lvxingshe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `lvxingshe_name` varchar(200) DEFAULT NULL COMMENT '旅行社名称  Search111 ',
  `lvxingshe_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,0) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='旅行社';

/*Data for the table `lvxingshe` */

insert  into `lvxingshe`(`id`,`username`,`password`,`lvxingshe_name`,`lvxingshe_photo`,`new_money`,`create_time`) values (1,'333','123456','旅行社1','http://localhost:8080/youxialvxing/file/download?fileName=1618451158578.jpg','999','2021-04-15 09:46:00'),(2,'444','123456','旅行社2','http://localhost:8080/youxialvxing/file/download?fileName=1618451230976.jpg','1818','2021-04-15 09:47:12');

/*Table structure for table `lvxingtuan` */

DROP TABLE IF EXISTS `lvxingtuan`;

CREATE TABLE `lvxingtuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvxingshe_id` int(200) DEFAULT NULL COMMENT '发布旅行社',
  `lvxingtuan_name` varchar(200) DEFAULT NULL COMMENT '旅行地点',
  `jiudian_shijian` int(200) DEFAULT NULL COMMENT '旅行时间(天)',
  `lvxingtuan_photo` varchar(200) DEFAULT NULL COMMENT '预览图',
  `lvxingtuan_money` decimal(10,4) DEFAULT NULL COMMENT '价格',
  `lvxingtuan_content` text COMMENT '旅行团详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='旅行团信息';

/*Data for the table `lvxingtuan` */

insert  into `lvxingtuan`(`id`,`lvxingshe_id`,`lvxingtuan_name`,`jiudian_shijian`,`lvxingtuan_photo`,`lvxingtuan_money`,`lvxingtuan_content`,`create_time`) values (1,1,'旅行地点1',7,'http://localhost:8080/youxialvxing/file/download?fileName=1618451585987.JPG','999.0000','旅行团详情旅行团详情旅行团详情旅行团详情\r\n','2021-04-15 09:53:14'),(2,2,'旅行地点2',14,'http://localhost:8080/youxialvxing/file/download?fileName=1618451752964.JPG','1818.0000','旅行团详情旅行团详情旅行团详情旅行团详情\r\n','2021-04-15 09:56:05');

/*Table structure for table `lvxingtuan_order` */

DROP TABLE IF EXISTS `lvxingtuan_order`;

CREATE TABLE `lvxingtuan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvxingtuan_id` int(11) DEFAULT NULL COMMENT '旅行团id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `lvxingtuan_order_start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `lvxingtuan_order_end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='旅行团订单';

/*Data for the table `lvxingtuan_order` */

insert  into `lvxingtuan_order`(`id`,`lvxingtuan_id`,`yonghu_id`,`lvxingtuan_order_start_time`,`lvxingtuan_order_end_time`,`insert_time`,`create_time`) values (2,2,1,'2021-04-17 00:00:00','2021-04-24 00:00:00','2021-04-15 11:11:08','2021-04-15 11:11:08'),(3,1,2,'2021-04-17 00:00:00','2021-04-24 00:00:00','2021-04-15 11:26:42','2021-04-15 11:26:42');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',1,'http://localhost:8080/youxialvxing/file/download?fileName=1618451812441.jpg','2021-04-15 09:56:56','新闻详情\r\n','2021-04-15 09:56:56'),(2,'新闻名称2',2,'http://localhost:8080/youxialvxing/file/download?fileName=1618451824728.jpg','2021-04-15 09:57:07','新闻详情新闻详情新闻详情新闻详情\r\n','2021-04-15 09:57:07');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称 Search111',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpin_types` int(200) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_money` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `shangpin_content` text COMMENT '商品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_money`,`shangpin_content`,`create_time`) values (22,'商品名称1','http://localhost:8080/youxialvxing/file/download?fileName=1618453322824.jpg',1,'100','商品详情\r\n','2021-04-15 10:22:10'),(23,'商品名称2','http://localhost:8080/youxialvxing/file/download?fileName=1618453336658.jpg',2,'200','商品详情商品详\r\n','2021-04-15 10:22:24'),(24,'商品名称3','http://localhost:8080/youxialvxing/file/download?fileName=1618453357907.jpg',1,'300','商品详情商品详情商品详情\r\n','2021-04-15 10:22:44');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'111','yonghu','用户','7ywuqd3hb7f974nwo3oemwyjog40ou51','2021-04-14 21:21:23','2021-04-15 12:29:47'),(2,1,'admin','users','管理员','3tafmsaxb9e7o4sr1nbqjiuw5sk8s874','2021-04-15 09:12:25','2021-04-15 12:30:08'),(3,1,'333','lvxingshe','旅行社','ai3dsgnn1nkuxx4m1k31nl959wocooof','2021-04-15 11:11:26','2021-04-15 12:23:46'),(4,2,'444','lvxingshe','旅行社','128etjqjatlct147bvliqbx032z9u7u3','2021-04-15 11:17:15','2021-04-15 12:24:52'),(5,2,'222','yonghu','用户','zhvjf3nmrr366bq6awp39c7t9wxpz5zh','2021-04-15 11:25:36','2021-04-15 12:25:37');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,0) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`new_money`,`create_time`) values (1,'111','123456','用户1',2,'123132132123123','12312312312','http://localhost:8080/youxialvxing/upload/1618448983822.jpg','5111',NULL),(2,'222','123456','用户2',2,'410882199910211242','17796688972','http://localhost:8080/youxialvxing/file/download?fileName=1618456143152.jpg','15999','2021-04-15 11:09:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
