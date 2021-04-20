SELECT job.JOB_TITLE AS 'Cargo', ROUND(AVG(emp.SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 2000 and 5800 THEN 'Júnior'
WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 5801 and 7500 THEN 'Pleno'
WHEN ROUND(AVG(emp.SALARY), 2)  BETWEEN 7501 and 10500 THEN 'Sênior'
WHEN ROUND(AVG(emp.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees as emp
INNER JOIN hr.jobs as job
ON emp.JOB_ID = job.JOB_ID
GROUP BY Cargo ORDER BY ROUND(AVG(emp.SALARY), 2), Cargo;
