select concat(e.first_name, ' ', e.last_name) as `Nome completo`,
j.job_title as `Cargo`,
hire_date as `Data de início do cargo`,
department_name as `Departamento`
from employees e
inner join jobs j
on e.job_id = j.job_id
inner join departments dpt
on dpt.department_id = e.department_id; 
