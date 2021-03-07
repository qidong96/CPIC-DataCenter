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

 Date: 05/03/2021 14:14:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ct_insurance_summary
-- ----------------------------
DROP TABLE IF EXISTS `lp_ct_insurance_summary`;
CREATE TABLE `lp_ct_insurance_summary`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `COMPANY_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `DEPARTMENT_GROUP_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门组名称',
  `DEPARTMENT_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门名称',
  `PLAN_RECOURSE_NUMBER_CURRENT` int(11) NULL DEFAULT NULL COMMENT '应追偿数量（当前）',
  `PLAN_RECOURSE_MONEY_CURRENT` decimal(32, 2) NULL DEFAULT NULL COMMENT '应追偿金额（当期）',
  `RECOURSE_NUMBER_CURRENT` int(11) NULL DEFAULT NULL COMMENT '追偿数量（当期）',
  `RECOURSE_MONEY_CURRENT` decimal(32, 2) NULL DEFAULT NULL COMMENT '追偿金额（当期）',
  `COST_RECOVERY` decimal(32, 2) NULL DEFAULT NULL COMMENT '费用追偿（当期）',
  `PLAN_RECOURSE_NUMBER_ADD` int(11) NULL DEFAULT NULL COMMENT '应追偿数量（累计）',
  `PLAN_RECOURSE_MONEY_ADD` decimal(32, 2) NULL DEFAULT NULL COMMENT '应追偿金额（累计）',
  `RECOURSE_NUMBER_ADD` int(11) NULL DEFAULT NULL COMMENT '追偿数量（累计）',
  `RECOURSE_MONEY_ADD` decimal(32, 2) NULL DEFAULT NULL COMMENT '追偿金额(累计)',
  `COST_RECOVERY_ADD` decimal(32, 2) NULL DEFAULT NULL COMMENT '费用追偿（累计）',
  `COST_RECOVERY_LEGAL` decimal(32, 2) NULL DEFAULT NULL COMMENT '追偿法律费用(当期)',
  `COST_RECOVERY_LEGAL_ADD` decimal(32, 2) NULL DEFAULT NULL COMMENT '追偿法律费用(累计)',
  `PLAN_RECOURSE_INITIATIONRATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '应追偿系统发起率',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 329 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '交强险追偿汇总报表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
