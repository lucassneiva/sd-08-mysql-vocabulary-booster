(SELECT Country AS 'País' FROM w3schools.customers ORDER BY Country) UNION (SELECT Country AS 'País' FROM w3schools.suppliers ORDER BY Country) ORDER BY País LIMIT 5;