CREATE DATABASE Courses;
USE Courses;

CREATE TABLE Students (
  ID int NOT NULL,
  Student nvarchar(128) NOT NULL,
  StudentID int NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO Students (ID, Student, StudentID) VALUES
(1, 'Ражабов Дамир Шарофович', 1),
(2, 'Сивожелезов Сергей Владимирович', 2),
(3, 'Чеснюк Дмитрий Александрович', 3),
(4, 'Мацкевич Андрей Анатольевич', 4),
(5, 'Шеронов Иван Петрович', 5),
(6, 'Гавриш Олег Николаевич', 6),
(7, 'Демьянков Владислав Витальевич', 7),
(8, 'Пехоцкий Юрий Васильевич', 8),
(9, 'Шерстюк Вадим Александрович', 9),
(10, 'Казимиров Сергей Анатольевич', 10),
(11, 'Назаров Павел Андреевич', 11),
(12, 'Шатров Игорь Олегович', 12),
(13, 'Никольский Валерий Александрович', 13),
(14, 'Гурин Сергей Владимирович', 14),
(15, 'Кузин Дмитрий Алексеевич', 16),
(16, 'Наливайко Алексей Викторович', 17),
(17, 'Чех Александр Борисович', 18),
(18, 'Есьман Михаил Михайлович', 19);

CREATE TABLE Result (
  ID int NOT NULL,
  StudentID int NOT NULL,
  Task1 nvarchar(128) DEFAULT NULL,
  Task2 nvarchar(128) DEFAULT NULL,
  Task3 nvarchar(128) DEFAULT NULL,
  Task4 nvarchar(128) DEFAULT NULL,
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