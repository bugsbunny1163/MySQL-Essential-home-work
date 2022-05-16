USE MyFunkDB;


DELIMITER |

CREATE PROCEDURE getPhoneAndPlace() 
BEGIN 
	SELECT Name, Phone, PlaceOfLive
    FROM info
    INNER JOIN phones ON phones.id = info.id;
END 
|

CALL getPhoneAndPlace();
|

-- DROP PROCEDURE notMarriedEmployes;|

CREATE PROCEDURE notMarriedEmployes(IN status VARCHAR(10) )
BEGIN
	SELECT Name, DateOfBirth, Phone
    FROM phones
    INNER JOIN info on phones.id = info.id
    WHERE status = marital_status;
END
|

CALL notMarriedEmployes('notmarried');
|

-- DROP PROCEDURE managers|

CREATE PROCEDURE managers(IN pos VARCHAR(10))
BEGIN 
	SELECT Name, DateOfBirth, Phone
    FROM phones
	INNER JOIN info on phones.id = info.id
    INNER JOIN salaryandposition sad on sad.id = phones.id
    WHERE pos = position
    ORDER BY Name;
 END
|

CALL managers('менеджер')
|



