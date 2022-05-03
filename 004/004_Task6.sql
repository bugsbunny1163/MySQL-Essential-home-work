USE shopdb;

SELECT od.OrderID, c.FName AS cusFName, c.LName AS cusLName, e.FName AS empFName, e.LName AS empLName
FROM orderdetails od
JOIN orders o
    ON od.OrderID = o.OrderID
JOIN customers c
	ON o.CustomerNo = c.CustomerNo 
JOIN employees e
	ON e.EmployeeID = o.EmployeeID
GROUP BY od.OrderID
HAVING SUM(od.TotalPrice)>1000;