USE gimnasio_force_tech;

-- Creación de rol o usuario superadministrador con permisos de otorgamiento
CREATE USER 'super_admin'@'localhost' IDENTIFIED BY 'SuperAdmin123*';
GRANT ALL PRIVILEGES ON *.* TO 'super_admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;