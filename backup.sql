-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: development
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `achievement_pic` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,NULL,1,'It\'s new title',NULL,NULL,NULL,'2019-10-19 22:51:30','2019-10-20 01:11:32'),(2,NULL,1,'It\'s new name','AAAAAAAAAA',NULL,NULL,'2019-10-19 22:51:32','2019-10-20 01:10:03'),(3,NULL,1,NULL,NULL,NULL,NULL,'2019-10-19 22:51:33','2019-10-19 22:51:33'),(4,NULL,1,NULL,NULL,NULL,NULL,'2019-10-19 22:51:34','2019-10-19 22:51:34'),(6,NULL,1,'prueba 5','Aliquid dolorem at.','1',1,'2019-10-20 01:14:21','2019-10-20 01:14:21');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-10-19 22:02:57','2019-10-19 22:02:57');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_task_assignments`
--

DROP TABLE IF EXISTS `check_task_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_task_assignments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `finished_at` datetime DEFAULT NULL,
  `finished` int(11) DEFAULT NULL,
  `task_assignment_id` bigint(20) DEFAULT NULL,
  `check_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_check_task_assignments_on_task_assignment_id` (`task_assignment_id`),
  KEY `index_check_task_assignments_on_check_id` (`check_id`),
  CONSTRAINT `fk_rails_461238ba83` FOREIGN KEY (`task_assignment_id`) REFERENCES `task_assignments` (`id`),
  CONSTRAINT `fk_rails_4ab67ac2b1` FOREIGN KEY (`check_id`) REFERENCES `checks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_task_assignments`
--

LOCK TABLES `check_task_assignments` WRITE;
/*!40000 ALTER TABLE `check_task_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_task_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checks`
--

DROP TABLE IF EXISTS `checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_checks_on_task_id` (`task_id`),
  CONSTRAINT `fk_rails_37def486c3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checks`
--

LOCK TABLES `checks` WRITE;
/*!40000 ALTER TABLE `checks` DISABLE KEYS */;
INSERT INTO `checks` VALUES (7,1,'titulo numero 1234567890','Odio et dolores aut.',1,1,'2019-10-20 02:07:08','2019-10-20 02:25:54'),(8,1,'Excepturi officiis voluptas et.','Quis assumenda nemo aspernatur.',1,3,'2019-10-20 02:07:08','2019-10-20 02:07:08'),(9,1,'Fugit suscipit totam et.','Non numquam quia perspiciatis.',1,2,'2019-10-20 02:07:08','2019-10-20 02:07:08'),(10,1,'Et blanditiis sapiente labore.','Ipsum recusandae aut eius.',1,1,'2019-10-20 02:07:08','2019-10-20 02:07:08'),(11,1,'Corporis accusantium ipsum totam.','Dolores ad et et.',1,2,'2019-10-20 02:07:08','2019-10-20 02:07:08'),(12,1,'titulo numero 1234567890','this a correct answer',12,2,'2019-10-20 02:28:15','2019-10-20 02:28:15'),(13,1,'Quia minus quisquam facere.','Ut itaque ex est.',1,1,'2019-10-20 05:17:50','2019-10-20 05:17:50');
/*!40000 ALTER TABLE `checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepts`
--

DROP TABLE IF EXISTS `concepts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_concepts_on_project_id` (`project_id`),
  CONSTRAINT `fk_rails_ece759f6c0` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepts`
--

LOCK TABLES `concepts` WRITE;
/*!40000 ALTER TABLE `concepts` DISABLE KEYS */;
INSERT INTO `concepts` VALUES (1,1,'Explicabo odio qui ea.','http://hirthe.com/gina.cummerata',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(2,1,'Vitae qui voluptates minus.','http://labadie.biz/arnoldo.smitham',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(3,1,'Nihil quia ea iure.','http://funk.biz/derek_daniel',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(4,1,'Officiis qui adipisci sit.','http://raynor.com/dante',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(5,1,'Animi exercitationem laudantium consequuntur.','http://kiehn.org/laraine_johnston',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(6,1,'Reiciendis velit perspiciatis dolorum.','http://langworthyost.com/gerardo',1,1,'2019-10-19 22:44:41','2019-10-19 22:44:41'),(7,1,'Praesentium aut quis earum.','http://stiedemannwilkinson.co/malik',1,1,'2019-10-19 22:44:42','2019-10-19 22:44:42'),(8,1,'Fugit molestiae omnis omnis.','http://murphy.co/dorthey.strosin',1,1,'2019-10-19 22:44:42','2019-10-19 22:44:42'),(9,1,'Iure nihil suscipit tempore.','http://cummings.co/sage.sporer',1,1,'2019-10-19 22:44:42','2019-10-19 22:44:42'),(10,1,'Dignissimos voluptatem aperiam perferendis.','http://ziemann.io/pok',1,1,'2019-10-19 22:44:42','2019-10-19 22:44:42');
/*!40000 ALTER TABLE `concepts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,1,'Quos ullam sapiente asperiores.','Odio eos in. Et veniam voluptatem. Quis nam quam.','2019-10-19 22:08:58','2019-10-19 22:08:58'),(2,1,'Vel est iusto veritatis.','Doloremque aut rem. Itaque facere necessitatibus. Voluptas delectus possimus.','2019-10-19 22:43:52','2019-10-19 22:43:52'),(3,1,'Dignissimos minus blanditiis commodi.','Quas iusto sit. Cupiditate velit consequatur. Quia quia porro.','2019-10-19 22:44:01','2019-10-19 22:44:01');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `level_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_level_id` (`level_id`),
  CONSTRAINT `fk_rails_0dc741ccdb` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,1,'It\'s new','It\'s description',1,1,'2019-10-19 22:44:12','2019-10-19 23:49:37'),(2,1,'Suscipit vel quaerat sit.','Quis velit dolorum. Placeat iure ut. Deleniti qui magnam.',1,1,'2019-10-19 22:44:24','2019-10-19 22:44:24'),(3,1,'Aut deleniti minus pariatur.','Non porro iusto. Dignissimos libero fugiat. Accusamus perspiciatis libero.',1,1,'2019-10-19 22:44:29','2019-10-19 22:44:29'),(4,1,'Ipsum impedit vel amet.','Et exercitationem sit. Similique aut minima. Omnis quia aspernatur.',1,1,'2019-10-19 22:44:36','2019-10-19 22:44:36'),(6,1,'AAAAAAAAAAAA','Aliquid dolorem ut.',1,1,'2019-10-19 23:21:25','2019-10-19 23:21:25'),(7,1,'AAAAAAAAAAAA','Aliquid dolorem ut.',1,1,'2019-10-19 23:21:31','2019-10-19 23:21:31'),(8,1,'AAAAAAAAAAAA','Aliquid dolorem ut.',1,1,'2019-10-19 23:21:41','2019-10-19 23:21:41'),(9,1,'AAAAAAAAAAAA','Aliquid dolorem ut.',1,1,'2019-10-19 23:21:43','2019-10-19 23:21:43'),(10,1,'BBBBBBBBBBBBB','Aliquid dolorem ut.',1,1,'2019-10-19 23:22:24','2019-10-19 23:22:24'),(11,1,'AAAAAAAAAAAA','Aliquid dolorem ut.',1,1,'2019-10-19 23:28:42','2019-10-19 23:28:42'),(13,1,'Sunt praesentium voluptas nemo.','Vel omnis ut. Sed harum ut. Ad asperiores qui.',1,1,'2019-10-20 01:29:28','2019-10-20 01:29:28');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,NULL,1,'2019-10-19 22:51:07','2019-10-19 22:51:07'),(2,NULL,1,'2019-10-19 22:51:17','2019-10-19 22:51:17'),(3,NULL,1,'2019-10-19 22:51:18','2019-10-19 22:51:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20191018160624'),('20191018160625'),('20191018160626'),('20191018160628'),('20191018160629'),('20191018160630'),('20191018160631'),('20191018160632'),('20191018160633'),('20191018160634'),('20191018160635'),('20191019201806');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_assignments`
--

DROP TABLE IF EXISTS `task_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_assignments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `finished_at` datetime DEFAULT NULL,
  `finished` int(11) DEFAULT NULL,
  `user_project_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_task_assignments_on_user_project_id` (`user_project_id`),
  KEY `index_task_assignments_on_task_id` (`task_id`),
  CONSTRAINT `fk_rails_4886ed85af` FOREIGN KEY (`user_project_id`) REFERENCES `user_projects` (`id`),
  CONSTRAINT `fk_rails_b7a2056e80` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_assignments`
--

LOCK TABLES `task_assignments` WRITE;
/*!40000 ALTER TABLE `task_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exercise` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tasks_on_project_id` (`project_id`),
  CONSTRAINT `fk_rails_02e851e3b7` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,1,'Nemo saepe porro ratione.','Quia asperiores culpa. Excepturi corrupti aut. Dignissimos natus ipsum.','Enim nobis aliquam. Amet aut et. Ad officiis earum.',1,13,'2019-10-20 01:29:38','2019-10-20 01:29:38'),(2,1,'Error sed facere perspiciatis.','Quo beatae voluptas. Non ut et. Consequatur excepturi ab.','Ullam velit corrupti. Officia voluptatem velit. Et maiores est.',1,13,'2019-10-20 01:29:38','2019-10-20 01:29:38'),(3,1,'Cumque tempore aspernatur ad.','Tenetur dolor alias. Qui minus dolor. Impedit aliquid ipsum.','In dolor voluptatem. Reiciendis eum eligendi. Quaerat eum debitis.',1,13,'2019-10-20 01:29:38','2019-10-20 01:29:38'),(4,1,'Incidunt dignissimos dolore explicabo.','Mollitia perferendis harum. Facere rerum architecto. Aut adipisci vel.','Laboriosam ex perspiciatis. Corporis ipsam aut. Aut nostrum ipsam.',1,13,'2019-10-20 01:29:38','2019-10-20 01:29:38'),(5,1,'Dolores reiciendis nisi aut.','Quia quibusdam eligendi. Quos voluptatum distinctio. Iusto nobis rerum.','Sint est provident. Enim beatae expedita. Voluptatem autem voluptate.',1,13,'2019-10-20 01:29:38','2019-10-20 01:29:38'),(6,1,'Ipsam cum rerum deleniti.','Non sit vero. Blanditiis dolore dignissimos. Est odit quibusdam.','Dicta recusandae mollitia. Maiores tempore dolor. Illum et dolores.',1,1,'2019-10-20 02:00:53','2019-10-20 02:00:53');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_achievements`
--

DROP TABLE IF EXISTS `user_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_achievements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `achievement_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_achievements_on_user_id` (`user_id`),
  KEY `index_user_achievements_on_achievement_id` (`achievement_id`),
  CONSTRAINT `fk_rails_4efde02858` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_c44f5b3b25` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_achievements`
--

LOCK TABLES `user_achievements` WRITE;
/*!40000 ALTER TABLE `user_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_projects`
--

DROP TABLE IF EXISTS `user_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_projects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `finished_at` datetime DEFAULT NULL,
  `finished` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_projects_on_user_id` (`user_id`),
  KEY `index_user_projects_on_project_id` (`project_id`),
  CONSTRAINT `fk_rails_d19c0da646` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_f58e9073ce` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_projects`
--

LOCK TABLES `user_projects` WRITE;
/*!40000 ALTER TABLE `user_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '1',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `auth_token` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'mail','p','Alejo','orejuela','','salsero',20,'33cc3a44dbc55fbce8cffacb8b04c8f4',1,'2019-10-20 13:20:12','2019-10-20 13:20:12'),(2,1,'mail@gmail.com','p','Alejo','orejuela','','salsero',20,'e122896e2ad6dde3e74f0540d63a44b1',1,'2019-10-20 13:23:56','2019-10-20 13:23:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-21 16:41:20
