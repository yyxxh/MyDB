/*
SQLite Backup
Database: main
Backup Time: 2018-05-17 22:00:28
*/

DROP TABLE IF EXISTS "main"."course";
DROP TABLE IF EXISTS "main"."sc";
DROP TABLE IF EXISTS "main"."student";
DROP TABLE IF EXISTS "main"."user";
CREATE TABLE course(cno char(8) primary key,cname char(40),cpno char(8),ccredit smallint,foreign key (cpno) references course(cno));
CREATE TABLE sc(sno char(12),cno char(8),grade smallint,primary key (sno,cno), foreign key (sno) references student(sno), foreign key (cno) references course(cno));
CREATE TABLE student(sno char(12) primary key,sname char(20) unique,ssex char(2),sage smallint,sdept char(20));
CREATE TABLE user (
  "uno" TEXT(5) NOT NULL,
  "uname" TEXT(20) UNIQUE,
  "psw" TEXT(20),
  "type" TEXT(10),
  PRIMARY KEY ("uno")
);
BEGIN;
DELETE FROM "main"."course";
INSERT INTO "main"."course" ("cno","cname","cpno","ccredit") VALUES (1, '数据库', 5, 4),(2, '数学', NULL, 2),(3, '信息系统', 1, 4),(4, '操作系统', 6, 3),(5, '数据结构', 7, 4),(6, '数据处理', NULL, 2),(7, 'PASCAL语言', 6, 4);
COMMIT;
BEGIN;
DELETE FROM "main"."sc";
INSERT INTO "main"."sc" ("sno","cno","grade") VALUES (200215121, 1, 92),(200215121, 2, 85),(200215121, 3, 88),(200215122, 2, 90),(200215122, 3, 80);
COMMIT;
BEGIN;
DELETE FROM "main"."student";
INSERT INTO "main"."student" ("sno","sname","ssex","sage","sdept") VALUES (200215121, '李勇', '男', 20, 'CS'),(200215122, '刘晨', '女', 19, 'CS'),(200215123, '王敏', '女', 18, 'MA'),(200215125, '张立', '男', 19, 'IS');
COMMIT;
BEGIN;
DELETE FROM "main"."user";
INSERT INTO "main"."user" ("uno","uname","psw","type") VALUES (1, 'admin', 1234, '管理员'),(2, '刘欢', 123, '教师'),(3, '王俊凯', 123, '学生');
COMMIT;
