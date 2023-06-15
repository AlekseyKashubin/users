SELECT * FROM users;

INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Buggs', 'Bunny', 'buggs_b@loony.com');
INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Daffy', 'Duck', 'DDuck@loony.com');
INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Porky', 'Pig', 'porky_p@loony.com');
INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Elmer', 'Fudd', 'efudd@loony.com');
INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Speedy', 'Gonzalez', 'toquick@loony.com');
INSERT INTO `user_schema`.`users` (`first_name`, `last_name`, `email`) VALUES ('Lola', 'Bunny', 'lola_b@loony.com');

SELECT email FROM users WHERE email = "porky_p@loony.com";

SELECT first_name, last_name FROM users WHERE id=6;

UPDATE users SET last_name = 'Pancake' WHERE id=6;

DELETE FROM users WHERE id=5;

SELECT first_name FROM users ORDER BY first_name;

SELECT first_name FROM users ORDER BY first_name DESC;


