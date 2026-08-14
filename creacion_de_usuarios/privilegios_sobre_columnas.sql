USE gimnasio_force_tech;

-- Restringir privilegios a columnas específicas para proteger datos personales
GRANT SELECT (Socio_ID, Nombres, Apellidos) ON gimnasio_force_tech.SOCIOS TO 'entrenador_user'@'localhost';
FLUSH PRIVILEGES;