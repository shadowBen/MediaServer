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

Date: 2018-05-23 18:01:28
*/


-- ----------------------------
-- Table structure for "DC_VIDEO_CAMERA_TYPE"
-- ----------------------------
declare 
      v_exists   number;
begin
select count (*) into v_exists from user_tables where table_name = 'DC_VIDEO_CAMERA_TYPE'; 
    if v_exists > 0 then
    execute immediate 'drop table DC_VIDEO_CAMERA_TYPE';  
    end if;
end;
/

CREATE TABLE "DC_VIDEO_CAMERA_TYPE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(32 BYTE) NULL ,
"RULE" VARCHAR2(128 BYTE) NULL ,
"REPLAY_RULE" VARCHAR2(128 BYTE) NULL 
)
;

-- ----------------------------
-- Records of DC_VIDEO_CAMERA_TYPE
-- ----------------------------
INSERT INTO "DC_VIDEO_CAMERA_TYPE" VALUES ('0', '海康', 'rtsp://USERNAME:PASSWORD@CAMERAIP:CAMERAPORT/Streaming/Channels/CAMERACHANNEL01?transportmode=unicast', '\"rtsp://USERNAME:PASSWORD@CAMERAIP:CAMERAPORT/Streaming/tracks/CAMERACHANNEL01?starttime=START'||'&'||'endtime=END\"');
INSERT INTO "DC_VIDEO_CAMERA_TYPE" VALUES ('1', '雄迈', '"rtsp://CAMERAIP:CAMERAPORT/user=USERNAME'||'&'||'password=PASSWORD'||'&'||'channel=CAMERACHANNEL'||'&'||'stream=0.sdp?real_stream"', null);


-- ----------------------------
-- Checks structure for table "DC_VIDEO_CAMERA_TYPE"
-- ----------------------------
ALTER TABLE "DC_VIDEO_CAMERA_TYPE" ADD CHECK ("ID" IS NOT NULL);
