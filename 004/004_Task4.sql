USE MyJoinsDB;

-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства)
SELECT phones.name, phones.phone, info.PlaceOfLive 
FROM phones
INNER JOIN info ON phones.id=info.id;

-- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера.
SELECT phones.name, phones.phone
FROM phones
INNER JOIN info ON phones.id=info.id
WHERE info.marital_status = 'normarried';

-- 3) Получите информацию обо всех менеджерах компании: дату рождения и номер телефона. 

SELECT phones.name, info.DateOfBirth, phones.phone
FROM phones 
INNER JOIN info on phones.id=info.id
WHERE EXISTS ( SELECT * FROM salaryandposition WHERE salaryandposition.id =info.id AND salaryandposition.position = 'менеджер');