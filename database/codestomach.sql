/*
MySQL Data Transfer
Source Host: localhost
Source Database: codestomach
Target Host: localhost
Target Database: codestomach
Date: 2012/2/29 23:34:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for answer
-- ----------------------------
CREATE TABLE `answer` (
  `answer_id` varchar(64) NOT NULL,
  `answer_no` int(11) NOT NULL AUTO_INCREMENT,
  `answer_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_id`,`answer_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for answer_content
-- ----------------------------
CREATE TABLE `answer_content` (
  `answer_content_id` varchar(64) NOT NULL,
  `answer_id` varchar(64) DEFAULT NULL,
  `answer_no` int(11) DEFAULT NULL,
  `answer_content_no` int(11) NOT NULL AUTO_INCREMENT,
  `answer_content` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`answer_content_id`,`answer_content_no`),
  KEY `FK_Reference_6` (`answer_id`,`answer_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `category` (
  `category_id` varchar(64) NOT NULL,
  `category_no` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_parent_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for data
-- ----------------------------
CREATE TABLE `data` (
  `data_id` varchar(64) NOT NULL,
  `data_no` int(11) NOT NULL AUTO_INCREMENT,
  `post_time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`data_id`,`data_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for data_content
-- ----------------------------
CREATE TABLE `data_content` (
  `data_id` varchar(64) NOT NULL,
  `data_no` int(11) NOT NULL,
  `data_content_id` varchar(64) NOT NULL,
  `data_content_no` int(11) NOT NULL AUTO_INCREMENT,
  `data_content` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`data_content_id`,`data_content_no`),
  KEY `FK_Reference_19` (`data_id`,`data_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for document
-- ----------------------------
CREATE TABLE `document` (
  `document_id` varchar(64) NOT NULL,
  `document_no` int(11) NOT NULL AUTO_INCREMENT,
  `document_desc` varchar(255) DEFAULT NULL,
  `document_name` varchar(64) DEFAULT NULL,
  `document_physics_path` varchar(255) DEFAULT NULL,
  `document_static_url` varchar(64) DEFAULT NULL,
  `upload_time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`document_id`,`document_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_data_category
-- ----------------------------
CREATE TABLE `erp_data_category` (
  `erp_data_category_id` varchar(64) NOT NULL,
  `data_id` varchar(64) DEFAULT NULL,
  `data_no` int(11) DEFAULT NULL,
  `category_id` varchar(64) DEFAULT NULL,
  `category_no` int(11) DEFAULT NULL,
  `erp_data_category_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_data_category_id`,`erp_data_category_no`),
  KEY `FK_Reference_21` (`data_id`,`data_no`),
  KEY `FK_Reference_22` (`category_id`,`category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_data_reply
-- ----------------------------
CREATE TABLE `erp_data_reply` (
  `erp_data_reply_id` varchar(64) NOT NULL,
  `data_id` varchar(64) DEFAULT NULL,
  `data_no` int(11) DEFAULT NULL,
  `reply_id` varchar(64) DEFAULT NULL,
  `reply_no` int(11) DEFAULT NULL,
  `erp_data_reply_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_data_reply_id`,`erp_data_reply_no`),
  KEY `FK_Reference_25` (`data_id`,`data_no`),
  KEY `FK_Reference_26` (`reply_id`,`reply_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_document_category
-- ----------------------------
CREATE TABLE `erp_document_category` (
  `erp_document_category_id` varchar(64) NOT NULL,
  `category_id` varchar(64) DEFAULT NULL,
  `category_no` int(11) DEFAULT NULL,
  `document_id` varchar(64) DEFAULT NULL,
  `document_no` int(11) DEFAULT NULL,
  `erp_document_category_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_document_category_id`,`erp_document_category_no`),
  KEY `FK_Reference_15` (`category_id`,`category_no`),
  KEY `FK_Reference_16` (`document_id`,`document_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_question_answer
-- ----------------------------
CREATE TABLE `erp_question_answer` (
  `erp_question_answer_id` varchar(64) NOT NULL,
  `question_id` varchar(64) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `answer_id` varchar(64) DEFAULT NULL,
  `answer_no` int(11) DEFAULT NULL,
  `erp_question_answer_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_question_answer_id`,`erp_question_answer_no`),
  KEY `FK_Reference_7` (`question_id`,`question_no`),
  KEY `FK_Reference_8` (`answer_id`,`answer_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_question_category
-- ----------------------------
CREATE TABLE `erp_question_category` (
  `erp_question_category_id` varchar(64) NOT NULL,
  `question_id` varchar(64) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `category_id` varchar(64) DEFAULT NULL,
  `category_no` int(11) DEFAULT NULL,
  `erp_question_category_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_question_category_id`,`erp_question_category_no`),
  KEY `FK_Reference_13` (`question_id`,`question_no`),
  KEY `FK_Reference_14` (`category_id`,`category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_answer
-- ----------------------------
CREATE TABLE `erp_user_answer` (
  `erp_user_answer_id` varchar(64) NOT NULL,
  `answer_id` varchar(64) DEFAULT NULL,
  `answer_no` int(11) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `erp_user_answer_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_answer_id`,`erp_user_answer_no`),
  KEY `FK_Reference_29` (`answer_id`,`answer_no`),
  KEY `FK_Reference_30` (`user_id`,`user_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_data
-- ----------------------------
CREATE TABLE `erp_user_data` (
  `erp_user_data_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `data_id` varchar(64) DEFAULT NULL,
  `data_no` int(11) DEFAULT NULL,
  `erp_user_data_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_data_id`,`erp_user_data_no`),
  KEY `FK_Reference_23` (`user_id`,`user_no`),
  KEY `FK_Reference_24` (`data_id`,`data_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_document
-- ----------------------------
CREATE TABLE `erp_user_document` (
  `erp_user_document_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `document_id` varchar(64) DEFAULT NULL,
  `document_no` int(11) DEFAULT NULL,
  `erp_user_document_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_document_id`,`erp_user_document_no`),
  KEY `FK_Reference_17` (`user_id`,`user_no`),
  KEY `FK_Reference_18` (`document_id`,`document_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_info_user_info_detail
-- ----------------------------
CREATE TABLE `erp_user_info_user_info_detail` (
  `erp_user_info_user_info_detail_id` varchar(64) NOT NULL,
  `user_detail_info_id` varchar(64) DEFAULT NULL,
  `user_detail_info_no` int(11) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `erp_user_info_user_info_detail_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_info_user_info_detail_id`,`erp_user_info_user_info_detail_no`),
  KEY `FK_Reference_10` (`user_id`,`user_no`),
  KEY `FK_Reference_9` (`user_detail_info_id`,`user_detail_info_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_info_user_status
-- ----------------------------
CREATE TABLE `erp_user_info_user_status` (
  `erp_user_info_user_status_id` varchar(64) NOT NULL,
  `user_status_id` varchar(64) DEFAULT NULL,
  `user_status_no` int(11) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `erp_user_info_user_status_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_info_user_status_id`,`erp_user_info_user_status_no`),
  KEY `FK_Reference_11` (`user_status_id`,`user_status_no`),
  KEY `FK_Reference_12` (`user_id`,`user_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_question
-- ----------------------------
CREATE TABLE `erp_user_question` (
  `erp_user_question_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `question_id` varchar(64) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `erp_user_question_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_question_id`,`erp_user_question_no`),
  KEY `FK_Reference_3` (`user_id`,`user_no`),
  KEY `FK_Reference_4` (`question_id`,`question_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for erp_user_reply
-- ----------------------------
CREATE TABLE `erp_user_reply` (
  `erp_user_reply_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `reply_id` varchar(64) DEFAULT NULL,
  `reply_no` int(11) DEFAULT NULL,
  `erp_user_reply_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`erp_user_reply_id`,`erp_user_reply_no`),
  KEY `FK_Reference_27` (`user_id`,`user_no`),
  KEY `FK_Reference_28` (`reply_id`,`reply_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for question
-- ----------------------------
CREATE TABLE `question` (
  `question_id` varchar(64) NOT NULL,
  `question_no` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`,`question_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for question_content
-- ----------------------------
CREATE TABLE `question_content` (
  `question_content_id` varchar(64) NOT NULL,
  `question_id` varchar(64) DEFAULT NULL,
  `question_no` int(11) DEFAULT NULL,
  `question_content_no` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`question_content_id`,`question_content_no`),
  KEY `FK_Reference_5` (`question_id`,`question_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
CREATE TABLE `reply` (
  `reply_id` varchar(64) NOT NULL,
  `reply_no` int(11) NOT NULL AUTO_INCREMENT,
  `reply_time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`reply_id`,`reply_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for reply_content
-- ----------------------------
CREATE TABLE `reply_content` (
  `reply_content_id` varchar(64) NOT NULL,
  `reply_id` varchar(64) DEFAULT NULL,
  `reply_no` int(11) DEFAULT NULL,
  `reply_content_no` int(11) NOT NULL AUTO_INCREMENT,
  `reply_content` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`reply_content_id`,`reply_content_no`),
  KEY `FK_Reference_20` (`reply_id`,`reply_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for user_detail_info
-- ----------------------------
CREATE TABLE `user_detail_info` (
  `user_detail_info_id` varchar(64) NOT NULL,
  `user_detail_info_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_company` varchar(64) DEFAULT NULL,
  `user_pay` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_detail_info_id`,`user_detail_info_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for user_document_download_log
-- ----------------------------
CREATE TABLE `user_document_download_log` (
  `user_document_download_log_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `user_no` int(11) DEFAULT NULL,
  `document_id` varchar(64) DEFAULT NULL,
  `document_no` int(11) DEFAULT NULL,
  `user_document_download_log_no` int(11) NOT NULL AUTO_INCREMENT,
  `download_time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_document_download_log_id`,`user_document_download_log_no`),
  KEY `FK_Reference_1` (`user_id`,`user_no`),
  KEY `FK_Reference_2` (`document_id`,`document_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
CREATE TABLE `user_info` (
  `user_id` varchar(64) NOT NULL,
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) DEFAULT NULL,
  `user_login_id` varchar(64) DEFAULT NULL,
  `user_login_pwd` varchar(64) DEFAULT NULL,
  `user_mail` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
CREATE TABLE `user_status` (
  `user_status_id` varchar(64) NOT NULL,
  `user_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_status_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_status_id`,`user_status_no`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
