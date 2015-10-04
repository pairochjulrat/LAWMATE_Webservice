CREATE TABLE `app_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userpass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup_key` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'GUEST',
  `last_update_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_update_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_idx` (`user_id`),
  UNIQUE KEY `username_idx` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `app_user_group` (
  `usergroup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usergroup_key` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup_name_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_update_date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`usergroup_id`),
  UNIQUE KEY `usergroup_key_idx` (`usergroup_key`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `app_user_login_history` (
  `login_hist_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_datetime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `login_client_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `login_client_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login_success` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`login_hist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

