-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства).

SELECT Name, Phone, (SELECT PlaceOfLive FROM info WHERE phones.id = info.id) AS PlaceOfLive 
FROM phones;

-- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера.
SELECT 
(SELECT name FROM phones WHERE info.id = phones.id ) AS Name,
DateOfBirth,
(SELECT Phone FROM phones WHERE info.id = phones.id ) AS Phone
FROM info
WHERE marital_status = 'normarried';

-- 3) Получите информацию обо всех менеджерах компании:дату рождения и номер телефона. --
  SELECT 
 (SELECT name FROM phones WHERE salaryandposition.id = phones.id ) AS Name, 
 (SELECT DateOfBirth FROM info WHERE salaryandposition.id = info.id ) AS DateOfBirth, 
 (SELECT Phone FROM phones WHERE salaryandposition.id = phones.id ) AS Phone
 FROM salaryandposition
 WHERE position = 'менеджер';
