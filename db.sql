/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-07-05 12:11:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addfriendnotice`
-- ----------------------------
DROP TABLE IF EXISTS `addfriendnotice`;
CREATE TABLE `addfriendnotice` (
  `deletedSign` bit(1) DEFAULT NULL,
  `receiveId` int(11) DEFAULT NULL,
  `sendId` int(11) DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendName` varchar(10) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addfriendnotice
-- ----------------------------
INSERT INTO `addfriendnotice` VALUES ('', '1410100101', '1410100102', 'aaaaa', '73', '李四', '2017-06-13 10:10:05');
INSERT INTO `addfriendnotice` VALUES ('', '1410100102', '1410100102', 'ewqe', '74', '李四', '2017-06-13 10:10:48');
INSERT INTO `addfriendnotice` VALUES ('', '1050002', '1010001', '11', '75', '张三', '2017-06-14 10:25:05');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(8) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('10001', '管理员A', '123456', null, null);
INSERT INTO `admin` VALUES ('10002', '管理员B', '123456', null, null);
INSERT INTO `admin` VALUES ('10003', '管理员C', '123456', null, null);
INSERT INTO `admin` VALUES ('10004', '管理员D', '123456', null, null);
INSERT INTO `admin` VALUES ('10005', '管理员F', '123456', null, null);
INSERT INTO `admin` VALUES ('10006', '韦神', '123456', '15607844636', '244157602@qq.com');

-- ----------------------------
-- Table structure for `chatmessage`
-- ----------------------------
DROP TABLE IF EXISTS `chatmessage`;
CREATE TABLE `chatmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiveId` int(11) DEFAULT NULL,
  `sendName` varchar(255) DEFAULT NULL,
  `sendId` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `readedSign` bit(1) DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatmessage
-- ----------------------------
INSERT INTO `chatmessage` VALUES ('1', '1410100103', '张三', '1410100101', 'dsadasdas', '', '22:47:07');
INSERT INTO `chatmessage` VALUES ('15', '1410100101', '李四', '1410100102', 'dsadsadsad', '', null);
INSERT INTO `chatmessage` VALUES ('42', '1410100102', '王五', '1410100103', '大厦大厦的', '', null);
INSERT INTO `chatmessage` VALUES ('46', '1410100101', '李四', '1410100102', 'ddd', '', null);
INSERT INTO `chatmessage` VALUES ('47', '1410100102', '李四', '1410100102', 'dsa', '', null);
INSERT INTO `chatmessage` VALUES ('51', '1410100101', '李四', '1410100102', '11', '', null);
INSERT INTO `chatmessage` VALUES ('52', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('53', '1410100102', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('54', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('55', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('56', '1410100102', '张三', '1410100101', '123', '', null);
INSERT INTO `chatmessage` VALUES ('57', '1410100102', '张三', '1410100101', '123', '', null);
INSERT INTO `chatmessage` VALUES ('58', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('59', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('60', '1410100101', '李四', '1410100102', '123', '', null);
INSERT INTO `chatmessage` VALUES ('61', '1410100101', '李四', '1410100102', '2132131', '', null);
INSERT INTO `chatmessage` VALUES ('62', '1410100102', '张三', '1410100101', '123123123', '', null);
INSERT INTO `chatmessage` VALUES ('63', '1410100101', '李四', '1410100102', '2312', '', null);
INSERT INTO `chatmessage` VALUES ('64', '1410100102', '李四', '1410100102', '1', '', null);
INSERT INTO `chatmessage` VALUES ('65', '1410100102', '李四', '1410100102', '2', '', null);
INSERT INTO `chatmessage` VALUES ('66', '1410100102', '李四', '1410100102', '3', '', null);
INSERT INTO `chatmessage` VALUES ('67', '1410100102', '李四', '1410100102', '4', '', null);
INSERT INTO `chatmessage` VALUES ('68', '1410100102', '李四', '1410100102', '5', '', null);
INSERT INTO `chatmessage` VALUES ('69', '1410100102', '李四', '1410100102', 'r', '', null);
INSERT INTO `chatmessage` VALUES ('70', '1410100102', '李四', '1410100102', '1', '', null);
INSERT INTO `chatmessage` VALUES ('71', '1410100102', '李四', '1410100102', '2', '', null);
INSERT INTO `chatmessage` VALUES ('72', '1410100102', '李四', '1410100102', '3', '', null);
INSERT INTO `chatmessage` VALUES ('73', '1410100102', '李四', '1410100102', '4', '', null);
INSERT INTO `chatmessage` VALUES ('74', '1410100102', '李四', '1410100102', '5', '', null);
INSERT INTO `chatmessage` VALUES ('75', '1410100102', '李四', '1410100102', '6', '', null);
INSERT INTO `chatmessage` VALUES ('76', '1410100102', '李四', '1410100102', '13', '', null);

-- ----------------------------
-- Table structure for `claname`
-- ----------------------------
DROP TABLE IF EXISTS `claname`;
CREATE TABLE `claname` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `sid` (`sid`),
  CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `specialty` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claname
-- ----------------------------
INSERT INTO `claname` VALUES ('14101001', '1010', '14软件工程一班');
INSERT INTO `claname` VALUES ('14101002', '1010', '14软件工程二班');
INSERT INTO `claname` VALUES ('14101101', '1011', '14网络工程一班');
INSERT INTO `claname` VALUES ('14111301', '1113', '14商务英语一班');
INSERT INTO `claname` VALUES ('15101001', '1010', '15软件工程一班');
INSERT INTO `claname` VALUES ('15101101', '1011', '15网络工程一班');
INSERT INTO `claname` VALUES ('15111401', '1114', '15英语教育一班');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `who` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `deleteSign` bit(1) NOT NULL,
  `dynamicId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dynamicId` (`dynamicId`),
  CONSTRAINT `dynamicId` FOREIGN KEY (`dynamicId`) REFERENCES `dynamic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `did` int(11) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `pId` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('10', '数学与计算机学院', '0000000000');
INSERT INTO `department` VALUES ('11', '外国语学院', '0000000000');

-- ----------------------------
-- Table structure for `dynamic`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `deleteSign` bit(1) NOT NULL,
  `who` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `myId` int(11) NOT NULL,
  `friendId` int(11) NOT NULL,
  `friendName` varchar(8) DEFAULT NULL,
  `friendPname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`myId`,`friendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1410100101', '1410100102', '李四', '外国语');
INSERT INTO `friend` VALUES ('1410100101', '1410100103', '张四', '外国语');
INSERT INTO `friend` VALUES ('1410100102', '1410100101', '张三', '计算机');
INSERT INTO `friend` VALUES ('1410100102', '1410100102', '李四', '14软件工程一班');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `deleteSign` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '0', '上课', '今天下午补课', '2017-06-04 10:04:11', null, '');
INSERT INTO `notice` VALUES ('2', '2', '下课', '额外全球恶趣味', '2017-06-04 10:09:21', null, '');
INSERT INTO `notice` VALUES ('3', '10001', 'dsad', 'dasdasda', '2017-06-05 00:01:04', null, '');
INSERT INTO `notice` VALUES ('4', '10001', 'dsad', 'dsa', '2017-06-05 00:04:50', null, '');
INSERT INTO `notice` VALUES ('5', '10001', 'das', 'dsadsadas', '2017-06-05 12:28:02', null, '');
INSERT INTO `notice` VALUES ('6', '10001', 'dsa', 'dsa', '2017-06-05 12:29:46', null, '');
INSERT INTO `notice` VALUES ('7', '10001', 'fdsf', 'fdsfds', '2017-06-05 12:31:10', null, '');
INSERT INTO `notice` VALUES ('8', '10001', 'dsa', 'das', '2017-06-05 12:33:31', null, '');
INSERT INTO `notice` VALUES ('9', '10001', 'dsa', 'dsad', '2017-06-05 12:35:06', null, '');
INSERT INTO `notice` VALUES ('10', '10001', 'dsa', 'dsadasd', '2017-06-05 12:38:14', null, '');
INSERT INTO `notice` VALUES ('11', '10001', 'dsa', 'das', '2017-06-05 12:41:06', null, '');
INSERT INTO `notice` VALUES ('12', '10001', 'da', 'dsadas', '2017-06-05 12:47:15', null, '');
INSERT INTO `notice` VALUES ('13', '10001', 'das', 'dsadasdsadas', '2017-06-05 12:49:02', null, '');
INSERT INTO `notice` VALUES ('14', '10001', 'asd', 'dasdasdasda', '2017-06-05 13:00:17', null, '');
INSERT INTO `notice` VALUES ('15', '10001', 'rwe', 'rewrwer', '2017-06-05 13:05:26', null, '');
INSERT INTO `notice` VALUES ('16', '10001', 'dsa', 'dsadsa', '2017-06-05 15:22:17', null, '');
INSERT INTO `notice` VALUES ('17', '10001', 'dsa', 'dsadas', '2017-06-05 15:23:03', null, '');
INSERT INTO `notice` VALUES ('18', '10001', 'dsa', 'dsadsa', '2017-06-05 15:27:53', null, '');
INSERT INTO `notice` VALUES ('19', '10001', 'dsad', 'dsadsa', '2017-06-05 15:30:22', null, '');
INSERT INTO `notice` VALUES ('20', '10001', 'dsa', 'asdas', '2017-06-05 15:31:35', null, '');
INSERT INTO `notice` VALUES ('21', '10001', 'das', 'dsadsad', '2017-06-05 15:32:14', null, '');
INSERT INTO `notice` VALUES ('22', '10001', 'dsa', 'dsadsadas', '2017-06-05 15:33:14', null, '');
INSERT INTO `notice` VALUES ('23', '10001', 'dsa', 'dsadsadas', '2017-06-05 15:34:13', null, '');
INSERT INTO `notice` VALUES ('24', '10001', 'ad', 'asdsadsa', '2017-06-05 15:36:05', null, '');
INSERT INTO `notice` VALUES ('25', '10001', 'dsad', 'dsadasdas', '2017-06-05 15:37:04', null, '');
INSERT INTO `notice` VALUES ('26', '10001', 'asd', 'dsadsadsa', '2017-06-05 15:38:34', null, '');
INSERT INTO `notice` VALUES ('27', '10001', '英语补课', '英语明天补课各位加油', '2017-06-05 15:40:17', null, '');
INSERT INTO `notice` VALUES ('28', '10001', 'dsa', 'dsadsa', '2017-06-05 16:08:23', null, '');
INSERT INTO `notice` VALUES ('29', '10001', 'dsa', 'dsadsada', '2017-06-05 16:09:22', null, '');
INSERT INTO `notice` VALUES ('30', '10001', 'dsad', 'dsadasdas', '2017-06-05 16:10:35', null, '');
INSERT INTO `notice` VALUES ('31', '10001', 'dsa', 'dsadasdsa', '2017-06-05 16:11:50', null, '');
INSERT INTO `notice` VALUES ('32', '10001', 'dsa', 'dsadasdas', '2017-06-05 16:48:46', null, '');
INSERT INTO `notice` VALUES ('33', '1410100102', 'ddd', 'asdasd', '2017-06-05 17:19:28', null, '');
INSERT INTO `notice` VALUES ('34', '1410100102', 'dsadsa', 'dsadsadas', '2017-06-05 17:23:50', null, '');
INSERT INTO `notice` VALUES ('35', '1410100102', '请问', '额外企鹅去', '2017-06-05 17:26:05', null, '');
INSERT INTO `notice` VALUES ('36', '1410100102', '大厦大厦倒萨', '大厦大厦多杀多阿萨德', '2017-06-05 17:26:35', null, '');
INSERT INTO `notice` VALUES ('37', '1410100102', 'dadsad', 'dsadsadsa', '2017-06-05 17:28:25', null, '');
INSERT INTO `notice` VALUES ('38', '1410100102', 'das', 'dsadasd', '2017-06-05 20:16:24', '李沁', '');
INSERT INTO `notice` VALUES ('39', '1410100101', '明天不上课', '明天不上课', '2017-06-05 20:19:42', '张三', '');
INSERT INTO `notice` VALUES ('40', '1410100102', 'rrr', 'fff', '2017-06-08 18:38:45', '李沁', '');
INSERT INTO `notice` VALUES ('41', '1410100102', '明天加班', '明天老板送钱了', '2017-06-09 13:16:12', '李沁', '');
INSERT INTO `notice` VALUES ('42', '1410100102', '公司倒闭了', '明天开始放假', '2017-06-09 13:17:35', '李沁', '');
INSERT INTO `notice` VALUES ('43', '10001', 'qweq', 'ewqeqw\r\newqeqw', '2017-06-09 22:31:15', '管理员A', '');
INSERT INTO `notice` VALUES ('44', '1410100101', '', '', '2017-06-11 15:54:29', '张三', '');
INSERT INTO `notice` VALUES ('45', '1410100101', '今天睡觉', '明天睡觉', '2017-06-11 15:54:49', '张三', '');
INSERT INTO `notice` VALUES ('46', '1410100101', '今天比较虚', '下午开会延迟一天', '2017-06-11 15:57:40', '张三', '');
INSERT INTO `notice` VALUES ('47', '1410100101', '111', '1111', '2017-06-14 00:47:00', '张三', '');
INSERT INTO `notice` VALUES ('48', '1410100101', '111', '1111', '2017-06-14 00:47:25', '张三', '');
INSERT INTO `notice` VALUES ('49', '10001', '天天', '胡萝卜v', '2017-06-14 09:28:51', '管理员A', '');
INSERT INTO `notice` VALUES ('50', '10001', '尴尬', '', '2017-06-14 09:30:42', '管理员A', '');

-- ----------------------------
-- Table structure for `office`
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office` (
  `did` int(11) NOT NULL,
  `rname` varchar(20) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `q` (`did`),
  CONSTRAINT `q` FOREIGN KEY (`did`) REFERENCES `department` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES ('10', '软件教研室', '1050');
INSERT INTO `office` VALUES ('10', '网络', '1051');
INSERT INTO `office` VALUES ('10', 'aa', '1052');

-- ----------------------------
-- Table structure for `receivenotice`
-- ----------------------------
DROP TABLE IF EXISTS `receivenotice`;
CREATE TABLE `receivenotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeId` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `readSign` bit(1) NOT NULL,
  `deleteSign` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `da` (`noticeId`),
  CONSTRAINT `da` FOREIGN KEY (`noticeId`) REFERENCES `notice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receivenotice
-- ----------------------------
INSERT INTO `receivenotice` VALUES ('1', '31', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('2', '32', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('3', '33', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('4', '34', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('5', '35', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('6', '36', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('7', '37', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('8', '37', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('9', '37', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('10', '38', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('11', '38', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('12', '38', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('13', '39', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('14', '40', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('15', '40', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('16', '40', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('17', '41', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('18', '41', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('19', '41', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('20', '42', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('21', '42', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('22', '42', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('23', '43', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('24', '43', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('25', '43', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('26', '45', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('27', '45', '1050001', '', '');
INSERT INTO `receivenotice` VALUES ('28', '45', '1050002', '', '');
INSERT INTO `receivenotice` VALUES ('29', '45', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('30', '45', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('31', '46', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('32', '46', '1050001', '', '');
INSERT INTO `receivenotice` VALUES ('33', '46', '1050002', '', '');
INSERT INTO `receivenotice` VALUES ('34', '46', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('35', '46', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('36', '48', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('37', '48', '1410100102', '', '');
INSERT INTO `receivenotice` VALUES ('38', '48', '1410100103', '', '');
INSERT INTO `receivenotice` VALUES ('39', '48', '1410100104', '', '');
INSERT INTO `receivenotice` VALUES ('40', '48', '1410100105', '', '');
INSERT INTO `receivenotice` VALUES ('41', '48', '1410100106', '', '');
INSERT INTO `receivenotice` VALUES ('42', '48', '1410100107', '', '');
INSERT INTO `receivenotice` VALUES ('43', '48', '1410100108', '', '');
INSERT INTO `receivenotice` VALUES ('44', '48', '1410100109', '', '');
INSERT INTO `receivenotice` VALUES ('45', '48', '1410100110', '', '');
INSERT INTO `receivenotice` VALUES ('46', '48', '1410100111', '', '');
INSERT INTO `receivenotice` VALUES ('47', '48', '1410100112', '', '');
INSERT INTO `receivenotice` VALUES ('48', '48', '1410100113', '', '');
INSERT INTO `receivenotice` VALUES ('49', '48', '1410100114', '', '');
INSERT INTO `receivenotice` VALUES ('50', '48', '1410100115', '', '');
INSERT INTO `receivenotice` VALUES ('51', '48', '1410100116', '', '');
INSERT INTO `receivenotice` VALUES ('52', '48', '1050001', '', '');
INSERT INTO `receivenotice` VALUES ('53', '48', '1050002', '', '');
INSERT INTO `receivenotice` VALUES ('54', '48', '1010001', '', '');
INSERT INTO `receivenotice` VALUES ('55', '49', '1410100101', '', '');
INSERT INTO `receivenotice` VALUES ('56', '50', '1410100106', '', '');

-- ----------------------------
-- Table structure for `senddynamic`
-- ----------------------------
DROP TABLE IF EXISTS `senddynamic`;
CREATE TABLE `senddynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicId` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of senddynamic
-- ----------------------------

-- ----------------------------
-- Table structure for `sendnotice`
-- ----------------------------
DROP TABLE IF EXISTS `sendnotice`;
CREATE TABLE `sendnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeId` int(11) DEFAULT NULL,
  `readedNumber` int(11) DEFAULT NULL,
  `deleteSign` bit(1) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f` (`noticeId`),
  CONSTRAINT `g` FOREIGN KEY (`noticeId`) REFERENCES `notice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sendnotice
-- ----------------------------
INSERT INTO `sendnotice` VALUES ('7', '27', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('8', '28', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('9', '29', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('10', '30', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('11', '31', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('12', '32', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('13', '33', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('14', '34', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('15', '35', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('16', '36', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('17', '37', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('18', '38', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('19', '39', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('20', '40', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('21', '41', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('22', '42', '0', '', '1410100102');
INSERT INTO `sendnotice` VALUES ('23', '43', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('24', '44', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('25', '45', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('26', '46', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('27', '47', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('28', '48', '0', '', '1410100101');
INSERT INTO `sendnotice` VALUES ('29', '49', '0', '', '10001');
INSERT INTO `sendnotice` VALUES ('30', '50', '0', '', '10001');

-- ----------------------------
-- Table structure for `specialty`
-- ----------------------------
DROP TABLE IF EXISTS `specialty`;
CREATE TABLE `specialty` (
  `sid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `sname` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `did` (`did`),
  CONSTRAINT `did` FOREIGN KEY (`did`) REFERENCES `department` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specialty
-- ----------------------------
INSERT INTO `specialty` VALUES ('1010', '10', '软件工程');
INSERT INTO `specialty` VALUES ('1011', '10', '网络工程');
INSERT INTO `specialty` VALUES ('1012', '10', '应用数学');
INSERT INTO `specialty` VALUES ('1113', '11', '商务英语');
INSERT INTO `specialty` VALUES ('1114', '11', '英语教育');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(8) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `clano` int(11) DEFAULT NULL,
  `politicalStatus` varchar(10) DEFAULT NULL,
  `deletedSign` bit(1) DEFAULT NULL,
  `image` mediumblob,
  PRIMARY KEY (`id`),
  KEY `clano` (`clano`),
  CONSTRAINT `clano` FOREIGN KEY (`clano`) REFERENCES `claname` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1410100101', '张三', '男', '123456', '13156894119', '无', '78231564@qq.com', '14101001', '团员', null, null);
INSERT INTO `student` VALUES ('1410100102', '李四', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100103', '2', null, '123456', null, '214452', null, '14101001', '群众', '', null);
INSERT INTO `student` VALUES ('1410100104', '3', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100105', '4', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100106', '5', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100107', '6', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100108', '7', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100109', '8', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100110', '9', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100111', '10', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100112', '11', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100113', '12', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100114', '13', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100115', '14', null, '123456', null, '214452', null, '14101001', '群众', null, null);
INSERT INTO `student` VALUES ('1410100116', '15', null, '123456', null, '214452', null, '14101001', '群众', null, null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(8) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `office` int(11) DEFAULT NULL,
  `politicalStatus` varchar(10) DEFAULT NULL,
  `deletedSign` bit(1) DEFAULT NULL,
  `image` mediumblob,
  `department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `d` (`office`),
  CONSTRAINT `d` FOREIGN KEY (`office`) REFERENCES `office` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1010001', '张三', '男', '123456', '15677489321', '', '教授', '1051', '团员', null, null, null);
INSERT INTO `teacher` VALUES ('1050001', '李四', null, '123456', null, null, '讲师', '1050', '团员', null, null, '外国语学院');
INSERT INTO `teacher` VALUES ('1050002', '123', null, '123456', null, null, '教授', '1050', '团员', null, null, '外国语学院');

-- ----------------------------
-- Table structure for `tree`
-- ----------------------------
DROP TABLE IF EXISTS `tree`;
CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tree
-- ----------------------------
INSERT INTO `tree` VALUES ('2', '0', '外国语学院');
INSERT INTO `tree` VALUES ('7', '2', 'aa');
INSERT INTO `tree` VALUES ('8', '2', 'aa');
INSERT INTO `tree` VALUES ('9', '2', 'aa');
INSERT INTO `tree` VALUES ('21', '2', '老师');
INSERT INTO `tree` VALUES ('22', '2', '学生');
INSERT INTO `tree` VALUES ('211', '21', '教研室A');
INSERT INTO `tree` VALUES ('212', '21', '教研室B');
INSERT INTO `tree` VALUES ('221', '22', '15商英1');
INSERT INTO `tree` VALUES ('222', '22', '14商英1');
INSERT INTO `tree` VALUES ('2221', '221', '张三');
