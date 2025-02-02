/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : virtualsimulationmanagementsystem

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 10/07/2024 11:26:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '实训课程ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实训课程名称',
  `instructor_id` int NULL DEFAULT NULL COMMENT '授课教师的用户ID',
  `resource_id` int NULL DEFAULT NULL COMMENT '使用的实训资源ID',
  `credit_hour` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学时',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '实训课程描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1233 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, '计算机网络实验', 14, 1, '18', '2024-07-01 15:23:23', '2024-07-04 22:06:26', '计算机网络实训');
INSERT INTO `courses` VALUES (2, '编程基础', 15, 2, '20', '2024-07-04 22:03:06', '2024-07-04 22:07:01', '编程基实训');
INSERT INTO `courses` VALUES (3, '计算机原理', 16, 3, '20', '2024-07-04 22:07:54', '2024-07-04 22:07:54', '计算机原理课程实验');
INSERT INTO `courses` VALUES (4, 'python实训', 15, 5, '20', '2024-07-04 22:08:25', '2024-07-04 22:08:25', 'python基础实验');
INSERT INTO `courses` VALUES (5, 'c++实训', 23, 6, '20', '2024-07-04 22:08:49', '2024-07-04 22:09:05', 'c++实训');
INSERT INTO `courses` VALUES (6, '数据结构实验', 19, 8, '10', '2024-07-04 22:09:48', '2024-07-04 22:09:48', '数据结构实验');
INSERT INTO `courses` VALUES (7, '数据库基础实验', 21, 10, '20', '2024-07-04 22:10:48', '2024-07-04 22:10:48', '数据库基础实验');
INSERT INTO `courses` VALUES (8, '深入理解计算机系统', 20, 11, '15', '2024-07-04 22:10:52', '2024-07-04 22:15:52', '深入理解计算机系统实验');
INSERT INTO `courses` VALUES (9, 'java实训', 21, 7, '30', '2024-07-04 22:12:42', '2024-07-04 22:15:55', 'java实训实验');
INSERT INTO `courses` VALUES (10, '自动化实训', 4, 13, '50', '2024-07-04 22:15:47', '2024-07-04 22:16:09', '自动化专业实训');
INSERT INTO `courses` VALUES (11, '通讯实训', 6, 14, '40', '2024-07-04 22:17:58', '2024-07-04 22:17:58', '通讯专业的课程实训');
INSERT INTO `courses` VALUES (12, '数字媒体实训', 9, 15, '30', '2024-07-04 22:19:07', '2024-07-04 22:19:30', '数字媒体基础实训课程');

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '仿真设备ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仿真设备名称',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仿真设备类型',
  `lab_id` int NULL DEFAULT NULL COMMENT '设备所在的实验室ID',
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '设备状态（如：可用、维修中等）',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '仿真设备描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12313 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES (1, '高性能计算集群', '计算机仿真系统', 1, '可用', '2024-07-10 09:31:29', '2024-07-10 10:53:04', '高性能计算集群用于大规模计算仿真，提供强大的计算能力，支持复杂的科学研究和工程仿真任务，能够高效处理大量数据。');
INSERT INTO `devices` VALUES (2, '虚拟现实仿真系统', '计算机仿真系统', 2, '维修中', '2024-07-10 09:31:30', '2024-07-10 10:53:11', '虚拟现实仿真系统用于沉浸式虚拟现实环境的仿真，配备高分辨率显示设备和运动捕捉系统，适用于虚拟现实培训、设计和展示。');
INSERT INTO `devices` VALUES (3, '云计算仿真平台', '计算机仿真系统', 2, '维修中', '2024-07-10 09:31:31', '2024-07-10 10:53:17', '云计算仿真平台用于模拟云计算环境，支持大规模数据处理和分布式计算，适用于云计算架构的研究和应用开发。');
INSERT INTO `devices` VALUES (4, '工业机器人', '机械仿真设备', 3, '可用', '2024-07-10 09:31:32', '2024-07-10 10:53:31', '	工业机器人用于自动化生产线的仿真，具备高度灵活性和精确性，适用于生产自动化、装配线和机器人操作培训。');
INSERT INTO `devices` VALUES (5, '自动化生产线', '机械仿真设备', 4, '维修中', '2024-07-10 09:31:32', '2024-07-10 10:53:36', '自动化生产线用于模拟工厂自动化生产过程，支持多种生产工艺和流程的仿真，提升生产效率和产品质量控制。');
INSERT INTO `devices` VALUES (6, '机械臂训练平台', '机械仿真设备', 5, '维修中', '2024-07-10 09:31:33', '2024-07-10 10:53:41', '机械臂训练平台用于机械臂操作的训练和仿真，支持多轴运动和精密控制，适用于机器人操作员培训和自动化系统开发。');
INSERT INTO `devices` VALUES (7, '电路仿真器', '电子仿真设备', 5, '可用', '2024-07-10 09:31:33', '2024-07-10 10:53:57', '电路仿真器用于电子电路的设计与测试，支持模拟和数字电路的仿真分析，帮助工程师优化电路设计和验证电路性能。');
INSERT INTO `devices` VALUES (8, '信号处理设备', '电子仿真设备', 6, '维修中', '2024-07-10 09:31:34', '2024-07-10 10:54:15', '信号处理设备用于模拟信号处理和通信系统，支持各种信号处理算法和通信协议的仿真，广泛应用于通信工程和信号处理研究。');
INSERT INTO `devices` VALUES (9, '嵌入式系统仿真器', '电子仿真设备', 7, '可用', '2024-07-10 09:31:36', '2024-07-10 10:54:21', '嵌入式系统仿真器用于嵌入式系统开发与测试，支持多种嵌入式平台和开发工具，适用于嵌入式软件开发和硬件设计验证。');
INSERT INTO `devices` VALUES (10, '机器学习仿真设备', '电子仿真设备', 8, '维修中', '2024-07-10 09:59:13', '2024-07-10 10:54:24', '机器学习仿真平台用于训练和测试机器学习模型，提供高性能计算和大规模数据处理能力，适用于人工智能研究和机器学习算法开发。\n');

-- ----------------------------
-- Table structure for labs
-- ----------------------------
DROP TABLE IF EXISTS `labs`;
CREATE TABLE `labs`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '实验室ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实验室名称',
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实验室位置',
  `capacity` int NULL DEFAULT NULL COMMENT '实验室容量',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '实验室描述',
  `manager` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of labs
-- ----------------------------
INSERT INTO `labs` VALUES (1, '计算机网络实验室', '3号楼305室', 20, '2024-06-24 14:24:45', '2024-07-04 20:54:01', '提供计算机网络配置、测试和仿真的实验环境', '玲玲');
INSERT INTO `labs` VALUES (2, '电力系统实验室', '4号楼402室', 30, '2024-03-25 17:06:26', '2024-07-04 21:25:06', '用于电力系统稳定性和负荷分析的实验设施', '王五');
INSERT INTO `labs` VALUES (3, '汽车工程实验室', '5号楼507室', 25, '2024-02-27 17:07:15', '2024-07-04 21:25:11', '提供汽车动力学安全性能测试等实验服务', '王五');
INSERT INTO `labs` VALUES (4, '机器人控制实验室', '6号楼601室', 18, '2024-07-04 17:07:18', '2024-07-04 21:18:02', '用于开发和测试各类机器人控制算法和系统', '玲玲');
INSERT INTO `labs` VALUES (5, '飞行模拟实验室', '7号楼703室', 10, '2024-07-04 17:07:19', '2024-07-04 21:25:23', ' 提供飞行员培训和飞行器件性能评估的仿真环境', '杨一');
INSERT INTO `labs` VALUES (6, ' 3D打印实验室', '8号楼801室', 15, '2024-07-04 17:07:22', '2024-07-04 21:24:44', '提供高精度3D打印和材料研发的实验环境', '杨一');
INSERT INTO `labs` VALUES (7, '自动化控制实验室', '9号楼901室', 20, '2024-07-04 17:07:23', '2024-07-08 23:35:37', '开展自动化控制系统设计和性能测试的实验室', '杨一');
INSERT INTO `labs` VALUES (8, '化学实验室', '4号楼508室', 20, '2024-07-04 17:07:24', '2024-07-08 23:35:38', '用于模拟化学反应过程的虚拟设备，分析反应动力学和产物分布', '玲玲');
INSERT INTO `labs` VALUES (9, '生物实验室', '5号楼202室', 30, '2024-07-04 17:07:25', '2024-07-08 23:35:40', '用于模拟生物反应器内生物过程及反应条件', '杨一');
INSERT INTO `labs` VALUES (10, '医药实验室', '4号楼505室', 15, '2024-07-04 17:07:30', '2024-07-08 23:35:41', '用于模拟医学影像处理和分析的虚拟平台', '王五');
INSERT INTO `labs` VALUES (11, '物理热力实验室', '4号楼202室', 15, '2024-07-04 17:07:31', '2024-07-08 23:35:42', '用于模拟热力系统和能量传输过程', '王五');
INSERT INTO `labs` VALUES (12, '环境模拟实验室', '7号楼502室', 15, '2024-07-04 17:07:32', '2024-07-08 23:39:54', '用于模拟环境污染源及分布', '玲玲');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '实训资源ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实训资源名称',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实训资源类型（如：文档、视频等）',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '实训资源内容',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '实训资源描述',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注（资源时间戳）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12345655 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES (1, '计算机网络教学资源', 'PDF', '计算机网络实训视频', '2024-07-01 15:00:58', '2024-07-08 23:33:26', '计算机网络的实训需完成内容', '');
INSERT INTO `resources` VALUES (2, '编程实训资源', 'PDF', '编程实训资源', '2024-07-01 17:26:54', '2024-07-08 23:33:41', '编程实训需完成内容', '');
INSERT INTO `resources` VALUES (3, '计算机原理PPT', 'PPT', '计算机组成原理课件PPT', '2024-07-04 21:49:42', '2024-07-10 09:21:34', '计算机原理的课程PPT', '');
INSERT INTO `resources` VALUES (4, '软件项目管理附件', 'WORD', '软件项目管理的课程word', '2024-07-04 21:52:24', '2024-07-08 23:33:57', '软件项目管理的课程报告word', '');
INSERT INTO `resources` VALUES (5, 'python学习资源', 'EXCEL', 'python基础内容资源', '2024-07-04 21:53:08', '2024-07-08 23:35:21', 'python基础内容的学习资源', '');
INSERT INTO `resources` VALUES (6, 'c++基础资源', 'PDF', 'c++基础内容资料', '2024-07-04 21:53:54', '2024-07-08 23:35:02', 'c++基础内容资源', NULL);
INSERT INTO `resources` VALUES (7, 'java基础资源', 'PDF', 'java基础学习资料', '2024-07-04 21:54:53', '2024-07-08 23:35:07', 'java基础内容资源', NULL);
INSERT INTO `resources` VALUES (8, '数据结构原版电子书', 'PDF', '数据结构电子书', '2024-07-04 21:56:00', '2024-07-04 21:56:00', '包含数据结构的基础内容PDF', NULL);
INSERT INTO `resources` VALUES (9, '数据结构学习资源', 'PDF', '数据结构基础学习资源', '2024-07-04 21:57:42', '2024-07-08 23:34:56', '数据结构基础学习资源', '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `intro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '介绍，简介',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '住址',
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1675391 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1675340, '王柳', '127', '123456', '127@qq.com', NULL, '15845646645', '2024-01-24 21:42:50', NULL, '学生', '重庆邮电大学崇文路2号', '女', 30);
INSERT INTO `users` VALUES (1675350, '汪柳', '126', '123456', '126@qq.com', NULL, '13489444445', '2020-02-20 21:41:55', NULL, '学生', '重庆邮电大学崇文路2号', '女', 18);
INSERT INTO `users` VALUES (1675360, '耀耀', '1110', '123456', '1110@qq.com', NULL, '13587644811', '2024-06-17 15:32:58', NULL, '管理员', '重庆邮电大学崇文路2号', '女', 18);
INSERT INTO `users` VALUES (1675361, '张三', '11', '123456', '11@qq.com', NULL, '13587644861', '2024-06-17 15:32:58', NULL, '超级管理员', '重庆邮电大学崇文路2号', '男', 25);
INSERT INTO `users` VALUES (1675362, '李四', '112', '1234567', '112@qq.com', NULL, '13587644863', '2024-06-17 15:32:58', NULL, '学生', '重庆邮电大学崇文路2号', '男', 18);
INSERT INTO `users` VALUES (1675364, '王五', '113', '123456', '113@qq.com', NULL, '13587644864', '2024-06-17 15:32:58', NULL, '教师', '重庆邮电大学崇文路2号', '男', 30);
INSERT INTO `users` VALUES (1675365, '李留', '114', '123456', '114@qq.com', NULL, '13587644865', '2024-06-17 15:32:58', NULL, '学生', '重庆邮电大学崇文路2号', '男', 18);
INSERT INTO `users` VALUES (1675366, '杨一', '115', '123456', '115@qq.com', NULL, '13587644866', '2024-06-17 15:32:58', NULL, '教师', '重庆邮电大学崇文路2号', '男', 25);
INSERT INTO `users` VALUES (1675367, '赵六', '116', '123456', '116@qq.com', NULL, '13587644860', '2024-06-17 15:32:58', NULL, '学生', '重庆邮电大学崇文路2号', '女', 18);
INSERT INTO `users` VALUES (1675368, '钱钱', '117', '123456', '117@qq.com', NULL, '13587644868', '2024-06-17 15:32:58', NULL, '学生', '重庆邮电大学崇文路2号', '女', 18);
INSERT INTO `users` VALUES (1675369, '盛盛', '118', '123456', '118@qq.com', NULL, '13587644869', '2024-06-17 15:32:58', NULL, '教师', '重庆邮电大学崇文路2号', '男', 28);
INSERT INTO `users` VALUES (1675370, '鹤鹤', '119', '123456', '119@qq.com', NULL, '13587644813', '2024-06-17 15:32:58', NULL, '学生', '重庆邮电大学崇文路2号', '女', 18);
INSERT INTO `users` VALUES (1675371, '巧巧', '1111', '123456', '1111@qq.com', NULL, '13587644815', '2024-06-17 15:32:58', NULL, '管理员', '重庆邮电大学崇文路2号', '男', 30);
INSERT INTO `users` VALUES (1675372, '覃琴', '1112', '123456', '1112@qq.com', NULL, '15555555555', '2024-06-24 17:27:32', NULL, '管理员', '重庆邮电大学崇文路2号', '男', 30);
INSERT INTO `users` VALUES (1675373, '玲玲', '120', '123456', '120@qq.com', NULL, '18875058888', '2024-07-04 15:16:57', NULL, '教师', '重庆邮电大学崇文路2号', '女', 30);
INSERT INTO `users` VALUES (1675374, '俊俊', '121', '123456', '121@qq.com', NULL, '18875058555', '2024-07-04 15:20:18', NULL, '学生', '重庆邮电大学崇文路2号', '男', 18);
INSERT INTO `users` VALUES (1675375, '浩浩', '122', '123456', '122@qq.com', NULL, '15489456465', '2024-05-27 21:38:50', NULL, '教师', '重庆邮电大学崇文路2号', '女', 30);
INSERT INTO `users` VALUES (1675379, '杨洋', '123', '123456', '123@qq.com', NULL, '15948923565', '2024-04-29 21:39:36', NULL, '教师', '重庆邮电大学崇文路2号', '男', 30);
INSERT INTO `users` VALUES (1675388, '盛世', '124', '123456', '124@qq.com', NULL, '15615645655', '2024-02-14 21:40:23', NULL, '教师', '重庆邮电大学崇文路2号', '女', 30);
INSERT INTO `users` VALUES (1675390, '韩克', '125', '123456', '125@qq.com', NULL, '15954651654', '2024-01-18 21:41:04', NULL, '教师', '重庆邮电大学崇文路2号', '男', 30);

SET FOREIGN_KEY_CHECKS = 1;
