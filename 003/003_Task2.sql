CREATE DATABASE guns;

USE guns;

CREATE TABLE weapons
(weapon_id INT AUTO_INCREMENT NOT NULL,
Оружие VARCHAR(15) NOT NULL,
PRIMARY KEY (weapon_id)
);

INSERT weapons (Оружие)
VALUES
('АК-47'),
('Глок20');

CREATE TABLE responbsible
(res_id INT AUTO_INCREMENT NOT NULL,
ФИО VARCHAR(20) NOT NULL UNIQUE,
офис VARCHAR(20),
Взвод INT NOT NULL,
PRIMARY KEY (res_id)
);

INSERT responbsible (ФИО, офис, Взвод)
VALUES
('Петров В.А.', 'оф.205', 222),
('Лодарев П.С.', 'оф.221', 232),
('Леонтьев К.В.', 'оф.201', 212),
('Духов Р.М.','',200 );

CREATE TABLE officers
(off_id INT AUTO_INCREMENT NOT NULL,
ФИО VARCHAR(20) NOT NULL UNIQUE,
Звание VARCHAR(15)NOT NULL,
PRIMARY KEY (off_id)
);

INSERT officers(ФИО, Звание)
VALUES
('Буров О.С.', 'майор'),
('Рибаков Н.Г.', 'майор'),
('Деребанов В.Я.', 'подполковник');

CREATE TABLE orders
(id INT AUTO_INCREMENT NOT NULL,
weapon_id int NOT NULL,
responbsible_id int NOT NULL,
officer_id int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (weapon_id) REFERENCES weapons(weapon_id),
FOREIGN KEY (responbsible_id) REFERENCES responbsible(res_id),
FOREIGN KEY (officer_id) REFERENCES officers(off_id)
);

INSERT orders (weapon_id, responbsible_id, officer_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(1, 2, 3),
(2, 2, 2),
(1, 3, 1),
(2, 3, 2),
(1, 4, 1);
