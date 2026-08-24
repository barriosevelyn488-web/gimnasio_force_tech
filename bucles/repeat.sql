USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_ejemplo_repeat(IN p_tope INT)
BEGIN
    DECLARE v_contador INT DEFAULT 1;

    REPEAT
        SELECT CONCAT('Iteración REPEAT número: ', v_contador) AS Mensaje;
        SET v_contador = v_contador + 1;
    UNTIL v_contador > p_tope END REPEAT;
END //

DELIMITER ;