SELECT
  DISTINCT J.JOB_TITLE AS 'Cargo',
  CASE
    WHEN J.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
    WHEN J.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
    WHEN J.MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
    WHEN J.MAX_SALARY > 30000 THEN 'Altíssimo'
  END AS 'Nível'
FROM hr.jobs J
INNER JOIN hr.employees E
ON E.JOB_ID = J.JOB_ID
ORDER BY J.JOB_TITLE;
