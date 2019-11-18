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

 Date: 18/11/2019 16:31:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_index_slide
-- ----------------------------
DROP TABLE IF EXISTS `cm_index_slide`;
CREATE TABLE `cm_index_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '轮播图地址',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_index_slide
-- ----------------------------
INSERT INTO `cm_index_slide` VALUES (1, 'https://image1.suning.cn/uimg/cms/img/157405262011521709.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (2, 'https://image.suning.cn/uimg/aps/material/157380637412848722.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (3, 'https://image3.suning.cn/uimg/cms/img/157380337710302816.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (4, 'https://image.suning.cn/uimg/aps/material/157404133563371574.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (5, 'https://oss.suning.com/aps/aps_learning/iwogh/2019/11/15/15/iwoghBannerPicture/d2add901baec44d5b7f8f7188c6f67f4.png?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (6, 'https://image.suning.cn/uimg/aps/material/157338768945545520.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (7, 'https://image.suning.cn/uimg/aps/material/157346145382344556.jpg?format=_is_1242w_610h', NULL);
INSERT INTO `cm_index_slide` VALUES (8, 'https://oss.suning.com/aps/aps_learning/iwogh/2019/11/14/16/iwoghBannerPicture/d37488170d2c4e9fbceeece87e79863d.png?format=_is_1242w_610h', NULL);

SET FOREIGN_KEY_CHECKS = 1;
