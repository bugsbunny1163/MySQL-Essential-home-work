USE MyFunkDB_1;

DELIMITER |

DROP TRIGGER IF EXISTS delete_from_tables;|

CREATE TRIGGER delete_from_tables
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
	DELETE FROM info WHERE Emp_id = OLD.id;
    DELETE FROM salaryandposition WHERE Emp_id = OLD.id;
END;|


DELETE FROM employees WHERE id = 3;|



