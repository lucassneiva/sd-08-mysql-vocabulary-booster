USE w3schools;

DELIMITER $$
CREATE TRIGGER triggerInsertOrderDate
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
