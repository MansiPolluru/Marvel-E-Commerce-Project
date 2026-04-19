-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: marvelstoredb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpu4bcbluhsxagirmbdn7dilm5` (`product_id`),
  KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKpu4bcbluhsxagirmbdn7dilm5` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (9,1,NULL,2,5),(10,1,NULL,3,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marvel_action_figures`
--

DROP TABLE IF EXISTS `marvel_action_figures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marvel_action_figures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marvel_action_figures`
--

LOCK TABLES `marvel_action_figures` WRITE;
/*!40000 ALTER TABLE `marvel_action_figures` DISABLE KEYS */;
/*!40000 ALTER TABLE `marvel_action_figures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marvel_clothes`
--

DROP TABLE IF EXISTS `marvel_clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marvel_clothes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marvel_clothes`
--

LOCK TABLES `marvel_clothes` WRITE;
/*!40000 ALTER TABLE `marvel_clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `marvel_clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marvel_keychains`
--

DROP TABLE IF EXISTS `marvel_keychains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marvel_keychains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marvel_keychains`
--

LOCK TABLES `marvel_keychains` WRITE;
/*!40000 ALTER TABLE `marvel_keychains` DISABLE KEYS */;
/*!40000 ALTER TABLE `marvel_keychains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marvel_magnets`
--

DROP TABLE IF EXISTS `marvel_magnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marvel_magnets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marvel_magnets`
--

LOCK TABLES `marvel_magnets` WRITE;
/*!40000 ALTER TABLE `marvel_magnets` DISABLE KEYS */;
/*!40000 ALTER TABLE `marvel_magnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marvel_tools`
--

DROP TABLE IF EXISTS `marvel_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marvel_tools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marvel_tools`
--

LOCK TABLES `marvel_tools` WRITE;
/*!40000 ALTER TABLE `marvel_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `marvel_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_of_order` date DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `total_price` double NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,'2026-04-17','CANCELLED','marvel clothes','Arc Reactor T-Shirt',2,'N/A',100,'mansi@gmail.com',NULL),(12,'2026-04-17','DELIVERED','marvel clothes','Iron Man Varsity Jacket',1,'N/A',80,'pradeep@gmail.com',NULL),(13,'2026-04-17','DELIVERED','marvel magnets','Avengers A Magnet',1,'N/A',8,'pradeep@gmail.com',NULL),(14,'2026-04-17','CANCELLED','marvel clothes','Scarlet Witch Scarlet Robe',1,'N/A',70,'mansi@gmail.com',NULL),(15,'2026-04-18','DELIVERED','marvel magnets','Avengers A Magnet',1,'N/A',8,'pradeep@gmail.com',NULL),(16,'2026-04-18','DELIVERED','marvel tools','Caps Shield Metal',1,'N/A',200,'pradeep@gmail.com',NULL),(17,'2026-04-18','DELIVERED','marvel tools','TVA Handbook',1,'N/A',30,'pradeep@gmail.com',NULL),(18,'2026-04-18','DELIVERED','marvel magnets','Avengers A Magnet',1,'N/A',8,'pradeep@gmail.com',NULL),(19,'2026-04-18','DELIVERED','marvel tools','Caps Shield Metal',1,'N/A',200,'pradeep@gmail.com',NULL),(20,'2026-04-18','DELIVERED','marvel tools','TVA Handbook',1,'N/A',30,'pradeep@gmail.com',NULL),(21,'2026-04-18','DELIVERED','marvel action figures','Cap Endgame Edition',1,'N/A',28,'pradeep@gmail.com',NULL),(22,'2026-04-18','DELIVERED','marvel action figures','Spider-Man Integrated',1,'N/A',25,'pradeep@gmail.com',NULL),(23,'2026-04-18','DELIVERED','marvel action figures','Cap Endgame Edition',1,'N/A',28,'pradeep@gmail.com',NULL),(24,'2026-04-18','DELIVERED','marvel action figures','Spider-Man Integrated',1,'N/A',25,'pradeep@gmail.com',NULL),(25,'2026-04-18','DELIVERED','marvel clothes','Captain America Hoodie',2,'N/A',90,'mansi@gmail.com',NULL),(26,'2026-04-18','DELIVERED','marvel keychains','Baby Groot Figure',1,'N/A',6,'mansi@gmail.com',NULL),(27,'2026-04-18','DELIVERED','marvel tools','Yandis Yaka Arrow',1,'N/A',55,'mansi@gmail.com',NULL),(28,'2026-04-18','DELIVERED','marvel tools','Daredevil Billy Club',1,'N/A',70,'mansi@gmail.com','2-2-1125/137 New Nallakunta, HYD, 500044'),(29,'2026-04-18','DELIVERED','marvel tools','Hulkbuster Gauntlet',1,'N/A',85,'mansi@gmail.com','2-2-1125/137 New Nallakunta, HYD, 500044'),(30,'2026-04-18','DELIVERED','marvel magnets','Captain America Shield',1,'N/A',10,'mansi@gmail.com','2-2-1125/137 New Nallakunta, HYD, 500044'),(31,'2026-04-18','DELIVERED','marvel tools','Caps Shield Metal',1,'N/A',200,'mansi@gmail.com','9963177611, Shivam Road, Hyderabad, 500044');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` text,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'marvel clothes','A sleek black cotton tee featuring a glow-in-the-dark Tony Stark Arc Reactor print on the chest. Perfect for geniuses, billionaires, and philanthropists.','https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1750750070_9215230.jpg?w=1080&dpr=2','Arc Reactor T-Shirt',50,'S, M, L, XL'),(2,'marvel clothes','A heavy-duty navy blue hoodie with the iconic vibranium shield embroidered on the back. Includes a soft fleece lining for those cold Brooklyn nights.','https://m.media-amazon.com/images/I/71jRXrE55eL._SX679_.jpg','Captain America Hoodie',45,'S, M, L, XL'),(3,'marvel clothes','Lightweight, breathable red and blue athletic shorts featuring a subtle web-pattern weave. Designed for maximum agility during your daily gym sessions.','https://m.media-amazon.com/images/I/71a+Jp5xEqL._SX679_.jpg','Spider-Man Tech Shorts',35,'S, M, L, XL'),(4,'marvel clothes','A form-fitting black tactical jacket with red hourglass accents. Made from high-durability synthetic leather for a sleek, professional look.','https://m.media-amazon.com/images/I/81gVlomQjHL._AC_UY1100_.jpg','Black Widow Stealth Jacket',65,'S, M, L, XL'),(5,'marvel clothes','A grey heather tank top featuring Mjolnir and Norse runes. Great for showing off your gains while training to be the God of Thunder.','https://m.media-amazon.com/images/I/61Ap6-g++cL._SX679_.jpg','Thor Worthy Tank Top',22,'S, M, L, XL'),(6,'marvel clothes','Extra-roomy purple joggers with a Hulk Smash fist logo on the thigh. Features an elastic waistband that wont rip during a transformation.','https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1732787875_9257369.jpg','Hulk Smash Sweatpants',40,'S, M, L, XL'),(7,'marvel clothes','A green and gold lightweight jacket with a hidden hood. Perfect for unpredictable weather and schemes across the Nine Realms.','https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1722085121_9500783.jpg?w=1080&dpr=2','Loki Mischief Windbreaker',55,'S, M, L, XL'),(8,'marvel clothes','A sophisticated black polo shirt with subtle tribal patterns on the collar. Made from premium cotton fit for a King of Wakanda.','https://m.media-amazon.com/images/I/61qyicXsfeL._SY879_.jpg','Wakanda Forever Polo',35,'S, M, L, XL'),(9,'marvel clothes','A red and gold letterman-style jacket with Stark Industries embroidered on the front. Classic high-school style meets futuristic tech.','https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1713175160_9310323.jpg?w=480&dpr=2','Iron Man Varsity Jacket',80,'S, M, L, XL'),(10,'marvel clothes','An eco-friendly tan t-shirt made from organic cotton featuring a I Am Groot graphic. Simple, sustainable, and charming.','https://images.meesho.com/images/products/837552187/pkdri_512.avif?width=512','Groot Nature Tee',25,'S, M, L, XL'),(11,'marvel clothes','A rugged charcoal hoodie featuring the classic white skull logo. Features reinforced stitching for a tough, street-ready aesthetic.','https://m.media-amazon.com/images/I/A1kl1pPXdaL._AC_UY1000_.jpg','Punisher Skull Hoodie',50,'S, M, L, XL'),(12,'marvel clothes','A unique crimson red oversized wrap cardigan with a high collar. Inspired by the Cloak of Levitation, it adds a touch of magic.','https://m.media-amazon.com/images/I/61AFG5gmfcL._SY879_.jpg','Doctor Strange Cloak Wrap',60,'S, M, L, XL'),(13,'marvel clothes','A red and black moisture-wicking shirt that fits like a second skin. Designed for runners who want to feel fast and small.','https://www.gymheroics.com/cdn/shop/products/90_d969f7b1-d279-4a64-a040-389a2ac6f8c8_1024x1024.jpg?v=1559108401','Ant-Man Compression Shirt',35,'S, M, L, XL'),(14,'marvel clothes','A thick, yellow and blue plaid flannel shirt thats tough enough for the Canadian wilderness. Features Logan stitched inside.','https://i.redd.it/9k0koi6wpbtd1.jpeg','Wolverine Flannel',45,'S, M, L, XL'),(15,'marvel clothes','A comfortable deep red lounging robe with intricate chaos magic symbols. Perfect for staying cozy while rewriting reality.','https://m.media-amazon.com/images/I/51Jy1U0JdNS._AC_UY1100_.jpg','Scarlet Witch Scarlet Robe',70,'S, M, L, XL'),(16,'marvel clothes','A funny red t-shirt showing Deadpool enjoying a chimichanga. Because even mercenaries need a lunch break and a laugh.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ3el1wTlX-1ZttCzdwQlx24gvNxAuVPlW4nbStg5Ak_Psxgg7_6TpCZzKZHgsWl0mrFIm-WOZyXIJpXJeQyqMEAlYfG2zEgA','Deadpool Taco Tee',25,'S, M, L, XL'),(17,'marvel clothes','A gold-colored snapback hat featuring six colorful gems on the side. A powerful accessory for those who want to balance their outfit.','https://m.media-amazon.com/images/I/61qLeyPFltL._AC_SX679_.jpg','Thanos Infinity Cap',28,'S, M, L, XL'),(18,'marvel clothes','A purple and black utility vest with multiple pockets for all your daily arrows and gadgets. Lightweight and practical.','https://www.marveljacket.com/wp-content/uploads/2020/12/Hawkeye-The-Avengers-Vest.jpg','Hawkeye Archer Vest',50,'S, M, L, XL'),(19,'marvel clothes','A bright blue and red jersey with a large gold lightning bolt. Stylish, stretchy, and perfect for the hero in training.','https://i.ebayimg.com/images/g/tjsAAOSw6s9i17DR/s-l1200.jpg','Ms. Marvel Jersey',40,'S, M, L, XL'),(20,'marvel clothes','A silver-colored compression sleeve designed to mimic Buckys bionic arm. Provides muscle support and a legendary look.','https://i.etsystatic.com/13375858/r/il/ba344b/6838982341/il_1588xN.6838982341_mltf.jpg','Winter Soldier Arm Sleeve',30,'S, M, L, XL'),(21,'marvel keychains','A solid die-cast metal Thors hammer keychain with a leather strap. Heavy enough to feel quality.','https://images-cdn.ubuy.co.in/65c364686d577737de5b4136-marvel-avengers-thor-hammer-mjolnir.jpg','Mini Mjolnir',7,NULL),(22,'marvel keychains','A plastic Iron Man helmet keychain where the eyes light up with a small button press.','https://miglowstore.in/cdn/shop/files/BabyIronManB_1.jpg?v=1690971828','Iron Man LED',10,NULL),(23,'marvel keychains','A small silver replica of Peter Parkers web-shooter. It doesnt shoot webs, but it looks amazing.','https://i.ebayimg.com/images/g/6hsAAOSwKYFdH~qd/s-l1200.jpg','Spidey Web-Shooter',8,NULL),(24,'marvel keychains','A high-quality enamel keychain of the Captain America shield. Features a spin-action center.','https://ae01.alicdn.com/kf/Sa399ac5f933b4cddaf5bc97b17d1fe68B.jpg?has_lang=1&ver=2','Caps Vibranium Shield',9,NULL),(25,'marvel keychains','A tiny, flexible rubber Groot figure that dangles from your keys.','https://m.media-amazon.com/images/I/514nLz1-E5L._AC_UF1000,1000_QL80_.jpg','Baby Groot Figure',6,NULL),(26,'marvel keychains','Six small colored acrylic stones hanging from a single gold chain.','https://m.media-amazon.com/images/I/71EEO9UtBOL._SY675_.jpg','Infinity Gem Set',12,NULL),(27,'marvel keychains','A sleek, baton-shaped keychain with blue electric-effect paint.','https://m.media-amazon.com/images/I/81pAH8tcxsL._SY879_.jpg','Black Widow Baton',8,NULL),(28,'marvel keychains','A soft, faux-fur keychain resembling Rockets tail.','https://m.media-amazon.com/images/I/512dGfRZi7L.jpg','Rocket Raccoon Tail',7,NULL),(29,'marvel keychains','A miniature Eye of Agamotto keychain with a green Time Stone center.','https://m.media-amazon.com/images/I/61Lx4gWaZZL._AC_UY1100_.jpg','Eye of Agamotto Mini',10,NULL),(30,'marvel keychains','A plush, squishy Deadpool head keychain. Great for stress relief.','https://imaginaire.com/docs/5063457052638.JPG','Deadpool Head',8,NULL),(31,'marvel keychains','A small golden scepter with a blue gem. Use it to mind control your way home.','https://m.media-amazon.com/images/I/61E7gxlQykL._AC_UY1100_.jpg','Lokis Scepter',11,NULL),(32,'marvel keychains','A single, sharp-looking silver panther claw on a black cord.','https://m.media-amazon.com/images/I/61D1RcpLG4L._AC_UY1100_.jpg','Wakanda Panther Claw',9,NULL),(33,'marvel keychains','A 3D molded gold gauntlet keychain. The ultimate power in the palm of your hand.','https://topperskit.com/cdn/shop/files/1_db702772-d3c9-462d-938a-d0db9220c07a.jpg?v=1738403447&width=416','Thanos Gauntlet Mini',12,NULL),(34,'marvel keychains','A tiny replica of the Luis brown van. A hilarious reference for true Ant-Man fans.','https://static0.cbrimages.com/wordpress/wp-content/uploads/2018/05/T-34-Tank-Keychain-from-Ant-Man.jpg?q=50&fit=crop&w=825&dpr=1.5','Ant-Man Van',8,NULL),(35,'marvel keychains','A detailed miniature of Peter Quills Quad Blaster.','https://dmminisus.com/cdn/shop/files/L28xW19xH53mm_e749ca8e-af66-4a80-8c09-f6b12749d76a.jpg?v=1753746628','Star-Lord Blaster',9,NULL),(36,'marvel keychains','A metal keychain designed to look like a SHIELD agents clearance badge.','https://i.etsystatic.com/17561624/r/il/f8b44a/1510925206/il_570xN.1510925206_c1l5.jpg','SHIELD ID Tag',10,NULL),(37,'marvel keychains','Accurate replicas of Logans military dog tags on a ball chain. Rugged and simple.','https://thedogtag.co/cdn/shop/products/wolverine-logan-military-dog-tags-cosplay-costume-prop-replica-stainless-steel-chains-included-225528.jpg?v=1699628381&width=1946','Wolverine Dog Tags',12,NULL),(38,'marvel keychains','A gold and blue star-shaped keychain inspired by Carol Danvers suit.','https://m.media-amazon.com/images/I/51x7kvDB7wL._AC_UY1100_.jpg','Captain Marvel Star',8,NULL),(39,'marvel keychains','A soft foam Hulk fist that you can squeeze.','https://m.media-amazon.com/images/I/41wRhnDW+WL._AC_UY1100_.jpg','Hulk Hand Squeeze',7,NULL),(40,'marvel keychains','A white and pink mask keychain for fans of the Spider-Verse.','https://www.tradeinn.com/f/13806/138064991/semic-studio-spider-gwen-key-chain.webp','Spider-Gwen Mask',8,NULL),(41,'marvel action figures','A highly detailed 6-inch figure with 20 points of articulation and interchangeable hands.','https://m.media-amazon.com/images/I/51xpaYuV3fL._SL1000_.jpg','Iron Man MK 85',25,NULL),(42,'marvel action figures','Captain America featuring his scaled armor and a broken shield accessory.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRuTecpD8UfaFC0tZrhQfoIk6FBj_qapYzoY2atBgnJM1P8fRnXfhcbd0QNIMQy9FuhoEv2OvzpzL8Dnqcl3ddm6Ji8BreBIVdf3clMfxN8pAPsf1mZwdNW','Cap Endgame Edition',28,NULL),(43,'marvel action figures','An oversized 9-inch Thanos figure with a removable Infinity Gauntlet.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTeq5RIf-mvU91npVfbSToTYiAbYyMTpFERkdcJAwoNoa7lwEtNJwWuyGF-RxQDaLOAY_H5DOw5ktANmSUnUiW9165BbQiEIdufVboa7lsPCM5tjGsBkxydtw','Thanos Deluxe',40,NULL),(44,'marvel action figures','Based on No Way Home, this figure features the black and gold suit.','https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQw7U5gWqDVW8ReZBl9-OT-RPNfWENQy19kyd4NgFTQbIPot4GwXY_sz6Nu0jxUcl8IKE8TA4ZZWgT525640bIATOQy-j72yw','Spider-Man Integrated',25,NULL),(45,'marvel action figures','Thor in his vibrant blue and gold armor with a glowing Stormbreaker accessory.','https://m.media-amazon.com/images/I/61+HoXk0BvL._AC_UF894,1000_QL80_.jpg','Thor Love and Thunder',27,NULL),(46,'marvel action figures','The new Black Panther figure with vibranium-glow purple accents.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRDsiqjZa0ecGE1bn2IAP5TN68njBSbzOB9f3Xygt5-l_hdMdGv9FOxpGGI0g4Otw6X8NZI0DQ9ZZpn1Q14l7LxqJngKluCI-2WSW9ilPMYhHghsMZpgd0Cjw','Black Panther Shuri',25,NULL),(47,'marvel action figures','Hulk in his Thor: Ragnarok arena armor, complete with a massive hammer.','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRqDQuN-PELKiF79bQdgeibQEEgenkkKWp3eapxqoyQaOZtKTkuZdHMYD8byxxoZdR_qX309y0nOvJvMoENbjMQpu9xESCoXO6rVxfm9jGzNI96bS7UPM9PT38','Hulk Gladiator',35,NULL),(48,'marvel action figures','Wanda in her full Scarlet Witch regalia with translucent red chaos magic hands.','https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTAOnKlx14s0g07bcEOAsLdoq_K3HUHsBNVto8jn2E044zMaeLUuNwjxAaG4nxl474GDqhlPrywadQEqEYYZShurybBGVsQIyiLy975Djn2EL1QnOm-UxaJ','Scarlet Witch Multiverse',30,NULL),(49,'marvel action figures','A special edition figure of Defender Strange with an alternate Portal backdrop.','https://shop.robotrobot.com/cdn/shop/products/65e49208a3dab6899d0a36165fef9624.jpg?v=1676022437&width=1946','Doctor Strange Defender',26,NULL),(50,'marvel action figures','Loki in his Variant jacket, accompanied by a small Alligator Loki figure.','https://houseofcollectibles.com.tr/wp-content/uploads/2024/03/hot-toys-loki-tva-suit-sixth-scale-figure-ht1-543-s0-p5-5000x5000-i29556.jpg','Loki TVA Suit',24,NULL),(51,'marvel action figures','A stunning white-wrapped Moon Knight figure with crescent dart accessories.','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQjIktWbA71Rw5q5Jb1-Hno0j5MXxOv2MsMksPvvowRTZT4JYdCcA6GuOadG5FaR_YVOsFcCDjhShOAZ9rd6N5dqlIrmWO9i77w8Oaj2l8sTaBwNhgtTwRAVQ','Moon Knight',30,NULL),(52,'marvel action figures','The classic Willem Dafoe Goblin with a removable mask and a poseable glider.','https://m.media-amazon.com/images/I/71UQM05uxoL._AC_UF1000,1000_QL80_.jpg','Green Goblin Retro',32,NULL),(53,'marvel action figures','A bulky, detailed Venom figure with tendril attachments.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQqvOMbduf8MfaBg8evDkW_qQFlMSrbSdOLaWlov-9J8_QViwK6mYVZJ4WL9i6MxMljxY0P17jEAa6v2iaiIEKEljbNGpnDy_nTscRNXo6C8ZeHhs2hry92Sbg','Venom Movie',35,NULL),(54,'marvel action figures','Peter Quill in the new blue Guardians uniform with dual blasters.','https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQ8smOu-pexhxzOZGX1mqSXrSvbKtyQKizam4W-vjTD1J8sMyZAoKzAQN7BGif1FiIMePUCS0n1eg8eaTGuW08UvBRkZVnJRddNzhtsrcMnX2jMDcoiYt-dnQ','Star-Lord Vol 3',25,NULL),(55,'marvel action figures','A towering Groot figure with vine-extension arms and a small Rocket Raccoon.','https://m.media-amazon.com/images/I/61hegvNPZQL.jpg','Groot Adult',28,NULL),(56,'marvel action figures','Carol Danvers in her powered-up Binary mode with energy bursts.','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSO9SPfqDnTGE8Yuu40RsiEh1dFoDVzABB84fb1fjs8lqYX0poGyXE1NPKfwyd1PVPuc8e-10L11B2uTQ8g_lGSi6mSLJbGmLWujDek7QoHZz2qQNdzfBYF1Q','Captain Marvel Binary',26,NULL),(57,'marvel action figures','Bucky Barnes in his tactical gear with a sniper rifle and chrome-painted arm.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcThyzEgk5ieVfp-CKUGIvt0qF5k8ZFidMu1E1ML8hDY6RYOdux3XCzvct5dWy9X3ms3kt77AAmIrlBquG5Yu69AVTKzgIVOrqJaPc9pYYxRbZhPP57bK16UzA','Winter Soldier Classic',25,NULL),(58,'marvel action figures','The Master of Kung Fu with ten glowing rings that can be attached.','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRtzBox9vthwaIAN6LSI5ZAnvuaP-8kO_V943LQm-VmRlQdB9HeNZ5PumAbNHthpk2dfBlBn_qX4pLmAb0w9Elx0PEjiwXa_p5E9SZMuTZgg5789WnQ0VY8','Shang-Chi',24,NULL),(59,'marvel action figures','A classic tribute figure featuring Matt Murdock in his original yellow and red suit.','https://popcollectibles.store/cdn/shop/products/DSC00116_1024x1024.jpg?v=1677007796','Daredevil Yellow Suit',22,NULL),(60,'marvel action figures','A massive, cosmic figure of Uatu the Watcher. Stands head and shoulders above the rest.','https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTLkoJg1hujWMI6vjWHwtl0EeB8a2XtzYGzywjFeG5AvbvPWHfr3Dx-eUp5VyuyvffoPvK7tRSCsjLlmrpVTZyitZYInBTb1w','The Watcher BAF',50,NULL),(61,'marvel magnets','The classic brushed-metal Avengers logo for your fridge. A symbol of unity for the mightiest heroes in your kitchen.','https://m.media-amazon.com/images/I/61cKZCK+IiL._SL1500_.jpg','Avengers A Magnet',8,NULL),(62,'marvel magnets','A miniature 3D molded Iron Man mask with reflective gold eyes. Strong enough to hold up your heaviest grocery lists.','https://makerworld.bblmw.com/makerworld/model/USb61ddc5cdcef79/design/2024-03-10_ce5ee93287faf.jpg?x-oss-process=image/resize,w_1000/format,webp','Iron Man Helmet 3D',12,NULL),(63,'marvel magnets','A vibrant red and white rubberized magnet of Peter Parkers mask. Sticks to surfaces as easily as Spidey sticks to walls.','https://m.media-amazon.com/images/I/51UN944pLQL.jpg','Spider-Man Face',9,NULL),(64,'marvel magnets','A heavy-duty pewter magnet shaped like Thors hammer. Only the worthy can move it from the freezer door.','https://cdn.thingiverse.com/assets/98/60/0c/fe/ae/large_display_IMG_3264.jpg','Mjolnir Hammer Magnet',15,NULL),(65,'marvel magnets','A circular, red, white, and blue enamel magnet. Built to protect your fridge from boring decorations.','https://media.printables.com/media/prints/7399/images/54977_8a883190-cf3a-4946-957b-609b0e43a48e/thumbs/inside/1280x960/jpg/20190618_200820_7399.webp','Captain America Shield',10,NULL),(66,'marvel magnets','A green, textured magnet that looks like the Hulk is punching through your refrigerator door.','https://makerworld.bblmw.com/makerworld/model/US42bb16975ca3c8/design/2024-08-02_93c0e6970e29b.png?x-oss-process=image/resize,w_1000/format,webp','Hulk Fist Smash',12,NULL),(67,'marvel magnets','A sleek black magnet with silver highlights representing the King of Wakanda. Elegant and powerful.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs40KO3lpIWxY0Vo7wOZ0wf0ogd_z8coUF6g&s','Black Panther Mask',11,NULL),(68,'marvel magnets','A magnet shaped like a comic book speech bubble featuring a sassy Deadpool quote.','https://m.media-amazon.com/images/I/61QKViw4kZL._AC_UF894,1000_QL80_.jpg','Deadpool Speech Bubble',9,NULL),(69,'marvel magnets','A cute, small magnet of Baby Groot in a pot. Guaranteed to make you smile every time you go for a snack.','https://i.etsystatic.com/14344778/r/il/c5491d/2386366618/il_340x270.2386366618_nrz0.jpg','Groot Flower Pot',10,NULL),(70,'marvel magnets','A golden magnet featuring all six Infinity Stones. Control the destiny of your kitchen with a single snap.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM5qjosDtIGZg4kvobspws5pmGAuxUke61yA&s','Infinity Gauntlet',18,NULL),(71,'marvel magnets','A formal silver and black eagle logo of the worlds premier spy organization. Classified information not included.','https://i5.walmartimages.com/seo/Marvel-Agents-of-S-H-I-E-L-D-Insignia-2-5-x-3-5-Inch-Magnet_dccf87b2-0ba4-4f3e-86b0-b65bba6ca982.0f496824c7b7a9e30797c6c170005329.jpeg?odnHeight=208&odnWidth=208&odnBg=FFFFFF','SHIELD Emblem',10,NULL),(72,'marvel magnets','A golden magnet featuring Lokis iconic long-horned helmet. Adds a touch of mischief to your home decor.','https://img-new.cgtrader.com/items/6705640/09f6d944f5/loki-fridge-magnet-stl-3d-printable-trickster-god-magnet-3d-model-09f6d944f5.webp','Loki Helmet Magnet',13,NULL),(73,'marvel magnets','A terrifyingly cool magnet of Venoms open jaw and long tongue. Not for the faint of heart.','https://fbi.cults3d.com/uploaders/26944097/illustration-file/d66cb522-55ad-4e40-875b-dc2b55d88e7a/VENOM.png','Venom Teeth',12,NULL),(74,'marvel magnets','A retro Awesome Mix Vol. 1 tape magnet. A nostalgic tribute to Star-Lord.','https://i.etsystatic.com/22277810/r/il/e3d2ca/5717363391/il_fullxfull.5717363391_1w1z.jpg','Guardians Cassette Tape',9,NULL),(75,'marvel magnets','A simple, deep red magnet shaped like the Devil of Hells Kitchen. Fearless design for a bold kitchen.','https://www.toynk.com/cdn/shop/files/SOI-DDVLMASK3DPIN1-C-2_1800x.jpg?v=1754681054','Daredevil Horns',9,NULL),(76,'marvel magnets','A flat, matte black skull magnet for those who prefer a grittier look for their appliances.','https://i.ebayimg.com/00/s/MTU2OFgxNjAw/z/8qkAAOSwXUJjxhp6/$_12.JPG?set_id=880000500F','Punisher Skull',8,NULL),(77,'marvel magnets','A classic yellow and black X magnet. Celebrate mutant pride and Charles Xaviers school.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOlEXC_pG1lPW0yWMC2DouhBBHzNZHXQUo_w&s','X-Men X Logo',10,NULL),(78,'marvel magnets','A detailed silver and red magnet that looks just like Scott Langs shrinking tech.','https://i.ebayimg.com/images/g/VEQAAOSw5UVa2J8P/s-l1200.jpg','Ant-Man Helmet',11,NULL),(79,'marvel magnets','A magnet shaped like the Eye of Agamotto. It might not control time, but it looks mystical.','https://media.dcbservice.com/xlarge/OCT172814.jpg','Doctor Strange Eye',14,NULL),(80,'marvel magnets','Three metallic-looking claw marks that stick to your fridge. Shows everyone that a mutant was here.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn0x1EEPZ06RCHxS5hM8oSHZ1HzL7q9Kw0gw&s','Wolverine Claws',11,NULL),(81,'marvel tools','A full-scale, 1:1 ratio hammer made of heavy polystone. Features etched Norse runes.','https://shoppingnest.in/cdn/shop/files/3_37ab4907-0413-4dd0-be33-2c8475b6029a.jpg?v=1748683799&width=1946','Mjolnir Replica',150,NULL),(82,'marvel tools','An enormous replica of Thors axe-hammer. Features a wood-grain handle.','https://i.redd.it/s7rx6nj1ncu41.jpg','Stormbreaker',180,NULL),(83,'marvel tools','A 24-inch vibranium-style aluminum shield with adjustable leather straps.','https://m.media-amazon.com/images/I/618u1g+LppL._AC_UF1000,1000_QL80_.jpg','Caps Shield Metal',200,NULL),(84,'marvel tools','A wearable MK 7 helmet with a magnetic faceplate that opens and closes.','https://i.etsystatic.com/35783435/r/il/212db5/5143440695/il_fullxfull.5143440695_nujs.jpg','Iron Man Helmet',120,NULL),(85,'marvel tools','A pair of golden-hilted curved daggers used by the God of Mischief.','https://dl2.myminifactory.com/object-assets/60d8a25f5fe43/images/208348390-327307918992753-2126682841137103954-n-1.jpg','Lokis Daggers',90,NULL),(86,'marvel tools','A set of two tactical batons that can be joined together.','https://cdna.artstation.com/p/assets/images/images/070/787/482/large/henry-ituarte-batons11.jpg?1703520356','Black Widow Batons',80,NULL),(87,'marvel tools','A leather-bound replica of the red Soviet book used to trigger Bucky.','https://i.pinimg.com/474x/5a/7b/60/5a7b60c7c8ce43e6708b536a13fb708a.jpg','Winter Soldier Book',45,NULL),(88,'marvel tools','An orange, spiral-bound Miss Minutes guide to the Time Variance Authority.','https://i.etsystatic.com/31372700/r/il/19c77e/6813591532/il_fullxfull.6813591532_2kfn.jpg','TVA Handbook',30,NULL),(89,'marvel tools','A wearable pendant with a mechanical iris that opens to reveal the Time Stone.','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgm6Xu3k1Z9-Kdzv066Arsjvc4PZDbMbMF1iGqLQ_lm3BlmypWv2wIGmMHcFDGkKSgTzXkW653uOkyrSIshtqP4lZmZku-WpEFDmUE9TzWCpIx1MpEQx09P4ZboU5Gb-z1XSW3jIzdGQr75BDvITrYhOIuAwSeFl3sEGhklrD_Nv6C4bdriF7_p1AsD/s2047/20230108_165320.jpg','Eye of Agamotto',75,NULL),(90,'marvel tools','A pair of wearable wrist devices with pressurized air canisters to shoot silly string.','https://di2ponv0v5otw.cloudfront.net/posts/2023/06/03/647bc9ecc5df6cd4a78ec63a/m_wp_647bca1424237af314cf6ffd.webp','Web-Shooters Pro',60,NULL),(91,'marvel tools','A collapsible recurve bow replica. Does not fire real arrows.','https://i.pinimg.com/736x/08/3b/ed/083beddc10e3856dd71cf27e3d5a94dd.jpg','Hawkeyes Bow',110,NULL),(92,'marvel tools','A wearable electronic gauntlet with articulated fingers and six light-up stones.','https://i.etsystatic.com/19286482/r/il/b267ee/1959067419/il_fullxfull.1959067419_kmmn.jpg','Infinity Gauntlet',130,NULL),(93,'marvel tools','A twin set of Peter Quills blasters with movie-accurate weathering.','https://i.redd.it/i-finally-finished-the-replica-of-star-lords-blasters-the-v0-m2mzj2ysg23a1.jpg?width=3589&format=pjpg&auto=webp&s=a2a778a3cb07e21e468d76b319c8372e98e840c0','Star-Lord Blasters',95,NULL),(94,'marvel tools','A set of black Wakandan beads that light up with blue symbols.','https://m.media-amazon.com/images/I/615netLfGIL._AC_UY1100_.jpg','Kimoyo Beads',40,NULL),(95,'marvel tools','Ten wearable metal rings that can be stored on a custom display stand.','https://cdna.artstation.com/p/assets/images/images/047/531/232/large/andrew-crossen-70399c67-5bec-44f3-9c75-2a45406ca508.jpg?1647829711','Ten Rings Set',140,NULL),(96,'marvel tools','A metallic arrow replica that comes with a whistle-activated display stand.','https://i.etsystatic.com/14025851/r/il/5a0a18/4779157406/il_fullxfull.4779157406_ddb4.jpg','Yandis Yaka Arrow',55,NULL),(97,'marvel tools','A massive gauntlet with jackhammer-punching action and sound effects.','https://i.ytimg.com/vi/-aGzjsI_ncY/maxresdefault.jpg','Hulkbuster Gauntlet',85,NULL),(98,'marvel tools','A multi-purpose red baton that can be split or connected by a cable.','https://cdn11.bigcommerce.com/s-7z5ql2ej3b/images/stencil/original/products/260/950/CharlieCoxDaredevilAluminumBillyClubsidebysidefar2__43438.1775340539.jpg?c=1','Daredevil Billy Club',70,NULL),(99,'marvel tools','A display case containing one red and one blue vial of Pym Particle fluid.','https://nbg1.your-objectstorage.com/yourprops/uploads/images/202503/img_lg_67e2c9789bf056-59977922.jpg','Ant-Man Pym Particles',50,NULL),(100,'marvel tools','A glowing blue cube containing the Space Stone. This 1:1 scale replica features internal LED lighting and a custom SHIELD display case.','https://cdna.artstation.com/p/assets/images/images/041/507/782/large/richard-tesseractcontainercloseup.jpg?1631886842','The Tesseract',120,NULL),(101,'marvel clothes','Black and red Iron Man printed Marvel T-shirt with half sleeves','https://protees.pk/cdn/shop/files/white_75f719c1-56e5-468d-a5fa-821a23a5c8f6_1800x1800.jpg?v=1726910936','Iron Man Suit T-Shirt',999,'S, M, L, XL');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mansi@gmail.com','Mansi','$2a$10$tA80IMY.XEaSb8BFtvvAwuaoKJ..zIKyETiMqOspoyOHdPS5VLo2i','USER'),(4,'marveladmin@gmail.com','Admin','$2a$10$w7vOepLgSfOR4XIcuzt6q..4D5BGCdrSQ1UqaTBs8.IU/b3gGdQEK','ROLE_ADMIN'),(5,'pradeep@gmail.com','Pradeep','$2a$10$b24soEbG.aDvx/IRl/AajeNJiYmZSSUM0Rl1xN1AVyE.KzFygFKrS','USER'),(8,'loki@gmail.com','loki','$2a$10$/CSPXskXes7KxZV3r2EMPuF6v41wyA4GIBOcFvDNZEhSPQug2TPvO','USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-19 17:57:06
