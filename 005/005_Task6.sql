USE shopdb;

SELECT 
(SELECT FName FROM employees WHERE employees.EmployeeID=
(SELECT EmployeeID FROM orders WHERE orderdetails.OrderID=orders.OrderID)
) AS empFName,
(SELECT LName FROM employees WHERE employees.EmployeeID=
(SELECT EmployeeID FROM orders WHERE orderdetails.OrderID=orders.OrderID)
) AS empLName,
(SELECT FName FROM customers WHERE customers.CustomerNo=
(SELECT CustomerNo FROM orders WHERE orderdetails.OrderID=orders.OrderID)
) AS cusFName,
(SELECT LName FROM customers WHERE customers.CustomerNo=
(SELECT CustomerNo FROM orders WHERE orderdetails.OrderID=orders.OrderID)
) AS cusLName
FROM orderdetails
GROUP BY OrderID
HAVING SUM(TotalPrice) >1000;