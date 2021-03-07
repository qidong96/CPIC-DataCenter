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

 Date: 05/03/2021 14:12:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_repairshop_deduction
-- ----------------------------
DROP TABLE IF EXISTS `lp_repairshop_deduction`;
CREATE TABLE `lp_repairshop_deduction`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `STATISTICAL_TYPE` int(10) NULL DEFAULT NULL COMMENT '统计类型0月1周',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间',
  `REPAIRSHOP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修理厂名称',
  `ORGANIZATION_TYPE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型',
  `DIRECT_INDEMNITY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '直赔修理厂',
  `COOPERATE_ORGANIZATION` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作机构',
  `MAINTAIN_TAXRATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '维护税率',
  `OFFSITE_BILLING` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支持异地开票',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `PAYMENT_OBJECT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付对象',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司',
  `DEPARTMENT_GROUP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门组',
  `VEHICLE_DAMAGE_ALL` decimal(32, 10) NULL DEFAULT NULL COMMENT '滚动12个月车损全部',
  `VEHICLE_DAMAGE_HAVE` decimal(32, 10) NULL DEFAULT NULL COMMENT '滚动12个月车损自有',
  `VEHICLE_DAMAGE_BE` decimal(32, 10) NULL DEFAULT NULL COMMENT '滚动12个月车损受托',
  `VEHICLE_DAMAGE_INDEMNITY_ALL` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月车损险赔款全部',
  `VEHICLE_DAMAGE_INDEMNITY_HAVE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月车损险赔款自有',
  `VEHICLE_DAMAGE_INDEMNITY_BE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月车损险赔款受托',
  `ST_INDEMNITY_ALL` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月取得专票的赔款全部',
  `ST_INDEMNITY_HAVE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月取得专票的赔款自有',
  `ST_INDEMNITY_BE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月取得专票的赔款受托',
  `CLAIM_DEDUCTION_ALL` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月理赔抵扣金额全部',
  `CLAIM_DEDUCTION_HAVE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月理赔抵扣金额自有',
  `CLAIM_DEDUCTION_BE` decimal(32, 10) NULL DEFAULT NULL COMMENT '本月理赔抵扣金额受托',
  `TICKET_RATE_ALL` decimal(6, 4) NULL DEFAULT NULL COMMENT '本月获票率全部',
  `TICKET_RATE_HAVE` decimal(6, 4) NULL DEFAULT NULL COMMENT '本月获票率自有',
  `TICKET_RATE_BE` decimal(6, 4) NULL DEFAULT NULL COMMENT '本月获票率受托',
  `INDEMNITY_ADD_ALL` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年车损险赔款累计全部',
  `INDEMNITY_ADD_HAVE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年车损险赔款累计自有',
  `INDEMNITY_ADD_BE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年车损险赔款累计受托',
  `ST_INDEMNITY_ADD_ALL` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年取得专票的赔款累计全部',
  `ST_INDEMNITY_ADD_HAVE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年取得专票的赔款累计自有',
  `ST_INDEMNITY_ADD_BE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年取得专票的赔款累计受托',
  `CLAIM_DEDUCTION_ADD_ALL` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年理赔抵扣金额累计全部',
  `CLAIM_DEDUCTION_ADD_HAVE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年理赔抵扣金额累计自有',
  `CLAIM_DEDUCTION_ADD_BE` decimal(32, 8) NULL DEFAULT NULL COMMENT '当年理赔抵扣金额累计受托',
  `TICKET_RATE_ADD_ALL` decimal(6, 4) NULL DEFAULT NULL COMMENT '当年获票率累计全部',
  `TICKET_RATE_ADD_HAVE` decimal(6, 4) NULL DEFAULT NULL COMMENT '当年获票率累计自有',
  `TICKET_RATE_ADD_BE` decimal(6, 4) NULL DEFAULT NULL COMMENT '当年获票率累计受托',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 346694 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '修理厂抵扣率' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
