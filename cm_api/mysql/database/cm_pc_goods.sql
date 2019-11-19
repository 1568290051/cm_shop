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

 Date: 19/11/2019 11:37:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_pc_goods
-- ----------------------------
DROP TABLE IF EXISTS `cm_pc_goods`;
CREATE TABLE `cm_pc_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '电脑标题',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '电脑图片',
  `cpuType` tinyint(3) NOT NULL COMMENT 'cpu类型：0-Intel i9, 1-Intel i7, 2-Intel i5, 3-Intel i3,  4-锐龙7, 5-锐龙5, 6-高通骁龙',
  `store` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '所属店铺',
  `sales` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '销量',
  `estim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '评价总数',
  `fdback` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '好评率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_pc_goods
-- ----------------------------
INSERT INTO `cm_pc_goods` VALUES (1, '小米（MI）RedmiBook14锐龙版轻薄本搭载（ R5-3500U 8G 256GB）AMD处理器笔记本电脑预装Win10正版 手环疾速解锁 全新小米互传 银色', 'https://imgservice2.suning.cn/uimg1/b2c/image/LVMYnVZH3Wdd2Z26-qTjBA.jpg_300w_300h_4e', 5, '小米苏宁自营旗舰店', '2136', '100', '96%');
INSERT INTO `cm_pc_goods` VALUES (2, '华硕(ASUS)灵耀Deluxe14 14英寸微边全面屏超轻薄创意设计笔记本第八代英特尔®酷睿™i5(i5-8265U 8G512GB MX150-2G独显)冰钻银', 'https://imgservice2.suning.cn/uimg1/b2c/image/CkOnVKTZPuPZ6ucI3hP4RQ.jpg_300w_300h_4e', 2, '华硕电脑苏宁自营旗舰店', '9341', '700', '100%');
INSERT INTO `cm_pc_goods` VALUES (3, '联想(Lenovo)小新青春版 2019年新款 英特尔酷睿i3 14英寸轻薄本笔记本电脑(I3-8145U 4G 256GB+16G傲腾 )追梦银', 'https://imgservice3.suning.cn/uimg1/b2c/image/uoWJXs2Ry42AWWeoIfu3lg.jpg_300w_300h_4e', 3, '联想苏宁自营旗舰店', '5011', '100', '96%');
INSERT INTO `cm_pc_goods` VALUES (4, '戴尔（DELL）G3 3590-R1545BL 第九代英特尔®酷睿™i5 15.6英寸游戏本笔记本电脑（i5-9300H/8G内存/1TB+128GB/GTX 1650/4G独显）', 'https://imgservice1.suning.cn/uimg1/b2c/image/sw6XRCv9dYgccfrcGmWZcQ.jpg_300w_300h_4e', 2, '戴尔苏宁自营旗舰店', '5010', '4400', '99%');
INSERT INTO `cm_pc_goods` VALUES (5, '惠普(HP)星系列星14-ce3057TX 14英寸轻薄本笔记本电脑(i5-1035G7 8G 512SSD MX250 独显）', 'https://imgservice2.suning.cn/uimg1/b2c/image/GkQDPBXMZV_ozy4poolO9A.jpg_300w_300h_4e', 2, '惠普苏宁自营旗舰店', '4917', '100', '97%');
INSERT INTO `cm_pc_goods` VALUES (6, '华硕(ASUS)adol 14英寸四面窄边框轻薄本笔记本电脑第八代英特尔®酷睿™i5(i5-8265U 8G 256GB固态 IPS)银蓝灰', 'https://imgservice.suning.cn/uimg1/b2c/image/ifTc4QjwgtGevjmqkB2d1g.jpg_400w_400h_4e', 2, '苏宁自营', '6085', '4700', '99%');
INSERT INTO `cm_pc_goods` VALUES (7, '惠普(HP)星系列星14-ce3035TX14英寸轻薄本笔记本电脑(i5-1035G7 8G 512SSD MX250 粉色）', 'https://imgservice1.suning.cn/uimg1/b2c/image/HP4e7CWZUS9HJJyAaP64rA.jpg_300w_300h_4e', 2, '惠普苏宁自营旗舰店', '2605', '90', '99%');
INSERT INTO `cm_pc_goods` VALUES (8, '小米(MI)Pro 15.6英寸全金属轻薄本2019新款笔记本电脑(i5-8250U 8G 256GSSD 2G独显 预装office 指纹识别 背光键盘 深空灰)', 'https://imgservice3.suning.cn/uimg1/b2c/image/W2Zvub8e7aNM3o1nQFruLA.jpg_300w_300h_4e', 2, '小米苏宁自营旗舰店', '4981', '1600', '95%');
INSERT INTO `cm_pc_goods` VALUES (9, '惠普(hp) 光影精灵5代第9代英特尔酷睿i5游戏本笔记本电脑（i5-9300H 8G 512SSD GTX1650 傲腾增强型SSD32G）', 'https://imgservice4.suning.cn/uimg1/b2c/image/CPtrgbb0eN7X4BSJkNZmRQ.jpg_300w_300h_4e', 2, '惠普苏宁自营旗舰店', '10711', '3100', '99%');
INSERT INTO `cm_pc_goods` VALUES (10, 'Apple MacBook Air 13.3英寸 i5处理器 8GB 128GB SSD 银色 笔记本电脑 超薄本 D32 MQD32CH/A', 'https://imgservice3.suning.cn/uimg1/b2c/image/kHPrwni97ILf1rY2ObarHQ.jpg_300w_300h_4e', 2, 'Apple产品苏宁自营旗舰店', '3022', '10', '99%');
INSERT INTO `cm_pc_goods` VALUES (11, '联想(Lenovo)Ideapad330 N4100 8GB 500GB+128GB 2G 独显15.6英寸 商务办公 学生游戏 笔记本电脑', 'https://imgservice.suning.cn/uimg1/b2c/image/9BrL9J2IwIs7NzIuEecskw.jpg_400w_400h_4e', 6, '明硕电脑专营店', '8436', '800', '99%');
INSERT INTO `cm_pc_goods` VALUES (12, '联想Lenovo Ideapad330C 340C升级版 15.6英寸 I7-8565U 8G 512GB MX110 2G 轻薄大屏商务游戏笔记本电脑窄边框FHD 定制版 优雅银', 'https://imgservice1.suning.cn/uimg1/b2c/image/KMKlnNwsYk8HM4SEBY3CVA.jpg_300w_300h_4e', 1, '宏金远航电脑专营店', '8362', '200', '99%');
INSERT INTO `cm_pc_goods` VALUES (13, '华硕(ASUS)飞行堡垒7代15.6英寸窄边框电竞屏学生游戏本笔记本电脑 (九代英特尔® 酷睿™ i5-9300H 8GB 512GB GTX1650)金属电竞版（FX95）', 'https://imgservice1.suning.cn/uimg1/b2c/image/mXrRuOHyBcW8EiI__pkryg.jpg_300w_300h_4e', 2, '华硕电脑苏宁自营旗舰店', '8099', '50', '98%');
INSERT INTO `cm_pc_goods` VALUES (14, '戴尔（DELL）Ins 14-5490-R2625S 英特尔®酷睿™i5 14英寸灵越轻薄笔记本电脑学生电脑（i5-10210U 8G 1TGB固态硬盘）', 'https://imgservice1.suning.cn/uimg1/b2c/image/mk8PHJwQObeEJaTDIuz7yQ.jpg_300w_300h_4e', 2, '戴尔苏宁自营旗舰店', '11865', '100', '100%');
INSERT INTO `cm_pc_goods` VALUES (15, '雷神(THUNDEROBOT)911MT15.6英寸窄边框全面屏发烧游戏本笔记本电脑（9代酷睿I7-9750H 8G GTX1650 256GB高速固态+1T机械）', 'https://imgservice1.suning.cn/uimg1/b2c/atmosphere/EwYVQNF0eEEu7rVSW6cEsA.jpg_300w_300h_4e', 1, '雷神电脑苏宁自营旗舰店', '10630', '200', '100%');
INSERT INTO `cm_pc_goods` VALUES (16, 'Asus 华硕顽石全新2019款手提电脑上网商务办公超薄笔记本电脑轻薄便携窄边框学生男生女生款超级本8G 500GB+128GB 2G 定制款畅玩版', 'https://imgservice.suning.cn/uimg1/b2c/image/c8wkFiyfMZNdTkVQIio2mw.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '7740', '100', '98%');
INSERT INTO `cm_pc_goods` VALUES (17, '华硕（ASUS）顽石锋锐版 V580QR系列 15.6英寸笔记本电脑（AMD FX-9800P 4GB 256GB AMD Radeon™ 535)金色', 'https://imgservice3.suning.cn/uimg1/b2c/image/5F1NY-lN9hCCfFAgXC5MxA.jpg_300w_300h_4e', 5, '华硕电脑苏宁自营旗舰店', '8780', '10', '85%');
INSERT INTO `cm_pc_goods` VALUES (18, '惠普(HP)星14青春版轻薄窄边框办公学生手提笔记本电脑（14英寸 R3-3200U 8G内存 512G固态', 'https://imgservice2.suning.cn/uimg1/b2c/image/VgXT2QrqkKC2G7whvJDiKQ.jpg_300w_300h_4e', 6, '惠普佳联专卖店', '4860', '300', '99%');
INSERT INTO `cm_pc_goods` VALUES (19, '联想（Lenovo）扬天V110 14英寸商务家用轻薄便携笔记本电脑（AMD E2-9010 8G内存 256GB固态 2G独显 无光驱）定制 黑', 'https://imgservice5.suning.cn/uimg1/b2c/image/Lo3c4KdRE2i6AX38Y32msg.jpg_300w_300h_4e', 5, '京兴隆电脑旗舰店', '5858', '1000', '99%');
INSERT INTO `cm_pc_goods` VALUES (20, '神舟战神Z7-CT7NA 15.6英寸电竞吃鸡游戏本全面屏笔记本电脑（I7-9750H 8GB 512GB SSD GTX1660Ti 6G独显 IPS)', 'https://imgservice4.suning.cn/uimg1/b2c/image/hrhUCCHpCwdM3kUzuLA9Pg.jpg_300w_300h_4e', 1, '神舟战神苏宁自营旗舰店', '11552', '1300', '99%');
INSERT INTO `cm_pc_goods` VALUES (21, '华硕（ASUS）顽石窄边框K505超轻薄本学生本商用办公本笔记本电脑（A6-9225 8GB 1TB 128GB 2G独显） 定制版（白灰金三色可选）', 'https://imgservice.suning.cn/uimg1/b2c/image/uNRrf-H9Pio3qeaxvGDUKg.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '3685', '300', '98%');
INSERT INTO `cm_pc_goods` VALUES (22, '华为（HUAWEI）荣耀MagicBook AMD锐龙5 3500U移动处理器 8G内存 定制512GB纯固态 集成显卡 14.0英寸 轻薄本 商务办公 娱乐 笔记本电脑 无系统', 'https://imgservice3.suning.cn/uimg1/b2c/image/WNYnIvkJ81xK-Oe5HoK3Rw.jpg_300w_300h_4e', 5, '宏金远航电脑专营店', '9918', '100', '96%');
INSERT INTO `cm_pc_goods` VALUES (23, '联想Lenovo 小新Air 14英寸 AMD锐龙版 R5-3500U 升级20G 512GB PCIE固态 集成显卡 办公工作 移动处理器 金属机身 便携轻薄本 定制 笔记本电脑', 'https://imgservice1.suning.cn/uimg1/b2c/image/AfzE8kmm55F5yEN9wSvc2A.jpg_300w_300h_4e', 5, '宏金远航电脑专营店', '3410', '100', '98%');
INSERT INTO `cm_pc_goods` VALUES (24, '雷神(THUNDEROBOT)召唤师911Plus17.3英寸72色域电竞屏发烧游戏本笔记本电脑（i7-9750H 8G GTX1660Ti 512GB 144Hz）', 'https://imgservice2.suning.cn/uimg1/b2c/image/yfqpmBED56r9t_2bEWQJIg.jpg_300w_300h_4e', 1, '雷神电脑苏宁自营旗舰店', '4551', '500', '99%');
INSERT INTO `cm_pc_goods` VALUES (25, '2019款 新品 Apple MacBook Air 13.3英寸 笔记本电脑 i5 1.6GHz 8GB 128GB 银色 MVFK2CH/A', 'https://imgservice4.suning.cn/uimg1/b2c/image/uHekBDRey9VgN0dyIH23Ig.jpg_300w_300h_4e', 2, 'Apple产品苏宁自营旗舰店', '2741', '200', '100%');
INSERT INTO `cm_pc_goods` VALUES (26, 'Asus 华硕灵耀TP301新品intel i5高清手提电脑上网商务办公超极本触屏笔记本电脑二合一轻薄便携学生本360度翻转触摸屏8GB512GB定制款', 'https://imgservice.suning.cn/uimg1/b2c/image/cyM_AmFS0VUhxY9wq2NS4w.jpg_400w_400h_4e', 2, '点个赞电脑专营店', '10536', '50', '98%');
INSERT INTO `cm_pc_goods` VALUES (27, '联想(Lenovo)ideapad L340 15.6英寸大屏笔记本电脑 (i5-8265U 8G 1TB+256GB 2G独显 定制 )家用影音商务办公企业采购游戏本轻薄本', 'https://imgservice4.suning.cn/uimg1/b2c/image/G0nCUob3ZvZCqLv9c6ZkLw.jpg_300w_300h_4e', 2, '联想苏宁自营旗舰店', '8869', '80', '99%');
INSERT INTO `cm_pc_goods` VALUES (28, '惠普(hp) 光影精灵5代 九代酷睿i7 15.6英寸创意设计笔记本电脑( i7-9750H 8G 512GB GTX1660Ti MAX-Q 144HZ)', 'https://imgservice5.suning.cn/uimg1/b2c/image/LKcduq7UZxx8QQU22POSFw.jpg_300w_300h_4e', 1, '惠普苏宁自营旗舰店', '6912', '1100', '99%');
INSERT INTO `cm_pc_goods` VALUES (29, '联想(Lenovo)小新14.0英寸 2019年新款 英特尔酷睿i5 轻薄本笔记本电脑(i5-8265U 8G 256G SSD )渣渣灰', 'https://imgservice2.suning.cn/uimg1/b2c/image/mSua166XvB9qYb-9n1sngQ.jpg_300w_300h_4e', 2, '联想苏宁自营旗舰店', '6838', '2300', '99%');
INSERT INTO `cm_pc_goods` VALUES (30, '华硕ASUS飞行堡垒6代FX86（酷睿i5-8300H 8G内存1TB+256GB固态 GTX1050Ti-4G独显）标配版 15.6英寸大屏本轻薄本发烧电竞屏专业游戏本笔记本电脑', 'https://imgservice5.suning.cn/uimg1/b2c/image/UTPOTJvlIwafel2x2-b-1A.jpg_300w_300h_4e', 2, '华硕协之鹏电脑专卖店', '9367', '1700', '99%');
INSERT INTO `cm_pc_goods` VALUES (31, '华硕(ASUS)畅玩版15.6英寸顽石商务办公娱乐本轻薄本游戏本学生本笔记本电脑手提电脑正品全新 FX-8800P四核 8G内存 1TB+128GB 2G定制款畅玩版', 'https://imgservice.suning.cn/uimg1/b2c/image/pja1cju6GIJ2DNUb1_oqdw.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '9732', '1100', '99%');
INSERT INTO `cm_pc_goods` VALUES (32, '戴尔（DELL）G3-3590-R1742BL 第九代英特尔®酷睿™i7 15.6英寸游戏本笔记本电脑（i7-9750H/8G内存/512GB 固态/GTX 1650/4G独显）', 'https://imgservice4.suning.cn/uimg1/b2c/image/rKZqR6LMl_T9S5l30GLBvw.jpg_300w_300h_4e', 1, '戴尔苏宁自营旗舰店', '6623', '1000', '99%');
INSERT INTO `cm_pc_goods` VALUES (33, '联想Lenovo Ideapad720S 14.0英寸轻薄本笔记本电脑( I7-8550U 8G 256GB 2G独显 银)', 'https://imgservice2.suning.cn/uimg1/b2c/image/ZQ2FL14bg0PE3ZdMgU9HHA.jpg_300w_300h_4e', 1, '联想苏宁自营旗舰店', '5863', '3600', '99%');
INSERT INTO `cm_pc_goods` VALUES (34, '华硕(ASUS) VivoBook15 V5000FL8265 15.6英寸四面窄边轻薄游戏笔记本电脑(i5-8265U 8G 512GBSSD MX250 2G独显)银色 标配', 'https://imgservice2.suning.cn/uimg1/b2c/image/4N9Q0vCeTWfHHcgtjwAAmQ.jpg_300w_300h_4e', 2, '曜银电脑专营店', '11177', '100', '100%');
INSERT INTO `cm_pc_goods` VALUES (35, '戴尔（DELL）燃7000 Ins 14-5480-R1625R 英特尔®酷睿™i5 14英寸灵越轻薄本学生本笔记本电脑（i5-8265U 8G 256GBSSD 2G独显）', 'https://imgservice4.suning.cn/uimg1/b2c/image/oii6swMVrU9f-H757sldww.jpg_300w_300h_4e', 2, '戴尔苏宁自营旗舰店', '9119', '500', '99%');
INSERT INTO `cm_pc_goods` VALUES (36, '华硕(ASUS) E402 X402轻薄本轻薄本办公本学生本笔记本电脑手提电脑BP9000九代处理器 4GB512GB固态硬盘 超轻薄 白蓝可选 定制款', 'https://imgservice.suning.cn/uimg1/b2c/image/BNAHa1q4-Lpxu2ga5LdBCA.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '9107', '100', '100%');
INSERT INTO `cm_pc_goods` VALUES (37, '联想(Lenovo)小新15新款2019轻薄笔记本电脑i5-8265U 8G 256GB固态 MX250满血版显卡2G 15.6英寸商务游戏学生学习手提超极本定制版 银色', 'https://imgservice5.suning.cn/uimg1/b2c/image/yBxQdGZtVUtnjm4sVxKX0Q.jpg_300w_300h_4e', 2, '明硕电脑专营店', '3094', '100', '100%');
INSERT INTO `cm_pc_goods` VALUES (38, '华为 HUAWEI MateBook 14 第三方Linux版 14英寸全面屏超轻薄笔记本电脑（ i7-8565U 8GB 512GB固态硬盘 MX250独显 2K高清屏 皓月银）', 'https://imgservice1.suning.cn/uimg1/b2c/image/p1BTpER297rk0Dygfuzzyw.jpg_300w_300h_4e', 1, '华为电脑苏宁自营旗舰店', '3304', '60', '95%');
INSERT INTO `cm_pc_goods` VALUES (39, '华硕（ASUS）顽石 A441 14英寸轻薄时尚商务办公便携笔记本电脑定制', 'https://imgservice1.suning.cn/uimg1/b2c/image/cpqv-cQoJMyLk2eV4tRI7g.jpg_300w_300h_4e', 6, '京兴隆电脑旗舰店', '4658', '400', '99%');
INSERT INTO `cm_pc_goods` VALUES (40, '2019款 新品 Apple MacBook Pro 13.3英寸 笔记本电脑 i5 1.4GHz 8GB 128GB 轻薄本 有触控栏 银色 MUHQ2CH/A', 'https://imgservice2.suning.cn/uimg1/b2c/image/S9eByoZCXxNFbcrwLqMUkA.jpg_300w_300h_4e', 2, 'Apple产品苏宁自营旗舰店', '2829', '200', '99%');
INSERT INTO `cm_pc_goods` VALUES (41, '华硕ASUS飞行堡垒7代（锐龙R7-3750H 8G内存512GB固态 GTX1660Ti 6G独显 120Hz电竞屏）官方标配 15.6英寸轻薄本大屏发烧专业游戏本笔记本电脑', 'https://imgservice.suning.cn/uimg1/b2c/image/JT_1fSPc-BKzvy7hhelhBw.jpg_400w_400h_4e', 4, '协之鹏电脑专营店', '4171', '300', '99%');
INSERT INTO `cm_pc_goods` VALUES (42, '华为 HUAWEI MateBook X Pro 2019款 第三方Linux版 13.9英寸全面屏轻薄本笔记本电脑（i7-8565U 8GB 512GB固态硬盘 独显 深空灰）', 'https://imgservice1.suning.cn/uimg1/b2c/image/e5BGu0_D811J14IBUgz93Q.jpg_300w_300h_4e', 1, '华为电脑苏宁自营旗舰店', '6617', '400', '99%');
INSERT INTO `cm_pc_goods` VALUES (43, '联想(Lenovo) ideapad330C 15.6英寸 I5-8250U 8G 256GB MX110 2G独显 320C 升级版 家用商务办公 轻薄本游戏便携 手提笔记本电脑', 'https://imgservice3.suning.cn/uimg1/b2c/image/3P7RZY-Pv9lI6lWdzhMbwg.jpg_300w_300h_4e', 2, '宏金远航电脑专营店', '3011', '400', '99%');
INSERT INTO `cm_pc_goods` VALUES (44, '戴尔（DELL）Ins 14-5490-R1625S 英特尔®酷睿™i5 14英寸灵越轻薄笔记本电脑学生电脑（i5-10210U 8G 512GB固态硬盘2G独显）', 'https://imgservice5.suning.cn/uimg1/b2c/image/mHlF0-N7ACuzcXosWR5kMA.jpg_300w_300h_4e', 2, '戴尔苏宁自营旗舰店', '4993', '500', '99%');
INSERT INTO `cm_pc_goods` VALUES (45, '神舟战神G7-CT7NA 17.3英寸电竞吃鸡游戏本全面屏笔记本电脑（I7-9750H 8GB 512GB SSD GTX1660Ti 6G 144HZ 72%色域)', 'https://imgservice3.suning.cn/uimg1/b2c/image/hQ9b0ZnTaZLwTVFm3c4DHQ.jpg_300w_300h_4e', 1, '神舟战神苏宁自营旗舰店', '11347', '700', '99%');
INSERT INTO `cm_pc_goods` VALUES (46, '华硕(ASUS)顽石轻薄版A505ZA 商务学生本手提便携轻薄本笔记本电脑手提电脑锐龙R3-2300U 8G 256G固态 VEGA3核显 香槟金定制版', 'https://imgservice.suning.cn/uimg1/b2c/image/dx7zZV_VgLNi-XOfUfDg2w.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '7323', '2', '100%');
INSERT INTO `cm_pc_goods` VALUES (47, '联想（Lenovo）ideapad120S 14英寸轻薄本笔记本电脑(N3350 4G 128GB SSD 银色)', 'https://imgservice2.suning.cn/uimg1/b2c/image/NuhyhfMKsQZ7SnfumU5gcw.png_300w_300h_4e', 6, '联想苏宁自营旗舰店', '4630', '1', '99%');
INSERT INTO `cm_pc_goods` VALUES (48, '华硕(ASUS)灵耀S4200/R421UA 14.0英寸超极本轻薄本学生本笔记本电脑 i3 8GB内存 256GB固态 高清屏', 'https://imgservice2.suning.cn/uimg1/b2c/image/7dTQcMk6ujSu---7YHvV-A.jpg_300w_300h_4e', 3, '明硕电脑专营店', '5418', '500', '99%');
INSERT INTO `cm_pc_goods` VALUES (49, '戴尔（DELL）灵越燃5000 5580 15.6英寸 轻薄本 游戏本 笔记本电脑 i5-8265U 8G 1TB+128GB固态 2G独显 高清屏 银色 定制', 'https://imgservice2.suning.cn/uimg1/b2c/image/6s2H81An-ixm1xJItbROyw.png_300w_300h_4e', 2, '鑫恒浩电脑旗舰店', '2923', '2000', '99%');
INSERT INTO `cm_pc_goods` VALUES (50, '华硕(ASUS)灵耀Deluxe13 13.3英寸微边全面屏超轻薄创意设计笔记本第八代英特尔®酷睿™i5(i5-8265U 8G512GB MX150-2G独显)尊爵蓝', 'https://imgservice2.suning.cn/uimg1/b2c/image/05dFfxFqRTnVB-97WPjIqQ.jpg_300w_300h_4e', 2, '华硕电脑苏宁自营旗舰店', '6815', '700', '99%');
INSERT INTO `cm_pc_goods` VALUES (51, '华硕顽石（ASUS）全面屏 灵耀四面窄边框大学生本女生款轻薄游戏笔记本电脑手提电脑i58250U 8G 512G固态 2G独显高清屏 灰 银色 定制款', 'https://imgservice.suning.cn/uimg1/b2c/image/DB1KCzdzS_awSdMjMsWUXg.jpg_400w_400h_4e', 2, '点个赞电脑专营店', '6472', '1600', '99%');
INSERT INTO `cm_pc_goods` VALUES (52, '联想（Lenovo）小新15 2019款 英特尔酷睿 i5-8265U 8G 512GB 2G独显 15.6英寸笔记本电脑轻薄游戏本窄边框商务办公本娱乐学生 蓝色 银灰可选 定制版', 'https://imgservice2.suning.cn/uimg1/b2c/image/IaH4Bwkt008NhiF0aZJgyg.jpg_300w_300h_4e', 2, '联想嘉合永兴专卖店', '5082', '200', '99%');
INSERT INTO `cm_pc_goods` VALUES (53, '华硕a豆（adol）A豆UN8250（i5-8250U 8G内存256GB固态 MX150-2G独显）官方标配 13.3英寸全面屏指纹识别轻薄本超长续航本商务办公本娱乐本笔记本电脑', 'https://imgservice2.suning.cn/uimg1/b2c/image/BSu8T7z8oiGyTGSweogKFA.jpg_300w_300h_4e', 2, '华硕协之鹏电脑专卖店', '4579', '600', '99%');
INSERT INTO `cm_pc_goods` VALUES (54, '华硕（ASUS）顽石 FL8000UQ 15.6英寸轻薄便携游戏笔记本电脑定制 正派灰', 'https://imgservice1.suning.cn/uimg1/b2c/image/gMhiw3p-cbruI3bBkzUdvQ.jpg_300w_300h_4e', 6, '京兴隆电脑旗舰店', '6735', '600', '99%');
INSERT INTO `cm_pc_goods` VALUES (55, '惠普(hp)ENVY x360 13-ag0047AU 13.3英寸翻转轻薄本笔记本电脑（Ryzen5-2500U 8GB 512SSD IPS触控屏）', 'https://imgservice3.suning.cn/uimg1/b2c/image/UeURc010qhZ81P6w0Cmq0g.jpg_300w_300h_4e', 6, '惠普苏宁自营旗舰店', '7108', '1100', '99%');
INSERT INTO `cm_pc_goods` VALUES (56, '华硕（ASUS）灵耀商务办公本超薄本窄边框超级本触控触摸屏翻转笔记本电脑平板电脑二合一手提电脑轻薄本酷睿M3 7Y30 4G内存128G固态+128G固态定制版', 'https://imgservice.suning.cn/uimg1/b2c/image/ksatmJlgySbdXPVojJZ1zw.jpg_400w_400h_4e', 6, '点个赞电脑专营店', '6153', '2', '100%');
INSERT INTO `cm_pc_goods` VALUES (57, '神舟战神Z7-CT7VH 15.6英寸电竞吃鸡游戏本全面屏笔记本电脑（I7-9750H 8GB 256GB SSD+1TB GTX1660Ti 6G独显 IPS)', 'https://imgservice1.suning.cn/uimg1/b2c/image/NY8u9mA0SKfQi8kqmpWxwg.jpg_300w_300h_4e', 1, '神舟战神苏宁自营旗舰店', '2521', '400', '99%');
INSERT INTO `cm_pc_goods` VALUES (58, '联想ThinkPad S3 锋芒 (0PCD) 2019新品 第八代英特尔®酷睿™i7 14英寸轻薄本笔记本电脑 i7-8565U 8G 512G SSD 2G独显 FHD 钛度灰', 'https://imgservice3.suning.cn/uimg1/b2c/image/vzFjAAn12Q-7DTv81fZ1PQ.jpg_300w_300h_4e', 1, 'ThinkPad苏宁自营旗舰店', '8456', '300', '99%');
INSERT INTO `cm_pc_goods` VALUES (59, '戴尔（DELL）游匣G3 15.6英寸游戏本轻薄学生电竞笔记本电脑（i5-9300H 8G 1TB+128GB PCIe固态 GTX1650 4G独显 黑色 72%色域）定制', 'https://imgservice1.suning.cn/uimg1/b2c/image/6NZIgkLeBpDMrMJPyRg5jw.jpg_300w_300h_4e', 2, '曜银电脑专营店', '2276', '3500', '99%');
INSERT INTO `cm_pc_goods` VALUES (60, '华硕顽石(ASUS) 六代FL8700F 15.6英寸笔记本电脑(i5-8265U 4G 256GSSD 2G独显 傲腾16G)银色', 'https://imgservice1.suning.cn/uimg1/b2c/image/BA_HX5buvlL5dV8vWI9m_A.jpg_300w_300h_4e', 2, '华硕电脑苏宁自营旗舰店', '5304', '20', '100%');

SET FOREIGN_KEY_CHECKS = 1;
