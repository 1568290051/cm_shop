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

 Date: 20/11/2019 08:51:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_thi_list
-- ----------------------------
DROP TABLE IF EXISTS `cm_thi_list`;
CREATE TABLE `cm_thi_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '清单中商品图片',
  `price` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '清单中商品价格',
  `offer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '优惠活动',
  `sec_id` int(11) NOT NULL COMMENT '商品对应的二级分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 211 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_thi_list
-- ----------------------------
INSERT INTO `cm_thi_list` VALUES (1, 'https://imgservice.suning.cn/uimg1/b2c/image/1CPlsKZHDnMXJcF8UsMvbQ.jpg?format=400h_400w_4e_80q.webp', '4861', '', 1);
INSERT INTO `cm_thi_list` VALUES (2, 'https://imgservice.suning.cn/uimg1/b2c/image/nsYlPJHap19oH4ATYRX1HA.jpg?format=400h_400w_4e_80q.webp', '2299', '', 1);
INSERT INTO `cm_thi_list` VALUES (3, 'https://imgservice.suning.cn/uimg1/b2c/image/sQnbvhmBLXhiU6etzVQeNQ.jpg?format=400h_400w_4e_80q.webp', '2599', '', 1);
INSERT INTO `cm_thi_list` VALUES (4, 'https://imgservice.suning.cn/uimg1/b2c/image/x03Lr629vM-dQupOnxVAsw.jpg?format=400h_400w_4e_80q.webp', '2198', '', 2);
INSERT INTO `cm_thi_list` VALUES (5, 'https://imgservice.suning.cn/uimg1/b2c/image/uBgAsa_Ygw27pJpY-CmBQw.jpg?format=400h_400w_4e_80q.webp', '3099', '每300减30', 2);
INSERT INTO `cm_thi_list` VALUES (6, 'https://imgservice.suning.cn/uimg1/b2c/image/rDsD3lJsTfa0fyhEdOgxHQ.jpg?format=400h_400w_4e_80q.webp', '5368', '', 2);
INSERT INTO `cm_thi_list` VALUES (7, 'https://imgservice.suning.cn/uimg1/b2c/image/TVf82lNyjMLabCXHdraqWA.jpg?format=400h_400w_4e_80q.webp', '1699', '', 3);
INSERT INTO `cm_thi_list` VALUES (8, 'https://imgservice.suning.cn/uimg1/b2c/image/fPdt3yLHYdcl_dbMGLTo3A.jpg?format=400h_400w_4e_80q.webp', '1699', '', 3);
INSERT INTO `cm_thi_list` VALUES (9, 'https://imgservice.suning.cn/uimg1/b2c/image/VvcMp_R9SKQTIag2kU42Tw.jpg?format=400h_400w_4e_80q.webp', '2599', '', 3);
INSERT INTO `cm_thi_list` VALUES (10, 'https://imgservice.suning.cn/uimg1/b2c/image/gcSEv9aq5zV8-yru62D7Iw.jpg?format=400h_400w_4e_80q.webp', '2949', '', 4);
INSERT INTO `cm_thi_list` VALUES (11, 'https://imgservice.suning.cn/uimg1/b2c/image/DdjjDkqqyyYCso1SNspeUQ.jpg?format=400h_400w_4e_80q.webp', '3999', '', 4);
INSERT INTO `cm_thi_list` VALUES (12, 'https://imgservice.suning.cn/uimg1/b2c/image/1UwcEH6bHntFB_yEBGsvIg.jpg?format=400h_400w_4e_80q.webp', '4999', '', 4);
INSERT INTO `cm_thi_list` VALUES (13, 'https://imgservice.suning.cn/uimg1/b2c/image/sn34UN1qopX77m7awG-Kbg.jpg?format=400h_400w_4e_80q.webp', '14.6', '', 5);
INSERT INTO `cm_thi_list` VALUES (14, 'https://imgservice.suning.cn/uimg1/b2c/image/OkHej8VqeNCCCDhC2SEOoA.jpg?format=400h_400w_4e_80q.webp', '14.6', '', 5);
INSERT INTO `cm_thi_list` VALUES (15, 'https://imgservice.suning.cn/uimg1/b2c/image/m9VUnE2OtMPiG2-h1Xomsw.jpg?format=400h_400w_4e_80q.webp', '12.5', '', 5);
INSERT INTO `cm_thi_list` VALUES (16, 'https://imgservice.suning.cn/uimg1/b2c/image/RWMVQxEbfN0frSpXpYzK_w.jpg?format=400h_400w_4e_80q.webp', '3999', '满1500减200', 6);
INSERT INTO `cm_thi_list` VALUES (17, 'https://imgservice.suning.cn/uimg1/b2c/image/MFAUQczKDoWB2rKTRMtzMQ.jpg?format=400h_400w_4e_80q.webp', '1799', '', 6);
INSERT INTO `cm_thi_list` VALUES (18, 'https://imgservice.suning.cn/uimg1/b2c/image/J8hCtimgKb0UsbUAUS4oMQ.jpg?format=400h_400w_4e_80q.webp', '4299', '', 6);
INSERT INTO `cm_thi_list` VALUES (19, 'https://imgservice.suning.cn/uimg1/b2c/image/ZisNpMpKtOfpxuU3rMIeog.jpg?format=400h_400w_4e_80q.webp', '2598', '', 7);
INSERT INTO `cm_thi_list` VALUES (20, 'https://imgservice.suning.cn/uimg1/b2c/image/6wj60ug1hlqazy_TB0f9mQ.jpg?format=400h_400w_4e_80q.webp', '1799', '', 7);
INSERT INTO `cm_thi_list` VALUES (21, 'https://imgservice.suning.cn/uimg1/b2c/image/hWfI8FfWhjfl3LFAx0D50g.jpg?format=400h_400w_4e_80q.webp', '2499', '', 7);
INSERT INTO `cm_thi_list` VALUES (22, 'https://imgservice.suning.cn/uimg1/b2c/image/6tNkWSC0cER6X-Sr9CEHIw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1199', '', 8);
INSERT INTO `cm_thi_list` VALUES (23, 'https://imgservice.suning.cn/uimg1/b2c/image/WynTAOhHRlOTn3UUFZXX0Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1349', '领券300元', 8);
INSERT INTO `cm_thi_list` VALUES (24, 'https://imgservice.suning.cn/uimg1/b2c/image/GGdXK7qKslzsjugSdoVCtQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '799', '', 8);
INSERT INTO `cm_thi_list` VALUES (25, 'https://imgservice.suning.cn/uimg1/b2c/image/mjdXBrj9os1vhDNdKtJkqw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2799', '', 9);
INSERT INTO `cm_thi_list` VALUES (26, 'https://imgservice.suning.cn/uimg1/b2c/image/a8K8A89sYeuGdI_2Ve7KNA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '4999', '', 9);
INSERT INTO `cm_thi_list` VALUES (27, 'https://imgservice.suning.cn/uimg1/b2c/image/EpC-oiADAq7o5TqYjWbVUw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2288', '', 9);
INSERT INTO `cm_thi_list` VALUES (28, 'https://imgservice.suning.cn/uimg1/b2c/image/yPHyt_07U9mBWRe1fD8WOA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '528', '', 10);
INSERT INTO `cm_thi_list` VALUES (29, 'https://imgservice.suning.cn/uimg1/b2c/image/BRdzoDqm-8ebm0xcGsnU_g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '549', '', 10);
INSERT INTO `cm_thi_list` VALUES (30, 'https://imgservice.suning.cn/uimg1/b2c/image/8phBoEJoP7yvZNKIPJApAQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '559', '', 10);
INSERT INTO `cm_thi_list` VALUES (31, 'https://imgservice.suning.cn/uimg1/b2c/image/Cwn9AcYdWMwDJX3EG0rhZg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '999', '', 11);
INSERT INTO `cm_thi_list` VALUES (32, 'https://imgservice.suning.cn/uimg1/b2c/image/2ayUDyvYz-DvIPxruPLzjw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '455', '', 11);
INSERT INTO `cm_thi_list` VALUES (33, 'https://imgservice.suning.cn/uimg1/b2c/image/d460HUOC4KQRa0aWMnX0hw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '679', '', 11);
INSERT INTO `cm_thi_list` VALUES (34, 'https://imgservice.suning.cn/uimg1/b2c/image/8cmM6BdWOnA9so9z4otxUQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '787', '', 12);
INSERT INTO `cm_thi_list` VALUES (35, 'https://imgservice.suning.cn/uimg1/b2c/image/MvA87T5xiFkhI2Q64Dd0sw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2299', '', 12);
INSERT INTO `cm_thi_list` VALUES (36, 'https://imgservice.suning.cn/uimg1/b2c/image/Aym4vMvmw2SmuUIo_MLNyA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '5999', '', 12);
INSERT INTO `cm_thi_list` VALUES (37, 'https://imgservice.suning.cn/uimg1/b2c/image/k-v3iNokIjfGhu2xmZaQWg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2279', '', 13);
INSERT INTO `cm_thi_list` VALUES (38, 'https://image3.suning.cn/uimg/MFS/show/157406046970594652.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '1579', '', 13);
INSERT INTO `cm_thi_list` VALUES (39, 'https://image2.suning.cn/uimg/MFS/show/157406048380466017.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '1229', '', 13);
INSERT INTO `cm_thi_list` VALUES (40, 'https://imgservice.suning.cn/uimg1/b2c/image/OaBqKyqcMxGTSR9F3JqO1g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '5999', '', 14);
INSERT INTO `cm_thi_list` VALUES (41, 'https://imgservice.suning.cn/uimg1/b2c/image/J-VYymUr07AgxtNECbOMKw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '7999', '', 14);
INSERT INTO `cm_thi_list` VALUES (42, 'https://imgservice.suning.cn/uimg1/b2c/image/Crc9Onp9nnOWOWuhwgiWPw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '4399', '', 14);
INSERT INTO `cm_thi_list` VALUES (43, 'https://imgservice.suning.cn/uimg1/b2c/image/x9nO-P_LBhLuJjWo6OtoYA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '7999', '满7940减500', 15);
INSERT INTO `cm_thi_list` VALUES (44, 'https://imgservice.suning.cn/uimg1/b2c/image/Jjb2t1b79nGncEbWeJYnKw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '7899', '', 15);
INSERT INTO `cm_thi_list` VALUES (45, 'https://imgservice.suning.cn/uimg1/b2c/image/1Tx-J7YvASheO83fxi828g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1212', '', 15);
INSERT INTO `cm_thi_list` VALUES (46, 'https://image5.suning.cn/uimg/MFS/show/157406600846254807.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '2948', '', 16);
INSERT INTO `cm_thi_list` VALUES (47, 'https://image1.suning.cn/uimg/MFS/show/157406610503366377.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '3059', '', 16);
INSERT INTO `cm_thi_list` VALUES (48, 'https://image4.suning.cn/uimg/MFS/show/157406612105434541.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '6709', '满500减2', 16);
INSERT INTO `cm_thi_list` VALUES (49, 'https://image2.suning.cn/uimg/MFS/show/157406243414467456.jpg_39-2-747-747a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '99', '', 17);
INSERT INTO `cm_thi_list` VALUES (50, 'https://imgservice.suning.cn/uimg1/b2c/image/u2r_TVANgSLLHvjT9oUVOw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '领券20元', 17);
INSERT INTO `cm_thi_list` VALUES (51, 'https://imgservice.suning.cn/uimg1/b2c/image/oaaFhphtPW57_2y8r3kjBw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '60.9', '', 17);
INSERT INTO `cm_thi_list` VALUES (52, 'https://imgservice.suning.cn/uimg1/b2c/image/EWMUa3_9T7IxEoXYIIb1LA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '99', '', 18);
INSERT INTO `cm_thi_list` VALUES (53, 'https://imgservice.suning.cn/uimg1/b2c/image/y2X7E-FsmO6diFwiDw7QWw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '', 18);
INSERT INTO `cm_thi_list` VALUES (54, 'https://imgservice.suning.cn/uimg1/b2c/image/gLotUoJrO0oRmJCtKsNU-g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '299', '', 18);
INSERT INTO `cm_thi_list` VALUES (55, 'https://imgservice.suning.cn/uimg1/b2c/image/OiCqRPF6qcflFl1cVkwweQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '5499', '', 19);
INSERT INTO `cm_thi_list` VALUES (56, 'https://imgservice.suning.cn/uimg1/b2c/image/DZ8dprn71Fbm0yHag-OVaQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2298', '满1990减100', 19);
INSERT INTO `cm_thi_list` VALUES (57, 'https://imgservice.suning.cn/uimg1/b2c/image/K3L_97RU0-CWWXR7EudwNA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2799', '', 19);
INSERT INTO `cm_thi_list` VALUES (58, 'https://image5.suning.cn/uimg/MFS/show/157404638168562341.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '6407', '', 20);
INSERT INTO `cm_thi_list` VALUES (59, 'https://image4.suning.cn/uimg/MFS/show/157404641349964326.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '7186', '满1212减26', 20);
INSERT INTO `cm_thi_list` VALUES (60, 'https://image1.suning.cn/uimg/MFS/show/157404643154828396.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '7599', '', 20);
INSERT INTO `cm_thi_list` VALUES (61, 'https://image5.suning.cn/uimg/MFS/show/157405828719784480.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '442', '', 21);
INSERT INTO `cm_thi_list` VALUES (62, 'https://image1.suning.cn/uimg/MFS/show/157405833001147732.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '311', '', 21);
INSERT INTO `cm_thi_list` VALUES (63, 'https://image1.suning.cn/uimg/MFS/show/157405847080513858.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '380', '', 21);
INSERT INTO `cm_thi_list` VALUES (64, 'https://imgservice.suning.cn/uimg1/b2c/image/2UVqn388Yp2N5g8U_PSuvA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1380', '', 22);
INSERT INTO `cm_thi_list` VALUES (65, 'https://imgservice.suning.cn/uimg1/b2c/image/rw88QBb17KjpSSvrhzYcbQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '6990', '每400减50', 22);
INSERT INTO `cm_thi_list` VALUES (66, 'https://imgservice.suning.cn/uimg1/b2c/image/ro-e6zzYFJkKdW_pvgdyeA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '348', '', 22);
INSERT INTO `cm_thi_list` VALUES (67, 'https://imgservice.suning.cn/uimg1/b2c/image/cu3ucjd6awQWg2kJcyyXLQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1009', '', 23);
INSERT INTO `cm_thi_list` VALUES (68, 'https://imgservice.suning.cn/uimg1/b2c/image/ncU-3kKNQi0Unn4YIHW-iw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1265', '每1199减220', 23);
INSERT INTO `cm_thi_list` VALUES (69, 'https://imgservice.suning.cn/uimg1/b2c/image/DQlUhGpg3DOjLS3RBsuUrg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '519', '', 23);
INSERT INTO `cm_thi_list` VALUES (70, 'https://imgservice.suning.cn/uimg1/b2c/image/VGg1CzAw-AhEP-TwqY8JdQ.png_400w_400h_4e_340w_340h_1e?from=mobile', '25', '', 24);
INSERT INTO `cm_thi_list` VALUES (71, 'https://imgservice.suning.cn/uimg1/b2c/image/_7VBt0z8YzATL5CJ31Sumw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '9.9', '领券5元', 24);
INSERT INTO `cm_thi_list` VALUES (72, 'https://imgservice.suning.cn/uimg1/b2c/image/rwaa5Kwen8kG4o0sylSTDg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39.9', '', 24);
INSERT INTO `cm_thi_list` VALUES (73, 'https://imgservice.suning.cn/uimg1/b2c/image/LeNatUR8BY-ztK8GmZtzpA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '65', '', 25);
INSERT INTO `cm_thi_list` VALUES (74, 'https://imgservice.suning.cn/uimg1/b2c/image/ITo0qAN2M4RmZB2BWKQ92g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '69', '', 25);
INSERT INTO `cm_thi_list` VALUES (75, 'https://imgservice.suning.cn/uimg1/b2c/image/Ru8f6HVa1rh3NP-m9nDdqg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '', 25);
INSERT INTO `cm_thi_list` VALUES (76, 'https://imgservice.suning.cn/uimg1/b2c/image/20XkY-011hQir8goKW5XXQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '122', '领券10元', 26);
INSERT INTO `cm_thi_list` VALUES (77, 'https://imgservice.suning.cn/uimg1/b2c/image/ZuCQ3yV7wubPF1B6i8UMRQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '8.9', '领券20元', 26);
INSERT INTO `cm_thi_list` VALUES (78, 'https://imgservice.suning.cn/uimg1/b2c/image/ghh8XYjNMkwxWljBuD0Lng.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '8.9', '领券20元', 26);
INSERT INTO `cm_thi_list` VALUES (79, 'https://imgservice.suning.cn/uimg1/b2c/image/RYw22oTc177fk50QQxfGXQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '99', '', 27);
INSERT INTO `cm_thi_list` VALUES (80, 'https://imgservice.suning.cn/uimg1/b2c/image/gvA72SWumDwPQ9exSIbjcQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '45', '', 27);
INSERT INTO `cm_thi_list` VALUES (81, 'https://imgservice.suning.cn/uimg1/b2c/image/8z5uPqz7GOaNAp8Zc-1KMg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '75', '', 27);
INSERT INTO `cm_thi_list` VALUES (82, 'https://imgservice.suning.cn/uimg1/b2c/image/o1TRZgn3CwhwBNUoJqmcqQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '48', '领券10元', 28);
INSERT INTO `cm_thi_list` VALUES (83, 'https://imgservice.suning.cn/uimg1/b2c/image/HZI_4BPDmFoO9RJ0bQADxA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '545', '满199减5', 28);
INSERT INTO `cm_thi_list` VALUES (84, 'https://imgservice.suning.cn/uimg1/b2c/image/TzjQljYutxIWyny8pGUJkQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '339', '领券50元', 28);
INSERT INTO `cm_thi_list` VALUES (85, 'https://imgservice.suning.cn/uimg1/b2c/image/e2w2-dhLmmvxr4EseQHY3A.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1999', '', 29);
INSERT INTO `cm_thi_list` VALUES (86, 'https://imgservice.suning.cn/uimg1/b2c/image/7BdW7GBtUmISe0qqAF3q5g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '999', '', 29);
INSERT INTO `cm_thi_list` VALUES (87, 'https://image4.suning.cn/uimg/MFS/show/157388451511182856.jpg_0-0-750-750a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '259', '', 29);
INSERT INTO `cm_thi_list` VALUES (88, 'https://imgservice.suning.cn/uimg1/b2c/image/d2cwWmeLGW8ZZNiuP36f9Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39.9', '领券10元', 30);
INSERT INTO `cm_thi_list` VALUES (89, 'https://imgservice.suning.cn/uimg1/b2c/image/fdhqGfs3TKoemuBZayUoqQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '79', '领券60元', 30);
INSERT INTO `cm_thi_list` VALUES (90, 'https://imgservice.suning.cn/uimg1/b2c/image/uPwcqy9Z_DAcIxrcoVHKFg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '56.66', '领券1元', 30);
INSERT INTO `cm_thi_list` VALUES (91, 'https://imgservice.suning.cn/uimg1/b2c/image/NkFw3_acldkv7IKrx7QrJQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '461', '每500减30', 31);
INSERT INTO `cm_thi_list` VALUES (92, 'https://imgservice.suning.cn/uimg1/b2c/image/EriBXjbw7EOabliaRH3yFw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '664', '每500减30', 31);
INSERT INTO `cm_thi_list` VALUES (93, 'https://imgservice.suning.cn/uimg1/b2c/image/nDPmh_2iwacsTSu6OKX26g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1317', '每500减30', 31);
INSERT INTO `cm_thi_list` VALUES (94, 'https://imgservice.suning.cn/uimg1/b2c/image/3HgG2bl8i1rGUoV0wGJlgQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '99', '领券30元', 32);
INSERT INTO `cm_thi_list` VALUES (95, 'https://imgservice.suning.cn/uimg1/b2c/image/p5IAsQp51WhIX2UozC0aFA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39.8', '领券3元', 32);
INSERT INTO `cm_thi_list` VALUES (96, 'https://imgservice.suning.cn/uimg1/b2c/image/FW9xVNuamzrSug4bvtl_UA.png_400w_400h_4e_340w_340h_1e?from=mobile', '29.9', '每99减5', 32);
INSERT INTO `cm_thi_list` VALUES (97, 'https://image3.suning.cn/uimg/MFS/show/157404899799385752.jpg_66-260-860-860a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '1980', '', 33);
INSERT INTO `cm_thi_list` VALUES (98, 'https://imgservice.suning.cn/uimg1/b2c/image/Wkt-XJafIL8FCuUGKXWzJw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1490', '', 33);
INSERT INTO `cm_thi_list` VALUES (99, 'https://image4.suning.cn/uimg/MFS/show/157404888081137626.jpg_0-279-999-999a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '2080', '', 33);
INSERT INTO `cm_thi_list` VALUES (100, 'https://imgservice.suning.cn/uimg1/b2c/image/lGb5dJcozFqKTGlEVSRh-A.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '361', '每300减100', 34);
INSERT INTO `cm_thi_list` VALUES (101, 'https://imgservice.suning.cn/uimg1/b2c/image/0mWMYOQOmx2iCe902dVM5w.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '308', '领券60元', 34);
INSERT INTO `cm_thi_list` VALUES (102, 'https://imgservice.suning.cn/uimg1/b2c/image/wGjU8qHV1HjFeP_JfdYHfA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '268', '领券60元', 34);
INSERT INTO `cm_thi_list` VALUES (103, 'https://imgservice.suning.cn/uimg1/b2c/image/oG40QTFv8fSiRH_-_kdRZQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '56999', '领券500元', 35);
INSERT INTO `cm_thi_list` VALUES (104, 'https://image4.suning.cn/uimg/MFS/show/157387770396631864.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '108750', '', 35);
INSERT INTO `cm_thi_list` VALUES (105, 'https://imgservice.suning.cn/uimg1/b2c/image/SppwbNgorJW4W1u_g5NJLw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '3299', '领券300元', 35);
INSERT INTO `cm_thi_list` VALUES (106, 'https://image.suning.cn/uimg/b2c/newcatentries/0070098719-000000010471909645_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1799', '', 36);
INSERT INTO `cm_thi_list` VALUES (107, 'https://imgservice.suning.cn/uimg1/b2c/image/FZZStlnruQ_4pjl1TSfffg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1648', '', 36);
INSERT INTO `cm_thi_list` VALUES (108, 'https://imgservice.suning.cn/uimg1/b2c/image/g_9xwMb3nup3kS_USH79bw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '800', '领券150元', 36);
INSERT INTO `cm_thi_list` VALUES (109, 'https://imgservice.suning.cn/uimg1/b2c/image/tt4Q2P0DHREla1GD6118Ag.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '15.9', '领券5元', 37);
INSERT INTO `cm_thi_list` VALUES (110, 'https://imgservice.suning.cn/uimg1/b2c/image/nJz7iDpyasPZTJLYgp6W2A.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39.8', '满49减3', 37);
INSERT INTO `cm_thi_list` VALUES (111, 'https://imgservice.suning.cn/uimg1/b2c/image/6Gd0IC8FV_F7-yqh19sIXw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '109', '', 37);
INSERT INTO `cm_thi_list` VALUES (112, 'https://imgservice.suning.cn/uimg1/b2c/image/CxIQMew7zFg1HUn_A4wqHg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '238', '', 38);
INSERT INTO `cm_thi_list` VALUES (113, 'https://imgservice.suning.cn/uimg1/b2c/image/FDf_mrRtqE8IgvC0VmxF2g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '129', '每99减20', 38);
INSERT INTO `cm_thi_list` VALUES (114, 'https://imgservice.suning.cn/uimg1/b2c/image/Gzul-Q1zsaKgfQuQiIaLsg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '70.9', '每99减30', 38);
INSERT INTO `cm_thi_list` VALUES (115, 'https://imgservice.suning.cn/uimg1/b2c/image/m_t0k31Yn4Jf2IlzTMUAxA==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1699', '', 39);
INSERT INTO `cm_thi_list` VALUES (116, 'https://imgservice.suning.cn/uimg1/b2c/image/6wTJTAYIiwCiX3wbRd5v6w.png_400w_400h_4e_340w_340h_1e?from=mobile', '1399', '领券100元', 39);
INSERT INTO `cm_thi_list` VALUES (117, 'https://imgservice.suning.cn/uimg1/b2c/image/X-qrNATs6RV-jjT_nvuDJA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1688', '', 39);
INSERT INTO `cm_thi_list` VALUES (118, 'https://imgservice.suning.cn/uimg1/b2c/image/fPaRbW5TfxzXaYIS1_78Hw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '52.9', '每99减20', 40);
INSERT INTO `cm_thi_list` VALUES (119, 'https://imgservice.suning.cn/uimg1/b2c/image/i-PdmtNa2iJAaisWCgpONg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '54.9', '每99减20', 40);
INSERT INTO `cm_thi_list` VALUES (120, 'https://imgservice.suning.cn/uimg1/b2c/image/ie1CqwAVGn3JOXDxqI1FuA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39.9', '', 40);
INSERT INTO `cm_thi_list` VALUES (121, 'https://imgservice.suning.cn/uimg1/b2c/image/r1Jp87-qieDZZ6V_oWT6Sg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '24.9', '每99减20', 41);
INSERT INTO `cm_thi_list` VALUES (122, 'https://imgservice.suning.cn/uimg1/b2c/image/Z_r98edxceF1g9vPTr1yUA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39', '', 41);
INSERT INTO `cm_thi_list` VALUES (123, 'https://imgservice.suning.cn/uimg1/b2c/image/sEIS5weedEuBas7VUB9uyA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '79.9', '每99减20', 41);
INSERT INTO `cm_thi_list` VALUES (124, 'https://imgservice.suning.cn/uimg1/b2c/image/r1Jp87-qieDZZ6V_oWT6Sg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '24.9', '每99减20', 42);
INSERT INTO `cm_thi_list` VALUES (125, 'https://imgservice.suning.cn/uimg1/b2c/image/CKSvsehulUn1TlkONeEx9Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '36.5', '', 42);
INSERT INTO `cm_thi_list` VALUES (126, 'https://imgservice.suning.cn/uimg1/b2c/image/Z_r98edxceF1g9vPTr1yUA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '39', '', 42);
INSERT INTO `cm_thi_list` VALUES (127, 'https://imgservice.suning.cn/uimg1/b2c/image/_mr0dO3ehFaTRXRLuIy_GA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '599', '领券20元', 43);
INSERT INTO `cm_thi_list` VALUES (128, 'https://imgservice.suning.cn/uimg1/b2c/image/oonlYvObkuzYQfy7P01GKA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1388', '领券20元', 43);
INSERT INTO `cm_thi_list` VALUES (129, 'https://imgservice.suning.cn/uimg1/b2c/image/WprS_CfrB-w30yxA_gvsIw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '668', '领券10元', 43);
INSERT INTO `cm_thi_list` VALUES (130, 'https://imgservice.suning.cn/uimg1/b2c/image/BL701zxmPOpu3EwNGw4l7w.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '159', '', 44);
INSERT INTO `cm_thi_list` VALUES (131, 'https://imgservice.suning.cn/uimg1/b2c/image/kZUsBxea4LbTQEuWqQvtMA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '29.9', '', 44);
INSERT INTO `cm_thi_list` VALUES (132, 'https://imgservice.suning.cn/uimg1/b2c/image/fBo6-EDKmTs-vv88lLP1Dg==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '188', '领券15元', 44);
INSERT INTO `cm_thi_list` VALUES (133, 'https://imgservice.suning.cn/uimg1/b2c/image/_e5pxTiSbwtFaK-CKhN6rQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '3', '', 45);
INSERT INTO `cm_thi_list` VALUES (134, 'https://imgservice.suning.cn/uimg1/b2c/image/YncTmKPvQ54fzMTbsvnnTQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '4.9', '', 45);
INSERT INTO `cm_thi_list` VALUES (135, 'https://imgservice.suning.cn/uimg1/b2c/image/0lzVdUyJ7o4yXR9afAxmQA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '412', '', 45);
INSERT INTO `cm_thi_list` VALUES (136, 'https://imgservice.suning.cn/uimg1/b2c/image/27FxPfIutdx82epWT-ajkQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '128', '领券5元', 46);
INSERT INTO `cm_thi_list` VALUES (137, 'https://imgservice.suning.cn/uimg1/b2c/image/ERbaAWszwt0xtXPSmQwQYg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '249', '满299减50', 46);
INSERT INTO `cm_thi_list` VALUES (138, 'https://imgservice.suning.cn/uimg1/b2c/image/IoL4zayYqnNmLxRLv-UuTg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '259', '领券10元', 46);
INSERT INTO `cm_thi_list` VALUES (139, 'https://imgservice.suning.cn/uimg1/b2c/image/foYODWobE3oRK1aJaDgj1Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '49.9', '', 47);
INSERT INTO `cm_thi_list` VALUES (140, 'https://imgservice.suning.cn/uimg1/b2c/image/6m2Z5XejxPUQ1NOX2P7R7g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '59', '', 47);
INSERT INTO `cm_thi_list` VALUES (141, 'https://imgservice.suning.cn/uimg1/b2c/image/iluvBWTRSl5ZqLDMoeE1mQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '25', '', 47);
INSERT INTO `cm_thi_list` VALUES (142, 'https://imgservice.suning.cn/uimg1/b2c/image/PgXWPI0jUa_O9S8QlVSnJw==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '79', '', 48);
INSERT INTO `cm_thi_list` VALUES (143, 'https://imgservice.suning.cn/uimg1/b2c/image/ug1OvN1n280bJYuRumxLmw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '59', '', 48);
INSERT INTO `cm_thi_list` VALUES (144, 'https://imgservice.suning.cn/uimg1/b2c/image/8QN5hz1NoWRo23H5jUfz-g.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '469.3', '满10减3', 48);
INSERT INTO `cm_thi_list` VALUES (145, 'https://imgservice.suning.cn/uimg1/b2c/image/5aLCPxkoJzu_uS3QbmWKbg==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '35.7', '', 49);
INSERT INTO `cm_thi_list` VALUES (146, 'https://imgservice.suning.cn/uimg1/b2c/image/mUWsReX2L5HX7-SOaMjB_Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '33.9', '', 49);
INSERT INTO `cm_thi_list` VALUES (147, 'https://imgservice.suning.cn/uimg1/b2c/image/-AItjMLTwxYtJOQB8klwMg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '49', '', 49);
INSERT INTO `cm_thi_list` VALUES (148, 'https://imgservice.suning.cn/uimg1/b2c/image/Brsg6OURcrxIMu6kiJknEQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '379', '', 50);
INSERT INTO `cm_thi_list` VALUES (149, 'https://imgservice.suning.cn/uimg1/b2c/image/XKY6Z2QelnNfK4-60HMg_Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '448', '领券20元', 50);
INSERT INTO `cm_thi_list` VALUES (150, 'https://imgservice.suning.cn/uimg1/b2c/image/v39yJBFwh62UQJRQWm5siw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '439', '', 50);
INSERT INTO `cm_thi_list` VALUES (151, 'https://image4.suning.cn/uimg/MFS/show/157371715490336269.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '45', '', 51);
INSERT INTO `cm_thi_list` VALUES (152, 'https://image5.suning.cn/uimg/MFS/show/157371725125384127.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '249', '', 51);
INSERT INTO `cm_thi_list` VALUES (153, 'https://image5.suning.cn/uimg/MFS/show/157371721797753246.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '142', '领券2元', 51);
INSERT INTO `cm_thi_list` VALUES (154, 'https://imgservice.suning.cn/uimg1/b2c/image/Yh4lHNkvUo_Zcr0LkUw14A.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '', 52);
INSERT INTO `cm_thi_list` VALUES (155, 'https://imgservice.suning.cn/uimg1/b2c/image/btIojZBzeiYAJjBriHYyOQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '169', '领券40元', 52);
INSERT INTO `cm_thi_list` VALUES (156, 'https://imgservice.suning.cn/uimg1/b2c/image/aS3uK92FKSmKLiCDiaZFjA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '', 52);
INSERT INTO `cm_thi_list` VALUES (157, 'https://image5.suning.cn/uimg/MFS/show/157311592466906366.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '165', '', 53);
INSERT INTO `cm_thi_list` VALUES (158, 'https://image1.suning.cn/uimg/MFS/show/157311345284335145.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '105', '', 53);
INSERT INTO `cm_thi_list` VALUES (159, 'https://image5.suning.cn/uimg/MFS/show/157311603545747856.jpg_0-0-800-800a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '239', '领券3元', 53);
INSERT INTO `cm_thi_list` VALUES (160, 'https://imgservice.suning.cn/uimg1/b2c/image/c0BYK-ksAc0ivzrLkjXIeQ==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1900', '', 54);
INSERT INTO `cm_thi_list` VALUES (161, 'https://imgservice.suning.cn/uimg1/b2c/image/8e_bedkZ1i3OPr48KHojJg==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '3180', '', 54);
INSERT INTO `cm_thi_list` VALUES (162, 'https://imgservice.suning.cn/uimg1/b2c/image/ofPZWJIKlP0y82tt3rBVyQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '2698', '满500减50', 54);
INSERT INTO `cm_thi_list` VALUES (163, 'https://imgservice.suning.cn/uimg1/b2c/image/8lyXDGX3dGZSpLqkV5_P9w.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '999', '每1000减120', 55);
INSERT INTO `cm_thi_list` VALUES (164, 'https://imgservice.suning.cn/uimg1/b2c/image/ow1aauJjnRPI8wg-uZ1ZpQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '169', '领券5元', 55);
INSERT INTO `cm_thi_list` VALUES (165, 'https://imgservice.suning.cn/uimg1/b2c/image/t3mtwtj4PIckG8lWGD3qNw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '549', '领券30元', 55);
INSERT INTO `cm_thi_list` VALUES (166, 'https://imgservice.suning.cn/uimg1/b2c/image/Xen-8Uth0aFv2yLqQRAOuw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '499', '', 56);
INSERT INTO `cm_thi_list` VALUES (167, 'https://imgservice.suning.cn/uimg1/b2c/image/KLPpf0nmsovf3kQ_bcSLdg.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1299', '', 56);
INSERT INTO `cm_thi_list` VALUES (168, 'https://imgservice.suning.cn/uimg1/b2c/image/fuaLq40rM8apreNgxvhmXw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1499', '', 56);
INSERT INTO `cm_thi_list` VALUES (169, 'https://imgservice.suning.cn/uimg1/b2c/image/QzUBjKUaR7MOzvpTjYUb6Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '226', '', 57);
INSERT INTO `cm_thi_list` VALUES (170, 'https://imgservice.suning.cn/uimg1/b2c/image/KbFeLhm3iT6_fj4Qu8e7SA.png_400w_400h_4e_340w_340h_1e?from=mobile', '159', '', 57);
INSERT INTO `cm_thi_list` VALUES (171, 'https://imgservice.suning.cn/uimg1/b2c/image/x36KFXN1FWBioqEe5X7xJQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '189', '', 57);
INSERT INTO `cm_thi_list` VALUES (172, 'https://image.suning.cn/uimg/b2c/newcatentries/0070158849-000000000625358893_3.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '558', '领券10元', 58);
INSERT INTO `cm_thi_list` VALUES (173, 'https://imgservice.suning.cn/uimg1/b2c/image/5Iv8OLGZWGOz-Laz6mZngA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1349', '领券250元', 58);
INSERT INTO `cm_thi_list` VALUES (174, 'https://image.suning.cn/uimg/b2c/newcatentries/0070167431-000000000645439979_2.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '558', '', 58);
INSERT INTO `cm_thi_list` VALUES (175, 'https://imgservice.suning.cn/uimg1/b2c/image/RqpKl8tjd3VleOFuNY14yw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '50.7', '领券5元', 59);
INSERT INTO `cm_thi_list` VALUES (176, 'https://imgservice.suning.cn/uimg1/b2c/image/ELmmOtMt6ZaEdX12VM_dTw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '103', '', 59);
INSERT INTO `cm_thi_list` VALUES (177, 'https://imgservice.suning.cn/uimg1/b2c/image/d7Jc-0GkFr7hSMA12UCqEw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '49', '领券6元', 59);
INSERT INTO `cm_thi_list` VALUES (178, 'https://image.suning.cn/uimg/b2c/newcatentries/0070074252-000000000123567167_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '46', '', 60);
INSERT INTO `cm_thi_list` VALUES (179, 'https://imgservice.suning.cn/uimg1/b2c/image/1V-3Rzfli7-tEP2LNgN_tA==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '33', '', 60);
INSERT INTO `cm_thi_list` VALUES (180, 'https://imgservice.suning.cn/uimg1/b2c/image/10QT0Z7BLYV_dqOK6b4DiA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '44', '', 60);
INSERT INTO `cm_thi_list` VALUES (181, 'https://imgservice.suning.cn/uimg1/b2c/image/E4QOSEdackhttL9VYpdgfw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '799', '', 61);
INSERT INTO `cm_thi_list` VALUES (182, 'https://imgservice.suning.cn/uimg1/b2c/image/7SL46z9o-qKIR3ZXErnmsA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '899', '', 61);
INSERT INTO `cm_thi_list` VALUES (183, 'https://imgservice.suning.cn/uimg1/b2c/image/KJjYbnQZbdMU0Ox1Dx2fGA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '449', '', 61);
INSERT INTO `cm_thi_list` VALUES (184, 'https://imgservice.suning.cn/uimg1/b2c/image/C3BemV-E9fGi1E5EEIGCsA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '199', '', 62);
INSERT INTO `cm_thi_list` VALUES (185, 'https://imgservice.suning.cn/uimg1/b2c/image/4tPCG-ORatULXa7AxblIUQ.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '169', '领券20元', 62);
INSERT INTO `cm_thi_list` VALUES (186, 'https://imgservice.suning.cn/uimg1/b2c/image/v6ozk0RkyZK97iLAPX1aJw==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '219', '', 62);
INSERT INTO `cm_thi_list` VALUES (187, 'https://image.suning.cn/uimg/b2c/newcatentries/0000000000-000000010520528657_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '239', '', 63);
INSERT INTO `cm_thi_list` VALUES (188, 'https://imgservice.suning.cn/uimg1/b2c/image/G42Zv-eE2MnP9BdxNYr7uw==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '399', '', 63);
INSERT INTO `cm_thi_list` VALUES (189, 'https://imgservice.suning.cn/uimg1/b2c/image/Z5-YvktO8FU9NXxR_kbfng.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '584', '领券20元', 63);
INSERT INTO `cm_thi_list` VALUES (190, 'https://image3.suning.cn/uimg/MFS/show/157356280244874540.jpg_0-0-750-750a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '239', '领券40元', 64);
INSERT INTO `cm_thi_list` VALUES (191, 'https://image4.suning.cn/uimg/MFS/show/157356586544538785.jpg_0-0-750-750a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '469', '领券30元', 64);
INSERT INTO `cm_thi_list` VALUES (192, 'https://image2.suning.cn/uimg/MFS/show/157356325108492464.jpg_0-0-750-750a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '209', '领券10元', 64);
INSERT INTO `cm_thi_list` VALUES (193, 'https://imgservice.suning.cn/uimg1/b2c/image/iRaw3xmmCC_lhG7oNBeX2A.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1299', '领券400元', 65);
INSERT INTO `cm_thi_list` VALUES (194, 'https://imgservice.suning.cn/uimg1/b2c/image/p0nX6FZtV1DpRuiTKTCZzg.png_400w_400h_4e_340w_340h_1e?from=mobile', '2648', '领券600元', 65);
INSERT INTO `cm_thi_list` VALUES (195, 'https://imgservice.suning.cn/uimg1/b2c/image/CAwgUoiA-P4vMkN_sPr46Q.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '1212', '领券400元', 65);
INSERT INTO `cm_thi_list` VALUES (196, 'https://imgservice.suning.cn/uimg1/b2c/image/HLqJx_EkJCdhxuJLKtU90w.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '178', '领券10元', 66);
INSERT INTO `cm_thi_list` VALUES (197, 'https://imgservice.suning.cn/uimg1/b2c/image/_Pv3dZfS3e3j4bfQBUfreQ==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '119', '满350减10', 66);
INSERT INTO `cm_thi_list` VALUES (198, 'https://imgservice.suning.cn/uimg1/b2c/image/96OKxv93MyKazF8qdcZYBg==.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '148', '满99减10', 66);
INSERT INTO `cm_thi_list` VALUES (199, 'https://imgservice.suning.cn/uimg1/b2c/image/8BbeVPKda8WTZ0cwCnx86w.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '226', '', 67);
INSERT INTO `cm_thi_list` VALUES (200, 'https://imgservice.suning.cn/uimg1/b2c/image/5_gEpFH29K8qAcCFq_Ubmw.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '219', '', 67);
INSERT INTO `cm_thi_list` VALUES (201, 'https://image5.suning.cn/uimg/MFS/show/157295013467354744.jpg_0-0-750-750a%7C750w_750h_2e%7C340w_340h_1e?from=mobile', '275', '领券10元', 67);
INSERT INTO `cm_thi_list` VALUES (202, 'https://image.suning.cn/uimg/b2c/newcatentries/0070068402-000000000122455209_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '198', '领券10元', 68);
INSERT INTO `cm_thi_list` VALUES (203, 'https://imgservice.suning.cn/uimg1/b2c/image/r_4eWuQsepnO3j8C-UtxNA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '619', '满299减20', 68);
INSERT INTO `cm_thi_list` VALUES (204, 'https://image.suning.cn/uimg/b2c/newcatentries/0070068402-000000000126731960_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '258', '领券10元', 68);
INSERT INTO `cm_thi_list` VALUES (205, 'http://imgservice.suning.cn/uimg1/b2c/image/kcfGinMvAniUXQxGfb0Big.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '45.9', '领券5元', 69);
INSERT INTO `cm_thi_list` VALUES (206, 'http://image.suning.cn/uimg/b2c/newcatentries/0070074466-000000000148289541_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '113', '领券50元', 69);
INSERT INTO `cm_thi_list` VALUES (207, 'http://imgservice.suning.cn/uimg1/b2c/image/miTxHYAHGgLCytxSO6O8Ew.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '149', '领券5元', 69);
INSERT INTO `cm_thi_list` VALUES (208, 'http://image.suning.cn/uimg/b2c/newcatentries/0070184131-000000010178582455_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '20.9', '', 70);
INSERT INTO `cm_thi_list` VALUES (209, 'http://imgservice.suning.cn/uimg1/b2c/image/10QT0Z7BLYV_dqOK6b4DiA.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '44', '', 70);
INSERT INTO `cm_thi_list` VALUES (210, 'http://image.suning.cn/uimg/b2c/newcatentries/0070097855-000000010070387054_1.jpg_400w_400h_4e%7C340w_340h_1e?from=mobile', '15.9', '', 70);

SET FOREIGN_KEY_CHECKS = 1;
