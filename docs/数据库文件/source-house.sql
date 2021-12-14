/*
Navicat MySQL Data Transfer

Source Server         : source-byte
Source Server Version : 50639
Source Host           : localhost:3506
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2021-12-14 21:10:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for house_feature
-- ----------------------------
DROP TABLE IF EXISTS `house_feature`;
CREATE TABLE `house_feature` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `house_id` bigint(20) NOT NULL,
  `feature` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='房源特色';

-- ----------------------------
-- Records of house_feature
-- ----------------------------
INSERT INTO `house_feature` VALUES ('1', '8', '看房方便');
INSERT INTO `house_feature` VALUES ('2', '8', '独立阳台');
INSERT INTO `house_feature` VALUES ('3', '8', '免物业费');
INSERT INTO `house_feature` VALUES ('4', '8', '民用水电');
INSERT INTO `house_feature` VALUES ('5', '9', '看房方便');
INSERT INTO `house_feature` VALUES ('6', '9', '独卫');
INSERT INTO `house_feature` VALUES ('7', '9', '免物业费');
INSERT INTO `house_feature` VALUES ('8', '9', '民用水电');
INSERT INTO `house_feature` VALUES ('9', '10', '看房方便');
INSERT INTO `house_feature` VALUES ('10', '10', '独卫');
INSERT INTO `house_feature` VALUES ('11', '10', '精装修');
INSERT INTO `house_feature` VALUES ('12', '10', '民用水电');
INSERT INTO `house_feature` VALUES ('13', '12', '看房方便');
INSERT INTO `house_feature` VALUES ('14', '12', '独卫');
INSERT INTO `house_feature` VALUES ('15', '13', '看房方便');
INSERT INTO `house_feature` VALUES ('16', '14', '看房方便');
INSERT INTO `house_feature` VALUES ('17', '15', '看房方便');
INSERT INTO `house_feature` VALUES ('18', '16', '免物业费');
INSERT INTO `house_feature` VALUES ('19', '16', '民用水电');
INSERT INTO `house_feature` VALUES ('20', '17', '看房方便');
INSERT INTO `house_feature` VALUES ('21', '18', '看房方便');
INSERT INTO `house_feature` VALUES ('22', '18', '独卫');
INSERT INTO `house_feature` VALUES ('23', '19', '看房方便');
INSERT INTO `house_feature` VALUES ('24', '19', '独立阳台');
INSERT INTO `house_feature` VALUES ('25', '19', '精装修');
INSERT INTO `house_feature` VALUES ('26', '19', '智能锁');
INSERT INTO `house_feature` VALUES ('27', '19', '免物业费');
INSERT INTO `house_feature` VALUES ('28', '19', '民用水电');
INSERT INTO `house_feature` VALUES ('29', '20', '看房方便');
INSERT INTO `house_feature` VALUES ('30', '20', '独卫');
INSERT INTO `house_feature` VALUES ('31', '20', '独立阳台');
INSERT INTO `house_feature` VALUES ('32', '20', '精装修');
INSERT INTO `house_feature` VALUES ('33', '20', '智能锁');
INSERT INTO `house_feature` VALUES ('34', '20', '可短租');
INSERT INTO `house_feature` VALUES ('35', '20', '首次出租');
INSERT INTO `house_feature` VALUES ('36', '20', '免物业费');
INSERT INTO `house_feature` VALUES ('37', '20', '民用水电');
INSERT INTO `house_feature` VALUES ('38', '21', '看房方便');
INSERT INTO `house_feature` VALUES ('39', '22', '独卫');
INSERT INTO `house_feature` VALUES ('40', '23', '看房方便');
INSERT INTO `house_feature` VALUES ('41', '23', '独卫');
INSERT INTO `house_feature` VALUES ('42', '23', '独立阳台');
INSERT INTO `house_feature` VALUES ('43', '23', '精装修');
INSERT INTO `house_feature` VALUES ('44', '23', '智能锁');
INSERT INTO `house_feature` VALUES ('45', '23', '免物业费');
INSERT INTO `house_feature` VALUES ('46', '23', '民用水电');
INSERT INTO `house_feature` VALUES ('47', '24', '看房方便');
INSERT INTO `house_feature` VALUES ('48', '24', '独卫');
INSERT INTO `house_feature` VALUES ('49', '24', '独立阳台');
INSERT INTO `house_feature` VALUES ('50', '24', '精装修');
INSERT INTO `house_feature` VALUES ('51', '24', '首次出租');
INSERT INTO `house_feature` VALUES ('52', '24', '免物业费');
INSERT INTO `house_feature` VALUES ('53', '24', '民用水电');
INSERT INTO `house_feature` VALUES ('54', '25', '看房方便');
INSERT INTO `house_feature` VALUES ('55', '26', '看房方便');
INSERT INTO `house_feature` VALUES ('56', '26', '精装修');
INSERT INTO `house_feature` VALUES ('57', '27', '看房方便');
INSERT INTO `house_feature` VALUES ('58', '28', '看房方便');
INSERT INTO `house_feature` VALUES ('59', '29', '看房方便');
INSERT INTO `house_feature` VALUES ('60', '29', '免物业费');
INSERT INTO `house_feature` VALUES ('61', '29', '民用水电');

-- ----------------------------
-- Table structure for house_image
-- ----------------------------
DROP TABLE IF EXISTS `house_image`;
CREATE TABLE `house_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `house_id` bigint(20) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `image_size` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='房源图片';

-- ----------------------------
-- Records of house_image
-- ----------------------------

-- ----------------------------
-- Table structure for house_room
-- ----------------------------
DROP TABLE IF EXISTS `house_room`;
CREATE TABLE `house_room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL COMMENT '0整租/1合租',
  `house_num` varchar(2) DEFAULT NULL COMMENT '居室',
  `toilet_num` varchar(2) DEFAULT NULL COMMENT '卫生间',
  `house_area` float(6,2) DEFAULT NULL COMMENT '整套面积',
  `room_type` int(1) DEFAULT NULL COMMENT '1主卧,1次卧',
  `room_code` varchar(10) DEFAULT NULL COMMENT '房间号',
  `room_area` float(6,0) DEFAULT NULL COMMENT '房屋面积',
  `direction` varchar(2) DEFAULT NULL COMMENT '朝向',
  `price` decimal(10,2) DEFAULT NULL COMMENT '租金',
  `floor` varchar(10) DEFAULT NULL COMMENT '楼层',
  `step_type` varchar(10) DEFAULT NULL COMMENT '楼房类型',
  `start_date` datetime DEFAULT NULL COMMENT '起租日期',
  `introduce` varchar(255) DEFAULT NULL COMMENT '房源描述',
  `owner_name` varchar(20) DEFAULT NULL COMMENT '房东姓名',
  `ower_phone` varchar(11) DEFAULT NULL COMMENT '房东电话',
  `village_id` bigint(20) DEFAULT NULL COMMENT '小区id',
  `village_name` varchar(20) DEFAULT NULL COMMENT '小区名称',
  `address` varchar(100) DEFAULT NULL COMMENT '具体地址',
  `house_no` varchar(10) DEFAULT NULL COMMENT '房牌号',
  `pay_type` varchar(10) DEFAULT NULL COMMENT '付款方式',
  `publish_id` bigint(20) DEFAULT NULL COMMENT '发布人id',
  `state` int(1) DEFAULT NULL COMMENT '0：待出租，1：已出租,2:下架',
  `create_time` datetime DEFAULT NULL,
  `create_name` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `house_Hall` varchar(2) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `face_Url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='房源详情';

-- ----------------------------
-- Records of house_room
-- ----------------------------
INSERT INTO `house_room` VALUES ('29', '1', null, null, null, '1', 'A02', '20', '南', '1200.00', null, null, '2021-11-08 00:00:00', null, '', '', '10', '迪凯运河印象', '10栋', '604', '季付', '7', '0', '2021-11-08 20:15:14', '18720989281', null, null, null, null, '0725230007', 'http://8.136.213.245/profile/upload/2021/11/08/c1cc9f985f9d606bffdb3cd3cc34904c.jpeg');

-- ----------------------------
-- Table structure for house_user
-- ----------------------------
DROP TABLE IF EXISTS `house_user`;
CREATE TABLE `house_user` (
  `id` bigint(20) NOT NULL,
  `house_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `publish_id` bigint(20) NOT NULL,
  `actual_price` decimal(10,2) NOT NULL,
  `state` int(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出租信息';

-- ----------------------------
-- Records of house_user
-- ----------------------------

-- ----------------------------
-- Table structure for house_village
-- ----------------------------
DROP TABLE IF EXISTS `house_village`;
CREATE TABLE `house_village` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `province` varchar(10) NOT NULL COMMENT '省',
  `city` varchar(20) NOT NULL COMMENT '市',
  `area` varchar(50) NOT NULL COMMENT '区',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `code` varchar(50) DEFAULT NULL COMMENT '代号',
  `year` int(4) DEFAULT NULL COMMENT '年份',
  `type` varchar(20) DEFAULT NULL COMMENT '建筑类型',
  `green` float(5,2) DEFAULT NULL COMMENT '绿化率',
  `introduce` varchar(200) DEFAULT NULL COMMENT '介绍',
  `way_state` int(1) DEFAULT NULL COMMENT '靠近地铁',
  `way_code` varchar(20) DEFAULT NULL COMMENT '地铁线路',
  `way_space` int(8) DEFAULT NULL COMMENT '地铁距离',
  `lon` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `Lat` decimal(10,6) DEFAULT NULL COMMENT '纬度',
  `state` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='房源小区';

-- ----------------------------
-- Records of house_village
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '项目名称',
  `introduce` varchar(200) NOT NULL COMMENT '项目简介',
  `team` varchar(100) NOT NULL COMMENT '团队介绍',
  `linkman` varchar(100) DEFAULT NULL COMMENT '项目联系人',
  `web_link` varchar(100) DEFAULT NULL COMMENT '官网链接',
  `wechat` varchar(100) DEFAULT NULL COMMENT '朋友圈文案',
  `activity_link` varchar(100) DEFAULT NULL COMMENT '活动链接',
  `raise` tinyint(1) DEFAULT NULL COMMENT '是否有募资需求',
  `chat` tinyint(1) DEFAULT NULL COMMENT '是否有活跃群聊氛围需求',
  `volunteer` tinyint(1) DEFAULT NULL COMMENT '是否需要志愿者客服',
  `relay` varchar(50) DEFAULT NULL COMMENT '转发任务',
  `register` varchar(50) DEFAULT NULL COMMENT '注册任务',
  `follow` varchar(50) DEFAULT NULL COMMENT '关注订阅任务',
  `jointask` varchar(50) DEFAULT NULL COMMENT '进群和添加任务',
  `other` varchar(100) DEFAULT NULL COMMENT '其它任务（可自行提出任务需求）',
  `filed1` varchar(100) DEFAULT NULL,
  `filed2` varchar(100) DEFAULT NULL,
  `filed3` varchar(100) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logo_Name` varchar(50) DEFAULT NULL,
  `logo_Path` varchar(200) DEFAULT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `book_Path` varchar(200) DEFAULT NULL,
  `report_name` varchar(50) DEFAULT NULL,
  `report_path` varchar(200) DEFAULT NULL,
  `banner_name1` varchar(50) DEFAULT NULL,
  `banner_path1` varchar(200) DEFAULT NULL,
  `banner_name2` varchar(50) DEFAULT NULL,
  `banner_path2` varchar(200) DEFAULT NULL,
  `banner_name3` varchar(50) DEFAULT NULL,
  `banner_path3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for project_task
-- ----------------------------
DROP TABLE IF EXISTS `project_task`;
CREATE TABLE `project_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `project_id` bigint(20) NOT NULL COMMENT '项目id',
  `project_name` varchar(50) NOT NULL COMMENT '项目名称',
  `task_no` varchar(20) NOT NULL COMMENT '任务单号',
  `relay_Name` varchar(50) DEFAULT NULL COMMENT '转发任务',
  `relay_Path` varchar(200) DEFAULT NULL COMMENT '转发路径',
  `register_name` varchar(50) DEFAULT NULL COMMENT '注册任务',
  `register_path` varchar(200) DEFAULT NULL COMMENT '注册路径',
  `follow_name` varchar(50) DEFAULT NULL COMMENT '关注任务',
  `follow_path` varchar(200) DEFAULT NULL COMMENT '关注路径',
  `add_group` varchar(50) DEFAULT NULL COMMENT '进群任务',
  `add_path` varchar(200) DEFAULT NULL COMMENT '进群路径',
  `other_name` varchar(50) DEFAULT NULL COMMENT '其他任务',
  `other_path` varchar(200) DEFAULT NULL COMMENT '其他路径',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0默认，1已审核',
  `update_by` varchar(50) DEFAULT NULL COMMENT '审核人',
  `update_time` datetime DEFAULT NULL COMMENT '审核时间',
  `ip_address` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_task_unique` (`task_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_task
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', '0 0 2 * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178B191D5E07870740028E6AF8FE5A4A932E782B9E58699E585A5E5898DE4B880E5A4A9E79A84E6B581E9878FE695B0E68DAE7070707400013174000B3020302032202A202A203F7400147379735461736B2E737973466C6F774C6F67282974000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000474000CE6B581E9878FE7BB9FE8AEA174000133740001307800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'iZunhgh3ppc4euZ1636175966220', '1636435748017', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', 'TASK_CLASS_NAME4', 'SYSTEM', null, '1636480800000', '1636394400000', '5', 'WAITING', 'CRON', '1636175966000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', 'A', '0', '龚俊华', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-11-05 16:08:39');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '组织部', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-11-05 16:08:39');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '信息一组', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-29 19:10:59');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', '1', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-05 21:52:04', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', '0', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-05 21:52:08', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '1', '待审核', '1', 'sys_auth_user', null, 'warning', '1', '0', 'admin', '2021-04-03 22:31:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '2', '不通过', '3', 'sys_auth_user', null, 'danger', '0', '0', 'admin', '2021-04-03 22:32:59', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '3', '已认证', '2', 'sys_auth_user', null, null, '0', '0', 'admin', '2021-04-03 22:33:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '4', '未认证', '0', 'sys_auth_user', '', '', '1', '0', 'admin', '2021-04-03 22:33:34', 'admin', '2021-04-03 22:33:42', '');
INSERT INTO `sys_dict_data` VALUES ('33', '1', '北京', '北京', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:43:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('34', '2', '上海', '上海', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:43:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('35', '3', '广州', '广州', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:43:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '4', '深圳', '深圳', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:44:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('37', '5', '杭州', '杭州', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:44:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('38', '6', '上饶', '上饶', 'house_city', null, null, '1', '0', 'admin', '2021-07-07 09:44:56', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('39', '1', '独卫', '独卫', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:27:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '2', '独立阳台', '独立阳台', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:27:56', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '3', '精装修', '精装修', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:28:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '4', '智能锁', '智能锁', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:28:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('43', '5', '可短租', '可短租', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:28:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('44', '6', '首次出租', '首次出租', 'house_feature', null, null, '1', '0', 'admin', '2021-07-07 19:28:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('45', '1', '2010', '2010', 'house_year', '2017', '', '1', '0', 'admin', '2021-07-12 20:33:00', 'admin', '2021-07-16 15:25:15', '');
INSERT INTO `sys_dict_data` VALUES ('46', '3', '花园', '花园', 'house_type', '', '', '1', '0', 'admin', '2021-07-12 20:33:26', 'admin', '2021-07-16 15:43:15', '');
INSERT INTO `sys_dict_data` VALUES ('47', '1', '整租', '0', 'house_rent', null, null, '1', '0', 'admin', '2021-07-12 21:06:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('48', '2', '合租', '1', 'house_rent', null, null, '1', '0', 'admin', '2021-07-12 21:06:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('49', '1', '主卧', '1', 'room_type', '', '', '1', '0', 'admin', '2021-07-12 21:07:12', 'admin', '2021-07-14 19:52:39', '');
INSERT INTO `sys_dict_data` VALUES ('50', '2', '次卧', '2', 'room_type', '', '', '1', '0', 'admin', '2021-07-12 21:07:25', 'admin', '2021-07-14 19:52:43', '');
INSERT INTO `sys_dict_data` VALUES ('51', '1', '电梯房', '电梯房', 'house_step', null, null, '1', '0', 'admin', '2021-07-12 21:10:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('52', '2', '楼梯房', '楼梯房', 'house_step', null, null, '1', '0', 'admin', '2021-07-12 21:10:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('53', '1', '待出租', '0', 'house_state', '', 'default', '1', '0', 'admin', '2021-07-12 21:12:29', 'admin', '2021-07-12 21:13:25', '');
INSERT INTO `sys_dict_data` VALUES ('54', '2', '已出租', '1', 'house_state', null, null, '1', '0', 'admin', '2021-07-12 21:12:41', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('55', '3', '已下架', '2', 'house_state', null, null, '1', '0', 'admin', '2021-07-12 21:13:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('56', '1', '月付', '0', 'pay_type', null, null, '1', '0', 'admin', '2021-07-12 21:14:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('57', '2', '季付', '1', 'pay_type', null, null, '1', '0', 'admin', '2021-07-12 21:14:29', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('58', '3', '半年付', '2', 'pay_type', null, null, '1', '0', 'admin', '2021-07-12 21:14:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('59', '4', '年付', '3', 'pay_type', null, null, '1', '0', 'admin', '2021-07-12 21:14:53', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('61', '2', '2011', '2011', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:25:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('62', '3', '2012', '2012', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:25:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('63', '4', '2013', '2013', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:25:49', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('64', '5', '2014', '2014', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:25:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('65', '6', '2015', '2015', 'house_year', '', '', '1', '0', 'admin', '2021-07-16 15:26:07', 'admin', '2021-07-16 15:26:23', '');
INSERT INTO `sys_dict_data` VALUES ('66', '7', '2016', '2016', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:26:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('67', '8', '2017', '2017', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:26:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('68', '9', '2018', '2018', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:26:49', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('69', '10', '2019', '2019', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:27:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('70', '11', '2020', '2020', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:27:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('71', '12', '2021', '2021', 'house_year', null, null, '1', '0', 'admin', '2021-07-16 15:27:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('72', '1', '住宅', '住宅', 'house_type', '', 'default', '1', '0', 'admin', '2021-07-16 15:43:02', 'admin', '2021-07-16 15:44:13', '');
INSERT INTO `sys_dict_data` VALUES ('73', '2', '公寓', '公寓', 'house_type', null, null, '1', '0', 'admin', '2021-07-16 15:43:10', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '实名状态', 'sys_auth_user', '0', 'admin', '2021-04-03 22:27:39', 'admin', '2021-04-03 22:27:53', '实名认证状态');
INSERT INTO `sys_dict_type` VALUES ('12', '城市管理', 'house_city', '0', 'admin', '2021-07-07 09:40:57', 'admin', '2021-07-12 20:13:04', '');
INSERT INTO `sys_dict_type` VALUES ('13', '房源亮点', 'house_feature', '0', 'admin', '2021-07-07 19:27:27', 'admin', '2021-07-18 13:41:59', '');
INSERT INTO `sys_dict_type` VALUES ('14', '建造年份', 'house_year', '0', 'admin', '2021-07-12 20:15:07', 'admin', '2021-07-14 19:52:07', '');
INSERT INTO `sys_dict_type` VALUES ('15', '建筑类型', 'house_type', '0', 'admin', '2021-07-12 20:16:03', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('16', '整租合租', 'house_rent', '0', 'admin', '2021-07-12 21:05:57', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('17', '主卧次卧', 'room_type', '0', 'admin', '2021-07-12 21:07:05', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('18', '楼房类型', 'house_step', '0', 'admin', '2021-07-12 21:09:51', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('19', '出租状态', 'house_state', '0', 'admin', '2021-07-12 21:12:16', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('20', '付款方式', 'pay_type', '0', 'admin', '2021-07-12 21:14:07', '', null, null);

-- ----------------------------
-- Table structure for sys_flow_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_flow_log`;
CREATE TABLE `sys_flow_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pv_num` int(11) DEFAULT NULL COMMENT 'PV流量',
  `uv_num` int(11) DEFAULT NULL COMMENT 'UV流量',
  `ip_num` int(11) DEFAULT NULL COMMENT 'IP流量',
  `filed1` int(11) DEFAULT NULL COMMENT '备用1',
  `filed2` int(11) DEFAULT NULL COMMENT '备用2',
  `filed3` int(11) DEFAULT NULL COMMENT '备用3',
  `flow_date` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_flow_log
-- ----------------------------
INSERT INTO `sys_flow_log` VALUES ('5', '32', '5', '1', null, null, null, '2021-04-10', null);
INSERT INTO `sys_flow_log` VALUES ('6', '16', '5', '1', null, null, null, '2021-04-11', null);
INSERT INTO `sys_flow_log` VALUES ('7', '18', '5', '1', null, null, null, '2021-04-12', null);
INSERT INTO `sys_flow_log` VALUES ('8', '15', '2', '2', null, null, null, '2021-04-13', null);
INSERT INTO `sys_flow_log` VALUES ('9', '29', '5', '4', null, null, null, '2021-04-14', null);
INSERT INTO `sys_flow_log` VALUES ('10', '57', '5', '5', null, null, null, '2021-04-15', null);
INSERT INTO `sys_flow_log` VALUES ('11', '7', '3', '4', null, null, null, '2021-04-16', null);
INSERT INTO `sys_flow_log` VALUES ('12', '11', '5', '5', null, null, null, '2021-04-17', null);
INSERT INTO `sys_flow_log` VALUES ('13', '3', '2', '2', null, null, null, '2021-04-18', null);
INSERT INTO `sys_flow_log` VALUES ('14', '9', '1', '1', null, null, null, '2021-04-19', null);
INSERT INTO `sys_flow_log` VALUES ('15', '15', '2', '2', null, null, null, '2021-04-20', null);
INSERT INTO `sys_flow_log` VALUES ('16', '5', '3', '3', null, null, null, '2021-04-21', null);
INSERT INTO `sys_flow_log` VALUES ('17', '6', '1', '2', null, null, null, '2021-04-23', null);
INSERT INTO `sys_flow_log` VALUES ('18', '15', '9', '6', null, null, null, '2021-04-24', null);
INSERT INTO `sys_flow_log` VALUES ('19', '12', '5', '4', null, null, null, '2021-04-25', null);
INSERT INTO `sys_flow_log` VALUES ('20', '8', '4', '4', null, null, null, '2021-04-26', null);
INSERT INTO `sys_flow_log` VALUES ('21', '40', '2', '2', null, null, null, '2021-04-27', null);
INSERT INTO `sys_flow_log` VALUES ('22', '12', '11', '7', null, null, null, '2021-04-28', null);
INSERT INTO `sys_flow_log` VALUES ('23', '11', '4', '4', null, null, null, '2021-04-29', null);
INSERT INTO `sys_flow_log` VALUES ('24', '1', '1', '1', null, null, null, '2021-04-30', null);
INSERT INTO `sys_flow_log` VALUES ('25', '12', '5', '6', null, null, null, '2021-05-01', null);
INSERT INTO `sys_flow_log` VALUES ('26', '1', '1', '1', null, null, null, '2021-05-02', null);
INSERT INTO `sys_flow_log` VALUES ('27', '2', '1', '1', null, null, null, '2021-05-03', null);
INSERT INTO `sys_flow_log` VALUES ('28', '1', '1', '1', null, null, null, '2021-05-05', null);
INSERT INTO `sys_flow_log` VALUES ('29', '19', '4', '3', null, null, null, '2021-05-06', null);
INSERT INTO `sys_flow_log` VALUES ('30', '8', '2', '2', null, null, null, '2021-05-07', null);
INSERT INTO `sys_flow_log` VALUES ('31', '8', '5', '5', null, null, null, '2021-05-08', null);
INSERT INTO `sys_flow_log` VALUES ('32', '1', '1', '1', null, null, null, '2021-05-09', null);
INSERT INTO `sys_flow_log` VALUES ('33', '1', '1', '1', null, null, null, '2021-05-10', null);
INSERT INTO `sys_flow_log` VALUES ('34', '33', '7', '6', null, null, null, '2021-05-11', null);
INSERT INTO `sys_flow_log` VALUES ('35', '12', '2', '2', null, null, null, '2021-05-12', null);
INSERT INTO `sys_flow_log` VALUES ('36', '1', '1', '1', null, null, null, '2021-05-13', null);
INSERT INTO `sys_flow_log` VALUES ('37', '6', '6', '5', null, null, null, '2021-05-14', null);
INSERT INTO `sys_flow_log` VALUES ('38', '1', '1', '1', null, null, null, '2021-05-15', null);
INSERT INTO `sys_flow_log` VALUES ('39', '1', '1', '1', null, null, null, '2021-05-16', null);
INSERT INTO `sys_flow_log` VALUES ('40', '1', '1', '1', null, null, null, '2021-05-17', null);
INSERT INTO `sys_flow_log` VALUES ('41', '6', '3', '3', null, null, null, '2021-05-18', null);
INSERT INTO `sys_flow_log` VALUES ('42', '5', '1', '1', null, null, null, '2021-05-19', null);
INSERT INTO `sys_flow_log` VALUES ('43', '1', '1', '1', null, null, null, '2021-05-20', null);
INSERT INTO `sys_flow_log` VALUES ('44', '10', '5', '5', null, null, null, '2021-05-21', null);
INSERT INTO `sys_flow_log` VALUES ('45', '2', '2', '2', null, null, null, '2021-05-22', null);
INSERT INTO `sys_flow_log` VALUES ('46', '1', '1', '1', null, null, null, '2021-05-23', null);
INSERT INTO `sys_flow_log` VALUES ('47', '22', '3', '3', null, null, null, '2021-05-24', null);
INSERT INTO `sys_flow_log` VALUES ('48', '3', '2', '2', null, null, null, '2021-05-25', null);
INSERT INTO `sys_flow_log` VALUES ('49', '6', '6', '6', null, null, null, '2021-05-26', null);
INSERT INTO `sys_flow_log` VALUES ('50', '15', '2', '1', null, null, null, '2021-05-31', null);
INSERT INTO `sys_flow_log` VALUES ('51', '20', '13', '10', null, null, null, '2021-06-02', null);
INSERT INTO `sys_flow_log` VALUES ('52', '5', '2', '2', null, null, null, '2021-06-03', null);
INSERT INTO `sys_flow_log` VALUES ('53', '3', '3', '3', null, null, null, '2021-06-05', null);
INSERT INTO `sys_flow_log` VALUES ('54', '2', '2', '2', null, null, null, '2021-06-06', null);
INSERT INTO `sys_flow_log` VALUES ('55', '18', '10', '9', null, null, null, '2021-06-07', null);
INSERT INTO `sys_flow_log` VALUES ('56', '15', '5', '5', null, null, null, '2021-06-08', null);
INSERT INTO `sys_flow_log` VALUES ('57', '6', '6', '6', null, null, null, '2021-06-09', null);
INSERT INTO `sys_flow_log` VALUES ('58', '8', '6', '6', null, null, null, '2021-06-10', null);
INSERT INTO `sys_flow_log` VALUES ('59', '6', '4', '4', null, null, null, '2021-06-11', null);
INSERT INTO `sys_flow_log` VALUES ('60', '6', '5', '5', null, null, null, '2021-06-12', null);
INSERT INTO `sys_flow_log` VALUES ('61', '7', '7', '6', null, null, null, '2021-06-13', null);
INSERT INTO `sys_flow_log` VALUES ('62', '11', '4', '3', null, null, null, '2021-06-15', null);
INSERT INTO `sys_flow_log` VALUES ('63', '20', '10', '10', null, null, null, '2021-06-16', null);
INSERT INTO `sys_flow_log` VALUES ('64', '23', '3', '3', null, null, null, '2021-06-17', null);
INSERT INTO `sys_flow_log` VALUES ('65', '9', '5', '3', null, null, null, '2021-06-18', null);
INSERT INTO `sys_flow_log` VALUES ('66', '1', '1', '1', null, null, null, '2021-06-19', null);
INSERT INTO `sys_flow_log` VALUES ('67', '2', '2', '2', null, null, null, '2021-06-20', null);
INSERT INTO `sys_flow_log` VALUES ('68', '19', '1', '2', null, null, null, '2021-06-21', null);
INSERT INTO `sys_flow_log` VALUES ('69', '3', '3', '2', null, null, null, '2021-06-22', null);
INSERT INTO `sys_flow_log` VALUES ('70', '3', '3', '3', null, null, null, '2021-06-23', null);
INSERT INTO `sys_flow_log` VALUES ('71', '3', '2', '1', null, null, null, '2021-06-24', null);
INSERT INTO `sys_flow_log` VALUES ('72', '4', '3', '3', null, null, null, '2021-06-25', null);
INSERT INTO `sys_flow_log` VALUES ('73', '1', '1', '1', null, null, null, '2021-06-26', null);
INSERT INTO `sys_flow_log` VALUES ('74', '3', '3', '3', null, null, null, '2021-06-27', null);
INSERT INTO `sys_flow_log` VALUES ('75', '2', '2', '2', null, null, null, '2021-06-28', null);
INSERT INTO `sys_flow_log` VALUES ('76', '5', '3', '3', null, null, null, '2021-06-29', null);
INSERT INTO `sys_flow_log` VALUES ('77', '7', '6', '6', null, null, null, '2021-07-01', null);
INSERT INTO `sys_flow_log` VALUES ('78', '3', '3', '3', null, null, null, '2021-07-02', null);
INSERT INTO `sys_flow_log` VALUES ('79', '9', '6', '4', null, null, null, '2021-07-03', null);
INSERT INTO `sys_flow_log` VALUES ('80', '7', '5', '3', null, null, null, '2021-07-04', null);
INSERT INTO `sys_flow_log` VALUES ('81', '8', '7', '6', null, null, null, '2021-07-05', null);
INSERT INTO `sys_flow_log` VALUES ('82', '17', '8', '8', null, null, null, '2021-07-06', null);
INSERT INTO `sys_flow_log` VALUES ('83', '3', '3', '3', null, null, null, '2021-07-07', null);
INSERT INTO `sys_flow_log` VALUES ('84', '4', '4', '4', null, null, null, '2021-07-08', null);
INSERT INTO `sys_flow_log` VALUES ('85', '4', '4', '4', null, null, null, '2021-07-09', null);
INSERT INTO `sys_flow_log` VALUES ('86', '4', '2', '2', null, null, null, '2021-07-10', null);
INSERT INTO `sys_flow_log` VALUES ('87', '1', '1', '1', null, null, null, '2021-07-11', null);
INSERT INTO `sys_flow_log` VALUES ('88', '12', '7', '7', null, null, null, '2021-07-12', null);
INSERT INTO `sys_flow_log` VALUES ('89', '4', '3', '3', null, null, null, '2021-07-13', null);
INSERT INTO `sys_flow_log` VALUES ('90', '12', '9', '9', null, null, null, '2021-07-14', null);
INSERT INTO `sys_flow_log` VALUES ('91', '2', '2', '1', null, null, null, '2021-07-15', null);
INSERT INTO `sys_flow_log` VALUES ('92', '12', '5', '5', null, null, null, '2021-07-16', null);
INSERT INTO `sys_flow_log` VALUES ('93', '12', '11', '8', null, null, null, '2021-07-17', null);
INSERT INTO `sys_flow_log` VALUES ('94', '3', '3', '2', null, null, null, '2021-07-18', null);
INSERT INTO `sys_flow_log` VALUES ('95', '7', '5', '4', null, null, null, '2021-07-19', null);
INSERT INTO `sys_flow_log` VALUES ('96', '14', '7', '5', null, null, null, '2021-07-20', null);
INSERT INTO `sys_flow_log` VALUES ('97', '5', '5', '5', null, null, null, '2021-07-21', null);
INSERT INTO `sys_flow_log` VALUES ('98', '20', '17', '4', null, null, null, '2021-07-22', null);
INSERT INTO `sys_flow_log` VALUES ('99', '10', '9', '7', null, null, null, '2021-07-23', null);
INSERT INTO `sys_flow_log` VALUES ('100', '338', '51', '6', null, null, null, '2021-07-24', null);
INSERT INTO `sys_flow_log` VALUES ('101', '27', '9', '2', null, null, null, '2021-07-25', null);
INSERT INTO `sys_flow_log` VALUES ('102', '18', '12', '3', null, null, null, '2021-07-26', null);
INSERT INTO `sys_flow_log` VALUES ('103', '7', '5', '3', null, null, null, '2021-07-27', null);
INSERT INTO `sys_flow_log` VALUES ('104', '19', '8', '6', null, null, null, '2021-07-28', null);
INSERT INTO `sys_flow_log` VALUES ('105', '8', '8', '4', null, null, null, '2021-07-29', null);
INSERT INTO `sys_flow_log` VALUES ('106', '4', '4', '3', null, null, null, '2021-07-30', null);
INSERT INTO `sys_flow_log` VALUES ('107', '9', '8', '4', null, null, null, '2021-08-01', null);
INSERT INTO `sys_flow_log` VALUES ('108', '8', '5', '3', null, null, null, '2021-08-02', null);
INSERT INTO `sys_flow_log` VALUES ('109', '2', '1', '1', null, null, null, '2021-08-03', null);
INSERT INTO `sys_flow_log` VALUES ('110', '70', '41', '9', null, null, null, '2021-08-04', null);
INSERT INTO `sys_flow_log` VALUES ('111', '1', '1', '1', null, null, null, '2021-08-05', null);
INSERT INTO `sys_flow_log` VALUES ('112', '18', '8', '2', null, null, null, '2021-08-06', null);
INSERT INTO `sys_flow_log` VALUES ('113', '3', '3', '3', null, null, null, '2021-08-07', null);
INSERT INTO `sys_flow_log` VALUES ('114', '5', '5', '4', null, null, null, '2021-08-08', null);
INSERT INTO `sys_flow_log` VALUES ('115', '4', '4', '3', null, null, null, '2021-08-09', null);
INSERT INTO `sys_flow_log` VALUES ('116', '25', '21', '17', null, null, null, '2021-08-10', null);
INSERT INTO `sys_flow_log` VALUES ('117', '37', '12', '8', null, null, null, '2021-08-11', null);
INSERT INTO `sys_flow_log` VALUES ('118', '9', '9', '5', null, null, null, '2021-08-12', null);
INSERT INTO `sys_flow_log` VALUES ('119', '8', '7', '4', null, null, null, '2021-08-13', null);
INSERT INTO `sys_flow_log` VALUES ('120', '15', '7', '7', null, null, null, '2021-08-14', null);
INSERT INTO `sys_flow_log` VALUES ('121', '26', '12', '10', null, null, null, '2021-08-15', null);
INSERT INTO `sys_flow_log` VALUES ('122', '37', '12', '11', null, null, null, '2021-08-16', null);
INSERT INTO `sys_flow_log` VALUES ('123', '4', '4', '4', null, null, null, '2021-08-17', null);
INSERT INTO `sys_flow_log` VALUES ('124', '14', '8', '7', null, null, null, '2021-08-18', null);
INSERT INTO `sys_flow_log` VALUES ('125', '11', '9', '9', null, null, null, '2021-08-19', null);
INSERT INTO `sys_flow_log` VALUES ('126', '13', '6', '6', null, null, null, '2021-08-20', null);
INSERT INTO `sys_flow_log` VALUES ('127', '7', '7', '7', null, null, null, '2021-08-21', null);
INSERT INTO `sys_flow_log` VALUES ('128', '13', '7', '7', null, null, null, '2021-08-22', null);
INSERT INTO `sys_flow_log` VALUES ('129', '8', '6', '6', null, null, null, '2021-08-23', null);
INSERT INTO `sys_flow_log` VALUES ('130', '11', '9', '8', null, null, null, '2021-08-24', null);
INSERT INTO `sys_flow_log` VALUES ('131', '19', '11', '8', null, null, null, '2021-08-25', null);
INSERT INTO `sys_flow_log` VALUES ('132', '14', '13', '13', null, null, null, '2021-08-26', null);
INSERT INTO `sys_flow_log` VALUES ('133', '8', '4', '4', null, null, null, '2021-08-27', null);
INSERT INTO `sys_flow_log` VALUES ('134', '2', '2', '2', null, null, null, '2021-08-28', null);
INSERT INTO `sys_flow_log` VALUES ('135', '10', '5', '5', null, null, null, '2021-08-29', null);
INSERT INTO `sys_flow_log` VALUES ('136', '25', '11', '12', null, null, null, '2021-08-30', null);
INSERT INTO `sys_flow_log` VALUES ('137', '4', '4', '4', null, null, null, '2021-08-31', null);
INSERT INTO `sys_flow_log` VALUES ('138', '5', '5', '4', null, null, null, '2021-09-01', null);
INSERT INTO `sys_flow_log` VALUES ('139', '9', '6', '6', null, null, null, '2021-09-02', null);
INSERT INTO `sys_flow_log` VALUES ('140', '12', '9', '7', null, null, null, '2021-09-03', null);
INSERT INTO `sys_flow_log` VALUES ('141', '16', '5', '4', null, null, null, '2021-09-04', null);
INSERT INTO `sys_flow_log` VALUES ('142', '10', '9', '8', null, null, null, '2021-09-05', null);
INSERT INTO `sys_flow_log` VALUES ('143', '2', '2', '2', null, null, null, '2021-09-06', null);
INSERT INTO `sys_flow_log` VALUES ('144', '6', '5', '5', null, null, null, '2021-09-07', null);
INSERT INTO `sys_flow_log` VALUES ('145', '13', '7', '7', null, null, null, '2021-09-08', null);
INSERT INTO `sys_flow_log` VALUES ('146', '6', '6', '5', null, null, null, '2021-09-09', null);
INSERT INTO `sys_flow_log` VALUES ('147', '6', '6', '5', null, null, null, '2021-09-10', null);
INSERT INTO `sys_flow_log` VALUES ('148', '8', '4', '4', null, null, null, '2021-09-11', null);
INSERT INTO `sys_flow_log` VALUES ('149', '10', '8', '8', null, null, null, '2021-09-12', null);
INSERT INTO `sys_flow_log` VALUES ('150', '1', '1', '1', null, null, null, '2021-09-13', null);
INSERT INTO `sys_flow_log` VALUES ('151', '6', '6', '6', null, null, null, '2021-09-15', null);
INSERT INTO `sys_flow_log` VALUES ('152', '6', '4', '4', null, null, null, '2021-09-16', null);
INSERT INTO `sys_flow_log` VALUES ('153', '6', '1', '1', null, null, null, '2021-09-17', null);
INSERT INTO `sys_flow_log` VALUES ('154', '1', '1', '1', null, null, null, '2021-10-10', null);
INSERT INTO `sys_flow_log` VALUES ('155', '48', '17', '4', null, null, null, '2021-10-15', null);
INSERT INTO `sys_flow_log` VALUES ('156', '4', '3', '3', null, null, null, '2021-10-16', null);
INSERT INTO `sys_flow_log` VALUES ('157', '2', '2', '1', null, null, null, '2021-10-18', null);
INSERT INTO `sys_flow_log` VALUES ('158', '3', '3', '3', null, null, null, '2021-10-21', null);
INSERT INTO `sys_flow_log` VALUES ('159', '1', '1', '1', null, null, null, '2021-10-22', null);
INSERT INTO `sys_flow_log` VALUES ('160', '8', '7', '3', null, null, null, '2021-10-23', null);
INSERT INTO `sys_flow_log` VALUES ('161', '2', '2', '1', null, null, null, '2021-10-25', null);
INSERT INTO `sys_flow_log` VALUES ('162', '40', '22', '5', null, null, null, '2021-10-26', null);
INSERT INTO `sys_flow_log` VALUES ('163', '17', '11', '6', null, null, null, '2021-10-27', null);
INSERT INTO `sys_flow_log` VALUES ('164', '323', '161', '9', null, null, null, '2021-10-29', null);
INSERT INTO `sys_flow_log` VALUES ('165', '28', '16', '5', null, null, null, '2021-10-30', null);
INSERT INTO `sys_flow_log` VALUES ('166', '560', '421', '8', null, null, null, '2021-10-31', null);
INSERT INTO `sys_flow_log` VALUES ('167', '560', '421', '8', null, null, null, '2021-10-31', null);
INSERT INTO `sys_flow_log` VALUES ('168', '63', '32', '14', null, null, null, '2021-11-01', null);
INSERT INTO `sys_flow_log` VALUES ('169', '31', '21', '6', null, null, null, '2021-11-02', null);
INSERT INTO `sys_flow_log` VALUES ('170', '478', '225', '8', null, null, null, '2021-11-03', null);
INSERT INTO `sys_flow_log` VALUES ('171', '184', '103', '10', null, null, null, '2021-11-04', null);
INSERT INTO `sys_flow_log` VALUES ('172', '105', '60', '9', null, null, null, '2021-11-05', null);
INSERT INTO `sys_flow_log` VALUES ('173', '132', '53', '8', null, null, null, '2021-11-06', null);
INSERT INTO `sys_flow_log` VALUES ('174', '11', '7', '5', null, null, null, '2021-11-07', null);
INSERT INTO `sys_flow_log` VALUES ('175', '197', '100', '10', null, null, null, '2021-11-08', null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('4', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '0 0 2 * * ?', '3', '1', '0', 'admin', '2021-04-08 21:00:28', 'admin', '2021-04-08 22:18:44', '每天2点写入前一天的流量数据');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('2', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-04-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('3', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('4', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：9毫秒', '0', '', '2021-04-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('5', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('6', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('7', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-04-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('8', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：15毫秒', '0', '', '2021-04-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('9', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('10', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('11', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('12', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('13', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：2毫秒', '0', '', '2021-04-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('14', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('15', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('16', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-04-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('17', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-04-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('18', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-04-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('19', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('20', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-04-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('21', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-04-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('22', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-04-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('23', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-04-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('24', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('25', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('26', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('27', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('28', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-05-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('29', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-05-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('30', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：10毫秒', '0', '', '2021-05-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('31', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-05-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('32', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-05-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('33', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-05-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('34', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-05-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('35', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-05-11 17:50:52');
INSERT INTO `sys_job_log` VALUES ('36', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：8毫秒', '0', '', '2021-05-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('37', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-05-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('38', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('39', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：8毫秒', '0', '', '2021-05-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('40', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('41', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('42', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-05-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('43', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('44', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-05-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('45', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('46', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('47', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('48', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('49', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-05-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('50', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('51', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-05-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('52', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-05-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('53', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-05-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('54', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-05-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('55', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-05-31 02:00:00');
INSERT INTO `sys_job_log` VALUES ('56', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-06-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('57', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-06-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('58', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('59', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('60', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-06-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('61', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('62', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-06-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('63', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('64', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('65', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('66', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('67', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('68', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：7毫秒', '0', '', '2021-06-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('69', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('70', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-06-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('71', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('72', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('73', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：7毫秒', '0', '', '2021-06-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('74', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('75', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('76', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('77', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('78', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('79', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('80', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('81', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('82', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('83', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('84', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-06-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('85', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-06-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('86', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-07-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('87', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('88', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-07-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('89', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('90', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-07-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('91', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-07-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('92', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：7毫秒', '0', '', '2021-07-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('93', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-07-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('94', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('95', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('96', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('97', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('98', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-07-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('99', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-07-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('100', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：8毫秒', '0', '', '2021-07-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('101', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('102', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('103', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('104', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：15毫秒', '0', '', '2021-07-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('105', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：427毫秒', '0', '', '2021-07-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('106', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：10毫秒', '0', '', '2021-07-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('107', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：538毫秒', '0', '', '2021-07-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('108', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：8毫秒', '0', '', '2021-07-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('109', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('110', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：7毫秒', '0', '', '2021-07-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('111', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-07-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('112', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('113', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('114', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-07-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('115', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-07-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('116', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-07-31 02:00:00');
INSERT INTO `sys_job_log` VALUES ('117', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-08-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('118', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-08-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('119', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-08-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('120', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('121', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('122', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('123', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('124', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('125', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('126', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-08-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('127', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('128', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('129', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('130', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('131', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('132', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('133', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('134', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-08-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('135', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('136', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('137', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('138', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-08-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('139', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('140', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('141', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('142', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('143', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('144', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-08-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('145', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('146', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-08-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('147', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-08-31 02:00:00');
INSERT INTO `sys_job_log` VALUES ('148', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('149', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('150', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('151', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('152', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('153', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-09-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('154', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('155', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('156', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('157', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('158', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('159', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('160', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('161', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('162', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('163', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-09-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('164', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('165', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-09-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('166', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-09-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('167', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-09-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('168', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('169', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('170', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('171', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('172', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('173', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-09-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('174', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('175', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('176', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-09-29 02:00:00');
INSERT INTO `sys_job_log` VALUES ('177', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-09-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('178', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('179', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('180', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('181', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('182', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('183', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('184', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('185', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('186', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-09 02:00:00');
INSERT INTO `sys_job_log` VALUES ('187', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('188', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-11 02:00:00');
INSERT INTO `sys_job_log` VALUES ('189', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-12 02:00:00');
INSERT INTO `sys_job_log` VALUES ('190', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-13 02:00:00');
INSERT INTO `sys_job_log` VALUES ('191', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-14 02:00:00');
INSERT INTO `sys_job_log` VALUES ('192', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-15 02:00:00');
INSERT INTO `sys_job_log` VALUES ('193', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-16 02:00:00');
INSERT INTO `sys_job_log` VALUES ('194', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-17 02:00:00');
INSERT INTO `sys_job_log` VALUES ('195', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-18 02:00:00');
INSERT INTO `sys_job_log` VALUES ('196', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-19 02:00:00');
INSERT INTO `sys_job_log` VALUES ('197', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-20 02:00:00');
INSERT INTO `sys_job_log` VALUES ('198', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：1毫秒', '0', '', '2021-10-21 02:00:00');
INSERT INTO `sys_job_log` VALUES ('199', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-22 02:00:00');
INSERT INTO `sys_job_log` VALUES ('200', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-10-23 02:00:00');
INSERT INTO `sys_job_log` VALUES ('201', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-10-24 02:00:00');
INSERT INTO `sys_job_log` VALUES ('202', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：0毫秒', '0', '', '2021-10-25 02:00:00');
INSERT INTO `sys_job_log` VALUES ('203', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-26 02:00:00');
INSERT INTO `sys_job_log` VALUES ('204', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-10-27 02:00:00');
INSERT INTO `sys_job_log` VALUES ('205', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-10-28 02:00:00');
INSERT INTO `sys_job_log` VALUES ('206', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：7毫秒', '0', '', '2021-10-30 02:00:00');
INSERT INTO `sys_job_log` VALUES ('207', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-10-31 02:00:00');
INSERT INTO `sys_job_log` VALUES ('208', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-11-01 02:00:00');
INSERT INTO `sys_job_log` VALUES ('209', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：6毫秒', '0', '', '2021-11-01 20:35:16');
INSERT INTO `sys_job_log` VALUES ('210', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-11-02 02:00:00');
INSERT INTO `sys_job_log` VALUES ('211', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：3毫秒', '0', '', '2021-11-03 02:00:00');
INSERT INTO `sys_job_log` VALUES ('212', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-11-04 02:00:00');
INSERT INTO `sys_job_log` VALUES ('213', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：4毫秒', '0', '', '2021-11-05 02:00:00');
INSERT INTO `sys_job_log` VALUES ('214', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：8毫秒', '0', '', '2021-11-06 02:00:00');
INSERT INTO `sys_job_log` VALUES ('215', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：13毫秒', '0', '', '2021-11-07 02:00:00');
INSERT INTO `sys_job_log` VALUES ('216', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：10毫秒', '0', '', '2021-11-08 02:00:00');
INSERT INTO `sys_job_log` VALUES ('217', '流量统计', 'SYSTEM', 'sysTask.sysFlowLog()', '流量统计 总共耗时：5毫秒', '0', '', '2021-11-09 02:00:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'admin', '125.118.30.110', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-05 16:11:54');
INSERT INTO `sys_logininfor` VALUES ('2', 'admin', '125.118.30.110', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-05 16:37:35');
INSERT INTO `sys_logininfor` VALUES ('3', 'admin', '125.118.30.110', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-05 16:37:38');
INSERT INTO `sys_logininfor` VALUES ('4', 'admin', '125.118.30.110', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-05 17:02:56');
INSERT INTO `sys_logininfor` VALUES ('5', 'admin', '125.118.30.110', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-05 17:03:29');
INSERT INTO `sys_logininfor` VALUES ('6', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '1', '密码输入错误1次', '2021-11-05 17:28:55');
INSERT INTO `sys_logininfor` VALUES ('7', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-05 17:29:03');
INSERT INTO `sys_logininfor` VALUES ('8', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-05 17:29:22');
INSERT INTO `sys_logininfor` VALUES ('9', 'admin', '112.10.56.112', '浙江 杭州', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-05 18:43:12');
INSERT INTO `sys_logininfor` VALUES ('10', 'admin', '112.10.56.112', '浙江 杭州', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-05 18:43:38');
INSERT INTO `sys_logininfor` VALUES ('11', 'admin', '112.10.56.112', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-06 12:20:47');
INSERT INTO `sys_logininfor` VALUES ('12', 'admin', '112.10.56.112', '浙江 杭州', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2021-11-06 12:45:55');
INSERT INTO `sys_logininfor` VALUES ('13', 'admin', '112.10.56.112', '浙江 杭州', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 12:45:58');
INSERT INTO `sys_logininfor` VALUES ('14', '18720989281', '112.10.56.112', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-06 12:51:24');
INSERT INTO `sys_logininfor` VALUES ('15', '18720989281', '112.10.56.112', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-06 12:59:01');
INSERT INTO `sys_logininfor` VALUES ('16', '18720989281', '112.10.56.112', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-06 13:32:44');
INSERT INTO `sys_logininfor` VALUES ('17', 'admin', '112.10.56.23', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-07 16:38:02');
INSERT INTO `sys_logininfor` VALUES ('18', 'admin', '223.104.244.186', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-08 09:35:31');
INSERT INTO `sys_logininfor` VALUES ('19', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-08 14:04:13');
INSERT INTO `sys_logininfor` VALUES ('20', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-08 14:18:45');
INSERT INTO `sys_logininfor` VALUES ('21', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-08 14:20:13');
INSERT INTO `sys_logininfor` VALUES ('22', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-08 16:36:17');
INSERT INTO `sys_logininfor` VALUES ('23', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-08 16:36:22');
INSERT INTO `sys_logininfor` VALUES ('24', '15811111111', '121.19.37.23', '河北 保定', 'Chrome Mobile', 'Android 6.x', '1', '用户不存在/密码错误', '2021-11-08 17:24:27');
INSERT INTO `sys_logininfor` VALUES ('25', 'admin', '112.10.56.23', '浙江 杭州', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-11-08 20:17:15');
INSERT INTO `sys_logininfor` VALUES ('26', '13727073854', '119.132.37.68', '广东 珠海', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2021-11-09 10:53:12');
INSERT INTO `sys_logininfor` VALUES ('27', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-09 11:37:28');
INSERT INTO `sys_logininfor` VALUES ('28', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-09 11:38:28');
INSERT INTO `sys_logininfor` VALUES ('29', 'admin', '183.242.50.8', '北京 北京', 'Chrome 8', 'Windows 7', '0', '登录成功', '2021-11-09 11:42:39');
INSERT INTO `sys_logininfor` VALUES ('30', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '登录成功', '2021-11-09 11:48:43');
INSERT INTO `sys_logininfor` VALUES ('31', 'admin', '122.235.232.68', '浙江 杭州', 'Firefox 9', 'Windows 7', '0', '退出成功', '2021-11-09 11:49:31');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1090 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '30', '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2021-07-14 19:47:21', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '40', '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2021-07-14 19:47:28', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '2', '/monitor/online', 'menuItem', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-08 22:19:47', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '1', '/monitor/job', 'menuItem', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-08 22:19:56', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1062', '团队管理', '1080', '10', '/system/user/teamUser', 'menuItem', 'C', '0', '', '#', 'admin', '2021-03-04 09:23:22', 'admin', '2021-04-01 10:22:28', '');
INSERT INTO `sys_menu` VALUES ('1068', '项目管理', '1080', '1', '/system/project', 'menuItem', 'C', '0', 'system:project:view', '#', 'admin', '2021-03-05 21:50:54', 'admin', '2021-04-01 10:22:33', '');
INSERT INTO `sys_menu` VALUES ('1069', '项目查询', '1068', '1', '#', 'menuItem', 'F', '0', 'system:project:list', '#', 'admin', '2021-03-05 21:53:49', 'admin', '2021-03-05 21:54:17', '');
INSERT INTO `sys_menu` VALUES ('1070', '项目新增', '1068', '2', '#', 'menuItem', 'F', '0', 'system:project:add', '#', 'admin', '2021-03-05 21:54:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('1071', '项目修改', '1068', '3', '#', 'menuItem', 'F', '0', 'system:project:edit', '#', 'admin', '2021-03-05 21:55:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1072', '项目删除', '1068', '4', '#', 'menuItem', 'F', '0', 'system:project:remove', '#', 'admin', '2021-03-05 21:55:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('1073', '任务管理', '1080', '20', '/system/task', 'menuItem', 'C', '0', 'system:task:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2021-04-01 10:22:41', '任务表菜单');
INSERT INTO `sys_menu` VALUES ('1074', '任务表查询', '1073', '1', '#', '', 'F', '0', 'system:task:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1075', '任务表新增', '1073', '2', '#', '', 'F', '0', 'system:task:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1076', '任务表修改', '1073', '3', '#', '', 'F', '0', 'system:task:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1077', '任务表删除', '1073', '4', '#', '', 'F', '0', 'system:task:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1079', '站长统计', '2', '0', '/system/流量统计', 'menuItem', 'C', '0', 'system:流量统计:view', '#', 'admin', '2021-04-01 10:17:51', 'admin', '2021-04-07 21:44:27', '');
INSERT INTO `sys_menu` VALUES ('1080', '项目运维', '0', '20', '#', 'menuItem', 'M', '0', '', 'fa fa-legal', 'admin', '2021-04-01 10:20:44', 'admin', '2021-07-14 19:47:34', '');
INSERT INTO `sys_menu` VALUES ('1081', '实名认证', '1080', '30', '/system/user/checkUser', 'menuItem', 'C', '0', '', '#', 'admin', '2021-04-01 10:23:21', 'admin', '2021-04-03 22:39:14', '');
INSERT INTO `sys_menu` VALUES ('1087', '房产管理', '0', '21', '#', 'menuItem', 'C', '0', '', 'fa fa-bank', 'admin', '2021-07-14 19:47:10', 'admin', '2021-07-14 19:49:40', '');
INSERT INTO `sys_menu` VALUES ('1088', '小区管理', '1087', '1', '/system/village', 'menuItem', 'C', '0', null, '#', 'admin', '2021-07-14 19:48:29', '', null, '');
INSERT INTO `sys_menu` VALUES ('1089', '房源管理', '1087', '2', '/system/room', 'menuItem', 'C', '0', '2', '#', 'admin', '2021-07-14 19:49:06', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` text COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('3', '新人福利', '1', '<p>免费领取1000元租房代金券<br></p>', '0', 'admin', '2021-07-07 09:52:49', '', null, null);
INSERT INTO `sys_notice` VALUES ('4', '邀请好友', '1', '<p>邀请好友送大礼，获得精美礼品一份<br></p>', '0', 'admin', '2021-07-07 09:54:00', '', null, null);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('1', '操作日志', '9', 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'POST', '1', 'admin', '信息一组', '/monitor/operlog/clean', '125.118.30.110', '浙江 杭州', '{ }', '0', null, '2021-11-05 16:11:36');
INSERT INTO `sys_oper_log` VALUES ('2', '房源详情', '2', 'com.ruoyi.system.controller.HouseRoomController.editSave()', 'POST', '1', 'admin', '信息一组', '/system/room/edit', '112.10.56.112', '浙江 杭州', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"type\" : [ \"0\" ],\r\n  \"houseNum\" : [ \"二室\" ],\r\n  \"houseHall\" : [ \"\" ],\r\n  \"toiletNum\" : [ \"一卫\" ],\r\n  \"houseArea\" : [ \"65.0\" ],\r\n  \"roomType\" : [ \"\" ],\r\n  \"roomCode\" : [ \"\" ],\r\n  \"roomArea\" : [ \"\" ],\r\n  \"direction\" : [ \"\" ],\r\n  \"price\" : [ \"2700.0\" ],\r\n  \"floor\" : [ \"11/22\" ],\r\n  \"stepType\" : [ \"电梯房\" ],\r\n  \"startDate\" : [ \"2021-10-31\" ],\r\n  \"introduce\" : [ \"精装修，首次出租\" ],\r\n  \"ownerName\" : [ \"詹Sir\" ],\r\n  \"owerPhone\" : [ \"18720989281\" ],\r\n  \"villageId\" : [ \"1\" ],\r\n  \"villageName\" : [ \"金昌苑\" ],\r\n  \"address\" : [ \"金昌苑14栋1单元\" ],\r\n  \"houseNo\" : [ \"1102\" ],\r\n  \"payType\" : [ \"1\" ],\r\n  \"state\" : [ \"0\" ]\r\n}', '0', null, '2021-11-06 12:46:26');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', 'boos', '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-22 16:09:37', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '普通用户', '2', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-03-22 16:09:50', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '游客', 'common', '2', '5', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-29 19:13:13', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '1062');
INSERT INTO `sys_role_menu` VALUES ('2', '1068');
INSERT INTO `sys_role_menu` VALUES ('2', '1069');
INSERT INTO `sys_role_menu` VALUES ('2', '1070');
INSERT INTO `sys_role_menu` VALUES ('2', '1071');
INSERT INTO `sys_role_menu` VALUES ('2', '1072');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `pcode` varchar(20) DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `real_Name` varchar(20) DEFAULT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  `idCard_Path` varchar(100) DEFAULT NULL,
  `link_Address` varchar(200) DEFAULT NULL,
  `auth_Status` char(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2021/04/27/2c7c5a9c6934323f5247c6fd4c0bdbc4.png', 'ff922110108cd285a6f94024eae3d205', 'd0175e', '0', '0', '122.235.232.68', '2021-11-09 11:48:43', 'admin', '2018-03-16 11:33:00', 'ry', '2021-11-09 11:48:43', '管理员', '', '000000', null, '21', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('5', '2');
INSERT INTO `sys_user_post` VALUES ('6', '2');
INSERT INTO `sys_user_post` VALUES ('8', '2');
INSERT INTO `sys_user_post` VALUES ('9', '2');
INSERT INTO `sys_user_post` VALUES ('10', '2');
INSERT INTO `sys_user_post` VALUES ('11', '2');
INSERT INTO `sys_user_post` VALUES ('12', '2');
INSERT INTO `sys_user_post` VALUES ('13', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('5', '2');
INSERT INTO `sys_user_role` VALUES ('6', '2');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '2');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '2');
INSERT INTO `sys_user_role` VALUES ('12', '2');
INSERT INTO `sys_user_role` VALUES ('13', '2');
INSERT INTO `sys_user_role` VALUES ('14', '2');
INSERT INTO `sys_user_role` VALUES ('15', '2');
INSERT INTO `sys_user_role` VALUES ('16', '2');
