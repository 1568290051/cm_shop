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

 Date: 18/11/2019 17:12:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cm_index_hbo
-- ----------------------------
DROP TABLE IF EXISTS `cm_index_hbo`;
CREATE TABLE `cm_index_hbo`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hbo_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频道名',
  `hbo_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频道logo',
  `hbo_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '频道描述',
  `hbo_sort` tinyint(3) NOT NULL COMMENT '频道分类:1-推荐 2-热门 3-特色 4-我的 5-生活 6-财富',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cm_index_hbo
-- ----------------------------
INSERT INTO `cm_index_hbo` VALUES (1, '创美国际', 'https://imgservice5.suning.cn/uimg1/anubis/pindao/eP7QxFITkLCRp0fCwFK2dg.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (2, '爆款手机', 'https://imgservice3.suning.cn/uimg1/anubis/pindao/2gd_CeU6qn2YvD-h5Gh1HA.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (3, '创美超市', 'https://imgservice2.suning.cn/uimg1/anubis/pindao/CLD3r2UN0t0qN3E2X8xR-A.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (4, '创美校园', 'https://imgservice4.suning.cn/uimg1/anubis/pindao/O9n6mG9CGSZBaiF7BKwLnQ.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (5, '母婴玩具', 'https://imgservice1.suning.cn/uimg1/anubis/pindao/iqBGNYuV0idXob5a02t9GQ.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (6, '创美家电', 'https://imgservice4.suning.cn/uimg1/anubis/pindao/bUaLti3Yhkq6JDpKiBcCow.png', '', 1);
INSERT INTO `cm_index_hbo` VALUES (7, '爆款手机', 'https://image1.suning.cn/uimg/cms/img/156326594623680933.png', '在意你每部手机', 2);
INSERT INTO `cm_index_hbo` VALUES (8, '5G手机', 'https://image1.suning.cn/uimg/cms/img/157113353377544464.png', '换5G上创美', 2);
INSERT INTO `cm_index_hbo` VALUES (9, '创美超市', 'https://image1.suning.cn/uimg/cms/img/156326601911411622.png', '为你挑好的', 2);
INSERT INTO `cm_index_hbo` VALUES (10, '创美国际', 'https://image1.suning.cn/uimg/cms/img/156326613124569727.png', '快享全球好货', 2);
INSERT INTO `cm_index_hbo` VALUES (11, '生活家电', 'https://image1.suning.cn/uimg/cms/img/156326639316924440.png', '9.9元抢好货', 2);
INSERT INTO `cm_index_hbo` VALUES (12, '创美家电', 'https://image1.suning.cn/uimg/cms/img/156326648332424165.png', '买家电上创美', 2);
INSERT INTO `cm_index_hbo` VALUES (13, '创美生鲜', 'https://image1.suning.cn/uimg/cms/img/156326773978727186.png', '精选全球生鲜', 2);
INSERT INTO `cm_index_hbo` VALUES (14, '创美极物', 'https://image1.suning.cn/uimg/cms/img/156326632280629553.png', '致敬美好生活', 2);
INSERT INTO `cm_index_hbo` VALUES (15, '时尚服饰', 'https://image1.suning.cn/uimg/cms/img/156326672806196268.png', '品质服饰为你挑选', 2);
INSERT INTO `cm_index_hbo` VALUES (16, 'Biu+优品', 'https://image1.suning.cn/uimg/cms/img/156326624862372187.png', '精选智能好货', 2);
INSERT INTO `cm_index_hbo` VALUES (17, '母婴玩具', 'https://image1.suning.cn/uimg/cms/img/156326606906353706.png', '妈妈放心购', 2);
INSERT INTO `cm_index_hbo` VALUES (18, '运动户外', 'https://image1.suning.cn/uimg/cms/img/156326778795377202.png', '健康从运动开始', 2);
INSERT INTO `cm_index_hbo` VALUES (19, '电脑办公', 'https://image1.suning.cn/uimg/cms/img/156326677608642853.png', '专业购机顾问', 2);
INSERT INTO `cm_index_hbo` VALUES (20, '创美汽车', 'https://image1.suning.cn/uimg/cms/img/156326793283673127.png', '一站式购车服务', 2);
INSERT INTO `cm_index_hbo` VALUES (21, '智能数码', 'https://image1.suning.cn/uimg/cms/img/156326783768709828.png', '科技数码', 2);
INSERT INTO `cm_index_hbo` VALUES (22, '中华特色馆', 'https://image1.suning.cn/uimg/cms/img/156352833213258248.png', '源产地传承', 2);
INSERT INTO `cm_index_hbo` VALUES (23, '创美好酒', 'https://image1.suning.cn/uimg/cms/img/157061041450337278.png', '买好酒上创美', 2);
INSERT INTO `cm_index_hbo` VALUES (24, '家装建材', 'https://image1.suning.cn/uimg/cms/img/157119780847581254.png', '品质焕新家', 2);
INSERT INTO `cm_index_hbo` VALUES (25, '限时抢购', 'https://image1.suning.cn/uimg/cms/img/156326876391440581.png', '海量商品等你抢', 3);
INSERT INTO `cm_index_hbo` VALUES (26, '创美拼购', 'https://image1.suning.cn/uimg/cms/img/156326880554464984.png', '拼着买更实惠', 3);
INSERT INTO `cm_index_hbo` VALUES (27, 'Outlets', 'https://image1.suning.cn/uimg/cms/img/156326888277045986.png', '您的专属特卖', 3);
INSERT INTO `cm_index_hbo` VALUES (28, '领券中心', 'https://image1.suning.cn/uimg/cms/img/156326892974745626.png', '先领券再购物', 3);
INSERT INTO `cm_index_hbo` VALUES (29, '新品首发', 'https://image1.suning.cn/uimg/cms/img/156326902619181055.png', '大牌上新优先试', 3);
INSERT INTO `cm_index_hbo` VALUES (30, '二手优品', 'https://image1.suning.cn/uimg/cms/img/156326910203296648.png', '正品二手', 3);
INSERT INTO `cm_index_hbo` VALUES (31, '企业采购', 'https://image1.suning.cn/uimg/cms/img/156326913301339734.png', '一站式采购平台', 3);
INSERT INTO `cm_index_hbo` VALUES (32, '9.9包邮', 'https://image1.suning.cn/uimg/cms/img/156326930707252718.png', '9块9包邮专区', 3);
INSERT INTO `cm_index_hbo` VALUES (33, '创美校园', 'https://image1.suning.cn/uimg/cms/img/156326963823073217.png', '学生会员专享', 3);
INSERT INTO `cm_index_hbo` VALUES (34, '创美好货', 'https://image1.suning.cn/uimg/cms/img/156932689292911484.png', '品质好物指南', 3);
INSERT INTO `cm_index_hbo` VALUES (35, 'SUPER会员', 'https://image1.suning.cn/uimg/cms/img/156282549435711063.png', '尊享会员', 4);
INSERT INTO `cm_index_hbo` VALUES (36, '商品收藏', 'https://image1.suning.cn/uimg/cms/img/156282555280688403.png', '专属收藏', 4);
INSERT INTO `cm_index_hbo` VALUES (37, '0元试用', 'https://image1.suning.cn/uimg/cms/img/156282558879766375.png', '免费试用', 4);
INSERT INTO `cm_index_hbo` VALUES (38, '智能导购', 'https://image1.suning.cn/uimg/cms/img/156282565191510266.png', '专属导购', 4);
INSERT INTO `cm_index_hbo` VALUES (39, '创美公益', 'https://image1.suning.cn/uimg/cms/img/156282575704564915.png', '爱心助力', 4);
INSERT INTO `cm_index_hbo` VALUES (40, '云钻竞猜', 'https://image1.suning.cn/uimg/cms/img/156282581793434113.png', '云钻乐园', 4);
INSERT INTO `cm_index_hbo` VALUES (41, '退换货', 'https://image1.suning.cn/uimg/cms/img/156333030011347473.png', '售后无忧', 4);
INSERT INTO `cm_index_hbo` VALUES (42, '问题反馈', 'https://image1.suning.cn/uimg/cms/img/156333047957553424.png', '建议反馈', 4);
INSERT INTO `cm_index_hbo` VALUES (43, '充值缴费', 'https://image1.suning.cn/uimg/cms/img/156282627810133560.png', '充值中心', 5);
INSERT INTO `cm_index_hbo` VALUES (44, '创美服务', 'https://image1.suning.cn/uimg/cms/img/156283045905888462.png', '帮客服务', 5);
INSERT INTO `cm_index_hbo` VALUES (45, '创美有房', 'https://image1.suning.cn/uimg/cms/img/156283048146439365.png', '精品房源', 5);
INSERT INTO `cm_index_hbo` VALUES (46, '手机维修', 'https://image1.suning.cn/uimg/cms/img/156283053424057546.png', '全国联保', 5);
INSERT INTO `cm_index_hbo` VALUES (47, '赚钱', 'https://image1.suning.cn/uimg/cms/img/156283193497385255.png', '创美金融', 6);
INSERT INTO `cm_index_hbo` VALUES (48, '理财', 'https://image1.suning.cn/uimg/cms/img/156283194935322426.png', '投资理财', 6);
INSERT INTO `cm_index_hbo` VALUES (49, '保险', 'https://image1.suning.cn/uimg/cms/img/156283195919948871.png', '安心保障', 6);
INSERT INTO `cm_index_hbo` VALUES (50, '任性付', 'https://image1.suning.cn/uimg/cms/img/156283253479496514.png', '分期借款', 6);
INSERT INTO `cm_index_hbo` VALUES (51, '创美卡', 'https://image1.suning.cn/uimg/cms/img/156283221469566056.png', '新社交心礼物', 6);
INSERT INTO `cm_index_hbo` VALUES (52, '快速办卡', 'https://image1.suning.cn/uimg/cms/img/156283223012660221.png', '信用卡申请', 6);
INSERT INTO `cm_index_hbo` VALUES (53, '定期转账', 'https://image1.suning.cn/uimg/cms/img/156283224447015121.png', '自助转账', 6);
INSERT INTO `cm_index_hbo` VALUES (54, '身边财富', 'https://image1.suning.cn/uimg/cms/img/156283226214498733.png', '财富中心', 6);
INSERT INTO `cm_index_hbo` VALUES (55, '众筹', 'https://image1.suning.cn/uimg/cms/img/156283356644847415.png', '众筹助力', 6);
INSERT INTO `cm_index_hbo` VALUES (56, '免息商城', 'https://image1.suning.cn/uimg/cms/img/156333506868057352.png', '抢12期免息券', 6);
INSERT INTO `cm_index_hbo` VALUES (57, '创美通信', 'https://image1.suning.cn/uimg/cms/img/156414483840481471.png', '掌上营业厅', 6);
INSERT INTO `cm_index_hbo` VALUES (58, '创美酒店', 'https://image1.suning.cn/uimg/cms/img/156414495396756942.png', '伴您温馨入眠', 6);
INSERT INTO `cm_index_hbo` VALUES (59, '创美机票', 'https://image1.suning.cn/uimg/cms/img/156414516252618747.png', '正青春任我游', 6);

SET FOREIGN_KEY_CHECKS = 1;
