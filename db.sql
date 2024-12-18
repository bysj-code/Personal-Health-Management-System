/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gerenjiankangguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gerenjiankangguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gerenjiankangguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'meishi_types','饮食类型',1,'早餐',NULL,NULL,'2023-03-22 15:10:41'),(2,'meishi_types','饮食类型',2,'午餐',NULL,NULL,'2023-03-22 15:10:41'),(3,'meishi_types','饮食类型',3,'晚餐',NULL,NULL,'2023-03-22 15:10:41'),(4,'yundong_types','运动类型',1,'运动类型1',NULL,NULL,'2023-03-22 15:10:41'),(5,'yundong_types','运动类型',2,'运动类型2',NULL,NULL,'2023-03-22 15:10:41'),(6,'yundong_types','运动类型',3,'运动类型3',NULL,NULL,'2023-03-22 15:10:41'),(7,'shenti_types','身体状况',1,'偏瘦',NULL,NULL,'2023-03-22 15:10:41'),(8,'shenti_types','身体状况',2,'正常',NULL,NULL,'2023-03-22 15:10:41'),(9,'shenti_types','身体状况',3,'超重',NULL,NULL,'2023-03-22 15:10:41'),(10,'shenti_types','身体状况',4,'肥胖',NULL,NULL,'2023-03-22 15:10:41'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-22 15:10:41'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-22 15:10:41'),(13,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-22 15:10:41'),(14,'sex_types','性别',1,'男',NULL,NULL,'2023-03-22 15:10:41'),(15,'sex_types','性别',2,'女',NULL,NULL,'2023-03-22 15:10:41'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-22 15:10:41'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-22 15:10:41'),(18,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2023-03-22 15:10:42'),(19,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2023-03-22 15:10:42'),(20,'yaopin_types','药品类型',3,'药品类型',NULL,NULL,'2023-03-22 15:10:42'),(21,'meishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-22 15:10:42'),(22,'meishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-22 15:10:42'),(23,'meishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-22 15:10:42'),(24,'jiankangtieshi_types','贴士类型',1,'贴士类型1',NULL,NULL,'2023-03-22 15:10:42'),(25,'jiankangtieshi_types','贴士类型',2,'贴士类型2',NULL,NULL,'2023-03-22 15:10:42'),(26,'jiankangtieshi_types','贴士类型',3,'贴士类型3',NULL,NULL,'2023-03-22 15:10:42'),(27,'yundong_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-22 15:10:42'),(28,'yundong_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-22 15:10:42'),(29,'yundong_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-22 15:10:42');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',80,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,'帖子标题2',2,NULL,'发布内容2',184,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,'帖子标题3',1,NULL,'发布内容3',152,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,'帖子标题4',3,NULL,'发布内容4',36,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,'帖子标题5',3,NULL,'发布内容5',223,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,'帖子标题6',1,NULL,'发布内容6',315,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,'帖子标题7',2,NULL,'发布内容7',256,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,'帖子标题8',3,NULL,'发布内容8',319,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,'帖子标题9',1,NULL,'发布内容9',171,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,'帖子标题10',3,NULL,'发布内容10',282,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,'帖子标题11',2,NULL,'发布内容11',113,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,'帖子标题12',2,NULL,'发布内容12',82,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,'帖子标题13',2,NULL,'发布内容13',76,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,'帖子标题14',3,NULL,'发布内容14',104,1,'2023-03-22 15:10:51','2023-03-22 15:10:51','2023-03-22 15:10:51'),(17,NULL,1,NULL,'897798987',14,2,'2023-03-22 15:50:18',NULL,'2023-03-22 15:50:18'),(18,NULL,NULL,1,'3333333333333333333333',14,2,'2023-03-22 15:53:08',NULL,'2023-03-22 15:53:08');

/*Table structure for table `gerentizheng` */

DROP TABLE IF EXISTS `gerentizheng`;

CREATE TABLE `gerentizheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gerentizheng_num` decimal(10,2) DEFAULT NULL COMMENT '当前身高',
  `tizhong_num` decimal(10,2) DEFAULT NULL COMMENT '当前体重',
  `shenti_types` int(11) DEFAULT NULL COMMENT '身体状况',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '饮食照片',
  `gerentizheng_content` longtext COMMENT '备注',
  `gerentizheng_time` timestamp NULL DEFAULT NULL COMMENT '下次体检时间',
  `gerentizheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='体检记录';

/*Data for the table `gerentizheng` */

insert  into `gerentizheng`(`id`,`yonghu_id`,`gerentizheng_num`,`tizhong_num`,`shenti_types`,`meishi_photo`,`gerentizheng_content`,`gerentizheng_time`,`gerentizheng_delete`,`insert_time`,`create_time`) values (1,2,'950.06','849.05',2,'upload/meishi1.jpg','备注1','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,'901.64','964.74',1,'upload/meishi2.jpg','备注2','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,1,'569.01','480.29',1,'upload/meishi3.jpg','备注3','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,2,'158.60','727.26',4,'upload/meishi4.jpg','备注4','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,1,'852.62','634.48',2,'upload/meishi5.jpg','备注5','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,3,'415.41','473.93',2,'upload/meishi6.jpg','备注6','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,2,'847.31','351.66',2,'upload/meishi7.jpg','备注7','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,2,'519.19','896.91',2,'upload/meishi8.jpg','备注8','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,3,'265.69','752.74',4,'upload/meishi9.jpg','备注9','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,3,'427.41','261.69',4,'upload/meishi10.jpg','备注10','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,2,'731.03','304.63',2,'upload/meishi11.jpg','备注11','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,2,'508.47','352.63',2,'upload/meishi12.jpg','备注12','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,2,'236.72','993.77',3,'upload/meishi13.jpg','备注13','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,2,'131.36','613.78',4,'upload/meishi14.jpg','备注14','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(17,1,'123.00','321.00',2,'','123','2023-03-22 15:31:17',2,'2023-03-22 15:33:26','2023-03-22 15:33:26'),(18,1,'4123.00','123123.00',2,'','123','2023-03-22 15:33:34',2,'2023-03-22 15:33:42','2023-03-22 15:33:42'),(19,1,'888.00','99999.00',2,'','123','2023-03-22 15:33:51',2,'2023-03-22 15:34:03','2023-03-22 15:34:03'),(20,1,'180.00','400.00',2,'','123','2023-03-22 15:34:11',2,'2023-03-22 15:34:23','2023-03-22 15:34:23'),(21,1,'120.00','400.00',2,'','123','2023-03-22 15:34:31',2,'2023-03-22 15:35:03','2023-03-22 15:35:03'),(22,1,'123.00','23.00',1,'','123','2023-03-22 15:35:07',2,'2023-03-22 15:35:21','2023-03-22 15:35:21'),(23,1,'160.00','200.00',1,'','123','2023-03-22 15:35:24',2,'2023-03-22 15:35:39','2023-03-22 15:35:39'),(24,1,'180.00','400.00',1,'','654','2023-03-22 15:36:56',2,'2023-03-22 15:40:48','2023-03-22 15:40:48'),(25,1,'1.80','400.00',2,'','654','2023-03-22 15:36:56',2,'2023-03-22 15:40:55','2023-03-22 15:40:55'),(26,1,'1.60','300.00',2,'','123','2023-03-22 15:41:44',1,'2023-03-22 15:41:56','2023-03-22 15:41:56'),(27,1,'1.60','100.00',2,'','123','2023-03-22 15:42:38',2,'2023-03-22 15:43:15','2023-03-22 15:43:15'),(28,1,'1.60','90.00',4,'','123','2023-03-22 15:43:20',1,'2023-03-22 15:43:40','2023-03-22 15:43:40'),(29,1,'1.60','90.00',4,'','123','2023-03-22 15:44:02',2,'2023-03-22 15:44:24','2023-03-22 15:44:24'),(30,1,'1.60','90.00',4,'','123','2023-03-22 15:44:02',1,'2023-03-22 15:46:55','2023-03-22 15:46:55'),(31,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(32,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(33,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(34,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(35,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(36,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(37,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(38,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(39,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:18','2023-03-22 15:47:18'),(40,1,'1.94','69.00',1,'','987','2023-03-22 15:57:58',2,'2023-03-22 15:47:19','2023-03-22 15:47:19'),(41,1,'1.60','45.00',1,'','321','2023-03-22 15:47:33',1,'2023-03-22 15:47:48','2023-03-22 15:47:48'),(42,1,'1.80','90.00',3,'','最新体检记录信息里面的下次体检时间会在首页展示出来','2023-12-01 15:51:12',1,'2023-03-22 15:50:58','2023-03-22 15:50:58'),(43,1,'1.60','55.00',2,'','<p>123</p>','2023-03-24 00:00:00',1,'2023-03-22 15:54:46','2023-03-22 15:54:46');

/*Table structure for table `jiankangtieshi` */

DROP TABLE IF EXISTS `jiankangtieshi`;

CREATE TABLE `jiankangtieshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangtieshi_name` varchar(200) DEFAULT NULL COMMENT '贴士标题  Search111 ',
  `jiankangtieshi_types` int(11) DEFAULT NULL COMMENT '贴士类型  Search111 ',
  `jiankangtieshi_photo` varchar(200) DEFAULT NULL COMMENT '贴士图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jiankangtieshi_content` longtext COMMENT '贴士详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康贴士';

/*Data for the table `jiankangtieshi` */

insert  into `jiankangtieshi`(`id`,`jiankangtieshi_name`,`jiankangtieshi_types`,`jiankangtieshi_photo`,`insert_time`,`jiankangtieshi_content`,`create_time`) values (1,'贴士标题1',3,'upload/jiankangtieshi1.jpg','2023-03-22 15:10:51','贴士详情1','2023-03-22 15:10:51'),(2,'贴士标题2',3,'upload/jiankangtieshi2.jpg','2023-03-22 15:10:51','贴士详情2','2023-03-22 15:10:51'),(3,'贴士标题3',2,'upload/jiankangtieshi3.jpg','2023-03-22 15:10:51','贴士详情3','2023-03-22 15:10:51'),(4,'贴士标题4',2,'upload/jiankangtieshi4.jpg','2023-03-22 15:10:51','贴士详情4','2023-03-22 15:10:51'),(5,'贴士标题5',1,'upload/jiankangtieshi5.jpg','2023-03-22 15:10:51','贴士详情5','2023-03-22 15:10:51'),(6,'贴士标题6',2,'upload/jiankangtieshi6.jpg','2023-03-22 15:10:51','贴士详情6','2023-03-22 15:10:51'),(7,'贴士标题7',1,'upload/jiankangtieshi7.jpg','2023-03-22 15:10:51','贴士详情7','2023-03-22 15:10:51'),(8,'贴士标题8',3,'upload/jiankangtieshi8.jpg','2023-03-22 15:10:51','贴士详情8','2023-03-22 15:10:51'),(9,'贴士标题9',3,'upload/jiankangtieshi9.jpg','2023-03-22 15:10:51','贴士详情9','2023-03-22 15:10:51'),(10,'贴士标题10',2,'upload/jiankangtieshi10.jpg','2023-03-22 15:10:51','贴士详情10','2023-03-22 15:10:51'),(11,'贴士标题11',3,'upload/jiankangtieshi11.jpg','2023-03-22 15:10:51','贴士详情11','2023-03-22 15:10:51'),(12,'贴士标题12',3,'upload/jiankangtieshi12.jpg','2023-03-22 15:10:51','贴士详情12','2023-03-22 15:10:51'),(13,'贴士标题13',1,'upload/jiankangtieshi13.jpg','2023-03-22 15:10:51','贴士详情13','2023-03-22 15:10:51'),(14,'贴士标题14',1,'upload/jiankangtieshi14.jpg','2023-03-22 15:10:51','贴士详情14','2023-03-22 15:10:51');

/*Table structure for table `meirijihua` */

DROP TABLE IF EXISTS `meirijihua`;

CREATE TABLE `meirijihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meirijihua_name` varchar(200) DEFAULT NULL COMMENT '计划标题  Search111 ',
  `yinshi_text` longtext COMMENT '饮食计划',
  `yundong_text` longtext COMMENT '运动计划',
  `yaopin_text` longtext COMMENT '药品计划',
  `meirijihua_content` longtext COMMENT '备注',
  `meirijihua_time` timestamp NULL DEFAULT NULL COMMENT '计划时间',
  `meirijihua_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='每日计划';

/*Data for the table `meirijihua` */

insert  into `meirijihua`(`id`,`yonghu_id`,`meirijihua_name`,`yinshi_text`,`yundong_text`,`yaopin_text`,`meirijihua_content`,`meirijihua_time`,`meirijihua_delete`,`insert_time`,`create_time`) values (1,1,'计划标题1','饮食计划1','运动计划1','药品计划1','备注1','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,'计划标题2','饮食计划2','运动计划2','药品计划2','备注2','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,1,'计划标题3','饮食计划3','运动计划3','药品计划3','备注3','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,3,'计划标题4','饮食计划4','运动计划4','药品计划4','备注4','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,1,'计划标题5','饮食计划5','运动计划5','药品计划5','备注5','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,3,'计划标题6','饮食计划6','运动计划6','药品计划6','备注6','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,2,'计划标题7','饮食计划7','运动计划7','药品计划7','备注7','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,2,'计划标题8','饮食计划8','运动计划8','药品计划8','备注8','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,3,'计划标题9','饮食计划9','运动计划9','药品计划9','备注9','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,2,'计划标题10','饮食计划10','运动计划10','药品计划10','备注10','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,3,'计划标题11','饮食计划11','运动计划11','药品计划11','备注11','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,2,'计划标题12','饮食计划12','运动计划12','药品计划12','备注12','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,1,'计划标题13','饮食计划13','运动计划13','药品计划13','备注13','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,2,'计划标题14','饮食计划14','运动计划14','药品计划14','备注14','2023-03-22 15:10:51',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(17,1,'123','123','123','123','123','2023-03-22 15:51:44',2,'2023-03-22 15:51:50','2023-03-22 15:51:50');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '食谱标题  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '食谱照片',
  `meishi_types` int(11) DEFAULT NULL COMMENT '食谱类型 Search111',
  `meishi_num` int(11) DEFAULT NULL COMMENT '所含热量',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `meishi_content` longtext COMMENT '制作教程 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康食谱';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`meishi_name`,`meishi_photo`,`meishi_types`,`meishi_num`,`zan_number`,`cai_number`,`meishi_content`,`meishi_delete`,`insert_time`,`create_time`) values (1,'食谱标题1','upload/meishi1.jpg',1,372,261,96,'制作教程1',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,'食谱标题2','upload/meishi2.jpg',3,130,470,122,'制作教程2',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,'食谱标题3','upload/meishi3.jpg',3,498,40,492,'制作教程3',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,'食谱标题4','upload/meishi4.jpg',1,360,81,476,'制作教程4',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,'食谱标题5','upload/meishi5.jpg',2,152,402,178,'制作教程5',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,'食谱标题6','upload/meishi6.jpg',2,122,98,173,'制作教程6',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,'食谱标题7','upload/meishi7.jpg',3,282,228,490,'制作教程7',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,'食谱标题8','upload/meishi8.jpg',2,359,75,200,'制作教程8',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,'食谱标题9','upload/meishi9.jpg',1,426,69,137,'制作教程9',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,'食谱标题10','upload/meishi10.jpg',2,169,320,212,'制作教程10',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,'食谱标题11','upload/meishi11.jpg',3,352,149,274,'制作教程11',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,'食谱标题12','upload/meishi12.jpg',3,277,232,419,'制作教程12',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,'食谱标题13','upload/meishi13.jpg',1,49,451,464,'制作教程13',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,'食谱标题14','upload/meishi14.jpg',3,254,478,420,'制作教程14',1,'2023-03-22 15:10:51','2023-03-22 15:10:51');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '健康食谱',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='健康食谱收藏';

/*Data for the table `meishi_collection` */

insert  into `meishi_collection`(`id`,`meishi_id`,`yonghu_id`,`meishi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,1,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,3,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,4,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,5,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,6,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,7,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,9,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,11,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,12,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,13,1,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,14,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(15,14,1,2,'2023-03-22 15:49:42','2023-03-22 15:49:42');

/*Table structure for table `meishi_liuyan` */

DROP TABLE IF EXISTS `meishi_liuyan`;

CREATE TABLE `meishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '健康食谱',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='健康食谱留言';

/*Data for the table `meishi_liuyan` */

insert  into `meishi_liuyan`(`id`,`meishi_id`,`yonghu_id`,`meishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-22 15:10:51','回复信息1','2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,3,'留言内容2','2023-03-22 15:10:51','回复信息2','2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,3,3,'留言内容3','2023-03-22 15:10:51','回复信息3','2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,4,3,'留言内容4','2023-03-22 15:10:51','回复信息4','2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,5,1,'留言内容5','2023-03-22 15:10:51','回复信息5','2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,6,1,'留言内容6','2023-03-22 15:10:51','回复信息6','2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,7,2,'留言内容7','2023-03-22 15:10:51','回复信息7','2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,8,3,'留言内容8','2023-03-22 15:10:51','回复信息8','2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,9,1,'留言内容9','2023-03-22 15:10:51','回复信息9','2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,10,1,'留言内容10','2023-03-22 15:10:51','回复信息10','2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,11,3,'留言内容11','2023-03-22 15:10:51','回复信息11','2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,12,1,'留言内容12','2023-03-22 15:10:51','回复信息12','2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,13,1,'留言内容13','2023-03-22 15:10:51','回复信息13','2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,14,2,'留言内容14','2023-03-22 15:10:51','回复信息14333333','2023-03-22 15:55:12','2023-03-22 15:10:51');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-22 15:10:51','公告详情1','2023-03-22 15:10:51'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-22 15:10:51','公告详情2','2023-03-22 15:10:51'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-22 15:10:51','公告详情3','2023-03-22 15:10:51'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-22 15:10:51','公告详情4','2023-03-22 15:10:51'),(5,'公告标题5',3,'upload/news5.jpg','2023-03-22 15:10:51','公告详情5','2023-03-22 15:10:51'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-22 15:10:51','公告详情6','2023-03-22 15:10:51'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-22 15:10:51','公告详情7','2023-03-22 15:10:51'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-22 15:10:51','公告详情8','2023-03-22 15:10:51'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-22 15:10:51','公告详情9','2023-03-22 15:10:51'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-22 15:10:51','公告详情10','2023-03-22 15:10:51'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-22 15:10:51','公告详情11','2023-03-22 15:10:51'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-22 15:10:51','公告详情12','2023-03-22 15:10:51'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-22 15:10:51','公告详情13','2023-03-22 15:10:51'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-22 15:10:51','公告详情14','2023-03-22 15:10:51');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'a1','yonghu','用户','gyjp8rhzsshkzgnza6d0jkugxp8bnsna','2023-03-22 15:17:52','2023-03-22 16:49:12'),(5,1,'admin','users','管理员','xkvbt1kcete3esq29x6e7sbnf9rzq3j3','2023-03-22 15:52:54','2023-03-22 16:56:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-22 15:10:42');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_zuoyng` varchar(200) DEFAULT NULL COMMENT '药品作用',
  `yaopin_chengfen` varchar(200) DEFAULT NULL COMMENT '药品成分',
  `yaopin_content` longtext COMMENT '药品详情 ',
  `yaopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_name`,`yaopin_photo`,`yaopin_types`,`yaopin_zuoyng`,`yaopin_chengfen`,`yaopin_content`,`yaopin_delete`,`insert_time`,`create_time`) values (1,'药品名称1','upload/yaopin1.jpg',3,'药品作用1','药品成分1','药品详情1',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,'药品名称2','upload/yaopin2.jpg',1,'药品作用2','药品成分2','药品详情2',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,'药品名称3','upload/yaopin3.jpg',3,'药品作用3','药品成分3','药品详情3',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,'药品名称4','upload/yaopin4.jpg',3,'药品作用4','药品成分4','药品详情4',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,'药品名称5','upload/yaopin5.jpg',1,'药品作用5','药品成分5','药品详情5',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,'药品名称6','upload/yaopin6.jpg',1,'药品作用6','药品成分6','药品详情6',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,'药品名称7','upload/yaopin7.jpg',3,'药品作用7','药品成分7','药品详情7',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,'药品名称8','upload/yaopin8.jpg',3,'药品作用8','药品成分8','药品详情8',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,'药品名称9','upload/yaopin9.jpg',3,'药品作用9','药品成分9','药品详情9',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,'药品名称10','upload/yaopin10.jpg',3,'药品作用10','药品成分10','药品详情10',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,'药品名称11','upload/yaopin11.jpg',1,'药品作用11','药品成分11','药品详情11',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,'药品名称12','upload/yaopin12.jpg',2,'药品作用12','药品成分12','药品详情12',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,'药品名称13','upload/yaopin13.jpg',1,'药品作用13','药品成分13','药品详情13',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,'药品名称14','upload/yaopin14.jpg',1,'药品作用14','药品成分14','药品详情14',1,'2023-03-22 15:10:51','2023-03-22 15:10:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',1,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-03-22 15:10:51'),(2,'a2','123456','用户姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-03-22 15:10:51'),(3,'a3','123456','用户姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-03-22 15:10:51');

/*Table structure for table `yundong` */

DROP TABLE IF EXISTS `yundong`;

CREATE TABLE `yundong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yundong_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `yundong_photo` varchar(200) DEFAULT NULL COMMENT '运动照片',
  `yundong_types` int(11) DEFAULT NULL COMMENT '运动类型 Search111',
  `yundong_video` varchar(200) DEFAULT NULL COMMENT '运动视频',
  `yundong_num` int(11) DEFAULT NULL COMMENT '消耗热量',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yundong_content` longtext COMMENT '运动介绍 ',
  `yundong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='运动教程';

/*Data for the table `yundong` */

insert  into `yundong`(`id`,`yundong_name`,`yundong_photo`,`yundong_types`,`yundong_video`,`yundong_num`,`zan_number`,`cai_number`,`yundong_content`,`yundong_delete`,`insert_time`,`create_time`) values (1,'标题1','upload/yundong1.jpg',2,'upload/video.mp4',132,329,161,'运动介绍1',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,'标题2','upload/yundong2.jpg',2,'upload/video.mp4',295,483,115,'运动介绍2',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,'标题3','upload/yundong3.jpg',1,'upload/video.mp4',469,66,29,'运动介绍3',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,'标题4','upload/yundong4.jpg',3,'upload/video.mp4',126,6,245,'运动介绍4',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,'标题5','upload/yundong5.jpg',2,'upload/video.mp4',434,430,190,'运动介绍5',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,'标题6','upload/yundong6.jpg',1,'upload/video.mp4',462,224,351,'运动介绍6',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,'标题7','upload/yundong7.jpg',2,'upload/video.mp4',470,205,466,'运动介绍7',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,'标题8','upload/yundong8.jpg',1,'upload/video.mp4',292,287,294,'运动介绍8',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,'标题9','upload/yundong9.jpg',3,'upload/video.mp4',246,423,431,'运动介绍9',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,'标题10','upload/yundong10.jpg',3,'upload/video.mp4',459,320,265,'运动介绍10',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,'标题11','upload/yundong11.jpg',3,'upload/video.mp4',144,15,113,'运动介绍11',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,'标题12','upload/yundong12.jpg',2,'upload/video.mp4',39,341,305,'运动介绍12',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,'标题13','upload/yundong13.jpg',1,'upload/video.mp4',447,327,333,'运动介绍13',1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,'标题14','upload/yundong14.jpg',2,'upload/video.mp4',27,15,454,'运动介绍14',1,'2023-03-22 15:10:51','2023-03-22 15:10:51');

/*Table structure for table `yundong_collection` */

DROP TABLE IF EXISTS `yundong_collection`;

CREATE TABLE `yundong_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yundong_id` int(11) DEFAULT NULL COMMENT '运动教程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yundong_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='运动教程收藏';

/*Data for the table `yundong_collection` */

insert  into `yundong_collection`(`id`,`yundong_id`,`yonghu_id`,`yundong_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,4,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,5,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,6,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,7,3,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,8,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,9,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,10,2,1,'2023-03-22 15:10:51','2023-03-22 15:10:51'),(16,14,1,1,'2023-03-22 15:49:36','2023-03-22 15:49:36');

/*Table structure for table `yundong_liuyan` */

DROP TABLE IF EXISTS `yundong_liuyan`;

CREATE TABLE `yundong_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yundong_id` int(11) DEFAULT NULL COMMENT '运动教程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yundong_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='运动教程留言';

/*Data for the table `yundong_liuyan` */

insert  into `yundong_liuyan`(`id`,`yundong_id`,`yonghu_id`,`yundong_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-22 15:10:51','回复信息1','2023-03-22 15:10:51','2023-03-22 15:10:51'),(2,2,1,'留言内容2','2023-03-22 15:10:51','回复信息2','2023-03-22 15:10:51','2023-03-22 15:10:51'),(3,3,2,'留言内容3','2023-03-22 15:10:51','回复信息3','2023-03-22 15:10:51','2023-03-22 15:10:51'),(4,4,3,'留言内容4','2023-03-22 15:10:51','回复信息4','2023-03-22 15:10:51','2023-03-22 15:10:51'),(5,5,3,'留言内容5','2023-03-22 15:10:51','回复信息5','2023-03-22 15:10:51','2023-03-22 15:10:51'),(6,6,2,'留言内容6','2023-03-22 15:10:51','回复信息6','2023-03-22 15:10:51','2023-03-22 15:10:51'),(7,7,3,'留言内容7','2023-03-22 15:10:51','回复信息7','2023-03-22 15:10:51','2023-03-22 15:10:51'),(8,8,1,'留言内容8','2023-03-22 15:10:51','回复信息8','2023-03-22 15:10:51','2023-03-22 15:10:51'),(9,9,2,'留言内容9','2023-03-22 15:10:51','回复信息9','2023-03-22 15:10:51','2023-03-22 15:10:51'),(10,10,2,'留言内容10','2023-03-22 15:10:51','回复信息10','2023-03-22 15:10:51','2023-03-22 15:10:51'),(11,11,3,'留言内容11','2023-03-22 15:10:51','回复信息11','2023-03-22 15:10:51','2023-03-22 15:10:51'),(12,12,2,'留言内容12','2023-03-22 15:10:51','回复信息12','2023-03-22 15:10:51','2023-03-22 15:10:51'),(13,13,2,'留言内容13','2023-03-22 15:10:51','回复信息13','2023-03-22 15:10:51','2023-03-22 15:10:51'),(14,14,3,'留言内容14','2023-03-22 15:10:51','回复信息14','2023-03-22 15:10:51','2023-03-22 15:10:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
