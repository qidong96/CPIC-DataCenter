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

 Date: 05/03/2021 14:13:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lp_ml_sasssb_recovery_list
-- ----------------------------
DROP TABLE IF EXISTS `lp_ml_sasssb_recovery_list`;
CREATE TABLE `lp_ml_sasssb_recovery_list`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `DATA_DATE` date NULL DEFAULT NULL COMMENT '统计时间',
  `COMPANY_CODE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司代码',
  `COMPANY_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司名称',
  `DEPARTMENT_GROUP_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门组名称',
  `DEPARTMENT_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `CASE_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报案号',
  `CLAIM_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '赔案号',
  `ADJUSTMENT_CODE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理算书号',
  `ASSURED_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被保险人姓名',
  `DANGER_TIME` datetime(0) NULL DEFAULT NULL COMMENT '出险时间',
  `CASE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '报案时间',
  `ACCIDENT_LIABILITY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事故责任',
  `RECOURSE_MONEY` decimal(32, 8) NULL DEFAULT NULL COMMENT '应追偿金额',
  `ADJUSTMENT_CLAIM_AGREE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '蓝字理算书核赔通过时间',
  `RECOVERY_APPLY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '追偿申请时间',
  `RECOVERY_ASSIGNMENT_TE` decimal(32, 10) NULL DEFAULT NULL COMMENT '追偿分配时效',
  `RECOVERY_APPLY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿申请人代码',
  `RECOVERY_APPLY_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿申请人名称',
  `RECOVERY_TRACK_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪人代码',
  `RECOVERY_TRACK_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪人名称',
  `RECOVERY_TRACK_TASK_SBCODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪任务提交人代码',
  `RECOVERY_TRACK_TASK_SBNAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪任务提交人名称',
  `CLAIM_PERSONNEL_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '核赔人员代码',
  `CLAIM_PERSONNEL_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '核赔人员名称',
  `PLATFORM_SUBROGATION` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否平台代位',
  `RESPONSIBLE_PARTY_NAME` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任方名称',
  `RESPONSIBLE_PARTY_CTI_INSURANCE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任方交强险保险公司',
  `RESPONSIBLE_PARTY_CI_INSURANCE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任方商业险保险公司',
  `RECOVERY_WAY` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿方式',
  `RECOVERY_TRACK_OBJECT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪对象',
  `RED_ADJUSTMENT_CLAIM_AGREE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '红字理算书核赔通过时间',
  `RECOVERY_MONEY` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿金额',
  `RECOVERY_TE` decimal(32, 10) NULL DEFAULT NULL COMMENT '追偿时效',
  `RECOVERY_APPLY_IS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否发起追偿申请',
  `STATISTICS_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计类型',
  `STATISTICS_DATE` date NULL DEFAULT NULL COMMENT '统计日期',
  `DATA_TIME_STAMP` datetime(0) NULL DEFAULT NULL COMMENT '时间戳',
  `RECOVERY_TRACK_CONTENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追偿跟踪内容',
  `BUSINESS_TYPE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `RECOVERY_LAWSUIT_LAWCOST` decimal(32, 8) NULL DEFAULT NULL COMMENT '追偿诉讼法律费用',
  `COST_RECOVERY` decimal(32, 8) NULL DEFAULT NULL COMMENT '费用追偿',
  `REVISION` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27781 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代位追偿清单' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
