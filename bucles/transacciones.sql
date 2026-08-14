USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_asignar_plan_transaccional(
    IN p_socio_id INT,
    IN p_plan_id VARCHAR(5),
    IN p_entrenador_id VARCHAR(5),
    IN p_sede_id VARCHAR(5)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Transacción abortada: Realizado ROLLBACK por fallo en inserción.' AS Estado;
    END;

    START TRANSACTION;

        -- Inserción segura de la asignación
        INSERT INTO SOCIO_PLAN_ENTRENAMIENTO (Socio_ID, PLAN_ENTRENAMIENTO_ID, ENTRENADOR_ID, SEDE_ID, Fecha_Asignacion)
        VALUES (p_socio_id, p_plan_id, p_entrenador_id, p_sede_id, CURDATE());

    COMMIT;
    SELECT 'Transacción completada con éxito: COMMIT ejecutado.' AS Estado;
END //

DELIMITER ;