USE gimnasio_force_tech;

-- 1. Insertar Ciudades
INSERT INTO CIUDADES (CIUDAD_ID, Nombre_Ciudad) VALUES 
('C01', 'Madrid'),
('C02', 'Barcelona');

-- 2. Insertar Sedes
INSERT INTO SEDES (SEDE_ID, Nombre_Sede, Ciudad_Id) VALUES 
('S01', 'Sede Norte', 'C01'),
('S02', 'Sede Sur', 'C02');

-- 3. Insertar Planes de Entrenamiento
INSERT INTO PLANES_ENTRENAMIENTO (PLAN_ENTRENAMIENTO_ID, Plan_Entrenamiento) VALUES 
('PE01', 'Yoga'),
('PE02', 'Musculación Avanzada'),
('PE03', 'CrossFit'),
('PE04', 'Boxeo');

-- 4. Insertar Especialidades de Entrenadores
INSERT INTO ESPECIALIDADES_ENTRENADORES (ESPECIALIDAD_ID, NOMBRE_ESPECIALIDAD) VALUES 
('EE01', 'Yoga Integral'),
('EE02', 'Musculación y Fuerza'),
('EE03', 'Entrenamiento Funcional'),
('EE04', 'Boxeo y Ring');

-- 5. Insertar Entrenadores
INSERT INTO ENTRENADORES (ENTRENADOR_ID, Nombres, Apellidos, ESPECIALIDAD_ID, SEDE_ID, Cupo_Maximo) VALUES 
('E01', 'Carlos', 'López', 'EE01', 'S01', 5),
('E02', 'Marta', 'Gómez', 'EE02', 'S01', 5),
('E03', 'Iván', 'Pérez', 'EE03', 'S02', 5),
('E04', 'Diego', 'Martínez', 'EE04', 'S01', 5);

-- 6. Insertar Socios
INSERT INTO SOCIOS (Socio_ID, Nombres, Apellidos, Telefono) VALUES 
(101, 'Ana', 'Pérez', '555-1234'),
(102, 'Luis', 'Gómez', '555-5678'),
(103, 'Carla', 'Ruiz', '555-9012');

-- 7. Insertar Asignaciones (Socio - Plan - Entrenador - Sede)
INSERT INTO SOCIO_PLAN_ENTRENAMIENTO (Socio_ID, PLAN_ENTRENAMIENTO_ID, ENTRENADOR_ID, SEDE_ID, Fecha_Asignacion) VALUES 
(101, 'PE01', 'E01', 'S01', '2026-08-01'),
(101, 'PE02', 'E02', 'S01', '2026-08-01'),
(102, 'PE03', 'E03', 'S02', '2026-08-01');