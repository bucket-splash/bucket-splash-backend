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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `board_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (6,'안뇽하세용~ 짱구에요','마스크를 쓴 짱구입니당~','2022-11-21 14:29:08','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg'),(7,'모해요~~','거기서 모해요? 다보여요~','2022-11-21 14:30:20','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669041018/szed8k9xpjku6oggosem.jpg'),(8,'시원한 수박주스 원샷하기','원샷해야 인정','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=1'),(9,'운전 면허 따기','울지 마 울지 마 어린아이같이','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=2'),(10,'자격증 3개 이상 따기','웃는 게 웃는 게 이기는 거라고','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=3'),(11,'교환학생 가기','You are so cute','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=4'),(12,'유럽 배낭여행 가기','You are so dumb','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=5'),(13,'아르바이트 해보기','네가 하는 말이','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=6'),(14,'봉사활동 가기','오늘따라 듣기 싫어','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=7'),(15,'마라톤 뛰어보기','하늘을 한 번 쳐다보고','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=8'),(16,'헌혈 하기','내가 꾹 참고 맘을 다 잡고 네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=9'),(17,'성적 장학금 받기','And I say Hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=10'),(18,'다이어리 한권 완성하기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=11'),(19,'내 차 구입하기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','morty@gmail.com','https://picsum.photos/800/450?random=12'),(20,'한 가지 악기 배우기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=13'),(21,'제주도에서 한달 살기','안녕이라 말할래\nWith my Smiley face\n비웃을 때 빼고\n내 입꼬리는 Chillin\'','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=14'),(22,'기부하기','나빠야지 살아남지 넌 뭐해\n귀엽고 예쁘면 장땡이냐 근데\n널 보고 있으니까 기분이가 좋네','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=15'),(23,'가족사진 찍기','삐뚤어진 성격 모두 나를 겁내\n아주 그냥 확 너는 왜 계속 웃어\n당황하는 틈을 타 날 무장해제','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=16'),(24,'엄마/아빠와 단둘이 여행가기','친구가 될 수 있을까 우리 둘이\n내가 꾹 참고\n맘을 다 잡고\n네게 밝게 웃어줄게','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=17'),(25,'파티룸 빌려서 친구들과 파티하기','And I say hey\nI\'m gonna make it Smile Smile Smile away','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=18'),(26,'워터파크 가기','예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=19'),(27,'스키장 가기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=20'),(28,'글램핑 해보기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=21'),(29,'패러글라이딩 해보기','안녕이라 말할래\nWith my Smiley face\n사실 나의 맘속은 그게 아닌데','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=22'),(30,'스킨스쿠버 체험 해보기','웃어넘기기에 난 너무 행복해\n세상 환히 웃고 있는 내게\n미친 세상은 날 미쳤다 하겠지','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=23'),(31,'호캉스 가기','I don\'t care\nI don\'t care\nWhat you saying','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=24'),(32,'실내 클라이밍 해보기','한 번 사는 내 삶 I Smile it\nEven it\'s lonely and dark\nYeah I\nAnd I say hey','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=25'),(33,'차박 해보기','I\'m gonna make it Smile Smile Smile away\n예쁘게 웃고 넘겨버릴래\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=26'),(34,'비행기 퍼스트 클래스 타보기','아픔 슬픔 외로움 잊게\nI say hey\nI never wanna Cry Cry Cry all day','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=27'),(35,'나의 퍼스널 컬러 찾기','갑자기 눈물이 차오를 땐\nJust Smile away\nJust Smile away','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=28'),(36,'화분 기르기','안녕이라 말할래\nWith my Smiley face','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=29'),(37,'나만의 포토북 만들기','까맣게 변해버린 어둔 세상에\n하얀 펜을 잡은 꼬마 녀석이','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=30'),(38,'유튜브 채널 개설하고 영상 올리기','다시 한 번 나를 불러\n그칠 것 같지 않은 무서운 비가','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=31'),(39,'TV 방청하기','한 번 크게 울고 사라질 때면\n날 비추는 너를 느껴','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=32'),(40,'다이어트 성공해서 바디 프로필 촬영하기','두려움에 떨며 숨어 있었잖아\n혼자서 몰래 울고 있었잖아','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=33'),(41,'콘서트 가기','한참을 지나 눈떠 깨어보니\n날 반기는 저 햇살은','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=34'),(42,'뮤지컬 보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=35'),(43,'월드컵 경기장에서 직관하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=36'),(44,'얼음 낚시 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=37'),(45,'일출/일몰 보기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=38'),(46,'명품 백 사기','너무나도 오래된 빨간 불빛이\n네 손을 잡고 뭔가 느낄 때면','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=39'),(47,'사진 배우기','날 부르는 파란빛이 보여서\n한걸음에 달려가','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=40'),(48,'별 구경 가기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=41'),(49,'셀프 인테리어 해보기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','suji@gmail.com','https://picsum.photos/800/450?random=42'),(50,'홈 카페 해보기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','jjanggu@gmail.com','https://picsum.photos/800/450?random=43'),(51,'제 2 외국어 배우기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=44'),(52,'파워 블로거 되기','소리 내어 불러 보는 너의 이름을\nWoo oh...','2022-11-22 01:47:00','rick@gmail.com','https://picsum.photos/800/450?random=45'),(53,'창업하기','넌 나만의 story, story, story\n저 높은 내 dreaming, dreaming, dreaming','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=46'),(54,'강연하기','이제야 가득하게\n널 위한 노랠 할 거야','2022-11-22 01:47:00','hi6724@gmail.com','https://picsum.photos/800/450?random=47'),(55,'나만의 책 출판하기','넌 나만의 꿈을 담은 story\n저 밝은 햇살을 닮은 dreaming','2022-11-22 01:47:00','dasliebeich7@gmail.com','https://picsum.photos/800/450?random=48'),(56,'건강검진 받고 건강 유지하기','설레는 내 가슴에\n널 부둥켜 안아 줄래','2022-11-22 01:47:00','rick@gmail.com','https://picsum.photos/800/450?random=49'),(57,'오늘 저녁엔...','오늘 저녁엔 비가 온데요 ㅎㅎ \n다들 우산은 챙기셨나요?!','2022-11-22 02:18:03','2542274226','http://res.cloudinary.com/dohkkln9r/image/upload/v1669083482/qzo6yseodxsbueggnbln.jpg');
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `check` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bucket_id`),
  KEY `FK_CATEGORY_TO_BUCKETS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_BUCKETS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buckets`
--

LOCK TABLES `buckets` WRITE;
/*!40000 ALTER TABLE `buckets` DISABLE KEYS */;
INSERT INTO `buckets` VALUES (6,1,'라라랜드 ost 피아노 연주하기','엄청 잘해서 연주회 나가야지~','2022-11-22 02:38:31','hi6724@gmail.com',0),(7,2,'해돋이 가기','인생샷 찍을테다!','2022-11-22 02:38:31','jjanggu@gmail.com',0),(8,3,'울창한 숲 속 가기','건강도 챙겨야 해','2022-11-22 02:38:31','hi6724@gmail.com',0),(9,1,'맨발로 촉촉한 흙길 걷기','기분이 엄청 좋을 것 같아ㅎㅎ','2022-11-22 02:38:31','dasliebeich7@gmail.com',0),(10,2,'일본 온천 가기','짱구랑 같이 가고 싶다아','2022-11-22 02:38:31','suji@gmail.com',0),(11,3,'오로라 보기','두근두근 너무 이쁠 것 같아','2022-11-22 02:38:31','dasliebeich7@gmail.com',0),(12,1,'엄청 큰 눈사람 만들기','나보다 큰 눈사람 만들어야지','2022-11-22 02:38:31','hi6724@gmail.com',0),(13,2,'밤에 외국 벤치에서 맥주 마시기','안주는 야경이지','2022-11-22 02:38:31','jjanggu@gmail.com',0),(14,2,'가야금 배우기','가야금 배워서 smiley 연주해야지','2022-11-22 02:38:31','hi6724@gmail.com',0),(15,1,'다른 나라에서 3개월 이상 살기','잊지 못할 추억이 될 것 같아!','2022-11-22 02:38:31','dasliebeich7@gmail.com',0),(16,2,'부모님 용돈 드리기','나도 부모님께 용돈 좀 드려야겠어','2022-11-22 02:38:31','suji@gmail.com',0),(17,3,'시골 정자에서 수박 먹기','달달한 수박에 옥수수까지~','2022-11-22 02:38:31','dasliebeich7@gmail.com',0),(18,1,'연예인이랑 악수하기','음 수지랑 악수하고 싶다ㅎㅎ','2022-11-22 02:38:31','hi6724@gmail.com',0),(19,2,'한복입고 한옥마을 가기','가서 다 막 귀엽다고 사진찍어달라하면 어떡하지?','2022-11-22 02:38:31','jjanggu@gmail.com',0),(20,2,'플라잉 요가 배우기','플라잉 요가 배우면 하늘을 날 수 있는건가?','2022-11-22 02:38:31','hi6724@gmail.com',0);
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
  `recruit_content` varchar(5000) NOT NULL,
  `people_num` varchar(50) NOT NULL COMMENT '"미정"도 있음',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`recruit_id`),
  KEY `FK_CATEGORY_TO_RECRUITS_1` (`category_id`),
  CONSTRAINT `FK_CATEGORY_TO_RECRUITS_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruits`
--

LOCK TABLES `recruits` WRITE;
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
INSERT INTO `recruits` VALUES (2,1,'1개월 간 세계일주하기','같이 세계일주 하실 분 구해요','3','2021-09-02','2021-09-23','2022-11-21 13:13:02','hi6724@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_lists`
--

LOCK TABLES `team_lists` WRITE;
/*!40000 ALTER TABLE `team_lists` DISABLE KEYS */;
INSERT INTO `team_lists` VALUES (1),(2),(3),(4),(5),(6),(7);
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
  `profile_image` varchar(255) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `teamlist_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `users_ibfk_1` (`teamlist_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`teamlist_id`) REFERENCES `team_lists` (`teamlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hi6724@gmail.com','바로바껴랏','secret','안녕하세요~~~ 바꼇습니다~~\n프로필 이미지 바꿈~~~','http://res.cloudinary.com/dohkkln9r/image/upload/v1669034096/kou4pka7md92garyo2fc.png',NULL,1),(2,'dasliebeich7@gmail.com','롱롱','secret','백엔드 개발자입니다.','https://vlee.kr/wp-content/uploads/2020/03/%EC%95%84%EC%9D%B4%EC%9C%A0_01_5120-1024x576.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU5NjI3Mjg4LCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjA1MjcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImRhc2xpZWJlaWNoN0BnbWFpbC5jb20ifQ.0j-D2o1kUXrx4RePwUp_QcJhDf1C-QzFhXcO7OP11-0',2),(3,'jjanggu@gmail.com','짱구찡','secret','안냐세요 짱구입니당ㅎㅎ','https://r1.community.samsung.com/t5/image/serverpage/image-id/678428i2579A7B06ECAEAAE/image-size/large?v=v2&px=999',NULL,3),(4,'suji@gmail.com','수지','secret','수지입니다.','https://i.pinimg.com/564x/3e/ca/5b/3eca5b1a9acb1b957d534187737832dd.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTg2MjUzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0ODYsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6InN1amlAZ21haWwuY29tIn0.7WXvzjrBDk9xDNk_UcNBaz838fzwLZW58q_zrJ6TMmk',4),(5,'rick@gmail.com','릭','secret','릭입니다.','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rick-and-morty-season-six-image-1662104016.jpg?crop=0.411xw:0.730xh;0.450xw,0.0222xh&resize=480:*',NULL,5),(6,'morty@gmail.com','모티','secret','모티입니다.','https://pbs.twimg.com/media/FUqYS8jXoAAWSf9.jpg','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzU2NTk3ODMxLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NTc0OTcsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6Im1vcnR5QGdtYWlsLmNvbSJ9.pv3V3Wljevmd2SmJskEuvZJzZiyLGk5P1rqLg-XEr-I',6),(7,'hello@gmail.com','byebye','secret','잘가요','https://i.picsum.photos/id/65/4912/3264.jpg?hmac=uq0IxYtPIqRKinGruj45KcPPzxDjQvErcxyS1tn7bG0','eyJ0eXAiOiJKV1QiLCJyZWdEYXRlIjoxNjY4NzYxMTUxMDgzLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Njg3NjIwNTEsInN1YiI6InJlZnJlc2gtdG9rZW4iLCJlbWFpbCI6ImhlbGxvQGdtYWlsLmNvbSJ9.PQny1berE3zKgP88In0r4hiqhrOVlNaawaZlTl0w83g',7),(12,'987654321','coco','987654321','string','https://i.picsum.photos/id/164/1200/800.jpg?hmac=wkqGUkaeW3kiAsHq_VwxSWWossIMAwFV4eUfFzuDkew',NULL,NULL),(13,'2542274226','훈목','2542274226',NULL,'http://k.kakaocdn.net/dn/bIWnsX/btrPgFUg3yR/ntQ9k3dsqBsxzXkSqO0wg0/img_640x640.jpg',NULL,NULL);
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

-- Dump completed on 2022-11-22 11:42:31
