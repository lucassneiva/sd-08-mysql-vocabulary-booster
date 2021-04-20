SELECT P.`ProductName` AS `Produto`,
P.`Price` AS `Preço`
FROM w3schools.products AS P
WHERE P.`ProductID` IN (
SELECT OD.`ProductID`
FROM w3schools.order_details AS OD
WHERE OD.`Quantity` > 80)
ORDER BY `Produto`;
