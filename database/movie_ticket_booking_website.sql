

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  `theatre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `features` (`id`, `title`, `description`, `image_path`, `theatre_id`) VALUES
(1, 'Unparalleled Cinematic Experience', 'Immerse yourself in stunning visuals and crystal-clear sound, as our state-of-the-art IMAX technology transports you directly into the heart of the action. With a screen that stretches beyond your peripheral vision every frame comes alive with unparalleled brilliance.', '/Images/features/imax.webp', 1),
(2, 'Delight in Dolby Atmos', 'Experience sound like never before with Dolby Atmos, the epitome audio technology that takes you on an immersive sonic journey.With sound objects moving seamlessly around the theatre, you\'ll be transported into the heart of every scene, making you an integral part of the story.', '/Images/features/sound.webp', 1),
(3, 'Tantalizing Treats', 'At our movie theatre, we take your movie-watching experience beyond the screen by offering a delectable array of food items at our concession stand. From freshly buttered popcorn, crispy nachos with zesty cheese dips, to gourmet hotdogs and a variety of refreshing beverages, our concession stand is a culinary paradise for movie enthusiasts.', '/Images/features/food.webp', 1),
(4, 'Luxurious Escape', 'Step into a world of opulence and relaxation, designed to cater to your every need before and after the main event. Our Premium Lounge welcomes you with plush leather seating, elegant décor, and a refined ambiance that sets the stage for an unforgettable cinematic journey.', '/Images/features/lounge.webp', 1),
(6, 'Unparalleled Cinematic Experience', 'Immerse yourself in stunning visuals and crystal-clear sound, as our state-of-the-art IMAX technology transports you directly into the heart of the action. With a screen that stretches beyond your peripheral vision every frame comes alive with unparalleled brilliance.', '/Images/features/imax.webp', 2),
(7, 'Delight in Dolby Atmos', 'Experience sound like never before with Dolby Atmos, the epitome audio technology that takes you on an immersive sonic journey.With sound objects moving seamlessly around the theatre, you\'ll be transported into the heart of every scene, making you an integral part of the story.', '/Images/features/sound.webp', 2),
(8, 'Tantalizing Treats', 'At our movie theatre, we take your movie-watching experience beyond the screen by offering a delectable array of food items at our concession stand. From freshly buttered popcorn, crispy nachos with zesty cheese dips, to gourmet hotdogs and a variety of refreshing beverages, our concession stand is a culinary paradise for movie enthusiasts.', '/Images/features/food.webp', 2),
(9, 'Luxurious Escape', 'Step into a world of opulence and relaxation, designed to cater to your every need before and after the main event. Our Premium Lounge welcomes you with plush leather seating, elegant décor, and a refined ambiance that sets the stage for an unforgettable cinematic journey.', '/Images/features/lounge.webp', 2);

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  `theatre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `hall` (`id`, `name`, `total_seats`, `theatre_id`) VALUES
(1, 'Hall 1', 48, 1),
(2, 'Hall 2', 48, 1),
(3, 'Hall 3', 48, 1),
(4, 'Hall 4', 48, 1),
(5, 'Hall 1', 48, 2),
(6, 'Hall 2', 48, 2),
(7, 'Hall 3', 48, 2),
(8, 'Hall 4', 48, 2);

CREATE TABLE `hallwise_seat` (
  `hall_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `hallwise_seat` (`hall_id`, `seat_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(4, 35),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 44),
(4, 45),
(4, 46),
(4, 47),
(4, 48),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(5, 35),
(5, 36),
(5, 37),
(5, 38),
(5, 39),
(5, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(6, 41),
(6, 42),
(6, 43),
(6, 44),
(6, 45),
(6, 46),
(6, 47),
(6, 48),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19),
(7, 20),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(7, 25),
(7, 26),
(7, 27),
(7, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(7, 36),
(7, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 16),
(8, 17),
(8, 18),
(8, 19),
(8, 20),
(8, 21),
(8, 22),
(8, 23),
(8, 24),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 30),
(8, 31),
(8, 32),
(8, 33),
(8, 34),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48);


CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image_path` varchar(150) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL,
  `synopsis` varchar(500) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `top_cast` varchar(30) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `movie` (`id`, `name`, `image_path`, `language`, `synopsis`, `rating`, `duration`, `top_cast`, `release_date`) VALUES
(1, 'The Conjuring: Last Rites', '/Images/movies/conjuringLastrites.webp', 'English', 'Paranormal investigators Ed and Lorraine Warren return to confront one of their most terrifying cases yet — an ancient evil that seeks to end their legacy once and for all.', 8.3, '2h 12m', 'Patrick Wilson', '2025-06-13'),
(2, 'Final Destination: Bloodlines', '/Images/movies/finaldestinationbloodlines.webp', 'English', 'When a group of friends narrowly escapes a deadly bridge collapse, they soon realize that Death has a new plan — and this time, it runs in their blood.', 7.5, '1h 52m', 'Katherine McNamara', '2025-05-09'),
(3, 'Kantara: A Legend Chapter-1', '/Images/movies/kantara.webp', 'Kannada', 'Set in the mythic lands of coastal Karnataka, the film explores the origins of the divine spirit Panjurli and the eternal conflict between man, nature, and belief.', 9.1, '2h 34m', 'Rishab Shetty', '2025-03-15'),
(4, 'Mission: Impossible - The Final Reckoning', '/Images/movies/missionImpossible.webp', 'English', 'Ethan Hunt faces his last and most impossible mission yet — to dismantle a rogue AI that threatens global extinction, while confronting the ghosts of his past.', 8.7, '2h 49m', 'Tom Cruise', '2025-07-18'),
(5, 'The Lost Bus', '/Images/movies/thelostbus.webp', 'English', 'A group of college students disappears during a road trip in the Western Ghats. Years later, an investigator unravels a chilling truth hidden in the wilderness.', 7.8, '2h 10m', 'Matthew McConaughey', '2025-04-25'),
(6, 'The Thursday Murder Club', '/Images/movies/thursdaymurderclub.webp', 'English', 'Four quirky retirees in a peaceful retirement village meet weekly to discuss unsolved crimes — until they find themselves tangled in a real murder mystery.', 7.9, '2h 2m', 'Helen Mirren', '2025-08-22'),
(7, 'Kesari: Chapter 2', '/Images/movies/kesarichapter2.webp', 'Hindi', 'Continuing the saga of courage, Kesari: Chapter 2 follows the legacy of the warriors who rose again to defend their motherland against invading forces.', 8.6, '2h 28m', 'Akshay Kumar', '2025-01-26');

CREATE TABLE `movie_directors` (
  `movie_id` int(11) NOT NULL,
  `director` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `movie_directors` (`movie_id`, `director`) VALUES
(1, 'Michael Chaves'),                
(2, 'Zach Lipovsky'),                 
(3, 'Rishab Shetty'),                 
(4, 'Christopher McQuarrie'),         
(5, 'Paul Greengrass'),                
(6, 'Chris Columbus'),                
(7, 'Anurag Singh');                  


CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `movie_genre` (`movie_id`, `genre`) VALUES
(1, 'Horror'),
(1, 'Mystery'),
(1, 'Thriller'),
(2, 'Horror'),
(2, 'Supernatural'),
(2, 'Thriller'),
(3, 'Action'),
(3, 'Drama'),
(3, 'Fantasy'),
(4, 'Action'),
(4, 'Adventure'),
(4, 'Thriller'),
(5, 'Thriller'),
(5, 'Mystery'),
(5, 'Drama'),
(6, 'Comedy'),
(6, 'Mystery'),
(6, 'Crime'),
(7, 'Action'),
(7, 'War'),
(7, 'Drama');


CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `customer_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `payment` (`id`, `payment_time`, `amount`, `method`, `customer_email`) VALUES
(1, '2025-11-16 19:41:37', 1400, 'UPI', 'rahul.sharma@gmail.com'),
(2, '2025-11-16 19:43:03', 1350, 'UPI', 'neha.verma@yahoo.com'),
(3, '2025-11-20 10:32:06', 1350, 'Netbanking', 'arjun.mehta@gmail.com'),
(4, '2025-11-20 10:44:19', 700, 'Credit Card', 'arjun.mehta@gmail.com'),
(5, '2025-11-20 12:24:02', 700, 'Debit Card', 'arjun.mehta@gmail.com'),
(6, '2025-11-20 12:40:15', 1050, 'UPI', 'aisha.khan@gmail.com'),
(7, '2025-11-20 12:41:00', 900, 'Netbanking', 'aisha.khan@gmail.com'),
(8, '2025-11-20 14:36:08', 2700, 'Credit Card', 'ravi.patel@gmail.com'),
(9, '2025-11-20 16:13:23', 700, 'Debit Card', 'arjun.mehta@gmail.com'),
(10, '2025-11-20 17:56:07', 900, 'UPI', 'sneha.nair@gmail.com');


CREATE TABLE `person` (
  `email` varchar(100) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone_number` char(11) DEFAULT NULL,
  `account_balance` int(11) DEFAULT NULL,
  `person_type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `person` (`email`, `first_name`, `last_name`, `password`, `phone_number`, `account_balance`, `person_type`) VALUES
('rahul.sharma@gmail.com', 'Rahul', 'Sharma', 'rahul123', '9876543210', 100000, 'Customer'),
('aisha.khan@gmail.com', 'Aisha', 'Khan', 'aisha123', '9823415678', 100000, 'Customer'),
('neha.verma@yahoo.com', 'Neha', 'Verma', 'neha123', '9123456789', 1000000, 'Customer'),
('farhan.shaikh@gmail.com', 'Farhan', 'Shaikh', 'farhan123', '9988776655', 100000, 'Customer'),
('arjun.mehta@gmail.com', 'Arjun', 'Mehta', 'arjun123', '9876501234', 100000, 'Customer'),
('riya.patel@gmail.com', 'Riya', 'Patel', 'riya123', '9865321478', 100000, 'Customer'),
('vikram.nair@gmail.com', 'Vikram', 'Nair', 'vikram123', '9811122233', 10000, 'Customer'),
('sneha.nair@gmail.com', 'Sneha', 'Nair', 'sneha123', '9890011223', 100000, 'Customer'),
('rohan.das@gmail.com', 'Rohan', 'Das', 'rohan123', '9845671230', 100000, 'Customer'),
('ananya.sen@gmail.com', 'Ananya', 'Sen', 'ananya123', '9834567123', 100000, 'Customer'),
('ravi.patel@gmail.com', 'Ravi', 'Patel', 'ravi123', '9822098765', 100000, 'Customer'),
('anushkaadakofficial@gmail.com', 'Anushka', 'Adak', 'Anushka@2684', '9830811787', 100000, 'Admin');


CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `name` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `seat` (`id`, `name`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'A7'),
(8, 'A8'),
(9, 'B1'),
(10, 'B2'),
(11, 'B3'),
(12, 'B4'),
(13, 'B5'),
(14, 'B6'),
(15, 'B7'),
(16, 'B8'),
(17, 'C1'),
(18, 'C2'),
(19, 'C3'),
(20, 'C4'),
(21, 'C5'),
(22, 'C6'),
(23, 'C7'),
(24, 'C8'),
(25, 'D1'),
(26, 'D2'),
(27, 'D3'),
(28, 'D4'),
(29, 'D5'),
(30, 'D6'),
(31, 'D7'),
(32, 'D8'),
(33, 'E1'),
(34, 'E2'),
(35, 'E3'),
(36, 'E4'),
(37, 'E5'),
(38, 'E6'),
(39, 'E7'),
(40, 'E8'),
(41, 'F1'),
(42, 'F2'),
(43, 'F3'),
(44, 'F4'),
(45, 'F5'),
(46, 'F6'),
(47, 'F7'),
(48, 'F8');

CREATE TABLE `shown_in` (
  `movie_id` int(11) NOT NULL,
  `showtime_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `shown_in` (`movie_id`, `showtime_id`, `hall_id`) VALUES
(1, 1, 1),
(1, 1, 5),
(1, 2, 3),
(1, 2, 7),
(1, 3, 3),
(1, 3, 7),
(1, 4, 1),
(1, 4, 5),
(1, 5, 3),
(1, 5, 7),
(1, 6, 3),
(1, 6, 7),
(1, 7, 1),
(1, 7, 5),
(1, 8, 3),
(1, 8, 7),
(1, 9, 3),
(1, 9, 7),
(1, 10, 1),
(1, 10, 5),
(1, 11, 3),
(1, 11, 7),
(1, 12, 3),
(1, 12, 7),
(2, 2, 4),
(2, 2, 8),
(2, 3, 4),
(2, 3, 8),
(2, 5, 4),
(2, 5, 8),
(2, 6, 4),
(2, 6, 8),
(2, 8, 4),
(2, 8, 8),
(2, 9, 4),
(2, 9, 8),
(2, 11, 4),
(2, 11, 8),
(2, 12, 4),
(2, 12, 8),
(3, 1, 3),
(3, 1, 7),
(3, 4, 3),
(3, 4, 7),
(3, 7, 3),
(3, 7, 7),
(3, 10, 3),
(3, 10, 7),
(4, 1, 4),
(4, 1, 8),
(4, 3, 5),
(4, 4, 4),
(4, 4, 8),
(4, 6, 5),
(4, 7, 4),
(4, 7, 8),
(4, 9, 5),
(4, 10, 4),
(4, 10, 8),
(4, 12, 5),
(5, 1, 2),
(5, 1, 6),
(5, 2, 1),
(5, 2, 5),
(5, 3, 1),
(5, 4, 2),
(5, 4, 6),
(5, 5, 1),
(5, 5, 5),
(5, 6, 1),
(5, 7, 2),
(5, 7, 6),
(5, 8, 1),
(5, 8, 5),
(5, 9, 1),
(5, 10, 2),
(5, 10, 6),
(5, 11, 1),
(5, 11, 5),
(5, 12, 1),
(6, 2, 2),
(6, 2, 6),
(6, 3, 2),
(6, 3, 6),
(6, 5, 2),
(6, 5, 6),
(6, 6, 2),
(6, 6, 6),
(6, 8, 2),
(6, 8, 6),
(6, 9, 2),
(6, 9, 6),
(6, 11, 2),
(6, 11, 6),
(6, 12, 2),
(6, 12, 6);


CREATE TABLE `showtimes` (
  `id` int(11) NOT NULL,
  `movie_start_time` varchar(20) DEFAULT NULL,
  `show_type` char(2) DEFAULT NULL,
  `showtime_date` date DEFAULT NULL,
  `price_per_seat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `showtimes` (`id`, `movie_start_time`, `show_type`, `showtime_date`, `price_per_seat`) VALUES
(1, '11:00 am', '2D', '2025-11-19', 350),
(2, '2:30 pm', '3D', '2025-11-19', 450),
(3, '6:00 pm', '3D', '2025-11-19', 450),
(4, '11:00 am', '2D', '2025-11-20', 350),
(5, '2:30 pm', '3D', '2025-11-20', 450),
(6, '6:00 pm', '3D', '2025-11-20', 450),
(7, '11:00 am', '2D', '2025-11-21', 350),
(8, '2:30 pm', '3D', '2025-11-21', 450),
(9, '6:00 pm', '3D', '2025-11-21', 450),
(10, '11:00 am', '2D', '2025-11-22', 350),
(11, '2:30 pm', '3D', '2025-11-22', 450),
(12, '6:00 pm', '3D', '2025-11-22', 450);

CREATE TABLE `theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `location_details` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `theatre` (`id`, `name`, `location`, `location_details`) VALUES
(1, 'South City Mall', 'Prince Anwar Shah Road', 'INOX South City Mall, 375 Prince Anwar Shah Road, Jadavpur, Kolkata, West Bengal 700068'),
(2, 'Quest Mall', 'Park Circus', 'PVR Cinemas, Quest Mall, 33 Syed Amir Ali Avenue, Park Circus, Kolkata, West Bengal 700017'),
(3, 'Acropolis Mall', 'Kasba', 'INOX Acropolis Mall, 1858/1 Rajdanga Main Road, Kasba, Kolkata, West Bengal 700107'),
(4, 'City Centre 1', 'Salt Lake', 'INOX City Centre, DC Block, Sector 1, Salt Lake City, Kolkata, West Bengal 700064'),
(5, 'Mani Square Mall', 'EM Bypass', 'PVR Cinemas, Mani Square Mall, 164/1 Maniktala Main Road, EM Bypass, Kolkata, West Bengal 700054');


CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `showtimes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `ticket` (`id`, `price`, `purchase_date`, `payment_id`, `seat_id`, `hall_id`, `movie_id`, `showtimes_id`) VALUES
(1, 450, '2025-11-17', 2, 3, 1, 5, 3),
(2, 450, '2025-11-17', 2, 4, 1, 5, 3),
(3, 450, '2025-11-17', 2, 5, 1, 5, 3),
(4, 350, '2025-11-17', 1, 3, 2, 5, 1),
(5, 350, '2025-11-17', 1, 4, 2, 5, 1),
(6, 350, '2025-11-17', 1, 5, 2, 5, 1),
(7, 350, '2025-11-17', 1, 6, 2, 5, 1),
(8, 450, '2025-11-20', 3, 19, 2, 6, 2),
(9, 450, '2025-11-20', 3, 20, 2, 6, 2),
(10, 450, '2025-11-20', 3, 21, 2, 6, 2),
(11, 350, '2025-11-20', 4, 5, 3, 3, 7),
(12, 350, '2025-11-20', 4, 6, 3, 3, 7),
(13, 350, '2025-11-20', 5, 6, 5, 1, 1),
(14, 350, '2025-11-20', 5, 5, 5, 1, 1),
(15, 350, '2025-11-20', 6, 29, 2, 5, 7),
(16, 350, '2025-11-20', 6, 27, 2, 5, 7),
(17, 350, '2025-11-20', 6, 30, 2, 5, 7),
(18, 450, '2025-11-20', 7, 11, 6, 6, 11),
(19, 450, '2025-11-20', 7, 12, 6, 6, 11),
(20, 450, '2025-11-20', 8, 11, 5, 5, 5),
(21, 450, '2025-11-20', 8, 12, 5, 5, 5),
(22, 450, '2025-11-20', 8, 13, 5, 5, 5),
(23, 450, '2025-11-20', 8, 14, 5, 5, 5),
(24, 450, '2025-11-20', 8, 21, 5, 5, 5),
(25, 450, '2025-11-20', 8, 22, 5, 5, 5),
(26, 350, '2025-11-20', 9, 37, 8, 4, 7),
(27, 350, '2025-11-20', 9, 38, 8, 4, 7),
(28, 450, '2025-11-20', 10, 31, 6, 6, 11),
(29, 450, '2025-11-20', 10, 32, 6, 6, 11);


ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theatre_id` (`theatre_id`);

ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theatre_id` (`theatre_id`);

ALTER TABLE `hallwise_seat`
  ADD PRIMARY KEY (`hall_id`,`seat_id`),
  ADD KEY `seat_id` (`seat_id`);

ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `movie_directors`
  ADD PRIMARY KEY (`movie_id`,`director`);

ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movie_id`,`genre`);

ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_email` (`customer_email`);

ALTER TABLE `person`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `shown_in`
  ADD PRIMARY KEY (`movie_id`,`showtime_id`,`hall_id`),
  ADD KEY `showtime_id` (`showtime_id`),
  ADD KEY `hall_id` (`hall_id`);

ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `theatre`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtimes_id` (`showtimes_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `hall_id` (`hall_id`),
  ADD KEY `movie_id` (`movie_id`);

ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

ALTER TABLE `showtimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

ALTER TABLE `features`
  ADD CONSTRAINT `features_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`id`) ON DELETE CASCADE;

ALTER TABLE `hall`
  ADD CONSTRAINT `hall_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`id`) ON DELETE CASCADE;

ALTER TABLE `hallwise_seat`
  ADD CONSTRAINT `hallwise_seat_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hallwise_seat_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`) ON DELETE CASCADE;


ALTER TABLE `movie_directors`
  ADD CONSTRAINT `movie_directors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE;

ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE;

ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_email`) REFERENCES `person` (`email`);

ALTER TABLE `shown_in`
  ADD CONSTRAINT `shown_in_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shown_in_ibfk_2` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shown_in_ibfk_3` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`) ON DELETE CASCADE;

ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`showtimes_id`) REFERENCES `showtimes` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`),
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`),
  ADD CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);
COMMIT;


