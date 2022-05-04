USE MyJoinsDB;

-- 1. Необходимо узнать контактные данные сотрудников (номера телефонов, место жительства). 

CREATE VIEW view1 
AS SELECT Name, Phone, PlaceOfLive
FROM phones
JOIN info ON phones.id=info.id;

DROP VIEW view1 ;

-- 2. Необходимо узнать информацию о дате рождения всех не женатых сотрудников и номера телефонов этих сотрудников. 
CREATE VIEW view2
AS SELECT Name, Phone, DateOfBirth
FROM info
JOIN phones ON phones.id=info.id
WHERE marital_status ='normarried';

-- 3. Необходимо узнать информацию о дате рождения всех сотрудников с должностью менеджер и номера телефонов этих сотрудников. 
CREATE VIEW view3
AS SELECT Name, Phone, DateOfBirth
FROM phones
JOIN info ON phones.id=info.id
JOIN salaryandposition ON phones.id=salaryandposition.id
WHERE position='менеджер';


