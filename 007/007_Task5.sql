-- Створення БД carsshop 
DELIMITER |

drop database carsshop; |

create database carsshop; |

use carsshop; |


create table marks(
   id int not null auto_increment primary key,
   mark varchar(20) unique
); |

create table cars(
  id INT NOT NULL auto_increment primary key,
  mark_id INT NOT NULL,
  model varchar(20) NOT NULL,
  price INT NOT NULL,
  foreign key(mark_id) references marks(id)
); |

CREATE TABLE clients
(
	
	 id INT AUTO_INCREMENT NOT NULL,
     name VARCHAR(30),
     age TINYINT,
     phone VARCHAR(15),
     PRIMARY KEY (id)
); |

create table orders(
     id int not null primary key auto_increment,
     car_id int not null,
     client_id int not null,
     foreign key(car_id) references cars(id),
     foreign key(client_id) references clients(id)
); |

INSERT into marks(mark) values('Audi');|
INSERT into marks(mark) values('Porsche'); |

insert into cars(mark_id, model, price) values (1, 'A5', 50000); |
insert into cars(mark_id, model, price) values (2, 'panamera', 100000); |
insert into cars(mark_id, model, price) values (2, 'caymen S', 88000); |

insert into clients(name, age) values ('petro', 20), ('vasya', 25), ('vitaly', 75); |

insert into orders(car_id, client_id) values(1, 1), (2, 2), (1, 3); |

/* -----------------------------------
Задание 5
Используя базу данных carsshop создайте функцию для нахождения минимального
возраста клиента, затем сделайте выборку всех машин, которые он купил.*/

DROP FUNCTION youngest;|

DELIMITER |

CREATE FUNCTION youngest()
RETURNS TINYINT
DETERMINISTIC
BEGIN
	RETURN (SELECT MIN(age) FROM clients);
END |


DROP PROCEDURE car_of_youngers|

CREATE PROCEDURE car_of_youngers()
BEGIN
SELECT mark, model
FROM cars
INNER JOIN marks ON cars.mark_id = marks.id
INNER JOIN orders ON cars.id = orders.car_id
INNER JOIN clients ON clients.id = orders.client_id AND age = youngest();
END|

CALL car_of_youngers()|











