USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_evaluar_cupo(p_asignados INT, p_maximo INT) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE v_estado VARCHAR(20);
    IF p_asignados >= p_maximo THEN
        SET v_estado = 'Cupo Lleno';
    ELSE
        SET v_estado = 'Disponible';
    END IF;
    RETURN v_estado;
END //

DELIMITER ;