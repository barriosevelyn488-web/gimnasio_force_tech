USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_dias_activo(p_fecha_asignacion DATE) 
RETURNS INT
NOT DETERMINISTIC
BEGIN
    RETURN DATEDIFF(CURDATE(), p_fecha_asignacion);
END //

DELIMITER ;