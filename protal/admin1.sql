/*
 Navicat Premium Data Transfer

 Source Server         : aa
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : admin1

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 01/02/2024 09:12:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_index_pic
-- ----------------------------
DROP TABLE IF EXISTS `a_index_pic`;
CREATE TABLE `a_index_pic`  (
  `cid` bigint NOT NULL AUTO_INCREMENT COMMENT '主键的id',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面或介绍图片',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `type` int NULL DEFAULT NULL COMMENT '型号（类型）id',
  `created` bigint NULL DEFAULT NULL COMMENT '创建人id',
  `gtm_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `type`(`type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '首页轮播图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_index_pic
-- ----------------------------
INSERT INTO `a_index_pic` VALUES (1, '轮播图1', 'showproduct.html?id=128', '/files/2d3954ea-5a05-40c7-b4a3-caf729f23a85.jpg', 1, 3, 1, '2019-10-16 17:34:06');
INSERT INTO `a_index_pic` VALUES (2, '轮播图2', 'http://www.goodemall.com', '/files/3f2d1fec-3ed9-4afa-af24-a4fc48ae4694.jfif', 1, 3, 1, '2019-10-16 17:35:14');
INSERT INTO `a_index_pic` VALUES (3, '轮播图3', 'http://www.goodemall.com', '/files/758337f2-b8d6-4180-ac19-9a75d4ea8bd4.jpg', 1, 3, 1, '2019-10-16 17:35:40');

-- ----------------------------
-- Table structure for a_news
-- ----------------------------
DROP TABLE IF EXISTS `a_news`;
CREATE TABLE `a_news`  (
  `cid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `summary` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '摘要',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面或介绍图片',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容',
  `type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `modified` bigint NULL DEFAULT NULL COMMENT '最近修改人id',
  `created` bigint NULL DEFAULT NULL COMMENT '创建人id',
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `gtm_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gtm_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文章内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_news
-- ----------------------------
INSERT INTO `a_news` VALUES (119, '新闻示例', '新闻 [1]  ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 [2]  一种文体', '/files/c6ba53ee-cf02-4a4a-b316-4f8b845bb3f7.jpg', '<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">新闻</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">是指</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8A%A5%E7%BA%B8/745\" data-lemmaid=\"745\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">报纸</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%B5%E5%8F%B0/1598697\" data-lemmaid=\"1598697\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">电台</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%B5%E8%A7%86%E5%8F%B0/374832\" data-lemmaid=\"374832\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">电视台</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%92%E8%81%94%E7%BD%91\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">互联网</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">等媒体经常使用的记录与</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%A0%E6%92%AD/1261279\" data-lemmaid=\"1261279\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">传播</a><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BF%A1%E6%81%AF/111163\" data-lemmaid=\"111163\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">信息</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">的</span><a class=\"sup-anchor\" name=\"ref_[2]_14325\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp;</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">&nbsp;一种文体，是反映时代的一种文体。新闻概念有</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B9%BF%E4%B9%89/5393063\" data-lemmaid=\"5393063\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">广义</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">与</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8B%AD%E4%B9%89/8190704\" data-lemmaid=\"8190704\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">狭义</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">之分。广义上：除了发表于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8A%A5%E5%88%8A/2851057\" data-lemmaid=\"2851057\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">报刊</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">消息是用概括的叙述方式，以较简明扼要的文字，</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%BF%85%E9%80%9F/10529825\" data-lemmaid=\"10529825\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">迅速</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">及时地</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8A%A5%E9%81%93/7437620\" data-lemmaid=\"7437620\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">报道</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%BE%85%E5%8A%A9/1045139\" data-lemmaid=\"1045139\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">辅助</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">部分。写法以叙述为主兼或有议论、描写、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%AF%84%E8%AE%BA/32357\" data-lemmaid=\"32357\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">评论</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">等。新闻是包含海量</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%B5%84%E8%AE%AF\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">资讯</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">的新闻服务平台真实反映每时每刻的重要事件。您可以搜索新闻事件、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%83%AD%E7%82%B9/3388605\" data-lemmaid=\"3388605\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">热点</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">话题、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%BA%E7%89%A9/5957728\" data-lemmaid=\"5957728\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">人物</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">动态、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%A7%E5%93%81\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">产品</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">资讯等,快速了解它们的最新</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%BF%9B%E5%B1%95\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">进展</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;\">。</span>', 'news', 1, 1, 1, 'admin', '2019-10-12 16:09:49', '2024-01-27 09:21:44');
INSERT INTO `a_news` VALUES (122, '网站资讯示例', '这是一个网站资讯示例，这是一个网站资讯示例，这是一个网站资讯示例', '/files/c3c2d954-2ac0-4185-804f-476a966d816c.jpeg', '<p>这是一个网站资讯示例160x160\r\n这是一个网站资讯示例，这是一个网站资讯示例这是一个网站资讯示例，这是一个网站资讯示例<img src=\"/files/f1908e5e-e7d6-401f-bc88-f7e799796c27.jpg\" style=\"width: 160px;\"><br></p>', 'message', 1, 1, 1, 'admin', '2019-10-12 16:42:27', '2024-01-27 09:20:14');
INSERT INTO `a_news` VALUES (123, '行业资讯示例', '这是一个行业资讯示例，这是一个行业资讯示例。', '/files/27b6a0c8-3432-4ec8-9f16-a2373cfc36fd.jpeg', '<p><img src=\"/files/e770397e-bf33-4145-8a8a-388fab3d1a64.png\" style=\"width: 283px;\"><font color=\"#2e3439\"><span style=\"font-size: 16px; letter-spacing: 1px;\"><b><br></b></span></font></p><p><font color=\"#2e3439\"><span style=\"font-size: 16px; letter-spacing: 1px;\"><b>这是一个行业资讯示例，这是一个行业资讯示例。</b></span></font></p><p><font color=\"#2e3439\"><span style=\"font-size: 16px; letter-spacing: 1px;\"><b>这是一个行业资讯示例，这是一个行业资讯示例。</b></span></font></p><p><font color=\"#2e3439\"><span style=\"font-size: 16px; letter-spacing: 1px;\"><b>这是一个行业资讯示例，这是一个行业资讯示例。</b></span></font></p><p><font color=\"#2e3439\"><span style=\"font-size: 16px; letter-spacing: 1px;\"><b>这是一个行业资讯示例，这是一个行业资讯示例。</b></span><br><br><br><br></font></p><p><br></p><p></p>', 'message', 1, 1, 1, 'admin', '2019-10-12 16:43:18', '2024-01-27 09:20:05');
INSERT INTO `a_news` VALUES (124, '卫星发射公告', '卫星发射公告', '/files/6f9b7600-c5a2-49b6-af2a-8ffc1425b903.jpeg', '<p>卫星发射公告<br></p>', 'announcement', 1, 1, 1, 'admin', '2019-10-16 14:49:50', '2024-01-27 09:19:53');
INSERT INTO `a_news` VALUES (125, '新闻示例2', '这是新闻示例2，这是新闻示例2，这是新闻示例2', '/files/f04bba72-01e9-4bfa-9369-d5bf40d6a9d8.jfif', '<p><img src=\"/files/081ffa31-0675-4894-8990-35e017e1d7ce.jpg\" style=\"width: 160px;\"><br></p><p>这是新闻示例2，这是新闻示例2，</p><p>这是新闻示例2，这是新闻示例2，</p><p>这是新闻示例2，这是新闻示例2<br></p>', 'news', 1, 1, 1, 'admin', '2019-10-16 14:52:01', '2024-01-27 09:19:38');
INSERT INTO `a_news` VALUES (126, '新闻示例3', '新闻示例3，新闻示例3，新闻示例3', '/files/9eac9f7d-26f0-4c51-b92f-1624f40bec17.jpg', '<p>新闻示例3，新闻示例3，新闻示例3</p><p><img src=\"/files/9e908d0a-c860-4f51-8359-123beb8b6493.jpg\" style=\"width: 160px;\"><br></p>', 'news', 1, 1, 1, 'admin', '2019-10-16 15:02:29', '2024-01-27 09:19:30');
INSERT INTO `a_news` VALUES (127, 'xxx数据监控信息室', '监控信息展示', '/files/f8131f67-ef17-4482-861f-ac0d6553ab03.jpg', '<p><u>信息展示</u></p><p><u>信息展示</u></p><p><u>信息展示</u></p>', 'case', 1, 1, 1, 'admin', '2019-10-16 15:11:12', '2024-01-27 10:33:15');
INSERT INTO `a_news` VALUES (128, '地球站资讯示例', '地球站资讯示例', '/files/6dd978da-db4f-4a58-85e4-5dd4badd040f.jpeg', '<p>地球站资讯示例<br></p><p><span style=\"color: rgb(103, 106, 108); background-color: rgb(245, 245, 245);\"><br></span><span style=\"color: rgb(103, 106, 108); background-color: rgb(245, 245, 245);\"><br></span><span style=\"color: rgb(103, 106, 108); background-color: rgb(245, 245, 245);\"><br></span><br></p>', 'message', 1, 1, 1, 'admin', '2019-10-16 15:32:25', '2024-01-27 09:18:58');

-- ----------------------------
-- Table structure for a_pic_type
-- ----------------------------
DROP TABLE IF EXISTS `a_pic_type`;
CREATE TABLE `a_pic_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '首页轮播图片类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_pic_type
-- ----------------------------
INSERT INTO `a_pic_type` VALUES (1, '类型1');
INSERT INTO `a_pic_type` VALUES (2, '类型2');
INSERT INTO `a_pic_type` VALUES (3, '类型3');

-- ----------------------------
-- Table structure for a_product_pic
-- ----------------------------
DROP TABLE IF EXISTS `a_product_pic`;
CREATE TABLE `a_product_pic`  (
  `cid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面或介绍图片',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `type` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型（类别）',
  `created` bigint NULL DEFAULT NULL COMMENT '创建人id',
  `gtm_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '产品图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_product_pic
-- ----------------------------
INSERT INTO `a_product_pic` VALUES (124, '产品1', '产品1的简介', '/files/486f02fa-1525-4a16-ba31-4517e3d8bf68.jfif', 1, '项目产品', 1, '2019-10-16 18:14:37');
INSERT INTO `a_product_pic` VALUES (125, '产品2', '产品2简介', '/files/26484402-d075-4259-9fd4-fcbde8f1f670.jpeg', 1, '项目产品', 1, '2019-10-15 17:29:20');
INSERT INTO `a_product_pic` VALUES (126, '产品3', '产品3简介', '/files/013d9390-ee68-4fa7-86c1-f60b00b4947a.jpg', 1, '项目产品', 1, '2019-10-15 17:29:50');
INSERT INTO `a_product_pic` VALUES (127, '产品4', '产品4简介', '/files/dfb1b80f-8a4a-4456-b6c3-92b24b6f25fb.jpeg', 1, '项目产品', 1, '2019-10-15 17:31:28');
INSERT INTO `a_product_pic` VALUES (128, '产品5', '产品5简介', '/files/05458051-3aeb-4f58-b7f5-06e371bbe69d.jpg', 1, '项目产品', 1, '2019-10-15 17:32:10');

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log`  (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DATA_` longblob NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  `GENERATED_` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_BYTEARR_DEPL`(`DEPLOYMENT_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `REV_` int NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1', 1);
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(5.22.0.0)', 1);
INSERT INTO `act_ge_property` VALUES ('schema.version', '5.22.0.0', 1);

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_START`(`START_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_END`(`END_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_PROCINST`(`PROC_INST_ID_` ASC, `ACT_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_EXEC`(`EXECUTION_ID_` ASC, `ACT_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `FULL_MSG_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_PROC_INST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_ACT_INST`(`ACT_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TIME`(`TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_NAME`(`NAME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TASK_ID`(`TASK_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_USER`(`USER_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_TASK`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `PROC_INST_ID_`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_INST_END`(`END_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_I_BUSKEY`(`BUSINESS_KEY_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PRIORITY_` int NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_INST_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `REV_` int NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_PROC_INST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_NAME_TYPE`(`NAME_` ASC, `VAR_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_TASK_ID`(`TASK_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_info
-- ----------------------------
DROP TABLE IF EXISTS `act_id_info`;
CREATE TABLE `act_id_info`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `USER_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `VALUE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PASSWORD_` longblob NULL,
  `PARENT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership`  (
  `USER_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`, `GROUP_ID_`) USING BTREE,
  INDEX `ACT_FK_MEMB_GROUP`(`GROUP_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `FIRST_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `LAST_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EMAIL_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PWD_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PICTURE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_INFO_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_INFO_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_INFO_JSON_BA`(`INFO_JSON_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int NULL DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE`(`EDITOR_SOURCE_VALUE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE_EXTRA`(`EDITOR_SOURCE_EXTRA_VALUE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_MODEL_DEPLOYMENT`(`DEPLOYMENT_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint NULL DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PROCDEF`(`KEY_` ASC, `VERSION_` ASC, `TENANT_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_CONFIG_`(`CONFIGURATION_` ASC) USING BTREE,
  INDEX `ACT_FK_EVENT_EXEC`(`EXECUTION_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `IS_ACTIVE_` tinyint NULL DEFAULT NULL,
  `IS_CONCURRENT_` tinyint NULL DEFAULT NULL,
  `IS_SCOPE_` tinyint NULL DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `CACHED_ENT_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_BUSKEY`(`BUSINESS_KEY_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PARENT`(`PARENT_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_SUPER`(`SUPER_EXEC_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_USER`(`USER_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_GROUP`(`GROUP_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_ATHRZ_PROCEDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TSKASS_TASK`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_IDL_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_EXCEPTION`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PRIORITY_` int NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TASK_CREATE`(`CREATE_TIME_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_EXE`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable`  (
  `ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_VARIABLE_TASK_ID`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_EXE`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_BYTEARRAY`(`BYTEARRAY_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------

-- ----------------------------
-- Table structure for blog_content
-- ----------------------------
DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content`  (
  `cid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created` bigint NULL DEFAULT NULL COMMENT '创建人id',
  `modified` bigint NULL DEFAULT NULL COMMENT '最近修改人id',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容',
  `type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `tags` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标签',
  `categories` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分类',
  `hits` int NULL DEFAULT NULL,
  `comments_num` int NULL DEFAULT 0 COMMENT '评论数量',
  `allow_comment` int NULL DEFAULT 0 COMMENT '开启评论',
  `allow_ping` int NULL DEFAULT 0 COMMENT '允许ping',
  `allow_feed` int NULL DEFAULT 0 COMMENT '允许反馈',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `gtm_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gtm_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文章内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_content
-- ----------------------------
INSERT INTO `blog_content` VALUES (75, '基于 Springboot 和 Mybatis 的后台管理系统 BootDo', NULL, NULL, NULL, '<h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">项目介绍</h3><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 30px; list-style-position: initial; list-style-image: initial; color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><li><p>面向学习型的开源框架，简洁高效，减少过渡封装，展现技术本质</p></li><li><p>Springboot作为基础框架，使用mybatis作为持久层框架</p></li><li><p>使用官方推荐的thymeleaf做为模板引擎，shiro作为安全框架,主流技术，“一网打尽”</p></li><li><p>基于注解的sql写法，零XML，极简配置，一键前后台代码生成</p></li></ul><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">演示地址</span>&nbsp;<a href=\"http://47.93.239.129/\" style=\"outline: 0px; color: rgb(68, 102, 187);\">http://47.93.239.129</a></p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">功能简介</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\">1. 用户管理<br>2. 角色管理<br>3. 部门管理<br>4. 菜单管理<br>5. 系统日志<br>6. 代码生成<br>7. 内容管理</p><h3 style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif;\">所用框架</h3><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">前端</span><br>1. Bootstrap<br>2. jQuery<br>3. bootstrap-table<br>4. layer<br>5. jsTree&nbsp;<br>6. summernote<br>7. jquery-validate<br>8. jquery-treegrid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">后端</span><br>1. SpringBoot&nbsp;<br>2. MyBatis<br>3. Thymeleaf<br>4. Shiro<br>5. druid</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">项目截图</span></p><p style=\"color: rgb(17, 17, 17); font-family: &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, &quot;Noto Sans CJK SC&quot;, Sathu, EucrosiaUPC, sans-serif; font-size: 16px;\"><img height=\"400\" src=\"https://static.oschina.net/uploads/space/2017/0912/182421_5LaN_3244087.png\" width=\"650\" style=\"border-width: initial; border-style: none; outline: 0px; width: 882px; max-width: -webkit-fit-content; height: auto;\"></p>', 'article', NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'bootdo', '2017-09-22 14:44:44', '2017-09-22 14:44:44');
INSERT INTO `blog_content` VALUES (100, 'springboot thymeleaf和shiro 整合——按钮可见性', NULL, NULL, NULL, '<p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">添加依赖</p><pre class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">&lt;<span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">dependency</span>&gt;</span><code class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; display: block; overflow-x: auto; padding: 10px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 4px; font-size: 13px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"> \r\n   <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">groupId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>com.github.theborakompanioni<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">groupId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>\r\n    <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">artifactId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>thymeleaf-extras-shiro<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">artifactId</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span>\r\n    <span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">version</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span></code>1.2.1<code class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; display: block; overflow-x: auto; padding: 10px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 4px; font-size: 13px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">version</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span> \r\n<span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&lt;/</span><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\"><span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">dependency</span></span></span><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">&gt;</span></span></code></pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">&nbsp;</p><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">在shiro的configuration中配置</p><pre class=\"hljs java\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-meta\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(127, 159, 127);\">@Bean</span>\r\n    <span class=\"hljs-function\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">public</span> ShiroDialect <span class=\"hljs-title\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">shiroDialect</span><span class=\"hljs-params\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">()</span> </span>{\r\n        <span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">return</span> <span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">new</span> ShiroDialect();\r\n    }</pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">&nbsp;</p><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">在html中加入xmlns</p><pre class=\"hljs xml\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\"><span class=\"hljs-tag\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">&lt;<span class=\"hljs-name\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(239, 239, 143);\">html</span> <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">lang</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"zh_CN\"</span> <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">xmlns:th</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"http://www.thymeleaf.org\"</span>\r\n      <span class=\"hljs-attr\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\">xmlns:shiro</span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"http://www.pollix.at/thymeleaf/shiro\"</span>&gt;</span></pre><p style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; margin-bottom: 16px; color: rgb(61, 70, 77); font-family: &quot;Pingfang SC&quot;, STHeiti, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 16px; background-color: rgb(248, 248, 248);\">例子</p><pre class=\"hljs scala\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; padding: 2px; background: rgb(63, 63, 63); color: rgb(220, 220, 220); border-radius: 3px; line-height: 1.4; word-wrap: normal; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;\">&lt;button shiro:hasPermission=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"sys:user:add\"</span> <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">type</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"button\"</span> <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">class</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"btn &nbsp;btn-primary\"</span> onclick=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"add()\"</span>&gt;\r\n&nbsp;&nbsp; &lt;i <span class=\"hljs-class\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent;\"><span class=\"hljs-keyword\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(227, 206, 171);\">class</span></span>=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"fa fa-plus\"</span> aria-hidden=<span class=\"hljs-string\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: transparent; color: rgb(204, 147, 147);\">\"true\"</span>&gt;&lt;/i&gt;添加\r\n&lt;/button&gt;</pre>', 'article', NULL, NULL, NULL, NULL, 1, NULL, 0, 1, 'bootdo', '2017-09-22 13:24:30', '2017-09-22 13:24:30');
INSERT INTO `blog_content` VALUES (112, ' SpringBoot 在启动时运行代码', NULL, NULL, NULL, '<p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">在Spring boot项目的实际开发中，我们有时需要项目服务启动时加载一些数据或预先完成某些动作。为了解决这样的问题，Spring&nbsp;boot 为我们提供了一个方法：通过实现接口 CommandLineRunner 来实现这样的需求。</p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">实现方式：只需要一个类即可，无需其他配置。&nbsp;</p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">实现步骤：</p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">1.创建实现接口 CommandLineRunner 的类 MyStartupRunnerTest</p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\"></p><div class=\"dp-highlighter bg_java\" style=\"font-family: Consolas, &quot;Courier New&quot;, Courier, mono, serif; font-size: 12px; background-color: rgb(231, 229, 220); width: 936.531px; overflow-x: auto; overflow-y: hidden; padding-top: 1px; position: relative; border-color: rgb(204, 204, 204); color: rgb(85, 85, 85); margin: 18px 0px !important;\"><div class=\"bar\" style=\"padding-left: 45px;\"><div class=\"tools\" style=\"padding: 3px 8px 10px 10px; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; color: silver; background-color: rgb(248, 248, 248); border-left: 3px solid rgb(108, 226, 108); border-right: 1px solid rgb(231, 229, 220);\"><strong>[java]</strong>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"ViewSource\" title=\"view plain\" style=\"background-image: url(&quot;images/default/ico_plain.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">view plain</a>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"CopyToClipboard\" title=\"copy\" style=\"background-image: url(&quot;images/default/ico_copy.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">copy</a><div style=\"position: absolute; left: 559px; top: 655px; width: 18px; height: 18px; z-index: 99;\"></div><div style=\"position: absolute; left: 721px; top: 723px; width: 18px; height: 18px; z-index: 99;\"></div></div></div><ol start=\"1\" class=\"dp-j\" style=\"padding: 0px; border: none; list-style-position: initial; list-style-image: initial; background-color: rgb(255, 255, 255); color: rgb(92, 92, 92); margin-right: 0px !important; margin-bottom: 1px !important; margin-left: 45px !important;\"><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">package</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;com.energy;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.boot.CommandLineRunner;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.core.annotation.Order;&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.stereotype.Component;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">/**</span>&nbsp;</span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">&nbsp;*&nbsp;Created&nbsp;by&nbsp;CavanLiu&nbsp;on&nbsp;2017/2/28&nbsp;0028.</span>&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">&nbsp;*/</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Component</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Order</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">(value=</span><span class=\"number\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(192, 0, 0); background-color: inherit;\">1</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">)</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">class</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;MyStartupRunnerTest&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">implements</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;CommandLineRunner&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">{&nbsp;&nbsp;</span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Override</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">void</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;run(String...&nbsp;args)&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">throws</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;Exception&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class=\"string\" style=\"margin: 0px; padding: 0px; border: none; color: blue; background-color: inherit;\">\"&gt;&gt;&gt;&gt;This&nbsp;is&nbsp;MyStartupRunnerTest&nbsp;Order=1.&nbsp;Only&nbsp;testing&nbsp;CommandLineRunner...&lt;&lt;&lt;&lt;\"</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">);&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">}&nbsp;&nbsp;</span></li></ol></div><p style=\"margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Arial; font-size: 14px;\"></p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">2.创建实现接口CommandLineRunner 的类 MyStartupRunnerTest2</p><div class=\"dp-highlighter bg_java\" style=\"font-family: Consolas, &quot;Courier New&quot;, Courier, mono, serif; font-size: 12px; background-color: rgb(231, 229, 220); width: 936.531px; overflow-x: auto; overflow-y: hidden; padding-top: 1px; position: relative; border-color: rgb(204, 204, 204); color: rgb(85, 85, 85); margin: 18px 0px !important;\"><div class=\"bar\" style=\"padding-left: 45px;\"><div class=\"tools\" style=\"padding: 3px 8px 10px 10px; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; color: silver; background-color: rgb(248, 248, 248); border-left: 3px solid rgb(108, 226, 108); border-right: 1px solid rgb(231, 229, 220);\"><strong>[java]</strong>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"ViewSource\" title=\"view plain\" style=\"background-image: url(&quot;images/default/ico_plain.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">view plain</a>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"CopyToClipboard\" title=\"copy\" style=\"background-image: url(&quot;images/default/ico_copy.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">copy</a><div style=\"position: absolute; left: 559px; top: 1094px; width: 18px; height: 18px; z-index: 99;\"></div><div style=\"position: absolute; left: 721px; top: 1160px; width: 18px; height: 18px; z-index: 99;\"></div></div></div><ol start=\"1\" class=\"dp-j\" style=\"padding: 0px; border: none; list-style-position: initial; list-style-image: initial; background-color: rgb(255, 255, 255); color: rgb(92, 92, 92); margin-right: 0px !important; margin-bottom: 1px !important; margin-left: 45px !important;\"><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">package</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;com.energy;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.boot.CommandLineRunner;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.core.annotation.Order;&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">import</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;org.springframework.stereotype.Component;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">/**</span>&nbsp;</span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">&nbsp;*&nbsp;Created&nbsp;by&nbsp;CavanLiu&nbsp;on&nbsp;2017/2/28&nbsp;0028.</span>&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"comment\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 130, 0); background-color: inherit;\">&nbsp;*/</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Component</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Order</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">(value=</span><span class=\"number\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(192, 0, 0); background-color: inherit;\">2</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">)</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">class</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;MyStartupRunnerTest2&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">implements</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;CommandLineRunner&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">{&nbsp;&nbsp;</span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"annotation\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(100, 100, 100); background-color: inherit;\">@Override</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;&nbsp;</span></span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">public</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">void</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;run(String...&nbsp;args)&nbsp;</span><span class=\"keyword\" style=\"margin: 0px; padding: 0px; border: none; color: rgb(0, 102, 153); background-color: inherit; font-weight: bold;\">throws</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&nbsp;Exception&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(<span class=\"string\" style=\"margin: 0px; padding: 0px; border: none; color: blue; background-color: inherit;\">\"&gt;&gt;&gt;&gt;This&nbsp;is&nbsp;MyStartupRunnerTest&nbsp;Order=2.&nbsp;Only&nbsp;testing&nbsp;CommandLineRunner...&lt;&lt;&lt;&lt;\"</span><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">);&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</span></li><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">}&nbsp;&nbsp;</span></li></ol></div><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">3.启动Spring boot后查看控制台输出信息，如下所示：</p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\"></p><div class=\"dp-highlighter bg_plain\" style=\"font-family: Consolas, &quot;Courier New&quot;, Courier, mono, serif; font-size: 12px; background-color: rgb(231, 229, 220); width: 936.531px; overflow-x: auto; overflow-y: hidden; padding-top: 1px; position: relative; border-color: rgb(204, 204, 204); color: rgb(85, 85, 85); margin: 18px 0px !important;\"><div class=\"bar\" style=\"padding-left: 45px;\"><div class=\"tools\" style=\"padding: 3px 8px 10px 10px; font-stretch: normal; font-size: 9px; line-height: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; color: silver; background-color: rgb(248, 248, 248); border-left: 3px solid rgb(108, 226, 108); border-right: 1px solid rgb(231, 229, 220);\"><strong>[plain]</strong>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"ViewSource\" title=\"view plain\" style=\"background-image: url(&quot;images/default/ico_plain.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">view plain</a>&nbsp;<a target=\"_blank\" href=\"http://blog.csdn.net/mimica247706624/article/details/58596490#\" class=\"CopyToClipboard\" title=\"copy\" style=\"background-image: url(&quot;images/default/ico_copy.gif&quot;); background-position: left top; background-repeat: no-repeat; border: none; padding: 1px; margin: 0px 10px 0px 0px; font-size: 9px; color: rgb(160, 160, 160); display: inline-block; width: 16px; height: 16px; text-indent: -2000px;\">copy</a><div style=\"position: absolute; left: 563px; top: 1532px; width: 18px; height: 18px; z-index: 99;\"></div><div style=\"position: absolute; left: 725px; top: 1597px; width: 18px; height: 18px; z-index: 99;\"></div></div></div><ol start=\"1\" style=\"padding: 0px; border: none; list-style-position: initial; list-style-image: initial; background-color: rgb(255, 255, 255); color: rgb(92, 92, 92); margin-right: 0px !important; margin-bottom: 1px !important; margin-left: 45px !important;\"><li class=\"alt\" style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; color: inherit; line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\"><span style=\"margin: 0px; padding: 0px; border: none; background-color: inherit;\">&gt;&gt;&gt;&gt;This&nbsp;is&nbsp;MyStartupRunnerTest&nbsp;Order=1.&nbsp;Only&nbsp;testing&nbsp;CommandLineRunner...&lt;&lt;&lt;&lt;&nbsp;&nbsp;</span></span></li><li style=\"border-top: none; border-right: none; border-bottom: none; border-left: 3px solid rgb(108, 226, 108); border-image: initial; list-style-type: decimal-leading-zero; list-style-image: initial; background-color: rgb(248, 248, 248); line-height: 18px; margin: 0px !important; padding: 0px 3px 0px 10px !important; list-style-position: outside !important;\"><span style=\"margin: 0px; padding: 0px; border: none; color: black; background-color: inherit;\">&gt;&gt;&gt;&gt;This&nbsp;is&nbsp;MyStartupRunnerTest2&nbsp;Order=2.&nbsp;Only&nbsp;testing&nbsp;CommandLineRunner...&lt;&lt;&lt;&lt;&nbsp;&nbsp;</span></li></ol></div><p style=\"margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: Arial; font-size: 14px;\"></p><p style=\"margin-bottom: 1.1em; padding: 0px; color: rgb(85, 85, 85); font-family: &quot;microsoft yahei&quot;; font-size: 14px;\">4.Application启动类代码略。</p><p><span style=\"color: rgb(85, 85, 85); font-family: Arial; font-size: 14px;\">说明：CommandLineRunner接口的运行顺序是依据@Order注解的value由小到大执行，即value值越小优先级越高。</span><br></p>', 'article', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 'bootdo', '2017-09-26 15:18:15', '2017-09-26 15:18:15');
INSERT INTO `blog_content` VALUES (116, 'ablout', NULL, NULL, NULL, '<h1 style=\"box-sizing: inherit; font-size: 28px; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); min-height: 1rem; -webkit-font-smoothing: antialiased; cursor: text; position: relative; margin-top: 0px !important;\">BootDo 面向学习型的开源框架</h1><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"平台简介\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E5%B9%B3%E5%8F%B0%E7%AE%80%E4%BB%8B\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>平台简介</h2><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">BootDo是高效率，低封装，面向学习型，面向微服的<strong style=\"box-sizing: inherit;\">开源</strong>Java EE开发框架。</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">BootDo是在SpringBoot基础上搭建的一个Java基础开发平台，MyBatis为数据访问层，ApacheShiro为权限授权层，Ehcahe对常用数据进行缓存。</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">BootDo主要定位于后台管理系统学习交流，已内置后台管理系统的基础功能和高效的<strong style=\"box-sizing: inherit;\">代码生成</strong>工具， 包括：系统权限组件、数据权限组件、数据字典组件、核心工具组件、视图操作组件、工作流组件、代码生成等。 前端界面风格采用了结构简单、性能优良、页面美观大气的Twitter Bootstrap页面展示框架。 采用分层设计、双重验证、提交数据安全编码、密码加密、访问验证、数据权限验证。 使用Maven做项目管理，提高项目的易开发性、扩展性。</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">BootDo目前包括以下四大模块，系统管理（SYS）模块、 内容管理（CMS）模块、在线办公（OA）模块、代码生成（GEN）模块。&nbsp;<strong style=\"box-sizing: inherit;\">系统管理模块</strong>&nbsp;，包括企业组织架构（用户管理、机构管理、区域管理）、 菜单管理、角色权限管理、字典管理等功能；&nbsp;<strong style=\"box-sizing: inherit;\">内容管理模块</strong>&nbsp;，包括内容管理（文章、链接），栏目管理、站点管理、 公共留言、文件管理、前端网站展示等功能；&nbsp;<strong style=\"box-sizing: inherit;\">在线办公模块</strong>&nbsp;，提供简单的请假流程实例；<strong style=\"box-sizing: inherit;\">代码生成模块</strong>&nbsp;，完成重复的工作。</p><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">BootDo 提供了常用工具进行封装，包括日志工具、缓存工具、服务器端验证、数据字典、当前组织机构数据 （用户、机构、区域）以及其它常用小工具等。另外还提供一个强大的在线&nbsp;<strong style=\"box-sizing: inherit;\">代码生成</strong>&nbsp;工具。</p><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"内置功能\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E5%86%85%E7%BD%AE%E5%8A%9F%E8%83%BD\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>内置功能</h2><ol class=\"task-list\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit; list-style-type: decimal;\">用户管理：用户是系统操作者，该功能主要完成系统用户配置。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">机构管理：配置系统组织机构（公司、部门、小组），树结构展现，可随意调整上下级。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">区域管理：系统城市区域模型，如：国家、省市、地市、区县的维护。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">菜单管理：配置系统菜单，操作权限，按钮权限标识等。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">字典管理：对系统中经常使用的一些较为固定的数据进行维护，如：是否、男女、类别、级别等。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">连接池监视：监视当期系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">工作流引擎：实现业务工单流转、在线流程设计器。</li></ol><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"技术选型\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E6%8A%80%E6%9C%AF%E9%80%89%E5%9E%8B\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>技术选型</h2><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">1、后端</p><ul class=\"task-list\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit; list-style-type: initial;\">核心框架：Spring Boot</li><li style=\"box-sizing: inherit; list-style-type: initial;\">安全框架：Apache Shiro</li><li style=\"box-sizing: inherit; list-style-type: initial;\">模板引擎：Thymeleaf</li><li style=\"box-sizing: inherit; list-style-type: initial;\">持久层框架：MyBatis</li><li style=\"box-sizing: inherit; list-style-type: initial;\">数据库连接池：Alibaba Druid</li><li style=\"box-sizing: inherit; list-style-type: initial;\">缓存框架：Ehcache 、Redis</li><li style=\"box-sizing: inherit; list-style-type: initial;\">日志管理：SLF4J</li><li style=\"box-sizing: inherit; list-style-type: initial;\">工具类：Apache Commons、Jackson 、Xstream 1.4、Dozer 5.3、POI 3.9</li></ul><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">2、前端</p><ul class=\"task-list\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit; list-style-type: initial;\">JS框架：jQuery</li><li style=\"box-sizing: inherit; list-style-type: initial;\">客户端验证：JQuery Validation</li><li style=\"box-sizing: inherit; list-style-type: initial;\">富文本在线编辑：summernote</li><li style=\"box-sizing: inherit; list-style-type: initial;\">在线文件管理：CKFinder</li><li style=\"box-sizing: inherit; list-style-type: initial;\">数据表格：bootstrapTable</li><li style=\"box-sizing: inherit; list-style-type: initial;\">弹出层：layer</li><li style=\"box-sizing: inherit; list-style-type: initial;\">树结构控件：jsTree</li></ul><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">4、平台</p><ul class=\"task-list\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit; list-style-type: initial;\">服务器中间件：SpringBoot内置</li><li style=\"box-sizing: inherit; list-style-type: initial;\">数据库支持：目前仅提供MySql数据库的支持，但不限于数据库，平台留有其它数据库支持接口， 你可以很方便的更改为其它数据库，如：SqlServer 2008、MySql 5.5、H2等</li><li style=\"box-sizing: inherit; list-style-type: initial;\">开发环境：Java、Eclipse Java EE 、Maven 、Git</li></ul><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"安全考虑\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E5%AE%89%E5%85%A8%E8%80%83%E8%99%91\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>安全考虑</h2><ol class=\"task-list\" style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: inherit; list-style-type: decimal;\">开发语言：系统采用Java 语言开发，具有卓越的通用性、高效性、平台移植性和安全性。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">分层设计：（数据库层，数据访问层，业务逻辑层，展示层）层次清楚，低耦合，各层必须通过接口才能接入并进行参数校验（如：在展示层不可直接操作数据库），保证数据操作的安全。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">双重验证：用户表单提交双验证：包括服务器端验证及客户端验证，防止用户通过浏览器恶意修改（如不可写文本域、隐藏变量篡改、上传非法文件等），跳过客户端验证操作数据库。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">安全编码：用户表单提交所有数据，在服务器端都进行安全编码，防止用户提交非法脚本及SQL注入获取敏感数据等，确保数据安全。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">密码加密：登录用户密码进行SHA1散列加密，此加密方法是不可逆的。保证密文泄露后的安全问题。</li><li style=\"box-sizing: inherit; list-style-type: decimal;\">强制访问：系统对所有管理端链接都进行用户身份权限验证，防止用户直接填写url进行访问。</li></ol><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"演示地址\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E6%BC%94%E7%A4%BA%E5%9C%B0%E5%9D%80\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>演示地址</h2><h6 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; color: rgb(119, 119, 119); margin-top: 20px; font-size: 14px; -webkit-font-smoothing: antialiased; cursor: text; position: relative;\"><a id=\"布嘟开源wwwbootdocom\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E5%B8%83%E5%98%9F%E5%BC%80%E6%BA%90wwwbootdocom\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>布嘟开源<a href=\"http://www.bootdo.com./blog\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word;\">www.bootdo.com</a></h6><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"交流反馈\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E4%BA%A4%E6%B5%81%E5%8F%8D%E9%A6%88\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>交流反馈</h2><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"qq群-669039323\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#qq%E7%BE%A4-669039323\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>QQ群 669039323</h2><h2 style=\"box-sizing: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-weight: bold; line-height: 1.33em; color: rgb(0, 0, 0); margin-top: 20px; font-size: 24px; padding-bottom: 0.3em; -webkit-font-smoothing: antialiased; cursor: text; position: relative; border-bottom: 1px solid rgb(204, 204, 204);\"><a id=\"版权声明\" class=\"anchor\" href=\"https://gitee.com/lcg0124/bootdo#%E7%89%88%E6%9D%83%E5%A3%B0%E6%98%8E\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word; display: block; padding-left: 30px; margin-left: -20px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none;\"></a>版权声明</h2><p style=\"box-sizing: inherit; margin-bottom: 15px; line-height: 25px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px;\">本软件使用&nbsp;<a href=\"http://www.apache.org/licenses/LICENSE-2.0\" style=\"box-sizing: inherit; color: rgb(9, 94, 171); word-wrap: break-word;\">Apache License 2.0</a>&nbsp;协议，请严格遵照协议内容</p><ul class=\"task-list\" style=\"box-sizing: inherit; line-height: 24px; padding-left: 30px; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Liberation Sans&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Wenquanyi Micro Hei&quot;, &quot;WenQuanYi Zen Hei&quot;, &quot;ST Heiti&quot;, SimHei, &quot;WenQuanYi Zen Hei Sharp&quot;, sans-serif; font-size: 15px; margin-bottom: 0px !important;\"><li class=\"task-list-item\" style=\"box-sizing: inherit; list-style-type: initial;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked=\"\" disabled=\"\" style=\"margin-top: 0px; cursor: default; transition: border 0.2s linear, box-shadow 0.2s linear; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 3px inset; vertical-align: middle;\">&nbsp;注：已上内容为整体规化，部分功能还在实现中</li></ul>', NULL, NULL, 'about', NULL, NULL, 1, NULL, 0, 1, 'bootdo', '2017-09-30 14:43:09', '2017-09-30 14:43:09');
INSERT INTO `blog_content` VALUES (117, '页面加载速度优化建议', NULL, NULL, NULL, '<p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">1、合并Js文件和CSS</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">将JS代码和CSS样式分别合并到一个共享的文件，这样不仅能简化代码，而且在执行JS文件的时候，如果JS文件比较多，就需要进行多次“Get”请求，延长加载速度，将JS文件合并在一起后，自然就减少了Get请求次数，提高了加载速度。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">2、Sprites图片技术</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">Spriting是一种网页图片应用处理方式，它是将一个页面涉及到的所有零星图片都包含到一张大图中去，然后利用CSS技术展现出来。这样一来，当访问该页面时，载入的图片就不会像以前那样一幅一幅地慢慢显示出来了，可以减少了整个网页的图片大小，并且利用CSSSprites能很好地减少网页的http请求，从而大大的提高页面的性能。CSSSprites在国内很多人叫css精灵，很早就有了，在很多大型网站都有用到，特别是一些所有页面都存在的图标用得比较多，很好的提升加载速度。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">3、压缩文本和图片</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">压缩技术如gzip可以有效减少页面加载的时间。包括HTML，XML，JSON(JavaScript对象符号)，JavaScript和CSS等，压缩率都可以在大小70%左右。文本压缩用得比较多，一般直接在空间开启就行，而图片的压缩就比较随意，很多都是直接上传，其实还有很大的压缩空间。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">4、延迟显示可见区域外的内容</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">为了确保用户可以更快地看见可见区域的网页可以延迟加载或展现可见区域外的内容，为了避免页面变形，可以使用占位符标签制定正确的高度和宽度。比如WP的jQueryImage LazyLoad插件就可以在用户停留在第一屏的时候，不加载任何第一屏以下的图片信息，只有当用户把鼠标往下滚动的时候，这些图片才开始加载。这样很明显提升可见区域的加载速度，提高用户体验。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">5、确保功能图片优先加载</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">网站主要考虑可用性的重要性，一个功能按钮要提前加载出来，用户进入下载页，一个只需要8s时间的下载花了5s在等待、寻找下载按钮图片，谁能忍受?</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">6、重新布置Call-to-Action按钮</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">其实这个和上面一条是差不多的，都是从用户体验速度着手，跳过了网页的整体加载速度。速度没变，只是让一些行为按钮提前，Call-to-Action按钮一般习惯设计在页面底部，这样的习惯对于用户来说并不总是好的，购买用户需要等到最下面加载出来才能点击下一步操作。可以调整CTA按钮的位置或使用滑动的图片按钮。很多大型购物网站的加入购物车就是这种类型。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">7、图片格式优化</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">不恰当的图像格式是一种极为常见的减慢加载速度的罪魁祸首。正确的图片格式可以让图片缩小数倍，如果保存为最佳格式。可以节省大量带宽，减少处理时间时间，大大加快页面加载速度，这是一种很常见的做法。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">8、使用 Progressive JPEGs</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">ProgressiveJPEGs图片是JPEG格式的一个特殊变种，名为“高级JPEG”。在创建高级JPEG文件时，数据是这样安排的：在装入图像时，开始只显示一个模糊的图像，随着数据的装入，图像逐步变得清晰。它相当于交织的GIF格式的图片。高级JPEG主要是考虑到使用调制解调器的慢速网络而设计的，快速网络的使用者通常不会体会到它和正常JPEG格式图片的区别。对于网速比较慢的用户，这无疑有很好的体验。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">9、精简代码</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">这个可以说是最直接的一个方法，也是用得比较多的，对网页代码进行瘦身，删除不必要的沉冗代码，比如不必要的空格、换行符、注释等，包括JS代码中的无用代码也需要清除。其中对于注释代码的清除可能有些人存在误区，甚至有的在里面堆砌关键词。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">10、延迟加载和执行非必要脚本</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">网页中有很多脚本是在页面完全加载完前都不需要执行的，可以延迟加载和执行非必要脚本。这些脚本可以在onload事件之后执行，避免对网页上重要内容的呈现造成影响。这些脚本可能是你自己网页的甲苯，往往更多的是一些第三方脚本，这样的有很多，比如评论、广告、智能推荐、百度云图、分享等等，这些完全可以等主体内容加载完后再执行。</p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\"><span style=\"font-weight: 700;\">11、使用AJAX</span></p><p style=\"margin-bottom: 24px; color: rgb(14, 14, 14); font-family: Arial, &quot;Hiragino Sans GB&quot;, 冬青黑, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Helvetica, Tahoma, &quot;Arial sans-serif&quot;; font-size: 16px; text-align: justify;\">AJAX即“Asynchronous Javascript +XML“，是指一种创建交互式网页应用的网页开发技术。通过在后台与服务器进行少量数据交换，AJAX可以使网页实现异步更新。这意味着可以在不重新加载整个网页的情况下，对网页的某部分进行更新。传统的网页(不使用AJAX)如果需要更新内容，必须重载整个网页面。</p>', NULL, NULL, '', NULL, NULL, 1, NULL, 0, 1, 'bootdo', '2017-09-30 16:13:35', '2017-09-30 16:13:35');
INSERT INTO `blog_content` VALUES (118, '1312', NULL, NULL, NULL, '<p>123132</p>', 'article', NULL, '123', NULL, NULL, 1, NULL, 0, 1, '1231', '2019-10-12 16:10:48', '2019-10-12 16:10:48');

-- ----------------------------
-- Table structure for oa_notify
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify`;
CREATE TABLE `oa_notify`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '类型',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '附件',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '状态',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oa_notify_del_flag`(`del_flag` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '通知通告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_notify
-- ----------------------------
INSERT INTO `oa_notify` VALUES (41, '3', '十九大召开了', '十九大召开了，竟然没邀请我', '', '1', 1, NULL, NULL, '2017-10-10 17:21:11', '', NULL);

-- ----------------------------
-- Table structure for oa_notify_record
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify_record`;
CREATE TABLE `oa_notify_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `notify_id` bigint NULL DEFAULT NULL COMMENT '通知通告ID',
  `user_id` bigint NULL DEFAULT NULL COMMENT '接受人',
  `is_read` tinyint(1) NULL DEFAULT 0 COMMENT '阅读标记',
  `read_date` date NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oa_notify_record_notify_id`(`notify_id` ASC) USING BTREE,
  INDEX `oa_notify_record_user_id`(`user_id` ASC) USING BTREE,
  INDEX `oa_notify_record_read_flag`(`is_read` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '通知通告发送记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_notify_record
-- ----------------------------
INSERT INTO `oa_notify_record` VALUES (18, 41, 1, 1, '2017-10-26');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `OA_TEST_AUDIT_del_flag`(`del_flag` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '审批流程测试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('825693cd6c1c4f6b86699fc3f1a54887', '', '136', '', '', '', '', '技能提高', '', '', '', '', '100', '', '', '', '同意', '同意', '总经理审批', '1', '2017-12-15 22:01:41', '1', '2017-12-15 22:01:41', NULL, '1');
INSERT INTO `salary` VALUES ('a80e1d9ef35a4502bd65b0e5ba7eafff', '', 'cccc', 'ccc', 'ccccc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 16:35:15', '', '2017-11-30 16:35:15', '', '');
INSERT INTO `salary` VALUES ('b5d228f729f74833883917825749f0d5', '', '', '', '', '', '', '', '', '', '', '', '', '防守打法', '', '', '', '', '', '', '2017-11-30 19:58:36', '', '2017-11-30 19:58:36', '', '');
INSERT INTO `salary` VALUES ('cc2e8083f9d8478f831b2ea852e5c17b', '', '', 'cc', 'cc', '', '', 'xxx', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 19:18:59', '', '2017-11-30 19:18:59', '', '');
INSERT INTO `salary` VALUES ('cebdb316794b48be87d93dd4dbfb7d4b', '', '', '', '发的顺丰', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 19:58:43', '', '2017-11-30 19:58:43', '', '');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (6, 0, '研发部', 1, 1);
INSERT INTO `sys_dept` VALUES (7, 6, '研发一部', 1, 1);
INSERT INTO `sys_dept` VALUES (8, 6, '研发二部', 2, 1);
INSERT INTO `sys_dept` VALUES (9, 0, '销售部', 2, 1);
INSERT INTO `sys_dept` VALUES (10, 9, '销售一部', 1, 1);
INSERT INTO `sys_dept` VALUES (11, 0, '产品部', 3, 1);
INSERT INTO `sys_dept` VALUES (12, 11, '产品一部', 1, 1);
INSERT INTO `sys_dept` VALUES (13, 0, '用户组1', 5, 1);
INSERT INTO `sys_dept` VALUES (14, 13, '测试一部', 1, 1);
INSERT INTO `sys_dept` VALUES (15, 13, '测试二部', 2, 1);
INSERT INTO `sys_dept` VALUES (16, 0, '未知部门', 1, 1);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '描述',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父级编号',
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value` ASC) USING BTREE,
  INDEX `sys_dict_label`(`name` ASC) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '正常', '0', 'del_flag', '删除标记', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (3, '显示', '1', 'show_hide', '显示/隐藏', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (4, '隐藏', '0', 'show_hide', '显示/隐藏', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (5, '是', '1', 'yes_no', '是/否', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (6, '否', '0', 'yes_no', '是/否', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (7, '红色', 'red', 'color', '颜色值', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (8, '绿色', 'green', 'color', '颜色值', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (9, '蓝色', 'blue', 'color', '颜色值', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (10, '黄色', 'yellow', 'color', '颜色值', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (11, '橙色', 'orange', 'color', '颜色值', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (12, '默认主题', 'default', 'theme', '主题方案', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (13, '天蓝主题', 'cerulean', 'theme', '主题方案', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (14, '橙色主题', 'readable', 'theme', '主题方案', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (15, '红色主题', 'united', 'theme', '主题方案', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (16, 'Flat主题', 'flat', 'theme', '主题方案', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (17, '国家', '1', 'sys_area_type', '区域类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (18, '省份、直辖市', '2', 'sys_area_type', '区域类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (19, '地市', '3', 'sys_area_type', '区域类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (20, '区县', '4', 'sys_area_type', '区域类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (21, '公司', '1', 'sys_office_type', '机构类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (22, '部门', '2', 'sys_office_type', '机构类型', 70, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (23, '小组', '3', 'sys_office_type', '机构类型', 80, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (24, '其它', '4', 'sys_office_type', '机构类型', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (25, '综合部', '1', 'sys_office_common', '快捷通用部门', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (26, '开发部', '2', 'sys_office_common', '快捷通用部门', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (27, '人力部', '3', 'sys_office_common', '快捷通用部门', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (28, '一级', '1', 'sys_office_grade', '机构等级', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (29, '二级', '2', 'sys_office_grade', '机构等级', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (30, '三级', '3', 'sys_office_grade', '机构等级', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (31, '四级', '4', 'sys_office_grade', '机构等级', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (32, '所有数据', '1', 'sys_data_scope', '数据范围', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (33, '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (34, '所在公司数据', '3', 'sys_data_scope', '数据范围', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (35, '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (36, '所在部门数据', '5', 'sys_data_scope', '数据范围', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (37, '仅本人数据', '8', 'sys_data_scope', '数据范围', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (38, '按明细设置', '9', 'sys_data_scope', '数据范围', 100, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (39, '系统管理', '1', 'sys_user_type', '用户类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (40, '部门经理', '2', 'sys_user_type', '用户类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (41, '普通用户', '3', 'sys_user_type', '用户类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (42, '基础主题', 'basic', 'cms_theme', '站点主题', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (43, '蓝色主题', 'blue', 'cms_theme', '站点主题', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (44, '红色主题', 'red', 'cms_theme', '站点主题', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (45, '文章模型', 'article', 'cms_module', '栏目模型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (46, '图片模型', 'picture', 'cms_module', '栏目模型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (47, '下载模型', 'download', 'cms_module', '栏目模型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (48, '链接模型', 'link', 'cms_module', '栏目模型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (49, '专题模型', 'special', 'cms_module', '栏目模型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (50, '默认展现方式', '0', 'cms_show_modes', '展现方式', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (51, '首栏目内容列表', '1', 'cms_show_modes', '展现方式', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (52, '栏目第一条内容', '2', 'cms_show_modes', '展现方式', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (53, '发布', '0', 'cms_del_flag', '内容状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (54, '删除', '1', 'cms_del_flag', '内容状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (55, '审核', '2', 'cms_del_flag', '内容状态', 15, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (56, '首页焦点图', '1', 'cms_posid', '推荐位', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (57, '栏目页文章推荐', '2', 'cms_posid', '推荐位', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (58, '咨询', '1', 'cms_guestbook', '留言板分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (59, '建议', '2', 'cms_guestbook', '留言板分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (60, '投诉', '3', 'cms_guestbook', '留言板分类', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (61, '其它', '4', 'cms_guestbook', '留言板分类', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (62, '公休', '1', 'oa_leave_type', '请假类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (63, '病假', '2', 'oa_leave_type', '请假类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (64, '事假', '3', 'oa_leave_type', '请假类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (65, '调休', '4', 'oa_leave_type', '请假类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (66, '婚假', '5', 'oa_leave_type', '请假类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (67, '接入日志', '1', 'sys_log_type', '日志类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (68, '异常日志', '2', 'sys_log_type', '日志类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (69, '请假流程', 'leave', 'act_type', '流程类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (70, '审批测试流程', 'test_audit', 'act_type', '流程类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (71, '分类1', '1', 'act_category', '流程分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (72, '分类2', '2', 'act_category', '流程分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (73, '增删改查', 'crud', 'gen_category', '代码生成分类', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (74, '增删改查（包含从表）', 'crud_many', 'gen_category', '代码生成分类', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (75, '树结构', 'tree', 'gen_category', '代码生成分类', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (76, '=', '=', 'gen_query_type', '查询方式', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (77, '!=', '!=', 'gen_query_type', '查询方式', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (78, '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (79, '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (80, 'Between', 'between', 'gen_query_type', '查询方式', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (81, 'Like', 'like', 'gen_query_type', '查询方式', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (82, 'Left Like', 'left_like', 'gen_query_type', '查询方式', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (83, 'Right Like', 'right_like', 'gen_query_type', '查询方式', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (84, '文本框', 'input', 'gen_show_type', '字段生成方案', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (85, '文本域', 'textarea', 'gen_show_type', '字段生成方案', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (86, '下拉框', 'select', 'gen_show_type', '字段生成方案', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (87, '复选框', 'checkbox', 'gen_show_type', '字段生成方案', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (88, '单选框', 'radiobox', 'gen_show_type', '字段生成方案', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (89, '日期选择', 'dateselect', 'gen_show_type', '字段生成方案', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (90, '人员选择', 'userselect', 'gen_show_type', '字段生成方案', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (91, '部门选择', 'officeselect', 'gen_show_type', '字段生成方案', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (92, '区域选择', 'areaselect', 'gen_show_type', '字段生成方案', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (93, 'String', 'String', 'gen_java_type', 'Java类型', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (94, 'Long', 'Long', 'gen_java_type', 'Java类型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (95, '仅持久层', 'dao', 'gen_category', '代码生成分类', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (96, '男', '1', 'sex', '性别', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (97, '女', '2', 'sex', '性别', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (98, 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (99, 'Double', 'Double', 'gen_java_type', 'Java类型', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (100, 'Date', 'java.util.Date', 'gen_java_type', 'Java类型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (104, 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (105, '会议通告', '1', 'oa_notify_type', '通知通告类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (106, '奖惩通告', '2', 'oa_notify_type', '通知通告类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (107, '活动通告', '3', 'oa_notify_type', '通知通告类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (108, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (109, '发布', '1', 'oa_notify_status', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (110, '未读', '0', 'oa_notify_read', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (111, '已读', '1', 'oa_notify_read', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (112, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (113, '删除', '0', 'del_flag', '删除标记', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (118, '关于', 'about', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '全url是:/blog/open/page/about', '');
INSERT INTO `sys_dict` VALUES (119, '交流', 'communication', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (120, '文章', 'article', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (121, '编码', 'code', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (122, '绘画', 'painting', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (186, 0, '/files/758337f2-b8d6-4180-ac19-9a75d4ea8bd4.jpg', '2024-01-25 11:07:37');
INSERT INTO `sys_file` VALUES (188, 99, '/files/3f2d1fec-3ed9-4afa-af24-a4fc48ae4694.jfif', '2024-01-25 14:26:31');
INSERT INTO `sys_file` VALUES (189, 0, '/files/2d3954ea-5a05-40c7-b4a3-caf729f23a85.jpg', '2024-01-25 14:29:32');
INSERT INTO `sys_file` VALUES (190, 0, '/files/05458051-3aeb-4f58-b7f5-06e371bbe69d.jpg', '2024-01-27 09:10:54');
INSERT INTO `sys_file` VALUES (191, 0, '/files/dfb1b80f-8a4a-4456-b6c3-92b24b6f25fb.jpeg', '2024-01-27 09:15:43');
INSERT INTO `sys_file` VALUES (192, 0, '/files/013d9390-ee68-4fa7-86c1-f60b00b4947a.jpg', '2024-01-27 09:15:50');
INSERT INTO `sys_file` VALUES (193, 0, '/files/26484402-d075-4259-9fd4-fcbde8f1f670.jpeg', '2024-01-27 09:15:56');
INSERT INTO `sys_file` VALUES (194, 99, '/files/486f02fa-1525-4a16-ba31-4517e3d8bf68.jfif', '2024-01-27 09:16:03');
INSERT INTO `sys_file` VALUES (195, 0, '/files/6dd978da-db4f-4a58-85e4-5dd4badd040f.jpeg', '2024-01-27 09:18:56');
INSERT INTO `sys_file` VALUES (196, 0, '/files/f8131f67-ef17-4482-861f-ac0d6553ab03.jpg', '2024-01-27 09:19:19');
INSERT INTO `sys_file` VALUES (197, 0, '/files/9eac9f7d-26f0-4c51-b92f-1624f40bec17.jpg', '2024-01-27 09:19:28');
INSERT INTO `sys_file` VALUES (198, 99, '/files/f04bba72-01e9-4bfa-9369-d5bf40d6a9d8.jfif', '2024-01-27 09:19:36');
INSERT INTO `sys_file` VALUES (199, 0, '/files/6f9b7600-c5a2-49b6-af2a-8ffc1425b903.jpeg', '2024-01-27 09:19:52');
INSERT INTO `sys_file` VALUES (200, 0, '/files/27b6a0c8-3432-4ec8-9f16-a2373cfc36fd.jpeg', '2024-01-27 09:20:03');
INSERT INTO `sys_file` VALUES (201, 0, '/files/c3c2d954-2ac0-4185-804f-476a966d816c.jpeg', '2024-01-27 09:20:13');
INSERT INTO `sys_file` VALUES (202, 0, '/files/c6ba53ee-cf02-4a4a-b316-4f8b845bb3f7.jpg', '2024-01-27 09:21:43');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1007 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (685, -1, '获取用户信息为空', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:16:42');
INSERT INTO `sys_log` VALUES (686, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:18:17');
INSERT INTO `sys_log` VALUES (687, -1, '获取用户信息为空', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:18:25');
INSERT INTO `sys_log` VALUES (688, -1, '获取用户信息为空', '登录', 41, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:18:53');
INSERT INTO `sys_log` VALUES (689, -1, '获取用户信息为空', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:20:22');
INSERT INTO `sys_log` VALUES (690, -1, '获取用户信息为空', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:21:27');
INSERT INTO `sys_log` VALUES (691, -1, '获取用户信息为空', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:23:22');
INSERT INTO `sys_log` VALUES (692, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:24:01');
INSERT INTO `sys_log` VALUES (693, -1, '获取用户信息为空', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:24:37');
INSERT INTO `sys_log` VALUES (694, 1, 'admin', '登录', 17726, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-19 16:25:47');
INSERT INTO `sys_log` VALUES (695, 1, 'admin', '请求访问主页', 66, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-19 16:25:47');
INSERT INTO `sys_log` VALUES (696, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:26:49');
INSERT INTO `sys_log` VALUES (697, -1, '获取用户信息为空', '登录', 16868, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:27:12');
INSERT INTO `sys_log` VALUES (698, -1, '获取用户信息为空', '登录', 16, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:27:20');
INSERT INTO `sys_log` VALUES (699, 1, 'admin', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:27:29');
INSERT INTO `sys_log` VALUES (700, 1, 'admin', '请求访问主页', 22, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 11:27:29');
INSERT INTO `sys_log` VALUES (701, -1, '获取用户信息为空', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:43:01');
INSERT INTO `sys_log` VALUES (702, -1, '获取用户信息为空', '登录', 33, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:43:20');
INSERT INTO `sys_log` VALUES (703, 1, 'admin', '登录', 11, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 11:43:30');
INSERT INTO `sys_log` VALUES (704, 1, 'admin', '请求访问主页', 47, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 11:43:30');
INSERT INTO `sys_log` VALUES (705, -1, '获取用户信息为空', '登录', 0, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:42:10');
INSERT INTO `sys_log` VALUES (706, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:42:16');
INSERT INTO `sys_log` VALUES (707, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:42:21');
INSERT INTO `sys_log` VALUES (708, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 13:42:21');
INSERT INTO `sys_log` VALUES (709, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:43:17');
INSERT INTO `sys_log` VALUES (710, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 13:43:17');
INSERT INTO `sys_log` VALUES (711, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:46:24');
INSERT INTO `sys_log` VALUES (712, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 13:46:24');
INSERT INTO `sys_log` VALUES (713, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 13:48:17');
INSERT INTO `sys_log` VALUES (714, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 13:48:17');
INSERT INTO `sys_log` VALUES (715, 1, 'admin', '登录', 0, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:05:52');
INSERT INTO `sys_log` VALUES (716, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:06:11');
INSERT INTO `sys_log` VALUES (717, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:06:23');
INSERT INTO `sys_log` VALUES (718, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 14:06:23');
INSERT INTO `sys_log` VALUES (719, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:07:40');
INSERT INTO `sys_log` VALUES (720, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 14:07:40');
INSERT INTO `sys_log` VALUES (721, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:07:51');
INSERT INTO `sys_log` VALUES (722, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:30:15');
INSERT INTO `sys_log` VALUES (723, 1, 'admin', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:30:23');
INSERT INTO `sys_log` VALUES (724, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 14:30:23');
INSERT INTO `sys_log` VALUES (725, 1, 'admin', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:33:10');
INSERT INTO `sys_log` VALUES (726, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 14:33:32');
INSERT INTO `sys_log` VALUES (727, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 14:33:32');
INSERT INTO `sys_log` VALUES (728, -1, '获取用户信息为空', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 15:41:47');
INSERT INTO `sys_log` VALUES (729, -1, '获取用户信息为空', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 15:41:55');
INSERT INTO `sys_log` VALUES (730, 1, 'admin', '登录', 38, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 15:42:01');
INSERT INTO `sys_log` VALUES (731, 1, 'admin', '请求访问主页', 62, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 15:42:02');
INSERT INTO `sys_log` VALUES (732, 2, 'test', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 15:44:02');
INSERT INTO `sys_log` VALUES (733, 2, 'test', '请求访问主页', 5, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 15:44:02');
INSERT INTO `sys_log` VALUES (734, -1, '获取用户信息为空', '登录', 25, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:00:34');
INSERT INTO `sys_log` VALUES (735, -1, '获取用户信息为空', '登录', 3, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:00:43');
INSERT INTO `sys_log` VALUES (736, -1, '获取用户信息为空', '登录', 34, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:01:00');
INSERT INTO `sys_log` VALUES (737, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:01:39');
INSERT INTO `sys_log` VALUES (738, 1, 'admin', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:02:00');
INSERT INTO `sys_log` VALUES (739, 1, 'admin', '请求访问主页', 57, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 16:02:01');
INSERT INTO `sys_log` VALUES (740, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:05:56');
INSERT INTO `sys_log` VALUES (741, -1, '获取用户信息为空', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:06:07');
INSERT INTO `sys_log` VALUES (742, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:07:08');
INSERT INTO `sys_log` VALUES (743, -1, '获取用户信息为空', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:13:30');
INSERT INTO `sys_log` VALUES (744, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:14:43');
INSERT INTO `sys_log` VALUES (745, 1, 'admin', '登录', 41, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:17:25');
INSERT INTO `sys_log` VALUES (746, 1, 'admin', '请求访问主页', 62, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 16:17:25');
INSERT INTO `sys_log` VALUES (747, 2, 'test', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:18:17');
INSERT INTO `sys_log` VALUES (748, 2, 'test', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 16:18:17');
INSERT INTO `sys_log` VALUES (749, 2, 'test', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:18:40');
INSERT INTO `sys_log` VALUES (750, 2, 'test', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:19:53');
INSERT INTO `sys_log` VALUES (751, 2, 'test', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:43:24');
INSERT INTO `sys_log` VALUES (752, 2, 'test', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:53:03');
INSERT INTO `sys_log` VALUES (753, 2, 'test', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:54:54');
INSERT INTO `sys_log` VALUES (754, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:55:39');
INSERT INTO `sys_log` VALUES (755, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:55:50');
INSERT INTO `sys_log` VALUES (756, -1, '获取用户信息为空', '登录', 30, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 16:55:59');
INSERT INTO `sys_log` VALUES (757, -1, '获取用户信息为空', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:00:53');
INSERT INTO `sys_log` VALUES (758, 1, 'admin', '登录', 32, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:01:11');
INSERT INTO `sys_log` VALUES (759, 1, 'admin', '请求访问主页', 54, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 17:01:12');
INSERT INTO `sys_log` VALUES (760, 1, 'admin', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:01:35');
INSERT INTO `sys_log` VALUES (761, 1, 'admin', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:01:57');
INSERT INTO `sys_log` VALUES (762, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:03:06');
INSERT INTO `sys_log` VALUES (763, -1, '获取用户信息为空', '登录', 29, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:03:45');
INSERT INTO `sys_log` VALUES (764, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:05:01');
INSERT INTO `sys_log` VALUES (765, -1, '获取用户信息为空', '登录', 33, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:05:46');
INSERT INTO `sys_log` VALUES (766, -1, '获取用户信息为空', '登录', 11, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:06:46');
INSERT INTO `sys_log` VALUES (767, -1, '获取用户信息为空', '登录', 37, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:07:29');
INSERT INTO `sys_log` VALUES (768, 112, 'ysl', '登录', 12, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:08:19');
INSERT INTO `sys_log` VALUES (769, 112, 'ysl', '请求访问主页', 36, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 17:08:19');
INSERT INTO `sys_log` VALUES (770, 2, 'test', '登录', 11, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-20 17:09:07');
INSERT INTO `sys_log` VALUES (771, 2, 'test', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-20 17:09:07');
INSERT INTO `sys_log` VALUES (772, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:42:05');
INSERT INTO `sys_log` VALUES (773, -1, '获取用户信息为空', '登录', 35, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:42:14');
INSERT INTO `sys_log` VALUES (774, -1, '获取用户信息为空', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:42:19');
INSERT INTO `sys_log` VALUES (775, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:42:30');
INSERT INTO `sys_log` VALUES (776, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:42:39');
INSERT INTO `sys_log` VALUES (777, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:46:32');
INSERT INTO `sys_log` VALUES (778, -1, '获取用户信息为空', '登录', 11, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:52:49');
INSERT INTO `sys_log` VALUES (779, 1, 'admin', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 08:52:58');
INSERT INTO `sys_log` VALUES (780, 1, 'admin', '请求访问主页', 55, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-22 08:52:58');
INSERT INTO `sys_log` VALUES (781, 1, 'admin', '登录', 37, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 09:14:21');
INSERT INTO `sys_log` VALUES (782, 1, 'admin', '请求访问主页', 59, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-22 09:14:21');
INSERT INTO `sys_log` VALUES (783, 1, 'admin', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 09:22:41');
INSERT INTO `sys_log` VALUES (784, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-22 09:22:41');
INSERT INTO `sys_log` VALUES (785, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 15:07:06');
INSERT INTO `sys_log` VALUES (786, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 15:30:08');
INSERT INTO `sys_log` VALUES (787, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 15:30:14');
INSERT INTO `sys_log` VALUES (788, 1, 'admin', '登录', 35, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-22 15:30:21');
INSERT INTO `sys_log` VALUES (789, 1, 'admin', '请求访问主页', 61, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-22 15:30:21');
INSERT INTO `sys_log` VALUES (790, NULL, NULL, 'error', NULL, 'http://localhost:8080/register', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'\r\n### The error may involve com.bootdo.system.dao.UserDao.addUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO sys_user (             username, name, password, dept_id, dept_name, email, mobile, status,             user_id_create, gmt_create, gmt_modified, sex, birth, pic_id,             live_address, hobby, province, city, district         )         VALUES (                    ?, ?, ?, ?, ?, ?,                    ?, ?, ?, ?, ?,                    ?, ?, ?, ?, ?, ?,                    ?, ?                )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'', NULL, '2024-01-23 14:41:26');
INSERT INTO `sys_log` VALUES (791, NULL, NULL, 'error', NULL, 'http://localhost:8080/register', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'\r\n### The error may involve com.bootdo.system.dao.UserDao.addUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO sys_user (             username, name, password, dept_id, dept_name, email, mobile, status,             user_id_create, gmt_create, gmt_modified, sex, birth, pic_id,             live_address, hobby, province, city, district         )         VALUES (                    ?, ?, ?, ?, ?, ?,                    ?, ?, ?, ?, ?,                    ?, ?, ?, ?, ?, ?,                    ?, ?                )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dept_name\' in \'field list\'', NULL, '2024-01-23 14:41:52');
INSERT INTO `sys_log` VALUES (792, -1, '获取用户信息为空', '注册', 63, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-23 14:45:13');
INSERT INTO `sys_log` VALUES (793, -1, '获取用户信息为空', '登录', 9, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:46:07');
INSERT INTO `sys_log` VALUES (794, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:46:15');
INSERT INTO `sys_log` VALUES (795, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:46:16');
INSERT INTO `sys_log` VALUES (796, -1, '获取用户信息为空', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:46:24');
INSERT INTO `sys_log` VALUES (797, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:46:48');
INSERT INTO `sys_log` VALUES (798, -1, '获取用户信息为空', '登录', 0, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:57:37');
INSERT INTO `sys_log` VALUES (799, -1, '获取用户信息为空', '登录', 38, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:57:45');
INSERT INTO `sys_log` VALUES (800, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-23 14:58:18');
INSERT INTO `sys_log` VALUES (801, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-23 15:03:17');
INSERT INTO `sys_log` VALUES (802, 1, 'admin', '登录', 76, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 08:58:30');
INSERT INTO `sys_log` VALUES (803, 1, 'admin', '请求访问主页', 170, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 08:58:30');
INSERT INTO `sys_log` VALUES (804, 1, 'admin', 'error', NULL, 'http://localhost:8080/sys/user/edit/137', 'java.lang.NullPointerException', NULL, '2024-01-24 09:02:25');
INSERT INTO `sys_log` VALUES (805, 1, 'admin', '编辑用户', 46, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 09:02:30');
INSERT INTO `sys_log` VALUES (806, 1, 'admin', '编辑用户', 18, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 09:04:31');
INSERT INTO `sys_log` VALUES (807, 1, 'admin', 'error', NULL, 'http://localhost:8080/sys/user/edit/137', 'java.lang.NullPointerException', NULL, '2024-01-24 09:05:26');
INSERT INTO `sys_log` VALUES (808, 1, 'admin', '请求更改用户密码', 1, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-01-24 09:05:37');
INSERT INTO `sys_log` VALUES (809, 1, 'admin', '添加用户', 5, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-24 09:05:51');
INSERT INTO `sys_log` VALUES (810, 1, 'admin', '编辑用户', 12, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 09:06:10');
INSERT INTO `sys_log` VALUES (811, 1, 'admin', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 09:07:17');
INSERT INTO `sys_log` VALUES (812, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:07:17');
INSERT INTO `sys_log` VALUES (813, 1, 'admin', '请求访问主页', 10, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:07:55');
INSERT INTO `sys_log` VALUES (814, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:09:50');
INSERT INTO `sys_log` VALUES (815, 1, 'admin', 'error', NULL, 'http://localhost:8080/sys/user/edit/137', 'java.lang.NullPointerException', NULL, '2024-01-24 09:09:57');
INSERT INTO `sys_log` VALUES (816, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:10:21');
INSERT INTO `sys_log` VALUES (817, 1, 'admin', 'error', NULL, 'http://localhost:8080/sys/user/edit/137', 'java.lang.NullPointerException', NULL, '2024-01-24 09:10:28');
INSERT INTO `sys_log` VALUES (818, 1, 'admin', 'error', NULL, 'http://localhost:8080/sys/user/edit/137', 'java.lang.NullPointerException', NULL, '2024-01-24 09:10:44');
INSERT INTO `sys_log` VALUES (819, 1, 'admin', '请求访问主页', 17, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:13:03');
INSERT INTO `sys_log` VALUES (820, 1, 'admin', '编辑用户', 11, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 09:13:08');
INSERT INTO `sys_log` VALUES (821, 1, 'admin', '请求更改用户密码', 0, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-01-24 09:13:38');
INSERT INTO `sys_log` VALUES (822, 1, 'admin', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 09:13:47');
INSERT INTO `sys_log` VALUES (823, 1, 'admin', '登录', 0, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 09:14:02');
INSERT INTO `sys_log` VALUES (824, 137, 'qwe', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 09:14:13');
INSERT INTO `sys_log` VALUES (825, 137, 'qwe', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 09:14:13');
INSERT INTO `sys_log` VALUES (826, NULL, NULL, 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 09:48:32');
INSERT INTO `sys_log` VALUES (827, NULL, NULL, 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 09:48:37');
INSERT INTO `sys_log` VALUES (828, NULL, NULL, 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 09:48:56');
INSERT INTO `sys_log` VALUES (829, NULL, NULL, 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 09:49:17');
INSERT INTO `sys_log` VALUES (830, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 09:59:42');
INSERT INTO `sys_log` VALUES (831, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 10:00:01');
INSERT INTO `sys_log` VALUES (832, 1, 'admin', '请求访问主页', 4, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 10:00:01');
INSERT INTO `sys_log` VALUES (833, 1, 'admin', '编辑用户', 14, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 10:00:12');
INSERT INTO `sys_log` VALUES (834, 1, 'admin', '更新用户', 39, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-24 10:00:20');
INSERT INTO `sys_log` VALUES (835, 1, 'admin', '编辑用户', 12, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 10:00:27');
INSERT INTO `sys_log` VALUES (836, 1, 'admin', '编辑用户', 9, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 10:00:42');
INSERT INTO `sys_log` VALUES (837, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 10:39:58');
INSERT INTO `sys_log` VALUES (838, 1, 'admin', '登录', 27, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 10:40:11');
INSERT INTO `sys_log` VALUES (839, 1, 'admin', '请求访问主页', 62, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 10:40:11');
INSERT INTO `sys_log` VALUES (840, 1, 'admin', '编辑用户', 31, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 10:40:15');
INSERT INTO `sys_log` VALUES (841, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 10:56:10');
INSERT INTO `sys_log` VALUES (842, 1, 'admin', '登录', 28, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 10:56:28');
INSERT INTO `sys_log` VALUES (843, 1, 'admin', '请求访问主页', 53, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 10:56:28');
INSERT INTO `sys_log` VALUES (844, -1, '获取用户信息为空', '注册', 19, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-24 10:57:13');
INSERT INTO `sys_log` VALUES (845, NULL, NULL, 'error', NULL, 'http://localhost:8080/register', 'java.lang.Exception: 用户已存在！', NULL, '2024-01-24 11:02:15');
INSERT INTO `sys_log` VALUES (846, -1, '获取用户信息为空', '注册', 26, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-24 11:02:54');
INSERT INTO `sys_log` VALUES (847, -1, '获取用户信息为空', '注册', 67, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-24 11:07:35');
INSERT INTO `sys_log` VALUES (848, -1, '获取用户信息为空', '注册', 18, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-24 11:09:48');
INSERT INTO `sys_log` VALUES (849, 141, 'the', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:10:04');
INSERT INTO `sys_log` VALUES (850, 141, 'the', '请求访问主页', 16, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:10:04');
INSERT INTO `sys_log` VALUES (851, 141, 'the', 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 11:10:07');
INSERT INTO `sys_log` VALUES (852, 141, 'the', 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 11:10:27');
INSERT INTO `sys_log` VALUES (853, 141, 'the', 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 11:11:08');
INSERT INTO `sys_log` VALUES (854, -1, '获取用户信息为空', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:14:14');
INSERT INTO `sys_log` VALUES (855, 132, 'lyf', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:14:20');
INSERT INTO `sys_log` VALUES (856, 132, 'lyf', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:14:20');
INSERT INTO `sys_log` VALUES (857, 141, 'the', '登录', 4, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:25:40');
INSERT INTO `sys_log` VALUES (858, 141, 'the', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:25:41');
INSERT INTO `sys_log` VALUES (859, 141, 'the', 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 11:25:56');
INSERT INTO `sys_log` VALUES (860, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 11:35:02');
INSERT INTO `sys_log` VALUES (861, -1, '获取用户信息为空', '注册', 14, 'com.bootdo.system.controller.LoginController.ajaxRegister()', NULL, '127.0.0.1', '2024-01-24 11:35:31');
INSERT INTO `sys_log` VALUES (862, 142, 'the', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:35:47');
INSERT INTO `sys_log` VALUES (863, 142, 'the', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:35:47');
INSERT INTO `sys_log` VALUES (864, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 11:40:46');
INSERT INTO `sys_log` VALUES (865, 142, 'the', '登录', 15, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 11:41:05');
INSERT INTO `sys_log` VALUES (866, 142, 'the', '请求访问主页', 32, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:41:05');
INSERT INTO `sys_log` VALUES (867, 142, 'the', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 11:42:15');
INSERT INTO `sys_log` VALUES (868, NULL, NULL, 'error', NULL, 'http://localhost:8080/sys/user/personal', 'java.lang.NullPointerException', NULL, '2024-01-24 13:59:48');
INSERT INTO `sys_log` VALUES (869, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 13:59:55');
INSERT INTO `sys_log` VALUES (870, 142, 'the', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 14:00:14');
INSERT INTO `sys_log` VALUES (871, 142, 'the', '请求访问主页', 3, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:00:14');
INSERT INTO `sys_log` VALUES (872, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 14:01:33');
INSERT INTO `sys_log` VALUES (873, 1, 'admin', '请求访问主页', 9, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:01:33');
INSERT INTO `sys_log` VALUES (874, 1, 'admin', '编辑用户', 16, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 14:01:47');
INSERT INTO `sys_log` VALUES (875, 1, 'admin', '更新用户', 35, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-24 14:01:57');
INSERT INTO `sys_log` VALUES (876, 142, 'the', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 14:02:22');
INSERT INTO `sys_log` VALUES (877, 142, 'the', '请求访问主页', 0, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:02:22');
INSERT INTO `sys_log` VALUES (878, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-24 14:15:35');
INSERT INTO `sys_log` VALUES (879, 142, 'the', '登录', 18, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 14:15:53');
INSERT INTO `sys_log` VALUES (880, 142, 'the', '请求访问主页', 41, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:15:53');
INSERT INTO `sys_log` VALUES (881, 142, 'the', '请求访问主页', 2, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:16:35');
INSERT INTO `sys_log` VALUES (882, 1, 'admin', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-24 14:31:15');
INSERT INTO `sys_log` VALUES (883, 1, 'admin', '请求访问主页', 7, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-24 14:31:16');
INSERT INTO `sys_log` VALUES (884, 1, 'admin', '编辑用户', 22, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-24 14:31:28');
INSERT INTO `sys_log` VALUES (885, 1, 'admin', '编辑角色', 7, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-24 14:31:40');
INSERT INTO `sys_log` VALUES (886, 1, 'admin', '更新角色', 13, 'com.bootdo.system.controller.RoleController.update()', NULL, '127.0.0.1', '2024-01-24 14:32:25');
INSERT INTO `sys_log` VALUES (887, 1, 'admin', '更新用户', 18, 'com.bootdo.system.controller.UserController.updatePersonal()', NULL, '127.0.0.1', '2024-01-24 14:32:33');
INSERT INTO `sys_log` VALUES (888, 1, 'admin', '编辑角色', 9, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-24 14:32:49');
INSERT INTO `sys_log` VALUES (889, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 10:00:48');
INSERT INTO `sys_log` VALUES (890, 1, 'admin', '请求访问主页', 11, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:00:48');
INSERT INTO `sys_log` VALUES (891, 1, 'admin', '编辑用户', 16, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-25 10:00:53');
INSERT INTO `sys_log` VALUES (892, 1, 'admin', '请求更改用户密码', 1, 'com.bootdo.system.controller.UserController.resetPwd()', NULL, '127.0.0.1', '2024-01-25 10:01:25');
INSERT INTO `sys_log` VALUES (893, 1, 'admin', '编辑用户', 12, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-25 10:01:28');
INSERT INTO `sys_log` VALUES (894, 1, 'admin', '编辑用户', 15, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-25 10:01:40');
INSERT INTO `sys_log` VALUES (895, 1, 'admin', '更新用户', 12, 'com.bootdo.system.controller.UserController.update()', NULL, '127.0.0.1', '2024-01-25 10:01:50');
INSERT INTO `sys_log` VALUES (896, 1, 'admin', '编辑用户', 8, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-25 10:01:52');
INSERT INTO `sys_log` VALUES (897, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 10:41:56');
INSERT INTO `sys_log` VALUES (898, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 10:42:08');
INSERT INTO `sys_log` VALUES (899, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:42:08');
INSERT INTO `sys_log` VALUES (900, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 10:48:15');
INSERT INTO `sys_log` VALUES (901, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 10:48:18');
INSERT INTO `sys_log` VALUES (902, 1, 'admin', '登录', 29, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 10:48:31');
INSERT INTO `sys_log` VALUES (903, 1, 'admin', '请求访问主页', 78, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:48:31');
INSERT INTO `sys_log` VALUES (904, 1, 'admin', '请求访问主页', 16, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:09');
INSERT INTO `sys_log` VALUES (905, 1, 'admin', '请求访问主页', 3, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:12');
INSERT INTO `sys_log` VALUES (906, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:19');
INSERT INTO `sys_log` VALUES (907, 1, 'admin', '请求访问主页', 19, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:22');
INSERT INTO `sys_log` VALUES (908, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:22');
INSERT INTO `sys_log` VALUES (909, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 10:49:35');
INSERT INTO `sys_log` VALUES (910, 1, 'admin', '登录', 8, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 10:49:47');
INSERT INTO `sys_log` VALUES (911, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 10:49:47');
INSERT INTO `sys_log` VALUES (912, 1, 'admin', '登录', 46, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 11:00:07');
INSERT INTO `sys_log` VALUES (913, 1, 'admin', '请求访问主页', 48, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 11:00:07');
INSERT INTO `sys_log` VALUES (914, 1, 'admin', '登录', 31, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 11:14:09');
INSERT INTO `sys_log` VALUES (915, 1, 'admin', '请求访问主页', 67, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 11:14:09');
INSERT INTO `sys_log` VALUES (916, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 11:15:42');
INSERT INTO `sys_log` VALUES (917, 1, 'admin', '登录', 35, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 11:15:54');
INSERT INTO `sys_log` VALUES (918, 1, 'admin', '请求访问主页', 53, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 11:15:54');
INSERT INTO `sys_log` VALUES (919, 1, 'admin', '登录', 28, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 11:39:44');
INSERT INTO `sys_log` VALUES (920, 1, 'admin', '请求访问主页', 20, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 11:39:45');
INSERT INTO `sys_log` VALUES (921, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 13:53:17');
INSERT INTO `sys_log` VALUES (922, 1, 'admin', '登录', 229, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 13:53:50');
INSERT INTO `sys_log` VALUES (923, 1, 'admin', '请求访问主页', 493, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 13:53:51');
INSERT INTO `sys_log` VALUES (924, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 13:55:38');
INSERT INTO `sys_log` VALUES (925, 1, 'admin', '登录', 12, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 13:55:54');
INSERT INTO `sys_log` VALUES (926, 1, 'admin', '请求访问主页', 12, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 13:55:54');
INSERT INTO `sys_log` VALUES (927, 1, 'admin', '登录', 11, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 14:12:43');
INSERT INTO `sys_log` VALUES (928, 1, 'admin', '请求访问主页', 18, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 14:12:43');
INSERT INTO `sys_log` VALUES (929, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-25 14:14:31');
INSERT INTO `sys_log` VALUES (930, 1, 'admin', '登录', 14, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-25 14:14:44');
INSERT INTO `sys_log` VALUES (931, 1, 'admin', '请求访问主页', 15, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 14:14:44');
INSERT INTO `sys_log` VALUES (932, 1, 'admin', '请求访问主页', 6, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-25 14:30:54');
INSERT INTO `sys_log` VALUES (933, 1, 'admin', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 09:06:25');
INSERT INTO `sys_log` VALUES (934, 1, 'admin', '请求访问主页', 17, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 09:06:25');
INSERT INTO `sys_log` VALUES (935, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 09:09:02');
INSERT INTO `sys_log` VALUES (936, 1, 'admin', '请求访问主页', 8, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 09:09:02');
INSERT INTO `sys_log` VALUES (937, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 09:15:17');
INSERT INTO `sys_log` VALUES (938, 1, 'admin', '登录', 12, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 09:15:29');
INSERT INTO `sys_log` VALUES (939, 1, 'admin', '请求访问主页', 19, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 09:15:29');
INSERT INTO `sys_log` VALUES (940, 1, 'admin', '编辑角色', 4, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-27 09:17:13');
INSERT INTO `sys_log` VALUES (941, 1, 'admin', '添加用户', 0, 'com.bootdo.system.controller.UserController.add()', NULL, '127.0.0.1', '2024-01-27 09:17:26');
INSERT INTO `sys_log` VALUES (942, 1, 'admin', '编辑角色', 2, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-27 09:17:35');
INSERT INTO `sys_log` VALUES (943, 1, 'admin', '编辑角色', 0, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-27 09:17:39');
INSERT INTO `sys_log` VALUES (944, -1, '获取用户信息为空', '登录', 15, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:19:05');
INSERT INTO `sys_log` VALUES (945, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:20:33');
INSERT INTO `sys_log` VALUES (946, 1, 'admin', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:21:57');
INSERT INTO `sys_log` VALUES (947, 1, 'admin', '请求访问主页', 34, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 10:21:58');
INSERT INTO `sys_log` VALUES (948, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 10:26:39');
INSERT INTO `sys_log` VALUES (949, 1, 'admin', '登录', 15, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:26:49');
INSERT INTO `sys_log` VALUES (950, 1, 'admin', '请求访问主页', 19, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 10:26:49');
INSERT INTO `sys_log` VALUES (951, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 10:31:56');
INSERT INTO `sys_log` VALUES (952, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 10:31:59');
INSERT INTO `sys_log` VALUES (953, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 10:32:07');
INSERT INTO `sys_log` VALUES (954, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:32:21');
INSERT INTO `sys_log` VALUES (955, 1, 'admin', '登录', 20, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 10:32:30');
INSERT INTO `sys_log` VALUES (956, 1, 'admin', '请求访问主页', 17, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 10:32:30');
INSERT INTO `sys_log` VALUES (957, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-27 11:05:58');
INSERT INTO `sys_log` VALUES (958, 1, 'admin', '登录', 10, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-27 11:06:13');
INSERT INTO `sys_log` VALUES (959, 1, 'admin', '请求访问主页', 21, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-27 11:06:13');
INSERT INTO `sys_log` VALUES (960, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-29 13:46:54');
INSERT INTO `sys_log` VALUES (961, 1, 'admin', '登录', 24, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-29 13:46:59');
INSERT INTO `sys_log` VALUES (962, 1, 'admin', '请求访问主页', 37, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-29 13:46:59');
INSERT INTO `sys_log` VALUES (963, 1, 'admin', '编辑用户', 22, 'com.bootdo.system.controller.UserController.edit()', NULL, '127.0.0.1', '2024-01-29 13:47:06');
INSERT INTO `sys_log` VALUES (964, 1, 'admin', '编辑角色', 6, 'com.bootdo.system.controller.RoleController.edit()', NULL, '127.0.0.1', '2024-01-29 13:47:19');
INSERT INTO `sys_log` VALUES (965, -1, '获取用户信息为空', '登录', 23, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 09:41:05');
INSERT INTO `sys_log` VALUES (966, -1, '获取用户信息为空', '登录', 7, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 09:41:13');
INSERT INTO `sys_log` VALUES (967, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 09:41:22');
INSERT INTO `sys_log` VALUES (968, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 09:41:37');
INSERT INTO `sys_log` VALUES (969, -1, '获取用户信息为空', '登录', 31, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 09:44:50');
INSERT INTO `sys_log` VALUES (970, -1, '获取用户信息为空', '登录', 0, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:00:39');
INSERT INTO `sys_log` VALUES (971, -1, '获取用户信息为空', '登录', 18, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:00:44');
INSERT INTO `sys_log` VALUES (972, -1, '获取用户信息为空', '登录', 6, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:08:40');
INSERT INTO `sys_log` VALUES (973, -1, '获取用户信息为空', '登录', 20, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:17:40');
INSERT INTO `sys_log` VALUES (974, -1, '获取用户信息为空', '登录', 16, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:17:47');
INSERT INTO `sys_log` VALUES (975, -1, '获取用户信息为空', '登录', 5, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:17:53');
INSERT INTO `sys_log` VALUES (976, -1, '获取用户信息为空', '登录', 32, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:21:54');
INSERT INTO `sys_log` VALUES (977, -1, '获取用户信息为空', '登录', 63646, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:25:39');
INSERT INTO `sys_log` VALUES (978, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:26:57');
INSERT INTO `sys_log` VALUES (979, -1, '获取用户信息为空', '登录', 300154, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:32:09');
INSERT INTO `sys_log` VALUES (980, -1, '获取用户信息为空', '登录', 16, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:32:34');
INSERT INTO `sys_log` VALUES (981, 1, 'admin', '登录', 17, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 10:32:41');
INSERT INTO `sys_log` VALUES (982, 1, 'admin', '请求访问主页', 25, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-30 10:32:41');
INSERT INTO `sys_log` VALUES (983, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-30 11:24:05');
INSERT INTO `sys_log` VALUES (984, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 11:24:14');
INSERT INTO `sys_log` VALUES (985, 1, 'admin', '登录', 32, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 11:24:20');
INSERT INTO `sys_log` VALUES (986, 1, 'admin', '请求访问主页', 56, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-30 11:24:20');
INSERT INTO `sys_log` VALUES (987, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-30 15:19:00');
INSERT INTO `sys_log` VALUES (988, -1, '获取用户信息为空', '登录', 13, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 15:19:09');
INSERT INTO `sys_log` VALUES (989, -1, '获取用户信息为空', '登录', 2, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 15:19:24');
INSERT INTO `sys_log` VALUES (990, 1, 'admin', '登录', 33, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-30 15:27:43');
INSERT INTO `sys_log` VALUES (991, 1, 'admin', '请求访问主页', 61, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-01-30 15:27:44');
INSERT INTO `sys_log` VALUES (992, NULL, NULL, 'error', NULL, 'http://localhost:8080/index', 'java.lang.NullPointerException', NULL, '2024-01-31 09:36:49');
INSERT INTO `sys_log` VALUES (993, -1, '获取用户信息为空', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-31 09:37:23');
INSERT INTO `sys_log` VALUES (994, 1, 'admin', 'error', NULL, 'http://localhost:8080/phoneLogin', 'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError', NULL, '2024-01-31 09:41:27');
INSERT INTO `sys_log` VALUES (995, 1, 'admin', '登录', 3, 'com.bootdo.system.controller.LoginController.phoneLogin()', NULL, '127.0.0.1', '2024-01-31 09:41:40');
INSERT INTO `sys_log` VALUES (996, 1, 'admin', 'error', NULL, 'http://localhost:8080/phoneLogin', 'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError', NULL, '2024-01-31 09:44:30');
INSERT INTO `sys_log` VALUES (997, 1, 'admin', '登录', 1, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-01-31 09:45:18');
INSERT INTO `sys_log` VALUES (998, 1, 'admin', 'error', NULL, 'http://localhost:8080/phoneLogin', 'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError', NULL, '2024-01-31 09:45:52');
INSERT INTO `sys_log` VALUES (999, 1, 'admin', 'error', NULL, 'http://localhost:8080/phoneLogin', 'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError', NULL, '2024-01-31 09:46:38');
INSERT INTO `sys_log` VALUES (1000, 1, 'admin', 'error', NULL, 'http://localhost:8080/phoneLogin', 'org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.StackOverflowError', NULL, '2024-01-31 09:46:48');
INSERT INTO `sys_log` VALUES (1001, 1, 'admin', '登录', 32, 'com.bootdo.system.controller.LoginController.phoneLogin()', NULL, '127.0.0.1', '2024-01-31 09:52:12');
INSERT INTO `sys_log` VALUES (1002, 1, 'admin', '登录', 85439, 'com.bootdo.system.controller.LoginController.phoneLogin()', NULL, '127.0.0.1', '2024-01-31 09:55:18');
INSERT INTO `sys_log` VALUES (1003, 1, 'admin', '登录', 17, 'com.bootdo.system.controller.LoginController.phoneLogin()', NULL, '127.0.0.1', '2024-01-31 09:59:13');
INSERT INTO `sys_log` VALUES (1004, 1, 'admin', '登录', 6, 'com.bootdo.system.controller.LoginController.phoneLogin()', NULL, '127.0.0.1', '2024-01-31 09:59:27');
INSERT INTO `sys_log` VALUES (1005, 1, 'admin', '登录', 67, 'com.bootdo.system.controller.LoginController.ajaxLogin()', NULL, '127.0.0.1', '2024-02-01 08:52:50');
INSERT INTO `sys_log` VALUES (1006, 1, 'admin', '请求访问主页', 92, 'com.bootdo.system.controller.LoginController.index()', NULL, '127.0.0.1', '2024-02-01 08:52:51');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '基础管理', '', '', 0, 'fa fa-bars', 0, '2017-08-09 22:49:47', NULL);
INSERT INTO `sys_menu` VALUES (2, 3, '系统菜单', 'sys/menu/', 'sys:menu:menu', 1, 'fa fa-th-list', 2, '2017-08-09 22:55:15', NULL);
INSERT INTO `sys_menu` VALUES (3, 0, '系统管理', NULL, NULL, 0, 'fa fa-desktop', 1, '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES (6, 3, '用户管理', 'sys/user/', 'sys:user:user', 1, 'fa fa-user', 0, '2017-08-10 14:12:11', NULL);
INSERT INTO `sys_menu` VALUES (7, 3, '角色管理', 'sys/role', 'sys:role:role', 1, 'fa fa-paw', 1, '2017-08-10 14:13:19', NULL);
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '', 'sys:user:add', 2, '', 0, '2017-08-14 10:51:35', NULL);
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '', 'sys:user:edit', 2, '', 0, '2017-08-14 10:52:06', NULL);
INSERT INTO `sys_menu` VALUES (14, 6, '删除', NULL, 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', NULL);
INSERT INTO `sys_menu` VALUES (15, 7, '新增', '', 'sys:role:add', 2, '', 0, '2017-08-14 10:56:37', NULL);
INSERT INTO `sys_menu` VALUES (20, 2, '新增', '', 'sys:menu:add', 2, '', 0, '2017-08-14 10:59:32', NULL);
INSERT INTO `sys_menu` VALUES (21, 2, '编辑', '', 'sys:menu:edit', 2, '', 0, '2017-08-14 10:59:56', NULL);
INSERT INTO `sys_menu` VALUES (22, 2, '删除', '', 'sys:menu:remove', 2, '', 0, '2017-08-14 11:00:26', NULL);
INSERT INTO `sys_menu` VALUES (24, 6, '批量删除', '', 'sys:user:batchRemove', 2, '', 0, '2017-08-14 17:27:18', NULL);
INSERT INTO `sys_menu` VALUES (25, 6, '停用', NULL, 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', NULL);
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '', 'sys:user:resetPwd', 2, '', 0, '2017-08-14 17:28:34', NULL);
INSERT INTO `sys_menu` VALUES (27, 91, '系统日志', 'common/log', 'common:log', 1, 'fa fa-warning', 0, '2017-08-14 22:11:53', NULL);
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', NULL, 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', NULL);
INSERT INTO `sys_menu` VALUES (29, 27, '删除', NULL, 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', NULL);
INSERT INTO `sys_menu` VALUES (30, 27, '清空', NULL, 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', NULL);
INSERT INTO `sys_menu` VALUES (48, 77, '代码生成', 'common/generator', 'common:generator', 1, 'fa fa-code', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (55, 7, '编辑', '', 'sys:role:edit', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (56, 7, '删除', '', 'sys:role:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (57, 91, '运行监控', '/druid/index.html', '', 1, 'fa fa-caret-square-o-right', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 2, '批量删除', '', 'sys:menu:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (62, 7, '批量删除', '', 'sys:role:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, 1, '文件管理', '/common/sysFile', 'common:sysFile:sysFile', 1, 'fa fa-folder-open', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, 77, '计划任务', 'common/job', 'common:taskScheduleJob', 1, 'fa fa-hourglass-1', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, 3, '部门管理', '/system/sysDept', 'system:sysDept:sysDept', 1, 'fa fa-users', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, 73, '增加', '/system/sysDept/add', 'system:sysDept:add', 2, NULL, 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, 73, '刪除', 'system/sysDept/remove', 'system:sysDept:remove', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, 73, '编辑', '/system/sysDept/edit', 'system:sysDept:edit', 2, NULL, 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, 0, '系统工具', '', '', 0, 'fa fa-gear', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, 1, '数据字典', '/common/dict', 'common:dict:dict', 1, 'fa fa-book', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, 78, '增加', '/common/dict/add', 'common:dict:add', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (80, 78, '编辑', '/common/dict/edit', 'common:dict:edit', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (81, 78, '删除', '/common/dict/remove', 'common:dict:remove', 2, '', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (83, 78, '批量删除', '/common/dict/batchRemove', 'common:dict:batchRemove', 2, '', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (91, 0, '系统监控', '', '', 0, 'fa fa-video-camera', 5, NULL, NULL);
INSERT INTO `sys_menu` VALUES (92, 91, '在线用户', 'sys/online', '', 1, 'fa fa-user', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (93, 0, '文章管理', '', '', 0, 'fa fa-address-card', 6, NULL, NULL);
INSERT INTO `sys_menu` VALUES (95, 93, '文章信息管理', 'article/news', 'article:news', 1, 'fa fa-bars', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (96, 0, '产品管理', '', '', 0, 'fa fa-area-chart', 7, NULL, NULL);
INSERT INTO `sys_menu` VALUES (97, 96, '产品图片管理', 'product/productPic', 'product:productPic', 1, 'fa fa-bank', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (98, 0, '轮播图管理', '', '', 0, 'fa fa-calendar-check-o', 8, NULL, NULL);
INSERT INTO `sys_menu` VALUES (99, 98, '首页轮播图管理', 'indexpic/indexPic', 'indexpic:indexPic', 1, 'fa fa-bell-o', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (100, 98, '轮播图类型管理', 'indexpic/picType', 'indexpic:picType', 1, 'fa fa-bars', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (101, 0, '基础信息配置', '', '', 0, 'fa fa-anchor', 10, NULL, NULL);
INSERT INTO `sys_menu` VALUES (102, 101, '公司简介设置', 'common/aboutconfig/editShow?type=1', '', 1, 'fa fa-asterisk', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (103, 101, '企业文化设置', 'common/aboutconfig/editShow?type=2', '', 1, 'fa fa-adjust', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, 101, '经营理念设置', 'common/aboutconfig/editShow?type=3', '', 1, 'fa fa-at', 3, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级用户角色', 'admin', '拥有最高权限', 2, '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'ordinary_user', '拥有一般权限', 2, '2024-01-20 15:08:54', '2024-01-20 15:08:58');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3475 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (367, 44, 1);
INSERT INTO `sys_role_menu` VALUES (368, 44, 32);
INSERT INTO `sys_role_menu` VALUES (369, 44, 33);
INSERT INTO `sys_role_menu` VALUES (370, 44, 34);
INSERT INTO `sys_role_menu` VALUES (371, 44, 35);
INSERT INTO `sys_role_menu` VALUES (372, 44, 28);
INSERT INTO `sys_role_menu` VALUES (373, 44, 29);
INSERT INTO `sys_role_menu` VALUES (374, 44, 30);
INSERT INTO `sys_role_menu` VALUES (375, 44, 38);
INSERT INTO `sys_role_menu` VALUES (376, 44, 4);
INSERT INTO `sys_role_menu` VALUES (377, 44, 27);
INSERT INTO `sys_role_menu` VALUES (378, 45, 38);
INSERT INTO `sys_role_menu` VALUES (379, 46, 3);
INSERT INTO `sys_role_menu` VALUES (380, 46, 20);
INSERT INTO `sys_role_menu` VALUES (381, 46, 21);
INSERT INTO `sys_role_menu` VALUES (382, 46, 22);
INSERT INTO `sys_role_menu` VALUES (383, 46, 23);
INSERT INTO `sys_role_menu` VALUES (384, 46, 11);
INSERT INTO `sys_role_menu` VALUES (385, 46, 12);
INSERT INTO `sys_role_menu` VALUES (386, 46, 13);
INSERT INTO `sys_role_menu` VALUES (387, 46, 14);
INSERT INTO `sys_role_menu` VALUES (388, 46, 24);
INSERT INTO `sys_role_menu` VALUES (389, 46, 25);
INSERT INTO `sys_role_menu` VALUES (390, 46, 26);
INSERT INTO `sys_role_menu` VALUES (391, 46, 15);
INSERT INTO `sys_role_menu` VALUES (392, 46, 2);
INSERT INTO `sys_role_menu` VALUES (393, 46, 6);
INSERT INTO `sys_role_menu` VALUES (394, 46, 7);
INSERT INTO `sys_role_menu` VALUES (598, 50, 38);
INSERT INTO `sys_role_menu` VALUES (632, 38, 42);
INSERT INTO `sys_role_menu` VALUES (737, 51, 38);
INSERT INTO `sys_role_menu` VALUES (738, 51, 39);
INSERT INTO `sys_role_menu` VALUES (739, 51, 40);
INSERT INTO `sys_role_menu` VALUES (740, 51, 41);
INSERT INTO `sys_role_menu` VALUES (741, 51, 4);
INSERT INTO `sys_role_menu` VALUES (742, 51, 32);
INSERT INTO `sys_role_menu` VALUES (743, 51, 33);
INSERT INTO `sys_role_menu` VALUES (744, 51, 34);
INSERT INTO `sys_role_menu` VALUES (745, 51, 35);
INSERT INTO `sys_role_menu` VALUES (746, 51, 27);
INSERT INTO `sys_role_menu` VALUES (747, 51, 28);
INSERT INTO `sys_role_menu` VALUES (748, 51, 29);
INSERT INTO `sys_role_menu` VALUES (749, 51, 30);
INSERT INTO `sys_role_menu` VALUES (750, 51, 1);
INSERT INTO `sys_role_menu` VALUES (1064, 54, 53);
INSERT INTO `sys_role_menu` VALUES (1095, 55, 2);
INSERT INTO `sys_role_menu` VALUES (1096, 55, 6);
INSERT INTO `sys_role_menu` VALUES (1097, 55, 7);
INSERT INTO `sys_role_menu` VALUES (1098, 55, 3);
INSERT INTO `sys_role_menu` VALUES (1099, 55, 50);
INSERT INTO `sys_role_menu` VALUES (1100, 55, 49);
INSERT INTO `sys_role_menu` VALUES (1101, 55, 1);
INSERT INTO `sys_role_menu` VALUES (1856, 53, 28);
INSERT INTO `sys_role_menu` VALUES (1857, 53, 29);
INSERT INTO `sys_role_menu` VALUES (1858, 53, 30);
INSERT INTO `sys_role_menu` VALUES (1859, 53, 27);
INSERT INTO `sys_role_menu` VALUES (1860, 53, 57);
INSERT INTO `sys_role_menu` VALUES (1861, 53, 71);
INSERT INTO `sys_role_menu` VALUES (1862, 53, 48);
INSERT INTO `sys_role_menu` VALUES (1863, 53, 72);
INSERT INTO `sys_role_menu` VALUES (1864, 53, 1);
INSERT INTO `sys_role_menu` VALUES (1865, 53, 7);
INSERT INTO `sys_role_menu` VALUES (1866, 53, 55);
INSERT INTO `sys_role_menu` VALUES (1867, 53, 56);
INSERT INTO `sys_role_menu` VALUES (1868, 53, 62);
INSERT INTO `sys_role_menu` VALUES (1869, 53, 15);
INSERT INTO `sys_role_menu` VALUES (1870, 53, 2);
INSERT INTO `sys_role_menu` VALUES (1871, 53, 61);
INSERT INTO `sys_role_menu` VALUES (1872, 53, 20);
INSERT INTO `sys_role_menu` VALUES (1873, 53, 21);
INSERT INTO `sys_role_menu` VALUES (1874, 53, 22);
INSERT INTO `sys_role_menu` VALUES (2084, 56, 68);
INSERT INTO `sys_role_menu` VALUES (2085, 56, 60);
INSERT INTO `sys_role_menu` VALUES (2086, 56, 59);
INSERT INTO `sys_role_menu` VALUES (2087, 56, 58);
INSERT INTO `sys_role_menu` VALUES (2088, 56, 51);
INSERT INTO `sys_role_menu` VALUES (2089, 56, 50);
INSERT INTO `sys_role_menu` VALUES (2090, 56, 49);
INSERT INTO `sys_role_menu` VALUES (2243, 48, 72);
INSERT INTO `sys_role_menu` VALUES (2247, 63, -1);
INSERT INTO `sys_role_menu` VALUES (2248, 63, 84);
INSERT INTO `sys_role_menu` VALUES (2249, 63, 85);
INSERT INTO `sys_role_menu` VALUES (2250, 63, 88);
INSERT INTO `sys_role_menu` VALUES (2251, 63, 87);
INSERT INTO `sys_role_menu` VALUES (2252, 64, 84);
INSERT INTO `sys_role_menu` VALUES (2253, 64, 89);
INSERT INTO `sys_role_menu` VALUES (2254, 64, 88);
INSERT INTO `sys_role_menu` VALUES (2255, 64, 87);
INSERT INTO `sys_role_menu` VALUES (2256, 64, 86);
INSERT INTO `sys_role_menu` VALUES (2257, 64, 85);
INSERT INTO `sys_role_menu` VALUES (2258, 65, 89);
INSERT INTO `sys_role_menu` VALUES (2259, 65, 88);
INSERT INTO `sys_role_menu` VALUES (2260, 65, 86);
INSERT INTO `sys_role_menu` VALUES (2262, 67, 48);
INSERT INTO `sys_role_menu` VALUES (2263, 68, 88);
INSERT INTO `sys_role_menu` VALUES (2264, 68, 87);
INSERT INTO `sys_role_menu` VALUES (2265, 69, 89);
INSERT INTO `sys_role_menu` VALUES (2266, 69, 88);
INSERT INTO `sys_role_menu` VALUES (2267, 69, 86);
INSERT INTO `sys_role_menu` VALUES (2268, 69, 87);
INSERT INTO `sys_role_menu` VALUES (2269, 69, 85);
INSERT INTO `sys_role_menu` VALUES (2270, 69, 84);
INSERT INTO `sys_role_menu` VALUES (2271, 70, 85);
INSERT INTO `sys_role_menu` VALUES (2272, 70, 89);
INSERT INTO `sys_role_menu` VALUES (2273, 70, 88);
INSERT INTO `sys_role_menu` VALUES (2274, 70, 87);
INSERT INTO `sys_role_menu` VALUES (2275, 70, 86);
INSERT INTO `sys_role_menu` VALUES (2276, 70, 84);
INSERT INTO `sys_role_menu` VALUES (2277, 71, 87);
INSERT INTO `sys_role_menu` VALUES (2278, 72, 59);
INSERT INTO `sys_role_menu` VALUES (2279, 73, 48);
INSERT INTO `sys_role_menu` VALUES (2280, 74, 88);
INSERT INTO `sys_role_menu` VALUES (2281, 74, 87);
INSERT INTO `sys_role_menu` VALUES (2282, 75, 88);
INSERT INTO `sys_role_menu` VALUES (2283, 75, 87);
INSERT INTO `sys_role_menu` VALUES (2284, 76, 85);
INSERT INTO `sys_role_menu` VALUES (2285, 76, 89);
INSERT INTO `sys_role_menu` VALUES (2286, 76, 88);
INSERT INTO `sys_role_menu` VALUES (2287, 76, 87);
INSERT INTO `sys_role_menu` VALUES (2288, 76, 86);
INSERT INTO `sys_role_menu` VALUES (2289, 76, 84);
INSERT INTO `sys_role_menu` VALUES (2292, 78, 88);
INSERT INTO `sys_role_menu` VALUES (2293, 78, 87);
INSERT INTO `sys_role_menu` VALUES (2294, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2295, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2296, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2308, 80, 87);
INSERT INTO `sys_role_menu` VALUES (2309, 80, 86);
INSERT INTO `sys_role_menu` VALUES (2310, 80, -1);
INSERT INTO `sys_role_menu` VALUES (2311, 80, 84);
INSERT INTO `sys_role_menu` VALUES (2312, 80, 85);
INSERT INTO `sys_role_menu` VALUES (2328, 79, 72);
INSERT INTO `sys_role_menu` VALUES (2329, 79, 48);
INSERT INTO `sys_role_menu` VALUES (2330, 79, 77);
INSERT INTO `sys_role_menu` VALUES (2331, 79, 84);
INSERT INTO `sys_role_menu` VALUES (2332, 79, 89);
INSERT INTO `sys_role_menu` VALUES (2333, 79, 88);
INSERT INTO `sys_role_menu` VALUES (2334, 79, 87);
INSERT INTO `sys_role_menu` VALUES (2335, 79, 86);
INSERT INTO `sys_role_menu` VALUES (2336, 79, 85);
INSERT INTO `sys_role_menu` VALUES (2337, 79, -1);
INSERT INTO `sys_role_menu` VALUES (2338, 77, 89);
INSERT INTO `sys_role_menu` VALUES (2339, 77, 88);
INSERT INTO `sys_role_menu` VALUES (2340, 77, 87);
INSERT INTO `sys_role_menu` VALUES (2341, 77, 86);
INSERT INTO `sys_role_menu` VALUES (2342, 77, 85);
INSERT INTO `sys_role_menu` VALUES (2343, 77, 84);
INSERT INTO `sys_role_menu` VALUES (2344, 77, 72);
INSERT INTO `sys_role_menu` VALUES (2345, 77, -1);
INSERT INTO `sys_role_menu` VALUES (2346, 77, 77);
INSERT INTO `sys_role_menu` VALUES (2974, 57, 93);
INSERT INTO `sys_role_menu` VALUES (2975, 57, 99);
INSERT INTO `sys_role_menu` VALUES (2976, 57, 95);
INSERT INTO `sys_role_menu` VALUES (2977, 57, 101);
INSERT INTO `sys_role_menu` VALUES (2978, 57, 96);
INSERT INTO `sys_role_menu` VALUES (2979, 57, 94);
INSERT INTO `sys_role_menu` VALUES (2980, 57, -1);
INSERT INTO `sys_role_menu` VALUES (2981, 58, 93);
INSERT INTO `sys_role_menu` VALUES (2982, 58, 99);
INSERT INTO `sys_role_menu` VALUES (2983, 58, 95);
INSERT INTO `sys_role_menu` VALUES (2984, 58, 101);
INSERT INTO `sys_role_menu` VALUES (2985, 58, 96);
INSERT INTO `sys_role_menu` VALUES (2986, 58, 94);
INSERT INTO `sys_role_menu` VALUES (2987, 58, -1);
INSERT INTO `sys_role_menu` VALUES (3428, 1, 100);
INSERT INTO `sys_role_menu` VALUES (3429, 1, 99);
INSERT INTO `sys_role_menu` VALUES (3430, 1, 97);
INSERT INTO `sys_role_menu` VALUES (3431, 1, 95);
INSERT INTO `sys_role_menu` VALUES (3432, 1, 92);
INSERT INTO `sys_role_menu` VALUES (3433, 1, 57);
INSERT INTO `sys_role_menu` VALUES (3434, 1, 30);
INSERT INTO `sys_role_menu` VALUES (3435, 1, 29);
INSERT INTO `sys_role_menu` VALUES (3436, 1, 28);
INSERT INTO `sys_role_menu` VALUES (3437, 1, 76);
INSERT INTO `sys_role_menu` VALUES (3438, 1, 75);
INSERT INTO `sys_role_menu` VALUES (3439, 1, 74);
INSERT INTO `sys_role_menu` VALUES (3440, 1, 62);
INSERT INTO `sys_role_menu` VALUES (3441, 1, 56);
INSERT INTO `sys_role_menu` VALUES (3442, 1, 55);
INSERT INTO `sys_role_menu` VALUES (3443, 1, 15);
INSERT INTO `sys_role_menu` VALUES (3444, 1, 26);
INSERT INTO `sys_role_menu` VALUES (3445, 1, 25);
INSERT INTO `sys_role_menu` VALUES (3446, 1, 24);
INSERT INTO `sys_role_menu` VALUES (3447, 1, 14);
INSERT INTO `sys_role_menu` VALUES (3448, 1, 13);
INSERT INTO `sys_role_menu` VALUES (3449, 1, 12);
INSERT INTO `sys_role_menu` VALUES (3450, 1, 61);
INSERT INTO `sys_role_menu` VALUES (3451, 1, 22);
INSERT INTO `sys_role_menu` VALUES (3452, 1, 21);
INSERT INTO `sys_role_menu` VALUES (3453, 1, 20);
INSERT INTO `sys_role_menu` VALUES (3454, 1, 71);
INSERT INTO `sys_role_menu` VALUES (3455, 1, 98);
INSERT INTO `sys_role_menu` VALUES (3456, 1, 96);
INSERT INTO `sys_role_menu` VALUES (3457, 1, 93);
INSERT INTO `sys_role_menu` VALUES (3458, 1, 27);
INSERT INTO `sys_role_menu` VALUES (3459, 1, 91);
INSERT INTO `sys_role_menu` VALUES (3460, 1, 73);
INSERT INTO `sys_role_menu` VALUES (3461, 1, 7);
INSERT INTO `sys_role_menu` VALUES (3462, 1, 6);
INSERT INTO `sys_role_menu` VALUES (3463, 1, 2);
INSERT INTO `sys_role_menu` VALUES (3464, 1, 3);
INSERT INTO `sys_role_menu` VALUES (3465, 1, 101);
INSERT INTO `sys_role_menu` VALUES (3466, 1, 104);
INSERT INTO `sys_role_menu` VALUES (3467, 1, 103);
INSERT INTO `sys_role_menu` VALUES (3468, 1, 102);
INSERT INTO `sys_role_menu` VALUES (3469, 1, -1);
INSERT INTO `sys_role_menu` VALUES (3470, 1, 1);
INSERT INTO `sys_role_menu` VALUES (3471, 2, 13);
INSERT INTO `sys_role_menu` VALUES (3472, 2, -1);
INSERT INTO `sys_role_menu` VALUES (3473, 2, 3);
INSERT INTO `sys_role_menu` VALUES (3474, 2, 6);

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES (2, '0/10 * * * * ?', 'run1', '1', '', '4028ea815a3d2a8c015a3d2f8d2a0002', 'com.bootdo.common.task.WelcomeJob', '2017-05-19 18:30:56', '0', 'group1', '2017-05-19 18:31:07', NULL, '', 'welcomJob');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `dept_id` bigint NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `sex` bigint NULL DEFAULT NULL COMMENT '性别',
  `birth` datetime NULL DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint NULL DEFAULT NULL,
  `live_address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在地区',
  `openid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '第三方微信唯一ID',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', 'd0af8fa1272ef5a152d9e27763eea293', 6, 'admin@example.com', '17699999999', 1, 1, '2017-08-15 21:40:39', '2017-08-15 21:41:00', 96, '2017-12-14 00:00:00', 138, 'ccc', '121;', '北京市', '北京市市辖区', '东城区', NULL);
INSERT INTO `sys_user` VALUES (2, 'test', '临时用户', '6cf3bb3deba2aadbd41ec9a22511084e', 6, 'test@bootdo.com', '33808479d49ca8a3cdc93d4f976d1e3d', 1, 1, '2017-08-14 13:43:05', '2017-08-14 21:15:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (36, 'ldh', '刘德华', 'bfd9394475754fbe45866eba97738c36', 7, 'ldh@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (112, 'ysl', '杨树林', '2d88b5b8b0365a9244fa67364b1a2f96', 6, 'yangslbootdo.com', '15666666666', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (123, 'zxy', '张学友', '35174ba93f5fe7267f1fb3c1bf903781', 6, 'zxy@bootdo', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (124, 'wyf', '吴亦凡', 'e179e6f687bbd57b9d7efc4746c8090a', 6, 'wyf@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (131, 'lhc', '令狐冲', 'd515538e17ecb570ba40344b5618f5d4', 6, 'lhc@bootdo.com', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (132, 'lyf', '刘亦菲', '7fdb1d9008f45950c1620ba0864e5fbd', 13, 'lyf@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (134, 'lyh', '李彦宏', 'dc26092b3244d9d432863f2738180e19', 8, 'lyh@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (135, 'wjl', '王健林', '3967697dfced162cf6a34080259b83aa', 11, 'wjl@bootod.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (136, 'gdg', '郭德纲', '3bb1bda86bc02bf6478cd91e42135d2f', 9, 'gdg@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (137, 'qwe', '蔷薇', 'ee0da788fc3e1b10f3cc3a1593f92e3f', 6, 'qwe@bootdo.com', '13433337777', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (142, 'the', '天天', '9644b3552dcc8cf9649366e093ad04f9', NULL, 'the@bootdo.com', '15666223456', 1, NULL, NULL, NULL, 96, '2024-01-03 00:00:00', NULL, '', '121;', '福建省', '福州市', '鼓楼区', NULL);

-- ----------------------------
-- Table structure for sys_user_plus
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_plus`;
CREATE TABLE `sys_user_plus`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `payment` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_plus
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (73, 30, 48);
INSERT INTO `sys_user_role` VALUES (74, 30, 49);
INSERT INTO `sys_user_role` VALUES (75, 30, 50);
INSERT INTO `sys_user_role` VALUES (76, 31, 48);
INSERT INTO `sys_user_role` VALUES (77, 31, 49);
INSERT INTO `sys_user_role` VALUES (78, 31, 52);
INSERT INTO `sys_user_role` VALUES (79, 32, 48);
INSERT INTO `sys_user_role` VALUES (80, 32, 49);
INSERT INTO `sys_user_role` VALUES (81, 32, 50);
INSERT INTO `sys_user_role` VALUES (82, 32, 51);
INSERT INTO `sys_user_role` VALUES (83, 32, 52);
INSERT INTO `sys_user_role` VALUES (84, 33, 38);
INSERT INTO `sys_user_role` VALUES (85, 33, 49);
INSERT INTO `sys_user_role` VALUES (86, 33, 52);
INSERT INTO `sys_user_role` VALUES (87, 34, 50);
INSERT INTO `sys_user_role` VALUES (88, 34, 51);
INSERT INTO `sys_user_role` VALUES (89, 34, 52);
INSERT INTO `sys_user_role` VALUES (106, 124, 1);
INSERT INTO `sys_user_role` VALUES (110, 1, 1);
INSERT INTO `sys_user_role` VALUES (111, 2, 2);
INSERT INTO `sys_user_role` VALUES (112, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (113, 131, 48);
INSERT INTO `sys_user_role` VALUES (120, 134, 1);
INSERT INTO `sys_user_role` VALUES (121, 134, 48);
INSERT INTO `sys_user_role` VALUES (124, NULL, 48);
INSERT INTO `sys_user_role` VALUES (125, 132, 52);
INSERT INTO `sys_user_role` VALUES (126, 132, 49);
INSERT INTO `sys_user_role` VALUES (127, 123, 48);
INSERT INTO `sys_user_role` VALUES (132, 36, 48);
INSERT INTO `sys_user_role` VALUES (133, 112, 2);
INSERT INTO `sys_user_role` VALUES (134, 137, 2);
INSERT INTO `sys_user_role` VALUES (135, 142, 2);
INSERT INTO `sys_user_role` VALUES (136, 135, 2);

SET FOREIGN_KEY_CHECKS = 1;
