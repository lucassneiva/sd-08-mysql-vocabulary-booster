SELECT c1.ContactName AS 'Nome', c1.Country AS 'País', COUNT(c1.Country) AS 'Número de compatriotas'
FROM w3schools.customers c1, w3schools.customers c2
WHERE c1.Country = c2.Country AND c1.ContactName != c2.ContactName
GROUP BY c1.CustomerID
ORDER BY c1.ContactName;
