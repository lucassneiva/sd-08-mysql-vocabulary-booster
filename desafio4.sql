SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN AVG(emp.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(emp.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(emp.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG(emp.SALARY), 2), jobs.JOB_TITLE;

