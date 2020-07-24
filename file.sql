/*
 Navicat Premium Data Transfer

 Source Server         :
 Source Server Type    : MySQL
 Source Server Version : 100504
 Source Host           :
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 24/07/2020 15:45:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `path` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '相对路径',
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '后缀',
  `size` int(11) NULL DEFAULT NULL COMMENT '大小|字节B',
  `created_at` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` bigint(20) NULL DEFAULT NULL COMMENT '修改时间',
  `shard_index` int(11) NULL DEFAULT NULL COMMENT '已上传分片',
  `shard_size` int(11) NULL DEFAULT NULL COMMENT '分片大小|B',
  `shard_total` int(11) NULL DEFAULT NULL COMMENT '分片总数',
  `file_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '文件标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'D:/BaiduNetdiskDownload/saPgKXstoIWIS4kco8mEu.mp4.4', '42c4b04ac6314711aae465701e836d5e', '', 77436512, 1594713867350, 1594713867350, 4, 20971520, 4, 'saPgKXstoIWIS4kco8mEu');
INSERT INTO `file` VALUES (5, 'D:/BaiduNetdiskDownload/5IaqZ3GITueQyMyqm24MiW.mp4.2', '4ba5e647326846f48e6e0d8a5a4c1a13', '', 33920811, 1594716843306, 1594716843306, 2, 20971520, 2, '5IaqZ3GITueQyMyqm24MiW');

SET FOREIGN_KEY_CHECKS = 1;
