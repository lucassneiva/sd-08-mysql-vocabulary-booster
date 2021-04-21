SELECT
  p.ProductName AS 'Produto',
  p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING MAX(od.Quantity) > 80
ORDER BY `Produto`;
