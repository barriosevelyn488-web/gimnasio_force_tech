USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_calcular_potencia_cuota(p_base INT, p_expres INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_resultado INT DEFAULT 1;
    DECLARE v_i INT DEFAULT 1;

    WHILE v_i <= p_expres DO
        SET v_resultado = v_resultado * p_base;
        SET v_i = v_i + 1;
    END WHILE;

    RETURN v_resultado;
END //

DELIMITER ;