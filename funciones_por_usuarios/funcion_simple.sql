USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_nombre_completo(p_socio_id INT) 
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE v_nombre VARCHAR(100);
    SELECT CONCAT(Nombres, ' ', Apellidos) INTO v_nombre 
    FROM SOCIOS WHERE Socio_ID = p_socio_id;
    RETURN v_nombre;
END //

DELIMITER ;