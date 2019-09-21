/*
Navicat MySQL Data Transfer

Source Server         : NXU
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : xiangu

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2019-06-24 12:40:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jobinfo
-- ----------------------------
DROP TABLE IF EXISTS `jobinfo`;
CREATE TABLE `jobinfo` (
  `OwnerName` varchar(50) NOT NULL,
  `jobIntro` varchar(50) NOT NULL,
  `jobNumber` varchar(10) DEFAULT NULL,
  `jobRequire` varchar(50) DEFAULT NULL,
  `jobPrice` varchar(10) DEFAULT NULL,
  `jobState` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jobIntro`),
  KEY `jobinfo_ibfk_1` (`OwnerName`),
  CONSTRAINT `jobinfo_ibfk_1` FOREIGN KEY (`OwnerName`) REFERENCES `login` (`userName`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobinfo
-- ----------------------------
INSERT INTO `jobinfo` VALUES ('Daniel', 'balala', null, 'handsome', '190', 'whh');
INSERT INTO `jobinfo` VALUES ('Daniel', 'dancer', '100', 'handsome and familier with alcohol', '2100 a day', 'allowed sign up');
INSERT INTO `jobinfo` VALUES ('Daniel', 'drinker', '10', 'handsome and familier with alcohol', '100 a day', 'allowed sign up');
INSERT INTO `jobinfo` VALUES ('Daniel', 'piano player', '10', 'handsome and familier with alcohol', '100 a day', 'allowed sign up');
INSERT INTO `jobinfo` VALUES ('Daniel', 'student', '10', 'handsome and familier with alcohol', '100 a day', 'allowed sign up');
INSERT INTO `jobinfo` VALUES ('Daniel', 'typer', '90', 'whh', '100', 'hello world');
INSERT INTO `jobinfo` VALUES ('冯小春', '酒店服务员', '10', '身高165以上', '110/天', '未满');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `shenfen` int(1) NOT NULL,
  `userID` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('4444', 'a12345678', '1', '112215551', '男', '1', '18995466212');
INSERT INTO `login` VALUES ('Auraro', '123123123a', '0', '12017610000', '女', '17物电', '19995280340');
INSERT INTO `login` VALUES ('Bald', '123123123a', '0', '12017610000', '男', '计算机类1班', '18750910094');
INSERT INTO `login` VALUES ('Daniel', '123', '0', '12017610001', '女', '计算机类', '18750910080');
INSERT INTO `login` VALUES ('Ethon', '1', '0', '12017610007', '男', '网络工程', '18750910021');
INSERT INTO `login` VALUES ('Future', 'sadqwe112', '0', '123', '男', 'asd', '18750910084');
INSERT INTO `login` VALUES ('hello', '123123123a', '0', '123123', '男', '123a', '19995280321');
INSERT INTO `login` VALUES ('HelloWorld', '1234567890a', '0', '12017610002', '女', '17计算机类4班', '19995280390');
INSERT INTO `login` VALUES ('Meria', '123456123a', '0', '12017612345', '女', '17计算机类1班', '19995280344');
INSERT INTO `login` VALUES ('Timi', '123123123a', '0', '12378', '男', 'wangr', '19995280344');
INSERT INTO `login` VALUES ('冯小春', '123456', '1', '120162424', '女', '网络工程', '1572958456');
INSERT INTO `login` VALUES ('卫媛', 'wywy1998', '1', '12016242478', '女', '16网络', '15729518317');

-- ----------------------------
-- Table structure for lostinfo
-- ----------------------------
DROP TABLE IF EXISTS `lostinfo`;
CREATE TABLE `lostinfo` (
  `OwnerName` varchar(50) DEFAULT NULL,
  `lostName` varchar(50) NOT NULL,
  `lostIntro` varchar(50) NOT NULL,
  `lostPickup` varchar(50) NOT NULL,
  `lostState` varchar(50) NOT NULL,
  PRIMARY KEY (`lostName`),
  KEY `username` (`OwnerName`),
  CONSTRAINT `lostinfo_ibfk_1` FOREIGN KEY (`OwnerName`) REFERENCES `login` (`userName`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lostinfo
-- ----------------------------
INSERT INTO `lostinfo` VALUES ('Daniel', 'phone', 'lost in teaching building', '302', 'still do not find');
INSERT INTO `lostinfo` VALUES ('冯小春', 'U盘', '在B区机房捡到', '大一年级三班', '未找到');
INSERT INTO `lostinfo` VALUES ('Daniel', 'whh', 'whh', 'whh', 'whh');
INSERT INTO `lostinfo` VALUES ('Daniel', '雨伞', '粉色的', '图书馆', '没找到');

-- ----------------------------
-- Table structure for thinginfo
-- ----------------------------
DROP TABLE IF EXISTS `thinginfo`;
CREATE TABLE `thinginfo` (
  `thingsName` varchar(50) NOT NULL,
  `thingsPrice` int(50) NOT NULL,
  `thingsIntro` varchar(200) NOT NULL,
  `OwnerName` varchar(50) NOT NULL,
  `OwnerPhone` varchar(20) DEFAULT NULL,
  `thingsState` varchar(50) NOT NULL,
  PRIMARY KEY (`thingsName`),
  KEY `OwnerName` (`OwnerName`),
  CONSTRAINT `thinginfo_ibfk_1` FOREIGN KEY (`OwnerName`) REFERENCES `login` (`userName`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thinginfo
-- ----------------------------
INSERT INTO `thinginfo` VALUES ('asdas', '100', 'sah', 'Daniel', '1002192312', 'sold');
INSERT INTO `thinginfo` VALUES ('hee', '1', 'ddd', 'Daniel', '1212111', 'hello12');
INSERT INTO `thinginfo` VALUES ('ipad', '1000', '原价2988', '冯小春', null, '未售');
INSERT INTO `thinginfo` VALUES ('ipod', '1000', 'hello_world', 'Daniel', '1821929121', 'selling');
INSERT INTO `thinginfo` VALUES ('眼镜', '200', '黑框的', 'Daniel', '199928293829', '未售出');
