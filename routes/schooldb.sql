-- -------------------------------------------------------------
-- TablePlus 6.1.6(570)
--
-- https://tableplus.com/
--
-- Database: schooldb
-- Generation Time: 2024-10-08 14:02:50.4440
-- -------------------------------------------------------------
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `course_student` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `start` datetime NOT NULL,
  `duration` int NOT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `students` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bdate` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `course_student` (`id`, `course_id`, `student_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 5),
(4, 3, 4),
(5, 3, 2),
(6, 3, 6);

INSERT INTO `courses` (`id`, `name`, `price`, `start`, `duration`, `type_id`) VALUES
(1, 'javascript', 300, '2024-10-08 13:36:59', 2, 1),
(2, 'python', 400, '2024-10-08 13:36:59', 3, 1),
(3, 'PHP', 200, '2024-10-08 13:36:59', 5, 1),
(4, 'HTML', 100, '2024-10-08 13:36:59', 4, 1),
(5, 'Fietshersteller', 300, '2024-10-08 13:36:59', 2, 2),
(6, 'Barista', 500, '2024-10-08 13:36:59', 1, 3),
(7, 'Somelier', 800, '2024-10-08 13:36:59', 3, 3);

INSERT INTO `students` (`id`, `firstname`, `lastname`, `bdate`, `email`) VALUES
(1, 'henk', 'cowboy', '2024-10-08 13:43:12', 'henk@humo.be'),
(2, 'donald', 'trump', '2024-10-08 13:43:12', 'info@whitehouse.gov'),
(3, 'ronald', 'mcdonald', '2024-10-08 13:43:12', 'ronald@mcdo.be'),
(4, 'harland', 'sanders', '2024-10-08 13:43:12', 'info@kfc.be'),
(5, 'burger', 'king', '2024-10-08 13:43:12', 'info@king.com'),
(6, 'Pizza', 'Hut', '2024-10-08 13:43:36', 'jabba@hut.com');

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Fiets'),
(3, 'Hospitality');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;