USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_ejemplo_while(IN p_tope INT)
BEGIN
    DECLARE v_contador INT DEFAULT 1;

    WHILE v_contador <= p_tope DO
        SELECT CONCAT('Iteración WHILE número: ', v_contador) AS Mensaje;
        SET v_contador = v_contador + 1;
    END WHILE;
END //

DELIMITER ;