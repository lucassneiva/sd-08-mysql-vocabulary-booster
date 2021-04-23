SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  (
    SELECT j.JOB_TITLE FROM hr.jobs AS j
    WHERE j.JOB_ID = e.JOB_ID
  ) AS `Cargo`,
  e.HIRE_DATE AS `Data de início do cargo`,
  (
    SELECT d.DEPARTMENT_NAME FROM hr.departments AS d
    WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID
  ) AS `Departamento`
FROM hr.employees AS e
ORDER BY `Nome completo` DESC, `Cargo`;
