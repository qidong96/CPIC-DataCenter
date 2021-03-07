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

 Date: 05/03/2021 14:13:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ml_saccvt_not_tax_deduction
-- ----------------------------
DROP TABLE IF EXISTS `lp_ml_saccvt_not_tax_deduction`;
CREATE TABLE `lp_ml_saccvt_not_tax_deduction`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间 统计时间',
  `CASE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '报案号',
  `CLAIM_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '赔案号',
  `ADJUSTMENT_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '理算书',
  `PAY_AMOUNT` decimal(32, 8) NULL DEFAULT NULL COMMENT '实际赔付金额',
  `CLAIM_TIME` datetime(0) NULL DEFAULT NULL COMMENT '核赔通过时间',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `PAYEE_ACCOUNT` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人帐号',
  `PAYEE_ACCOUNT_TAXRATE` decimal(32, 10) NULL DEFAULT NULL COMMENT '收款人税率维护',
  `UNDERWRITING_COMPANY` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '承保机构',
  `PAYMENT_OBJECT` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付对象属性',
  `REPAIRSHOP_REGION` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修理厂所属地区',
  `SETTLEMENT_PGCODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结算包编号',
  `CAR_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '车牌号',
  `LOSS_CHECK` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '损失勾选项',
  `PAYMENT_REMARKS` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付备注',
  `STATISTICS_DATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '统计日期',
  `STATISTICS_PERIOD` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '统计周期',
  `ISSUE_COMPANY` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '下发分公司',
  `REPAIRSHOP_BRANCH` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修理厂所属中支',
  `REPAIRSHOP_BRANCH_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修理厂所属中支公司',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 337789 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '未抵扣清单自有 ' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
