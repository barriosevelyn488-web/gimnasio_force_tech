USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_ejemplo_case(IN p_codigo_plan VARCHAR(5))
BEGIN
    DECLARE v_nombre_plan VARCHAR(50);

    CASE p_codigo_plan
        WHEN 'PE01' THEN SET v_nombre_plan = 'Plan de Yoga';
        WHEN 'PE02' THEN SET v_nombre_plan = 'Plan de Musculación';
        WHEN 'PE03' THEN SET v_nombre_plan = 'Plan de CrossFit';
        ELSE SET v_nombre_plan = 'Plan Estándar o Desconocido';
    END CASE;

    SELECT v_nombre_plan AS ResultadoPlan;
END //

DELIMITER ;