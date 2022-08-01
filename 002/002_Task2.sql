CREATE DATABASE sklad;

USE sklad;

CREATE TABLE suppliers
(sup_id INT AUTO_INCREMENT NOT NULL,
Name VARCHAR(30) UNIQUE,
Adress VARCHAR(30),
Country VARCHAR(20),
Phone VARCHAR(15),
E_mail VARCHAR(30),
Contact_person VARCHAR(30),
PRIMARY KEY(sup_id)
);

CREATE TABLE purchasers
(pur_id INT AUTO_INCREMENT NOT NULL,
Name VARCHAR(30) UNIQUE,
Adress VARCHAR(30) ,
Country VARCHAR(20),
Phone VARCHAR(15),
E_mail VARCHAR(30),
Contact_person VARCHAR(30),
PRIMARY KEY(pur_id)
);



CREATE TABLE employees(
emp_id INT AUTO_INCREMENT NOT NULL,
Name VARCHAR(30),
DateOfBirth DATE,
PlaceOfLive VARCHAR(30),
Phone VARCHAR(15),
Position VARCHAR(30),
PRIMARY KEY(emp_id)
);

CREATE TABLE products(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
price INT,
sup_id INT,
FOREIGN KEY (sup_id) REFERENCES suppliers(sup_id)
);

CREATE TABLE orders(
id INT AUTO_INCREMENT PRIMARY KEY,
pur_id INT,
emp_id INT,
FOREIGN KEY(pur_id) REFERENCES purchasers(pur_id),
FOREIGN KEY(emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE order_details(
order_id INT,
prod_id INT,
qty INT NOT NULL,
PRIMARY KEY (order_id, prod_id),
FOREIGN KEY(order_id) REFERENCES orders(id),
FOREIGN KEY (prod_id) REFERENCES products(id)
)

