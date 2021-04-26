SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos' FROM w3schools.orders AS orders INNER JOIN w3schools.employees AS employees ON orders.EmployeeID = employees.EmployeeID WHERE EXISTS (SELECT * FROM w3schools.employees WHERE orders.EmployeeID = employees.EmployeeID) GROUP BY `Nome completo` ORDER BY `Total de pedidos`;

-- SELECT
--   CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
--   COUNT(*) AS 'Total de pedidos'
-- FROM w3schools.orders AS orders
-- INNER JOIN w3schools.employees AS employees
-- ON orders.EmployeeID = employees.EmployeeID
-- WHERE EXISTS (
--   SELECT * FROM w3schools.employees
--   WHERE orders.EmployeeID = employees.EmployeeID
-- )
-- GROUP BY `Nome completo`
-- ORDER BY `Total de pedidos`;
