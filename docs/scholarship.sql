/*
Navicat MySQL Data Transfer

Source Server         : Ap22
Source Server Version : 50635
Source Host           : 192.168.1.22:3306
Source Database       : scholarship

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-09-07 11:47:41
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsn_donation
-- ----------------------------
INSERT INTO `bsn_donation` VALUES ('1', '2017-09-06 11:41:40', '', '2017-09-06 14:16:58', '1', '2e524d4d536ed82b3231263d8a93f0f50d311789', '2', 'project', 'Economics', '23', '3', 'QmW36sHn6vVVuQvdLkUefjHC5UtUdUHV46hfQk5tbVMK2D', 'pro1', '5', '600', '200', '9');
INSERT INTO `bsn_donation` VALUES ('2', '2017-09-06 11:57:32', '', '2017-09-06 11:57:32', '0', '466e1502348c2162d3e2e36519e3812b6d671f95', '2', 'project', 'Economics', '23', '4', 'QmWuVhbP7Sr2DsnvdJ7ENSKYpJQjMNLLiEKVDikHtr27J6', 'pro2', '11', '400', '200', '9');
INSERT INTO `bsn_donation` VALUES ('3', '2017-09-06 12:29:42', '', '2017-09-06 12:36:23', '1', '4fe239ac350c072437a749f1f23c8a523d38773a', '2', 'help', 'Economics', '23', '2', 'QmXo25BNGUkvspSBQM22fZ3JSQ6FTX9t7osuDqqYXQ4efD', 'helpU', '21', '50', '50', '11');
INSERT INTO `bsn_donation` VALUES ('4', '2017-09-06 14:29:27', '', '2017-09-06 14:33:14', '1', '7df50a959ad113d0445925a7231776d56897bdcb', '4', 'ligang', 'Economics', '25', '2', 'QmZQFJgMkhsqkR4SdH9Q8RZP2U2XaJk1xwLBifKZ9RhGR4', 'pro10', '21', '150', '50', '11');
INSERT INTO `bsn_donation` VALUES ('5', '2017-09-06 14:35:25', '', '2017-09-06 14:35:25', '0', '74c1978330a8f884127642c7b518540c7bf867d2', '2', 'project', 'Economics', '23', '3', 'QmUyvLjCNhdMTC7n27UvM9kM4zv76dMtbV2umb4YKXaXL4', 'pro_chen_1', '12', '400', '200', '9');
INSERT INTO `bsn_donation` VALUES ('6', '2017-09-06 14:35:28', '', '2017-09-06 14:35:28', '0', 'e87b79d88ad42ed4973c3905156dcc0e4f5b4b98', '2', 'hard', 'Economics', '23', '5', 'Qmae42dp6ZprRV3pU1fS7CfyNaAWamz1nyCPvKAcbEzoR1', 'pro_li_1', '1', '200', '100', '11');
INSERT INTO `bsn_donation` VALUES ('7', '2017-09-06 14:36:00', '', '2017-09-06 14:36:00', '0', '8531101525044a4fba9799a96e57d8c06112989b', '2', 'project', 'Economics', '23', '2', 'QmdufcfUsCVyurwhTBpmRn8ny7kj9G82XVJhR7uHjhobRa', 'pro_chen_2', '12', '400', '200', '9');
INSERT INTO `bsn_donation` VALUES ('8', '2017-09-06 14:36:12', '', '2017-09-06 14:36:12', '0', '1b7e20afba610647e600427f75aafa0779d47a5f', '2', 'hard_too', 'Economics', '25', '2', 'QmdVNRtgwrt7dKPax6pYCB6Zh3UdxyUQmAejFDRfmmMsJA', 'pro_li_2', '21', '200', '100', '11');
INSERT INTO `bsn_donation` VALUES ('9', '2017-09-06 14:36:27', '', '2017-09-06 14:36:27', '0', 'e93e331115072f908887dd56b82e6e55544722b8', '3', 'project', 'Law', '28', '2', 'QmU4WEgPpxfkUn7E4bHPe6UCGHQ3NZavekZ5zdMsN2ZVKc', 'pro_chen_3', '11', '600', '200', '9');
INSERT INTO `bsn_donation` VALUES ('10', '2017-09-06 14:36:46', '', '2017-09-06 14:36:46', '0', '44abd8641a690372c8085e409fd5ecb33abb0add', '2', 'hard3', 'Economics', '21', '4', 'QmfVhQymw5owCryMmWCWqdhcdXXZejfYejcBVtYhLHFp4k', 'pro_li_3', '8', '300', '150', '11');
INSERT INTO `bsn_donation` VALUES ('11', '2017-09-06 14:36:55', '', '2017-09-06 14:36:55', '0', '853101c331a8e754976e8996447c68981daccbe4', '2', 'project', 'Law', '21', '2', 'QmUE9q4J5gZA66svQM5r6r47NRwqgpKWSdj6M5HfCUPJC2', 'pro_chen_4', '12', '200', '100', '9');
INSERT INTO `bsn_donation` VALUES ('12', '2017-09-06 14:37:14', '', '2017-09-06 14:37:14', '0', 'a125d11db315bfe49e3466353f49717292e0644f', '4', 'hard4', 'Law', '35', '3', 'QmapcgTBkYjSbBCVyeMb1ZMFyqNJaw6KJ3WVJQmrJuPpMk', 'pro_li_4', '23', '400', '100', '11');
INSERT INTO `bsn_donation` VALUES ('13', '2017-09-06 14:37:21', '', '2017-09-06 14:37:21', '0', 'c653f50ba22ddc94f653ab31e0fd548493edd310', '1', 'project', 'Art', '23', '1', 'QmRnkppCScAkAJyQuBqvU3rfZYvqpCfiCPs1w8evEjdbPv', 'pro_chen_5', '2', '100', '100', '9');
INSERT INTO `bsn_donation` VALUES ('14', '2017-09-06 14:37:43', '', '2017-09-06 14:37:43', '0', '218b90d91966a985627a0ef6a6e6d93cb817ad18', '2', 'hard5', 'Economics', '25', '2', 'QmYvuhLq8PNh6imB4TXAHrDX7VAPjSLYYqFxyBmLWuSnu4', 'pro_li_5', '12', '200', '100', '11');
INSERT INTO `bsn_donation` VALUES ('15', '2017-09-06 14:38:13', '', '2017-09-06 14:38:13', '0', 'f04e50d7999cbd22d4fe3f3cbb283c9c844c4579', '2', '400', 'Economics', '21', '2', 'QmaG9ueLnFXii9HLtARrGBLKh5o5syGPrgmbmqEzqJ5ZQB', 'pro_chen_7', '2', '400', '200', '9');
INSERT INTO `bsn_donation` VALUES ('16', '2017-09-06 14:38:52', '', '2017-09-06 14:38:52', '0', 'a91287f6c65bcdf2c01b82a85f57796dac5f8f47', '2', 'project', 'Law', '28', '2', 'QmU85DzaCShtGfrHhD17bo2Buba8AsjJisiXezamTmc2fz', 'pro_chen_8', '5', '500', '250', '9');
INSERT INTO `bsn_donation` VALUES ('17', '2017-09-06 14:38:57', '', '2017-09-06 14:38:57', '0', '6c82bebb452abd846eb69f2fd4c62bbf489d4efb', '2', 'hard6', 'Art', '25', '3', 'QmUmbuaiPjyvrvsDUHiJnyD58iH9g1u7Z1tvUttSjAzCNs', 'pro_li_6', '12', '200', '100', '11');
INSERT INTO `bsn_donation` VALUES ('18', '2017-09-06 14:39:24', '', '2017-09-06 14:39:24', '0', '9feb73071defbe92af046c181ef2cd7a2b41e79d', '4', 'hard7', 'Economics', '21', '2', 'QmPgCTrrpiFKRY21K5j7Zmub6wVggmhyUytU3pADmwJdSP', 'pro_li_7', '21', '200', '50', '11');
INSERT INTO `bsn_donation` VALUES ('19', '2017-09-06 14:39:33', '', '2017-09-06 14:39:33', '0', '1d15b194369998b314743164912123b988f09e3d', '2', '3', 'Law', '21', '2', 'QmSEYa3bDcPhybSskS2ST3tv1pyTYUYkdJAR7hbXNpxM89', 'pro_chen_9', '11', '600', '300', '9');
INSERT INTO `bsn_donation` VALUES ('20', '2017-09-06 14:39:54', '', '2017-09-06 15:57:09', '1', 'a2b0ba3cff93cc2c894626a3847fc6aaf9eb0ab4', '4', 'hard7', 'Economics', '12', '5', 'QmUPSc6mtGreY78ZTCmsK7Hh8WLxfYPifwMVxqfwBaPD4q', 'pro_li_8', '12', '150', '50', '11');
INSERT INTO `bsn_donation` VALUES ('21', '2017-09-06 14:40:12', '', '2017-09-06 14:40:12', '0', '02d5ba03ea21c246a619a5c2aeee116090ae6342', '4', 'ali', 'Economics', '21', '2', 'QmbDD47u9HcuvZmeUi2mRT2QACUfTioDTCH8h84hih3C48', 'pro_chen_6', '8', '600', '150', '9');
INSERT INTO `bsn_donation` VALUES ('22', '2017-09-06 14:40:27', '', '2017-09-06 14:50:52', '1', 'b4a355511434fb313985e2be1fdcef627143f436', '2', 'hard9', 'Economics', '15', '3', 'QmNqWRpkNETfCVtXxa69hQLgpubyT5j3JhSqHrJhza9c3o', 'pro_li_9', '21', '50', '50', '11');
INSERT INTO `bsn_donation` VALUES ('23', '2017-09-06 14:40:44', '', '2017-09-06 14:40:44', '0', '333a53dc350849545c684f4a9a579d5c39003e02', '2', 'jun', 'Economics', '18', '2', 'QmZU1K9GrBKDkU8qchhi9boT27RgfaPuCJExvNqHJndEiA', 'pro_chen_11', '7', '300', '150', '9');
INSERT INTO `bsn_donation` VALUES ('24', '2017-09-06 14:41:01', '', '2017-09-06 14:41:01', '0', '43547fc8709fe9d49298176d8563bdfcc18ab17b', '2', 'hard10', 'Information and Computing Sciences', '12', '2', 'QmRiUj3McPcTAsTXZSQZNrmBFmxZsvWtHZP4imn8p5P12Q', 'pro_li_10', '12', '100', '50', '11');
INSERT INTO `bsn_donation` VALUES ('25', '2017-09-06 14:43:34', '', '2017-09-06 14:43:34', '0', '87e867b8706edce828ccd95e94f979d661cbaa1d', '2', 'project', 'Economics', '21', '2', 'QmYS94YiGH6KfDjupWb1NqtNWf4jyC7TZLrJ4bNdH31w2C', 'spring1', '12', '300', '150', '9');
INSERT INTO `bsn_donation` VALUES ('26', '2017-09-06 14:44:12', '', '2017-09-06 15:55:59', '1', '96569ec1871fd391a901a49fd4ba436f341ba340', '2', 'project', 'Economics', '23', '3', 'QmZK1LkrkoeQ71YhKkk7nz319WbdF5F7NyWsVJRQakfHWq', 'springboot', '18', '0', '400', '9');
INSERT INTO `bsn_donation` VALUES ('27', '2017-09-06 14:44:50', '', '2017-09-06 14:44:50', '0', '3382288c773152aa2649c33cef0b87c6f0c2b761', '3', 'project', 'Economics', '21', '2', 'QmTsLeESe15aENgDG3VsN7pcWKfFuQTE2w2eC5AhqdKtfv', 'myPro', '12', '600', '200', '9');
INSERT INTO `bsn_donation` VALUES ('28', '2017-09-06 14:53:48', '', '2017-09-06 15:15:51', '3', 'b83df1389378920368afa33c9acf42d38ef9ab65', '8', 'hard11', 'Economics', '28', '2', 'QmQQyvHS7Xv9QXDyzmaEP17mgvX2qc8ZACb4yahgTFn1n3', 'pro_li_11', '34', '500', '100', '11');
INSERT INTO `bsn_donation` VALUES ('29', '2017-09-06 14:54:26', '', '2017-09-06 15:53:41', '1', 'c51f7c034fdeed8c112ff1f9c57e6551d12ccef9', '2', 'project', 'Economics', '21', '1', 'QmRCMt4HR5uuLNvNUZqiU4U9BRhBMq9Pb14WLb71NQMDnC', 'pro_don_1', '3', '0', '200', '24');
INSERT INTO `bsn_donation` VALUES ('30', '2017-09-06 14:55:13', '', '2017-09-06 14:55:36', '1', 'bc8cca5c873a54f51a46437b7ed22eb6798b529d', '2', 'project', 'Economics', '21', '2', 'QmPupsZHUncEPoG8otaRTeHUJ3smeYxX3qXrR3cS32a7tb', 'pro_chen131', '11', '100', '20', '24');
INSERT INTO `bsn_donation` VALUES ('31', '2017-09-06 14:57:56', '', '2017-09-06 14:57:56', '0', '2f5f6e2a20c016dbca2f94dfdea1cf7552e9cbf6', '6', 'hard12', 'Economics', '32', '2', 'Qmb8iy5FbQRGNKRhbqMyCxiswQYn7DCvuqaVGFCufptgEt', 'pro_li_12', '12', '300', '50', '11');
INSERT INTO `bsn_donation` VALUES ('32', '2017-09-06 14:58:40', '', '2017-09-06 14:58:40', '0', '9389c96ad26a3773af8507b3cb642a3f9b890a47', '2', 'porject', 'Economics', '21', '1', 'QmdKySP2SUQdQ7Us1iCEnN7KWLtxWan3dAasffLXHze5Qa', 'pro_chen_132f', '21', '300', '150', '24');
INSERT INTO `bsn_donation` VALUES ('33', '2017-09-06 15:00:33', '', '2017-09-06 15:00:33', '0', '234f6d70f5301325c67ecabbdc940a5fcf2fb7ec', '4', 'project', 'Economics', '21', '2', 'QmYA1Ex59BxCshqazKJ9rCevnb3W6pQMYonU1KsBj6oJPn', 'pro_ligang_1', '12', '200', '50', '11');
INSERT INTO `bsn_donation` VALUES ('34', '2017-09-06 15:02:15', '', '2017-09-06 15:02:15', '0', 'd384fccec91f247e391319e0f350a1fe46feb44f', '1', 'project', 'Economics', '21', '2', 'QmVUEA8JWcxoQ2Rx2c2Jg95KEMsdRxmaU8Rtvuhd8Bkcyw', 'pro_miss1', '12', '400', '400', '25');
INSERT INTO `bsn_donation` VALUES ('35', '2017-09-06 15:03:40', '', '2017-09-06 15:51:33', '1', '919fd37f4bbf01bee178b31a9171eb1c74330429', '2', 'project', 'Economics', '21', '2', 'QmbfBkjCjao975kvkicH2jS1Mckdw7wAzvzfbpixAqUvKx', 'pro_miss2', '6', '1200', '400', '26');
INSERT INTO `bsn_donation` VALUES ('36', '2017-09-06 15:05:05', '', '2017-09-06 15:58:41', '1', 'a2c3737ad1283039f16e794a52be2d5a1d9385b4', '1', 'project', 'Economics', '21', '3', 'QmQoW5TsLCKzqgSHRrdHBtYNpLau5k5hakUWehL94R62Gx', 'pro_miss3', '7', '0', '500', '27');
INSERT INTO `bsn_donation` VALUES ('37', '2017-09-06 15:07:08', '', '2017-09-06 15:51:08', '2', '78d7a7bc383183221095711b5c3a76d0c82f8baa', '2', 'project', 'Economics', '21', '5', 'QmQnuhhhUe6UXdNAkWX1Uep4P5984mL8EdfxZ1DCfLHRXd', 'pro_miss4', '11', '2500', '500', '28');
INSERT INTO `bsn_donation` VALUES ('38', '2017-09-06 17:04:59', '', '2017-09-06 17:07:59', '3', 'c1a055808a01533edb22b6f235da8c54f985db9e', '2', 'project', 'Economics', '33', '3', 'QmerVhzL5PzZvBMgt5QnAGzRZYSxTQgWQHaPUBHNZiepUm', 'pro_32', '22', '250', '250', '30');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bsn_scholarship_info
-- ----------------------------
INSERT INTO `bsn_scholarship_info` VALUES ('1', '2017-09-06 11:47:02', '', '2017-09-06 11:47:02', '0', '{\"age\":23, \"major\":\"Economics\", \"rank\":5, \"gpa\":3.0}', '0', 'project', '1', 'pro1', 'failure', '2017-09-06 11:47:02', '4', '1');
INSERT INTO `bsn_scholarship_info` VALUES ('2', '2017-09-06 12:32:49', '', '2017-09-06 12:32:49', '0', '{\"age\":23, \"major\":\"Economics\", \"rank\":21, \"gpa\":2.0}', '0', 'help', '3', 'helpU', 'failure', '2017-09-06 12:32:49', '13', '3');
INSERT INTO `bsn_scholarship_info` VALUES ('3', '2017-09-06 12:36:23', '', '2017-09-06 12:36:23', '0', '{\"age\":23, \"major\":\"Economics\", \"rank\":21, \"gpa\":2.0}', '50', 'help', '3', 'helpU', 'success', '2017-09-06 12:36:23', '14', '3');
INSERT INTO `bsn_scholarship_info` VALUES ('4', '2017-09-06 14:33:14', '', '2017-09-06 14:33:14', '0', '{\"age\":25, \"major\":\"Economics\", \"rank\":21, \"gpa\":2.0}', '50', 'ligang', '4', 'pro10', 'success', '2017-09-06 14:33:14', '16', '4');
INSERT INTO `bsn_scholarship_info` VALUES ('5', '2017-09-06 14:50:52', '', '2017-09-06 14:50:52', '0', '{\"age\":15, \"major\":\"Economics\", \"rank\":21, \"gpa\":3.0}', '50', 'hard9', '22', 'pro_li_9', 'success', '2017-09-06 14:50:52', '17', '22');
INSERT INTO `bsn_scholarship_info` VALUES ('6', '2017-09-06 14:54:07', '', '2017-09-06 14:54:07', '0', '{\"age\":28, \"major\":\"Economics\", \"rank\":34, \"gpa\":2.0}', '100', 'hard11', '28', 'pro_li_11', 'success', '2017-09-06 14:54:07', '17', '28');
INSERT INTO `bsn_scholarship_info` VALUES ('7', '2017-09-06 14:54:29', '', '2017-09-06 14:54:29', '0', '{\"age\":28, \"major\":\"Economics\", \"rank\":34, \"gpa\":2.0}', '100', 'hard11', '28', 'pro_li_11', 'success', '2017-09-06 14:54:29', '18', '28');
INSERT INTO `bsn_scholarship_info` VALUES ('8', '2017-09-06 14:55:06', '', '2017-09-06 14:55:06', '0', '{\"age\":28, \"major\":\"Economics\", \"rank\":34, \"gpa\":2.0}', '0', 'hard11', '28', 'pro_li_11', 'failure', '2017-09-06 14:55:06', '19', '28');
INSERT INTO `bsn_scholarship_info` VALUES ('9', '2017-09-06 15:15:51', '', '2017-09-06 15:15:51', '0', '{\"age\":28, \"major\":\"Economics\", \"rank\":34, \"gpa\":2.0}', '100', 'hard11', '28', 'pro_li_11', 'success', '2017-09-06 15:15:51', '29', '28');
INSERT INTO `bsn_scholarship_info` VALUES ('10', '2017-09-06 15:53:41', '', '2017-09-06 15:53:41', '0', '{\"age\":21, \"major\":\"Economics\", \"rank\":3, \"gpa\":1.0}', '200', 'project', '29', 'pro_don_1', 'success', '2017-09-06 15:53:41', '29', '29');
INSERT INTO `bsn_scholarship_info` VALUES ('11', '2017-09-06 15:55:59', '', '2017-09-06 15:55:59', '0', '{\"age\":23, \"major\":\"Economics\", \"rank\":18, \"gpa\":3.0}', '400', 'project', '26', 'springboot', 'success', '2017-09-06 15:55:59', '29', '26');
INSERT INTO `bsn_scholarship_info` VALUES ('12', '2017-09-06 15:57:09', '', '2017-09-06 15:57:09', '0', '{\"age\":12, \"major\":\"Economics\", \"rank\":12, \"gpa\":5.0}', '50', 'hard7', '20', 'pro_li_8', 'success', '2017-09-06 15:57:09', '29', '20');
INSERT INTO `bsn_scholarship_info` VALUES ('13', '2017-09-06 15:58:41', '', '2017-09-06 15:58:41', '0', '{\"age\":21, \"major\":\"Economics\", \"rank\":7, \"gpa\":3.0}', '500', 'project', '36', 'pro_miss3', 'success', '2017-09-06 15:58:41', '29', '36');
INSERT INTO `bsn_scholarship_info` VALUES ('14', '2017-09-06 15:59:08', '', '2017-09-06 15:59:08', '0', '{\"age\":21, \"major\":\"Law\", \"rank\":11, \"gpa\":2.0}', '0', '3', '19', 'pro_chen_9', 'failure', '2017-09-06 15:59:08', '29', '19');
INSERT INTO `bsn_scholarship_info` VALUES ('15', '2017-09-06 17:06:36', '', '2017-09-06 17:06:36', '0', '{\"age\":33, \"major\":\"Economics\", \"rank\":22, \"gpa\":3.0}', '250', 'project', '38', 'pro_32', 'success', '2017-09-06 17:06:36', '32', '38');
INSERT INTO `bsn_scholarship_info` VALUES ('16', '2017-09-06 17:06:58', '', '2017-09-06 17:06:58', '0', '{\"age\":33, \"major\":\"Economics\", \"rank\":22, \"gpa\":3.0}', '250', 'project', '38', 'pro_32', 'success', '2017-09-06 17:06:58', '31', '38');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_local_account
-- ----------------------------
INSERT INTO `sys_local_account` VALUES ('1', '2017-09-03 21:19:29', '', '2017-09-03 21:19:33', '0', 'teacher1', 'a66abb5684c45962d887564f08346e8d', '123456', '1');
INSERT INTO `sys_local_account` VALUES ('2', '2017-09-03 21:19:47', '', '2017-09-03 21:20:10', '0', 'teacher2', 'a66abb5684c45962d887564f08346e8d', '123456', '2');
INSERT INTO `sys_local_account` VALUES ('3', '2017-09-03 21:20:01', '', '2017-09-03 21:20:06', '0', 'teacher3', 'a66abb5684c45962d887564f08346e8d', '123456', '3');
INSERT INTO `sys_local_account` VALUES ('4', '2017-09-06 11:36:54', '', '2017-09-06 11:36:54', '0', 'lisi', '2170c6d1057ebeafd0d3c76dedffb725', ';H.?sp', '4');
INSERT INTO `sys_local_account` VALUES ('5', '2017-09-06 11:37:48', '', '2017-09-06 11:37:48', '0', 'zhangsan', '53550001a81f328bf063f2d53f23ac82', '9(WJ\'H', '5');
INSERT INTO `sys_local_account` VALUES ('6', '2017-09-06 11:38:26', '', '2017-09-06 11:38:26', '0', 'ligang', 'b3bbd9f959e7c7adcc0ece9b7d3c231b', ' Wc`k/', '6');
INSERT INTO `sys_local_account` VALUES ('7', '2017-09-06 11:39:22', '', '2017-09-06 11:39:22', '0', 'WangWu', '1ede5a7f0829aa4ddc64089892e981ec', '`rXM\\K', '7');
INSERT INTO `sys_local_account` VALUES ('8', '2017-09-06 11:40:10', '', '2017-09-06 11:40:10', '0', 'LiuNeng', '48ddd939a4ed46b8a95a3f2377432bee', 'r\'=%`E', '8');
INSERT INTO `sys_local_account` VALUES ('9', '2017-09-06 11:40:54', '', '2017-09-06 11:40:54', '0', 'donor1', '8f228767d8a58492fe244e0ad30741b3', 'E`m)x;', '9');
INSERT INTO `sys_local_account` VALUES ('10', '2017-09-06 11:47:07', '', '2017-09-06 11:47:07', '0', 'donor2', '9f0d15fef19e67b0e4af0f46a76f37a5', 'X9<`])', '10');
INSERT INTO `sys_local_account` VALUES ('11', '2017-09-06 11:53:30', '', '2017-09-06 11:53:30', '0', 'juankuan_ligang2', 'c54314c3ce2fc6178f1ea0e049364ccf', '|4xKY(', '11');
INSERT INTO `sys_local_account` VALUES ('12', '2017-09-06 12:27:10', '', '2017-09-06 12:27:10', '0', 'juankuan_ligang3', 'eda8ac0d991d356dbdd3566a5363b7a6', 'Lp.G%#', '12');
INSERT INTO `sys_local_account` VALUES ('13', '2017-09-06 12:31:24', '', '2017-09-06 12:31:24', '0', 'liwu', 'c43dfe0e81464c20464a6a7c2a7fc69e', 'Yd!TLn', '13');
INSERT INTO `sys_local_account` VALUES ('14', '2017-09-06 12:35:31', '', '2017-09-06 12:35:31', '0', 'liliu', '0f1032d477939a648ed255526cf4b3c2', 't=M6\\A', '14');
INSERT INTO `sys_local_account` VALUES ('15', '2017-09-06 14:30:45', '', '2017-09-06 14:30:45', '0', 'liqi', '5764aa17cf4cea23c40d754069e5812e', 'wGRtEi', '15');
INSERT INTO `sys_local_account` VALUES ('16', '2017-09-06 14:32:55', '', '2017-09-06 14:32:55', '0', 'liba', '4b4953581b06f001ffcca5c11321718d', 'UAVF(4', '16');
INSERT INTO `sys_local_account` VALUES ('17', '2017-09-06 14:43:46', '', '2017-09-06 14:43:46', '0', 'stu_li_1', '23c6eb038e2c42192498bea578e07693', 'f|xc9?', '17');
INSERT INTO `sys_local_account` VALUES ('18', '2017-09-06 14:44:20', '', '2017-09-06 14:44:20', '0', 'stu_li_2', '85ac92a0f1450593e7fd7c79e5df6a84', '[Ggld=', '18');
INSERT INTO `sys_local_account` VALUES ('19', '2017-09-06 14:45:28', '', '2017-09-06 14:45:28', '0', 'stu_li_3', 'b70938397cc00e92d071ad3133a0b9f9', 'G3.jug', '19');
INSERT INTO `sys_local_account` VALUES ('20', '2017-09-06 14:46:21', '', '2017-09-06 14:46:21', '0', 'sut_li_4', '293a6ebb0b0640d6401a01b0cc54c5ed', 'qO%gXJ', '20');
INSERT INTO `sys_local_account` VALUES ('21', '2017-09-06 14:48:21', '', '2017-09-06 14:48:21', '0', 'sut_li_5', '58f109dee038010f03e8ff94fb57afec', '[]g;V_', '21');
INSERT INTO `sys_local_account` VALUES ('22', '2017-09-06 14:49:51', '', '2017-09-06 14:49:51', '0', 'sut_li_6', 'c8c0ad727dd74878cb9490f1c5e8527f', 'P+Q:0j', '22');
INSERT INTO `sys_local_account` VALUES ('23', '2017-09-06 14:50:54', '', '2017-09-06 14:50:54', '0', 'donor3', '1327668cd61eb44b836df69f03e8e7b9', '1cttbv', '23');
INSERT INTO `sys_local_account` VALUES ('24', '2017-09-06 14:53:34', '', '2017-09-06 14:53:34', '0', 'donor4', '794bc6680c2988de965f1b362f034f7f', 'PHp[zO', '24');
INSERT INTO `sys_local_account` VALUES ('25', '2017-09-06 15:01:07', '', '2017-09-06 15:01:07', '0', 'donor5', '10fe27878102109ef743ddb219c3147d', 'g<}K*o', '25');
INSERT INTO `sys_local_account` VALUES ('26', '2017-09-06 15:02:54', '', '2017-09-06 15:02:54', '0', 'donor6', '4b26c4605cdb84e94e7331b4064f48d6', 'L[I3p ', '26');
INSERT INTO `sys_local_account` VALUES ('27', '2017-09-06 15:04:20', '', '2017-09-06 15:04:20', '0', 'donor7', 'dc61ff285da94de85603943c87a750a5', 'rl2+P5', '27');
INSERT INTO `sys_local_account` VALUES ('28', '2017-09-06 15:06:25', '', '2017-09-06 15:06:25', '0', 'donor10', '3f3a5a795d733a104189538ecfbb6921', 'RB*nUB', '28');
INSERT INTO `sys_local_account` VALUES ('29', '2017-09-06 15:13:06', '', '2017-09-06 15:13:06', '0', 'leesi', '72127d516608d72a1dddfedaa103a355', 'NZSkcL', '29');
INSERT INTO `sys_local_account` VALUES ('30', '2017-09-06 17:04:04', '', '2017-09-06 17:04:04', '0', 'donor11', '07e15848178e56ddacbc63ef46843446', '\\r|sXf', '30');
INSERT INTO `sys_local_account` VALUES ('31', '2017-09-06 17:05:52', '', '2017-09-06 17:05:52', '0', 'leesisi', 'a7625a498ddb95dbcd0af9db39edad71', 'ZK4v`8', '31');
INSERT INTO `sys_local_account` VALUES ('32', '2017-09-06 17:06:21', '', '2017-09-06 17:06:21', '0', 'Tomhanks', 'f426eb6cdeba6a55fb8a7195c3e9f8f5', '|:\"e6<', '32');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_profile
-- ----------------------------
INSERT INTO `sys_user_profile` VALUES ('1', '2017-09-03 21:12:25', '', '2017-09-03 21:12:29', '0', '676F463CC57D1999696F4C2B82384E5A601CC91E', '33', '1989-02-03 21:12:48', null, null, null, '3', null, null, 'ff', '12', '3', 'teacher1', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('2', '2017-09-03 21:16:50', '', '2017-09-03 21:16:47', '0', '2C31D7C25C1A2259ED5DB08E3666A212D6990539', '33', '1988-02-03 21:15:40', null, null, null, '3', null, null, 'dsf', '23', '3', 'teacher2', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('3', '2017-09-03 21:16:40', '', '2017-09-03 21:16:45', '0', '89B2A9492CA627F7DCAA4B0DE30D27D357711C67', '23', '1993-02-01 21:16:16', null, null, null, '5', null, null, 'sdf', '4', '2', 'teacher3', 'teacher', null);
INSERT INTO `sys_user_profile` VALUES ('4', '2017-09-06 11:36:54', '', '2017-09-06 11:36:54', '0', 'b87c7af925fe420210d5a16b85e5d6feecd8eef4', '7', '2010-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000740180000000000000000000274000945636F6E6F6D696373, 'QmfSZz49qMmk2Z6SqyAj9djadVdX9EToQdzmzYVBC57k7f', 'si', '6', 'li', null, 'Economics', '0', '2', 'lisi', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('5', '2017-09-06 11:37:48', '', '2017-09-06 11:37:48', '0', 'd27bf2f1b40d97ffc7694a53ab71382e3a39f567', '10', '2007-02-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000A40080000000000000000000A74000945636F6E6F6D696373, 'QmeuYaRSYSisZJfHLrbuizrrF6AhL5rTshSExWdoWKmAbq', 'san', '3', 'zhang', null, 'Economics', '0', '10', 'zhangsan', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('6', '2017-09-06 11:38:26', '', '2017-09-06 11:38:26', '0', '32e4b11ceec0e86cf69a3ee11d2eac563e94761b', '22', '1995-05-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000001640140000000000000000000474000945636F6E6F6D696373, 'QmTcTNpGK5gBN95vNHPH3ecaA1U1STfWrdDx6j9hBHXsLu', 'gang', '5', 'li', null, 'Economics', '0', '4', 'ligang', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('7', '2017-09-06 11:39:22', '', '2017-09-06 11:39:22', '0', '6b80418b9f31535292042ffe7bd2c9b3b70b40f0', '22', '1995-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000001640140000000000000000000C74000945636F6E6F6D696373, 'QmYhKwsbPBj9t3DaPC5ZwP4Bvm4sNngwBNE61ofScCb4Cs', 'wu', '5', 'wang', null, 'Economics', '0', '12', 'WangWu', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('8', '2017-09-06 11:40:10', '', '2017-09-06 11:40:10', '0', '613ee49a0b92c32a6ef30aa9b9ebe5ce88086082', '20', '1997-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000001440180000000000000000000374000945636F6E6F6D696373, 'QmbVBvwFsq1byfazctccmh71PkekhX4NLDye5wdeUETNDy', 'neng', '6', 'liu', null, 'Economics', '0', '3', 'LiuNeng', 'student', '2');
INSERT INTO `sys_user_profile` VALUES ('9', '2017-09-06 11:40:54', '', '2017-09-06 11:41:20', '1', 'f08d0cd870ba9ac9d835773d2d95130780b3b59f', '0', null, null, null, null, null, null, '123456', null, '5000', '0', 'donor1', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('10', '2017-09-06 11:47:07', '', '2017-09-06 11:47:07', '0', '8d066fbfbad426f2b67a6f0747264b438a2364e3', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'donor2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('11', '2017-09-06 11:53:30', '', '2017-09-06 14:53:13', '4', 'd583630c31e1bd12bc43c796e27f52b4d552d4cf', '0', null, null, null, null, null, null, '1234567890', null, '3900', '0', 'juankuan_ligang2', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('12', '2017-09-06 12:27:10', '', '2017-09-06 12:27:10', '0', 'e9085783bf74c9ef40bd263228082e7ff9dbf5bd', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'juankuan_ligang3', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('13', '2017-09-06 12:31:24', '', '2017-09-06 12:31:24', '0', '9bfef6b799b9f807ed442da4d63a1e700a2b6172', '9', '2008-06-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000940080000000000000000001574000945636F6E6F6D696373, 'QmRDtEQzZvBW8JXKFwqhKWXhwLTjMureDKp5TGVGPH4wZv', 'wu', '3', 'li', null, 'Economics', '0', '21', 'liwu', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('14', '2017-09-06 12:35:31', '', '2017-09-06 12:36:23', '1', '135838acb6aee594fd5808ee2cfa2f6a612d0770', '8', '2008-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000840100000000000000000000274000945636F6E6F6D696373, 'QmRx6xtPYfLnBAUVrEQid2MTJzX8NyvTypqntVwHV4fEJP', 'liu', '4', 'li', null, 'Economics', '50', '2', 'liliu', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('15', '2017-09-06 14:30:45', '', '2017-09-06 14:30:45', '0', '9dd5f908740d4be327e9bf182227b01c4c11b13f', '11', '2006-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000B40000000000000000000001574000945636F6E6F6D696373, 'Qmb71fHuHPihFmNuRU2vniNMPxSTJbBMziPhRFh3FgsHVf', 'qi', '2', 'li', null, 'Economics', '0', '21', 'liqi', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('16', '2017-09-06 14:32:55', '', '2017-09-06 14:33:14', '1', 'f2fbe60c9a191b66215a46b1b92e634ffffa3cc0', '8', '2008-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000840140000000000000000000174000945636F6E6F6D696373, 'QmVESU2PJyXvy7RACiUExG3EkG4JoTM5C6vgC4xmThvH4q', 'ba', '5', 'li', null, 'Economics', '150', '1', 'liba', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('17', '2017-09-06 14:43:46', '', '2017-09-06 14:54:07', '2', '76abe49d3ca8736c0dfca420c5c24b795a9054f0', '8', '2008-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000840140000000000000000000274000945636F6E6F6D696373, 'QmdP1GeeAytEC8L5kCwdEBKVapf6ZpSsoG4ejgvunKLJ4a', 'han', '5', 'zhang', null, 'Economics', '700', '2', 'stu_li_1', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('18', '2017-09-06 14:44:20', '', '2017-09-06 14:54:29', '1', 'e8af52eeaa4ab25258ad2fb1c3efa3ad6ad4ff7a', '11', '2006-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000B40100000000000000000000374000945636F6E6F6D696373, 'QmQdCcEBBuAkCHycFPeMmPZu7JP8HpurYG4EeeHuAfMTNs', 'shuang', '4', 'zheng', null, 'Economics', '600', '3', 'stu_li_2', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('19', '2017-09-06 14:45:28', '', '2017-09-06 14:45:28', '0', '0f6768529ffb2bab75c426062665620af406521f', '32', '1985-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000002040000000000000000000002D74000945636F6E6F6D696373, 'QmdxymMt53iCq6cP48gyB9xoJ3dxpNTUyLPccr8XdiCqv3', 'kobe', '2', 'Bryant', null, 'Economics', '0', '45', 'stu_li_3', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('20', '2017-09-06 14:46:21', '', '2017-09-06 14:46:21', '0', 'b371d43e8aa4cca1e60cd1a2aa70aa18bbe5f409', '8', '2008-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000840100000000000000000000574000945636F6E6F6D696373, 'QmQD7ipokK6ETpRarJk2uXswFJYSwh4LV3nquMbvJjmWK8', 'LeBron', '4', 'James', null, 'Economics', '0', '5', 'sut_li_4', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('21', '2017-09-06 14:48:21', '', '2017-09-06 14:48:21', '0', '59a73c8d3f6e70561792c8f2ac546ef970fe42db', '10', '2007-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000A40100000000000000000000674000945636F6E6F6D696373, 'QmdQyf5RYpMQoBC7rKnjSEnJMF9PUtPy1Cv4b5KGVr3joS', 'Stephen', '4', 'Curry', null, 'Economics', '0', '6', 'sut_li_5', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('22', '2017-09-06 14:49:51', '', '2017-09-06 14:49:51', '0', '4c7d2e842a0f0d66ffa2673d3c74cd41cd6a4332', '11', '2006-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000B40100000000000000000000374000945636F6E6F6D696373, 'QmUzP7ftgzhfDy6ZEW918KH3GvLuA43C51h7LBCTrViSAR', 'Klay', '4', 'Thompson', null, 'Economics', '0', '3', 'sut_li_6', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('23', '2017-09-06 14:50:54', '', '2017-09-06 14:50:54', '0', '110e3ad0ed5544f59aa4582db7beca8eb59b9bd0', '0', null, null, null, null, null, null, '1234567890', null, '0', '0', 'donor3', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('24', '2017-09-06 14:53:34', '', '2017-09-06 14:55:36', '2', '263b855a59b664d1a703abfe80b765d0847573a6', '0', null, null, null, null, null, null, '123456', null, '4940', '0', 'donor4', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('25', '2017-09-06 15:01:07', '', '2017-09-06 15:01:48', '1', '3012dd6f8ca58ed7046ba977d42b49bd7cbf479a', '0', null, null, null, null, null, null, '123456', null, '3000', '0', 'donor5', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('26', '2017-09-06 15:02:54', '', '2017-09-06 15:03:16', '1', 'e7305b261c7badbf9d685e90ecf232cf17e873f4', '0', null, null, null, null, null, null, '1111111111', null, '2000', '0', 'donor6', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('27', '2017-09-06 15:04:20', '', '2017-09-06 15:04:43', '1', '7025996f1d0d3bed9be76914697ef25ce4658b2a', '0', null, null, null, null, null, null, '1234567890', null, '1000', '0', 'donor7', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('28', '2017-09-06 15:06:25', '', '2017-09-06 15:51:33', '5', '97cbdde5a2d3f3f45156f92d35d1508c8f1af962', '0', null, null, null, null, null, null, '1234567890', null, '100', '0', 'donor10', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('29', '2017-09-06 15:13:06', '', '2017-09-06 15:58:41', '5', 'cbc917be53f49db95163cc52ac2fc0b384acd10c', '12', '2005-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000C40260000000000000000000174000945636F6E6F6D696373, 'QmYd89LtwtBmULsRDGZf3oYwZQa4sPiTqr88oNHC7bg5VJ', 'si', '11', 'lee', null, 'Economics', '0', '1', 'leesi', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('30', '2017-09-06 17:04:04', '', '2017-09-06 17:07:59', '2', 'e5e75fb29e12d5afd5c5b0c3afd36fb3636efd53', '0', null, null, null, null, null, null, '1234567890', null, '250', '0', 'donor11', 'donor', null);
INSERT INTO `sys_user_profile` VALUES ('31', '2017-09-06 17:05:52', '', '2017-09-06 17:06:58', '1', 'b2cc3277e3d6319b4566c5e6979dc3643419903c', '7', '2010-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B78700000000740180000000000000000000274000945636F6E6F6D696373, 'QmQPJt3q6yWCS9fzRgkdUCWg5PxzZdqdvXcQezyzuduv7h', 'si', '6', 'li', null, 'Economics', '0', '2', 'leesisi', 'student', '1');
INSERT INTO `sys_user_profile` VALUES ('32', '2017-09-06 17:06:21', '', '2017-09-06 17:06:36', '1', '4c12f3c98d91d5a39efde04e737d5f4dcdb83955', '18', '1999-09-06 00:00:00', 0xACED00057372002C636F6D2E616E646C696E6B732E7363686F6C6172736869702E656E746974792E766F2E436F6D70617265564F60C7C36D03B30EF902000449000361676544000367706149000472616E6B4C00056D616A6F727400124C6A6176612F6C616E672F537472696E673B787000000012401C0000000000000000000174000945636F6E6F6D696373, 'QmezDD2cUrX2WrGxVrDYCZ3FngWKkaahaAnbhNL3cDX5JV', 'hanks', '7', 'Tom', null, 'Economics', '250', '1', 'Tomhanks', 'student', '1');

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
INSERT INTO `user_role` VALUES ('9', '1');
INSERT INTO `user_role` VALUES ('10', '1');
INSERT INTO `user_role` VALUES ('11', '1');
INSERT INTO `user_role` VALUES ('12', '1');
INSERT INTO `user_role` VALUES ('23', '1');
INSERT INTO `user_role` VALUES ('24', '1');
INSERT INTO `user_role` VALUES ('25', '1');
INSERT INTO `user_role` VALUES ('26', '1');
INSERT INTO `user_role` VALUES ('27', '1');
INSERT INTO `user_role` VALUES ('28', '1');
INSERT INTO `user_role` VALUES ('30', '1');
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('3', '2');
INSERT INTO `user_role` VALUES ('4', '3');
INSERT INTO `user_role` VALUES ('5', '3');
INSERT INTO `user_role` VALUES ('6', '3');
INSERT INTO `user_role` VALUES ('7', '3');
INSERT INTO `user_role` VALUES ('8', '3');
INSERT INTO `user_role` VALUES ('13', '3');
INSERT INTO `user_role` VALUES ('14', '3');
INSERT INTO `user_role` VALUES ('15', '3');
INSERT INTO `user_role` VALUES ('16', '3');
INSERT INTO `user_role` VALUES ('17', '3');
INSERT INTO `user_role` VALUES ('18', '3');
INSERT INTO `user_role` VALUES ('19', '3');
INSERT INTO `user_role` VALUES ('20', '3');
INSERT INTO `user_role` VALUES ('21', '3');
INSERT INTO `user_role` VALUES ('22', '3');
INSERT INTO `user_role` VALUES ('29', '3');
INSERT INTO `user_role` VALUES ('31', '3');
INSERT INTO `user_role` VALUES ('32', '3');
