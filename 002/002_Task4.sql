-- CREATE DATABASE HR_systems;

USE HR_systems;

CREATE TABLE departaments(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE workers(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
surname VARCHAR(40),
departament_id INT,
position VARCHAR(30),
FOREIGN KEY (departament_id) REFERENCES departaments(id) 
);

CREATE TABLE workers_details (
id INT UNIQUE,
date_of_birth DATE,
passport VARCHAR(20),
place_of_live VARCHAR(40),
FOREIGN KEY (id) REFERENCES workers(id)
);

CREATE TABLE sallary(
worker_id INT,
sallary INT,
hire_date DATE,
FOREIGN KEY (worker_id) REFERENCES workers(id)
);