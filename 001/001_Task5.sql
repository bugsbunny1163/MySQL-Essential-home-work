USE mydb;


-- змінюю на notmarried тому що було married
UPDATE info 
SET marital_status ='notmarried'
WHERE id =1;