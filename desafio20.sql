DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN

SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome Completo`,
d.DEPARTMENT_NAME AS `Departamento`,
j.JOB_TITLE AS `Cargo`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = email
ORDER BY Departamento ASC, Cargo;

END $$

DELIMITER ;
