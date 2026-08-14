USE gimnasio_force_tech;

-- Asignación de privilegios globales y específicos
GRANT ALL PRIVILEGES ON gimnasio_force_tech.* TO 'admin_gym'@'localhost';
GRANT SELECT ON gimnasio_force_tech.SOCIO_PLAN_ENTRENAMIENTO TO 'entrenador_user'@'localhost';