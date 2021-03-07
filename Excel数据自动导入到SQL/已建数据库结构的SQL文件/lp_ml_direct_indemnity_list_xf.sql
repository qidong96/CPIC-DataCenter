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

 Date: 05/03/2021 14:14:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ml_direct_indemnity_list_xf
-- ----------------------------
DROP TABLE IF EXISTS `lp_ml_direct_indemnity_list_xf`;
CREATE TABLE `lp_ml_direct_indemnity_list_xf`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `STATISTICS_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '统计类型',
  `STATISTICS_DATE` date NULL DEFAULT NULL COMMENT '统计日期',
  `COMPANY_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司代码',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `DEPARTMENT_GROUP` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门组代码',
  `DEPARTMENT_GROUP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '部门组',
  `ASSURED_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '被保险人名称',
  `INSURANCE_KIND` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '险种',
  `PAYMENT_REASON` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '例外支付原因',
  `IS4S_SHOP` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否4S店',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `PAYMENT_ACCOUNT` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付账号',
  `PAY_AMOUNT` decimal(32, 8) NULL DEFAULT NULL COMMENT '实付金额',
  `CLAIM_TIME` datetime(0) NULL DEFAULT NULL COMMENT '核赔时间',
  `CLAIM_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '赔案号',
  `CAR_TYPE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的三者',
  `CAR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '车牌号',
  `SURVEYOR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '查勘员',
  `LOSS` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '定损员',
  `GEN_INDEMNITY_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否通赔',
  `GEN_INDEMNITY_COMPANY` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔分公司',
  `GEN_INDEMNITY_SURVEYOR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔查勘员',
  `CASE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '报案号',
  `PAYMENT_REMARKS` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付备注',
  `REPAIRSHOP_COMPANY` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修理厂所分公司',
  `REPAIRSHOP_DEPARTMENT` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修理厂所在部门组',
  `CAR_USE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '车辆使用性质',
  `DEDUCTION_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否抵扣',
  `TAXES` decimal(32, 8) NULL DEFAULT NULL COMMENT '税金',
  `TAX_RATE` decimal(32, 8) NULL DEFAULT NULL COMMENT '税率',
  `ADJUSTMENT_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '理算书号',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 377252 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '抵扣直赔清单 ' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
