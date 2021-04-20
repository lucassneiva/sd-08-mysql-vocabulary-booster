-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo
-- Obtenha informações a respeito dos salários das pessoas empregadas.
-- Use o banco hr como referência
-- Crie uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Média salarial" e exibir a média dos salários das pessoas empregadas que possuem o cargo em questão.
-- A terceira deve possuir o alias "Senioridade" e categorizar o nível de senioridade do cargo com base na média salarial, da seguinte forma:
-- Média salarial entre 2000 - 5800 arrow_right Júnior
-- Média salarial entre 5801 - 7500 arrow_right Pleno
-- Média salarial entre 7501 - 10500 arrow_right Sênior
-- Média salarial acima de 10500 arrow_right CEO
-- Sempre que fizer uso da média salarial, arredonde o valor para 02 casas decimais.
-- Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.

SELECT hrjobs.JOB_TITLE AS Cargo,
ROUND(AVG(hremp.SALARY),2) AS `Média salarial`,
CASE
WHEN AVG(hremp.SALARY) >= 2000 AND AVG(hremp.SALARY) <= 5800 THEN "Júnior"
WHEN AVG(hremp.SALARY) >= 5801 AND AVG(hremp.SALARY) <= 7500 THEN "Pleno"
WHEN AVG(hremp.SALARY) >= 7501 AND AVG(hremp.SALARY) <= 10500 THEN "Sênior"
WHEN AVG(hremp.SALARY) > 10500 THEN "CEO"
END AS Senioridade
FROM hr.jobs AS hrjobs
INNER JOIN hr.employees AS hremp
ON hremp.JOB_ID = hrjobs.JOB_ID
GROUP BY hrjobs.JOB_TITLE
ORDER BY `Média salarial`, Cargo;
