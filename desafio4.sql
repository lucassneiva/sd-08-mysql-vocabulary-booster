SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            AVG(SALARY) >= 2000
                AND AVG(SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(SALARY) >= 5801
                AND AVG(SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(SALARY) >= 7501
                AND AVG(SALARY) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS employees ON employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY `Média Salarial` , JOB_TITLE;
