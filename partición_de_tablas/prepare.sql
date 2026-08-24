USE gimnasio_force_tech;

-- Preparar una sentencia SQL dinámica para buscar socios por ciudad de forma segura
PREPARE stmt_buscar_socio FROM 
'SELECT s.Socio_ID, s.Nombres, s.Apellidos, sed.Nombre_Sede 
 FROM SOCIOS s 
 JOIN SOCIO_PLAN_ENTRENAMIENTO spe ON s.Socio_ID = spe.Socio_ID 
 JOIN SEDES sed ON spe.SEDE_ID = sed.SEDE_ID 
 WHERE sed.Ciudad_Id = ?';