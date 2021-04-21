DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN name_job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS "Média salarial"
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = name_job;
END $$
DELIMITER ;
