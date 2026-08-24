USE gimnasio_force_tech;

DELIMITER //

CREATE TRIGGER trg_validar_cupo_entrenador
BEFORE INSERT ON SOCIO_PLAN_ENTRENAMIENTO
FOR EACH ROW
BEGIN
    DECLARE v_cupo_max INT;
    DECLARE v_actuales INT;

    -- Obtener el cupo máximo del entrenador
    SELECT Cupo_Maximo INTO v_cupo_max 
    FROM ENTRENADORES 
    WHERE ENTRENADOR_ID = NEW.ENTRENADOR_ID;

    -- Contar socios actuales asignados al entrenador
    SELECT COUNT(*) INTO v_actuales 
    FROM SOCIO_PLAN_ENTRENAMIENTO 
    WHERE ENTRENADOR_ID = NEW.ENTRENADOR_ID;

    -- Validar si se supera el cupo
    IF v_actuales >= v_cupo_max THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: El entrenador ha alcanzado su cupo máximo de socios.';
    END IF;
END //

DELIMITER ;