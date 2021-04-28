CREATE DATABASE IF NOT EXISTS fire_and_smoke;

CREATE TABLE IF NOT EXISTS detection (
	id INT(11) unsigned NOT NULL AUTO_INCREMENT,
	image_id INT(11),
	path VARCHAR(1000),
	object VARCHAR(1000),
	probability FLOAT(10),
	bbox VARCHAR(1000),
	PRIMARY KEY (id)
);
create user 'user'@'localhost' identified by 'Password123#@!';
GRANT ALL PRIVILEGES ON fire_and_smoke.* TO'user'@'localhost';
