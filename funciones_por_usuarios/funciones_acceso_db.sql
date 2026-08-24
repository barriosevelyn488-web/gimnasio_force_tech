USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_total_socios_sede(p_sede_id VARCHAR(5)) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE v_total INT;
    SELECT COUNT(*) INTO v_total 
    FROM SOCIO_PLAN_ENTRENAMIENTO 
    WHERE SEDE_ID = p_sede_id;
    RETURN v_total;
END //

DELIMITER ;