SELECT (
	SELECT j.JOB_TITLE
    FROM hr.jobs AS j
    WHERE j.JOB_ID = e.JOB_ID
) AS 'Cargo',
ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
	WHEN AVG(e.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(e.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(e.SALARY) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS e
GROUP BY e.JOB_ID
ORDER BY ROUND(AVG(e.SALARY), 2), (
	SELECT j.JOB_TITLE
    FROM hr.jobs AS j
    WHERE j.JOB_ID = e.JOB_ID
);