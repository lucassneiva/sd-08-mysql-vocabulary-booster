SELECT 
    J.job_title AS 'Cargo',
    ROUND(AVG(E.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(E.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(E.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(E.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(E.salary) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs J
        INNER JOIN
    hr.employees E ON J.job_id = E.job_id
GROUP BY J.job_id
ORDER BY ROUND(AVG(salary), 2) , job_title;
