SELECT c1.contactName AS 'Nome', c1.country AS 'País', COUNT(c2.country) AS 'Número de compatriotas'
FROM w3schools.customers AS c1
INNER JOIN w3schools.customers AS c2
ON c1.country = c2.country
AND
c1.contactName <> c2.contactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
