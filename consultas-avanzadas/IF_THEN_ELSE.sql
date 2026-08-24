USE gimnasio_force_tech;

SELECT 
    s.Nombres,
    COUNT(spe.PLAN_ENTRENAMIENTO_ID) AS Total_Planes,
    IF(COUNT(spe.PLAN_ENTRENAMIENTO_ID) >= 2, 'Cliente VIP', 'Cliente Regular') AS Categoria_Cliente
FROM SOCIOS s
LEFT JOIN SOCIO_PLAN_ENTRENAMIENTO spe ON s.Socio_ID = spe.Socio_ID
GROUP BY s.Socio_ID, s.Nombres;