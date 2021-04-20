SELECT c.COUNTRY_NAME AS 'País' , IF((SELECT r.REGION_NAME FROM hr.regions AS r WHERE r.REGION_ID = c.REGION_ID) = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries AS c;
