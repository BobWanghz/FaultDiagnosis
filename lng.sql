/*
Navicat MySQL Data Transfer

Source Server         : cs
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lng

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-12 20:29:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data2device`
-- ----------------------------
DROP TABLE IF EXISTS `data2device`;
CREATE TABLE `data2device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataId` int(11) NOT NULL,
  `dataName` varchar(255) DEFAULT NULL,
  `deviceId` int(11) NOT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data2device
-- ----------------------------
INSERT INTO `data2device` VALUES ('1', '1', 'storageLiquidLevel1', '1', 'StorageLiquid');
INSERT INTO `data2device` VALUES ('2', '2', 'storageLiquidLevel2', '2', 'CarLiquid');
INSERT INTO `data2device` VALUES ('3', '3', 'storagePressure1', '3', 'StoragePressure');
INSERT INTO `data2device` VALUES ('4', '4', 'storagePressure2', '4', 'CarPressure');
INSERT INTO `data2device` VALUES ('5', '5', 'gasifyPressure', '5', 'GasifyPressure');
INSERT INTO `data2device` VALUES ('6', '6', 'gasifyTemperature', '6', 'GasifyTemperature');
INSERT INTO `data2device` VALUES ('7', '14', 'totalFlow', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('8', '15', 'instantFlow', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('9', '16', 'temperature1', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('10', '17', 'pressure', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('11', '18', 'temperature2', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('12', '19', 'temperature3', '8', 'GasFlow1');
INSERT INTO `data2device` VALUES ('13', '20', 'fireDetector', '7', null);
INSERT INTO `data2device` VALUES ('14', '21', 'combustibleGasDetector', '7', null);
INSERT INTO `data2device` VALUES ('15', '22', 'longitude', '9', 'GPS');
INSERT INTO `data2device` VALUES ('16', '23', 'latitude', '9', 'GPS');
INSERT INTO `data2device` VALUES ('17', '24', 'massFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('18', '25', 'volumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('19', '26', 'gaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('20', '27', 'density', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('21', '28', 'referenceDensity', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('22', '29', 'temperature', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('23', '30', 'pressure2', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('24', '31', 'totalMassFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('25', '32', 'totalVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('26', '33', 'totalGaugedVolumeFlow', '10', 'MassFlow');
INSERT INTO `data2device` VALUES ('27', '7', 'outValve1', '7', null);
INSERT INTO `data2device` VALUES ('28', '8', 'outValve2', '7', null);
INSERT INTO `data2device` VALUES ('29', '9', 'inValve1', '7', null);
INSERT INTO `data2device` VALUES ('30', '10', 'inValve2', '7', null);
INSERT INTO `data2device` VALUES ('31', '11', 'storageValve1', '7', null);
INSERT INTO `data2device` VALUES ('32', '12', 'storageValve2', '7', null);
INSERT INTO `data2device` VALUES ('33', '13', 'flowCutValve', '7', null);
INSERT INTO `data2device` VALUES ('34', '34', null, '11', 'ZBOX');

-- ----------------------------
-- Table structure for `errordevice`
-- ----------------------------
DROP TABLE IF EXISTS `errordevice`;
CREATE TABLE `errordevice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `beginTime` datetime DEFAULT NULL,
  `dataId` int(11) NOT NULL,
  `faultType` int(11) NOT NULL,
  `overTime` datetime DEFAULT NULL,
  `updateMan` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `faultTybe` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9oc4jvwjobno4ev7ltk4aabww` (`productId`),
  CONSTRAINT `FK_9oc4jvwjobno4ev7ltk4aabww` FOREIGN KEY (`productId`) REFERENCES `t_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of errordevice
-- ----------------------------
INSERT INTO `errordevice` VALUES ('1', '2017-03-06 19:39:26', '1', '1', '2017-04-06 19:39:26', 'xiaoWang', '2017-04-12 13:52:43', '1', '0');
INSERT INTO `errordevice` VALUES ('2', '2017-03-06 19:39:26', '2', '1', '2017-04-06 19:39:26', 'xll', '2017-04-12 19:15:48', '1', '0');
INSERT INTO `errordevice` VALUES ('3', '2017-03-06 19:39:26', '3', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('4', '2017-04-06 19:39:26', '4', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('5', '2017-04-06 19:39:26', '5', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('6', '2017-04-06 19:39:26', '6', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('8', '2017-04-06 19:39:26', '8', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('9', '2017-04-06 19:39:26', '9', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('10', '2017-04-06 19:39:26', '10', '1', '2017-04-06 19:39:26', null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('11', '2017-04-06 19:39:26', '1', '1', '2017-04-06 19:39:26', null, null, '2', '0');
INSERT INTO `errordevice` VALUES ('12', '2017-04-06 19:39:26', '2', '1', '2017-04-06 19:39:26', null, null, '2', '0');
INSERT INTO `errordevice` VALUES ('13', '2017-04-06 19:39:26', '3', '1', '2017-04-06 19:39:26', null, null, '2', '0');
INSERT INTO `errordevice` VALUES ('14', '2017-04-06 19:39:26', '4', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('15', '2017-04-06 19:39:26', '5', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('16', '2017-04-06 19:39:26', '6', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('17', '2017-04-06 19:39:26', '7', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('18', '2017-04-06 19:39:26', '8', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('19', '2017-04-06 19:39:26', '9', '1', '2017-04-06 19:39:26', 'cs', null, '2', '0');
INSERT INTO `errordevice` VALUES ('20', '2017-04-06 19:39:26', '10', '1', '2017-04-06 19:39:26', 'cs', null, '1', '0');
INSERT INTO `errordevice` VALUES ('21', '2017-04-12 11:41:16', '1', '0', null, null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('22', '2017-04-12 11:42:30', '2', '0', null, null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('23', '2017-04-12 11:47:55', '3', '0', null, null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('24', '2017-04-12 11:51:07', '4', '0', null, null, null, '1', '0');
INSERT INTO `errordevice` VALUES ('25', '2017-04-12 12:03:13', '1', '0', null, null, null, '1', '0');

-- ----------------------------
-- Table structure for `t_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `investmentScale` varchar(255) DEFAULT NULL,
  `investmentMethod` varchar(255) DEFAULT NULL,
  `center` varchar(255) DEFAULT NULL,
  `settlementMode` varchar(255) DEFAULT NULL,
  `deliveryMethod` varchar(255) DEFAULT NULL,
  `earlyWarningThreshold` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `signedClient` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `salesman` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contractUnitPrice` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `operationTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pwwofi44nd5viwnd2dblq5ksq` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', 'www', '1234', 'w', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_account` VALUES ('2', 'qqqqq', '1221', '浙江温州江南皮革厂', '皮革厂', '浙江温州', '中型', '绿源提供', '非中心站', '气态', 'B类', '5000.00', '单勇', '13489798787', 'xxx', 'xx', 'xxx', 'xx', 'xx', 'xx', 'xxx', 'xx', 'xx', 'xx', null, '2016-12-04 13:51:24');

-- ----------------------------
-- Table structure for `t_account_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_account_role`;
CREATE TABLE `t_account_role` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`,`ROLE_ID`),
  KEY `FK_9svdhwwrue811pk4k2ilgj2p9` (`ROLE_ID`),
  CONSTRAINT `FK_9svdhwwrue811pk4k2ilgj2p9` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_lugqnt7su4prtmxrbwwxftl6l` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account_role
-- ----------------------------
INSERT INTO `t_account_role` VALUES ('1', '1');
INSERT INTO `t_account_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `t_device_fault`
-- ----------------------------
DROP TABLE IF EXISTS `t_device_fault`;
CREATE TABLE `t_device_fault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(255) NOT NULL,
  `storageLiquid
storageLiquid
storageLiquid` varchar(255) DEFAULT NULL,
  `gasifyPressure` varchar(255) DEFAULT NULL,
  `gasifyTemperature` varchar(255) DEFAULT NULL,
  `gasFlow1` varchar(255) DEFAULT NULL,
  `GPS` varchar(255) DEFAULT NULL,
  `massFlow` varchar(255) DEFAULT NULL,
  `carLiquid` varchar(255) DEFAULT NULL,
  `carPressure` varchar(255) DEFAULT NULL,
  `weighFlow` varchar(255) DEFAULT NULL,
  `gasFlow2` varchar(255) DEFAULT NULL,
  `ZBox` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_device_fault
-- ----------------------------

-- ----------------------------
-- Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r3ggxoxe8qjvi5l36txymerjn` (`imei`),
  KEY `FK_lsiewmc9thirhkpqxmkj7wmr1` (`account_id`),
  CONSTRAINT `FK_lsiewmc9thirhkpqxmkj7wmr1` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', 'fsfd', null, '1078341206', null, null, null, null, null, '1');
INSERT INTO `t_product` VALUES ('2', '浙江华港染', '15立方韩中', '152513241', '旧款', '浙江省绍兴市绍兴县', '浙江省绍兴市柯桥区马鞍镇新二路', '120.651089', '30.186135', '2');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'admin');
INSERT INTO `t_role` VALUES ('2', 'user');

-- ----------------------------
-- Table structure for `t_sensordata`
-- ----------------------------
DROP TABLE IF EXISTS `t_sensordata`;
CREATE TABLE `t_sensordata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storageLiquidLevel1` float DEFAULT NULL,
  `storageLiquidLevel2` float DEFAULT NULL,
  `storagePressure1` float DEFAULT NULL,
  `storagePressure2` float DEFAULT NULL,
  `gasifyPressure` float DEFAULT NULL,
  `gasifyTemperature` float DEFAULT NULL,
  `outValve1` varchar(255) DEFAULT NULL,
  `outValve2` varchar(255) DEFAULT NULL,
  `inValve1` varchar(255) DEFAULT NULL,
  `inValve2` varchar(255) DEFAULT NULL,
  `storageValve1` varchar(255) DEFAULT NULL,
  `storageValve2` varchar(255) DEFAULT NULL,
  `flowCutValve` varchar(255) DEFAULT NULL,
  `totalFlow` float DEFAULT NULL,
  `instantFlow` float DEFAULT NULL,
  `temperature1` float DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `temperature2` float DEFAULT NULL,
  `temperature3` float DEFAULT NULL,
  `fireDetector` varchar(255) DEFAULT NULL,
  `combustibleGasDetector` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `massFlow` float DEFAULT NULL,
  `volumeFlow` float DEFAULT NULL,
  `gaugedVolumeFlow` float DEFAULT NULL,
  `density` float DEFAULT NULL,
  `referenceDensity` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `pressure2` float DEFAULT NULL,
  `totalMassFlow` float DEFAULT NULL,
  `totalVolumeFlow` float DEFAULT NULL,
  `totalGaugedVolumeFlow` float DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `surplusFlow` float DEFAULT NULL,
  `rechargeTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_date_index` (`product_id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sensordata
-- ----------------------------
INSERT INTO `t_sensordata` VALUES ('301', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:38', null, null);
INSERT INTO `t_sensordata` VALUES ('302', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:38', null, null);
INSERT INTO `t_sensordata` VALUES ('303', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:38', null, null);
INSERT INTO `t_sensordata` VALUES ('304', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:38', null, null);
INSERT INTO `t_sensordata` VALUES ('305', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('306', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('307', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('308', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('309', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('310', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('311', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('312', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('313', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('314', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('315', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('316', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('317', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('318', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('319', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('320', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:39', null, null);
INSERT INTO `t_sensordata` VALUES ('321', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('322', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('323', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('324', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('325', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('326', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('327', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('328', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('329', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('330', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('331', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('332', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('333', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('334', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('335', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('336', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('337', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('338', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('339', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('340', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('341', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('342', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:40', null, null);
INSERT INTO `t_sensordata` VALUES ('343', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('344', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('345', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('346', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('347', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('348', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('349', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('350', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('351', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('352', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('353', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('354', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('355', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('356', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('357', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('358', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('359', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('360', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('361', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('362', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('363', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('364', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('365', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('366', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('367', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:41', null, null);
INSERT INTO `t_sensordata` VALUES ('368', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('369', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('370', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('371', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('372', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('373', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('374', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('375', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('376', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('377', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('378', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('379', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('380', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('381', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('382', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('383', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('384', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('385', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('386', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('387', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('388', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:42', null, null);
INSERT INTO `t_sensordata` VALUES ('389', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('390', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('391', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('392', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('393', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('394', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('395', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('396', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('397', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('398', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('399', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);
INSERT INTO `t_sensordata` VALUES ('400', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '1', '2016-12-04 16:28:43', null, null);

-- ----------------------------
-- Table structure for `t_sensordata_history`
-- ----------------------------
DROP TABLE IF EXISTS `t_sensordata_history`;
CREATE TABLE `t_sensordata_history` (
  `id` bigint(20) NOT NULL,
  `storageLiquidLevel1` float DEFAULT NULL,
  `storageLiquidLevel2` float DEFAULT NULL,
  `storagePressure1` float DEFAULT NULL,
  `storagePressure2` float DEFAULT NULL,
  `gasifyPressure` float DEFAULT NULL,
  `gasifyTemperature` float DEFAULT NULL,
  `outValve1` varchar(255) DEFAULT NULL,
  `outValve2` varchar(255) DEFAULT NULL,
  `inValve1` varchar(255) DEFAULT NULL,
  `inValve2` varchar(255) DEFAULT NULL,
  `storageValve1` varchar(255) DEFAULT NULL,
  `storageValve2` varchar(255) DEFAULT NULL,
  `flowCutValve` varchar(255) DEFAULT NULL,
  `totalFlow` float DEFAULT NULL,
  `instantFlow` float DEFAULT NULL,
  `temperature1` float DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `temperature2` float DEFAULT NULL,
  `temperature3` float DEFAULT NULL,
  `fireDetector` varchar(255) DEFAULT NULL,
  `combustibleGasDetector` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `massFlow` float DEFAULT NULL,
  `volumeFlow` float DEFAULT NULL,
  `gaugedVolumeFlow` float DEFAULT NULL,
  `density` float DEFAULT NULL,
  `referenceDensity` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `pressure2` float DEFAULT NULL,
  `totalMassFlow` float DEFAULT NULL,
  `totalVolumeFlow` float DEFAULT NULL,
  `totalGaugedVolumeFlow` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `surplusFlow` float DEFAULT NULL,
  `rechargeTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_date_index` (`date`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sensordata_history
-- ----------------------------
INSERT INTO `t_sensordata_history` VALUES ('2', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:24', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('3', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:24', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('4', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:24', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('5', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:24', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('6', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('7', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('8', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('9', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('10', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('11', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('12', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('13', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('14', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('15', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('16', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('17', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('18', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('19', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('20', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('21', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('22', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('23', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:25', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('24', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('25', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('26', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('27', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('28', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('29', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('30', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('31', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('32', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('33', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('34', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('35', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('36', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('37', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('38', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('39', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('40', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('41', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:26', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('42', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('43', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('44', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('45', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('46', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('47', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('48', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('49', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('50', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('51', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('52', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('53', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('54', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('55', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('56', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('57', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('58', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('59', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:27', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('60', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('61', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('62', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('63', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('64', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('65', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('66', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('67', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('68', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('69', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('70', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('71', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('72', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('73', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('74', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('75', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('76', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:28', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('77', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('78', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('79', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('80', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('81', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('82', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('83', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('84', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('85', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('86', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('87', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('88', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('89', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('90', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('91', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('92', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('93', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('94', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('95', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:29', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('96', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:30', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('97', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:30', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('98', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:30', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('99', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:30', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('100', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 15:43:30', '1', null, null);
INSERT INTO `t_sensordata_history` VALUES ('102', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('103', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('104', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('105', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('106', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('107', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('108', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('109', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('110', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('111', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('112', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('113', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:06', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('114', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('115', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('116', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('117', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('118', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('119', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('120', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('121', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('122', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('123', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('124', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('125', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('126', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('127', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('128', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:07', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('129', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('130', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('131', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('132', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('133', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('134', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('135', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('136', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('137', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('138', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('139', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('140', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('141', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('142', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('143', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('144', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('145', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('146', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('147', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('148', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:08', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('149', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('150', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('151', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('152', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('153', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('154', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('155', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('156', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('157', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('158', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('159', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('160', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('161', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('162', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('163', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('164', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('165', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('166', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('167', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('168', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('169', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('170', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('171', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('172', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('173', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('174', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:09', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('175', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('176', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('177', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('178', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('179', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('180', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('181', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('182', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('183', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('184', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('185', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('186', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('187', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('188', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('189', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('190', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('191', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('192', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('193', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('194', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('195', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('196', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('197', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('198', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('199', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
INSERT INTO `t_sensordata_history` VALUES ('200', '626.139', null, '2.1054', '6.80889', null, null, '开', '开', '关', '关', '关', '关', '关', null, null, null, null, null, null, null, null, '120.527', '30.9392', '8360.5', '18.5003', null, '453.12', null, '-140.644', null, '4332690', null, null, '2016-12-04 16:17:10', '0', null, null);
