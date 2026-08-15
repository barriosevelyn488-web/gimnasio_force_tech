USE gimnasio_force_tech;

-- Definir la variable con el parámetro y ejecutar la sentencia preparada
SET @ciudad_filtro = 'C01';
EXECUTE stmt_buscar_socio USING @ciudad_filtro;