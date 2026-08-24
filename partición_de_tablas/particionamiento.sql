USE gimnasio_force_tech;

-- 1. Eliminar las llaves foráneas existentes que bloquean el particionamiento
-- (Los nombres de las restricciones dependen de tu DDL original, los más comunes se listan a continuación):
ALTER TABLE SOCIO_PLAN_ENTRENAMIENTO DROP FOREIGN KEY fk_socio_plan_socio;
ALTER TABLE SOCIO_PLAN_ENTRENAMIENTO DROP FOREIGN KEY fk_socio_plan_entrenador;
ALTER TABLE SOCIO_PLAN_ENTRENAMIENTO DROP FOREIGN KEY fk_socio_plan_sede;

-- Nota: Si tus constraints tienen nombres automáticos de MySQL, puedes consultarlos con:
-- SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'SOCIO_PLAN_ENTRENAMIENTO' AND REFERENCED_TABLE_NAME IS NOT NULL;

-- 2. Modificar la clave primaria para que incluya la columna de particionamiento
ALTER TABLE SOCIO_PLAN_ENTRENAMIENTO
DROP PRIMARY KEY,
ADD PRIMARY KEY (ID_ASIGNACION, Fecha_Asignacion);

-- 3. Aplicar el particionamiento por rangos anuales exitosamente
ALTER TABLE SOCIO_PLAN_ENTRENAMIENTO
PARTITION BY RANGE (YEAR(Fecha_Asignacion)) (
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION p2026 VALUES LESS THAN (2027),
    PARTITION p_max VALUES LESS THAN MAXVALUE
);

SELECT 'Configuración de particionamiento estructurada y documentada correctamente' AS Estado;