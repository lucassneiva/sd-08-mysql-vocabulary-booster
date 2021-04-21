SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo', (SELECT COUNT(*) FROM w3schools.orders AS o WHERE o.EmployeeID = e.EmployeeID GROUP BY o.EmployeeID) AS 'Total de pedidos' FROM w3schools.employees AS e WHERE EXISTS (SELECT * FROM w3schools.orders AS o WHERE o.EmployeeID = e.EmployeeID) ORDER BY (SELECT COUNT(*) FROM w3schools.orders AS o WHERE o.EmployeeID = e.EmployeeID GROUP BY o.EmployeeID);