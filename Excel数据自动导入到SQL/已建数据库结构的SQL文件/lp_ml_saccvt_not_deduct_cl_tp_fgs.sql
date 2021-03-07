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

 Date: 05/03/2021 14:13:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ml_saccvt_not_deduct_cl_tp_fgs
-- ----------------------------
DROP TABLE IF EXISTS `lp_ml_saccvt_not_deduct_cl_tp_fgs`;
CREATE TABLE `lp_ml_saccvt_not_deduct_cl_tp_fgs`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID 主键',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间',
  `COMPANY_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔分公司代码',
  `COMPANY_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔分公司',
  `DEPARTMENT_GROUP_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '承保部门组',
  `ASSURED_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '被保险人名称',
  `INSURANCE_KIND` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '险种',
  `NO_DEDUCTION_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '未抵扣类型',
  `PAYEE_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人类别',
  `PAYMENT_REASON` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '例外支付原因',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `PAYMENT_ACCOUNT` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付账号',
  `PAY_AMOUNT` decimal(32, 8) NULL DEFAULT NULL COMMENT '实付金额',
  `CLAIM_TIME` datetime(0) NULL DEFAULT NULL COMMENT '核赔时间',
  `CLAIM_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '赔案号',
  `TARGET_CAR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的车牌号',
  `THIRD_CAR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '三者车牌号',
  `ADJUSTMENT_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '理算书',
  `TARGET_SURVEYOR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的车查勘员',
  `SPECIALIZED_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否专修',
  `GEN_INDEMNITY_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否通赔',
  `UNDERWRITING_COMPANY` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '承保分公司',
  `GEN_INDEMNITY_SURVEYOR` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔查勘员',
  `BUSINESS_TIME` datetime(0) NULL DEFAULT NULL COMMENT '数据处理业务时间',
  `CASE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '报案号',
  `PAYMENT_REMARKS` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '支付备注',
  `TARGET_REPAIRSHOP` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的车修理厂',
  `THIRD_REPAIRSHOP` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '三者车修理厂',
  `THIRD_SURVEYOR_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '三者车查勘员代码',
  `THIRD_SURVEYOR_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '三者车查勘员名称',
  `TARGET_LOSS_PERSONNEL` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标的定损人员',
  `THIRD_LOSS_PERSONNEL` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '三者定损人员',
  `GEN_INDEMNITY_BRANCH` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔中支',
  `GEN_INDEMNITY_BRANCHNAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '通赔中支名称',
  `TOTAL_LOSS_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否全损',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳 时间戳',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人 创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '更新人 更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间 更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83613 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '未抵扣清单通赔 ' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
