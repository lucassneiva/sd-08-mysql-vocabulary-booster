USE hr; DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))BEGIN SELECT ROUND(AVG(E.SALARY),2) AS `Média salarial` FROM hr.employees AS E INNER JOIN hr.jobs AS JB ON E.JOB_ID = JB.JOB_ID WHERE JB.JOB_TITLE = cargo GROUP BY JB.JOB_TITLE;END $$ DELIMITER ;
