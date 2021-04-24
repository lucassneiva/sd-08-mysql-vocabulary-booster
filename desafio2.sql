SELECT
    JOB_TITLE AS Cargo,
	CASE
        WHEN MAX_SALARY >= 5000 && MAX_SALARY  <=10000  THEN 'Baixo'
        WHEN MAX_SALARY >= 10001 && MAX_SALARY <=20000 THEN 'Médio'
        WHEN MAX_SALARY >= 20001 && MAX_SALARY <= 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS Nível
FROM jobs
ORDER BY Cargo;

