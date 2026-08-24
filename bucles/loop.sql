USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_ejemplo_loop(IN p_tope INT)
BEGIN
    DECLARE v_contador INT DEFAULT 1;

    etiqueta_loop: LOOP
        IF v_contador > p_tope THEN
            LEAVE etiqueta_loop;
        END IF;

        SELECT CONCAT('Iteración LOOP número: ', v_contador) AS Mensaje;
        SET v_contador = v_contador + 1;
    END LOOP etiqueta_loop;
END //

DELIMITER ;