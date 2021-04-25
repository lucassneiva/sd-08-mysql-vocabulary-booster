SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
	WHEN ROUND(AVG(e.SALARY), 2) < 5800  THEN 'Júnior'
	WHEN ROUND(AVG(e.SALARY), 2) < 7500  THEN 'Pleno'
    WHEN ROUND(AVG(e.SALARY), 2) < 10500 THEN 'Sênior'
    WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM jobs as j
INNER JOIN hr.employees as e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_ID, j.JOB_TITLE
ORDER BY `Média salarial`, j.JOB_TITLE;
