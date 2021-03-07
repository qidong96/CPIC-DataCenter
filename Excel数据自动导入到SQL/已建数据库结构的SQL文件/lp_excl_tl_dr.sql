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

 Date: 05/03/2021 14:14:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_excl_tl_dr
-- ----------------------------
DROP TABLE IF EXISTS `lp_excl_tl_dr`;
CREATE TABLE `lp_excl_tl_dr`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `COMPANY_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司代码',
  `COMPANY_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `MIDDLE_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中支代码',
  `MIDDLE_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中支名称',
  `AUTO_INS_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '车损项目赔款',
  `TL_AUTO_INS_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '全损车损险赔款',
  `CAR_DAMAGE_EX_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '剔除全损后车损',
  `NON_TRUCK_SV_EX_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店剔除全损后车损',
  `NON_TRUCK_SV_EX_4S_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店剔除全损后车损',
  `TP_NON_TRUCK_SV_EX_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店剔除全损后车损',
  `TP_NON_TRUCK_SV_EX_4S_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店剔除全损后车损',
  `TRUCK_SV_EX_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店剔除全损后车损',
  `TRUCK_SV_EX_4S_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店剔除全损后车损',
  `TP_TRUCK_SV_EX_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店剔除全损后车损',
  `TP_TRUCK_SV_EX_4S_TD` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店剔除全损后车损',
  `DIRECT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '直赔金额',
  `DIRECT_COMPENS_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '直赔4S店金额',
  `DIRECT_EX_4S_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '直赔非4S店金额',
  `NON_TRUCK_SV_DIRECT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车直赔4S店',
  `NON_TRUCK_SV_DIRECT_EX_4S_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车直赔非4S店',
  `TP_NON_TRUCK_SV_DIRECT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车直赔4S店',
  `TP_NON_TRUCK_SV_DIRECT_EX_4S_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车直赔非4S店',
  `TRUCK_SV_DIRECT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车直赔4S店',
  `TRUCK_SV_DIRECT_EX_4S_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车直赔非4S店',
  `TP_TRUCK_SV_DIRECT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车直赔4S店',
  `TP_TRUCK_SV_DIRECT_EX_4S_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车直赔非4S店',
  `DIRECT_VAT_COMPENS` decimal(32, 8) NULL DEFAULT NULL COMMENT '直赔获票金额',
  `DIRECT_VAT_COMPENS_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '4S店直赔获票金额',
  `DIRECT_VAT_COMPENS_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '非4S店直赔获票金额',
  `NON_TRUCK_SV_DIRECT_VAT_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店直赔获票金额',
  `NON_TRUCK_SV_DIRECT_VAT_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店直赔获票金额',
  `TP_NON_TRUCK_SV_DIRECT_VAT_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店直赔获票金额',
  `TP_NON_TRUCK_SV_DIRECT_VAT_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店直赔获票金额',
  `TRUCK_SV_DIRECT_VAT_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店直赔获票金额',
  `TRUCK_SV_DIRECT_VAT_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店直赔获票金额',
  `TP_TRUCK_SV_DIRECT_VAT_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店直赔获票金额',
  `TP_TRUCK_SV_DIRECT_VAT_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店直赔获票金额',
  `TAX` decimal(32, 8) NULL DEFAULT NULL COMMENT '税金',
  `CURRENT_YEAR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年抵扣',
  `PREVIOUS_YEAR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '往年抵扣',
  `PROPERTY_DAMAGE_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '物损抵扣',
  `DIRECT_CLAIMS_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '直接理赔费用抵扣',
  `NON_TRUCK_SV_CURR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店当年抵扣金额',
  `NON_TRUCK_SV_CURR_DEDUCTION_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店当年抵扣金额',
  `TP_NON_TRUCK_SV_CURR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店当年抵扣金额',
  `TP_NON_TRUCK_SV_CURR_DEDUCTION_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店当年抵扣金额',
  `TRUCK_SV_CURR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店当年抵扣金额',
  `TRUCK_SV_CURR_DEDUCTION_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店当年抵扣金额',
  `TP_TRUCK_SV_CURR_DEDUCTION` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店当年抵扣金额',
  `TP_TRUCK_SV_CURR_DEDUCTION_EX_4S` decimal(32, 8) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店当年抵扣金额',
  `DIRECT_COMPENS_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '直赔率',
  `DIRECT_COMPENS_RATE_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '4S店直赔率',
  `DIRECT_COMPENS_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '非4S店直赔率',
  `NON_TRUCK_SV_DIRECT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店直赔率',
  `NON_TRUCK_SV_DIRECT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店直赔率',
  `TP_NON_TRUCK_SV_DIRECT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店直赔率',
  `TP_NON_TRUCK_SV_DIRECT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店直赔率',
  `TRUCK_SV_DIRECT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店直赔率',
  `TRUCK_SV_DIRECT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店直赔率',
  `TP_TRUCK_SV_DIRECT_RATE_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店直赔率',
  `TP_TRUCK_SV_DIRECT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店直赔率',
  `DIRECT_COMPENS_VAT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '直赔获票率',
  `DIRECT_COMPENS_VAT_RATE_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '4S店直赔获票率',
  `DIRECT_COMPENS_VAT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '非4S店直赔获票率',
  `NON_TRUCK_SV_VAT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店直赔获票率',
  `NON_TRUCK_SV_VAT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店直赔获票率',
  `TP_NON_TRUCK_SV_VAT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店直赔获票率',
  `TP_NON_TRUCK_SV_VAT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店直赔获票率',
  `TRUCK_SV_VAT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店直赔获票率',
  `TRUCK_SV_VAT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店直赔获票率',
  `TP_TRUCK_SV_VAT_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店直赔获票率',
  `TP_TRUCK_SV_VAT_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店直赔获票率',
  `DEDUCTION_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '抵扣率',
  `CURRENT_YEAR_DEDUCTION_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '当年抵扣率',
  `NON_TRUCK_SV_CURR_DEC_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车4S店当年抵扣率',
  `NON_TRUCK_SV_CURR_DEC_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有非货车、非特种车非4S店当年抵扣率',
  `TP_NON_TRUCK_SV_CURR_DEC_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车4S店当年抵扣率',
  `TP_NON_TRUCK_SV_CURR_DEC_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔非货车、非特种车非4S店当年抵扣率',
  `TRUCK_SV_CURR_DEC_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车4S店当年抵扣率',
  `TRUCK_SV_CURR_DEC_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '自有货车、特种车非4S店当年抵扣率',
  `TP_TRUCK_SV_CURR_DEC_RATE` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车4S店当年抵扣率',
  `TP_TRUCK_SV_CURR_DEC_RATE_EX_4S` decimal(7, 4) NULL DEFAULT NULL COMMENT '通赔货车、特种车非4S店当年抵扣率',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '去全损抵扣率' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
