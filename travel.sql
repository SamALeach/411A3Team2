/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : lyou

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 15/12/2021 21:21:46
*/
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `travel`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allusers
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES (1, 'cd', 'cd', '超级管理员', '2020-06-01 02:04:24');

-- ----------------------------
-- Table structure for xianlujiatuan
-- ----------------------------
DROP TABLE IF EXISTS `xianlujiatuan`;
CREATE TABLE `xianlujiatuan`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `xianlubianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xianlumingcheng` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chufadi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mudedi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaotonggongju` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feiyong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chuxingshijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `canjiaren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `issh` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xianlujiatuan
-- ----------------------------
INSERT INTO `xianlujiatuan` VALUES (1, '002', '塞北两日游', '塞北', '塞北', '自行车', '480', '2012-04-09', 'hsg', '555', 'xxx', '否', '2020-05-01 02:04:24');
INSERT INTO `xianlujiatuan` VALUES (2, '002', '塞北山两日游', '塞北', '塞北', '自行车', '480', '2012-04-09', 'hsg', 'yyy', 'tkkty', '否', '2020-05-01 02:04:24');

-- ----------------------------
-- Table structure for yonghuzhuce
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mima` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xingming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xingbie` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chushengnianyue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `QQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youxiang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dianhua` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shenfenzheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `touxiang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dizhi` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `issh` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES (1, '555', '555', '333', '男', '2012-04-02', '5252532', 'hehe@163.com', '13186835580', '363463634', 'upload/1333961148718.jpg', '龙港龙翔路1170号', 'sdgsdg', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (2, 'leejie', 'leejie', '李龙', '男', '2012-04-03', '54326436', 'sdgss@163.com', '644875874', '330327187945', 'upload/1333963398718.gif', '温州飞翔路2号', 'ggwgwe', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (3, 'mygod', 'mygod', '陈德才', '男', '2012-04-02', '54363346', 'fewg@163.com', '52346462', '634643636', 'upload/1333963445546.gif', '杭州四季青广场3号', 'gregreh', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (4, 'xwxxmx', 'xwxxmx', '吴江', '男', '2012-04-04', '6436363', 'geer@163.com', '23532632', '6347347434', 'upload/1333963661093.jpg', '上海浦东区22号', 'erherhre', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (5, 'yyy', 'yyy', 'yyy', '男', '2012-04-10', '765765765', 'jjt@163.com', '526234643', '364334634', 'upload/1335009847625.gif', 'rherh', 'reher', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (6, 'admin01', '123456', 'admin01', '男', '2005-05-03', '2112312213', '', '', '', '', '', '', '2020-05-03 02:04:24', '是');
INSERT INTO `yonghuzhuce` VALUES (7, 'test2020', '123', 'test2020', '男', '2020-01-01', '123456', '123456@qq.com', '13688889999', '', '', '', 'test2020', '2020-05-16 21:12:00', 'y');
INSERT INTO `yonghuzhuce` VALUES (8, '123', '123', '123', '男', '123', '123', '123', '123', 'null', 'null', '123', '123', '2021-12-15 20:46:00', 'y');

-- ----------------------------
-- Table structure for zijiayouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `zijiayouxianlu`;
CREATE TABLE `zijiayouxianlu`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `xianlubianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xianlumingcheng` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chufadi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mudedi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaotonggongju` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feiyong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chuxingshijian` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faburen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zijiayouxianlu
-- ----------------------------
INSERT INTO `zijiayouxianlu` VALUES (1, '001', 'gdfgs', 'sdfsad', 'fds', 'train', '880', '2020-05-03', 'gewgwe', 'hsg', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (2, '002', '123fdsa', 'dsfa', 'fdas', 'walk', '480', '2020-05-03', 'gewgewg', 'hsg', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (3, '003', 'hgreherh', 'erher', 'herjer', 'ship', '444', '2020-05-03', 'rehrehre', 'hsg', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (4, 'tyu56', '56i65i', 'i65i65', 'i65i65', 'train', '44', '2020-05-03', 'tuytu', '555', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (5, 'trhrt', 'jrtjrt', 'jtr', 'ktrktr', 'train', '350', '2020-05-03', 'eryreye', 'bbb', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (6, 'ktykty', 'ktyktyl', 'tlty', 'tkytkyt', 'aircraft', '444', '2020-05-03', 'rthhrt', 'yyy', '2020-05-03 02:04:24');
INSERT INTO `zijiayouxianlu` VALUES (7, 'hrher', 'erjejer', 'jrejr', 'ejerje', 'walk', '22', '2020-05-03', 'gehreher', '555', '2020-05-03 02:04:24');

SET FOREIGN_KEY_CHECKS = 1;
