-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for autoparts
CREATE DATABASE IF NOT EXISTS `autoparts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `autoparts`;

-- Dumping structure for table autoparts.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.admins: ~0 rows (approximately)
INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
	(1dealshop_dbdealshop_db, 'Super Admin', 'demo@gmail.com', 'admin', NULL, '5ff1c3531ed3f1609679699.jpg', '$2y$10$pxmd2FAYQ36rfDnjyYf23uhDVBlu8Tt52/n7SV5WfSQsDzMuPsH4W', NULL, '2023-04-07 02:37:56');

-- Dumping structure for table autoparts.admin_notifications
CREATE TABLE IF NOT EXISTS `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.admin_notifications: ~6 rows (approximately)
INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
	(1, 1, 'New member registered', 0, '/admin/customer/detail/1', '2023-04-20 01:15:17', '2023-04-20 01:15:17'),
	(2, 2, 'New member registered', 0, '/admin/customer/detail/2', '2023-04-20 02:03:10', '2023-04-20 02:03:10'),
	(3, 3, 'New member registered', 0, '/admin/customer/detail/3', '2023-04-20 02:36:33', '2023-04-20 02:36:33'),
	(4, 4, 'New member registered', 0, '/admin/customer/detail/4', '2023-04-25 02:19:00', '2023-04-25 02:19:00'),
	(5, 5, 'New member registered', 0, '/admin/customer/detail/5', '2023-04-25 08:26:00', '2023-04-25 08:26:00'),
	(6, 6, 'New member registered', 0, '/admin/customer/detail/6', '2023-04-28 01:40:21', '2023-04-28 01:40:21');

-- Dumping structure for table autoparts.admin_password_resets
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.admin_password_resets: ~0 rows (approximately)

-- Dumping structure for table autoparts.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `web_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.brands: ~0 rows (approximately)
INSERT INTO `brands` (`id`, `name`, `status`, `featured`, `web_url`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Oscar Durham', 1, 1, NULL, '6440c66ec61c01681966702.png', '2023-04-19 23:58:23', '2023-04-19 23:58:23');

-- Dumping structure for table autoparts.carts
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.carts: ~2 rows (approximately)
INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
	(1, 4, 1, 5, '2023-04-25 02:58:15', '2023-04-25 05:21:58'),
	(3, 5, 1, 1, '2023-04-29 01:58:27', '2023-04-29 04:19:44');

-- Dumping structure for table autoparts.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.categories: ~0 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `status`, `featured`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Fitzgerald Booth', 1, 1, '6440c650db00d1681966672.png', '2023-04-19 23:57:53', '2023-04-19 23:57:53');

-- Dumping structure for table autoparts.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount_type` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_order` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.coupons: ~0 rows (approximately)
INSERT INTO `coupons` (`id`, `name`, `discount`, `discount_type`, `start_date`, `end_date`, `min_order`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'special', 5.00000000, 1, '2023-04-01', '2023-05-06', 20.00000000, 1, '2023-04-29 04:19:24', '2023-04-29 04:19:24');

-- Dumping structure for table autoparts.deposits
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL,
  `method_code` int unsigned NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `method_currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `final_amo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `admin_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.deposits: ~0 rows (approximately)

-- Dumping structure for table autoparts.email_logs
CREATE TABLE IF NOT EXISTS `email_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `mail_sender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.email_logs: ~0 rows (approximately)

-- Dumping structure for table autoparts.email_sms_templates
CREATE TABLE IF NOT EXISTS `email_sms_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT '1',
  `sms_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.email_sms_templates: ~18 rows (approximately)
INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
	(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size="6"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size="4" color="#CC0000">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {"code":"Password Reset Code","ip":"IP of User","browser":"Browser of User","operating_system":"Operating System of User","time":"Request Time"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
	(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color="#FF0000"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{"ip":"IP of User","browser":"Browser of User","operating_system":"Operating System of User","time":"Request Time"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
	(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><img src="https://i.imgur.com/s2oFdLH.png" width="1186"><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size="6"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{"code":"Verification code"}', 1, 1, '2019-09-24 23:04:05', '2021-12-20 10:27:58'),
	(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{"code":"Verification code"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
	(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{"ip":"IP of User","browser":"Browser of User","operating_system":"Operating System of User","time":"Request Time"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
	(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{"ip":"IP of User","browser":"Browser of User","operating_system":"Operating System of User","time":"Request Time"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
	(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style="font-size: 11pt;" data-mce-style="font-size: 11pt;"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style="font-size: 11pt;" data-mce-style="font-size: 11pt;"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{"ticket_id":"Support Ticket ID", "ticket_subject":"Subject Of Support Ticket", "reply":"Reply from Staff/Admin","link":"Ticket URL For relpy"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
	(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#000000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size="5"><b><br></b></font></div><div><font size="5">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Deposit Method Name","method_currency":"Deposit Method Currency","method_amount":"Deposit Method Amount After Conversion", "post_balance":"Users Balance After this operation"}', 1, 1, '2020-06-24 18:00:00', '2020-11-17 03:10:00'),
	(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#FF0000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Deposit Method Name","method_currency":"Deposit Method Currency","method_amount":"Deposit Method Amount After Conversion"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
	(208, 'PAYMENT_APPROVE', 'Manual Payment- Admin Approved', 'Your Paymentis Approved', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Payment:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#FF0000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div>Order Number : {{order_no}}</div><div><font size="5"><b><br></b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}} Order No: {{order_no}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Payment Method Name","method_currency":"Payment Method Currency","method_amount":"Payment Method Amount After Conversion","order_no":"Order Number"}', 1, 1, '2020-06-16 18:00:00', '2022-04-03 04:45:09'),
	(209, 'PAYMENT_REJECT', 'Manual Payment- Admin Rejected', 'Your Payment Request is Rejected', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div>Order Number was : {{order_no}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><div><br></div>\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Payment Method Name","method_currency":"Payment Method Currency","method_amount":"Payment Method Amount After Conversion","rejection_message":"Rejection message","order_no":"Order Number"}', 1, 1, '2020-06-09 18:00:00', '2022-04-03 04:46:45'),
	(210, 'WITHDRAW_REQUEST', 'Withdraw Ãƒâ€šÃ‚Â - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#FF0000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size="4" color="#FF0000"><b><br></b></font></div><div><font size="4" color="#FF0000"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size="5"><b><br></b></font></div><div><font size="5"><b><br></b></font></div><div><font size="5">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} in {{delay}}. Trx: {{trx}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Deposit Method Name","method_currency":"Deposit Method Currency","method_amount":"Deposit Method Amount After Conversion", "post_balance":"Users Balance After this operation", "delay":"Delay time for processing"}', 1, 1, '2020-06-07 18:00:00', '2021-05-08 06:49:06'),
	(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#FF0000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size="3"><br></font></div><div><font size="3"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size="4">Details of Rejection :</font></div><div><font size="4"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Deposit Method Name","method_currency":"Deposit Method Currency","method_amount":"Deposit Method Amount After Conversion", "post_balance":"Users Balance After this operation", "admin_details":"Details Provided By Admin"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
	(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin Ãƒâ€šÃ‚Â Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color="#FF0000">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size="4">Details of Processed Payment :</font></div><div><font size="4"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{"trx":"Transaction Number","amount":"Request Amount By user","charge":"Gateway Charge","currency":"Site Currency","rate":"Conversion Rate","method_name":"Deposit Method Name","method_currency":"Deposit Method Currency","method_amount":"Deposit Method Amount After Conversion", "admin_details":"Details Provided By Admin"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
	(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size="3"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{"trx":"Transaction Number","amount":"Request Amount By Admin","currency":"Site Currency", "post_balance":"Users Balance After this operation"}', 1, 1, '2019-09-14 19:14:22', '2021-01-06 00:46:18'),
	(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size="3"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{"trx":"Transaction Number","amount":"Request Amount By Admin","currency":"Site Currency", "post_balance":"Users Balance After this operation"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
	(217, 'ORDER_COMPLETE', 'Order Completed', 'Order successfully completed', '<div>{{method_name}}</div><div>User Name : {{user_name}}</div><div>Order No:<b> {{order_no}}</b></div><div>Sub Total : <b>{{subtotal}} {{currency}}</b></div><div>Shipping Charge : <b>{{shipping_charge}} {{currency}}</b></div><div>Total:<b> {{total}} {{currency}}</b></div>', '{{method_name}}\r\nYour Order No {{order_no}}\r\nTotal Amount: {{total}} {{currency}}', '{"method_name":"Order successfully done via Cash on delivery","user_name":"Order By","currency":"Site Currency", "subtotal":"subtotal","shipping_charge":"Shipping charge amount","total":"Grand total amount","order_no":"Order Number"}', 1, 1, '2019-09-14 19:14:22', '2022-03-31 06:24:05'),
	(218, 'ORDER_STATUS', 'Order Status Change', 'Order status has changed successfully', '<div>{{method_name}}</div><div>User Name: {{user_name}} </div><div>Order No:<b> {{order_no}}</b></div>\r\n<div>Total Price:<b> {{total}} {{currency}}</b></div>', '{{method_name}}\r\nYour Order No {{order_no}}\r\nTotal Price:  {{total}} {{currency}}', '{"method_name":"Order status name","user_name":"Order Creator","order_no":"Order Number","total":"Total Order Price","currency":"Site Currency"}', 1, 1, '2019-09-14 19:14:22', '2022-03-30 11:25:09');

-- Dumping structure for table autoparts.extensions
CREATE TABLE IF NOT EXISTS `extensions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.extensions: ~5 rows (approximately)
INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];\r\n                        s1.async=true;\r\n                        s1.src="https://embed.tawk.to/{{app_key}}";\r\n                        s1.charset="UTF-8";\r\n                        s1.setAttribute("crossorigin","*");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{"app_key":{"title":"App Key","value":"------"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-05-18 05:37:12'),
	(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src="https://www.google.com/recaptcha/api.js"></script>\r\n<div class="g-recaptcha" data-sitekey="{{sitekey}}" data-callback="verifyCaptcha"></div>\r\n<div id="g-recaptcha-error"></div>', '{"sitekey":{"title":"Site Key","value":"------"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2022-04-20 00:07:29'),
	(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{"random_key":{"title":"Random String","value":"SecureString"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2022-04-03 09:52:12'),
	(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src="https://www.googletagmanager.com/gtag/js?id={{app_key}}"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag("js", new Date());\r\n                \r\n                  gtag("config", "{{app_key}}");\r\n                </script>', '{"app_key":{"title":"App Key","value":"------"}}', 'ganalytics.png', 0, NULL, NULL, '2021-05-04 10:19:12'),
	(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id="fb-root"></div><script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1"></script>', '{"app_key":{"title":"App Key","value":"----"}}', 'fb_com.PNG', 0, NULL, NULL, '2021-05-12 05:16:54');

-- Dumping structure for table autoparts.frontends
CREATE TABLE IF NOT EXISTS `frontends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.frontends: ~28 rows (approximately)
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
	(1, 'contact_us.content', '{"has_image":"1","title":"Get in Touch Us","subtitle":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit eveniet soluta, nihil est","contact_number":"123 - 456 - 7890","contact_email":"democompany@gmail.com","address":"15205 North Kierland Blvd.100 City House","image":"625b9b80865df1650170752.png"}', '2022-04-16 03:39:39', '2022-04-17 04:15:52'),
	(2, 'login.content', '{"has_image":"1","heading":"Login Account","sub_heading":"In publishing and graphic design, Lorem ipsum is a placeholder text commonly","image":"625b9ba957c7c1650170793.jpg"}', '2022-04-16 03:44:15', '2022-04-17 04:16:33'),
	(3, 'banner.element', '{"has_image":"1","url":"all\\/products","image":"625a6a43c0b401650092611.png"}', '2022-04-16 03:54:40', '2022-04-16 06:33:32'),
	(4, 'banner.element', '{"has_image":"1","url":"all\\/products","image":"625a6a4dabe5d1650092621.png"}', '2022-04-16 03:54:56', '2022-04-16 06:33:41'),
	(5, 'service.element', '{"has_image":["1"],"title":"Gift Voucher","short_detail":"Aliquam eleifend in elit congue","image":"625a68a6091f31650092198.png"}', '2022-04-16 06:26:38', '2022-04-16 06:26:38'),
	(6, 'service.element', '{"has_image":["1"],"title":"Online Support 24\\/7","short_detail":"Aliquam eleifend in elit congue","image":"625a68bcc362b1650092220.png"}', '2022-04-16 06:27:00', '2022-04-16 06:27:00'),
	(7, 'service.element', '{"has_image":["1"],"title":"Money Back Guarantee","short_detail":"Aliquam eleifend in elit congue","image":"625a68d5ec5f61650092245.png"}', '2022-04-16 06:27:25', '2022-04-16 06:27:25'),
	(8, 'service.element', '{"has_image":["1"],"title":"Free Shipping","short_detail":"Aliquam eleifend in elit congue","image":"625a68eb2e9c01650092267.png"}', '2022-04-16 06:27:47', '2022-04-16 06:27:47'),
	(9, 'footer.content', '{"subscribe_title":"Subscribe for new Offers and updates","connect_title":"To get updates follow us on Facebook, Twitters etc."}', '2022-04-16 06:31:58', '2022-04-16 06:31:58'),
	(10, 'footer.element', '{"has_image":"1","image":"625a69fa28d311650092538.jpg"}', '2022-04-16 06:32:18', '2022-04-16 06:32:18'),
	(11, 'footer.element', '{"has_image":"1","image":"625a6a00aed531650092544.jpg"}', '2022-04-16 06:32:24', '2022-04-16 06:32:24'),
	(12, 'footer.element', '{"has_image":"1","image":"625a6a055088d1650092549.jpg"}', '2022-04-16 06:32:29', '2022-04-16 06:32:29'),
	(13, 'footer.element', '{"has_image":"1","image":"625a6a0e01a801650092558.jpg"}', '2022-04-16 06:32:31', '2022-04-16 06:32:38'),
	(14, 'footer.element', '{"has_image":"1","image":"625a6a13582451650092563.jpg"}', '2022-04-16 06:32:43', '2022-04-16 06:32:43'),
	(15, 'footer.element', '{"has_image":"1","image":"625a6a185f49b1650092568.jpg"}', '2022-04-16 06:32:48', '2022-04-16 06:32:48'),
	(16, 'footer.element', '{"has_image":"1","image":"625a6a212b77b1650092577.jpg"}', '2022-04-16 06:32:57', '2022-04-16 06:32:57'),
	(17, 'footer.element', '{"has_image":"1","image":"625a6a2d3f64b1650092589.jpg"}', '2022-04-16 06:33:09', '2022-04-16 06:33:09'),
	(18, 'banner.element', '{"has_image":"1","url":"all\\/products","image":"625a6a544a59e1650092628.png"}', '2022-04-16 06:33:48', '2022-04-16 06:33:48'),
	(19, 'policy_pages.element', '{"title":"Privacy Policy","details":"<span style=\\"color:rgb(85,85,85);font-family:Monda, sans-serif;\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!<\\/span><br \\/>"}', '2022-04-16 06:37:53', '2022-04-16 06:37:53'),
	(20, 'policy_pages.element', '{"title":"Terms and Conditions","details":"<span style=\\"color:rgb(33,37,41);font-family:Monda, sans-serif;\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!<\\/span><br \\/>"}', '2022-04-16 06:38:04', '2022-04-16 06:38:04'),
	(21, 'policy_pages.element', '{"title":"Shipping and Delivery","details":"<span style=\\"color:rgb(33,37,41);font-family:Monda, sans-serif;\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!<\\/span><br \\/>"}', '2022-04-16 06:38:14', '2022-04-16 06:38:14'),
	(22, 'social_icon.element', '{"title":"Facebook","social_icon":"<i class=\\"lab la-facebook-f\\"><\\/i>","url":"https:\\/\\/www.facebook.com\\/"}', '2022-04-16 06:43:26', '2022-04-16 06:43:26'),
	(23, 'social_icon.element', '{"title":"Twitter","social_icon":"<i class=\\"lab la-twitter\\"><\\/i>","url":"https:\\/\\/www.twitter.com\\/"}', '2022-04-16 06:43:42', '2022-04-16 06:43:42'),
	(24, 'social_icon.element', '{"title":"Instagram","social_icon":"<i class=\\"fab fa-instagram\\"><\\/i>","url":"https:\\/\\/www.instagram.com\\/"}', '2022-04-16 06:44:04', '2022-04-16 06:44:04'),
	(25, 'social_icon.element', '{"title":"Linkedin","social_icon":"<i class=\\"fab fa-linkedin\\"><\\/i>","url":"https:\\/\\/www.linkedin.com\\/"}', '2022-04-16 06:44:25', '2022-04-16 06:44:25'),
	(26, 'register.content', '{"has_image":"1","heading":"Create Account","sub_heading":"In publishing and graphic design, Lorem ipsum is a placeholder text commonly","image":"625b9bc89c49f1650170824.jpg"}', '2022-04-17 04:17:04', '2022-04-17 04:17:04'),
	(27, 'cookie.data', '{"link":"#","description":"<font face=\\"Exo, sans-serif\\"><span style=\\"font-size: 18px;\\">We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.<\\/span><\\/font><br>","status":1}', NULL, NULL),
	(28, 'seo.data', '{"seo_image":"1","keywords":["Dealshop","e-commerce","online shopping platform"],"description":"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit","social_title":"DealShop - Online E-commerce Shopping Platform","social_description":"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff","image":"625e809260a151650360466.png"}', NULL, '2022-04-19 03:29:36');

-- Dumping structure for table autoparts.gateways
CREATE TABLE IF NOT EXISTS `gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `input_form` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.gateways: ~23 rows (approximately)
INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
	(1, 101, 'Paypal', 'Paypal', '5f6f1bd8678601601117144.jpg', 1, '{"paypal_email":{"title":"PayPal Email","global":true,"value":"sb-owud61543012@business.example.com"}}', '{"AUD":"AUD","BRL":"BRL","CAD":"CAD","CZK":"CZK","DKK":"DKK","EUR":"EUR","HKD":"HKD","HUF":"HUF","INR":"INR","ILS":"ILS","JPY":"JPY","MYR":"MYR","MXN":"MXN","TWD":"TWD","NZD":"NZD","NOK":"NOK","PHP":"PHP","PLN":"PLN","GBP":"GBP","RUB":"RUB","SGD":"SGD","SEK":"SEK","CHF":"CHF","THB":"THB","USD":"$"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
	(2, 102, 'Perfect Money', 'PerfectMoney', '5f6f1d2a742211601117482.jpg', 1, '{"passphrase":{"title":"ALTERNATE PASSPHRASE","global":true,"value":"hR26aw02Q1eEeUPSIfuwNypXX"},"wallet_id":{"title":"PM Wallet","global":false,"value":""}}', '{"USD":"$","EUR":"\\u20ac"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
	(3, 103, 'Stripe Hosted', 'Stripe', '5f6f1d4bc69e71601117515.jpg', 1, '{"secret_key":{"title":"Secret Key","global":true,"value":"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG"},"publishable_key":{"title":"PUBLISHABLE KEY","global":true,"value":"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM"}}', '{"USD":"USD","AUD":"AUD","BRL":"BRL","CAD":"CAD","CHF":"CHF","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","INR":"INR","JPY":"JPY","MXN":"MXN","MYR":"MYR","NOK":"NOK","NZD":"NZD","PLN":"PLN","SEK":"SEK","SGD":"SGD"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
	(4, 104, 'Skrill', 'Skrill', '5f6f1d41257181601117505.jpg', 1, '{"pay_to_email":{"title":"Skrill Email","global":true,"value":"merchant@skrill.com"},"secret_key":{"title":"Secret Key","global":true,"value":"---"}}', '{"AED":"AED","AUD":"AUD","BGN":"BGN","BHD":"BHD","CAD":"CAD","CHF":"CHF","CZK":"CZK","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","HRK":"HRK","HUF":"HUF","ILS":"ILS","INR":"INR","ISK":"ISK","JOD":"JOD","JPY":"JPY","KRW":"KRW","KWD":"KWD","MAD":"MAD","MYR":"MYR","NOK":"NOK","NZD":"NZD","OMR":"OMR","PLN":"PLN","QAR":"QAR","RON":"RON","RSD":"RSD","SAR":"SAR","SEK":"SEK","SGD":"SGD","THB":"THB","TND":"TND","TRY":"TRY","TWD":"TWD","USD":"USD","ZAR":"ZAR","COP":"COP"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
	(5, 105, 'PayTM', 'Paytm', '5f6f1d1d3ec731601117469.jpg', 1, '{"MID":{"title":"Merchant ID","global":true,"value":"DIY12386817555501617"},"merchant_key":{"title":"Merchant Key","global":true,"value":"bKMfNxPPf_QdZppa"},"WEBSITE":{"title":"Paytm Website","global":true,"value":"DIYtestingweb"},"INDUSTRY_TYPE_ID":{"title":"Industry Type","global":true,"value":"Retail"},"CHANNEL_ID":{"title":"CHANNEL ID","global":true,"value":"WEB"},"transaction_url":{"title":"Transaction URL","global":true,"value":"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction"},"transaction_status_url":{"title":"Transaction STATUS URL","global":true,"value":"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp"}}', '{"AUD":"AUD","ARS":"ARS","BDT":"BDT","BRL":"BRL","BGN":"BGN","CAD":"CAD","CLP":"CLP","CNY":"CNY","COP":"COP","HRK":"HRK","CZK":"CZK","DKK":"DKK","EGP":"EGP","EUR":"EUR","GEL":"GEL","GHS":"GHS","HKD":"HKD","HUF":"HUF","INR":"INR","IDR":"IDR","ILS":"ILS","JPY":"JPY","KES":"KES","MYR":"MYR","MXN":"MXN","MAD":"MAD","NPR":"NPR","NZD":"NZD","NGN":"NGN","NOK":"NOK","PKR":"PKR","PEN":"PEN","PHP":"PHP","PLN":"PLN","RON":"RON","RUB":"RUB","SGD":"SGD","ZAR":"ZAR","KRW":"KRW","LKR":"LKR","SEK":"SEK","CHF":"CHF","THB":"THB","TRY":"TRY","UGX":"UGX","UAH":"UAH","AED":"AED","GBP":"GBP","USD":"USD","VND":"VND","XOF":"XOF"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
	(6, 106, 'Payeer', 'Payeer', '5f6f1bc61518b1601117126.jpg', 0, '{"merchant_id":{"title":"Merchant ID","global":true,"value":"866989763"},"secret_key":{"title":"Secret key","global":true,"value":"7575"}}', '{"USD":"USD","EUR":"EUR","RUB":"RUB"}', 0, '{"status":{"title": "Status URL","value":"ipn.Payeer"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
	(7, 107, 'PayStack', 'Paystack', '5f7096563dfb71601214038.jpg', 1, '{"public_key":{"title":"Public key","global":true,"value":"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783"},"secret_key":{"title":"Secret key","global":true,"value":"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3"}}', '{"USD":"USD","NGN":"NGN"}', 0, '{"callback":{"title": "Callback URL","value":"ipn.Paystack"},"webhook":{"title": "Webhook URL","value":"ipn.Paystack"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
	(8, 108, 'VoguePay', 'Voguepay', '5f6f1d5951a111601117529.jpg', 1, '{"merchant_id":{"title":"MERCHANT ID","global":true,"value":"demo"}}', '{"USD":"USD","GBP":"GBP","EUR":"EUR","GHS":"GHS","NGN":"NGN","ZAR":"ZAR"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
	(9, 109, 'Flutterwave', 'Flutterwave', '5f6f1b9e4bb961601117086.jpg', 1, '{"public_key":{"title":"Public Key","global":true,"value":"----------------"},"secret_key":{"title":"Secret Key","global":true,"value":"-----------------------"},"encryption_key":{"title":"Encryption Key","global":true,"value":"------------------"}}', '{"BIF":"BIF","CAD":"CAD","CDF":"CDF","CVE":"CVE","EUR":"EUR","GBP":"GBP","GHS":"GHS","GMD":"GMD","GNF":"GNF","KES":"KES","LRD":"LRD","MWK":"MWK","MZN":"MZN","NGN":"NGN","RWF":"RWF","SLL":"SLL","STD":"STD","TZS":"TZS","UGX":"UGX","USD":"USD","XAF":"XAF","XOF":"XOF","ZMK":"ZMK","ZMW":"ZMW","ZWD":"ZWD"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
	(10, 110, 'RazorPay', 'Razorpay', '5f6f1d3672dd61601117494.jpg', 1, '{"key_id":{"title":"Key Id","global":true,"value":"rzp_test_kiOtejPbRZU90E"},"key_secret":{"title":"Key Secret ","global":true,"value":"osRDebzEqbsE1kbyQJ4y0re7"}}', '{"INR":"INR"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
	(11, 111, 'Stripe Storefront', 'StripeJs', '5f7096a31ed9a1601214115.jpg', 1, '{"secret_key":{"title":"Secret Key","global":true,"value":"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG"},"publishable_key":{"title":"PUBLISHABLE KEY","global":true,"value":"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM"}}', '{"USD":"USD","AUD":"AUD","BRL":"BRL","CAD":"CAD","CHF":"CHF","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","INR":"INR","JPY":"JPY","MXN":"MXN","MYR":"MYR","NOK":"NOK","NZD":"NZD","PLN":"PLN","SEK":"SEK","SGD":"SGD"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
	(12, 112, 'Instamojo', 'Instamojo', '5f6f1babbdbb31601117099.jpg', 1, '{"api_key":{"title":"API KEY","global":true,"value":"test_2241633c3bc44a3de84a3b33969"},"auth_token":{"title":"Auth Token","global":true,"value":"test_279f083f7bebefd35217feef22d"},"salt":{"title":"Salt","global":true,"value":"19d38908eeff4f58b2ddda2c6d86ca25"}}', '{"INR":"INR"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
	(13, 501, 'Blockchain', 'Blockchain', '5f6f1b2b20c6f1601116971.jpg', 1, '{"api_key":{"title":"API Key","global":true,"value":"55529946-05ca-48ff-8710-f279d86b1cc5"},"xpub_code":{"title":"XPUB CODE","global":true,"value":"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK"}}', '{"BTC":"BTC"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:25:00'),
	(14, 502, 'Block.io', 'Blockio', '5f6f19432bedf1601116483.jpg', 1, '{"api_key":{"title":"API Key","global":false,"value":"1658-8015-2e5e-9afb"},"api_pin":{"title":"API PIN","global":true,"value":"75757575"}}', '{"BTC":"BTC","LTC":"LTC"}', 1, '{"cron":{"title": "Cron URL","value":"ipn.Blockio"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:31:09'),
	(15, 503, 'CoinPayments', 'Coinpayments', '5f6f1b6c02ecd1601117036.jpg', 1, '{"public_key":{"title":"Public Key","global":true,"value":"---------------"},"private_key":{"title":"Private Key","global":true,"value":"------------"},"merchant_id":{"title":"Merchant ID","global":true,"value":"93a1e014c4ad60a7980b4a7239673cb4"}}', '{"BTC":"Bitcoin","BTC.LN":"Bitcoin (Lightning Network)","LTC":"Litecoin","CPS":"CPS Coin","VLX":"Velas","APL":"Apollo","AYA":"Aryacoin","BAD":"Badcoin","BCD":"Bitcoin Diamond","BCH":"Bitcoin Cash","BCN":"Bytecoin","BEAM":"BEAM","BITB":"Bean Cash","BLK":"BlackCoin","BSV":"Bitcoin SV","BTAD":"Bitcoin Adult","BTG":"Bitcoin Gold","BTT":"BitTorrent","CLOAK":"CloakCoin","CLUB":"ClubCoin","CRW":"Crown","CRYP":"CrypticCoin","CRYT":"CryTrExCoin","CURE":"CureCoin","DASH":"DASH","DCR":"Decred","DEV":"DeviantCoin","DGB":"DigiByte","DOGE":"Dogecoin","EBST":"eBoost","EOS":"EOS","ETC":"Ether Classic","ETH":"Ethereum","ETN":"Electroneum","EUNO":"EUNO","EXP":"EXP","Expanse":"Expanse","FLASH":"FLASH","GAME":"GameCredits","GLC":"Goldcoin","GRS":"Groestlcoin","KMD":"Komodo","LOKI":"LOKI","LSK":"LSK","MAID":"MaidSafeCoin","MUE":"MonetaryUnit","NAV":"NAV Coin","NEO":"NEO","NMC":"Namecoin","NVST":"NVO Token","NXT":"NXT","OMNI":"OMNI","PINK":"PinkCoin","PIVX":"PIVX","POT":"PotCoin","PPC":"Peercoin","PROC":"ProCurrency","PURA":"PURA","QTUM":"QTUM","RES":"Resistance","RVN":"Ravencoin","RVR":"RevolutionVR","SBD":"Steem Dollars","SMART":"SmartCash","SOXAX":"SOXAX","STEEM":"STEEM","STRAT":"STRAT","SYS":"Syscoin","TPAY":"TokenPay","TRIGGERS":"Triggers","TRX":" TRON","UBQ":"Ubiq","UNIT":"UniversalCurrency","USDT":"Tether USD (Omni Layer)","VTC":"Vertcoin","WAVES":"Waves","XCP":"Counterparty","XEM":"NEM","XMR":"Monero","XSN":"Stakenet","XSR":"SucreCoin","XVG":"VERGE","XZC":"ZCoin","ZEC":"ZCash","ZEN":"Horizen"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:14'),
	(16, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '5f6f1b94e9b2b1601117076.jpg', 1, '{"merchant_id":{"title":"Merchant ID","global":true,"value":"6515561"}}', '{"USD":"USD","AUD":"AUD","BRL":"BRL","CAD":"CAD","CHF":"CHF","CLP":"CLP","CNY":"CNY","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","INR":"INR","ISK":"ISK","JPY":"JPY","KRW":"KRW","NZD":"NZD","PLN":"PLN","RUB":"RUB","SEK":"SEK","SGD":"SGD","THB":"THB","TWD":"TWD"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
	(17, 505, 'Coingate', 'Coingate', '5f6f1b5fe18ee1601117023.jpg', 1, '{"api_key":{"title":"API Key","global":true,"value":"6354mwVCEw5kHzRJ6thbGo-N"}}', '{"USD":"USD","EUR":"EUR"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:49:30'),
	(18, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '5f6f1b4c774af1601117004.jpg', 1, '{"api_key":{"title":"API Key","global":true,"value":"c47cd7df-d8e8-424b-a20a"},"secret":{"title":"Webhook Shared Secret","global":true,"value":"55871878-2c32-4f64-ab66"}}', '{"USD":"USD","EUR":"EUR","JPY":"JPY","GBP":"GBP","AUD":"AUD","CAD":"CAD","CHF":"CHF","CNY":"CNY","SEK":"SEK","NZD":"NZD","MXN":"MXN","SGD":"SGD","HKD":"HKD","NOK":"NOK","KRW":"KRW","TRY":"TRY","RUB":"RUB","INR":"INR","BRL":"BRL","ZAR":"ZAR","AED":"AED","AFN":"AFN","ALL":"ALL","AMD":"AMD","ANG":"ANG","AOA":"AOA","ARS":"ARS","AWG":"AWG","AZN":"AZN","BAM":"BAM","BBD":"BBD","BDT":"BDT","BGN":"BGN","BHD":"BHD","BIF":"BIF","BMD":"BMD","BND":"BND","BOB":"BOB","BSD":"BSD","BTN":"BTN","BWP":"BWP","BYN":"BYN","BZD":"BZD","CDF":"CDF","CLF":"CLF","CLP":"CLP","COP":"COP","CRC":"CRC","CUC":"CUC","CUP":"CUP","CVE":"CVE","CZK":"CZK","DJF":"DJF","DKK":"DKK","DOP":"DOP","DZD":"DZD","EGP":"EGP","ERN":"ERN","ETB":"ETB","FJD":"FJD","FKP":"FKP","GEL":"GEL","GGP":"GGP","GHS":"GHS","GIP":"GIP","GMD":"GMD","GNF":"GNF","GTQ":"GTQ","GYD":"GYD","HNL":"HNL","HRK":"HRK","HTG":"HTG","HUF":"HUF","IDR":"IDR","ILS":"ILS","IMP":"IMP","IQD":"IQD","IRR":"IRR","ISK":"ISK","JEP":"JEP","JMD":"JMD","JOD":"JOD","KES":"KES","KGS":"KGS","KHR":"KHR","KMF":"KMF","KPW":"KPW","KWD":"KWD","KYD":"KYD","KZT":"KZT","LAK":"LAK","LBP":"LBP","LKR":"LKR","LRD":"LRD","LSL":"LSL","LYD":"LYD","MAD":"MAD","MDL":"MDL","MGA":"MGA","MKD":"MKD","MMK":"MMK","MNT":"MNT","MOP":"MOP","MRO":"MRO","MUR":"MUR","MVR":"MVR","MWK":"MWK","MYR":"MYR","MZN":"MZN","NAD":"NAD","NGN":"NGN","NIO":"NIO","NPR":"NPR","OMR":"OMR","PAB":"PAB","PEN":"PEN","PGK":"PGK","PHP":"PHP","PKR":"PKR","PLN":"PLN","PYG":"PYG","QAR":"QAR","RON":"RON","RSD":"RSD","RWF":"RWF","SAR":"SAR","SBD":"SBD","SCR":"SCR","SDG":"SDG","SHP":"SHP","SLL":"SLL","SOS":"SOS","SRD":"SRD","SSP":"SSP","STD":"STD","SVC":"SVC","SYP":"SYP","SZL":"SZL","THB":"THB","TJS":"TJS","TMT":"TMT","TND":"TND","TOP":"TOP","TTD":"TTD","TWD":"TWD","TZS":"TZS","UAH":"UAH","UGX":"UGX","UYU":"UYU","UZS":"UZS","VEF":"VEF","VND":"VND","VUV":"VUV","WST":"WST","XAF":"XAF","XAG":"XAG","XAU":"XAU","XCD":"XCD","XDR":"XDR","XOF":"XOF","XPD":"XPD","XPF":"XPF","XPT":"XPT","YER":"YER","ZMW":"ZMW","ZWL":"ZWL"}\r\n\r\n', 0, '{"endpoint":{"title": "Webhook Endpoint","value":"ipn.CoinbaseCommerce"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
	(24, 113, 'Paypal Express', 'PaypalSdk', '5f6f1bec255c61601117164.jpg', 1, '{"clientId":{"title":"Paypal Client ID","global":true,"value":"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken"},"clientSecret":{"title":"Client Secret","global":true,"value":"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA"}}', '{"AUD":"AUD","BRL":"BRL","CAD":"CAD","CZK":"CZK","DKK":"DKK","EUR":"EUR","HKD":"HKD","HUF":"HUF","INR":"INR","ILS":"ILS","JPY":"JPY","MYR":"MYR","MXN":"MXN","TWD":"TWD","NZD":"NZD","NOK":"NOK","PHP":"PHP","PLN":"PLN","GBP":"GBP","RUB":"RUB","SGD":"SGD","SEK":"SEK","CHF":"CHF","THB":"THB","USD":"$"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
	(25, 114, 'Stripe Checkout', 'StripeV3', '5f709684736321601214084.jpg', 1, '{"secret_key":{"title":"Secret Key","global":true,"value":"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG"},"publishable_key":{"title":"PUBLISHABLE KEY","global":true,"value":"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM"},"end_point":{"title":"End Point Secret","global":true,"value":"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5"}}', '{"USD":"USD","AUD":"AUD","BRL":"BRL","CAD":"CAD","CHF":"CHF","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","INR":"INR","JPY":"JPY","MXN":"MXN","MYR":"MYR","NOK":"NOK","NZD":"NZD","PLN":"PLN","SEK":"SEK","SGD":"SGD"}', 0, '{"webhook":{"title": "Webhook Endpoint","value":"ipn.StripeV3"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
	(27, 115, 'Mollie', 'Mollie', '5f6f1bb765ab11601117111.jpg', 1, '{"mollie_email":{"title":"Mollie Email ","global":true,"value":"vi@gmail.com"},"api_key":{"title":"API KEY","global":true,"value":"test_cucfwKTWfft9s337qsVfn5CC4vNkrn"}}', '{"AED":"AED","AUD":"AUD","BGN":"BGN","BRL":"BRL","CAD":"CAD","CHF":"CHF","CZK":"CZK","DKK":"DKK","EUR":"EUR","GBP":"GBP","HKD":"HKD","HRK":"HRK","HUF":"HUF","ILS":"ILS","ISK":"ISK","JPY":"JPY","MXN":"MXN","MYR":"MYR","NOK":"NOK","NZD":"NZD","PHP":"PHP","PLN":"PLN","RON":"RON","RUB":"RUB","SEK":"SEK","SGD":"SGD","THB":"THB","TWD":"TWD","USD":"USD","ZAR":"ZAR"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
	(30, 116, 'Cashmaal', 'Cashmaal', '60d1a0b7c98311624350903.png', 1, '{"web_id":{"title":"Web Id","global":true,"value":"3748"},"ipn_key":{"title":"IPN Key","global":true,"value":"546254628759524554647987"}}', '{"PKR":"PKR","USD":"USD"}', 0, '{"webhook":{"title": "IPN URL","value":"ipn.Cashmaal"}}', NULL, NULL, NULL, '2021-06-22 08:05:04'),
	(36, 119, 'Mercado Pago', 'MercadoPago', '60f2ad85a82951626516869.png', 1, '{"access_token":{"title":"Access Token","global":true,"value":"3Vee5S2F"}}', '{"USD":"USD","CAD":"CAD","CHF":"CHF","DKK":"DKK","EUR":"EUR","GBP":"GBP","NOK":"NOK","PLN":"PLN","SEK":"SEK","AUD":"AUD","NZD":"NZD"}', 0, NULL, NULL, NULL, NULL, '2021-07-17 09:44:29');

-- Dumping structure for table autoparts.gateway_currencies
CREATE TABLE IF NOT EXISTS `gateway_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int DEFAULT NULL,
  `gateway_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.gateway_currencies: ~0 rows (approximately)

-- Dumping structure for table autoparts.general_settings
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `display_stock` tinyint(1) NOT NULL DEFAULT '0',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.general_settings: ~0 rows (approximately)
INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `agree`, `display_stock`, `registration`, `active_template`, `sys_version`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
	(1, 'DealShop', 'USD', '$', 'do-not-reply@viserlab.com', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv="X-UA-Compatible" content="IE=edge">\r\n  <!--<![endif]-->\r\n  <meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n  <title></title>\r\n  <style type="text/css">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class="table-inner"] { width: 90% !important; text-align: center !important; }\r\n*[class="table-full"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class="img1"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor="#414a51" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">\r\n    <tbody><tr>\r\n      <td height="50"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align="center" style="text-align:center;vertical-align:top;font-size:0;">\r\n        <table align="center" border="0" cellpadding="0" cellspacing="0">\r\n          <tbody><tr>\r\n            <td align="center" width="600">\r\n              <!--header-->\r\n              <table class="table-inner" width="95%" border="0" align="center" cellpadding="0" cellspacing="0">\r\n                <tbody><tr>\r\n                  <td bgcolor="#0087ff" style="border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;" align="center">\r\n                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">\r\n                      <tbody><tr>\r\n                        <td height="20"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align="center" style="font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height="20"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class="table-inner" width="95%" border="0" cellspacing="0" cellpadding="0">\r\n                <tbody><tr>\r\n                  <td bgcolor="#FFFFFF" align="center" style="text-align:center;vertical-align:top;font-size:0;">\r\n                    <table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">\r\n                      <tbody><tr>\r\n                        <td height="35"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align="center" style="vertical-align:top;font-size:0;">\r\n                          <a href="#">\r\n                            <img style="display:block; line-height:0px; font-size:0px; border:0px;" src="https://i.imgur.com/Z1qtvtV.png" alt="img">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height="40"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align="center" style="font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align="center" style="text-align:center;vertical-align:top;font-size:0;">\r\n                          <table width="40" border="0" align="center" cellpadding="0" cellspacing="0">\r\n                            <tbody><tr>\r\n                              <td height="20" style=" border-bottom:3px solid #0087ff;"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height="20"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align="left" style="font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height="40"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height="45" align="center" bgcolor="#f4f4f4" style="border-bottom-left-radius:6px;border-bottom-right-radius:6px;">\r\n                    <table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">\r\n                      <tbody><tr>\r\n                        <td height="10"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class="preference-link" align="center" style="font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;">\r\n                          Ãƒâ€šÃ‚Â© 2021 <a href="#">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height="10"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height="60"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{name}}, {{message}}', '042f88', '1c629d', '{"name":"php"}', '{"clickatell_api_key":"----------------------------","infobip_username":"--------------","infobip_password":"----------------------","message_bird_api_key":"-------------------","nexmo_api_key":"----------------------","nexmo_api_secret":"----------------------","sms_broadcast_username":"----------------------","sms_broadcast_password":"-----------------------------","account_sid":"-----------------------","auth_token":"---------------------------","from":"----------------------","text_magic_username":"-----------------------","apiv2_key":"-------------------------------","name":"clickatell"}', 0, 1, 0, 0, 0, 0, 1, 1, 1, 'basic', NULL, 20.00000000, 1, NULL, '2022-04-20 00:13:44');

-- Dumping structure for table autoparts.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.languages: ~3 rows (approximately)
INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
	(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2022-01-12 08:17:47'),
	(5, 'Hindi', 'hn', NULL, 0, 0, '2020-12-29 02:20:07', '2022-01-12 08:17:47'),
	(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2021-05-12 05:34:06');

-- Dumping structure for table autoparts.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.migrations: ~0 rows (approximately)

-- Dumping structure for table autoparts.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `shipping_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `coupon_id` int NOT NULL DEFAULT '0',
  `shipping_id` int NOT NULL DEFAULT '0',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0: pending\r\n 1: success\r\n 9: cancel',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: pending\r\n1: confirm\r\n2: shipped\r\n3: delivered\r\n9: cancel\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.orders: ~0 rows (approximately)

-- Dumping structure for table autoparts.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.order_details: ~0 rows (approximately)

-- Dumping structure for table autoparts.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.pages: ~3 rows (approximately)
INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
	(1, 'HOME', 'home', 'templates.basic.', '["advertise"]', 1, '2020-07-11 06:23:58', '2022-03-02 10:10:08'),
	(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-10-22 01:14:43'),
	(5, 'Contact', 'contact', 'templates.basic.', '["feature"]', 1, '2020-10-22 01:14:53', '2022-01-12 11:07:51');

-- Dumping structure for table autoparts.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.password_resets: ~0 rows (approximately)

-- Dumping structure for table autoparts.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sku` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `quantity` int NOT NULL DEFAULT '0',
  `avg_rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `discount_type` tinyint(1) NOT NULL DEFAULT '0',
  `hot_deals` tinyint(1) NOT NULL DEFAULT '0',
  `featured_product` tinyint(1) NOT NULL DEFAULT '0',
  `today_deals` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:off\r\n1:on\r\n',
  `sale_count` int NOT NULL DEFAULT '0',
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_item` tinyint(1) NOT NULL DEFAULT '0',
  `file_type` tinyint(1) DEFAULT '0',
  `digi_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digi_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.products: ~0 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `name`, `product_sku`, `slug`, `price`, `quantity`, `avg_rate`, `discount`, `discount_type`, `hot_deals`, `featured_product`, `today_deals`, `status`, `sale_count`, `summary`, `description`, `features`, `image`, `files`, `digital_item`, `file_type`, `digi_file`, `digi_link`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 'Cameran Dominguez', 'Ipsa nobis labore s', 'cameran-dominguez', 600.00000000, 891, 0.00000000, 36.00000000, 1, 1, 1, 1, 1, 0, 'Recusandae Tempora', 'Officia voluptas odi.', '[]', '6440c6838ac0f1681966723.png', NULL, 0, NULL, '', NULL, '2023-04-19 23:58:43', '2023-04-19 23:58:43'),
	(2, 1, 1, 1, 'Daria Mccray', 'Qui quo rerum proide', 'daria-mccray', 520.00000000, 929, 0.00000000, 44.00000000, 2, 0, 0, 0, 1, 0, 'Dolore minima volupt', 'Voluptas ex aut sunt.', '[]', '6458a4ead33f01683530986.jpg', NULL, 0, NULL, '', NULL, '2023-05-08 02:29:48', '2023-05-08 02:29:48');

-- Dumping structure for table autoparts.product_galleries
CREATE TABLE IF NOT EXISTS `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.product_galleries: ~0 rows (approximately)

-- Dumping structure for table autoparts.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `stars` tinyint NOT NULL DEFAULT '0',
  `review_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.reviews: ~0 rows (approximately)

-- Dumping structure for table autoparts.shipping_methods
CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.shipping_methods: ~0 rows (approximately)

-- Dumping structure for table autoparts.subscribers
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.subscribers: ~0 rows (approximately)

-- Dumping structure for table autoparts.sub_categories
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.sub_categories: ~0 rows (approximately)
INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'test', 1, '2023-04-19 23:58:04', '2023-04-19 23:58:04');

-- Dumping structure for table autoparts.support_attachments
CREATE TABLE IF NOT EXISTS `support_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_message_id` int unsigned NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.support_attachments: ~0 rows (approximately)

-- Dumping structure for table autoparts.support_messages
CREATE TABLE IF NOT EXISTS `support_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `supportticket_id` int unsigned NOT NULL DEFAULT '0',
  `admin_id` int unsigned NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.support_messages: ~0 rows (approximately)

-- Dumping structure for table autoparts.support_tickets
CREATE TABLE IF NOT EXISTS `support_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.support_tickets: ~0 rows (approximately)

-- Dumping structure for table autoparts.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.transactions: ~0 rows (approximately)

-- Dumping structure for table autoparts.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.users: ~5 rows (approximately)
INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `country_code`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'usera', 'pannels', 'admin21', 'admin221@admin.com', 'AF', '93456756442', 0, 0.00000000, '$2y$10$07f.FrVOIgrv9PkYi4zh8O.hiVQ/jWbBBPArmdHl6cA0prFGLxkya', NULL, '{"address":"","state":"","zip":"","country":"Afghanistan","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-20 01:15:17', '2023-04-20 01:15:17'),
	(2, 'user12', 'pannel', 'user312', 'admin@admin.com', 'AF', '938798798798', 0, 0.00000000, '$2y$10$wPPyTB6wFZoQTBN3qm2zme/ofmwoZEA9/Ybf7hENR05mqqKIuRRS6', NULL, '{"address":"","state":"","zip":"","country":"Afghanistan","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-20 02:03:10', '2023-04-20 02:03:10'),
	(3, 'user', 'pannel', 'admin122', 'admin@admingmail.com', 'PK', '923218969512', 0, 0.00000000, '$2y$10$FpvKyXc.AvKt3gG7gRSp5O1ESRGOzOOZR/a/zRT2MqOgkAR58sGyy', NULL, '{"address":"","state":"","zip":"","country":"Pakistan","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-20 02:36:33', '2023-04-20 02:36:33'),
	(4, 'user', 'pannel', 'admin1221', 'admin12@admin.com', 'PK', '923218969504', 0, 0.00000000, '$2y$10$Vlp4huJ1jKcL73icReu/fuiAnZpuOl8tNSSFOjDMvKfahBC/I0ZW6', NULL, '{"address":"","state":"","zip":"","country":"Pakistan","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-25 02:19:00', '2023-04-25 02:19:00'),
	(5, 'user', 'pannel', 'admin111', 'admin43@admin.com', 'AF', '933218969503', 0, 0.00000000, '$2y$10$eMuj7yWeoq8kRklum7liUeOSgG3FfyD0pHFzLtbC8HiCXuLrXc292', NULL, '{"address":"","state":"","zip":"","country":"Afghanistan","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-25 08:26:00', '2023-04-25 08:26:00'),
	(6, 'user', 'pannel', 'admin546', 'admin1212@gmail.com', 'BO', '5913218969504', 0, 0.00000000, '$2y$10$hJuiEhhCt/TFZ6TVyu0B4elO7OPCtpfxpH4VfUIoOgHASvmiHGf16', NULL, '{"address":"","state":"","zip":"","country":"Plurinational State of Bolivia","city":""}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-04-28 01:40:20', '2023-04-28 01:40:20');

-- Dumping structure for table autoparts.user_logins
CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.user_logins: ~5 rows (approximately)
INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
	(1, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-20 01:15:17', '2023-04-20 01:15:17'),
	(2, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-20 02:03:10', '2023-04-20 02:03:10'),
	(3, 3, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-20 02:36:33', '2023-04-20 02:36:33'),
	(4, 4, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-25 02:19:00', '2023-04-25 02:19:00'),
	(5, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-25 08:26:01', '2023-04-25 08:26:01'),
	(6, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-26 06:30:21', '2023-04-26 06:30:21'),
	(7, 6, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-28 01:40:22', '2023-04-28 01:40:22'),
	(8, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-29 00:48:41', '2023-04-29 00:48:41'),
	(9, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2023-04-29 01:57:37', '2023-04-29 01:57:37');

-- Dumping structure for table autoparts.wishlists
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.wishlists: ~0 rows (approximately)

-- Dumping structure for table autoparts.withdrawals
CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `after_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `withdraw_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.withdrawals: ~0 rows (approximately)

-- Dumping structure for table autoparts.withdraw_methods
CREATE TABLE IF NOT EXISTS `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT '0.00000000',
  `max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `delay` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `rate` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table autoparts.withdraw_methods: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
dealshop_db