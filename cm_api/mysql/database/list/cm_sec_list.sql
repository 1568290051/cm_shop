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

 Date: 20/11/2019 08:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_sec_list
-- ----------------------------
DROP TABLE IF EXISTS `cm_sec_list`;
CREATE TABLE `cm_sec_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '清单标题',
  `pri_id` int(11) NOT NULL COMMENT '文章所在分类Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_sec_list
-- ----------------------------
INSERT INTO `cm_sec_list` VALUES (1, '空调噪音扰睡眠，静音空调睡好觉', 1);
INSERT INTO `cm_sec_list` VALUES (2, '给家人健康水质，净水器来帮忙', 1);
INSERT INTO `cm_sec_list` VALUES (3, '更懂你的除了男友，还有语音电视', 1);
INSERT INTO `cm_sec_list` VALUES (4, '便携加持高性能，超薄本增提效率', 1);
INSERT INTO `cm_sec_list` VALUES (5, '美味泡面快速充饥，懒人居家必备', 1);
INSERT INTO `cm_sec_list` VALUES (6, '杜比环绕音，4K电视享视听盛宴', 1);
INSERT INTO `cm_sec_list` VALUES (7, '净水器去除杂质，让家人喝健康水', 1);
INSERT INTO `cm_sec_list` VALUES (8, '仿手洗洁衣，波轮洗衣机更为洁净', 2);
INSERT INTO `cm_sec_list` VALUES (9, '阴雨天气不用愁，智能洗烘更便捷', 2);
INSERT INTO `cm_sec_list` VALUES (10, '拥有品质饮水机，让喝水更加舒心', 2);
INSERT INTO `cm_sec_list` VALUES (11, '囤货中的战斗机，冻力来袭', 2);
INSERT INTO `cm_sec_list` VALUES (12, '多口之家购冰箱，对开变频更节能', 2);
INSERT INTO `cm_sec_list` VALUES (13, '净烟利落无残留，解锁无烟厨房', 2);
INSERT INTO `cm_sec_list` VALUES (14, '食物持久保鲜，选对冰箱是关键', 2);
INSERT INTO `cm_sec_list` VALUES (15, '无需带沉重设备，手机一样拍大片', 3);
INSERT INTO `cm_sec_list` VALUES (16, '微边显示器，画质细腻享炸裂视效', 3);
INSERT INTO `cm_sec_list` VALUES (17, '蓝牙耳机，便携生活，享受静谧', 3);
INSERT INTO `cm_sec_list` VALUES (18, '对话智能，AI音箱增趣生活', 3);
INSERT INTO `cm_sec_list` VALUES (19, '配置强颜值高的手机，快点来看看', 3);
INSERT INTO `cm_sec_list` VALUES (20, '画面宽广，微边笔记本办公更轻松', 3);
INSERT INTO `cm_sec_list` VALUES (21, '游戏手柄掌局面，吃鸡易如反掌！', 3);
INSERT INTO `cm_sec_list` VALUES (22, '亲友聚会撑场面，这些美酒少不了', 4);
INSERT INTO `cm_sec_list` VALUES (23, '备好酒走亲友，香醇馥郁情谊久', 4);
INSERT INTO `cm_sec_list` VALUES (24, '古法熬制糖姜茶，更能用心呵护她', 4);
INSERT INTO `cm_sec_list` VALUES (25, '防晒防的是紫外线，并不是季节哦', 4);
INSERT INTO `cm_sec_list` VALUES (26, '玩乐休闲，美味薯片燃爆生活', 4);
INSERT INTO `cm_sec_list` VALUES (27, '每天都用到的洗面奶，要走心选择', 4);
INSERT INTO `cm_sec_list` VALUES (28, '想让妆容发光，来点闪亮高光', 4);
INSERT INTO `cm_sec_list` VALUES (29, '男士如何挑选皮带？让我告诉您', 5);
INSERT INTO `cm_sec_list` VALUES (30, '治愈选择困难症，时尚打底衫走起', 5);
INSERT INTO `cm_sec_list` VALUES (31, '西装搭配k金首饰，美到不行', 5);
INSERT INTO `cm_sec_list` VALUES (32, '寒从脚起，舒适棉拖让你过个暖冬', 5);
INSERT INTO `cm_sec_list` VALUES (33, '秋冬赶时髦 金属腕表为气质加分', 5);
INSERT INTO `cm_sec_list` VALUES (34, '风衣穿起来，秋风也吹不走时髦感', 5);
INSERT INTO `cm_sec_list` VALUES (35, '牵手的真爱情缘，钻戒送祝福', 5);
INSERT INTO `cm_sec_list` VALUES (36, '收纳有道，浴室柜打造整洁卫生间', 6);
INSERT INTO `cm_sec_list` VALUES (37, '助攻衣柜清爽，内衣收纳盒很会玩', 6);
INSERT INTO `cm_sec_list` VALUES (38, '衣柜异味重？快速除醛从源头分解', 6);
INSERT INTO `cm_sec_list` VALUES (39, '洗衣柜献秘籍，解锁阳台洗理区', 6);
INSERT INTO `cm_sec_list` VALUES (40, '衣柜空间告急？真空收纳速解困境', 6);
INSERT INTO `cm_sec_list` VALUES (41, '棉被大衣厚？压缩袋让衣柜秒瘦身', 6);
INSERT INTO `cm_sec_list` VALUES (42, '厚被变薄，真空压缩袋帮衣柜减负', 6);
INSERT INTO `cm_sec_list` VALUES (43, '做工精细，儿童电动车锻炼协调力', 7);
INSERT INTO `cm_sec_list` VALUES (44, '装上洗澡网兜，给宝宝洗澡更方便', 7);
INSERT INTO `cm_sec_list` VALUES (45, '宝宝专用洗衣皂，成分安全是首位', 7);
INSERT INTO `cm_sec_list` VALUES (46, '怀孕不留妊娠纹，身体护理要做好', 7);
INSERT INTO `cm_sec_list` VALUES (47, '洗发沐浴二合一，宝宝洗澡更方便', 7);
INSERT INTO `cm_sec_list` VALUES (48, '宝宝指甲这么处理，不怕伤到宝宝', 7);
INSERT INTO `cm_sec_list` VALUES (49, '护臀霜这么擦，宝宝不怕红pp', 7);
INSERT INTO `cm_sec_list` VALUES (50, '邀好友吃鸡，电竞椅让你决战天明', 8);
INSERT INTO `cm_sec_list` VALUES (51, '无线鼠标没有束缚，轻巧畅享自由', 8);
INSERT INTO `cm_sec_list` VALUES (52, '减震设计，便捷电脑包抗摔更耐用', 8);
INSERT INTO `cm_sec_list` VALUES (53, '128G防水U盘，无惧风雨侵蚀', 8);
INSERT INTO `cm_sec_list` VALUES (54, '保险柜加固，相中全钢实力护机密', 8);
INSERT INTO `cm_sec_list` VALUES (55, '居家电脑桌，精美实用极简北欧风', 8);
INSERT INTO `cm_sec_list` VALUES (56, '无线打印机，随心开启极速办公', 8);
INSERT INTO `cm_sec_list` VALUES (57, '运动有章法，智能手环数据化指导', 9);
INSERT INTO `cm_sec_list` VALUES (58, '家用便携动感单车，随时方便燃脂', 9);
INSERT INTO `cm_sec_list` VALUES (59, '举铁手易滑？助力带来帮你', 9);
INSERT INTO `cm_sec_list` VALUES (60, '小小阻力带，在家也能锻炼身体', 9);
INSERT INTO `cm_sec_list` VALUES (61, '运动，当然要穿专业的运动鞋', 9);
INSERT INTO `cm_sec_list` VALUES (62, '运动紧身裤，助力运动更轻便', 9);
INSERT INTO `cm_sec_list` VALUES (63, '排汗透气易拉伸，运动衣服穿起来', 9);
INSERT INTO `cm_sec_list` VALUES (64, '玩转篮球场，篮球鞋助力得分王', 10);
INSERT INTO `cm_sec_list` VALUES (65, '跑步机挑选三步走，畅快享受跑步', 10);
INSERT INTO `cm_sec_list` VALUES (66, '专业户外运动手表，你的腕上伙伴', 10);
INSERT INTO `cm_sec_list` VALUES (67, '运动健康监测，智能手环领健身潮', 10);
INSERT INTO `cm_sec_list` VALUES (68, '穿上舒适登山鞋，享受登山乐趣', 10);
INSERT INTO `cm_sec_list` VALUES (69, '选对登山杖，登山运动更轻松', 10);
INSERT INTO `cm_sec_list` VALUES (70, '巧用弹力带，在家也能锻炼身体', 10);

SET FOREIGN_KEY_CHECKS = 1;
