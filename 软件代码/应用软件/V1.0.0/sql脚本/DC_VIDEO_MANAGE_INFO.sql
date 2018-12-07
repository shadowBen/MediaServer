/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : 192.168.2.40-Oracle
Source Server Version : 110200
Source Host           : 192.168.2.40:1521
Source Schema         : ZSTEST

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2018-05-09 13:36:12
*/


-- ----------------------------
-- Table structure for "DC_VIDEO_MANAGE_INFO"
-- ----------------------------
declare 
      v_exists   number;
begin
select count (*) into v_exists from user_tables where table_name = 'DC_VIDEO_MANAGE_INFO'; 
    if v_exists > 0 then
    execute immediate 'drop table DC_VIDEO_MANAGE_INFO';  
    end if;
end;

/

CREATE TABLE "DC_VIDEO_MANAGE_INFO" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"STATION_ID" NUMBER(11) NULL ,
"STATION_NAME" VARCHAR2(128 BYTE) NULL ,
"CAMERA_NAME" VARCHAR2(128 BYTE) NULL ,
"CAMERA_IP" VARCHAR2(32 BYTE) NULL ,
"CAMERA_PORT" VARCHAR2(32 BYTE) NULL ,
"CAMERA_PASS" VARCHAR2(32 BYTE) NULL ,
"USERNAME" VARCHAR2(32 BYTE) NULL ,
"PASSWORD" VARCHAR2(32 BYTE) NULL ,
"CAMERA_TYPE" VARCHAR2(32 BYTE) NULL ,
"IFMONITOR" VARCHAR2(32 BYTE) NULL ,
"CAMERA_PORT_BACK" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DC_VIDEO_MANAGE_INFO
-- ----------------------------


-- ----------------------------
-- Checks structure for table "ZSTEST"."DC_VIDEO_MANAGE_INFO"
-- ----------------------------
ALTER TABLE "DC_VIDEO_MANAGE_INFO" ADD CHECK ("ID" IS NOT NULL);
