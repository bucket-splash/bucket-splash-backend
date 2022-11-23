-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: bucketsplash
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `board_image` varchar(2000) DEFAULT NULL,
  `likes_count` int DEFAULT '0',
  `comments_count` int DEFAULT '0',
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (6,'안뇽하세용~ 짱구에요','마스크를 쓴 짱구입니당~','2022-11-21 14:29:08','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg',0,0),(7,'모해요~~','거기서 모해요? 다보여요~','2022-11-21 14:30:20','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg',0,0),(8,'시원한 수박주스 원샷하기','원샷해야 인정','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=1',0,4),(10,'자격증 3개 이상 따기','웃는 게 웃는 게 이기는 거라고','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=3',0,0),(11,'교환학생 가기','You are so cute','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=4',0,0),(12,'유럽 배낭여행 가기','You are so dumb','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=5',0,0),(13,'아르바이트 해보기','네가 하는 말이','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=6',0,0),(14,'봉사활동 가기','오늘따라 듣기 싫어','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=7',0,0),(15,'마라톤 뛰어보기','하늘을 한 번 쳐다보고','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=8',0,0),(16,'헌혈 하기','내가 꾹 참고 맘을 다 잡고 네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=9',0,0),(17,'성적 장학금 받기','And I say Hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=10',0,0),(18,'다이어리 한권 완성하기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=11',0,0),(19,'내 차 구입하기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','morty','https://picsum.photos/800/450?random=12',0,0),(20,'한 가지 악기 배우기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=13',0,0),(21,'제주도에서 한달 살기','안녕이라 말할래\nWith my Smiley face\n비웃을 때 빼고\n내 입꼬리는 Chillin\'','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=14',0,0),(22,'기부하기','나빠야지 살아남지 넌 뭐해\n귀엽고 예쁘면 장땡이냐 근데\n널 보고 있으니까 기분이가 좋네','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=15',0,0),(23,'가족사진 찍기','삐뚤어진 성격 모두 나를 겁내\n아주 그냥 확 너는 왜 계속 웃어\n당황하는 틈을 타 날 무장해제','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=16',0,0),(24,'엄마/아빠와 단둘이 여행가기','친구가 될 수 있을까 우리 둘이\n내가 꾹 참고\n맘을 다 잡고\n네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=17',0,0),(25,'파티룸 빌려서 친구들과 파티하기','And I say hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=18',0,0),(26,'워터파크 가기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=19',0,0),(27,'스키장 가기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=20',0,0),(28,'글램핑 해보기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=21',0,0),(29,'패러글라이딩 해보기','안녕이라 말할래\nWith my Smiley face\n사실 나의 맘속은 그게 아닌데','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=22',0,0),(30,'스킨스쿠버 체험 해보기','웃어넘기기에 난 너무 행복해\n세상 환히 웃고 있는 내게\n미친 세상은 날 미쳤다 하겠지','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=23',0,0),(31,'호캉스 가기','I don\'t care\nI don\'t care\nWhat you saying','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=24',0,0),(32,'실내 클라이밍 해보기','한 번 사는 내 삶 I Smile it\nEven it\'s lonely and dark\nYeah I\nAnd I say hey','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=25',0,0),(33,'차박 해보기','I\'m gonna make it Smile Smile Smile away\n예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=26',0,0),(34,'비행기 퍼스트 클래스 타보기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=27',0,0),(35,'나의 퍼스널 컬러 찾기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=28',0,0),(36,'화분 기르기','안녕이라 말할래\nWith my Smiley face','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=29',0,0),(37,'나만의 포토북 만들기','까맣게 변해버린 어둔 세상에\n하얀 펜을 잡은 꼬마 녀석이','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=30',0,0),(38,'유튜브 채널 개설하고 영상 올리기','다시 한 번 나를 불러\n그칠 것 같지 않은 무서운 비가','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=31',0,0),(39,'TV 방청하기','한 번 크게 울고 사라질 때면\n날 비추는 너를 느껴','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=32',0,0),(40,'다이어트 성공해서 바디 프로필 촬영하기','두려움에 떨며 숨어 있었잖아\n혼자서 몰래 울고 있었잖아','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=33',0,0),(41,'콘서트 가기','한참을 지나 눈떠 깨어보니\n날 반기는 저 햇살은','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=34',0,0),(42,'뮤지컬 보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=35',0,0),(43,'월드컵 경기장에서 직관하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=36',0,0),(44,'얼음 낚시 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=37',0,0),(45,'일출/일몰 보기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=38',0,0),(46,'명품 백 사기','너무나도 오래된 빨간 불빛이\n네 손을 잡고 뭔가 느낄 때면','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=39',0,0),(47,'사진 배우기','날 부르는 파란빛이 보여서\n한걸음에 달려가','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=40',0,0),(48,'별 구경 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=41',0,0),(49,'셀프 인테리어 해보기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=42',0,0),(50,'홈 카페 해보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=43',0,0),(51,'제 2 외국어 배우기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=44',0,0),(52,'파워 블로거 되기','소리 내어 불러 보는 너의 이름을\nWoo oh...','2022-11-22 01:47:00','rick','https://picsum.photos/800/450?random=45',0,0),(53,'창업하기','넌 나만의 story, story, story\n저 높은 내 dreaming, dreaming, dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=46',0,0),(54,'강연하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=47',0,0),(55,'나만의 책 출판하기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=48',0,0),(56,'건강검진 받고 건강 유지하기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','rick','https://picsum.photos/800/450?random=49',0,0),(57,'오늘 저녁엔...','오늘 저녁엔 비가 온데요 ㅎㅎ \n다들 우산은 챙기셨나요?!','2022-11-22 02:18:03','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669083482/qzo6yseodxsbueggnbln.jpg',0,0),(59,'이미지 없음','이미지 없는 게시글','2022-11-23 12:26:05','noimage','',0,0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comments`
--

DROP TABLE IF EXISTS `board_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comments` (
  `board_comment_id` int NOT NULL AUTO_INCREMENT,
  `board_comment_content` varchar(10000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `board_id` int NOT NULL,
  PRIMARY KEY (`board_comment_id`),
  KEY `board_id_idx` (`board_id`),
  CONSTRAINT `board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comments`
--

LOCK TABLES `board_comments` WRITE;
/*!40000 ALTER TABLE `board_comments` DISABLE KEYS */;
INSERT INTO `board_comments` VALUES (1,'우와 너무 재밌을 것 같아요~','suji','2022-11-22 04:49:45',8),(2,'키야 과일주스 중에선 수박주스가 짱이죠!','hi6724','2022-11-22 04:50:29',8),(3,'시원한 수박주스~~','dasliebeich7','2022-11-22 04:50:51',8),(5,'요즘 수박 얼마해요? 용돈 모아서 사려고 하는데..','jjanggu','2022-11-23 04:48:04',8),(6,'wabalabadubdub','rick','2022-11-23 04:53:19',8),(10,'바로바로 바꾸자','2542274226','2022-11-23 05:28:29',57);
/*!40000 ALTER TABLE `board_comments` ENABLE KEYS */;
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `check` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bucket_id`),
  KEY `FK_CATEGORY_TO_BUCKETS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_BUCKETS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buckets`
--

LOCK TABLES `buckets` WRITE;
/*!40000 ALTER TABLE `buckets` DISABLE KEYS */;
INSERT INTO `buckets` VALUES (6,1,'가위바위보 10연승하기','2022-11-22 02:38:31','hi6724',0),(7,2,'해돋이 가기','2022-11-22 02:38:31','jjanggu',0),(8,3,'울창한 숲 속 가기','2022-11-22 02:38:31','hi6724',0),(9,1,'맨발로 촉촉한 흙길 걷기','2022-11-22 02:38:31','dasliebeich7',0),(10,2,'일본 온천 가기','2022-11-22 02:38:31','suji',0),(11,3,'오로라 보기','2022-11-22 02:38:31','dasliebeich7',0),(12,1,'엄청 큰 눈사람 만들기','2022-11-22 02:38:31','hi6724',1),(13,2,'밤에 외국 벤치에서 맥주 마시기','2022-11-22 02:38:31','jjanggu',0),(14,2,'가야금 배우기','2022-11-22 02:38:31','hi6724',0),(15,1,'다른 나라에서 3개월 이상 살기','2022-11-22 02:38:31','dasliebeich7',0),(16,2,'부모님 용돈 드리기','2022-11-22 02:38:31','suji',0),(17,3,'시골 정자에서 수박 먹기','2022-11-22 02:38:31','dasliebeich7',0),(18,1,'연예인이랑 악수하기','2022-11-22 02:38:31','jjanggu',0),(19,2,'한복입고 한옥마을 가기','2022-11-22 02:38:31','jjanggu',1),(20,1,'현제는 바다에서 수영하구시포','2022-11-22 02:38:31','hi6724',0),(23,1,'세계일주 하기','2022-11-23 05:16:10','2542274226',0),(24,1,'테스트용!','2022-11-23 05:18:40','2542274226',1);
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
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'여행'),(2,'학업'),(3,'재미');
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_content` varchar(10000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `recruit_to_comments_idx` (`recruit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (3,2,'2022-11-23 05:46:32','저염','jjanggu'),(4,4,'2022-11-23 05:46:38','저염','jjanggu'),(5,2,'2022-11-23 05:57:58','할루','morty');
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
  `followed_email` varchar(255) NOT NULL COMMENT '팔로우 당하는 유저 아이디',
  `following_email` varchar(255) NOT NULL COMMENT '팔로우 하는 유저 아이디',
  PRIMARY KEY (`follow_id`),
  KEY `FK_USERS_TO_FOLLOWS_1` (`followed_email`),
  KEY `FK_USERS_TO_FOLLOWS_2` (`following_email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `like_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `board_id` int NOT NULL COMMENT 'AI',
  PRIMARY KEY (`like_id`),
  KEY `FK_BOARD_TO_LIKES_1` (`board_id`),
  CONSTRAINT `FK_BOARD_TO_LIKES_1` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `recruit_content` varchar(5000) NOT NULL,
  `people_num` varchar(50) NOT NULL COMMENT '"미정"도 있음',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `comments_count` int DEFAULT '0',
  PRIMARY KEY (`recruit_id`),
  KEY `FK_CATEGORY_TO_RECRUITS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_RECRUITS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruits`
--

LOCK TABLES `recruits` WRITE;
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
INSERT INTO `recruits` VALUES (2,2,'와인 시음회하기','같이 하면 재밌을 것 같아요ㅎㅎ','10','2022-11-23','2022-11-23','2022-11-21 13:13:02','hi6724',4),(4,1,'등산 좋아하시는 분들..','설악산 등산 가실 분 구해요','2','2022-11-29','2022-11-29','2022-11-23 05:04:25','dasliebeich7',1);
/*!40000 ALTER TABLE `recruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_lists`
--

DROP TABLE IF EXISTS `team_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_lists` (
  `teamlist_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`teamlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_lists`
--

LOCK TABLES `team_lists` WRITE;
/*!40000 ALTER TABLE `team_lists` DISABLE KEYS */;
INSERT INTO `team_lists` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(37),(38),(41),(42);
/*!40000 ALTER TABLE `team_lists` ENABLE KEYS */;
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
  `team_image` varchar(255) DEFAULT NULL,
  `teamlist_id` int DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `teams_ibfk_1` (`teamlist_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`teamlist_id`) REFERENCES `team_lists` (`teamlist_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'코코랑 버킷리스트','https://i.picsum.photos/id/84/1280/848.jpg?hmac=YFRYDI4UsfbeTzI8ZakNOR98wVU7a-9a2tGF542539s',1),(2,'13반 버킷리스트','https://i.picsum.photos/id/142/4272/2848.jpg?hmac=z8IS_an6FQ8ijJOBd-wSVg1JTZbeIDG4TbjHwLQbs0I',1),(3,'13반 버킷리스트','https://i.picsum.photos/id/142/4272/2848.jpg?hmac=z8IS_an6FQ8ijJOBd-wSVg1JTZbeIDG4TbjHwLQbs0I',2),(4,'13반 버킷리스트','https://i.picsum.photos/id/142/4272/2848.jpg?hmac=z8IS_an6FQ8ijJOBd-wSVg1JTZbeIDG4TbjHwLQbs0I',3),(5,'코짱이가 체고','https://i.picsum.photos/id/155/3264/2176.jpg?hmac=Zgf_oGMJeg18XoKBFmJgp2DgHMRYuorXlDx5wLII9nU',1),(6,'돼라구우우우우우우우','https://i.picsum.photos/id/154/3264/2176.jpg?hmac=a4Q6dBKGy7G27ic7K1sEPr-KzMigvl-MQsZUEX9iFxM',1);
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
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `profile_image` varchar(2000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `teamlist_id` int DEFAULT NULL,
  `following_count` int DEFAULT '0',
  `followed_count` int DEFAULT '0',
  PRIMARY KEY (`user_id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `users_ibfk_1` (`teamlist_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`teamlist_id`) REFERENCES `team_lists` (`teamlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hi6724','바다의 현제','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','바다를 좋아하는 최현제라고 합니다','http://res.cloudinary.com/dohkkln9r/image/upload/v1669179767/rs4lehurnzr6hykbg2df.jpg',NULL,1,0,0),(2,'dasliebeich7','롱롱','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','백엔드 개발자입니다.','https://vlee.kr/wp-content/uploads/2020/03/%EC%95%84%EC%9D%B4%EC%9C%A0_01_5120-1024x576.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU5NjI3Mjg4LCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjA1MjcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImRhc2xpZWJlaWNoN0BnbWFpbC5jb20ifQ.0j-D2o1kUXrx4RePwUp_QcJhDf1C-QzFhXcO7OP11-0',2,0,0),(3,'jjanggu','짱구찡','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','안냐세요 짱구입니당ㅎㅎ','https://r1.community.samsung.com/t5/image/serverpage/image-id/678428i2579A7B06ECAEAAE/image-size/large?v=v2&px=999',NULL,3,0,0),(4,'suji','수지','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','수지입니다.','https://i.pinimg.com/564x/3e/ca/5b/3eca5b1a9acb1b957d534187737832dd.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTg2MjUzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0ODYsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6InN1amlAZ21haWwuY29tIn0.7WXvzjrBDk9xDNk_UcNBaz838fzwLZW58q_zrJ6TMmk',4,0,0),(5,'rick','릭','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','릭입니다.','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rick-and-morty-season-six-image-1662104016.jpg?crop=0.411xw:0.730xh;0.450xw,0.0222xh&resize=480:*',NULL,5,0,0),(6,'morty','모티','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','모티입니다.','https://pbs.twimg.com/media/FUqYS8jXoAAWSf9.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTk3ODMxLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0OTcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6Im1vcnR5QGdtYWlsLmNvbSJ9.pv3V3Wljevmd2SmJskEuvZJzZiyLGk5P1rqLg-XEr-I',6,0,0),(7,'hello','byebye','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','잘가요','https://i.picsum.photos/id/65/4912/3264.jpg?hmac=uq0IxYtPIqRKinGruj45KcPPzxDjQvErcxyS1tn7bG0','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzYxMTUxMDgzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjIwNTEsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSJ9.PQny1berE3zKgP88In0r4hiqhrOVlNaawaZlTl0w83g',7,0,0),(13,'2542274226','훈목','c84ff936d19c5aaa0a2c61a3432e9946d1f38acfffaa85b83f1d7bd32f286a96','훈목이버섯 따따블 추가요~','http://k.kakaocdn.net/dn/bIWnsX/btrPgFUg3yR/ntQ9k3dsqBsxzXkSqO0wg0/img_640x640.jpg',NULL,NULL,0,0),(38,'bbobbai','시금치된장국','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','뽀빠이 인생 사는중',NULL,NULL,NULL,0,0),(42,'2546412305','박이령','7da27637faf5a85a0cecaff1ad3b9b35eab1f088a318015149478dfbb0756b97','롱롱 내껀데',NULL,NULL,NULL,0,0),(43,'blablacat','낭만고양이','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','나는 낭 만 고 양 이',NULL,NULL,NULL,0,0),(45,'hahaha','하하하','be178c0543eb17f5f3043021c9e5fcf30285e557a4fc309cce97ff9ca6182912','하하하하하하하하하하하하하하하하하',NULL,NULL,NULL,0,0),(47,'hayun','하유니','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','하유니의 버킷리스트에 오신 것을 환영합니다~ㅎㅎ',NULL,NULL,NULL,0,0),(48,'noimage','이미지없음','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,'',NULL,NULL,0,0),(49,'noah123','박서연','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','맛집 탐방 좋아해요ㅎㅎ',NULL,NULL,NULL,0,0),(50,'benjamin0402','임하은','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','저랑 친구해요~',NULL,NULL,NULL,0,0),(51,'mason','송지유','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','현제의 평친 지유입니다ㅎㅎ',NULL,NULL,NULL,0,0),(52,'lucas','하지우','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','enfj 지우입니다',NULL,NULL,NULL,0,0),(53,'ethan7802','임수아','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','여행작가를 꿈꾸는 수아입니다.',NULL,NULL,NULL,0,0),(54,'elijah23','서아네','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','맞팔맞팔!!',NULL,NULL,NULL,0,0),(55,'oliver222','도윤찡','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','도윤이랑 친구해요~',NULL,NULL,NULL,0,0),(56,'aaronzzzzz','하준이','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','현제 베프입니다',NULL,NULL,NULL,0,0),(57,'aiden89','미니언','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','빠나나~~~~',NULL,NULL,NULL,0,0),(58,'superman','슈퍼맨','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','지구는 내가 지킨다.','',NULL,NULL,0,0),(59,'lia22','서윤서윤','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','Happyyyy',NULL,NULL,NULL,0,0);
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

-- Dump completed on 2022-11-23 21:51:50
