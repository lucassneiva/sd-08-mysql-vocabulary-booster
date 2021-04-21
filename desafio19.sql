DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_hired INT;
SELECT COUNT(HIRE_DATE)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) INTO count_hired;
RETURN count_hired;
END $$
DELIMITER ;
