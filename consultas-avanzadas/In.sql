USE gimnasio_force_tech;

SELECT s.Socio_ID, s.Nombres, s.Apellidos
FROM SOCIOS s
WHERE s.Socio_ID IN (
    SELECT Socio_ID 
    FROM SOCIO_PLAN_ENTRENAMIENTO 
    WHERE PLAN_ENTRENAMIENTO_ID IN ('PE01', 'PE03')
);