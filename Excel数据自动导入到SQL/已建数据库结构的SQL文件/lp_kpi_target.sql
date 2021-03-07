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

 Date: 05/03/2021 14:14:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_kpi_target
-- ----------------------------
DROP TABLE IF EXISTS `lp_kpi_target`;
CREATE TABLE `lp_kpi_target`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '机构',
  `RECOURSE_MONEY_THRESHOLD` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿金额门槛值',
  `RECOURSE_MONEY_TARGET` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿金额目标值',
  `RECOURSE_MONEY_CHALLENGE` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿金额挑战值',
  `SUBROGATE_BUS_MONEY_TARGET` decimal(32, 8) NULL DEFAULT NULL COMMENT '代位追偿商业险目标值',
  `SUBROGATE_CIN_MONEY_TARGET` decimal(32, 8) NULL DEFAULT NULL COMMENT '代位追偿交强险目标值',
  `DEDUCTION_RATE_THRESHOLD` decimal(32, 8) NULL DEFAULT NULL COMMENT '抵扣率门槛值',
  `DEDUCTION_RATE_TARGET` decimal(32, 8) NULL DEFAULT NULL COMMENT '抵扣率目标值',
  `DEDUCTION_RATE_CHALLENGE` decimal(32, 8) NULL DEFAULT NULL COMMENT '抵扣率挑战值',
  `POOL_SBWAIT_MONEY_TARGET` int(11) NULL DEFAULT NULL COMMENT '共保摊回待摊金额目标值',
  `POOL_SBWAIT_MONEY_CHALLENGE` int(11) NULL DEFAULT NULL COMMENT '共保摊回待摊金额挑战值',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'KPI指标 41家分公司4大区域全司' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
