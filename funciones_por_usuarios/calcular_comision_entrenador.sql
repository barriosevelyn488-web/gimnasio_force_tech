USE gimnasio_force_tech;

DELIMITER //

CREATE FUNCTION fn_calcular_comision(p_entrenador_id VARCHAR(5)) 
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE v_total_socios INT;
    DECLARE v_comision DECIMAL(10,2);

    SELECT COUNT(*) INTO v_total_socios 
    FROM SOCIO_PLAN_ENTRENAMIENTO 
    WHERE ENTRENADOR_ID = p_entrenador_id;

    IF v_total_socios > 10 THEN
        SET v_comision = v_total_socios * 50.00;
    ELSE
        SET v_comision = v_total_socios * 20.00;
    END IF;

    RETURN v_comision;
END //

DELIMITER ;