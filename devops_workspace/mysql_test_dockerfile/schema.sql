-- 创建数据库
--create database docker_mysql default character set utf8 collate utf8_general_ci;

--use docker_mysql;

-- 建表
--DROP TABLE IF EXISTS user;

--CREATE TABLE user (
--  id bigint(20) NOT NULL,
--  created_at bigint(40) DEFAULT NULL,
--  last_modified bigint(40) DEFAULT NULL,
--  email varchar(255) DEFAULT NULL,
--  first_name varchar(255) DEFAULT NULL,
--  last_name varchar(255) DEFAULT NULL,
--  username varchar(255) DEFAULT NULL,
--  PRIMARY KEY (id)
--) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 插入数据
--INSERT INTO user (id, created_at, last_modified, email, first_name, last_name, username)
--VALUES
--   (0,1490257904,1490257904,'john.doe@example.com','John','Doe','user');

CREATE DATABASE  `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
grant all PRIVILEGES on test.* to test@'%' identified by '123456';
flush privileges;
use test;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
INSERT INTO `test`.`users` (`id`, `username`, `password`, `phone`, `email`, `create_time`) VALUES ('1', 'xiao', '123', '12345678910', '123@qq.com', '2020-04-10 01:22:07');