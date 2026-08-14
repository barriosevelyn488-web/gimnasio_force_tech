USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_verificar_precio_valido(p_precio DECIMAL(10,2)) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF p_precio < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: El precio no puede ser negativo.';
    END IF;
    RETURN 'Precio Válido';
END //

DELIMITER ;