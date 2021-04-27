USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
  D.DEPARTMENT_NAME AS 'Departamento',
  J.JOB_TITLE AS 'Cargo'
  FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH
  ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  INNER JOIN hr.jobs AS J
  ON JH.JOB_ID = J.JOB_ID
  INNER JOIN hr.departments AS D
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
  WHERE E.EMAIL = email
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
