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
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `path` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '相对路径',
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '后缀',
  `size` bigint(0) NULL DEFAULT NULL COMMENT '大小|字节B',
  `created_at` bigint(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` bigint(0) NULL DEFAULT NULL COMMENT '修改时间',
  `shard_index` bigint(0) NULL DEFAULT NULL COMMENT '已上传分片',
  `shard_size` bigint(0) NULL DEFAULT NULL COMMENT '分片大小|B',
  `shard_total` bigint(0) NULL DEFAULT NULL COMMENT '分片总数',
  `file_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '文件标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
