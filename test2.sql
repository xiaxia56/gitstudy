/*
 Navicat Premium Data Transfer

 Source Server         : mydata
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : test2

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 18/06/2024 14:09:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES (1, '张三');
INSERT INTO `dormitory` VALUES (2, '李四');
INSERT INTO `dormitory` VALUES (3, '阿里斯');
INSERT INTO `dormitory` VALUES (4, '原神');
INSERT INTO `dormitory` VALUES (6, '李武');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '123');
INSERT INTO `users` VALUES ('fff', '123');
INSERT INTO `users` VALUES ('ddd', '123');
INSERT INTO `users` VALUES ('rrr', '123');
INSERT INTO `users` VALUES ('asd', '123');
INSERT INTO `users` VALUES ('yyyy', '123');
INSERT INTO `users` VALUES ('zxcvb', '123');
INSERT INTO `users` VALUES ('yyy', '123');
INSERT INTO `users` VALUES ('qwe', '123');
INSERT INTO `users` VALUES ('hhh', '123');

SET FOREIGN_KEY_CHECKS = 1;
