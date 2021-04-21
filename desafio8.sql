SELECT c.ContactName AS 'Nome de Contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do Pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName IN ('Speedy Express','United Package')
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
