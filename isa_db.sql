/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : isa_db

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 23/06/2020 17:15:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for campaigns
-- ----------------------------
DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE `campaigns`  (
  `campaign_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `starts_at` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ends_at` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`campaign_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of campaigns
-- ----------------------------
INSERT INTO `campaigns` VALUES (1, 'Tomb of Annihilation', 'Do you like dinosaurs? Good. How about a zombie Tyrannosaurus Rex? Excellent. We’ve found the campaign for you.', '08.06.2020.', '09.06.2020.');
INSERT INTO `campaigns` VALUES (2, 'Lost Mine of Phandelver', 'Ideal for both beginner players and DMs, Lost Mine of Phandelver is a mini campaign available with the fifth-edition Dungeons & Dragons starter set. ', '08.08.2020.', '09.08.2020.');
INSERT INTO `campaigns` VALUES (3, 'Kampanja', 'NEsto', '23.04.2019.', '25.04.2019.');
INSERT INTO `campaigns` VALUES (4, 'Curse of Strahd', 'An adaptation and expansion from 1st edition Dungeons & Dragons adventure module Ravenloft (which sees you storming a cursed castle overseen by a Dracula like figure), Curse of Strahd sees you trapped in Barovia.', '23.04.2019.', '25.04.2019.');
INSERT INTO `campaigns` VALUES (6, 'Lost Mine of Phandelver', 'Ideal for both beginner players and DMs, Lost Mine of Phandelver is a mini campaign available with the fifth-edition Dungeons & Dragons starter set. ', '23.04.2019.', '25.04.2019.');

-- ----------------------------
-- Table structure for campaigns_history
-- ----------------------------
DROP TABLE IF EXISTS `campaigns_history`;
CREATE TABLE `campaigns_history`  (
  `campaign_history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `history_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`campaign_history_id`) USING BTREE,
  INDEX `fk_campaigns_history_campaign_id`(`campaign_id`) USING BTREE,
  INDEX `fk_campaigns_history_history_id`(`history_id`) USING BTREE,
  CONSTRAINT `fk_campaigns_history_campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_campaigns_history_history_id` FOREIGN KEY (`history_id`) REFERENCES `history` (`history_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of campaigns_history
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `character_id` int(11) NOT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clas` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `race` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`character_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (5, '189', 'Paladin', 'Astrid', 'Dragonborn', 'andj98');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (7);
INSERT INTO `hibernate_sequence` VALUES (7);
INSERT INTO `hibernate_sequence` VALUES (7);
INSERT INTO `hibernate_sequence` VALUES (7);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lasted` int(10) NOT NULL,
  `camp_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 'Curse of Strahd', 2, 'An adaptation and expansion from 1st edition Dungeons & Dragons adventure module Ravenloft (which sees you storming a cursed castle overseen by a Dracula like figure), Curse of Strahd sees you trapped in Barovia.');
INSERT INTO `history` VALUES (2, 'Out of the Abyss', 1, 'Like a twisted Alice in Wonderland, this one takes you on a psychedelic adventure deep down into the Underdark - a series of tunnels that literally span continents. ');
INSERT INTO `history` VALUES (3, 'Baldur’s Gate: Descent into Avernus', 1, 'Perhaps the most heavy metal Dungeons and Dragons campaign ever, the recently released Baldur’s Gate: Descent into Avernus literally takes you to the Nine Hells and back. ');
INSERT INTO `history` VALUES (4, 'Storm King’s Thunder', 3, 'High fantasy has always been a staple with Dungeons & Dragons, and if that’s your happy place, this campaign set in the iciest regions of the Forgotten Realms is ideal for you.');
INSERT INTO `history` VALUES (5, 'Tales from the Yawning Portal', 2, 'This campaign collection contains seven of the deadliest dungeons to have emerged over the last 30 years of Dungeons & Dragons history.');
INSERT INTO `history` VALUES (6, 'Ghosts of Saltmarsh', 1, 'In this campaign, the sea is your foe. A series of excellent one-offs adapted into 5e from classic one-off nautical adventures from Dungeon magazine.');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `forename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `universe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Andjela', 'Jovanovic', 'andjela.jo998@gmail.com', 'andj98', '12345', 'Avernus');
INSERT INTO `users` VALUES (2, 'Marko', 'Zjalic', 'zija@gmail.com', 'zija97', '12345', 'Avernus');
INSERT INTO `users` VALUES (4, 'Test', 'Testic', 'test@gmail.com', 'test123', '1234', 'Astroneer');
INSERT INTO `users` VALUES (5, 'Test1', 'Test12', 'test123@gmail.com', 'test1234', 'test123456', 'Astroneer');
INSERT INTO `users` VALUES (6, 'User1', 'User1', 'user1@gmail.com', 'usr123', 'passed', 'Anhilion');

-- ----------------------------
-- Table structure for users_campaigns
-- ----------------------------
DROP TABLE IF EXISTS `users_campaigns`;
CREATE TABLE `users_campaigns`  (
  `user_campaign_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_campaign_id`) USING BTREE,
  INDEX `fk_users_campaigns_user_id`(`user_id`) USING BTREE,
  INDEX `fk_users_campaigns_campaign_id`(`campaign_id`) USING BTREE,
  CONSTRAINT `fk_users_campaigns_campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_users_campaigns_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users_campaigns
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
