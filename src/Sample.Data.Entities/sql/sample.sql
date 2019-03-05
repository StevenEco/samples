﻿/*
 Navicat Premium Data Transfer

 Source Server         : local-docker-3306
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : localhost:3306
 Source Schema         : sample

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 31/01/2019 14:46:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student_scores
-- ----------------------------
DROP TABLE IF EXISTS `student_scores`;
CREATE TABLE `student_scores`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `StuNumber` int(11) NOT NULL COMMENT '学生学号',
  `StuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `Course` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '科目',
  `Score` decimal(4, 0) NULL DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `NickName` varchar(24) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '昵称',
  `Email` varchar(24) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `IsDelete` tinyint(1) NULL DEFAULT NULL COMMENT '是否已删除',
  `RegTime` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `ModifyTime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_czech_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_targs
-- ----------------------------
DROP TABLE IF EXISTS `users_targs`;
CREATE TABLE `users_targs`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `FromUserId` int(11) NOT NULL COMMENT '来源用户ID',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
