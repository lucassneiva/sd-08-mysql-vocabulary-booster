SELECT JOB_TITLE AS Cargo, 
ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) AS 'Média salarial',
CASE 
WHEN ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) >= 2000 AND ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) >= 5801 AND ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) >= 7501 AND ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) <= 10500 THEN 'Sênior'
WHEN ROUND(((MAX_SALARY + MIN_SALARY)/2), 2) >= 10501 THEN 'CEO'
ELSE 'Não classificado'
END AS Senioridade
FROM hr.jobs ORDER BY ((MAX_SALARY + MIN_SALARY) /2), Cargo;
