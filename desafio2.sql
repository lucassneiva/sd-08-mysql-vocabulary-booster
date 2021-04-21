SELECT
	JOB_TITLE AS 'Cargo',
	MAX_SALARY,
    CASE
		WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
        WHEN MAX_SALARY > 20000 THEN 'Alto'
        WHEN MAX_SALARY > 10000 THEN 'Médio'
        ELSE 'Baixo'
	END AS 'Nível'
FROM hr.jobs;
