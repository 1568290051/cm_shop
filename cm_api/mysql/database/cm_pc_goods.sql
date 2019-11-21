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

 Date: 20/11/2019 11:35:46
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
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '电脑价格',
  `cpuType` tinyint(3) NOT NULL COMMENT 'cpu类型：0-Intel i9, 1-Intel i7, 2-Intel i5, 3-Intel i3,  4-锐龙7, 5-锐龙5, 6-高通骁龙',
  `scrSize` decimal(3, 1) NULL DEFAULT NULL COMMENT '屏幕尺寸',
  `store` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '所属店铺',
  `sales` int(10) NOT NULL COMMENT '销量',
  `estim` int(10) NOT NULL COMMENT '评价总数',
  `fdback` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '好评率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_pc_goods
-- ----------------------------
INSERT INTO `cm_pc_goods` VALUES (1, '2019款 新品 Apple MacBook Pro 13.3英寸 笔记本电脑 酷睿i5 1.4GHz 8GB 128GB 有触控栏 银色 MUHQ2 中文版', 'https://imgservice.suning.cn/uimg1/b2c/image/KRrWwEJ68MbWHempKyqR8g.jpg_400w_400h_4e', '8878', 2, 13.3, '黑海数码海外官方旗舰店', 4265, 100, '97%');
INSERT INTO `cm_pc_goods` VALUES (2, '联想(Lenovo)小新青春版 2019年新款 英特尔酷睿i3 14英寸轻薄本笔记本电脑(I3-8145U 4G 256GB+16G傲腾 )追梦银', 'https://imgservice3.suning.cn/uimg1/b2c/image/uoWJXs2Ry42AWWeoIfu3lg.jpg_300w_300h_4e', '3030', 3, 14.0, '联想苏宁自营旗舰店', 4372, 100, '96%');
INSERT INTO `cm_pc_goods` VALUES (3, '华硕(ASUS)灵耀Deluxe14 14英寸微边全面屏超轻薄创意设计笔记本第八代英特尔®酷睿™i5(i5-8265U 8G512GB MX150-2G独显)冰钻银', 'https://imgservice2.suning.cn/uimg1/b2c/image/CkOnVKTZPuPZ6ucI3hP4RQ.jpg_300w_300h_4e', '6999', 2, 14.0, '华硕电脑苏宁自营旗舰店', 4208, 800, '100%');
INSERT INTO `cm_pc_goods` VALUES (4, '神舟战神Z7M-CT7NA 15.6英寸电竞吃鸡游戏本全面屏笔记本电脑（I7-9750H 8GB 512GB SSD GTX1650 4G独显 IPS)', 'https://imgservice3.suning.cn/uimg1/b2c/image/MiXibF2hZ9oP_L-Wg-dVJw.jpg_300w_300h_4e', '5999', 1, 15.6, '神舟战神苏宁自营旗舰店', 8636, 900, '99%');
INSERT INTO `cm_pc_goods` VALUES (5, '戴尔（DELL）G3 3590-R1545BL 第九代英特尔®酷睿™i5 15.6英寸游戏本笔记本电脑（i5-9300H/8G内存/1TB+128GB/GTX 1650/4G独显）', 'https://imgservice1.suning.cn/uimg1/b2c/image/sw6XRCv9dYgccfrcGmWZcQ.jpg_300w_300h_4e', '5699', 2, 15.6, '戴尔苏宁自营旗舰店', 4739, 4600, '99%');
INSERT INTO `cm_pc_goods` VALUES (6, '联想(Lenovo)Ideapad330 N4100 8GB 500GB+128GB 2G 独显15.6英寸 商务办公 学生游戏 笔记本电脑', 'https://imgservice.suning.cn/uimg1/b2c/image/9BrL9J2IwIs7NzIuEecskw.jpg_400w_400h_4e', '3099', 6, 15.6, '明硕电脑专营店', 8200, 800, '99%');
INSERT INTO `cm_pc_goods` VALUES (7, '联想(Lenovo)小新14.0英寸 锐龙版R5 2019年新款 轻薄本笔记本电脑(R5 3500U 8G 1T+256G SSD PCIE IPS)渣渣灰', 'https://imgservice4.suning.cn/uimg1/b2c/image/XzCEKSNnHzsMrGOl1_WZrg.jpg_300w_300h_4e', '3699', 5, 14.0, '联想苏宁自营旗舰店', 5990, 800, '99%');
INSERT INTO `cm_pc_goods` VALUES (8, 'Apple MacBook Air 13.3英寸 i5处理器 8GB 128GB SSD 银色 笔记本电脑 超薄本 D32 MQD32CH/A', 'https://imgservice3.suning.cn/uimg1/b2c/image/kHPrwni97ILf1rY2ObarHQ.jpg_300w_300h_4e', '6209', 2, 13.3, 'Apple产品苏宁自营旗舰店', 4713, 10, '99%');
INSERT INTO `cm_pc_goods` VALUES (9, '联想ThinkPad E490（2XCD）第八代英特尔®酷睿™i5 14.0英寸轻薄本笔记本电脑i5-8265U 8G 1TB+128GB 2G独显 FHD', 'https://imgservice3.suning.cn/uimg1/b2c/image/fA-NG6ZH1HKBINRUKdeBgg.jpg_300w_300h_4e', '4899', 2, 14.0, 'ThinkPad苏宁自营旗舰店', 6582, 1100, '99%');
INSERT INTO `cm_pc_goods` VALUES (10, '惠普(HP)星系列星14-ce3057TX 14英寸轻薄本笔记本电脑(i5-1035G7 8G 512SSD MX250 独显）', 'https://imgservice2.suning.cn/uimg1/b2c/image/GkQDPBXMZV_ozy4poolO9A.jpg_300w_300h_4e', '5299', 2, 14.0, '惠普苏宁自营旗舰店', 6170, 100, '97%');
INSERT INTO `cm_pc_goods` VALUES (11, 'Asus 华硕灵耀TP301新品intel i5高清手提电脑上网商务办公超极本触屏笔记本电脑二合一轻薄便携学生360度翻转大学生12GB 512GB定制款', 'https://imgservice.suning.cn/uimg1/b2c/image/O9FY7vN0AB9CNxzFUg1iPA.jpg_400w_400h_4e', '4099', 2, 13.5, '点个赞电脑专营店', 5069, 100, '100%');
INSERT INTO `cm_pc_goods` VALUES (12, '惠普(hp) 光影精灵5代第9代英特尔酷睿i5游戏本笔记本电脑（i5-9300H 8G 512SSD GTX1650 傲腾增强型SSD32G）', 'https://imgservice4.suning.cn/uimg1/b2c/image/CPtrgbb0eN7X4BSJkNZmRQ.jpg_300w_300h_4e', '6299', 2, 15.6, '惠普苏宁自营旗舰店', 3666, 3400, '99%');
INSERT INTO `cm_pc_goods` VALUES (13, '华硕(ASUS)adol 14英寸四面窄边框轻薄本笔记本电脑第八代英特尔®酷睿™i5(i5-8265U 8G 256GB固态 IPS)银蓝灰', 'https://imgservice1.suning.cn/uimg1/b2c/image/ifTc4QjwgtGevjmqkB2d1g.jpg_300w_300h_4e', '4303', 2, 14.0, '华硕电脑苏宁自营旗舰店', 5399, 5300, '99%');
INSERT INTO `cm_pc_goods` VALUES (14, '戴尔（DELL）灵越燃5000 5593 15.6英寸 轻薄本 窄边框 笔记本电脑 十代 i5-1035G1 8G 1TB+256GB固态 MX230 2G独显 高清屏 银色 定制', 'https://imgservice3.suning.cn/uimg1/b2c/image/ljd1a4FBv0Rbp6yoPW1Jag.jpg_300w_300h_4e', '4499', 2, 15.6, '鑫恒浩电脑旗舰店', 5112, 3500, '99%');
INSERT INTO `cm_pc_goods` VALUES (15, '神舟战神G7-CT7VK 17.3英寸电竞吃鸡游戏本全面屏笔记本电脑（I7-9750H 16GB 256GB SSD+1TB GTX1660Ti 6G 144HZ 72%色域)', 'https://imgservice4.suning.cn/uimg1/b2c/image/CtDtER6norMWwkI8CgmDpw.jpg_300w_300h_4e', '7899', 1, 17.3, '神舟战神苏宁自营旗舰店', 7083, 400, '99%');
INSERT INTO `cm_pc_goods` VALUES (16, '惠普(HP)暗影精灵5 15-dc1067TX 15.6英寸发烧游戏本笔记本电脑（i7-9750H 8G 512GB GTX1660Ti 6G 144Hz电竞屏 72%高色域）', 'https://imgservice.suning.cn/uimg1/b2c/atmosphere/kPr-g-er0zIDkY3flC28Hw.jpg_400w_400h_4e', '8129', 1, 15.6, '辉煌电脑专营店', 5954, 20, '100%');
INSERT INTO `cm_pc_goods` VALUES (17, '2019新品 Apple MacBook Pro 13.3英寸 八代i5处理器 8GB 256GB SSD 深空灰 带触控栏 笔记本电脑 轻薄本 设计师电脑 MV962CH/A', 'https://imgservice1.suning.cn/uimg1/b2c/image/LKa-OuIMk-Loc6DPU3ZGXA.jpg_300w_300h_4e', '12809', 2, 13.3, 'Apple产品苏宁自营旗舰店', 3606, 500, '99%');
INSERT INTO `cm_pc_goods` VALUES (18, '戴尔（DELL）游匣G3 3590 15.6英寸 吃鸡本 发烧游戏本 笔记本电脑 i5-9300H 8G 1TB+128GB固态 GTX1650 4G独显 IPS 标准版', 'https://imgservice4.suning.cn/uimg1/b2c/image/mElvhtlQKDltq6e_-b2Bnw.png_300w_300h_4e', '5599', 2, 15.6, '鑫恒浩电脑旗舰店', 6767, 2700, '99%');
INSERT INTO `cm_pc_goods` VALUES (19, '雷神(THUNDEROBOT)召唤师911Plus17.3英寸全高清雾面屏发烧游戏本笔记本电脑（i7-9750H 8G GTX1650 512GB win10）', 'https://imgservice5.suning.cn/uimg1/b2c/atmosphere/Xz1xqeIoZw5ZUkWr-WVvLA.jpg_300w_300h_4e', '6788', 1, 17.3, '雷神电脑苏宁自营旗舰店', 2595, 900, '99%');
INSERT INTO `cm_pc_goods` VALUES (20, '联想(Lenovo)小新Air13 2019新款 13.3英寸轻薄本笔记本电脑(i5-10210U 8GB 512GB SSD MX250 2G独显 高色域)轻奢灰', 'https://imgservice5.suning.cn/uimg1/b2c/image/qnc3JzAyVfHLITLJ8b_oEw.jpg_300w_300h_4e', '5199', 2, 13.3, '联想苏宁自营旗舰店', 2217, 100, '96%');
INSERT INTO `cm_pc_goods` VALUES (21, '惠普（HP）暗影精灵5 15-dc1057TX15.6英寸游戏本高色域电竞吃鸡笔记本电脑', 'https://imgservice.suning.cn/uimg1/b2c/image/evmhLXJbz93b2UixGEu0Qg.jpg_400w_400h_4e', '6299', 6, 15.0, '', 3478, 50, '100%');
INSERT INTO `cm_pc_goods` VALUES (22, '惠普（HP）星系列青春版14s-dk0025AU14.0英寸笔记本电脑（AMD Ryzen 3 4G 256SSD FHD 银）', 'https://imgservice1.suning.cn/uimg1/b2c/image/16XyjGtfw_Rgt1-yrwhHFA.jpg_300w_300h_4e', '2799', 5, 14.0, '惠普苏宁自营旗舰店', 3019, 4300, '99%');
INSERT INTO `cm_pc_goods` VALUES (23, '2019款 新品 Apple MacBook Air 13.3英寸 笔记本电脑 i5 1.6GHz 8GB 128GB 深空灰 MVFH2CH/A', 'https://imgservice3.suning.cn/uimg1/b2c/image/GVQtLyLXhqHYPeeoM9oXxw.jpg_300w_300h_4e', '8178', 2, 13.3, 'Apple产品苏宁自营旗舰店', 11082, 400, '99%');
INSERT INTO `cm_pc_goods` VALUES (24, '戴尔（DELL）灵越燃5000 5493 14.0英寸 轻薄本 窄边框 笔记本电脑 十代 i5-1035G1 8G 512GB固态 MX230 2G独显 高清屏 银色 定制版', 'https://imgservice3.suning.cn/uimg1/b2c/image/kMoI3hdrkW4KwQXtiqTIsA.jpg_300w_300h_4e', '4399', 2, 14.0, '鑫恒浩电脑旗舰店', 4941, 1900, '99%');
INSERT INTO `cm_pc_goods` VALUES (25, '戴尔（DELL）Ins 14-5490-R1605S 英特尔®酷睿™i5 14英寸灵越轻薄笔记本电脑学生电脑（i5-10210U 8G 512GB固态硬盘）', 'https://imgservice3.suning.cn/uimg1/b2c/image/YzZLiybHwrBpAEbj8tJdYA.jpg_300w_300h_4e', '5099', 2, 14.0, '戴尔苏宁自营旗舰店', 11993, 200, '100%');
INSERT INTO `cm_pc_goods` VALUES (26, '机械革命S1plus商务笔记本72%高清屏15.6英寸窄边框轻薄电脑本酷睿i5-8265U MX250独显（16GB-512P）', 'https://imgservice.suning.cn/uimg1/b2c/image/apTOL2_RoUzyveBwDglDzg.jpg_400w_400h_4e', '5499', 2, 15.6, '机械革命旗舰店', 11468, 100, '97%');
INSERT INTO `cm_pc_goods` VALUES (27, '（趋势新品）小米（MI）RedmiBook14锐龙版轻薄本搭载（ R5-3500U 8G 256GB）AMD处理器笔记本电脑预装Win10正版 手环疾速解锁 全新小米互传 银色', 'https://imgservice2.suning.cn/uimg1/b2c/image/LVMYnVZH3Wdd2Z26-qTjBA.jpg_300w_300h_4e', '3199', 5, 13.5, '小米苏宁自营旗舰店', 10308, 100, '96%');
INSERT INTO `cm_pc_goods` VALUES (28, '小米(MI)Pro 15.6英寸全金属轻薄本2019新款笔记本电脑(i5-8250U 8G 256GSSD 2G独显 预装office 指纹识别 背光键盘 深空灰)', 'https://imgservice3.suning.cn/uimg1/b2c/image/W2Zvub8e7aNM3o1nQFruLA.jpg_300w_300h_4e', '4999', 2, 15.6, '小米苏宁自营旗舰店', 4174, 1600, '95%');
INSERT INTO `cm_pc_goods` VALUES (29, '小米（MI）RedmiBook14英寸增强版轻薄本全新十代处理器笔记本电脑（i5-10210U 8G 512GSSD MX250 2G独显）手环疾速解锁 游戏 win10 月光银', 'https://imgservice5.suning.cn/uimg1/b2c/image/_FuzP1oj6-OV8_6CuF5TeA.jpg_300w_300h_4e', '4299', 2, 14.0, '小米苏宁自营旗舰店', 3520, 1500, '96%');
INSERT INTO `cm_pc_goods` VALUES (30, '小米(MI)Air 12.5英寸轻薄本2019新款笔记本电脑（Core m3-8100Y 4G 128GB硬盘 Winow10 预装office正版） 高清大屏 轻薄快充 银色', 'https://imgservice1.suning.cn/uimg1/b2c/image/TKDTjHM9C_jQ3uk3gRCdig.jpg_300w_300h_4e', '3299', 6, 12.5, '小米苏宁自营旗舰店', 11274, 900, '97%');
INSERT INTO `cm_pc_goods` VALUES (31, '机械革命S1plus商务笔记本72%高清屏15.6英寸窄边框轻薄电脑本酷睿i5-8265U MX250独显（32GB-512GB）', 'https://imgservice.suning.cn/uimg1/b2c/image/9yyWlBkShojNTc2ptYcI6w.jpg_400w_400h_4e', '5999', 2, 15.6, '机械革命旗舰店', 4892, 100, '99%');
INSERT INTO `cm_pc_goods` VALUES (32, '华为 HUAWEI MateBook 13 第三方Linux版 13英寸全面屏超轻薄笔记本电脑（ i5-8265U 8GB 512GB固态硬盘 MX250独显 2K高清屏 皓月银）', 'https://imgservice3.suning.cn/uimg1/b2c/image/5ldaoQPYlJ2oWTXFQSspEg.jpg_300w_300h_4e', '5399', 2, 13.0, '华为电脑苏宁自营旗舰店', 8295, 300, '97%');
INSERT INTO `cm_pc_goods` VALUES (33, '小米（MI）RedmiBook14英寸增强版轻薄本全新十代笔记本电脑（i7-10510U 8G 512GSSD MX250 2G独显） 手环疾速解锁 游戏 win10 月光银', 'https://imgservice5.suning.cn/uimg1/b2c/image/KMeYqNOlzc9g6KlR9uy2Ow.jpg_300w_300h_4e', '4799', 1, 14.0, '小米苏宁自营旗舰店', 11970, 800, '96%');
INSERT INTO `cm_pc_goods` VALUES (34, '小米 (MI)Ruby 15.6英寸金属轻薄笔记本电脑(第八代英特尔酷睿i5-8250U 8G 512G SSD 2G 独显 FHD 全键盘 正版Office Win10', 'https://imgservice5.suning.cn/uimg1/b2c/image/H9cusInw6Y2YHtQ1FlctVg.jpg_300w_300h_4e', '3799', 2, 15.6, '小米苏宁自营旗舰店', 7478, 20, '95%');
INSERT INTO `cm_pc_goods` VALUES (35, 'MACHENIKE机械师F117-BB3 15.6英寸吃鸡发烧游戏本笔记本电脑轻薄本（i7-9750H GTX1650 8G内存 512GB大固态 Win10)', 'https://imgservice5.suning.cn/uimg1/b2c/atmosphere/NO15vIQGLyBh84ObcMe5fQ.jpg_300w_300h_4e', '6788', 1, 15.6, '机械师苏宁自营旗舰店', 10644, 1100, '99%');
INSERT INTO `cm_pc_goods` VALUES (36, '当季新品 机械革命（MECHREVO）X9Ti-R 9代i7 RTX2060 144Hz72% 17.3英寸 笔记本 32G 512GB', 'https://imgservice.suning.cn/uimg1/b2c/image/IHDLu-nP8HQAPcAC6N2Qzw.jpg_400w_400h_4e', '9999', 1, 17.3, '机械革命旗舰店', 6436, 10, '100%');
INSERT INTO `cm_pc_goods` VALUES (37, '小米(MI)Air 12.5英寸轻薄本学生本2019新款笔记本电脑(m3-8100Y 4G 128G大容量固态硬盘 office版正版 金色)', 'https://imgservice5.suning.cn/uimg1/b2c/image/pL7NlntvGBw63aRaNB5VGw.jpg_300w_300h_4e', '3299', 6, 12.5, '小米苏宁自营旗舰店', 4073, 400, '97%');
INSERT INTO `cm_pc_goods` VALUES (38, '华为HUAWEI MateBook 13 锐龙版 第三方Linux版 13英寸全面屏超轻薄笔记本电脑（AMD Ryzen 5 3500U 8GB 512GB固态硬盘 皓月银）', 'https://imgservice4.suning.cn/uimg1/b2c/image/YBPBTY6jq9YyEzN1nJ1_bw.jpg_300w_300h_4e', '4099', 5, 13.0, '华为电脑苏宁自营旗舰店', 2388, 30, '89%');
INSERT INTO `cm_pc_goods` VALUES (39, '机械革命(MECHREVO)悦系列S1 Pro 英特尔酷睿i5 14英寸窄边框轻薄笔记本电脑(i5-8265U 8G 512GSSD MX250 灰)', 'https://imgservice5.suning.cn/uimg1/b2c/image/r2xHFSOOEmP5mMcVjvQkUw.jpg_300w_300h_4e', '4099', 2, 14.0, '轩晟越电脑专营店', 10144, 40, '100%');
INSERT INTO `cm_pc_goods` VALUES (40, '微软（Microsoft）Surface Laptop 2 13.5英寸 超轻薄本触屏版笔记本电脑（i5-8250U 8GB 256GB固态硬盘 含正版office 亮铂金）', 'https://imgservice1.suning.cn/uimg1/b2c/image/NIggoghM1XikvmmerVlLGg.jpg_300w_300h_4e', '9588', 2, 13.5, '微软苏宁自营旗舰店', 9703, 400, '100%');
INSERT INTO `cm_pc_goods` VALUES (41, '机械革命S1plus商务笔记本72%高清屏15.6英寸窄边框轻薄电脑本酷睿i5-8265U MX250独显（8GB-512GP）', 'https://imgservice.suning.cn/uimg1/b2c/image/oIfbBSytnENXNZji9bgQ3Q.jpg_400w_400h_4e', '5099', 2, 15.6, '机械革命旗舰店', 10100, 100, '98%');
INSERT INTO `cm_pc_goods` VALUES (42, '宏碁(acer)蜂鸟3 SF313窄边框13.3英寸金属本超轻薄笔记本电脑（i5-8250U 8G 512GB 核显 IPS全高清72%色域 指纹识别 Win10）学生商务办公本', 'https://imgservice4.suning.cn/uimg1/b2c/image/wJPkiwR7zJ32rJvuSWzioQ.jpg_300w_300h_4e', '4299', 2, 13.3, '宏碁苏宁自营旗舰店', 2410, 50, '100%');
INSERT INTO `cm_pc_goods` VALUES (43, '机械师 MACHBOOK-PC 15.6英寸创意设计本吃鸡发烧游戏本笔记本电脑（i7-9750H GTX1660Ti 16G 512GB+1TB 144hz)', 'https://imgservice2.suning.cn/uimg1/b2c/atmosphere/j7BXpue6PLqjBVK3UNGqqw.jpg_300w_300h_4e', '9199', 1, 15.6, '机械师苏宁自营旗舰店', 9518, 100, '98%');
INSERT INTO `cm_pc_goods` VALUES (44, '宏碁（Acer）A315-55G 15.6英寸窄边框轻薄本游戏商务办公笔记本电脑（十代i7-10510U 8G 500GB+128GB固态 MX230/2G ips高清 黑色）定制', 'https://imgservice1.suning.cn/uimg1/b2c/atmosphere/QtncNQi5Sx72mCHX0ci49g.jpg_300w_300h_4e', '4699', 1, 15.6, '宏碁(Acer)耀银专卖店', 2632, 200, '100%');
INSERT INTO `cm_pc_goods` VALUES (45, '机械革命（MECHREVO）深海幽灵Z2 Air 9代英特尔酷睿i7-9750H 8GB 512GB GTX1650 15.6英寸72%高色域轻薄本窄边框游戏本笔记本电脑', 'https://imgservice5.suning.cn/uimg1/b2c/image/MisUi238_wyN2jl8xPkYWw.jpg_300w_300h_4e', '6388', 1, 15.6, '机械革命童谷电脑专卖店', 5643, 20, '100%');
INSERT INTO `cm_pc_goods` VALUES (46, '机械革命S1plus商务笔记本72%高清屏15.6英寸窄边框轻薄电脑本酷睿i5-8265U MX250独显（16GB-1Tpci-e）', 'https://imgservice.suning.cn/uimg1/b2c/image/OpDIeTJzSFrkm_LrjmQ3Ug.jpg_400w_400h_4e', '5999', 2, 15.6, '机械革命旗舰店', 11401, 100, '99%');
INSERT INTO `cm_pc_goods` VALUES (47, '宏碁(Acer) FUN蜂鸟S50 微边框金属轻薄本 15.6英寸笔记本电脑(i5-10210U 8G 512G PCIe SSD MX250 IPS)红/银 标配', 'https://imgservice3.suning.cn/uimg1/b2c/image/XPy7eG7gtLWMNIfTlBgdyg.jpg_300w_300h_4e', '4699', 2, 15.6, '海鲅电脑专营店', 8054, 40, '100%');
INSERT INTO `cm_pc_goods` VALUES (48, '微软（Microsoft）Surface Laptop 2 13.5英寸 超轻薄本触屏版笔记本电脑（i7-8650U 16GB 1TB大固态硬盘 含正版office 亮铂金）', 'https://imgservice2.suning.cn/uimg1/b2c/image/2ZgeFDdvjElsK9QjkrM4iA.jpg_300w_300h_4e', '19828', 1, 13.5, '微软苏宁自营旗舰店', 6212, 20, '100%');
INSERT INTO `cm_pc_goods` VALUES (49, '机械革命(MECHREVO)X9Ti-R i7 17.3英寸游戏笔记本电脑(i7-9750H 16G 512G PCIE+1T RTX2060 144Hz）', 'https://imgservice2.suning.cn/uimg1/b2c/image/V0FMTStEI-F2IAPXZK7toQ.jpg_300w_300h_4e', '9499', 1, 17.3, '轩晟越电脑专营店', 4564, 10, '100%');
INSERT INTO `cm_pc_goods` VALUES (50, '机械革命（MECHREVO）S1 Pro系列（i5-8265U 8G 512GB固态 MX250-2G 银色）标配14.0英寸IPS窄边框轻薄本游戏本商用办公超长续航笔记本电脑', 'https://imgservice2.suning.cn/uimg1/b2c/image/00wVxGXvJlyt9lgEZA4nUw.jpg_300w_300h_4e', '4099', 2, 14.0, '奥达电脑专营店', 9484, 40, '100%');

SET FOREIGN_KEY_CHECKS = 1;
