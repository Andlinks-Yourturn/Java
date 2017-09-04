/*
Navicat MySQL Data Transfer

Source Server         : Ap22
Source Server Version : 50635
Source Host           : 192.168.1.22:3306
Source Database       : scholarship

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-09-04 16:53:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bsn_donation`
-- ----------------------------
DROP TABLE IF EXISTS `bsn_donation`;
CREATE TABLE `bsn_donation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `pro_address` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `min_gpa` double DEFAULT NULL,
  `doc_address` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `total_donation` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK476oopo55hjw90kunwp811imf` (`creator_id`),
  CONSTRAINT `FK476oopo55hjw90kunwp811imf` FOREIGN KEY (`creator_id`) REFERENCES `sys_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsn_donation
-- ----------------------------
INSERT INTO `bsn_donation` VALUES ('1', '2017-09-03 21:34:15', '', '2017-09-03 21:34:15', '0', 'ccad822d78d7876b78b0fa449670ece516d9208b', '2', 'yes', '经济学', '25', '2', 'QmdH5QKCbJRyeHtTS8JpWme19uU7p8vRvcEPyqUKzkzQzw', 'helpU', '20', '100', '50', '5');
INSERT INTO `bsn_donation` VALUES ('2', '2017-09-03 21:47:20', '', '2017-09-03 21:49:16', '1', 'd645460e8f0f2e66ff2b785c0820bc0c808d7c91', '4', 'yes', '经济学', '50', '2', 'QmQ77vUuSd6SivsbH93J6z4Xq2imrwhirCM1z9DXNLqcJn', 'helpMe', '30', '150', '50', '5');
INSERT INTO `bsn_donation` VALUES ('3', '2017-09-03 21:47:54', '', '2017-09-03 21:47:54', '0', '44c6add2f754d9de735f81b121f7817a951163be', '4', 'dgfas', '经济学', '30', '3', 'QmaBXkjMtf3pLs7CtyhpRJkVnejwG3zmWHduoFGxPDVcXE', 'helpHer', '30', '200', '50', '5');
INSERT INTO `bsn_donation` VALUES ('4', '2017-09-03 21:54:48', '', '2017-09-03 21:57:25', '1', '5d4f9039e4c074bbdb5366d8ad7d55505cb1e539', '4', 'kd', '经济学', '32', '1', 'QmcsiD91UpUUzsQqhtXyuRa4jrW7wvbQwjsczA7JEFwEM6', 'pro2', '10', '150', '50', '5');
INSERT INTO `bsn_donation` VALUES ('5', '2017-09-04 10:15:24', '', '2017-09-04 10:15:24', '0', 'db35b2cb15db786bfb14f8c8f5bff5244c1a5cf9', '1', '测试', '艺术', '23', '12', 'QmPnUX7zSgfBd9fzrJ7cwp4d4hATedjZSVfwtcFek4g7aH', '项目1', '1', '344', '344', '5');
INSERT INTO `bsn_donation` VALUES ('6', '2017-09-04 10:48:30', '', '2017-09-04 11:11:10', '2', 'a2527ed8c205ca66e4ff56629071c09da6898550', '2', '忠', '经济学', '25', '3', 'QmU4Yhd6aWiQPKxfsYmZKQEXEsfPNTsMZDJzzJEmH6pt33', '众筹1', '10', '1000', '250', '17');
INSERT INTO `bsn_donation` VALUES ('7', '2017-09-04 10:49:01', '', '2017-09-04 11:32:46', '2', 'c75889d81436c679b78dd962c4b4e4e8adea0f3e', '2', '就', '经济学', '28', '4', 'QmWxzVLfHwQb4sMQKHmfgA1zZnLW8RdETj5HzmWaxAa2P6', '众筹2', '10', '800', '200', '17');
INSERT INTO `bsn_donation` VALUES ('8', '2017-09-04 14:00:12', '', '2017-09-04 14:00:12', '0', '1ab879a05147f7f09dbe14078fb86ec64a55f118', '2', 'ligang', '经济学', '22', '2', 'QmcxMT67tpi34C9v8D4abPV1Lq4j4ZoHyTYnr6k6uELYtg', 'project_ligang', '12', '200', '100', '26');
INSERT INTO `bsn_donation` VALUES ('9', '2017-09-04 16:09:42', '', '2017-09-04 16:09:42', '0', '0e202495ab606bfd6cef556b3d6e8edaefa12825', '3', '测', '经济学', '24', '4', 'QmYTr2MW5TiPUzhcRSLXbrZmeLrGu8xmpmmAS7GQF8EaTS', '测试2', '10', '400', '133', '5');
INSERT INTO `bsn_donation` VALUES ('10', '2017-09-04 16:14:20', '', '2017-09-04 16:14:20', '0', 'f44cf2fc8de4915c415c9504c118460e26e6fa31', '2', '测', '艺术', '23', '4', 'QmQpVKoiFz6utdrKnKCSzedeWi9gzsxQpBmkV6g88xMScr', '测3', '10', '10', '5', '5');
INSERT INTO `bsn_donation` VALUES ('11', '2017-09-04 16:14:50', '', '2017-09-04 16:14:50', '0', '0cbf10b4cf3e887c3f601b59f6bd400786660d56', '1', '测', '哲学', '18', '3', 'QmbQEeFczyb2WY4kMwn2KbAMiiEUqZx8Z6zU59GbrbHpCN', '测4', '4', '5', '5', '5');
INSERT INTO `bsn_donation` VALUES ('12', '2017-09-04 16:20:21', '', '2017-09-04 16:20:21', '0', 'c3ba4b84b98842ef0bec17c7196a909fcdc71718', '2', '测', '经济学', '23', '4', 'QmSfNzHmxLjqTxyvqpSQZdUNSGdxzsV59fGcE7wEQXV54H', '测6', '10', '100', '50', '5');
INSERT INTO `bsn_donation` VALUES ('13', '2017-09-04 16:23:00', '', '2017-09-04 16:35:55', '1', '58e0f5896a4659c3fa172f588bcf30a695df143f', '2', '=测', '哲学', '18', '2', 'QmZ5aHDXsXNrEnujEdQhkcGUTp9mTPLRHzm7NfR6uwUami', '测7', '10', '150', '150', '5');
INSERT INTO `bsn_donation` VALUES ('14', '2017-09-04 16:23:26', '', '2017-09-04 16:35:40', '1', '5aa47ab66dadf4c4cf47e7d9a1b058a02b767a8f', '4', '健', '哲学', '18', '2', 'QmX8tuF1t2TdTUNxn2KECTXyjE4ZtvMihgyNV6v2nJXrTC', '测8', '10', '300', '100', '5');
INSERT INTO `bsn_donation` VALUES ('15', '2017-09-04 16:23:47', '', '2017-09-04 16:23:47', '0', '5137fa7ef14f4fe40004daf67e0cd9890065de4a', '5', '健', '哲学', '2', '3', 'QmTiswBS2HV136ZazMaeUwqjtBjUeCobfZ9j8UdYJUJQHA', '测9', '10', '100', '20', '5');
INSERT INTO `bsn_donation` VALUES ('16', '2017-09-04 16:24:07', '', '2017-09-04 16:24:07', '0', '7ea5b1cb035b3e0dc89ed3fcebf9bc09a9ca95e1', '3', '见', '哲学', '23', '3', 'QmP3A7BeMWj9oSWmEk4Vrw6Rei54m3L5emdVRrx5vAirp6', '测10', '4', '100', '33', '5');
INSERT INTO `bsn_donation` VALUES ('17', '2017-09-04 16:24:37', '', '2017-09-04 16:37:30', '1', '146c0634ab674bb558895fac1de53e57d6c5a34f', '4', '测', '哲学', '23', '1', 'QmT8r5RiDjrM3yYyVCVGXsVTDDMhF5Q5rhhBnmaLtuKN62', '测11', '10', '75', '25', '5');
INSERT INTO `bsn_donation` VALUES ('18', '2017-09-04 16:25:04', '', '2017-09-04 16:25:04', '0', 'b919e30bcad3eb2fb880ca555fcb7e47ce8d6eca', '4', '测', '哲学', '18', '2', 'Qmab4nWsC7usTYRQLH16ZrwU76J3aUMMGAn7S13D4y3JRM', '测12', '10', '50', '12', '5');
INSERT INTO `bsn_donation` VALUES ('19', '2017-09-04 16:25:37', '', '2017-09-04 16:25:37', '0', '62f2a2eb67620ae69d45effb310e5aa42474ec45', '1', '试', '哲学', '18', '4', 'QmZg5VtgsMhjncAjrtGYE6ZrCQTGWQVGxtMdZnFgTihPzW', '测13', '10', '100', '100', '5');
INSERT INTO `bsn_donation` VALUES ('20', '2017-09-04 16:26:01', '', '2017-09-04 16:37:12', '1', '9745053369a9ca0e8cf1beca46d0d82f1906a612', '4', '试', '哲学', '23', '3', 'QmfZ7JdnTpgCpFYmXwM9UwWBh7DgpX5XUbSbQ668eSdoKj', '测15', '10', '150', '50', '5');
INSERT INTO `bsn_donation` VALUES ('21', '2017-09-04 16:26:22', '', '2017-09-04 16:37:03', '1', '66593e3c91d13346a99f561941b7e9e4aa0d6a35', '4', '健', '哲学', '23', '4', 'QmRmPhW6RxH8bhWteFP9NEgAMMXZsTp6TdgjKWzEzjp7fW', '测16', '11', '75', '25', '5');
INSERT INTO `bsn_donation` VALUES ('22', '2017-09-04 16:27:11', '', '2017-09-04 16:36:51', '1', '5cf6f0ed8ab48a9ba5f42161a4a68e737bb50e0b', '3', '是家驹', '哲学', '23', '3', 'QmXeb7WYHN6oAGgJgW2pnvzhsSuixwfx9xjqMkXQxoPEvD', '测17', '11', '134', '66', '5');
INSERT INTO `bsn_donation` VALUES ('23', '2017-09-04 16:27:47', '', '2017-09-04 16:36:44', '1', '1292f42d156c89a41fe4e319af3f99ba61d13184', '4', '释小龙', '哲学', '23', '1', 'QmZYUJ7ZwvdYMjqNSr4gjW29ViqMnPiiRhfe3J92kvLLw3', '测18', '10', '150', '50', '5');
INSERT INTO `bsn_donation` VALUES ('24', '2017-09-04 16:28:22', '', '2017-09-04 16:36:33', '1', '3557dd19d2182d5548e11c0957611124a7e4b92f', '2', '发的', '哲学', '23', '3', 'QmSoEK3jA2YwHhwojttBBu2x9Epb4fgpHdmzFtfKopZWFC', '测19', '10', '50', '50', '5');
INSERT INTO `bsn_donation` VALUES ('25', '2017-09-04 16:28:42', '', '2017-09-04 16:28:42', '0', '3142bbd3b6d16f3ba0f80a92be96e5d043243068', '4', '地方', '哲学', '23', '23', 'Qma7q6KG3K6siMseXHnq4gPnwYtkQokC9kHzXHDEKShGgx', '测20', '2', '100', '25', '5');
INSERT INTO `bsn_donation` VALUES ('26', '2017-09-04 16:29:14', '', '2017-09-04 16:29:14', '0', 'b3a3bb8e24c0e1b07bc83ec9bd0eabadbdf16802', '4', '33', '法学', '2', '2', 'QmPDKEvBAVtSSdzYudN1rRjx43tVuKWye3REpvw2WeN5kC', 'bruce条件不匹配', '1', '100', '25', '5');
INSERT INTO `bsn_donation` VALUES ('27', '2017-09-04 16:39:01', '', '2017-09-04 16:39:26', '1', 'cdcd2d8700a2bdeec29f86e42fa3399ab5724ed3', '3', '发', '哲学', '23', '2', 'QmW8v8gehbrmk25NABuESoPDMttYPZ7UXqEukzizXbvLpi', '测21', '10', '134', '66', '5');

-- ----------------------------
-- Table structure for `bsn_donation_log`
-- ----------------------------
DROP TABLE IF EXISTS `bsn_donation_log`;
CREATE TABLE `bsn_donation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `donation_time` datetime DEFAULT NULL,
  `donation_id` tinyblob,
  `donor_id` tinyblob,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsn_donation_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bsn_scholarship_info`
-- ----------------------------
DROP TABLE IF EXISTS `bsn_scholarship_info`;
CREATE TABLE `bsn_scholarship_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `auth_condition` varchar(255) DEFAULT NULL,
  `benefit` int(11) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `p_id` bigint(20) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `verify_pass` datetime DEFAULT NULL,
  `applyer_id` bigint(20) DEFAULT NULL,
  `donation_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs8dbc52agr186e7c5do4lhemq` (`applyer_id`),
  KEY `FKgrwbd8l59qs2b4c6vgklbgff1` (`donation_id`),
  CONSTRAINT `FKgrwbd8l59qs2b4c6vgklbgff1` FOREIGN KEY (`donation_id`) REFERENCES `bsn_donation` (`id`),
  CONSTRAINT `FKs8dbc52agr186e7c5do4lhemq` FOREIGN KEY (`applyer_id`) REFERENCES `sys_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsn_scholarship_info
-- ----------------------------
INSERT INTO `bsn_scholarship_info` VALUES ('1', '2017-09-03 21:37:27', '', '2017-09-03 21:37:27', '0', '{\"age\":25, \"major\":\"经济学\", \"rank\":20, \"gpa\":2.0}', '0', 'yes', '1', 'helpU', 'failure', '2017-09-03 21:37:27', '6', '1');
INSERT INTO `bsn_scholarship_info` VALUES ('2', '2017-09-03 21:49:16', '', '2017-09-03 21:49:16', '0', '{\"age\":50, \"major\":\"经济学\", \"rank\":30, \"gpa\":2.0}', '50', 'yes', '2', 'helpMe', 'success', '2017-09-03 21:49:16', '6', '2');
INSERT INTO `bsn_scholarship_info` VALUES ('3', '2017-09-03 21:57:25', '', '2017-09-03 21:57:25', '0', '{\"age\":32, \"major\":\"经济学\", \"rank\":10, \"gpa\":1.0}', '50', 'kd', '4', 'pro2', 'success', '2017-09-03 21:57:25', '9', '4');
INSERT INTO `bsn_scholarship_info` VALUES ('4', '2017-09-04 10:59:37', '', '2017-09-04 10:59:37', '0', '{\"age\":25, \"major\":\"经济学\", \"rank\":10, \"gpa\":3.0}', '250', '忠', '6', '众筹1', 'success', '2017-09-04 10:59:37', '19', '6');
INSERT INTO `bsn_scholarship_info` VALUES ('5', '2017-09-04 11:26:48', '', '2017-09-04 11:26:48', '0', '{\"age\":25, \"major\":\"经济学\", \"rank\":10, \"gpa\":3.0}', '0', '忠', '6', '众筹1', 'failure', '2017-09-04 11:26:48', '20', '6');
INSERT INTO `bsn_scholarship_info` VALUES ('6', '2017-09-04 12:50:54', '', '2017-09-04 12:50:54', '0', '{\"age\":28, \"major\":\"经济学\", \"rank\":10, \"gpa\":4.0}', '0', '就', '7', '众筹2', 'failure', '2017-09-04 12:50:54', '23', '7');
INSERT INTO `bsn_scholarship_info` VALUES ('7', '2017-09-04 16:29:53', '', '2017-09-04 16:29:53', '0', '{\"age\":2, \"major\":\"法学\", \"rank\":1, \"gpa\":2.0}', '0', '33', '26', 'bruce条件不匹配', 'failure', '2017-09-04 16:29:53', '23', '26');
INSERT INTO `bsn_scholarship_info` VALUES ('8', '2017-09-04 16:31:10', '', '2017-09-04 16:31:10', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":4, \"gpa\":3.0}', '0', '见', '16', '测10', 'failure', '2017-09-04 16:31:10', '23', '16');
INSERT INTO `bsn_scholarship_info` VALUES ('9', '2017-09-04 16:32:05', '', '2017-09-04 16:32:05', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":2, \"gpa\":23.0}', '0', '地方', '25', '测20', 'failure', '2017-09-04 16:32:05', '23', '25');
INSERT INTO `bsn_scholarship_info` VALUES ('10', '2017-09-04 16:35:40', '', '2017-09-04 16:35:40', '0', '{\"age\":18, \"major\":\"哲学\", \"rank\":10, \"gpa\":2.0}', '100', '健', '14', '测8', 'success', '2017-09-04 16:35:40', '23', '14');
INSERT INTO `bsn_scholarship_info` VALUES ('11', '2017-09-04 16:35:55', '', '2017-09-04 16:35:55', '0', '{\"age\":18, \"major\":\"哲学\", \"rank\":10, \"gpa\":2.0}', '150', '=测', '13', '测7', 'success', '2017-09-04 16:35:55', '23', '13');
INSERT INTO `bsn_scholarship_info` VALUES ('12', '2017-09-04 16:36:19', '', '2017-09-04 16:36:19', '0', '{\"age\":23, \"major\":\"经济学\", \"rank\":10, \"gpa\":4.0}', '0', '测', '12', '测6', 'failure', '2017-09-04 16:36:19', '23', '12');
INSERT INTO `bsn_scholarship_info` VALUES ('13', '2017-09-04 16:36:33', '', '2017-09-04 16:36:33', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":10, \"gpa\":3.0}', '50', '发的', '24', '测19', 'success', '2017-09-04 16:36:33', '23', '24');
INSERT INTO `bsn_scholarship_info` VALUES ('14', '2017-09-04 16:36:44', '', '2017-09-04 16:36:44', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":10, \"gpa\":1.0}', '50', '释小龙', '23', '测18', 'success', '2017-09-04 16:36:44', '23', '23');
INSERT INTO `bsn_scholarship_info` VALUES ('15', '2017-09-04 16:36:51', '', '2017-09-04 16:36:51', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":11, \"gpa\":3.0}', '66', '是家驹', '22', '测17', 'success', '2017-09-04 16:36:51', '23', '22');
INSERT INTO `bsn_scholarship_info` VALUES ('16', '2017-09-04 16:37:03', '', '2017-09-04 16:37:03', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":11, \"gpa\":4.0}', '25', '健', '21', '测16', 'success', '2017-09-04 16:37:03', '23', '21');
INSERT INTO `bsn_scholarship_info` VALUES ('17', '2017-09-04 16:37:12', '', '2017-09-04 16:37:12', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":10, \"gpa\":3.0}', '50', '试', '20', '测15', 'success', '2017-09-04 16:37:12', '23', '20');
INSERT INTO `bsn_scholarship_info` VALUES ('18', '2017-09-04 16:37:30', '', '2017-09-04 16:37:30', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":10, \"gpa\":1.0}', '25', '测', '17', '测11', 'success', '2017-09-04 16:37:30', '23', '17');
INSERT INTO `bsn_scholarship_info` VALUES ('19', '2017-09-04 16:39:26', '', '2017-09-04 16:39:26', '0', '{\"age\":23, \"major\":\"哲学\", \"rank\":10, \"gpa\":2.0}', '66', '发', '27', '测21', 'success', '2017-09-04 16:39:26', '23', '27');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK5uek5kqcd6l5dgc1qlm0s7us0` (`permission_id`),
  CONSTRAINT `FK5uek5kqcd6l5dgc1qlm0s7us0` FOREIGN KEY (`permission_id`) REFERENCES `sys_permission` (`id`),
  CONSTRAINT `FKgjoqa6ydj46cv836mn9nadg96` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('3', '4');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('1', '7');
INSERT INTO `role_permission` VALUES ('3', '8');

-- ----------------------------
-- Table structure for `sys_local_account`
-- ----------------------------
DROP TABLE IF EXISTS `sys_local_account`;
CREATE TABLE `sys_local_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `user_profile_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbt4hhs6ga1kpouvb32xxp913x` (`user_profile_id`),
  CONSTRAINT `FKbt4hhs6ga1kpouvb32xxp913x` FOREIGN KEY (`user_profile_id`) REFERENCES `sys_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_local_account
-- ----------------------------
INSERT INTO `sys_local_account` VALUES ('1', '2017-09-03 21:19:29', '', '2017-09-03 21:19:33', '0', 'teacher1', 'a66abb5684c45962d887564f08346e8d', '123456', '2');
INSERT INTO `sys_local_account` VALUES ('2', '2017-09-03 21:19:47', '', '2017-09-03 21:20:10', '0', 'teacher2', 'a66abb5684c45962d887564f08346e8d', '123456', '3');
INSERT INTO `sys_local_account` VALUES ('3', '2017-09-03 21:20:01', '', '2017-09-03 21:20:06', '0', 'teacher3', 'a66abb5684c45962d887564f08346e8d', '123456', '4');
INSERT INTO `sys_local_account` VALUES ('4', '2017-09-03 21:25:24', '', '2017-09-03 21:25:24', '0', 'spring', '4e4688810888b6e0f06014b0c0bde53e', 'S&/<ed', '5');
INSERT INTO `sys_local_account` VALUES ('5', '2017-09-03 21:26:41', '', '2017-09-03 21:26:41', '0', 'student1', 'f6bef4d3daa9513898026a7b040b7fa0', 'M:VK;f', '6');
INSERT INTO `sys_local_account` VALUES ('6', '2017-09-03 21:27:40', '', '2017-09-03 21:27:40', '0', 'chenyalan', '7e505ee357f1c647e2754f2de1c402ea', '$RSGrY', '7');
INSERT INTO `sys_local_account` VALUES ('7', '2017-09-03 21:28:36', '', '2017-09-03 21:28:36', '0', 'student3', '538a21fe316cad8d9a47012086fbab27', 'e!J(z\"', '8');
INSERT INTO `sys_local_account` VALUES ('8', '2017-09-03 21:56:21', '', '2017-09-03 21:56:21', '0', 'tomtom', '7d4470bb44aab42a57d15e1b99591ead', 'f~9CW7', '9');
INSERT INTO `sys_local_account` VALUES ('9', '2017-09-04 10:10:53', '', '2017-09-04 10:10:53', '0', 'springboot', '630c803317e23c439158a6bea321cb5c', 'iDVJkR', '10');
INSERT INTO `sys_local_account` VALUES ('10', '2017-09-04 10:11:59', '', '2017-09-04 10:11:59', '0', 'springboot2', '1f2b7e3017969524b0f780f2e98cd0c4', '6[|`a,', '11');
INSERT INTO `sys_local_account` VALUES ('11', '2017-09-04 10:15:42', '', '2017-09-04 10:15:42', '0', 'spring2', '4e0192986ffceb7c5e5b8dba1ad3c0c3', 'p\"FDV3', '12');
INSERT INTO `sys_local_account` VALUES ('12', '2017-09-04 10:26:55', '', '2017-09-04 10:26:55', '0', 'chenchen', 'ad6d38369e217ae3607d5ca93c7aa686', 'QIkNz-', '13');
INSERT INTO `sys_local_account` VALUES ('13', '2017-09-04 10:28:53', '', '2017-09-04 10:28:53', '0', 'spring3', '280e97ce99f85657ab8617bf1739a1a8', 'NB qon', '14');
INSERT INTO `sys_local_account` VALUES ('14', '2017-09-04 10:33:00', '', '2017-09-04 10:33:00', '0', 'chenshimei', 'a7dec9e34560700b723ca99d5af1371c', '{?]^(4', '15');
INSERT INTO `sys_local_account` VALUES ('15', '2017-09-04 10:34:39', '', '2017-09-04 10:34:39', '0', 'chenshi', '075f60a3130ec92c7861bb71540b756c', '5PV6Y!', '16');
INSERT INTO `sys_local_account` VALUES ('16', '2017-09-04 10:35:57', '', '2017-09-04 10:35:57', '0', 'chenchen2', '2bf118926a60f917113e0ed6d890a3bf', 'zN)Ln0', '17');
INSERT INTO `sys_local_account` VALUES ('17', '2017-09-04 10:51:30', '', '2017-09-04 10:51:30', '0', 'gangli', 'dac2780a35a98f88d66925adea746409', '\'LWx\'S', '18');
INSERT INTO `sys_local_account` VALUES ('18', '2017-09-04 10:52:35', '', '2017-09-04 10:52:35', '0', 'gaga', 'aa26018eaabb4809d11051a19a9966ed', 'jZ2y\'>', '19');
INSERT INTO `sys_local_account` VALUES ('19', '2017-09-04 10:54:33', '', '2017-09-04 10:54:33', '0', 'pink', '6fda3a743ecd1578170b9e41048d262b', 'kq$^J`', '20');
INSERT INTO `sys_local_account` VALUES ('20', '2017-09-04 11:15:45', '', '2017-09-04 11:15:45', '0', 'juankuanren1', 'dd5b3dc1335b064cfa2d513d852356d4', 'Y6u\"Q&', '21');
INSERT INTO `sys_local_account` VALUES ('21', '2017-09-04 11:19:33', '', '2017-09-04 11:19:33', '0', 'juankuan2', '972fa17b9178715f842c42c88abad8d9', 'R%u+dz', '22');
INSERT INTO `sys_local_account` VALUES ('22', '2017-09-04 12:50:04', '', '2017-09-04 12:50:04', '0', 'bruce.li', '9d0d4873e00d63aa4793030f7782ac81', 'V/U~\\P', '23');
INSERT INTO `sys_local_account` VALUES ('23', '2017-09-04 13:32:43', '', '2017-09-04 13:32:43', '0', 'windows', '8500274afd97cf566a32a35e428d176b', '!/7\'8.', '24');
INSERT INTO `sys_local_account` VALUES ('24', '2017-09-04 13:50:53', '', '2017-09-04 13:50:53', '0', 'juankuan_ligang', '733a5dae21ef703266c198070c8a67d7', 'z0^n^p', '25');
INSERT INTO `sys_local_account` VALUES ('25', '2017-09-04 13:57:32', '', '2017-09-04 13:57:32', '0', 'juankuan_ligang2', '45882c285bc94543f8e77f1dd1a1955f', '~s(=3$', '26');
INSERT INTO `sys_local_account` VALUES ('26', '2017-09-04 14:03:05', '', '2017-09-04 14:03:05', '0', 'juankuan_ligang3', 'b01b45e739baeef7c201d6fa60a881e6', '\'AwGMB', '27');
INSERT INTO `sys_local_account` VALUES ('27', '2017-09-04 14:12:09', '', '2017-09-04 14:12:09', '0', 'juankuan_ligang4', 'f75c6155da760d2e8ae95a13224666e6', '>;Fj=Y', '28');
INSERT INTO `sys_local_account` VALUES ('28', '2017-09-04 14:43:23', '', '2017-09-04 14:43:23', '0', 'juankuan_ligang5', 'aaef9aa23bae820feaca3799f1b2df80', 'hg58%O', '29');
INSERT INTO `sys_local_account` VALUES ('29', '2017-09-04 14:47:46', '', '2017-09-04 14:47:46', '0', 'juankuan_ligang6', '4dd886daa9d1bfc0c790b4db0282d1f2', '+.WG&G', '30');
INSERT INTO `sys_local_account` VALUES ('30', '2017-09-04 14:53:39', '', '2017-09-04 14:53:39', '0', 'juankuan_ligang7', '7c63ae531aab3a8098627be40033739d', 'u2S[.q', '31');
INSERT INTO `sys_local_account` VALUES ('31', '2017-09-04 14:56:39', '', '2017-09-04 14:56:39', '0', 'juankuan_ligang8', '42548fafcf6a829f5cccb3ac0e68ded8', '>xO=_?', '32');
INSERT INTO `sys_local_account` VALUES ('32', '2017-09-04 15:00:36', '', '2017-09-04 15:00:36', '0', 'juankuan_ligang9', '184877e0cc4e6984d080e47f01228079', '11@q`\'', '33');
INSERT INTO `sys_local_account` VALUES ('33', '2017-09-04 15:05:05', '', '2017-09-04 15:05:05', '0', 'juankuan_ligang10', '9ee1ec92126f3eccfaef5eae25ae8602', 'yd,0pv', '34');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `permission_name_cn` varchar(255) DEFAULT NULL,
  `permission_name_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '2017-08-28 17:32:45', '', '2017-08-28 17:32:45', '0', '添加项目', 'addProject');
INSERT INTO `sys_permission` VALUES ('2', '2017-08-28 17:33:34', '', '2017-08-28 17:33:34', '0', '项目捐款', 'donate');
INSERT INTO `sys_permission` VALUES ('3', '2017-08-28 17:33:49', '', '2017-08-28 17:33:49', '0', '添加学生', 'addStudent');
INSERT INTO `sys_permission` VALUES ('4', '2017-08-29 09:52:15', '', '2017-08-29 09:52:21', '0', '申请捐款', 'applyDonate');
INSERT INTO `sys_permission` VALUES ('5', '2017-08-29 17:34:48', '', '2017-08-29 20:34:44', '0', '查询所有学生', 'findStudent');
INSERT INTO `sys_permission` VALUES ('7', '2017-08-29 23:00:41', '', '2017-08-29 23:00:46', '0', '充值', 'recharge');
INSERT INTO `sys_permission` VALUES ('8', '2017-08-30 22:40:55', '', '2017-08-30 22:41:00', '0', '查询学生项目个数', 'studentCountProject');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '2017-08-28 17:53:17', '', '2017-08-28 17:53:17', '0', '捐款人');
INSERT INTO `sys_role` VALUES ('2', '2017-08-28 17:53:40', '', '2017-08-28 17:53:40', '0', '教师');
INSERT INTO `sys_role` VALUES ('3', '2017-08-28 17:53:45', '', '2017-08-28 17:53:45', '0', '学生');

-- ----------------------------
-- Table structure for `sys_user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_profile`;
CREATE TABLE `sys_user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `comparevo` tinyblob,
  `doc_address` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gpa` double DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `link_pass` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkn6qcgmn6y4rgb39gy7302c50` (`teacher_id`),
  CONSTRAINT `FKkn6qcgmn6y4rgb39gy7302c50` FOREIGN KEY (`teacher_id`) REFERENCES `sys_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_profile
-- ----------------------------
INSERT INTO `sys_user_profile` VALUES ('1', '2017-09-03 21:11:08', '', '2017-09-03 21:11:12', '0', null, '18', '2014-02-03 21:11:23', null, null, null, '3', null, null, 'sdf', '9', '1', '12', 'student', null);
INSERT INTO `sys_user_profile` VALUES ('2', '2017-09-03 21:12:25', '', '2017-09-03 21:12:29', '0', '676F463CC57D1999696F4C2B82384E5A601CC91E', '33', '1989-02-03 21:12:48', null, null, null, '3', null, null, 'ff', '12', '3', 'teacher1', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('3', '2017-09-03 21:16:50', '', '2017-09-03 21:16:47', '0', '2C31D7C25C1A2259ED5DB08E3666A212D6990539', '33', '1988-02-03 21:15:40', null, null, null, '3', null, null, 'dsf', '23', '3', 'teacher2', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('4', '2017-09-03 21:16:40', '', '2017-09-03 21:16:45', '0', '89B2A9492CA627F7DCAA4B0DE30D27D357711C67', '23', '2002-01-01 21:16:16', null, null, null, '5', null, null, 'sdf', '4', '2', 'teacher3', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('5', '2017-09-03 21:25:24', '', '2017-09-04 16:19:51', '9', '4d85631688a9cce8aeddd0fdd7f9163b18990bee', '0', null, null, null, null, null, null, '1234567890', null, '11500', '0', 'spring', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('6', '2017-09-03 21:26:40', '', '2017-09-03 21:49:16', '1', '1d3995d19d6558d35871ff33bc2a7ac452bcf7ed', '14', '2003-09-03 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000E40100000000000000000000A740009E7BB8FE6B58EE5ADA6, 'QmUr3fQCT2wfAPChR83bdVkANaT2JAcSjRKStmB8nJnMHH', 'gang', '4', 'li', null, '经济学', '150', '10', 'student1', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('7', '2017-09-03 21:27:40', '', '2017-09-03 21:27:40', '0', '265877dcde62ba91844177f717e09716a2c8d9ee', '11', '2006-03-03 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000B400C00000000000000000002740009E7BB8FE6B58EE5ADA6, 'QmUhw4cknUD8qbMHW9iH6VNvbm9tPBYSrBCyHq5LoxUMQq', 'yalan', '3.5', 'chen', null, '经济学', '0', '2', 'chenyalan', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('8', '2017-09-03 21:28:36', '', '2017-09-03 21:28:36', '0', 'b0dc8dc79c80817f4d34de6b2c59de8899f70b85', '11', '2006-09-03 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000B401266666666666600000002740009E7BB8FE6B58EE5ADA6, 'QmYpvnSKZMbxuJjTShuYH8Aw37EeLtPrubxN9R1sUawsCA', 'gaungpei', '4.6', 'liu', null, '经济学', '0', '2', 'student3', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('9', '2017-09-03 21:56:21', '', '2017-09-03 21:57:25', '1', '706a55be17df3e21f02833c363294bc3d33bebbf', '5', '2012-05-20 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B787000000005401400000000000000000002740009E7BB8FE6B58EE5ADA6, 'QmYLWdfo6Ft92PjKcDPZcrzNirMAyhfWj3JWbQ8Ua6YZ1q', 'Hanks', '5', 'Tom', null, '经济学', '150', '2', 'tomtom', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('10', '2017-09-04 10:10:53', '', '2017-09-04 10:10:53', '0', '882041557f3a2de5534882e374a9d2ecb1899d27', '0', null, null, null, null, null, null, 'springboot', null, '0', '0', 'springboot', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('11', '2017-09-04 10:11:59', '', '2017-09-04 10:11:59', '0', '8a8e0dcefaa68c0e947bbc800b2a63f78a9c14ea', '0', null, null, null, null, null, null, 'springboot2', null, '0', '0', 'springboot2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('12', '2017-09-04 10:15:42', '', '2017-09-04 10:15:42', '0', 'c5e3ece24ffcbbfda786329a912369a5c43d400b', '0', null, null, null, null, null, null, 'spring2', null, '0', '0', 'spring2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('13', '2017-09-04 10:26:55', '', '2017-09-04 10:26:55', '0', '3f65af32e9b69b10271c6a5ee10b4946204e4362', '0', null, null, null, null, null, null, 'chenchen', null, '0', '0', 'chenchen', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('14', '2017-09-04 10:28:53', '', '2017-09-04 10:28:53', '0', '0a511d0e660800afe7f059ba2600a7d9325dc63d', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'spring3', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('15', '2017-09-04 10:33:00', '', '2017-09-04 10:33:00', '0', '68cac87a8ecfc66cf3db6284718f81db392aaeac', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'chenshimei', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('16', '2017-09-04 10:34:39', '', '2017-09-04 10:34:39', '0', '93444b7bc8669891b6bd39c549461d0ff312dea4', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'chenshi', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('17', '2017-09-04 10:35:57', '', '2017-09-04 11:32:46', '6', '35cc8c897ef90cc08fb188fcc019ce71a70e59c6', '0', null, null, null, null, null, null, '1234567890', null, '1000', '0', 'chenchen2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('18', '2017-09-04 10:51:30', '', '2017-09-04 10:51:30', '0', '987e5bfe772bf06191d15df1fe0b83022c00d189', '7', '2010-02-04 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B787000000007401400000000000000000002740009E7BB8FE6B58EE5ADA6, 'QmUAhS7sDQLVmaHMdQeuDbC6TY3xpw5GByPio5KrwHYTNM', 'li', '5', 'gang', null, '经济学', '0', '2', 'gangli', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('19', '2017-09-04 10:52:35', '', '2017-09-04 10:59:37', '1', 'c8238dabe56095e48da970a12743629874d37452', '5', '2012-02-05 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B787000000005401C00000000000000000001740009E7BB8FE6B58EE5ADA6, 'QmYABJNB6NJ7a2rhhCzKbfoy2BDEdXjC3CYhH7zxg9qNrU', 'lili', '7', 'ga', null, '经济学', '250', '1', 'gaga', 'student', '3');
INSERT INTO `sys_user_profile` VALUES ('20', '2017-09-04 10:54:33', '', '2017-09-04 10:54:33', '0', 'a8f6e1eb671b7aff43784b697661645571646132', '5', '2012-02-04 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B787000000005401800000000000000000001740009E7BB8FE6B58EE5ADA6, 'QmVtiDTv8o3urJaMFy3r8UyBvwz94qLwkcWymvz47ma7Us', 'lee', '6', 'le', null, '经济学', '0', '1', 'pink', 'student', '3');
INSERT INTO `sys_user_profile` VALUES ('21', '2017-09-04 11:15:45', '', '2017-09-04 11:15:45', '0', 'd34b280a449f143572e17f4ff53b705be17223e0', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'juankuanren1', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('22', '2017-09-04 11:19:33', '', '2017-09-04 11:19:33', '0', '4b360fdd5aa48c9e390ed20f23a0376b7c1e983d', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'juankuan2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('23', '2017-09-04 12:50:04', '', '2017-09-04 16:39:26', '9', 'af94b3fae6ec157f82ac4c0def883f4f2b1c4497', '10', '2007-05-09 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000A403700000000000000000001740006E593B2E5ADA6, 'QmUX84dgFMHhLuLSjiFdLNumCenjRE8uqDxwjMNEiBDFUG', 'LEE', '23', 'Bruce', null, '哲学', '134', '1', 'bruce.li', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('24', '2017-09-04 13:32:43', '', '2017-09-04 13:32:43', '0', '830916defb738a7c735c9cd9a8e79468bfce3671', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'windows', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('25', '2017-09-04 13:50:53', '', '2017-09-04 13:56:44', '2', 'cfd15d428b754e3c7f45e9fef65e99d9c775b857', '0', null, null, null, null, null, null, '1234567890', null, '1010', '0', 'juankuan_ligang', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('26', '2017-09-04 13:57:32', '', '2017-09-04 13:58:34', '1', 'abe58f3c64fc3b5451bb25085a61777d11fb2826', '0', null, null, null, null, null, null, '1234567890', null, '10', '0', 'juankuan_ligang2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('27', '2017-09-04 14:03:05', '', '2017-09-04 14:11:19', '1', '16be529c7d7b6a1482bc6d157cf43ea240f9cc08', '0', null, null, null, null, null, null, '1234567890', null, '1000', '0', 'juankuan_ligang3', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('28', '2017-09-04 14:12:09', '', '2017-09-04 14:42:45', '1', '106c5554f5413e4f0651e8f6c1dc8363f68d989c', '0', null, null, null, null, null, null, '1234567890', null, '10000', '0', 'juankuan_ligang4', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('29', '2017-09-04 14:43:23', '', '2017-09-04 14:48:34', '2', '4c31557d5dbd081dd53f3c07d0992ca5aead0008', '0', null, null, null, null, null, null, '1234567890', null, '2000', '0', 'juankuan_ligang5', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('30', '2017-09-04 14:47:46', '', '2017-09-04 14:47:46', '0', 'ce05a22715616412385216fda34aea3a9178f7e1', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'juankuan_ligang6', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('31', '2017-09-04 14:53:39', '', '2017-09-04 14:56:01', '1', '70457a337d66a072077fa715187222f2794ab810', '0', null, null, null, null, null, null, '1234567890', null, '1', '0', 'juankuan_ligang7', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('32', '2017-09-04 14:56:39', '', '2017-09-04 15:00:01', '1', 'fafdd9597879639122c37fdaf5580980640b3908', '0', null, null, null, null, null, null, '1234567890', null, '1', '0', 'juankuan_ligang8', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('33', '2017-09-04 15:00:36', '', '2017-09-04 15:04:38', '1', 'c4ec3504a64dba5d5756b06e5221a24b0ce2b76f', '0', null, null, null, null, null, null, '1234567890', null, '1', '0', 'juankuan_ligang9', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('34', '2017-09-04 15:05:05', '', '2017-09-04 15:05:05', '0', '70b9eac2c2608e9ec06fc8dde7194da7b0506b04', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'juankuan_ligang10', 'donor', null);

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_profile_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_profile_id`,`role_id`),
  KEY `FKdec2ggmqwgdhhb59jw7o488wx` (`role_id`),
  CONSTRAINT `FKdec2ggmqwgdhhb59jw7o488wx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FKl9chot3biwoarl6t8mu4m9y2a` FOREIGN KEY (`user_profile_id`) REFERENCES `sys_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('5', '1');
INSERT INTO `user_role` VALUES ('10', '1');
INSERT INTO `user_role` VALUES ('11', '1');
INSERT INTO `user_role` VALUES ('12', '1');
INSERT INTO `user_role` VALUES ('13', '1');
INSERT INTO `user_role` VALUES ('14', '1');
INSERT INTO `user_role` VALUES ('15', '1');
INSERT INTO `user_role` VALUES ('16', '1');
INSERT INTO `user_role` VALUES ('17', '1');
INSERT INTO `user_role` VALUES ('21', '1');
INSERT INTO `user_role` VALUES ('22', '1');
INSERT INTO `user_role` VALUES ('24', '1');
INSERT INTO `user_role` VALUES ('25', '1');
INSERT INTO `user_role` VALUES ('26', '1');
INSERT INTO `user_role` VALUES ('27', '1');
INSERT INTO `user_role` VALUES ('28', '1');
INSERT INTO `user_role` VALUES ('29', '1');
INSERT INTO `user_role` VALUES ('30', '1');
INSERT INTO `user_role` VALUES ('31', '1');
INSERT INTO `user_role` VALUES ('32', '1');
INSERT INTO `user_role` VALUES ('33', '1');
INSERT INTO `user_role` VALUES ('34', '1');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('3', '2');
INSERT INTO `user_role` VALUES ('4', '2');
INSERT INTO `user_role` VALUES ('6', '3');
INSERT INTO `user_role` VALUES ('7', '3');
INSERT INTO `user_role` VALUES ('8', '3');
INSERT INTO `user_role` VALUES ('9', '3');
INSERT INTO `user_role` VALUES ('18', '3');
INSERT INTO `user_role` VALUES ('19', '3');
INSERT INTO `user_role` VALUES ('20', '3');
INSERT INTO `user_role` VALUES ('23', '3');
