-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2024 at 05:17 AM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `cardname` varchar(20) DEFAULT NULL,
  `cardnumber` varchar(16) DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `card_expiry` date DEFAULT NULL,
  `total_amount` double NOT NULL,
  `bill_date` date NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `uid`, `address1`, `address2`, `phone`, `city`, `state`, `payment_type`, `cardname`, `cardnumber`, `cvv`, `card_expiry`, `total_amount`, `bill_date`) VALUES
(1, 1, 'junagdh road jetpur', '', '9632587410', 'Jetpur', 'Gujarat', 'COD', NULL, NULL, NULL, NULL, 273.245, '2024-02-19'),
(2, 1, 'Dharemdra road rajkot', '150 ft ring road', '9258631470', 'Rajkot', 'GUJARAT', 'card', 'neha', '9856321476325413', '526', '2024-04-18', 336.545, '2024-02-20'),
(3, 2, 'Sliver building mira road bombay', '', '8563974210', 'Mira road', 'Maharastra', 'COD', NULL, NULL, NULL, NULL, 1266, '2024-02-23'),
(4, 6, 'jetpur,junagadh,road ', 'jetpur,junagadh,road ', '9632587410', 'jetpur', 'gujarat', 'card', 'makwana jignasa', '1234123412341234', '520', '2024-03-04', 464.2, '2024-02-24'),
(5, 4, 'New nirama builiding,virar', '', '9632587410', 'virar', 'Maharastra', 'COD', NULL, NULL, NULL, NULL, 597.13, '2024-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `pro_id` (`pro_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `uid`, `pro_id`, `quantity`) VALUES
(3, 4, 6, 1),
(4, 1, 5, 1),
(6, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Novel'),
(2, 'Fiction'),
(3, 'Non Fiction'),
(4, 'Biography'),
(5, 'Comics'),
(6, 'Health'),
(7, 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `cnumber` varchar(20) NOT NULL,
  `cemail` varchar(20) NOT NULL,
  `cmessage` varchar(500) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `cname`, `cnumber`, `cemail`, `cmessage`) VALUES
(1, 'Manaya Roy', '9658741230', 'manya@gmail.com', 'How to pay payment..'),
(2, 'jhon', '8563297441', 'jhon@gmail.com', 'How much your product  quantity available at time..'),
(3, 'Mahi', '9632011230', 'mahi@gmail.com', 'at time how many quantity place order'),
(4, 'Het Mehta', '8541112300', 'het123@gmail.com', 'How can check my wishlist..?'),
(5, 'Nityshree', '8521476300', 'nitu@gmail.com', 'How to add in cart in product');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `femail` varchar(20) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `feed_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `fname`, `femail`, `feedback`, `feed_status`) VALUES
(1, 'Mannit Khtri', 'mannit@gmail.com', 'Nice collection good product packgeing...', 'True'),
(2, 'Neha', 'neha@gmail.com', 'Good collection for book readers..', 'True'),
(3, 'aadhya', 'aadhya@gmail.com', 'every types of book available..\r\nany time every books available. ', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

DROP TABLE IF EXISTS `ordertbl`;
CREATE TABLE IF NOT EXISTS `ordertbl` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `orderQty` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `bill_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `bill_id` (`bill_id`),
  KEY `pro_id` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`order_id`, `pro_id`, `price`, `orderQty`, `status`, `bill_id`) VALUES
(1, 11, 259, 1, 'delivered', 1),
(2, 4, 319, 1, 'Cancel', 2),
(3, 7, 300, 4, 'Ordered', 3),
(4, 1, 440, 1, 'Cancel', 4),
(5, 10, 566, 1, 'Ordered', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_details` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_quantity` int(11) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_details`, `author`, `publisher`, `image`, `pro_price`, `pro_quantity`, `sale`, `date`, `cat_id`) VALUES
(1, 'of clouds and Rainbows', 'A novel set in the kingdom of bhutan.try to strat a new life in Thimphu.', 'Jhon L.L.Dahlgren', 'Clever Fox Publishing', 'ofcloudsandrainbows.jpg', 440, 12, 0, '2024-02-14', 1),
(2, 'Devdas', 'Devdas has enthralled readers and filmgoing audiences alike for the better part of a century.This is classis hindi fiction.', 'SaratChandra Chattopadhyay', 'Dey\'s Publishing', 'deavdas.jpg', 149, 8, 0, '2024-02-14', 2),
(3, 'Chinta Chodo Sukh Se Jiyo', 'The classis non fiction', 'Dale Carnegie', 'Diamond Pocket Books Pvt LTD', 'chintachodosukhsejiyo.jpg\r\n', 239, 10, 0, '2024-02-14', 3),
(4, 'Atomic Habits', 'Atomic Habits is a step-by-step manual for changing routines.', 'James Clear', 'Penguin Random House', 'atomic habbit.jpg', 319, 14, 20, '2024-02-15', 3),
(5, 'Ghachar Ghochar', 'Masterfully translated from the Kannada by Srinath Perur, Ghachar Ghochar is a suspenseful, playful and ultimately menacing story about the shifting consequences of success.', 'Srinath Perur', 'HarperCollins India', 'ghacharghochar.jpg', 228, 10, 0, '2024-02-15', 2),
(6, 'The Winter Garden', 'An entertaining and thought provoking fable\' SFX\'A mesmerising, stunningly crafted story of loss and the importance of dreams\' Waterstones Welcome to the Winter Garden', 'Bell Alexandra', 'Del Ray', 'thewintergarden.jpg', 1567, 10, 0, '2024-02-15', 2),
(7, 'Byomkesh Bakshi ki Jasoosi Kahaniyan', 'One day Byomkesh Bakshi would become one of the most popular and enduring characters of Bengali literature.', ' Saradindu Bandyopadhyay', 'prabhat prakashan pvt.ltd', 'byomkeshbakshi.jpg', 300, 16, 20, '2024-02-15', 2),
(8, 'Power Of Your Subconscious Mind', 'Dr Joseph Murphy answers these questions in his bestselling self-help book The Power of Your Subconscious Mind', 'Joseph Murphy', 'Rupa & co.', 'Power Of Your Subconscious Mind.jpg', 195, 14, 0, '2024-02-15', 2),
(9, 'The Lost Symbol', 'WHAT WAS LOST WILL BE FOUND...Washington DC: Harvard symbologist Robert Langdon is summoned at the last minute to deliver an evening lecture in the Capitol Building. Within moments of his arrival, however, a disturbing object - gruesomely encoded with five symbols - is discovered at the epicentre of the Rotunda.', 'Dan Brown', 'transworld publishers ltd', 'lostsymbol.jpg', 364, 7, 0, '2024-02-15', 2),
(10, 'Irrfan: Dialogues with the Wind', 'Irrfan: Dialogues with the Wind', 'Anup Singh', 'Copper Coin', 'irrfan.jpg', 566, 9, 20, '2024-02-15', 4),
(11, 'Make Epic Money', 'In his groundbreaking book Do Epic Shit, Warikoo dropped this truth bomb: ?Three relationships determine our life?s course ? time, money, and ourselves.?', 'Ankur Warikoo', 'Penguin Random House India', 'MakeEpicMoney.jpg', 259, 19, 0, '2024-02-18', 3),
(12, 'Heart of Darkness', 'The mind of man is capable of anything.Charles Marlow, an English seaman, narrates his journeyup the River Congo in search of an ivory trader namedMr. Kurtz. Orignal price=129.', 'Joseph Conrad', 'Fingerprint! Publishing', 'HeartOfDarkness.jpg\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 89, 25, 40, '2024-02-21', 2),
(13, 'Alchemist - Hindi', 'The Alchemist has sold 85 million copies.Fiction', 'Paulo Coelho', 'Manjul Publishing House', 'Alchemist.jpg', 245, 10, 0, '2024-02-21', 2),
(14, 'Pokhran - A Novel', 'The success of the ?Smiling Buddha? nuclear test marked the rise of India as a nuclear power in 1974. But what went unreported in the media was the nuclear fallout that had lasting impact on the inhabitants of Pokhran, especially Chaitanya.', 'Uday Singh', 'Srishti Publishers and Distributors', 'POKHRUN.jpg', 254, 8, 0, '2024-02-27', 1),
(15, 'Loot: A Novel', 'Abbas is just seventeen years old when his gifts as a woodcarver come to the attention of Tipu Sultan. He is drawn into service at the palace to build a giant tiger automaton for Tipu?s sons, a gift to commemorate their return from British captivity.', 'Tania James', 'Penguin Random House India Pvt Ltd', 'LOOT.jpg', 589, 5, 0, '2024-02-27', 1),
(16, 'Novels of Sudha Murthy:: A Critical Study', 'Sudha Murthy\'s Novels are a thoughtfully-crafted and well-articulated set of creative literary works which have been well appreciated at many national and international platforms. Murthy\'s novels brin ...', 'Murthy Sudha', 'DATTSONS', 'sudha murthy.jpg', 923, 5, 0, '2024-02-27', 1),
(17, 'Ruskin Bonds', 'No one heard the stealthy padding of a panther approaching the door, pushing it wider open. But suddenly there were sounds of a frantic struggle, and Sanjay\'s stifled cries were mixed with the grunts of the panther', 'Ruskin Bond', 'Rupa Publications', 'ruskinbond.jpg', 260, 9, 0, '2024-02-27', 1),
(18, 'The Book of Everlasting Things', 'LAHORE, 1938. Drawn by an intoxicating smell, Samir Vij first locks eyes with Firdaus Khan through the rows of perfume bottles in his family\'s ittar shop in Anarkali Bazaar. Over the years that follow, the perfumer and the illuminator of manuscripts fall in love, their story written in dark and delicate ink. Original price is= 599', 'Aanchal Malhotra', 'Harper Collins Publishers', 'The Book of Everlasting Things.jpg', 493, 13, 18, '2024-02-27', 1),
(19, 'Why Not Me?', 'A hopeless romantic, Anubhav had been looking for the love of his life. When Zoya accepted his online friend request, he felt an instant connection. Soon, he was falling deeply in love with her.', 'Anubhav Agrawal', 'HarperCollins', 'whynotme.jpg', 99, 12, 0, '2024-02-27', 3),
(20, 'Postbox Kashmir', 'These are some of the questions two teenagers--Saumya in Delhi and Duaa in Kashmir--asked through letters they exchanged over almost three years.', 'Divya Arya ', 'Penguin India Books', 'Postbox Kashmir.jpg', 206, 6, 0, '2024-02-27', 3),
(21, 'India After Gandhi', 'India After Gandhi\' by Ramachandra Guha. Ramachandra Guha\'s \'India After Gandhi\' is a comprehensive account of India\'s journey from independence to the ..', 'Ramachandra Guha', 'HarperCollins', 'India After Gandhi.jpg', 860, 11, 0, '2024-02-27', 3),
(22, 'Wings of Fire', 'Wings of Fire: An Autobiography is an autobiographical novel that tells the readers a story about unlocking their inner potential. Kalam does a great deal to throw light on his journey to igniting the fire within himself.', 'Apj Abdul Kalam ', ' Sangam Books Ltd', 'Wings of Fire.jpg', 361, 15, 0, '2024-02-27', 4),
(23, 'The Story of My Life', '?You are amazed at all the things you know which are not on the examination paper.? Emerging confidently from darkness and silence, she won over her blindness and deafness. Armed with curiosity and imagination, she was grateful for the senses and skills she possessed. Meet Helen Keller, whose life is a classic example of unfaltering determination.', 'Helen Keller', 'Fingerprint! Publishing', 'The Story of My Life.jpg', 329, 9, 0, '2024-02-27', 4),
(24, 'MOTHER TERESA: The Untold Story ', 'The popular tendency is to deify myths, gurus, and personalities without investigating the claims thoroughly. Mother Teresa is one such name. Does Mother Teresa deserve her reputation as the most charitable person who ever lived? This book makes for a gripping but disconcerting read.', 'Aroup Chatterjee', 'Fingerprint! Publishing', 'MOTHER TERESA.jpg', 239, 2, 20, '2024-02-27', 4),
(25, 'Kalpana Chawla', '\"\"When you look at the stars and the galaxy, you feel that you are not just from any particular piece of land, but from the solar system.\"\" - these were the first words of the first Indian woman astronaut, Kalpana Chawla, when she landed on the earth.', 'Abhishek Kumar', ' Repro Books Limited', 'Kalpana Chawla.jpg', 539, 7, 0, '2024-02-27', 4),
(26, 'Hero\'s Journey', 'Joseph Campbell, arguably the greatest mythologist of the twentieth century, was certainly one of our greatest storytellers. ', 'Joseph Campbell', 'New World Library', 'Hero\'s Journey.jpg', 372, 10, 0, '2024-02-27', 4),
(27, 'J.Krishnamurt', 'A classic biography of one of the greatest spiritual teachers of our times In 1909, when he was just fourteen, Krishnamurti was proclaimed the world teacher in whom Maitreya, the Bodhisattva of compassion, would manifest.', 'Pupul Jayakar', 'Penguin Books Australia', 'J.Krishnamurt.jpg', 147, 6, 5, '2024-02-27', 4),
(28, 'I Am No Messiah', 'Sometimes, a little nudge from the universe pushes one to find his raison d\'etre in life. If actor Sonu Sood had given in to the celebrity syndrome of sitting in his ivory tower and expressing his generosity by remote control, he would have never come face to face with the trauma of India\'s migrant labourers or understood that a food packet was a woefully inadequate substitute for a ride back home.', 'Sonu Sood', 'Penguin Random House India Pvt. Ltd', 'Sonu Sood.jpg', 321, 20, 30, '2024-02-27', 4),
(29, 'Victory March', 'Comic book based on the historical mega-series Dharti ka veer yodha -- Prithviraj Chauhan, a television program on the life and exploits of Pr?thv?r?ja, King of Ajmer and Delhi, 1159-1192.', 'STAR TV COMICS', 'Prakash Books', 'Victory March.jpg', 35, 20, 0, '2024-02-27', 5),
(30, 'The Yak Pack', 'Learn to read the most commonly used Dolch sight words, essential for reading fluency. Join Zak the Yak and friends on a sight word learning adventure! Book 1 of 5 - Dolch Sight Words 1-20 The first book in the series features 10 easy-to-read stories that teach the first list of 20 sight words.', 'Rumack Resources', 'Rumack Resources', 'The Yack Pack.jpg', 703, 11, 0, '2024-02-27', 5),
(31, 'Comics: Three Stooges', 'Presents the history of the classic comedy trio that got their start in vaudeville and went on to become major film and television stars, chronicling their personal and professional successes as well as their trials and tribulations', 'Apriyadi Kusbiantoro', 'Tidalwave Productions', 'ComicsThree Stooges.jpg', 870, 8, 22, '2024-02-27', 5),
(32, 'Cat Kid Comic Club', 'The Cat Kid Comic Club learns to collaborate in this creative, funny, and insightful graphic novel by Dav Pilkey, the author and illustrator of Dog Man.', 'Dav Pilkey', 'Scholastic Inc. ', 'Cat Kid Comic Club.jpg', 291, 10, 13, '2024-02-27', 5),
(33, 'Memory', ' Parenting, Family & Health > Body, Mind & Spirit > Memory', 'William Walker Atkinson', 'Prakash Books', 'Memory.jpg', 89, 25, 0, '2024-02-27', 6),
(34, 'Heal Your Body', 'The author shows how the power of the mind can be used to cure any illness in the body. Summary of The Book The assertion that thoughts shape human life does not just apply to aspects like success and happiness in professional and personal spheres of life.', 'Louise L. Hay', 'Hay House', 'Heal Your Body.jpg', 189, 12, 0, '2024-02-27', 6),
(35, 'Secrets of Naturopathy & Yoga', 'Secrets of Naturopathy & Yoga combines the hidden, unearthed, drugless systems for optimal health and a long life. This book helps you explore the exhaustively-researched material on naturopathy methods and various yogic asanas to overcome problems like diabetes, heart troubles, osteoporosis, piles and pimples etc.', 'Brij Bhushan Goel', 'Sterling Publishers Pvt.Ltd', 'Secrets of Naturopathy & Yoga.jpg', 881, 10, 16, '2024-02-27', 6),
(36, 'Roots to Radiance ', 'In Roots to Radiance, you will find 500+ tips and tricks that will help you stay in your \'A game\'. By using its easy-to-make solutions drawn from traditional Indian wisdom, you can lessen and even replace chemicals with wholesome, natural ingredients that will enrich and enhance your daily beauty routine.', 'Nikita Upadhyay', 'Penguin Random House India Pvt. Ltd', 'Roots to Radiance.jpg', 239, 5, 0, '2024-02-27', 6),
(37, 'Genetic Algorithms', 'The text introduces the theory, operation, and application of genetic algorithms----search algorithms based on the mechanics of natural selection and genetics.', 'Dorling Kindersley Pvt Ltd', ' Dorling Kindersley Pvt Ltd', 'Genetic Algorithms.jpg', 701, 2, 0, '2024-02-27', 7),
(38, 'Cyber Safety for Everyone 2nd Edition', 'Cyber Safety for Everyone 2nd Edition: Understand the Interplay between the Internet and one\'s Social and Mental Well-Being', 'Jaago Teens ', 'BPB Publications', 'Cyber Safety for Everyone 2nd Edition.jpg', 389, 7, 21, '2024-02-27', 7),
(39, 'HTML 5 and CSS 3 Made Simple', 'There are a new book available that explain how HTML 5 and CSS 3 can be used today to create amazing User Interfaces for websites and web application. This book strives to go one step further than just using code examples.', '...', 'BPB Publications', 'HTML 5 and CSS 3 Made Simple.jpg', 124, 10, 0, '2024-02-27', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `number`, `email`, `gender`, `password`) VALUES
(1, 'Neha Shrema', '9632587410', 'neha@gmail.com', 'female', 'neha'),
(2, 'Misha Mehra', '8569321470', 'misha@gmail.com', 'female', 'misha'),
(3, 'Aadhya Patel', '9632587410', 'aadhya@gmail.com', 'female', 'aadhya123'),
(4, 'Kavish Nirmal', '7558963214', 'kavishn1@gmail.com', 'male', 'k123'),
(5, 'Mannit Khatri', '9898145236', 'mannit98@gmail.com', 'male', 'mann'),
(6, 'makwana jignasa', '2343223443', 'hh14@gmail.com', 'female', 'monali');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`wish_id`),
  KEY `uid` (`uid`),
  KEY `pro_id` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wish_id`, `pro_id`, `uid`) VALUES
(1, 1, 1),
(3, 6, 4),
(4, 5, 1),
(5, 10, 1),
(7, 3, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertbl`
--
ALTER TABLE `ordertbl`
  ADD CONSTRAINT `ordertbl_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`),
  ADD CONSTRAINT `ordertbl_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
