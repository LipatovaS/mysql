#
# TABLE STRUCTURE FOR: activity
#

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `activity_types_id` smallint(5) unsigned NOT NULL,
  `client_id` smallint(5) unsigned NOT NULL,
  `company_id` smallint(5) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_activity_types_id` (`activity_types_id`),
  KEY `fk_client_id` (`client_id`),
  KEY `fk_company_id` (`company_id`),
  CONSTRAINT `fk_activity_types_id` FOREIGN KEY (`activity_types_id`) REFERENCES `activity_types` (`id`),
  CONSTRAINT `fk_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (1, 1, 21, 1, 'Excepturi animi ea nemo cum esse corrupti. Possimus voluptatum quos placeat qui quam et nisi. Sapiente voluptates aut explicabo et dolorem quos aliquam. Qui aperiam optio dolorem eveniet laboriosam sed.', '1996-01-10 15:36:02', '2017-03-17 21:44:29');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (2, 2, 22, 3, 'Tempora et ea natus sunt ut. Fuga quaerat aut qui in necessitatibus assumenda. Doloribus praesentium veritatis dicta fugiat voluptatem eius aut doloremque.', '1997-11-07 11:14:21', '1982-02-20 15:15:00');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (3, 3, 23, 1, 'Molestiae cupiditate enim tempore perspiciatis tempore illo qui. Nihil eum odio unde quos et qui. Cupiditate vitae voluptatem veritatis enim. Accusantium ut provident totam rem culpa sint.', '1970-02-01 02:31:20', '2001-12-18 10:08:27');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (4, 1, 24, 3, 'Magni corrupti architecto tempore culpa voluptas odit eaque. Fuga repellat cumque voluptatem est tempore. Inventore labore ducimus praesentium illum itaque magni doloribus. Odio voluptatem reprehenderit ut vel aut voluptas suscipit.', '1995-09-26 23:35:37', '2016-10-30 05:35:24');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (5, 2, 25, 1, 'Sed dolorem ea perspiciatis placeat expedita quo sunt et. Enim quo possimus illum omnis omnis. In ut sed provident dolorem.', '2008-08-23 18:24:45', '1984-03-01 09:08:47');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (6, 3, 26, 3, 'Qui aspernatur excepturi rerum enim. Velit rem voluptatem ut amet quia et fuga aut. Ea et repudiandae est et.', '2011-09-25 09:16:07', '2012-12-28 14:15:46');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (7, 1, 27, 1, 'Quia et nostrum maxime dolorem. Molestias dolores consectetur sit dolor repudiandae dolorem voluptatem. Natus vero eaque praesentium delectus itaque eos. Eum neque architecto quibusdam sunt esse facilis. Odit facere eum corrupti porro id illum.', '2001-11-30 20:44:34', '1995-12-08 00:05:58');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (8, 2, 28, 3, 'Molestias est sit aliquid neque. Mollitia consequatur ratione animi eum perferendis facilis. Iure tenetur rerum quam.', '1978-05-28 22:03:11', '1993-04-02 15:26:51');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (9, 3, 29, 1, 'Sed sapiente et aut libero aut beatae. Et quam facilis est ut sit autem. Accusamus quod fuga tempore sit. Dolorum molestiae hic aut quae sapiente expedita.', '2010-04-21 09:51:56', '1983-08-12 15:59:53');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (10, 1, 30, 3, 'Sunt aut quia impedit laboriosam facilis quis architecto. Amet alias dolore est eaque doloribus. Consequuntur ratione minus quo pariatur fugiat possimus. Laudantium aut natus quia esse eveniet dolorum.', '1999-01-28 22:21:23', '2000-12-12 22:57:35');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (11, 2, 31, 1, 'Eius voluptas odit rerum. A ipsam et cupiditate tempora rerum. Maxime magni molestiae quas alias voluptas sed reprehenderit. Quo voluptatem rerum temporibus quis.', '2012-10-16 10:26:56', '1975-03-31 10:22:54');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (12, 3, 32, 3, 'Quia dolores corporis minima. Rerum id eum temporibus eos inventore sit rerum.', '2016-06-11 06:05:59', '2001-11-25 09:57:41');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (13, 1, 33, 1, 'Rerum ipsa delectus et illum in sed ipsa. Autem dolorem perferendis sit aut enim sed. Aliquam qui ut ipsa sit voluptates ea tenetur.', '1977-06-13 04:59:14', '1974-06-29 09:57:46');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (14, 2, 34, 3, 'Veniam ut eum repellendus autem a. Quod et eos nihil. Aut sapiente iusto commodi est laboriosam eaque.', '2005-06-13 02:15:40', '2017-02-11 11:17:27');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (15, 3, 35, 1, 'Itaque voluptatem culpa repellendus minus exercitationem doloribus veritatis. Aspernatur omnis eos maxime quibusdam laborum dolor. Earum tempore enim perspiciatis magni explicabo quia rerum. Natus aperiam vitae nisi. Animi voluptas dignissimos praesentium rem labore.', '1992-01-22 16:43:11', '2004-05-21 08:40:09');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (16, 1, 36, 3, 'Qui velit quisquam consequatur sapiente. Nesciunt vel reprehenderit facilis eaque quaerat ratione. Sed natus veniam ullam. Incidunt voluptatem error quia omnis.', '2013-02-02 08:38:49', '1996-03-20 05:53:04');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (17, 2, 37, 1, 'Cumque vel est consequuntur sint ipsam. Eveniet fuga consequatur et expedita porro quam. Enim delectus consequuntur ut voluptates officia aspernatur fugiat doloremque. Est vel laborum voluptas saepe et.', '1997-04-19 19:35:06', '2002-03-26 15:48:54');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (18, 3, 38, 3, 'Ab ipsam veritatis iure architecto deserunt fuga id. Nostrum quidem qui eos excepturi voluptatum. Eum perspiciatis sit nulla at eaque exercitationem.', '1975-06-17 14:49:11', '2002-11-16 18:39:55');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (19, 1, 40, 1, 'Ea dolorum aut et sunt at sed. Occaecati et amet debitis. Aut repudiandae aliquid quasi voluptatem iure cum.', '1970-01-09 23:56:17', '2005-10-12 01:26:20');
INSERT INTO `activity` (`id`, `activity_types_id`, `client_id`, `company_id`, `body`, `created_at`, `updated_at`) VALUES (20, 2, 21, 3, 'Aliquam aut consequuntur officia eos quo ut. Odio iusto voluptates rerum omnis cupiditate. Maiores eligendi tempora qui omnis assumenda.', '1989-11-18 00:23:08', '2016-12-05 19:54:43');


#
# TABLE STRUCTURE FOR: activity_types
#

DROP TABLE IF EXISTS `activity_types`;

CREATE TABLE `activity_types` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `activity_types` (`id`, `name`) VALUES (1, 'corrupti');
INSERT INTO `activity_types` (`id`, `name`) VALUES (2, 'sunt');
INSERT INTO `activity_types` (`id`, `name`) VALUES (3, 'velit');


#
# TABLE STRUCTURE FOR: brand
#

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `brand` (`id`, `name`) VALUES (1, 'i');
INSERT INTO `brand` (`id`, `name`) VALUES (2, 'y');
INSERT INTO `brand` (`id`, `name`) VALUES (3, 'b');
INSERT INTO `brand` (`id`, `name`) VALUES (4, 'm');


#
# TABLE STRUCTURE FOR: client
#

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (21, 'Tyler', 'Altenwerth', 'rbruen@example.org', '885725');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (22, 'Kelley', 'Douglas', 'pansy.pacocha@example.com', '785');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (23, 'Macy', 'Hagenes', 'greenholt.norma@example.org', '1');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (24, 'Urban', 'Stracke', 'schiller.frederick@example.net', '218127');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (25, 'Emmett', 'Deckow', 'lkuhn@example.com', '10');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (26, 'Ted', 'Wunsch', 'einar.littel@example.net', '225885');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (27, 'Adan', 'Schaden', 'arden.sawayn@example.com', '67');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (28, 'Julia', 'Prosacco', 'harber.abigail@example.org', '97370');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (29, 'Casandra', 'Frami', 'cstamm@example.com', '7146152913');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (30, 'Delores', 'Wiza', 'lester83@example.com', '447');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (31, 'Zoie', 'Padberg', 'jarvis05@example.com', '73');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (32, 'Sonny', 'Ryan', 'jeffery.white@example.com', '721733');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (33, 'Terrell', 'Jacobs', 'fkertzmann@example.net', '791300');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (34, 'Dameon', 'Rempel', 'bergstrom.karen@example.net', '308092');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (35, 'Walton', 'Heaney', 'kiehn.blanca@example.net', '373');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (36, 'Walton', 'Kutch', 'lessie11@example.com', '124');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (37, 'Elias', 'Lehner', 'alfredo68@example.com', '138554');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (38, 'Donnie', 'Schimmel', 'edwardo.kihn@example.net', '9855641580');
INSERT INTO `client` (`client_id`, `fname`, `lname`, `email`, `phone`) VALUES (40, 'Jazmyn', 'Yost', 'jalen.schulist@example.org', '0');


#
# TABLE STRUCTURE FOR: company
#

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `company` (`company_id`, `name`, `address`, `city`, `state`, `zip`) VALUES (1, 'Hand, Lubowitz and L', '159 Trantow Lane\nWest Shanelle', 'New Myahmouth', 'Ok', '3');
INSERT INTO `company` (`company_id`, `name`, `address`, `city`, `state`, `zip`) VALUES (3, 'Hills-Fadel', '60733 Lebsack Green Suite 580\n', 'Savannaborough', 'Ka', '');


#
# TABLE STRUCTURE FOR: department
#

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dept_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` smallint(5) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `dept_id` (`dept_id`),
  KEY `company_fk` (`company_id`),
  CONSTRAINT `company_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('1', 1, 'similique');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('2', 3, 'aut');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('3', 1, 'ipsam');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('4', 3, 'fugit');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('5', 1, 'ut');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('6', 3, 'illum');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('7', 1, 'deserunt');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('8', 3, 'magni');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('9', 1, 'accusamus');
INSERT INTO `department` (`dept_id`, `company_id`, `name`) VALUES ('10', 3, 'vel');


#
# TABLE STRUCTURE FOR: employee
#

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` bigint(20) unsigned NOT NULL,
  `fname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_dept_id` (`dept_id`),
  CONSTRAINT `fk_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (1, '1', 'Dr. Kianna Feil Jr.', 'Stark', '1982-02-03', '1994-06-27', 'u');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (2, '2', 'Tessie Johnson', 'Bauch', '2014-12-13', '1996-03-16', 'j');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (3, '3', 'Anita White', 'Marquardt', '2005-05-25', '1977-07-30', 'k');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (4, '4', 'Heaven Senger', 'Hermiston', '1971-01-18', '2021-07-04', 'm');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (5, '5', 'Iliana Kautzer', 'Stiedemann', '1993-02-25', '1992-02-26', 'a');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (6, '6', 'Koby Kertzmann', 'Kihn', '1991-11-14', '2003-09-17', 'u');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (7, '7', 'Vince Dickens', 'Mraz', '2007-02-17', '1997-02-12', 'w');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (8, '8', 'Patricia Emard', 'Towne', '2015-07-07', '1970-04-16', 'h');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (9, '9', 'Brenna Kovacek', 'Green', '2001-02-12', '2017-05-31', 'x');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (10, '10', 'Prof. Oswald Okuneva', 'Tremblay', '2005-09-30', '2010-03-24', 'm');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (11, '1', 'Ena Heller', 'Cummerata', '2014-02-06', '2007-04-20', 'r');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (12, '2', 'Lon McClure I', 'Olson', '2016-06-26', '1976-10-13', 'y');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (13, '3', 'London Nader I', 'Nicolas', '2013-07-13', '1987-01-01', 'q');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (14, '4', 'Maurice Auer', 'Ortiz', '2014-11-14', '2004-09-18', 'l');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (15, '5', 'Jonatan Glover', 'Daniel', '1975-07-11', '2015-02-24', 'g');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (16, '6', 'Neoma Stoltenberg', 'Abernathy', '2013-09-17', '2010-01-15', 'o');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (17, '7', 'Imani Okuneva', 'McKenzie', '2013-04-24', '2016-02-05', 'q');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (18, '8', 'Mr. Merritt Marquard', 'Herzog', '1976-09-30', '2010-10-22', 'm');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (19, '9', 'Miss Mariah Mayer V', 'Osinski', '1998-07-10', '2011-03-11', 'e');
INSERT INTO `employee` (`emp_id`, `dept_id`, `fname`, `lname`, `start_date`, `end_date`, `title`) VALUES (20, '10', 'Katarina Ferry', 'Rodriguez', '1986-08-28', '1980-07-17', 'y');


#
# TABLE STRUCTURE FOR: model
#

DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `model_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_brand_id` (`brand_id`),
  CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (1, 1, 'asperiores', '', 'n', '8');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (2, 2, 'veniam', '', 'r', '5');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (3, 3, 'sunt', '3032.9829', 't', '5');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (4, 4, 'est', '52710808.7602', 's', '4');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (5, 1, 'ut', '5.9876', 'b', '6');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (6, 2, 'distinctio', '', 'p', '5');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (7, 3, 'rerum', '87147077.23032', 'm', '2');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (8, 4, 'vitae', '3', 'f', '9');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (9, 1, 'vero', '54708978.836401', 'h', '5');
INSERT INTO `model` (`model_id`, `brand_id`, `name`, `engine`, `gear`, `doors`) VALUES (10, 2, 'corrupti', '710036141.58', 'h', '7');


#
# TABLE STRUCTURE FOR: options
#

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (1, 'est', 'Aliquid odio enim repellat voluptas aut ea. Error sed delectus cumque cum sapiente.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (2, 'tempore', 'Eaque nam est assumenda omnis molestiae aut non. Id quod voluptatibus deleniti facere. Nisi officiis reiciendis distinctio consequatur unde. Ut est placeat voluptatem qui rerum explicabo qui animi.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (3, 'et', 'Dolor quod ea perferendis mollitia veritatis. Est dolores quia reiciendis quis deleniti doloremque porro. Aut aut voluptatem dolorum eligendi officiis deserunt repellendus.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (4, 'dolor', 'Optio rerum corporis cupiditate quo reprehenderit sunt ut et. Neque earum autem molestias. Sit blanditiis accusantium quia voluptates.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (5, 'ut', 'Quam corrupti et voluptates maxime commodi. Perspiciatis id possimus officia iste enim id ut velit. Temporibus laborum dolore et expedita id.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (6, 'doloremque', 'Voluptatibus laboriosam eaque error libero numquam. Amet omnis aut non voluptatem commodi molestiae reprehenderit. Necessitatibus aperiam rerum nihil vitae similique officiis suscipit.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (7, 'accusantium', 'Voluptates recusandae non eveniet. Amet voluptas sed dolorem a minima. Optio ad blanditiis fugiat fuga error rerum nobis.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (8, 'ratione', 'Sed incidunt quia facilis sint itaque. Quae quo assumenda quae quia rerum voluptas. Provident impedit dolorem debitis qui.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (9, 'laboriosam', 'Maxime non suscipit doloribus voluptates qui repudiandae. Corrupti ea sapiente qui.');
INSERT INTO `options` (`option_id`, `name`, `value`) VALUES (10, 'et', 'Odio impedit ipsam odio qui laboriosam provident quisquam dicta. Voluptas ea velit laudantium quae voluptatem cum.');


#
# TABLE STRUCTURE FOR: options_to_model
#

DROP TABLE IF EXISTS `options_to_model`;

CREATE TABLE `options_to_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` smallint(5) unsigned NOT NULL,
  `model_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_option_id` (`option_id`),
  KEY `fk_model_id` (`model_id`),
  CONSTRAINT `fk_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  CONSTRAINT `fk_option_id` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (1, 1, 1);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (2, 2, 2);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (3, 3, 3);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (4, 4, 4);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (5, 5, 5);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (6, 6, 6);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (7, 7, 7);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (8, 8, 8);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (9, 9, 9);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (10, 10, 10);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (11, 1, 1);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (12, 2, 2);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (13, 3, 3);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (14, 4, 4);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (15, 5, 5);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (16, 6, 6);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (17, 7, 7);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (18, 8, 8);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (19, 9, 9);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (20, 10, 10);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (21, 1, 1);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (22, 2, 2);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (23, 3, 3);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (24, 4, 4);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (25, 5, 5);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (26, 6, 6);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (27, 7, 7);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (28, 8, 8);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (29, 9, 9);
INSERT INTO `options_to_model` (`id`, `option_id`, `model_id`) VALUES (30, 10, 10);


#
# TABLE STRUCTURE FOR: vehicles
#

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `vehicle_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` smallint(5) unsigned DEFAULT NULL,
  `VIN` char(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_date` date DEFAULT NULL,
  `model_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `fk1_client_id` (`client_id`),
  KEY `fk1_model_id` (`model_id`),
  CONSTRAINT `fk1_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `fk1_model_id` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (1, 21, '380', '1975-10-20', 1);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (2, 22, '699', '2007-03-22', 2);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (3, 23, '808', '2006-07-24', 3);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (4, 24, '469', '2001-01-03', 4);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (5, 25, '544', '1984-06-08', 5);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (6, 26, '584', '1996-08-29', 6);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (7, 27, '700', '1981-12-17', 7);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (8, 28, '704', '1970-11-23', 8);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (9, 29, '012', '2003-06-10', 9);
INSERT INTO `vehicles` (`vehicle_id`, `client_id`, `VIN`, `prod_date`, `model_id`) VALUES (10, 30, '172', '2018-07-29', 10);


