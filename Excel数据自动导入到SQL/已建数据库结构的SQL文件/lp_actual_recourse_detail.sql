/*
 Navicat MySQL Data Transfer

 Source Server         : zhushou2.0
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 10.187.13.5:3306
 Source Schema         : cpic_qytd

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 05/03/2021 14:15:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_actual_recourse_detail
-- ----------------------------
DROP TABLE IF EXISTS `lp_actual_recourse_detail`;
CREATE TABLE `lp_actual_recourse_detail`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `COMPANY_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `DEPARTMENT_GROUP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门组名称',
  `DEPARTMENT_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门名称',
  `REPORT_NUMBER` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '报案号',
  `BLUE_ADJUSTMENT_TIME` datetime(0) NULL DEFAULT NULL COMMENT '蓝字理算核赔通过时间',
  `RED_ADJUSTMENT_TIME` datetime(0) NULL DEFAULT NULL COMMENT '红字理算核赔通过时间',
  `RECOURSE_MONEY` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿金额',
  `ACCIDENT_LIABILITY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '事故责任',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `n_company_name`(`COMPANY_NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33240 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '已追偿明细清单 41家分公司已追偿明细清单' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
