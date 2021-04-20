SELECT JOB_TITLE AS 'Cargo',
CASE
WHEN MAX_SALARY <= 10000 THEN 'Baixo'
WHEN MAX_SALARY > 10000 AND MAX_SALARY <= 20000 THEN 'Médio'
WHEN MAX_SALARY > 20000 AND MAX_SALARY <= 30000 THEN 'Alto'
WHEN MAX_SAlARY > 30000 THEN 'Altíssimo'
ELSE 'Salário não categorizado'
END
AS 'Nível'
FROM hr.jobs
ORDER BY 1;
