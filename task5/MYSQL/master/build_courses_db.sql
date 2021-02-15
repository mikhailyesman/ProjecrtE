CREATE DATABASE db_group;
USE db_group;

CREATE TABLE Students (
  ID int NOT NULL,
  Student nvarchar(128) NOT NULL,
  StudentID int NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO Students (ID, Student, StudentID) VALUES
(1, 'Razhabov Damir SHarofovich', 1),
(2, 'Sivozhelezov Sergej Vladimirovich', 2),
(3, 'CHesnyuk Dmitrij Aleksandrovich', 3),
(4, 'Mackevich Andrej Anatolevich', 4),
(5, 'SHeronov Ivan Petrovich', 5),
(6, 'Gavrish Oleg Nikolaevich', 6),
(7, 'Demyankov Vladislav Vitalevich', 7),
(8, 'Pekhockij YUrij Vasilevich', 8),
(9, 'SHerstyuk Vadim Aleksandrovich', 9),
(10, 'Kazimirov Sergej Anatolevich', 10),
(11, 'Nazarov Pavel Andreevich', 11),
(12, 'SHatrov Igor Olegovich', 12),
(13, 'Nikolskij Valerij Aleksandrovich', 13),
(14, 'Gurin Sergej Vladimirovich', 14),
(15, 'Kuzin Dmitrij Alekseevich', 16),
(16, 'Nalivajko Aleksej Viktorovich', 17),
(17, 'CHekh Aleksandr Borisovich', 18),
(18, 'Yesman Mikhail Mihajlovich', 19);

CREATE TABLE Result (
  ID int NOT NULL,
  StudentID int NOT NULL,
  Task1 VARCHAR(16) DEFAULT NULL,
  Task2 VARCHAR(16) DEFAULT NULL,
  Task3 VARCHAR(16) DEFAULT NULL,
  Task4 VARCHAR(16) DEFAULT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO Result (ID, StudentID, Task1, Task2, Task3, Task4) VALUES
(1, 1, 'pass', 'pass', 'pass', 'pass'),
(2, 2, 'pass', 'pass', 'pass', ''),
(3, 3, 'pass', 'pass', 'pass', 'pass'),
(4, 4, 'pass', 'pass', 'not passed', ''),
(5, 5, 'pass', 'pass', 'not passed', ''),
(6, 6, 'pass', 'pass', 'not passed', ''),
(7, 7, 'pass', 'not passed', 'not passed', ''),
(8, 8, 'pass', 'pass', 'pass', 'pass'),
(9, 9, 'pass', 'not passed', 'not passed', ''),
(10, 10, 'pass', 'pass', 'pass', 'pass'),
(11, 11, 'pass', 'pass', 'pass', 'pass'),
(12, 12, 'pass', 'pass', 'pass', 'pass'),
(13, 13, 'pass', 'not passed', 'not passed', ''),
(14, 14, 'pass', 'pass', 'pass', 'pass'),
(15, 16, 'pass', 'not passed', 'not passed', ''),
(16, 17, 'pass', 'pass', 'pass', ''),
(17, 18, 'pass', 'pass', 'pass', ''),
(18, 19, 'pass', 'pass', 'pass', 'pass');
