DROP DATABASE IF EXISTS `hw3`;
CREATE DATABASE IF NOT EXISTS `hw3`;

USE hw3;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`firstname` VARCHAR(45),
`lastname` VARCHAR(45),
`post` VARCHAR(45),
`seniority` INT,
`salary` INT,
`age` INT
);


INSERT INTO `staff` (`firstname`, `lastname`, `post`,`seniority`,`salary`, `age`)
VALUES
('Вася', 'Васькин', 'Начальник', 40, 100000, 60), 
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);


# Задание 1
SELECT * FROM staff
ORDER BY salary DESC;

SELECT * FROM staff 
ORDER BY salary;

# Задание2
SELECT salary
FROM staff LIMIT 5;

#Задание 3
SELECT post, SUM(salary) AS "Sum of salaries"
FROM staff
GROUP BY post;

#Задание 4
SELECT post, COUNT(*)  AS "Number of staff"
FROM staff
WHERE post= 'Рабочий' && age >= 24 && age <= 49
GROUP BY post;

#Задание 5
SELECT  COUNT(DISTINCT post) AS "Quantity of post"
FROM staff;

#Задание 6
SELECT post, AVG(age)
FROM staff
GROUP BY post
HAVING AVG(age) < 30;