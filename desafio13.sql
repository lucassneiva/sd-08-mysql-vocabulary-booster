SELECT
P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN order_details AS O
ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY `Produto`;
