USE hr; 
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100)) 
BEGIN 
SELECT ROUND(AVG(e.salary), 2) AS `Média salarial` 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID 
WHERE j.JOB_TITLE = cargo
GROUP BY j.JOB_TITLE
;
END $$ 

DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');
