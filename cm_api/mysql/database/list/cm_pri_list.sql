/*
 Navicat Premium Data Transfer

 Source Server         : dany
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : cm_shop

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 20/11/2019 08:51:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_pri_list
-- ----------------------------
DROP TABLE IF EXISTS `cm_pri_list`;
CREATE TABLE `cm_pri_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '清单顶部分类名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '分类logo',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_pri_list
-- ----------------------------
INSERT INTO `cm_pri_list` VALUES (1, '精选', 'https://image.suning.cn/uimg/MZMS/show/155117928298268957.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (2, '家电', 'https://image.suning.cn/uimg/MZMS/show/155117929720977273.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (3, '酷机', 'https://image.suning.cn/uimg/MZMS/show/151384323374513944.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (4, '超市', 'https://image.suning.cn/uimg/MZMS/show/151375579188137688.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (5, '穿搭', 'https://image.suning.cn/uimg/MZMS/show/151375580058931338.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (6, '置家', 'https://image.suning.cn/uimg/MZMS/show/151383933612448185.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (7, '育儿', 'https://image.suning.cn/uimg/MZMS/show/151375578418753424.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (8, '办公', 'https://image.suning.cn/uimg/MZMS/show/155117928912031039.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (9, '运动', 'https://image.suning.cn/uimg/MZMS/show/151669485755224183.png?from=mobile');
INSERT INTO `cm_pri_list` VALUES (10, '出行', 'https://image.suning.cn/uimg/MZMS/show/151477707934186366.png?from=mobile');

SET FOREIGN_KEY_CHECKS = 1;
