USE MyFunkDB_1;

DELIMITER |

DROP PROCEDURE IF EXISTS Add_new_emploee;| 

CREATE PROCEDURE Add_new_emploee 
(IN name_new VARCHAR(20), IN phone_new VARCHAR(15), 
IN new_marital_status VARCHAR(10), IN new_DateOfBirth DATE, IN new_PlaceOfLive VARCHAR(20), 
IN new_salary DECIMAL(10,2), IN new_position VARCHAR(30))
BEGIN
DECLARE id_temp INT;
START TRANSACTION;

	INSERT employees (name, phone)
    VALUES (name_new, phone_new);
    SET id_temp = @@IDENTITY;
    
    INSERT info (Emp_id, marital_status, DateOfBirth, PlaceOfLive)
    VALUES (id_temp, new_marital_status, new_DateOfBirth, new_PlaceOfLive);
    
    INSERT salaryandposition (Emp_id, salary, position)
    VALUES (id_temp, new_salary, new_position);
    
IF EXISTS (SELECT * FROM employees WHERE name = name_new AND id != id_temp)
	THEN ROLLBACK;
END IF;
    COMMIT;
END|

CALL Add_new_emploee ('Smith', '380684249486', 'married', 19920510, 'Kyiv', 500000, 'главный директор');|
CALL Add_new_emploee ('Smith', '380684249486', 'married', 19920510, 'Kyiv', 500000, 'главный директор');|
CALL Add_new_emploee('Jones', '380684249643', 'notmarried', 19920818, 'Kharkiv', 6000, 'рабочий');|
CALL Add_new_emploee('Taylor', '380684249693',  'married', 19921126, 'Odessa', 7000, 'рабочий');|
CALL Add_new_emploee('Williams', '380684249743',  'notmarried', 19930306, 'Dnipro', 8000, 'рабочий');|
CALL Add_new_emploee('Brown', '380684249793',  'notmarried', 19930614, 'Lviv', 9000, 'менеджер');|
CALL Add_new_emploee('White', '380684249843',  'married', 19930922, 'Poltava', 10000, 'рабочий');|
CALL Add_new_emploee('Harris', '380684249893',  'married', 19931231, 'Lviv', 11000, 'рабочий');|
CALL Add_new_emploee('Martin', '380684249943','notmarried', 19940410, 'Lviv', 12000, 'рабочий');|
CALL Add_new_emploee('Davies', '380684249993',  'married', 19940719, 'Kyiv', 13000, 'рабочий');|
CALL Add_new_emploee('Wilson', '380684250043', 'notmarried', 19941027, 'Kharkiv', 14000, 'менеджер');|
CALL Add_new_emploee('Cooper', '380684250093',  'married', 19950204, 'Odessa', 15000, 'рабочий');|
CALL Add_new_emploee('Evans', '380684250143',  'notmarried', 19950515, 'Dnipro', 16000, 'рабочий');|
CALL Add_new_emploee('King', '380684250193',  'married', 19950823, 'Lviv', 17000, 'рабочий');|
CALL Add_new_emploee('Thomas', '380684250243',  'married', 19951201, 'Poltava', 18000, 'рабочий');|
CALL Add_new_emploee('Baker', '380684250293',  'notmarried', 19960310, 'Lviv', 19000, 'рабочий');|
CALL Add_new_emploee('Green', '380684250343',  'notmarried', 19960618, 'Lviv', 20000, 'менеджер');|
CALL Add_new_emploee('Wright', '380684250393',  'married', 19960926, 'Kyiv', 21000, 'рабочий');|
CALL Add_new_emploee('Edwards', '380684250443',  'married', 19970104, 'Kharkiv', 22000, 'менеджер');|
CALL Add_new_emploee('Roberts', '380684250493',  'notmarried', 19970414, 'Odessa', 23000, 'рабочий');|



