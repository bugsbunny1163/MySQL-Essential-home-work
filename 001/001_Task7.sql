CREATE DATABASE cars;

USE cars;

CREATE TABLE cars
(id INT AUTO_INCREMENT NOT NULL,
марка VARCHAR(30),
модель VARCHAR(30),
`объем двигателя` DECIMAL(10,3),
цена DECIMAL(10,2),
`макс. скорость` INT(3),
PRIMARY KEY (id)
);

INSERT INTO cars(марка, модель, `объем двигателя`, цена,`макс. скорость`)
VALUES
('Hyundai', 'Tucson', 2, 19000, 210),
('Volkswagen', 'e-Golf', 1.1, 14800, 230),
('Ford', 'Mustang', 3.7, 14900, 250),
('Kia', 'Ceed', 1.6, 17096, 215),
('Toyota', 'Land Cruiser Prado', 3, 16900, 230),
('Mercedes-Benz', 'GLA 200', 1.6, 18999, 250),
('Skoda', 'Scala', 1.6, 14900, 200),
('Audi', 'Q3', 2, 14900, 260),
('Mercedes-Benz', 'C 220', 2.1, 17500, 255),
('Toyota', 'Corolla', 1.6, 19662, 220),
('Honda', 'Civic', 2, 12700, 230);

SELECT * FROM cars.cars;