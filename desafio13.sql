SELECT 
    productName AS 'Produto', price AS 'Preço'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS O ON P.ProductID = O.ProductID
WHERE
    O.Quantity > 80
ORDER BY 1;
