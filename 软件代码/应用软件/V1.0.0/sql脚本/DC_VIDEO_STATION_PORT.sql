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

Date: 2018-05-17 13:01:48
*/


-- ----------------------------
-- Table structure for "DC_VIDEO_STATION_PORT"
-- ----------------------------
declare 
      v_exists   number;
begin
select count (*) into v_exists from user_tables where table_name = 'DC_VIDEO_STATION_PORT'; 
    if v_exists > 0 then
    execute immediate 'drop table DC_VIDEO_STATION_PORT';  
    end if;
end;
/
create  table DC_VIDEO_STATION_PORT (
"STATION_ID" NUMBER NULL ,
"CAMERA_PORT" VARCHAR2(32 BYTE) NULL ,
"ROBOT_PORT" VARCHAR2(32 BYTE) NULL ,
"CAMERA_PORT_BACK" VARCHAR2(32 BYTE) NULL ,
"ROBOT_PORT_BACK" VARCHAR2(32 BYTE) NULL ,
"ROBOT_CAMERA_TYPE" VARCHAR2(32 BYTE) NULL 
);

-- ----------------------------
-- Records of DC_VIDEO_STATION_PORT
-- ----------------------------
