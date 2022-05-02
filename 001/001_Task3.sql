USE mydb;

CREATE TABLE Phones
(id int auto_increment not null,
Name varchar(30),
Phone varchar(15),
primary key (id) 
);

CREATE TABLE SalaryAndPosition
(id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(30),
salary DECIMAL(10,2),
position VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE info
( id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(30),
marital_status VARCHAR(30),
DateOfBirth DATE,
PlaceOfLive VARCHAR(30),
PRIMARY KEY (id)
);

INSERT INTO phones(Name, Phone)
VALUES
('Smith', '380684249486'),
('Jones', '380684249643'),
('Taylor', '380684249693'),
('Williams', '380684249743'),
('Brown', '380684249793'),
('White', '380684249843'),
('Harris', '380684249893'),
('Martin', '380684249943'),
('Davies', '380684249993'),
('Wilson', '380684250043'),
('Cooper', '380684250093'),
('Evans', '380684250143'),
('King', '380684250193'),
('Thomas', '380684250243'),
('Baker', '380684250293'),
('Green', '380684250343'),
('Wright', '380684250393'),
('Edwards', '380684250443'),
('Roberts', '380684250493');

INSERT INTO SalaryAndPosition(name, salary, position)
VALUES
('Smith ', 5000, 'Accountant'),
('Jones', 6000, 'Administrator'),
('Taylor', 7000, 'Assistant'),
('Williams', 8000, 'Office manager '),
('Brown', 9000, 'Personal assistant'),
('White', 10000, 'Receptionist'),
('Harris', 11000, 'Head'),
('Martin', 12000, 'Assistant'),
('Davies', 13000, 'Assistant'),
('Wilson', 14000, 'Office manager '),
('Cooper', 15000, 'Office manager '),
('Evans', 16000, 'Accountant'),
('King', 17000, 'Office manager '),
('Thomas', 18000, 'Office manager '),
('Baker', 19000, 'Accountant'),
('Green', 20000, 'Office manager '),
('Wright', 21000, 'Accountant'),
('Edwards', 22000, 'Office manager'),
('Roberts', 23000, 'Vice president');

INSERT INTO info(name, marital_status, DateOfBirth, PlaceOfLive)
VALUES
('Smith', 'married', 19920510, 'Kyiv'),
('Jones', 'normarried', 19920818, 'Kharkiv'),
('Taylor', 'married', 19921126, 'Odessa'),
('Williams', 'normarried', 19930306, 'Dnipro'),
('Brown', 'normarried', 19930614, 'Lviv'),
('White', 'married', 19930922, 'Poltava'),
('Harris', 'married', 19931231, 'Lviv'),
('Martin', 'normarried', 19940410, 'Lviv'),
('Davies', 'married', 19940719, 'Kyiv'),
('Wilson', 'normarried', 19941027, 'Kharkiv'),
('Cooper', 'married', 19950204, 'Odessa'),
('Evans', 'normarried', 19950515, 'Dnipro'),
('King', 'married', 19950823, 'Lviv'),
('Thomas', 'married', 19951201, 'Poltava'),
('Baker', 'normarried', 19960310, 'Lviv'),
('Green', 'normarried', 19960618, 'Lviv'),
('Wright', 'married', 19960926, 'Kyiv'),
('Edwards', 'married', 19970104, 'Kharkiv'),
('Roberts', 'normarried', 19970414, 'Odessa');





