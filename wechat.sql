/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wechat

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-07-06 00:44:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `friendId` int(11) NOT NULL,
  `myId` int(11) NOT NULL,
  `friendRemarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`myId`,`friendId`),
  KEY `friendId` (`friendId`),
  CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`myId`) REFERENCES `user` (`id`),
  CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`friendId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `passWrod` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `pic` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123456', 'weifucheng', null);
INSERT INTO `user` VALUES ('10005', 'd', 'd', 'd');
INSERT INTO `user` VALUES ('10006', '123456', '123456', null);
