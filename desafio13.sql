SELECT 
p.ProductName AS `Produto`,
p.Price AS `Price`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
