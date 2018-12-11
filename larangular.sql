/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Cara Stephenson', 'naryh@mailinator.com', NULL, 'Pa$$w0rd!', NULL, '2018-12-07 13:48:38', '2018-12-07 13:48:38'),
	(2, 'Evangeline Maxwell', 'xityxyqid@mailinator.com', NULL, '$2y$10$cpu8H5ErKnJo1q.dld9bDuKlIpG3C3KZXlKdIos3q72alaIAr7oLC', NULL, '2018-12-07 14:08:24', '2018-12-07 14:08:24'),
	(3, 'Leigh Bartlett', 'zyzanolyka@mailinator.net', NULL, '$2y$10$EpiAwSBZD0g7zSsjdEWfce.OZ.aXsYpTTo5GJcfS/BArmnxOcc2uC', NULL, '2018-12-07 14:11:06', '2018-12-07 14:11:06'),
	(4, 'Priscilla Gentry', 'begicine@mailinator.com', NULL, '$2y$10$EFWGEsqUzORyaOQFOPGEH.EwMHKHj3WygN6XIAgdf23svaTO56I2K', NULL, '2018-12-07 14:32:03', '2018-12-07 14:32:03'),
	(5, 'Carolyn Lowery', 'qeso@mailinator.net', NULL, '$2y$10$mixdBjyXta87tVlELrS0MO.Ggnl4qWFKDyytlUrkZoc0S.bUcnoeS', NULL, '2018-12-07 14:34:53', '2018-12-07 14:34:53'),
	(6, 'Elijah Gallegos', 'kozyquqosu@mailinator.net', NULL, '$2y$10$r0ehU0D8dDlfkUFKW9HoN.0LDw/FYm3fQonbUyCJgCL7J12/hvwRm', NULL, '2018-12-07 14:35:11', '2018-12-07 14:35:11'),
	(7, 'Basil Levy', 'rexovyp@mailinator.net', NULL, '$2y$10$6qg2eqhDhZRD9TgZsFARU.JxWb7Yg2JBx9oouFuoB3bDhLwFFkp5O', NULL, '2018-12-07 16:16:18', '2018-12-07 16:16:18'),
	(8, 'Lillian Howell', 'tisymuku@mailinator.com', NULL, '$2y$10$2TI532g3GMVdC9861jwHbOQvxIYvWoEZ/I6bEWLpp.Z39u92L7oeG', NULL, '2018-12-07 17:12:43', '2018-12-07 17:12:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
