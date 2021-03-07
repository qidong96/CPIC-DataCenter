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

 Date: 05/03/2021 14:13:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ml_saccvt_tax_deduction_fgs
-- ----------------------------
DROP TABLE IF EXISTS `lp_ml_saccvt_tax_deduction_fgs`;
CREATE TABLE `lp_ml_saccvt_tax_deduction_fgs`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `DATA_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `COMPANY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司代码',
  `STATISTICS_DATE` date NULL DEFAULT NULL,
  `STATISTICS_PERIOD` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '统计周期',
  `STATISTICS_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '统计类型',
  `SETTLEMENT_PGCODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结算包号',
  `SETTLEMENT_PGTOTAL` decimal(32, 10) NULL DEFAULT NULL COMMENT '结算包赔款合计',
  `CASE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '报案号',
  `INVOICE_NO` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票号码',
  `INVOICE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票代码',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `BILLING_COMPANY` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开票单位',
  `BILLING_TIME` datetime(0) NULL DEFAULT NULL COMMENT '开票日期',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `PAYEE_NO` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人代码',
  `INVOICE_MONEY` decimal(32, 8) NULL DEFAULT NULL COMMENT '发票金额价',
  `INVOICE_MONEY_TAX` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票金额税',
  `INVOICE_MONEY_TOTAL` decimal(32, 10) NULL DEFAULT NULL COMMENT '发票金额总价',
  `TAX_RATE` decimal(32, 10) NULL DEFAULT NULL COMMENT '税率',
  `INVOICE_REMARKS` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票备注',
  `TAKER_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收票人名称',
  `TAKER_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收票人代码',
  `MATCH_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '票案匹配人名称',
  `MATCH_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '票案匹配人代码',
  `VERIFIER_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票验证人代码',
  `VERIFIER_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票验证人名称',
  `TARGET_CAR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的车牌号',
  `CASE_CODE_OTHER` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '其他报案号',
  `INDEMNITY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '赔款时间',
  `ADJUSTMENT_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '理算书号',
  `CLAIM_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '赔案号',
  `DEDUCTION_TIME` datetime(0) NULL DEFAULT NULL COMMENT '抵扣时间',
  `VERIFICATION_TIME` datetime(0) NULL DEFAULT NULL COMMENT '验证时间',
  `STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `INVOICE_TITLE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102399 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '已抵清单自有 ' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
