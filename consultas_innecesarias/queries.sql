-- 1. Uso innecesario de subconsultas correlacionadas cuando un JOIN simple sería más eficiente
SELECT s.Socio_ID, s.Nombres, 
       (SELECT p.Plan_Entrenamiento 
        FROM PLANES_ENTRENAMIENTO p 
        WHERE p.PLAN_ENTRENAMIENTO_ID = spe.PLAN_ENTRENAMIENTO_ID) AS Plan_Nombre
FROM SOCIOS s
JOIN SOCIO_PLAN_ENTRENAMIENTO spe ON s.Socio_ID = spe.Socio_ID;

-- 2. Consulta con DISTINCT redundante en un JOIN donde la 4FN ya previene duplicados
SELECT DISTINCT s.Socio_ID, s.Nombres, s.Apellidos
FROM SOCIOS s
INNER JOIN SOCIO_PLAN_ENTRENAMIENTO spe ON s.Socio_ID = spe.Socio_ID;

-- 3. Uso innecesario de COUNT(*) en subconsulta filtrando la misma tabla sin agrupamiento real
SELECT s.Socio_ID, s.Nombres,
       (SELECT COUNT(*) FROM SOCIO_PLAN_ENTRENAMIENTO) AS Total_Global_Asignaciones
FROM SOCIOS s;