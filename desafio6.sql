-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas.
-- Use o banco hr como referência
-- Monte uma query que exiba 04 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
hrjobs.JOB_TITLE AS Cargo,
hrjobhist.START_DATE AS `Data de início do cargo`,
hrdep.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS hremp
INNER JOIN hr.job_history AS hrjobhist
ON hremp.EMPLOYEE_ID = hrjobhist.EMPLOYEE_ID
INNER JOIN hr.jobs AS hrjobs
ON hrjobhist.JOB_ID = hrjobs.JOB_ID
INNER JOIN hr.departments AS hrdep
ON hrdep.DEPARTMENT_ID = hrjobhist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
