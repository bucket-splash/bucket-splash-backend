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
-- Table structure for table `applys`
--

DROP TABLE IF EXISTS `applys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applys` (
  `apply_id` int NOT NULL AUTO_INCREMENT,
  `recruit_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apply_content` varchar(5000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`apply_id`),
  KEY `recruit_to_comments_idx` (`recruit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applys`
--

LOCK TABLES `applys` WRITE;
/*!40000 ALTER TABLE `applys` DISABLE KEYS */;
INSERT INTO `applys` VALUES (13,1,'2022-11-24 02:20:01','제가 좋은 곳을 알고 있는데 거기로 갈까요?','suji'),(14,1,'2022-11-24 02:20:46','옆에서 구경할래요!','jjanggu'),(16,2,'2022-11-24 06:10:54','','2542274226'),(17,6,'2022-11-24 06:11:20','','2542274226'),(18,3,'2022-11-24 06:12:02','','2542274226'),(19,16,'2022-11-24 07:07:18','안녕하세요 ㅎㅎ','2542274226');
/*!40000 ALTER TABLE `applys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL AUTO_INCREMENT COMMENT 'AI',
  `board_title` varchar(5000) NOT NULL,
  `board_content` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `board_image` varchar(5000) DEFAULT NULL,
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
INSERT INTO `board` VALUES (6,'안뇽하세용~ 짱구에요','마스크를 쓴 짱구입니당~','2022-11-21 14:29:08','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg',0,0),(7,'모해요~~','거기서 모해요? 다보여요~','2022-11-21 14:30:20','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg',0,0),(8,'시원한 수박주스 원샷하기','원샷해야 인정','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=1',0,4),(10,'자격증 3개 이상 따기','웃는 게 웃는 게 이기는 거라고','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=3',0,0),(11,'교환학생 가기','You are so cute','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=4',0,0),(12,'유럽 배낭여행 가기','You are so dumb','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=5',0,0),(13,'아르바이트 해보기','네가 하는 말이','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=6',0,0),(14,'봉사활동 가기','오늘따라 듣기 싫어','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=7',0,0),(15,'마라톤 뛰어보기','하늘을 한 번 쳐다보고','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=8',0,0),(16,'헌혈 하기','내가 꾹 참고 맘을 다 잡고 네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=9',0,0),(17,'성적 장학금 받기','And I say Hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=10',0,0),(18,'다이어리 한권 완성하기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=11',0,0),(19,'내 차 구입하기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','morty','https://picsum.photos/800/450?random=12',0,0),(20,'한 가지 악기 배우기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=13',0,0),(21,'제주도에서 한달 살기','안녕이라 말할래\nWith my Smiley face\n비웃을 때 빼고\n내 입꼬리는 Chillin\'','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=14',0,0),(22,'기부하기','나빠야지 살아남지 넌 뭐해\n귀엽고 예쁘면 장땡이냐 근데\n널 보고 있으니까 기분이가 좋네','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=15',0,0),(23,'가족사진 찍기','삐뚤어진 성격 모두 나를 겁내\n아주 그냥 확 너는 왜 계속 웃어\n당황하는 틈을 타 날 무장해제','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=16',0,0),(24,'엄마/아빠와 단둘이 여행가기','친구가 될 수 있을까 우리 둘이\n내가 꾹 참고\n맘을 다 잡고\n네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=17',0,0),(25,'파티룸 빌려서 친구들과 파티하기','And I say hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=18',0,0),(26,'워터파크 가기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=19',0,0),(27,'스키장 가기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=20',0,0),(28,'글램핑 해보기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=21',0,0),(29,'패러글라이딩 해보기','안녕이라 말할래\nWith my Smiley face\n사실 나의 맘속은 그게 아닌데','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=22',0,0),(30,'스킨스쿠버 체험 해보기','웃어넘기기에 난 너무 행복해\n세상 환히 웃고 있는 내게\n미친 세상은 날 미쳤다 하겠지','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=23',0,0),(31,'호캉스 가기','I don\'t care\nI don\'t care\nWhat you saying','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=24',0,0),(32,'실내 클라이밍 해보기','한 번 사는 내 삶 I Smile it\nEven it\'s lonely and dark\nYeah I\nAnd I say hey','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=25',0,0),(33,'차박 해보기','I\'m gonna make it Smile Smile Smile away\n예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=26',0,0),(34,'비행기 퍼스트 클래스 타보기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=27',0,0),(35,'나의 퍼스널 컬러 찾기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=28',0,0),(36,'화분 기르기','안녕이라 말할래\nWith my Smiley face','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=29',0,0),(37,'나만의 포토북 만들기','까맣게 변해버린 어둔 세상에\n하얀 펜을 잡은 꼬마 녀석이','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=30',0,0),(38,'유튜브 채널 개설하고 영상 올리기','다시 한 번 나를 불러\n그칠 것 같지 않은 무서운 비가','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=31',0,0),(39,'TV 방청하기','한 번 크게 울고 사라질 때면\n날 비추는 너를 느껴','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=32',0,0),(40,'다이어트 성공해서 바디 프로필 촬영하기','두려움에 떨며 숨어 있었잖아\n혼자서 몰래 울고 있었잖아','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=33',0,0),(41,'콘서트 가기','한참을 지나 눈떠 깨어보니\n날 반기는 저 햇살은','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=34',0,0),(42,'뮤지컬 보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=35',0,0),(43,'월드컵 경기장에서 직관하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=36',0,0),(44,'얼음 낚시 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=37',0,0),(45,'일출/일몰 보기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=38',0,0),(46,'명품 백 사기','너무나도 오래된 빨간 불빛이\n네 손을 잡고 뭔가 느낄 때면','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=39',0,0),(47,'사진 배우기','날 부르는 파란빛이 보여서\n한걸음에 달려가','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=40',0,0),(48,'별 구경 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=41',0,0),(49,'셀프 인테리어 해보기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji','https://picsum.photos/800/450?random=42',0,0),(50,'홈 카페 해보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu','https://picsum.photos/800/450?random=43',0,0),(51,'제 2 외국어 배우기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=44',0,0),(52,'파워 블로거 되기','소리 내어 불러 보는 너의 이름을\nWoo oh...','2022-11-22 01:47:00','rick','https://picsum.photos/800/450?random=45',0,0),(53,'창업하기','넌 나만의 story, story, story\n저 높은 내 dreaming, dreaming, dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=46',0,0),(54,'강연하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','hi6724','https://picsum.photos/800/450?random=47',0,0),(55,'나만의 책 출판하기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7','https://picsum.photos/800/450?random=48',1,0),(56,'건강검진 받고 건강 유지하기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','rick','https://picsum.photos/800/450?random=49',1,0),(57,'오늘 저녁엔...','오늘 저녁엔 비가 온데요 ㅎㅎ \n다들 우산은 챙기셨나요?!','2022-11-22 02:18:03','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669083482/qzo6yseodxsbueggnbln.jpg',0,0),(59,'이미지 없음','이미지 없는 게시글','2022-11-23 12:26:05','noimage','',0,1);
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
  `board_comment_content` varchar(5000) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `board_id` int NOT NULL,
  PRIMARY KEY (`board_comment_id`),
  KEY `board_id_idx` (`board_id`),
  CONSTRAINT `board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comments`
--

LOCK TABLES `board_comments` WRITE;
/*!40000 ALTER TABLE `board_comments` DISABLE KEYS */;
INSERT INTO `board_comments` VALUES (1,'우와 너무 재밌을 것 같아요~','suji','2022-11-22 04:49:45',8),(2,'키야 과일주스 중에선 수박주스가 짱이죠!','hi6724','2022-11-22 04:50:29',8),(3,'시원한 수박주스~~','dasliebeich7','2022-11-22 04:50:51',8),(5,'요즘 수박 얼마해요? 용돈 모아서 사려고 하는데..','jjanggu','2022-11-23 04:48:04',8),(6,'wabalabadubdub','rick','2022-11-23 04:53:19',8),(10,'바로바로 바꾸자','2542274226','2022-11-23 05:28:29',57),(12,'이미지가 없어요','2542274226','2022-11-24 07:38:05',59);
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
  `bucket_title` varchar(5000) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'스포츠/피트니스'),(2,'어학'),(3,'요리/음료/맛집'),(4,'재테크/투자'),(5,'교양'),(6,'기타');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (18,'2542274226',56),(19,'2542274226',55);
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
  `recruit_title` varchar(5000) NOT NULL,
  `recruit_content` varchar(5000) NOT NULL,
  `people_num` varchar(50) NOT NULL COMMENT '"미정"도 있음',
  `start_date` timestamp NOT NULL,
  `end_date` timestamp NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `applys_count` int NOT NULL DEFAULT '0',
  `deposit` int NOT NULL DEFAULT '0',
  `closed` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`recruit_id`),
  KEY `FK_CATEGORY_TO_RECRUITS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_RECRUITS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruits`
--

LOCK TABLES `recruits` WRITE;
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
INSERT INTO `recruits` VALUES (1,3,'와인 시음회하기','같이 하면 재밌을 것 같아요ㅎㅎ','10','2022-12-21 13:13:02','2022-12-29 13:13:02','2022-11-10 13:13:02','hi6724',2,30000,0),(2,1,'등산 좋아하시는 분들..','설악산 등산 가실 분 구해요','2','2022-12-23 13:13:02','2022-12-30 13:13:02','2022-11-20 05:04:25','dasliebeich7',2,15000,0),(3,2,'매일 영어로 1시간씩 대화하기','영어 실력 늘리고 싶으신 분들 환영해요ㅎㅎ 같이 영어권 나라 놀러가도 재밌을 것 같아요!','5','2023-01-21 13:13:02','2023-01-31 13:13:02','2022-11-12 22:04:25','rick',1,20000,0),(4,4,'핀테크로 10억 벌기','같이 정보 공유하면서 핀테크 해요ㅎㅎ 10억 정도는 금방 모을 수 있다!!!!','5','2023-01-02 13:13:02','2023-12-22 04:02:00','2022-11-22 22:04:25','morty',0,0,0),(5,5,'꽃꽂이 체험하기','꽃꽂이 체험 해보면서 마음의 안정도 얻고 집에 아름다운 장식품으로도 사용하고 싶어요! 마음 맞는 분들이랑 하고 친해지면 함께 좀 더 같이 배우면 재밌을 것 같습니다ㅎㅎ^^','4','2022-12-21 13:13:02','2022-12-21 13:13:02','2022-11-23 04:04:25','suji',0,20000,0),(6,6,'할머니, 할아버지들에게 컴퓨터 기술 알려드리기 봉사활동','저희 할머니랑 할아버지가 컴퓨터로 가계부를 쓰고 싶어하시는데 잘 모르겠다고 도움을 요청하시더라구요! 구래서 다른 분들에게도 알려드리고 싶어서 사람들 모아봐요ㅎㅎ 초등학생이면 좋을 것 같아용','4','2022-12-22 13:13:02','2022-12-31 13:13:02','2022-11-22 22:02:25','jjanggu',1,0,0),(7,5,'사진, 출사 같이 하실분 구해요~ 카린이도 환영!!!','주로 서울, 강원에서 소소하게 출사다니며 촬영할려고\n만들어써요~\n인원이 늘어나면은 평일 가볍게 카페나 식사부터\n주말에는 출사를 계획 하고있습니다.\n풍경, 인물, 은하수, 야경에 관심있고\n카메라, 휴대폰 어떠한것도 괜찮아요!\n사진을 찍기위해 만나고 서로 친해지는것이 목적이니까요\n사진 초보도 그 누구도 괜찮습니다\n와서 함께 사진기술을 키워 나가면 좋겠어요~!!','3','2022-12-12 13:13:02','2022-12-21 13:13:02','2022-11-23 22:04:25','mason',0,30000,0),(8,5,'피부미용 같이 하실분을 모집합니다 :)\n피부미용 같이 하실분을 모집합니다 :)','안녕하세요.\n피부미용 관리하는공간입니다.\n샵인샵이며 공간을 같이 쉐어 하며 \n같이 하실분을 모집하고 있어요.\n2~3주 트레이닝을 거치고 전반적인 감들을 옆에서 도와드립니다.\n보시고 관심있으신분들 \n자격증 있으신분들 한해 알려주세요☺','4','2022-12-08 13:13:02','2022-12-23 13:13:02','2022-11-22 22:04:25','aaronzzzzz',0,20000,0),(9,5,'창원 진해지역 취미미술 같이하실분~^^','그림을 사랑하시는분들\n포트폴리오제작을 원하시는분들\n그냥 커피마시면서 수다떨고싶은분들~~♡\n웰컴^^','4','2022-12-04 13:13:02','2022-12-18 13:13:02','2022-11-23 17:04:25','noah123',0,10000,0),(10,5,'보컬, 댄스 연습해서 한강에서 공연하실 분 구해요','나이는 17살부터 27살까지면 좋겠어요~ 성별은 무관! 취미,아이돌 지망생,호기심,흥미 등 상관 없습니다~\n춤,노래 맞춰보고 서로 알려주기도 하면서\n자세도 교정하고 노래도 녹음 해볼 거에요.\n영상도 찍어보면서 추억도 남기고 장기적으로\n할 것 같으면 유튜브 업로드 등도 생각해볼겁니다','7','2022-11-29 13:13:02','2022-12-06 13:13:02','2022-11-24 04:04:25','bbobbai',0,50000,0),(11,5,'블로그 체험단 같이 하실 분~','안녕하세요, \n\n아래 블로그 운영하고 있어요!\n\n주로 서울 동쪽, 경기도 북부쪽에서 많이 활동하는데\n\n혹시 동네에 같이 다니실분 있으시면\n\n블로그 친구 구하면 좋을 것 같아서요~!\n\n서로 블로그 이웃추가도 하고, \n\n동네에서 식당 맛집 정보도 공유하구요!\n\n쪽지 주세요~!','3','2022-11-29 13:13:02','2022-12-07 13:13:02','2022-11-24 04:12:25','hi6724',0,10000,0),(12,5,'홍대에서 주식 스터디 같이 하실 분','돈맛 주식 스터디는 ‘수익지향’의 욕망투자를 공부하고 실천합니다.\n\n무엇보다 재미있습니다!\n\n\n\n언제까지 재미없는 곳에 시간을 투자 하실건가요?\n\n재미가 없는데 황금같은 주말에\n\n화장하고 이쁜 옷을 입고 나올 필요가 없습니다.\n\n \n\n공통 관심사를 자유롭게 이야기할 수 있는 곳!\n\n커피도 있고 간식도 있고 공부도 할 수 있는 스터디 돈.주.스\n\n\n\n더이상 설명은 필요없습니다.\n\n일단 그냥 한번 와보세요!','4','2022-11-29 13:13:02','2022-12-25 13:13:02','2022-11-24 04:22:25','bbobbai',0,20000,0),(13,5,'영화와 드라마로 인문학 공부하실 분 모집합니다.','저는 영화와 드라마를 매우 좋아하는 1인입니다. ㅎㅎ\n\n근데 인문학 독서토론모임은 많이 있는데 영화나 드라마를 보고 토론하는 모임은 잘 없더라구요.\n\n그래서 저처럼 독서가 어려운 분이 계시다면 저와 함께 영화인문학 모임한번 만들어 보시면 어떨까요? \n\n영화, 드라마, 유튜브를 보고 함께 이야기를 나누며 토론을 하다보면 자연스럽게 인문학공부도 될 것 같거든요.\n\n스터디모임 운영방식은 독서토론모임처럼 책을 읽고 나서 이야기 나누며 토론하는 것처럼 \n\n영화나 드라마를 보고와서 자신이 느낀점이나 공유할 내용을 편하게 오픈채팅에서 이야기하는 방식으로 진행하려고 합니다.\n\n저와 함께 영화인문학 공부하실 분 계시면 신청해 주세요.','5','2022-11-29 13:13:02','2022-12-12 13:13:02','2022-11-24 04:21:25','hi6724',0,30000,0),(14,5,'<이책저책> 독서 소모임','하나의 장르에 국한되지 않고 소설, 자기계발, 에세이, 인문학, 수필서, 역사, 과학 등 장르를 가리지 않고 이책 저책 다양한 서적에서 선정해서 다양한 주제로 나누려고 합니다.\n\n 딱딱하게 진행하기보다는 자유롭게 대화하려고 합니다','6','2022-11-29 13:13:02','2022-12-11 13:13:02','2022-11-24 04:43:25','jjanggu',0,40000,0),(15,3,'직장인 요리 모임','반갑습니다 부산 직장인 요리모임 ‍‍쉘쿡입니다!\n\n부산에서 정기적으로 모여서 요리할 분들 있을까요?\n\n평소 요리를 좋아하고 이러한 모임이 있으면 좋겠다 생각해서 모임을 직접 만들어 봤습니다! \n\n요리에 관심이 있으면 누구나! 한달 4-8회 정규모임 실시(주중 저녁 1-2회, 주말 2회)\n*매번 참석하지 않아도 됩니다 : )\n','2','2022-11-29 13:13:02','2022-12-16 13:13:02','2022-11-24 04:23:25','jjanggu',0,10000,0),(16,5,'중년을 위한 독서 모임','리더를 두고 2시간 동안 진행됩니다.\n책에 따라 어떤 경우는 챕터별 내용 이해를 중점으로 토론하고, 어떤 책은 각자의 느낌 위주로 주제를 놓고 넓게 토론하기도 합니다. 매번 선정도서에 맞는 적절한 방식을 정해서 토론합니다. \n일반적으로 선정 도서의 논지를 파악하고 주요 개념을 숙지하는 것을 중요하게 여기므로 도서를 완독하고 이해하지 못한 상태에서 개인 이야기를 나누는 것은 지양하는 편입니다. 친목과 수다로 흐르지 않게 하려고 애쓰면서 동시에 논쟁처럼 말싸움이 되지 않게 하려고 리더가 적절히 개입하고 중재합니다. ','3','2022-11-29 13:13:02','2022-12-05 13:13:02','2022-11-24 04:44:25','hi6724',1,20000,0),(17,6,'공원에서 쓰레기 줍기','가을을 느끼기 위해 명소를\n찾아 가지 않아도,\n문밖 어디든 정취를 느낄 수 있듯\n행복을 쫓지 않아도\n행복은 언제나 곁에 있다는 것?','4','2022-11-29 13:13:02','2022-12-08 13:13:02','2022-11-24 04:23:25','suji',0,30000,0),(18,5,'반려식물 힐링 원예 같이해요','정서 치유를 위한 소모임입니다','5','2022-11-29 13:13:02','2022-12-06 13:13:02','2022-11-24 04:04:25','suji',0,23000,0),(19,1,'균형잡힌 일상을 위한 밸런스 운동!','매일 약간의 시간을 투자해 밸런스 잡힌 일상을 살아보자구요','6','2022-11-29 13:13:02','2022-12-06 13:13:02','2022-11-24 04:11:25','hi6724',0,10000,0),(20,6,'EM 이용해서 환상 사랑 실천하기','유용한 미생물들을 이용해서 천연 제품 함꼐 만들어요','3','2022-11-29 13:13:02','2022-12-06 13:13:02','2022-11-24 04:12:25','suji',0,24000,0),(21,1,'꾸따에서 서핑같이 하실분~~!','팔일날  들어와서 꾸따에서 서핑하고 있는데\n둘이서 놀려니깐 심심하고 서핑도 잘 안느는것 같네요..ㅠ.ㅠ\n저희는 27일까지 뽀삐스 1 new arena hotel에서 머물면서 서핑할건데\n이 기간에 꾸따에 여행오시거나 서핑오시는 분 같이 서핑해요\n \n혹시 가능한 분은 호텔로 연락 주세요','2','2022-11-24 15:00:00','2022-11-29 15:00:00','2022-11-24 07:21:06','2542274226',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_lists`
--

LOCK TABLES `team_lists` WRITE;
/*!40000 ALTER TABLE `team_lists` DISABLE KEYS */;
INSERT INTO `team_lists` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(37),(38),(41),(42),(60);
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
  `team_name` varchar(5000) NOT NULL,
  `team_content` varchar(5000) DEFAULT NULL,
  `teamlist_id` int DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `teams_ibfk_1` (`teamlist_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`teamlist_id`) REFERENCES `team_lists` (`teamlist_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (10,'와인 시음회하기','같이 하면 재밌을 것 같아요ㅎㅎ',3),(11,'와인 시음회하기','같이 하면 재밌을 것 같아요ㅎㅎ',4);
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
  `bio` varchar(5000) DEFAULT NULL,
  `profile_image` varchar(5000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `teamlist_id` int DEFAULT NULL,
  `following_count` int DEFAULT '0',
  `followed_count` int DEFAULT '0',
  PRIMARY KEY (`user_id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hi6724','바다의 현제','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','바다를 좋아하는 최현제라고 합니다','http://res.cloudinary.com/dohkkln9r/image/upload/v1669179767/rs4lehurnzr6hykbg2df.jpg',NULL,1,0,0),(2,'dasliebeich7','롱롱','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','백엔드 개발자입니다.','https://vlee.kr/wp-content/uploads/2020/03/%EC%95%84%EC%9D%B4%EC%9C%A0_01_5120-1024x576.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU5NjI3Mjg4LCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjA1MjcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImRhc2xpZWJlaWNoN0BnbWFpbC5jb20ifQ.0j-D2o1kUXrx4RePwUp_QcJhDf1C-QzFhXcO7OP11-0',2,0,0),(3,'jjanggu','짱구찡','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','안냐세요 짱구입니당ㅎㅎ','https://r1.community.samsung.com/t5/image/serverpage/image-id/678428i2579A7B06ECAEAAE/image-size/large?v=v2&px=999',NULL,3,0,0),(4,'suji','수지','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','수지입니다.','https://i.pinimg.com/564x/3e/ca/5b/3eca5b1a9acb1b957d534187737832dd.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTg2MjUzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0ODYsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6InN1amlAZ21haWwuY29tIn0.7WXvzjrBDk9xDNk_UcNBaz838fzwLZW58q_zrJ6TMmk',4,0,0),(5,'rick','릭','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','릭입니다.','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rick-and-morty-season-six-image-1662104016.jpg?crop=0.411xw:0.730xh;0.450xw,0.0222xh&resize=480:*',NULL,5,0,0),(6,'morty','모티','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','모티입니다.','https://pbs.twimg.com/media/FUqYS8jXoAAWSf9.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTk3ODMxLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0OTcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6Im1vcnR5QGdtYWlsLmNvbSJ9.pv3V3Wljevmd2SmJskEuvZJzZiyLGk5P1rqLg-XEr-I',6,0,0),(7,'hello','byebye','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','잘가요','https://i.picsum.photos/id/65/4912/3264.jpg?hmac=uq0IxYtPIqRKinGruj45KcPPzxDjQvErcxyS1tn7bG0','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzYxMTUxMDgzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjIwNTEsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSJ9.PQny1berE3zKgP88In0r4hiqhrOVlNaawaZlTl0w83g',7,0,0),(13,'2542274226','훈목','c84ff936d19c5aaa0a2c61a3432e9946d1f38acfffaa85b83f1d7bd32f286a96','훈목이버섯 따따블 추가요~','http://k.kakaocdn.net/dn/bIWnsX/btrPgFUg3yR/ntQ9k3dsqBsxzXkSqO0wg0/img_640x640.jpg',NULL,13,0,0),(38,'bbobbai','시금치된장국','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','뽀빠이 인생 사는중','https://picsum.photos/800/450?random=114',NULL,38,0,0),(42,'2546412305','박이령','7da27637faf5a85a0cecaff1ad3b9b35eab1f088a318015149478dfbb0756b97','롱롱 내껀데','https://picsum.photos/800/450?random=115',NULL,42,0,0),(43,'blablacat','낭만고양이','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','나는 낭 만 고 양 이','https://picsum.photos/800/450?random=116',NULL,43,0,0),(45,'hahaha','하하하','be178c0543eb17f5f3043021c9e5fcf30285e557a4fc309cce97ff9ca6182912','하하하하하하하하하하하하하하하하하','https://picsum.photos/800/450?random=117',NULL,45,0,0),(47,'hayun','하유니','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','하유니의 버킷리스트에 오신 것을 환영합니다~ㅎㅎ','https://picsum.photos/800/450?random=118',NULL,47,0,0),(48,'noimage','이미지없음','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,NULL,NULL,48,0,0),(49,'noah123','박서연','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','맛집 탐방 좋아해요ㅎㅎ','https://picsum.photos/800/450?random=119',NULL,49,0,0),(50,'benjamin0402','임하은','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','저랑 친구해요~','https://picsum.photos/800/450?random=120',NULL,50,0,0),(51,'mason','송지유','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','현제의 평친 지유입니다ㅎㅎ','https://picsum.photos/800/450?random=140',NULL,51,0,0),(52,'lucas','하지우','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','enfj 지우입니다','https://picsum.photos/800/450?random=141',NULL,52,0,0),(53,'ethan7802','임수아','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','여행작가를 꿈꾸는 수아입니다.','https://picsum.photos/800/450?random=142',NULL,53,0,0),(54,'elijah23','서아네','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','맞팔맞팔!!','https://picsum.photos/800/450?random=143',NULL,54,0,0),(55,'oliver222','도윤찡','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','도윤이랑 친구해요~','https://picsum.photos/800/450?random=144',NULL,55,0,0),(56,'aaronzzzzz','하준이','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','현제 베프입니다','https://picsum.photos/800/450?random=145',NULL,56,0,0),(57,'aiden89','미니언','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','빠나나~~~~','https://picsum.photos/800/450?random=146',NULL,57,0,0),(58,'superman','슈퍼맨','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','지구는 내가 지킨다.','https://picsum.photos/800/450?random=147',NULL,58,0,0),(59,'lia22','서윤서윤','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','Happyyyy','https://picsum.photos/800/450?random=148',NULL,59,0,0),(60,'hihi','둑흔둑흔','2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b','이런거 첨해봐여ㅎㅎ 두근두근','https://picsum.photos/800/450?random=200',NULL,60,0,0);
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

-- Dump completed on 2022-11-24 17:01:51
