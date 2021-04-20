SELECT c.COUNTRY_NAME AS `País`,
CASE 
	WHEN r.REGION_NAME = 'EUROPE' THEN 'incluído'
    ELSE 'não inculuído'
END AS `Status Inclusão`
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
