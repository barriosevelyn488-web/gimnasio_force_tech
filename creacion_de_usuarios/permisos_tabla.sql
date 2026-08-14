USE gimnasio_force_tech;

-- Otorgar permisos completos sobre tablas específicas al administrador de soporte
GRANT SELECT, INSERT, UPDATE ON gimnasio_force_tech.SOCIOS TO 'admin_gym'@'localhost';