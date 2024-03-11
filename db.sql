-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: php240c1
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `php240c1`
--

/*!40000 DROP DATABASE IF EXISTS `php240c1`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `php240c1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `php240c1`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1648894297.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiazhengfuwu`
--

DROP TABLE IF EXISTS `discussjiazhengfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='家政服务评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiazhengfuwu`
--

LOCK TABLES `discussjiazhengfuwu` WRITE;
/*!40000 ALTER TABLE `discussjiazhengfuwu` DISABLE KEYS */;
INSERT INTO `discussjiazhengfuwu` VALUES (141,'2022-04-02 09:13:00',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-04-02 09:13:00',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-04-02 09:13:00',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-04-02 09:13:00',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-04-02 09:13:00',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-04-02 09:13:00',6,6,'用户名6','评论内容6','回复内容6'),(147,'2022-04-02 10:06:06',37,1648893782,'11','阿斯蒂芬阿斯蒂芬阿斯达','');
/*!40000 ALTER TABLE `discussjiazhengfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuyuyue`
--

DROP TABLE IF EXISTS `fuwuyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwuneirong` varchar(200) DEFAULT NULL COMMENT '服务内容',
  `fuwushouze` varchar(200) DEFAULT NULL COMMENT '服务守则',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `xiaoshijiage` int(11) DEFAULT NULL COMMENT '小时价格',
  `fuwushizhang` int(11) NOT NULL COMMENT '服务时长',
  `zongfeiyong` int(11) DEFAULT NULL COMMENT '总费用',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `kehushouji` varchar(200) DEFAULT NULL COMMENT '客户手机',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='服务预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuyuyue`
--

LOCK TABLES `fuwuyuyue` WRITE;
/*!40000 ALTER TABLE `fuwuyuyue` DISABLE KEYS */;
INSERT INTO `fuwuyuyue` VALUES (41,'2022-04-02 09:13:00','服务名称1','服务内容1','服务守则1','2022-04-02 17:13:00',1,1,1,'13823888881','详情1','upload/fuwuyuyue_tupian1.jpg','员工工号1','客户账号1','客户姓名1','客户手机1','2022-04-02 17:13:00','未支付',1,1,1),(42,'2022-04-02 09:13:00','服务名称2','服务内容2','服务守则2','2022-04-02 17:13:00',2,2,2,'13823888882','详情2','upload/fuwuyuyue_tupian2.jpg','员工工号2','客户账号2','客户姓名2','客户手机2','2022-04-02 17:13:00','未支付',2,2,2),(43,'2022-04-02 09:13:00','服务名称3','服务内容3','服务守则3','2022-04-02 17:13:00',3,3,3,'13823888883','详情3','upload/fuwuyuyue_tupian3.jpg','员工工号3','客户账号3','客户姓名3','客户手机3','2022-04-02 17:13:00','未支付',3,3,3),(44,'2022-04-02 09:13:00','服务名称4','服务内容4','服务守则4','2022-04-02 17:13:00',4,4,4,'13823888884','详情4','upload/fuwuyuyue_tupian4.jpg','员工工号4','客户账号4','客户姓名4','客户手机4','2022-04-02 17:13:00','未支付',4,4,4),(45,'2022-04-02 09:13:00','服务名称5','服务内容5','服务守则5','2022-04-02 17:13:00',5,5,5,'13823888885','详情5','upload/fuwuyuyue_tupian5.jpg','员工工号5','客户账号5','客户姓名5','客户手机5','2022-04-02 17:13:00','未支付',5,5,5),(46,'2022-04-02 09:13:00','服务名称6','服务内容6','服务守则6','2022-04-02 17:13:00',6,6,6,'13823888886','详情6','upload/fuwuyuyue_tupian6.jpg','员工工号6','客户账号6','客户姓名6','客户手机6','2022-04-02 17:13:00','未支付',6,6,6),(47,'2022-04-02 10:06:00','阿斯蒂芬阿斯达','阿斯蒂芬阿斯达','阿斯蒂芬撒','2022-04-02 18:00:22',22,2,44,'13933333333','阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达','upload/1648893875.jpg','22','11','张三','13922222222','2022-04-02 18:06:21','已支付',1,0,1648893782);
/*!40000 ALTER TABLE `fuwuyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongsijieshao`
--

DROP TABLE IF EXISTS `gongsijieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongsijieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhuceshijian` date DEFAULT NULL COMMENT '注册时间',
  `zhucejine` int(11) DEFAULT NULL COMMENT '注册金额',
  `xiangqing` longtext COMMENT '详情',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='公司介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongsijieshao`
--

LOCK TABLES `gongsijieshao` WRITE;
/*!40000 ALTER TABLE `gongsijieshao` DISABLE KEYS */;
INSERT INTO `gongsijieshao` VALUES (81,'2022-04-02 09:13:00','公司名称1','地址1','2022-04-02',1,'详情1','13823888881','upload/gongsijieshao_fengmian1.jpg'),(82,'2022-04-02 09:13:00','公司名称2','地址2','2022-04-02',2,'详情2','13823888882','upload/gongsijieshao_fengmian2.jpg'),(83,'2022-04-02 09:13:00','公司名称3','地址3','2022-04-02',3,'详情3','13823888883','upload/gongsijieshao_fengmian3.jpg'),(84,'2022-04-02 09:13:00','公司名称4','地址4','2022-04-02',4,'详情4','13823888884','upload/gongsijieshao_fengmian4.jpg'),(85,'2022-04-02 09:13:00','公司名称5','地址5','2022-04-02',5,'详情5','13823888885','upload/gongsijieshao_fengmian5.jpg'),(86,'2022-04-02 09:13:00','公司名称6','地址6','2022-04-02',6,'详情6','13823888886','upload/gongsijieshao_fengmian6.jpg'),(87,'2022-04-02 10:10:26','阿斯蒂芬sad否','阿斯蒂芬阿斯蒂芬sad','2022-03-30',222,'<p>阿斯蒂芬撒地方sad飞洒地方阿斯达sad飞洒地方sad</p><p><img src=\"http://localhost:8080/php240c1/upload/1648894225.jpg\"></p>','13935555555','upload/1648894218.jpg');
/*!40000 ALTER TABLE `gongsijieshao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhengfuwu`
--

DROP TABLE IF EXISTS `jiazhengfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwuneirong` varchar(200) DEFAULT NULL COMMENT '服务内容',
  `fuwushouze` varchar(200) DEFAULT NULL COMMENT '服务守则',
  `xiaoshijiage` int(11) DEFAULT NULL COMMENT '小时价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='家政服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhengfuwu`
--

LOCK TABLES `jiazhengfuwu` WRITE;
/*!40000 ALTER TABLE `jiazhengfuwu` DISABLE KEYS */;
INSERT INTO `jiazhengfuwu` VALUES (31,'2022-04-02 09:13:00','服务名称1','服务内容1','服务守则1',1,'13823888881','详情1','upload/jiazhengfuwu_tupian1.jpg','员工工号1',1,1,'2022-04-02 17:13:00'),(32,'2022-04-02 09:13:00','服务名称2','服务内容2','服务守则2',2,'13823888882','详情2','upload/jiazhengfuwu_tupian2.jpg','员工工号2',2,2,'2022-04-02 17:13:00'),(33,'2022-04-02 09:13:00','服务名称3','服务内容3','服务守则3',3,'13823888883','详情3','upload/jiazhengfuwu_tupian3.jpg','员工工号3',3,3,'2022-04-02 17:13:00'),(34,'2022-04-02 09:13:00','服务名称4','服务内容4','服务守则4',4,'13823888884','详情4','upload/jiazhengfuwu_tupian4.jpg','员工工号4',4,4,'2022-04-02 10:04:01'),(35,'2022-04-02 09:13:00','服务名称5','服务内容5','服务守则5',5,'13823888885','详情5','upload/jiazhengfuwu_tupian5.jpg','员工工号5',5,5,'2022-04-02 17:13:00'),(36,'2022-04-02 09:13:00','服务名称6','服务内容6','服务守则6',6,'13823888886','详情6','upload/jiazhengfuwu_tupian6.jpg','员工工号6',6,6,'2022-04-02 17:13:00'),(37,'2022-04-02 10:04:41','阿斯蒂芬阿斯达','阿斯蒂芬阿斯达','阿斯蒂芬撒',22,'13933333333','阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达阿斯蒂芬sad发斯蒂芬阿斯达','upload/1648893875.jpg','22',1,0,'2022-04-02 10:12:41');
/*!40000 ALTER TABLE `jiazhengfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiedanxinxi`
--

DROP TABLE IF EXISTS `jiedanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiedanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `fuwujiage` varchar(200) DEFAULT NULL COMMENT '服务价格',
  `xuqiuneirong` longtext NOT NULL COMMENT '需求内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `kehushouji` varchar(200) DEFAULT NULL COMMENT '客户手机',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='接单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiedanxinxi`
--

LOCK TABLES `jiedanxinxi` WRITE;
/*!40000 ALTER TABLE `jiedanxinxi` DISABLE KEYS */;
INSERT INTO `jiedanxinxi` VALUES (71,'2022-04-02 09:13:00','标题1','upload/jiedanxinxi_tupian1.jpg','服务价格1','需求内容1','备注1','发布时间1','客户账号1','客户姓名1','13823888881','地址1','员工工号1','员工姓名1','2022-04-02 17:13:00','未支付',1),(72,'2022-04-02 09:13:00','标题2','upload/jiedanxinxi_tupian2.jpg','服务价格2','需求内容2','备注2','发布时间2','客户账号2','客户姓名2','13823888882','地址2','员工工号2','员工姓名2','2022-04-02 17:13:00','未支付',2),(73,'2022-04-02 09:13:00','标题3','upload/jiedanxinxi_tupian3.jpg','服务价格3','需求内容3','备注3','发布时间3','客户账号3','客户姓名3','13823888883','地址3','员工工号3','员工姓名3','2022-04-02 17:13:00','未支付',3),(74,'2022-04-02 09:13:00','标题4','upload/jiedanxinxi_tupian4.jpg','服务价格4','需求内容4','备注4','发布时间4','客户账号4','客户姓名4','13823888884','地址4','员工工号4','员工姓名4','2022-04-02 17:13:00','未支付',4),(75,'2022-04-02 09:13:00','标题5','upload/jiedanxinxi_tupian5.jpg','服务价格5','需求内容5','备注5','发布时间5','客户账号5','客户姓名5','13823888885','地址5','员工工号5','员工姓名5','2022-04-02 17:13:00','未支付',5),(76,'2022-04-02 09:13:00','标题6','upload/jiedanxinxi_tupian6.jpg','服务价格6','需求内容6','备注6','发布时间6','客户账号6','客户姓名6','13823888886','地址6','员工工号6','员工姓名6','2022-04-02 17:13:00','未支付',6),(77,'2022-04-02 10:08:10','阿斯蒂芬阿斯达','upload/1648893988.jpg','222','阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时','阿斯蒂芬阿斯达阿斯达','2022-04-02 18:06:55','11','张三','13922222222','阿斯蒂芬阿斯蒂芬阿斯蒂芬sad飞洒','22','李四','2022-04-02 18:08:37','已支付',1648893816);
/*!40000 ALTER TABLE `jiedanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuzhanghao` varchar(200) NOT NULL COMMENT '客户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `kehushouji` varchar(200) DEFAULT NULL COMMENT '客户手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehuzhanghao` (`kehuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648893783 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (11,'2022-04-02 09:13:00','客户账号1','123456','客户姓名1','男','13823888881','upload/kehu_touxiang1.jpg'),(12,'2022-04-02 09:13:00','客户账号2','123456','客户姓名2','男','13823888882','upload/kehu_touxiang2.jpg'),(13,'2022-04-02 09:13:00','客户账号3','123456','客户姓名3','男','13823888883','upload/kehu_touxiang3.jpg'),(14,'2022-04-02 09:13:00','客户账号4','123456','客户姓名4','男','13823888884','upload/kehu_touxiang4.jpg'),(15,'2022-04-02 09:13:00','客户账号5','123456','客户姓名5','男','13823888885','upload/kehu_touxiang5.jpg'),(16,'2022-04-02 09:13:00','客户账号6','123456','客户姓名6','男','13823888886','upload/kehu_touxiang6.jpg'),(1648893782,'2022-04-02 10:03:02','11','11','张三','女','13922222222','upload/1648894038.jpg');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehuxuqiu`
--

DROP TABLE IF EXISTS `kehuxuqiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehuxuqiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `fuwujiage` varchar(200) DEFAULT NULL COMMENT '服务价格',
  `xuqiuneirong` longtext NOT NULL COMMENT '需求内容',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `kehushouji` varchar(200) DEFAULT NULL COMMENT '客户手机',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `zhuangtai` varchar(200) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='客户需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehuxuqiu`
--

LOCK TABLES `kehuxuqiu` WRITE;
/*!40000 ALTER TABLE `kehuxuqiu` DISABLE KEYS */;
INSERT INTO `kehuxuqiu` VALUES (61,'2022-04-02 09:13:00','标题1','upload/kehuxuqiu_tupian1.jpg','服务价格1','需求内容1','备注1','2022-04-02 17:13:00','客户账号1','客户姓名1','13823888881','地址1','已被接单'),(62,'2022-04-02 09:13:00','标题2','upload/kehuxuqiu_tupian2.jpg','服务价格2','需求内容2','备注2','2022-04-02 17:13:00','客户账号2','客户姓名2','13823888882','地址2','已被接单'),(63,'2022-04-02 09:13:00','标题3','upload/kehuxuqiu_tupian3.jpg','服务价格3','需求内容3','备注3','2022-04-02 17:13:00','客户账号3','客户姓名3','13823888883','地址3','已被接单'),(64,'2022-04-02 09:13:00','标题4','upload/kehuxuqiu_tupian4.jpg','服务价格4','需求内容4','备注4','2022-04-02 17:13:00','客户账号4','客户姓名4','13823888884','地址4','已被接单'),(65,'2022-04-02 09:13:00','标题5','upload/kehuxuqiu_tupian5.jpg','服务价格5','需求内容5','备注5','2022-04-02 17:13:00','客户账号5','客户姓名5','13823888885','地址5','已被接单'),(66,'2022-04-02 09:13:00','标题6','upload/kehuxuqiu_tupian6.jpg','服务价格6','需求内容6','备注6','2022-04-02 17:13:00','客户账号6','客户姓名6','13823888886','地址6','已被接单'),(67,'2022-04-02 10:06:39','阿斯蒂芬阿斯达','upload/1648893988.jpg','222','阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时阿斯蒂芬阿斯蒂芬按时','阿斯蒂芬阿斯达阿斯达','2022-04-02 18:06:55','11','张三','13922222222','阿斯蒂芬阿斯蒂芬阿斯蒂芬sad飞洒','已被接单');
/*!40000 ALTER TABLE `kehuxuqiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='用户留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2022-04-02 09:13:00',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(132,'2022-04-02 09:13:00',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(133,'2022-04-02 09:13:00',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(134,'2022-04-02 09:13:00',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(135,'2022-04-02 09:13:00',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(136,'2022-04-02 09:13:00',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(137,'2022-04-02 10:05:22',1648893816,'22','阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒阿斯蒂芬sad分撒旦飞洒','upload/1648893922.jpg','阿斯蒂芬阿斯蒂芬撒地方sad','upload/1648894283.jpg'),(138,'2022-04-02 10:07:31',1648893782,'11','阿斯蒂芬阿斯达','upload/1648894051.jpg','',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2022-04-02 09:13:00','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(122,'2022-04-02 09:13:00','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(123,'2022-04-02 09:13:00','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(124,'2022-04-02 09:13:00','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(125,'2022-04-02 09:13:00','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(126,'2022-04-02 09:13:00','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(127,'2022-04-02 10:12:03','阿斯蒂芬撒地方','阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬','upload/1648894312.jpg','<p>阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬</p><p><img src=\"http://localhost:8080/php240c1/upload/1648894322.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenghuozhishi`
--

DROP TABLE IF EXISTS `shenghuozhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenghuozhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='生活知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenghuozhishi`
--

LOCK TABLES `shenghuozhishi` WRITE;
/*!40000 ALTER TABLE `shenghuozhishi` DISABLE KEYS */;
INSERT INTO `shenghuozhishi` VALUES (91,'2022-04-02 09:13:00','标题1','内容1','2022-04-02','发布人1','upload/shenghuozhishi_tupian1.jpg'),(92,'2022-04-02 09:13:00','标题2','内容2','2022-04-02','发布人2','upload/shenghuozhishi_tupian2.jpg'),(93,'2022-04-02 09:13:00','标题3','内容3','2022-04-02','发布人3','upload/shenghuozhishi_tupian3.jpg'),(94,'2022-04-02 09:13:00','标题4','内容4','2022-04-02','发布人4','upload/shenghuozhishi_tupian4.jpg'),(95,'2022-04-02 09:13:00','标题5','内容5','2022-04-02','发布人5','upload/shenghuozhishi_tupian5.jpg'),(96,'2022-04-02 09:13:00','标题6','内容6','2022-04-02','发布人6','upload/shenghuozhishi_tupian6.jpg'),(97,'2022-04-02 10:10:49','阿斯蒂芬撒地方','<p>阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方阿斯蒂芬撒地方撒阿斯蒂芬撒地方撒地方</p><p><img src=\"http://localhost:8080/php240c1/upload/1648894248.jpg\"></p>','2022-04-12','按时的','upload/1648894241.jpg');
/*!40000 ALTER TABLE `shenghuozhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2022-04-02 10:05:47',1648893782,37,'jiazhengfuwu','阿斯蒂芬阿斯达','upload/1648893875.jpg','1',NULL),(2,'2022-04-02 10:05:48',1648893782,37,'jiazhengfuwu','阿斯蒂芬阿斯达','upload/1648893875.jpg','21',NULL),(3,'2022-04-02 10:07:06',1648893782,101,'youqinglianjie','链接名称1','upload/youqinglianjie_tupian1.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-02 09:13:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youqinglianjie`
--

DROP TABLE IF EXISTS `youqinglianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youqinglianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lianjiemingcheng` varchar(200) DEFAULT NULL COMMENT '链接名称',
  `lianjiewangzhan` varchar(200) DEFAULT NULL COMMENT '链接网站',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youqinglianjie`
--

LOCK TABLES `youqinglianjie` WRITE;
/*!40000 ALTER TABLE `youqinglianjie` DISABLE KEYS */;
INSERT INTO `youqinglianjie` VALUES (101,'2022-04-02 09:13:00','链接名称1','链接网站1','upload/youqinglianjie_tupian1.jpg','2022-04-02 10:07:03',2),(102,'2022-04-02 09:13:00','链接名称2','链接网站2','upload/youqinglianjie_tupian2.jpg','2022-04-02 17:13:00',2),(103,'2022-04-02 09:13:00','链接名称3','链接网站3','upload/youqinglianjie_tupian3.jpg','2022-04-02 17:13:00',3),(104,'2022-04-02 09:13:00','链接名称4','链接网站4','upload/youqinglianjie_tupian4.jpg','2022-04-02 17:13:00',4),(105,'2022-04-02 09:13:00','链接名称5','链接网站5','upload/youqinglianjie_tupian5.jpg','2022-04-02 17:13:00',5),(106,'2022-04-02 09:13:00','链接名称6','链接网站6','upload/youqinglianjie_tupian6.jpg','2022-04-02 17:13:00',6),(107,'2022-04-02 10:11:12','阿斯蒂芬阿斯达撒','https://www.baidu.com/?tn=88093251_101_hao_pg','upload/1648894261.jpg','2022-04-02 10:13:16',2);
/*!40000 ALTER TABLE `youqinglianjie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648893817 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2022-04-02 09:13:00','员工工号1','123456','员工姓名1','男','部门1','职位1','2022-04-02','13823888881','440300199101010001','upload/yuangong_zhaopian1.jpg'),(22,'2022-04-02 09:13:00','员工工号2','123456','员工姓名2','男','部门2','职位2','2022-04-02','13823888882','440300199202020002','upload/yuangong_zhaopian2.jpg'),(23,'2022-04-02 09:13:00','员工工号3','123456','员工姓名3','男','部门3','职位3','2022-04-02','13823888883','440300199303030003','upload/yuangong_zhaopian3.jpg'),(24,'2022-04-02 09:13:00','员工工号4','123456','员工姓名4','男','部门4','职位4','2022-04-02','13823888884','440300199404040004','upload/yuangong_zhaopian4.jpg'),(25,'2022-04-02 09:13:00','员工工号5','123456','员工姓名5','男','部门5','职位5','2022-04-02','13823888885','440300199505050005','upload/yuangong_zhaopian5.jpg'),(26,'2022-04-02 09:13:00','员工工号6','123456','员工姓名6','男','部门6','职位6','2022-04-02','13823888886','440300199606060006','upload/yuangong_zhaopian6.jpg'),(1648893816,'2022-04-02 10:03:36','22','22','李四','女','服务部','职员','2022-04-12','13933333333','412345678912345678','upload/1648893855.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongfengcai`
--

DROP TABLE IF EXISTS `yuangongfengcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongfengcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuanzhang` varchar(200) DEFAULT NULL COMMENT '专长',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='员工风采';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongfengcai`
--

LOCK TABLES `yuangongfengcai` WRITE;
/*!40000 ALTER TABLE `yuangongfengcai` DISABLE KEYS */;
INSERT INTO `yuangongfengcai` VALUES (51,'2022-04-02 09:13:00','姓名1','upload/yuangongfengcai_tupian1.jpg','专长1','2022-04-02','个人简介1'),(52,'2022-04-02 09:13:00','姓名2','upload/yuangongfengcai_tupian2.jpg','专长2','2022-04-02','个人简介2'),(53,'2022-04-02 09:13:00','姓名3','upload/yuangongfengcai_tupian3.jpg','专长3','2022-04-02','个人简介3'),(54,'2022-04-02 09:13:00','姓名4','upload/yuangongfengcai_tupian4.jpg','专长4','2022-04-02','个人简介4'),(55,'2022-04-02 09:13:00','姓名5','upload/yuangongfengcai_tupian5.jpg','专长5','2022-04-02','个人简介5'),(56,'2022-04-02 09:13:00','姓名6','upload/yuangongfengcai_tupian6.jpg','专长6','2022-04-02','个人简介6'),(57,'2022-04-02 10:09:41','撒地方','upload/1648894169.jpg','阿斯蒂芬sad发斯蒂芬','2022-04-13','<p>阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大阿斯蒂芬阿斯蒂芬撒地方十大</p><p><img src=\"http://localhost:8080/php240c1/upload/1648894180.jpg\"></p>');
/*!40000 ALTER TABLE `yuangongfengcai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 15:43:51
