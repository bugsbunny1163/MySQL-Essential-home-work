USE shopdb;
/* Используя базу данных ShopDB и страницу Customers (удалите таблицу, если есть и 
создайте заново первый раз без первичного ключа затем – с первичным) и затем добавьте
 индексы и проанализируйте выборку данных.*/

ALTER TABLE orders 
DROP FOREIGN KEY FK_Orders_Customers;

DROP TABLE customers;

CREATE TABLE Customers
	(
	CustomerNo int NOT NULL,
	FName VARCHAR (15) NOT NULL,
	LName VARCHAR(15) NOT NULL,
	MName VARCHAR(15) NULL,
	Address1 VARCHAR(50) NOT NULL,
	Address2 VARCHAR(50) NULL,
	City VARCHAR(10) NOT NULL,
	Phone VARCHAR(12) NOT NULL,
	DateInSystem date NULL
	); 
    
INSERT Customers 
(CustomerNo, LName, FName, MName, Address1, Address2, City, Phone,DateInSystem)
VALUES
(1, 'Круковский','Анатолий','Петрович','Лужная 15',NULL,'Харьков','(092)3212211','2009-11-20'),
(2, 'Дурнев','Виктор','Викторович','Зелинская 10',NULL,'Киев','(067)4242132','2010-03-08'),
(3, 'Унакий','Зигмунд','федорович','Дихтяревская 5',NULL,'Киев','(092)7612343','2010-08-17'),
(4, 'Левченко','Виталий','Викторович','Глущенка 5','Драйзера 12','Киев','(053)3456788','2010-08-20'),
(5, 'Выжлецов','Олег','Евстафьевич','Киевская 3','Одесская 8','Чернигов','(044)2134212','2010-09-18');

EXPLAIN SELECT LName FROM Customers
WHERE LName = 'Дурнев';


DROP TABLE customers;
CREATE TABLE Customers
	(
	CustomerNo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	FName VARCHAR (15) NOT NULL,
	LName VARCHAR(15) NOT NULL,
	MName VARCHAR(15) NULL,
	Address1 VARCHAR(50) NOT NULL,
	Address2 VARCHAR(50) NULL,
	City VARCHAR(10) NOT NULL,
	Phone VARCHAR(12) NOT NULL,
	DateInSystem date NULL); 
    
INSERT Customers 
(LName, FName, MName, Address1, Address2, City, Phone,DateInSystem)
VALUES
('Круковский','Анатолий','Петрович','Лужная 15',NULL,'Харьков','(092)3212211','2009-11-20'),
('Дурнев','Виктор','Викторович','Зелинская 10',NULL,'Киев','(067)4242132','2010-03-08'),
('Унакий','Зигмунд','федорович','Дихтяревская 5',NULL,'Киев','(092)7612343','2010-08-17'),
('Левченко','Виталий','Викторович','Глущенка 5','Драйзера 12','Киев','(053)3456788','2010-08-20'),
('Выжлецов','Олег','Евстафьевич','Киевская 3','Одесская 8','Чернигов','(044)2134212','2010-09-18');

EXPLAIN SELECT CustomerNo FROM Customers
WHERE CustomerNo = 3;
-- --------------------------------------------------
ALTER TABLE Customers
ADD INDEX idx_no (CustomerNo); -- добавлення індексу в колонку з Primary key не пришвидшує вибірку даних

EXPLAIN SELECT CustomerNo FROM Customers
WHERE CustomerNo = 3;
-- ------------------------------------------------------------------

ALTER TABLE Customers
ADD INDEX idx_LName (LName); -- добавлення індексу в колонку LName пришвидшує вибірку даних при пошуку по даній колонці

EXPLAIN SELECT LName FROM Customers
WHERE LName = 'Дурнев';
