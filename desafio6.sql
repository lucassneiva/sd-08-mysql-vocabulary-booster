SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
JH.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS E
INNER JOIN jobs AS J
ON E.JOB_ID = J.JOB_ID
INNER JOIN departments AS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, `Cargo`;
