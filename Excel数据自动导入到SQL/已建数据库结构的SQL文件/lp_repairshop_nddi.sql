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

 Date: 05/03/2021 14:12:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_repairshop_nddi
-- ----------------------------
DROP TABLE IF EXISTS `lp_repairshop_nddi`;
CREATE TABLE `lp_repairshop_nddi`  (
  `ID` int(32) NOT NULL COMMENT 'ID',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `STATISTICAL_TYPE` int(10) NULL DEFAULT NULL COMMENT '统计类型0月1周',
  `START_DATE` date NULL DEFAULT NULL COMMENT '开始时间',
  `DATA_STEP` int(255) NULL DEFAULT NULL COMMENT '数据步长',
  `DATA_DATE_HIS` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据追踪历史',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间',
  `REPAIRSHOP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修理厂名称',
  `ORGANIZATION_TYPE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型',
  `DIRECT_INDEMNITY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '直赔修理厂',
  `COOPERATE_ORGANIZATION` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作机构',
  `MAINTAIN_TAXRATE` decimal(4, 2) NULL DEFAULT NULL COMMENT '维护税率',
  `PAYEE_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款人名称',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司',
  `DEPARTMENT_GROUP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门组',
  `TICKET_RATE_ALL` decimal(6, 4) NULL DEFAULT NULL COMMENT '本月获票率全部',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `START_DATE_TYPE`(`STATISTICAL_TYPE`, `START_DATE`) USING BTREE COMMENT '类型与日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '未抵扣直赔修理厂' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
