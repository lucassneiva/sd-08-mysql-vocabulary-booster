USE w3schools;

DELIMITER $$

CREATE TRIGGER defineOrderDate
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
