/*
 Navicat Premium Data Transfer

 Source Server         : sqlite3-qichezhijia
 Source Server Type    : SQLite
 Source Server Version : 3035005
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005
 File Encoding         : 65001

 Date: 12/11/2022 22:07:06
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "user";
CREATE TABLE "user" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "userName" TEXT,
  "userPassword" TEXT,
  "userType" integer DEFAULT 1
);

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "user" VALUES (1, '方法', '都等得', 1);
INSERT INTO "user" VALUES (2, '烦烦烦', '232234234', 1);
INSERT INTO "user" VALUES (3, 'asai', '123456', 8);
INSERT INTO "user" VALUES (4, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (5, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (6, 'asai', '123456', 8);
INSERT INTO "user" VALUES (7, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (8, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (9, 'asai', '123456', 8);
INSERT INTO "user" VALUES (11, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (12, 'asai', '123456', 8);
INSERT INTO "user" VALUES (13, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (14, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (15, 'asai', '123456', 8);
INSERT INTO "user" VALUES (16, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (17, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (18, 'asai', '123456', 8);
INSERT INTO "user" VALUES (19, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (20, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (21, 'asai', '123456', 8);
INSERT INTO "user" VALUES (22, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (23, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (24, 'asai', '123456', 8);
INSERT INTO "user" VALUES (25, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (26, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (27, 'asai', '123456', 8);
INSERT INTO "user" VALUES (28, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (29, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (30, 'asai', '123456', 8);
INSERT INTO "user" VALUES (31, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (32, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (33, 'asai', '123456', 8);
INSERT INTO "user" VALUES (34, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (35, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (36, 'asai', '123456', 8);
INSERT INTO "user" VALUES (37, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (38, '阿萨', '分sss', 88);
INSERT INTO "user" VALUES (39, 'asai11', '123456', 8);
INSERT INTO "user" VALUES (40, '阿萨33', '分s444ss', 88);
INSERT INTO "user" VALUES (41, '阿55', '分sss', 88);
INSERT INTO "user" VALUES (42, 'asai11', '123456', 8);
INSERT INTO "user" VALUES (43, '阿萨33', '分s444ss', 88);
INSERT INTO "user" VALUES (44, '阿55', '分sss', 88);
INSERT INTO "user" VALUES (45, 'asai11', '123456', 8);
INSERT INTO "user" VALUES (46, '阿萨33', '分s444ss', 88);
INSERT INTO "user" VALUES (47, '阿55', '分sss', 88);

-- ----------------------------
-- Auto increment value for user
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 47 WHERE name = 'user';

PRAGMA foreign_keys = true;
