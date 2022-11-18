-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: bucket-splash.mysql.database.azure.com    Database: bucketsplash
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL AUTO_INCREMENT COMMENT 'AI',
  `board_title` varchar(1000) NOT NULL,
  `board_content` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buckets`
--

DROP TABLE IF EXISTS `buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buckets` (
  `bucket_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `bucket_title` varchar(1000) NOT NULL,
  `bucket_content` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`bucket_id`),
  KEY `FK_CATEGORY_TO_BUCKETS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_BUCKETS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buckets`
--

LOCK TABLES `buckets` WRITE;
/*!40000 ALTER TABLE `buckets` DISABLE KEYS */;
/*!40000 ALTER TABLE `buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` int NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `recruit_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_RECRUITS_TO_COMMENTS_1` (`recruit_id`),
  CONSTRAINT `FK_RECRUITS_TO_COMMENTS_1` FOREIGN KEY (`recruit_id`) REFERENCES `recruits` (`recruit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `follow_id` int NOT NULL AUTO_INCREMENT,
  `followed_id` int NOT NULL COMMENT '팔로우 당하는 유저 아이디',
  `following_id` int NOT NULL COMMENT '팔로우 하는 유저 아이디',
  PRIMARY KEY (`follow_id`),
  KEY `FK_USERS_TO_FOLLOWS_1` (`followed_id`),
  KEY `FK_USERS_TO_FOLLOWS_2` (`following_id`),
  CONSTRAINT `FK_USERS_TO_FOLLOWS_1` FOREIGN KEY (`followed_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FK_USERS_TO_FOLLOWS_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_urls`
--

DROP TABLE IF EXISTS `image_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_urls` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `board_id` int NOT NULL COMMENT 'AI',
  `image_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK_BOARD_TO_IMAGE_URLS_1` (`board_id`),
  CONSTRAINT `FK_BOARD_TO_IMAGE_URLS_1` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_urls`
--

LOCK TABLES `image_urls` WRITE;
/*!40000 ALTER TABLE `image_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `likes_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `board_id` int NOT NULL COMMENT 'AI',
  PRIMARY KEY (`likes_id`),
  KEY `FK_USERS_TO_LIKES_1` (`user_id`),
  KEY `FK_BOARD_TO_LIKES_1` (`board_id`),
  CONSTRAINT `FK_BOARD_TO_LIKES_1` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`),
  CONSTRAINT `FK_USERS_TO_LIKES_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruits`
--

DROP TABLE IF EXISTS `recruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruits` (
  `recruit_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `recruit_title` varchar(1000) NOT NULL,
  `recuit_content` varchar(5000) NOT NULL,
  `people_num` varchar(50) NOT NULL COMMENT '"미정"도 있음',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`recruit_id`),
  KEY `FK_CATEGORY_TO_RECRUITS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_RECRUITS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruits`
--

LOCK TABLES `recruits` WRITE;
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `team_id` int DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FK_TEAMS_TO_USERS_1` (`team_id`),
  CONSTRAINT `FK_TEAMS_TO_USERS_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hi6724@gmail.com',NULL,'훈나무','secret','프론트엔드 개발자입니다.','https://i.picsum.photos/id/16/2500/1667.jpg?hmac=uAkZwYc5phCRNFTrV_prJ_0rP0EdwJaZ4ctje2bY7aE',NULL),(2,'dasliebeich7@gmail.com',NULL,'롱롱','secret','백엔드 개발자입니다.','https://i.picsum.photos/id/49/1280/792.jpg?hmac=NnUJy0O9-pXHLmY2loqVs2pJmgw9xzuixgYOk4ALCXU',NULL),(3,'jjanggu@gmail.com',NULL,'짱구','secret','짱구입니다.','https://i.picsum.photos/id/54/3264/2176.jpg?hmac=blh020fMeJ5Ru0p-fmXUaOAeYnxpOPHnhJojpzPLN3g',NULL),(4,'suji@gmail.com',NULL,'수지','secret','수지입니다.','https://i.picsum.photos/id/65/4912/3264.jpg?hmac=uq0IxYtPIqRKinGruj45KcPPzxDjQvErcxyS1tn7bG0','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTg2MjUzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0ODYsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6InN1amlAZ21haWwuY29tIn0.7WXvzjrBDk9xDNk_UcNBaz838fzwLZW58q_zrJ6TMmk'),(5,'rick@gmail.com',NULL,'릭','secret','릭입니다.','https://i.picsum.photos/id/71/5000/3333.jpg?hmac=wBjyqoAke0uv6bTtbbIby9s-VTQ52gIkI-QVXWS3W0I',NULL),(6,'morty@gmail.com',NULL,'모티','secret','모티입니다.','https://i.picsum.photos/id/76/4912/3264.jpg?hmac=VkFcSa2Rbv0R0ndYnz_FAmw02ON1pPVjuF_iVKbiiV8','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTk3ODMxLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0OTcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6Im1vcnR5QGdtYWlsLmNvbSJ9.pv3V3Wljevmd2SmJskEuvZJzZiyLGk5P1rqLg-XEr-I');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vue_board`
--

DROP TABLE IF EXISTS `vue_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vue_board` (
  `no` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`),
  KEY `vue_board_to_user_fk` (`writer`),
  CONSTRAINT `vue_board_to_user_fk` FOREIGN KEY (`writer`) REFERENCES `vue_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vue_board`
--

LOCK TABLES `vue_board` WRITE;
/*!40000 ALTER TABLE `vue_board` DISABLE KEYS */;
INSERT INTO `vue_board` VALUES (8,'ssafy','현제의 꿈 ','오늘은 싸피 학교에서 현제의 꿈을 적어보라고 했당ㅎㅎ 구래서 뽀로로랑 소방관 중에 고민하고 있었는데 옆에서 동쥬킹이 그게 머냐고 구박했다ヾ( ๑´д`๑)ﾂ 힝 현제 똑땅... 구래서 일단 옆에서 시키는대로 개발자라고 적었다T.T 개발자가 되면 뽀로로 사이트 만들어서 유명해져서 실물 영접하러 가야지잉ㅎㅎv(°∇^*)⌒☆v(°∇^*)⌒☆','2022-11-14 03:33:43'),(9,'ssafy','오늘은 현제 공부하는 날!! …_〆(ﾟ▽ﾟ*)','우리 교수님은 완죤 짱짱맨이당ㅎㅎ 강의 옴총나르게 잘하시구 친절왕이당ㅎㅎ 그리구 맨날맨날 재밌는 농담 던지시는데 빵빵 터지면 조금 부끄부끄해서 속으로 열씨미 참는데 고게 조금 힘들다o(〃＾▽＾〃)o 히히 오늘도 열씨미 채팅치고 수업 들어야지~~٩(๑❛ワ❛๑)','2022-11-14 03:33:56'),(10,'ssafy','포비짱','구라고 현제가 짱!!','2022-11-14 03:34:03'),(11,'ssafy','현제는 온제부터 요로케 귀여웠을까?!','헤헤 맞춰보라구~~~~','2022-11-14 03:34:10'),(12,'ssafy','현제느으으은~~ 귀엽게 태어난.곤.데~~~','왜 자꾸 모라해??','2022-11-14 03:34:51'),(13,'ssafy','현제의 비밀 일기장-☆','열어보지 말라구~ ㅠㅠ 비밀이라구~ ㅠㅠ','2022-11-14 03:35:07'),(14,'ssafy','현제 수난일기','휴.. 오늘 발표 너무두근거린당 현제가 발표하는거 다들 잘 들어주게찌?!?◕‿◕✿◕‿◕✿◕‿◕✿','2022-11-14 03:35:37'),(15,'ssafy','오느릉','지하철 타지 말고 걸어가자...','2022-11-14 03:35:57'),(16,'ssafy','누가  쩨일 잘나가','최! 현! 제!','2022-11-14 03:36:05'),(17,'ssafy','오늘 점심은 모 먹징? ( *˘╰╯˘*)','나시고랭이랑 햄띠드 순두부찌개.... 후우움...\n 모 먹지이잉 \n 여러분은 모 머글거에욤?\n>> 순두부','2022-11-14 03:36:18'),(21,'ssafy','나도 놀러왔피카!','⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡴⠒⠚⣻⠇⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠓⠒⠒⠒⠒⢤⣤⠴⠚⠉⠀⡸⠁⣠⠞⠁⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⣠⠖⠋⠀⠀⠀⠀⢀⡧⠞⠣⠤⣀⡀⠀⠀⠀⠀\n⢀⣤⠔⠒⠚⣏⠉⠉⠉⠉⠉⠉⠉⠒⠒⠲⠤⠒⠋⠉⠉⠉⠉⠉⠒⠒⠻⢴⠋⠀⠀⠀⠀⠀⣠⠔⠋⠀⠀⠀⠀⠀⠉⠑⠲⢤⡀\n⠈⠙⠒⠤⢄⣘⣦⡀⠀⠀⠀⠀⠀⠀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠤⠖⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼\n⠀⠀⠀⠀⠀⠀⠈⢉⣿⣗⡒⠒⠒⡾⠁⣠⣶⠒⡆⠀⠀⠀⠀⠀⠀⠀⣀⣄⡀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠀\n⠀⠀⠀⠀⠀⠀⢠⡎⠀⠀⠙⢦⣀⠇⠀⠻⣼⡿⠁⠀⠀⢠⡄⠀⠀⠸⣷⣼⣷⠀⢸⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠋⠀⠀\n⠀⠀⠀⠀⠀⠀⠈⣏⠀⠀⠀⠀⡿⠖⠲⣄⠀⠀⣤⡀⢀⣤⣀⠀⠀⢀⠈⠋⠁⠀⢸⣿⡉⠓⠦⣀⡀⠀⠀⠀⠀⢀⡴⠁⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⢹⡀⠀⠀⠀⡇⠀⠀⣸⠀⠀⢸⣯⠟⠛⠛⢿⣿⠋⠀⢰⠟⠉⠹⡇⢷⠀⠀⠀⠉⠓⠦⣄⣠⠎⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠹⡦⠴⠋⠀⠀⠀⢹⡄⠀⢀⡼⠁⠀⠀⣇⠀⠀⢠⡇⣀⣧⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⠙⢆⠀⠀⠀⠀⠀⠹⠤⠋⠀⠀⠀⠀⠈⠓⡶⠋⠙⠳⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡄⠀⠀⠀⠀⠑⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠖⠋⠀⠀⠀⠀⠀⠀⠉⠲⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⠀⠀⢀⣷⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠤⣤⠤⠴⠒⠒⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⡰⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡆⢀⣠⠤⠒⠒⠒⠂⠀⠀⠐⠒⠒⠒⠒⠲⢦⡀⠀⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⡟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠒⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀','2022-11-14 03:39:23'),(22,'ssafy','나는 가끔 눈물을 흘린다','난... ㄱ ㅏ끔... \n눈물을 흘린 ㄷ ㅏ .... \nㄱ ㅏ끔은 눈물을 참을 수 없는 내가 별루ㄷ ㅏ... \n맘이 ㅇ ㅏ ㅍ ㅏ 서.... \n소ㄹ ㅣ치며... 울 수 있 ㄷㅏ는건.... \n좋은ㄱ ㅓ ㅇ ㅑ..... \nㅁ ㅓ... 꼭 슬 ㅍ ㅓ ㅇ ㅑ만 우는 건 ㅇ ㅏ니잖 ㅇ ㅏ...^^ \n난... 눈물ㅇ ㅣ ....좋다..... \nㅇ ㅏ니... \n머 리가 ㅇ ㅏ닌..... \n맘으로.....우는 ㄴ ㅐㄱ ㅏ 좋ㄷ ㅏ.....','2022-11-14 03:42:12'),(23,'ssafy','나도 놀러왔다 뭐!!!!','⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀\n⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀\n⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄\n⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇\n⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷\n⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃\n⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀\n⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀\n⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁','2022-11-14 03:42:51'),(24,'ssafy','귀여움으로 승부하는건 현제찡이지!!!','ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝ෆ⸒⸒⸜( ˶\'ᵕ\'˶)⸝','2022-11-14 03:45:55'),(25,'ssafy','쁘띠현제 왔다감','쁘띠쁘띠 쁘띠현데 배고파용 ㅠㅠ (●\'◡\'●)','2022-11-14 03:49:58'),(26,'ssafy','배고파 ㅠㅠ','나시고랭이랑 햄띠드 순두부찌개.... 후우움...\n 모 먹지이잉 \n나시고랭이요','2022-11-14 03:52:52'),(27,'ssafy','교수님 체고','외쳐 갓길재.!!','2022-11-14 03:54:28'),(28,'ssafy','파란 하늘 파란 하늘 꿈이','메롱\n','2022-11-14 04:42:27'),(29,'ssafy','재','재','2022-11-14 04:43:22'),(30,'ssafy','길','Way','2022-11-14 04:43:26'),(31,'ssafy','갓','God','2022-11-14 04:43:29'),(32,'ssafy','포로리',' ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ╰(*°▽°*)╯때릴고야? ','2022-11-14 04:43:48'),(33,'ssafy','바니바니바니바니','?? （￣︶￣）↗　（￣︶￣）↗　','2022-11-14 04:44:17'),(34,'ssafy','옛 쿵 (❁`◡`❁)','퀸동주 ','2022-11-14 04:46:11'),(35,'ssafy','아니야 최강귀요미는','퀸동주야 ! ヾ(≧▽≦*)o','2022-11-14 04:47:40'),(36,'ssafy','용짱이는 띠드버거가 먹고시푼데,,','띠드버거 두개 o((>ω< ))o','2022-11-14 05:03:18'),(37,'ssafy','나눈 현제﻿╰(*´︶`*)╯♡','나눈 현제당~! ﻿╰(*´︶`*)╯♡\n오늘도 많은 사람이 즐거워 보인댱 헤헤\n싸피 얼마 안남아서 아쉽당!!!\n','2022-11-14 06:35:04');
/*!40000 ALTER TABLE `vue_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vue_user`
--

DROP TABLE IF EXISTS `vue_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vue_user` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vue_user`
--

LOCK TABLES `vue_user` WRITE;
/*!40000 ALTER TABLE `vue_user` DISABLE KEYS */;
INSERT INTO `vue_user` VALUES (1,'ssafy','싸피','ssafy','2022-11-11 01:38:45','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzUzNzY2NDExLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTQ2NjYsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJ1c2VyX2lkIjoic3NhZnkifQ.zU2KPmZ_YtTVd8wTydxew7Qr6bQK2gdao8yyN5aELN8'),(2,'user','유저','user','2022-11-11 01:38:45',''),(3,'hihi','hihi','hihi','2022-11-18 03:58:22',NULL);
/*!40000 ALTER TABLE `vue_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 16:40:58
