-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `logicsfort_categories`;
CREATE TABLE `logicsfort_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_categories` (`id`, `name`, `created_at`) VALUES
(22,	'Milk Products',	'2020-10-07 21:45:01');

DROP TABLE IF EXISTS `logicsfort_categorie_expences`;
CREATE TABLE `logicsfort_categorie_expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_combo_items`;
CREATE TABLE `logicsfort_combo_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_customers`;
CREATE TABLE `logicsfort_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_expences`;
CREATE TABLE `logicsfort_expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_expences` (`id`, `date`, `reference`, `note`, `amount`, `attachment`, `created_date`, `category_id`, `store_id`, `created_by`) VALUES
(16,	'2020-10-10',	'Electric Bill',	'',	5000,	'',	'2020-10-07 19:02:49',	0,	1,	1);

DROP TABLE IF EXISTS `logicsfort_holds`;
CREATE TABLE `logicsfort_holds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_holds` (`id`, `number`, `time`, `register_id`, `table_id`, `waiter_id`, `customer_id`) VALUES
(269,	1,	'17:24',	61,	0,	0,	0);

DROP TABLE IF EXISTS `logicsfort_payements`;
CREATE TABLE `logicsfort_payements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_posales`;
CREATE TABLE `logicsfort_posales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_posales` (`id`, `product_id`, `name`, `price`, `qt`, `status`, `register_id`, `number`, `table_id`, `options`, `time`) VALUES
(1580,	156,	'Yogurt',	110,	2,	1,	61,	1,	0,	NULL,	'2020-10-15 17:26:54'),
(1579,	155,	'Milk',	90,	2,	1,	61,	1,	0,	NULL,	'2020-10-15 17:26:55');

DROP TABLE IF EXISTS `logicsfort_products`;
CREATE TABLE `logicsfort_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(155,	'1',	'Milk',	'Milk Products',	70,	'0',	'',	90,	'3f3969f858d98ad6d23e84495989e55d.jpg',	'3f3969f858d98ad6d23e84495989e55d_thumb.jpg',	'color01',	'2020-10-07 21:47:55',	'2020-10-07 21:47:54',	0,	1,	'Supplier',	'1',	0,	NULL,	''),
(156,	'2',	'Yogurt',	'Milk Products',	70,	'0',	'',	110,	'7ff9aea2c8d886cdba0021768c3e425c.jpg',	'7ff9aea2c8d886cdba0021768c3e425c_thumb.jpg',	'color02',	'2020-10-07 22:29:50',	'2020-10-07 22:29:50',	0,	1,	'Supplier',	'1',	0,	NULL,	'');

DROP TABLE IF EXISTS `logicsfort_purchases`;
CREATE TABLE `logicsfort_purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` mediumtext,
  `modified_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_purchase_items`;
CREATE TABLE `logicsfort_purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_registers`;
CREATE TABLE `logicsfort_registers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60,	'2020-10-07 16:43:28',	0,	1,	1540,	500,	0,	0,	0,	0,	5000,	'jhjg',	'2020-10-08 03:40:26',	1,	1,	''),
(61,	'2020-10-07 22:40:48',	1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	4000,	NULL,	NULL,	NULL,	1,	'');

DROP TABLE IF EXISTS `logicsfort_sales`;
CREATE TABLE `logicsfort_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`, `waiter_id`) VALUES
(35,	0,	'Walk in Customer',	'0',	'',	'400',	400,	'2020-10-07',	NULL,	0,	'admin Doe',	4,	'500',	'0',	0,	0,	60,	400,	0),
(36,	0,	'Walk in Customer',	'0',	'',	'0',	0,	'2020-10-07',	NULL,	1,	'admin Doe',	0,	'0',	'0',	0,	0,	60,	0,	0),
(37,	0,	'Walk in Customer',	'0',	'',	'90',	90,	'2020-10-07',	NULL,	0,	'admin Doe',	1,	'90',	'0',	0,	0,	60,	90,	0),
(38,	0,	'Walk in Customer',	'0',	'',	'180',	180,	'2020-10-07',	NULL,	0,	'admin Doe',	2,	'180',	'0',	0,	0,	60,	180,	0),
(39,	0,	'Walk in Customer',	'0',	'',	'110',	110,	'2020-10-07',	NULL,	0,	'admin Doe',	1,	'110',	'0',	0,	0,	60,	110,	0),
(40,	0,	'Walk in Customer',	'0',	'',	'200',	200,	'2020-10-07',	NULL,	0,	'admin Doe',	2,	'200',	'0',	0,	0,	60,	200,	0),
(41,	0,	'Walk in Customer',	'0',	'',	'560',	560,	'2020-10-08',	NULL,	0,	'admin Doe',	6,	'1000',	'0',	0,	0,	60,	560,	0),
(42,	0,	'Walk in Customer',	'0',	'',	'1890',	1890,	'2020-10-08',	NULL,	0,	'admin Doe',	19,	'2000',	'0',	0,	0,	61,	1890,	0),
(43,	0,	'Walk in Customer',	'0',	'',	'490',	490,	'2020-10-08',	NULL,	0,	'admin Doe',	5,	'490',	'0',	0,	0,	61,	490,	0),
(44,	0,	'Walk in Customer',	'0',	'',	'0',	0,	'2020-10-08',	NULL,	1,	'admin Doe',	0,	'0',	'0',	0,	0,	61,	0,	0),
(45,	0,	'Walk in Customer',	'0',	'',	'310',	310,	'2020-10-08',	NULL,	0,	'admin Doe',	3,	'310',	'0',	0,	0,	61,	310,	0),
(46,	0,	'Walk in Customer',	'0',	'',	'0',	0,	'2020-10-08',	NULL,	1,	'admin Doe',	0,	'0',	'0',	0,	0,	61,	0,	0),
(47,	0,	'Walk in Customer',	'0',	'',	'420',	420,	'2020-10-08',	NULL,	0,	'admin Doe',	4,	'420',	'0',	0,	0,	61,	420,	0),
(48,	0,	'Walk in Customer',	'0',	'',	'0',	0,	'2020-10-12',	NULL,	1,	'admin Doe',	0,	'0',	'0',	0,	0,	61,	0,	0),
(49,	0,	'Walk in Customer',	'0',	'',	'0',	0,	'2020-10-12',	NULL,	1,	'admin Doe',	0,	'0',	'0',	0,	0,	61,	0,	0),
(50,	0,	'Walk in Customer',	'0',	'',	'200',	200,	'2020-10-15',	NULL,	0,	'admin Doe',	2,	'200',	'0',	0,	0,	61,	200,	0);

DROP TABLE IF EXISTS `logicsfort_sale_items`;
CREATE TABLE `logicsfort_sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1023,	35,	156,	'Yogurt',	110,	2,	'220',	'2020-10-07'),
(1024,	35,	155,	'Milk',	90,	2,	'180',	'2020-10-07'),
(1025,	37,	155,	'Milk',	90,	1,	'90',	'2020-10-07'),
(1026,	38,	155,	'Milk',	90,	2,	'180',	'2020-10-07'),
(1027,	39,	156,	'Yogurt',	110,	1,	'110',	'2020-10-07'),
(1028,	40,	156,	'Yogurt',	110,	1,	'110',	'2020-10-07'),
(1029,	40,	155,	'Milk',	90,	1,	'90',	'2020-10-07'),
(1030,	41,	156,	'Yogurt',	110,	1,	'110',	'2020-10-08'),
(1031,	41,	155,	'Milk',	90,	5,	'450',	'2020-10-08'),
(1032,	42,	155,	'Milk',	90,	10,	'900',	'2020-10-08'),
(1033,	42,	156,	'Yogurt',	110,	9,	'990',	'2020-10-08'),
(1034,	43,	156,	'Yogurt',	110,	2,	'220',	'2020-10-08'),
(1035,	43,	155,	'Milk',	90,	3,	'270',	'2020-10-08'),
(1036,	45,	156,	'Yogurt',	110,	2,	'220',	'2020-10-08'),
(1037,	45,	155,	'Milk',	90,	1,	'90',	'2020-10-08'),
(1038,	47,	156,	'Yogurt',	110,	3,	'330',	'2020-10-08'),
(1039,	47,	155,	'Milk',	90,	1,	'90',	'2020-10-08'),
(1040,	50,	156,	'Yogurt',	110,	1,	'110',	'2020-10-15'),
(1041,	50,	155,	'Milk',	90,	1,	'90',	'2020-10-15');

DROP TABLE IF EXISTS `logicsfort_settings`;
CREATE TABLE `logicsfort_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1,	'Logics Fort',	NULL,	'+92 305 4348474',	'PKR',	1,	NULL,	'Thank you for your business',	'Light',	NULL,	'0',	'Asia/Karachi',	'english',	0,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `logicsfort_stocks`;
CREATE TABLE `logicsfort_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(60,	155,	NULL,	1,	NULL,	973,	90),
(61,	156,	NULL,	1,	NULL,	978,	110);

DROP TABLE IF EXISTS `logicsfort_stores`;
CREATE TABLE `logicsfort_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(1,	'Modern Milk Shop ',	'info@modernmilkshop.com',	'+92 305 4348474',	'Huma Block Allama Iqbal Town, Lahore, 54570',	'Powered by Logics Fort',	'Lahore',	'Pakistan',	'2016-05-10 12:44:33',	1);

DROP TABLE IF EXISTS `logicsfort_suppliers`;
CREATE TABLE `logicsfort_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_tables`;
CREATE TABLE `logicsfort_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_users`;
CREATE TABLE `logicsfort_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `logicsfort_users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
(1,	'admin',	'admin',	'Doe',	'8091d35190efa5d080867aa44c596d0f269f2d3faee949c7a056fbef12a8a67ffbc7a34efe4ac206b15a2747ca63b6c9684a98d94f376aa929e4ebe04a50c16b',	'admin@dar-elweb.com',	'admin',	'2020-10-08 03:39:15',	'9fff9cc26e539214e9a5fd3b6a10cde9.jpg',	'2020-10-07 21:44:09',	1);

DROP TABLE IF EXISTS `logicsfort_variations`;
CREATE TABLE `logicsfort_variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_waiters`;
CREATE TABLE `logicsfort_waiters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_warehouses`;
CREATE TABLE `logicsfort_warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `logicsfort_zones`;
CREATE TABLE `logicsfort_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 2020-10-15 12:30:29
