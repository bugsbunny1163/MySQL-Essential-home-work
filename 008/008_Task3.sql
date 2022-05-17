USE MyFunkDB_1;

DROP TABLES IF EXISTS Employees, SalaryAndPosition, info;

CREATE TABLE Employees 
(id int auto_increment PRIMARY KEY,
Name varchar(30),
Phone varchar(15) 
);

CREATE TABLE SalaryAndPosition
(id_sal INT AUTO_INCREMENT PRIMARY KEY,
Emp_id INT UNIQUE,
salary DECIMAL(10,2),
position VARCHAR(30),
FOREIGN KEY (Emp_id) REFERENCES Employees(id)
);

CREATE TABLE info
(id_info INT AUTO_INCREMENT PRIMARY KEY,
Emp_id INT UNIQUE,
marital_status VARCHAR(30),
DateOfBirth DATE,
PlaceOfLive VARCHAR(30),
FOREIGN KEY (Emp_id) REFERENCES Employees(id)
);

