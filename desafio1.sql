USE hr;
SELECT 
    co.COUNTRY_NAME AS `País`,
    IF(rs.REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS `Status Inclusão`
FROM
    hr.countries AS co
        INNER JOIN
    hr.regions AS rs ON co.REGION_ID = rs.REGION_ID
ORDER BY co.COUNTRY_NAME
;
