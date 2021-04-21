SELECT JOB_TITLE AS Cargo, MAX_SALARY AS 'salário máximo',
CASE 
WHEN MAX_SALARY >= 5000 AND MAX_SALARY <= 10000 THEN 'BAIXO'
WHEN MAX_SALARY >= 10001 AND MAX_SALARY <= 20000 THEN 'MEDIO'
WHEN MAX_SALARY >= 20001 AND MAX_SALARY <= 30000 THEN 'ALTO'
WHEN MAX_SALARY >= 30001 THEN 'ALTÍSSIMO'
ELSE 'NÃO CLASSIFICADO'
END AS Nível
 FROM hr.jobs ORDER BY Cargo;