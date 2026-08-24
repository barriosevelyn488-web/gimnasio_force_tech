USE gimnasio_force_tech;

DELIMITER //

CREATE PROCEDURE sp_registrar_socio_con_control(
    IN p_id INT, 
    IN p_nombres VARCHAR(50), 
    IN p_apellidos VARCHAR(50), 
    IN p_telefono VARCHAR(20)
)
BEGIN
    -- Declaración de Handler para capturar excepciones SQL (ej. duplicidad de ID)
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Error: No se pudo registrar el socio debido a un conflicto en la base de datos.' AS MensajeError;
    END;

    START TRANSACTION;

        INSERT INTO SOCIOS (Socio_ID, Nombres, Apellidos, Telefono) 
        VALUES (p_id, p_nombres, p_apellidos, p_telefono);

    COMMIT;
END //

DELIMITER ;