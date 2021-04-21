SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
from hr.employees AS e
INNER JOIN hr.job_history as jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, jh.START_DATE;
