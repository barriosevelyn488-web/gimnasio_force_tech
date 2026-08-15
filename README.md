# Proyecto Base de Datos: Gimnasio Force Tech

Repositorio oficial que contiene la arquitectura, scripts DDL y DML, automatización, seguridad, consultas avanzadas y particionamiento para el sistema de gestión del gimnasio **Force Tech**.

---

## Estructura del Repositorio

A continuación se detalla la organización de los directorios y la función de cada componente dentro del proyecto.

```text
gimnasio_force_tech/
├── bucles/
│   ├── case.sql
│   ├── errores.sql
│   ├── loop.sql
│   ├── repeat.sql
│   ├── transacciones.sql
│   └── while.sql
├── consultas-avanzadas/
│   ├── IF_THEN_ELSE.sql
│   ├── In.sql
│   ├── inserccion.sql
│   ├── Inner_Join.sql
│   ├── Loop.sql
│   └── out.sql
├── consultas_innecesarias/
│   └── queries.sql
├── creacion_de_usuarios/
│   ├── asignacion_permisos.sql
│   ├── crear_usuario.sql
│   ├── permisos_tabla.sql
│   ├── privilegios.sql
│   └── privilegios_sobre_columnas.sql
├── ddl/
│   └── schema.sql
├── dml/
│   └── seeds.sql
├── eventos/
│   ├── evento.sql
│   └── Trigger.sql
├── funciones_por_usuarios/
│   └── funciones.sql
├── particion_de_tablas/
│   ├── deallocate.sql
│   ├── execute.sql
│   ├── particionamiento.sql
│   └── prepare.sql
└── README.md
```

---

## Detalle de Módulos

### 1. DDL (Data Definition Language) - `ddl/`
Este módulo alberga los scripts para la estructuración de la base de datos. Define las tablas, tipos de datos, llaves primarias y foráneas, garantizando la integridad referencial del sistema.

### 2. DML (Data Manipulation Language) - `dml/`
Contiene los scripts para la carga inicial de datos (`seeds.sql`) en los catálogos del sistema, como ciudades, sedes, planes de entrenamiento, especialidades, entrenadores y socios.

### 3. Bucles y Procedimientos Almacenados - `bucles/`
Implementa lógica procedural en MySQL para controlar flujos de ejecución y transacciones seguras.
- **`loop.sql`**: Estructura iterativa `LOOP`.
- **`while.sql`**: Bucle condicional `WHILE`.
- **`repeat.sql`**: Bucle `REPEAT UNTIL`.
- **`case.sql`**: Bifurcaciones lógicas con `CASE`.
- **`errores.sql`**: Manejo de excepciones con `EXIT HANDLER`.
- **`transacciones.sql`**: Control transaccional con `COMMIT` y `ROLLBACK`.

### 4. Consultas Avanzadas - `consultas-avanzadas/`
Scripts enfocados en la recuperación y análisis complejo de información.
- **`Inner_Join.sql`**: Relaciona múltiples entidades del sistema.
- **`In.sql`**: Uso de subconsultas y filtros por conjuntos.
- **`IF_THEN_ELSE.sql`**: Lógica condicional en la proyección de resultados.
- **`out.sql`**: Consultas con `LEFT JOIN`.
- **`inserccion.sql`**: Inserciones para casos de uso específicos.
- **`Loop.sql`**: Soporte para estructuras iterativas en consultas.

### 5. Consultas Innecesarias - `consultas_innecesarias/`
El archivo `queries.sql` contiene ejemplos didácticos sobre antipatrones de diseño, mostrando consultas redundantes y subconsultas correlacionadas ineficientes para fines de optimización.

### 6. Gestión de Usuarios y Seguridad - `creacion_de_usuarios/`
Módulo dedicado al control de acceso basado en roles y privilegios.
- **`crear_usuario.sql`**: Creación de usuarios con credenciales.
- **`asignacion_permisos.sql`**: Concesión de privilegios globales.
- **`permisos_tabla.sql`**: Asignación de permisos a nivel de tabla.
- **`privilegios_sobre_columnas.sql`**: Restricciones a nivel de columna para datos sensibles.
- **`privilegios.sql`**: Auditoría de permisos de usuario.
- **`usuario_admin.sql`**: Configuración de un rol de administrador con `GRANT OPTION`.

### 7. Eventos y Triggers - `eventos/`
Mecanismos para la automatización y el control a nivel de base de datos.
- **`evento.sql`**: Programación de tareas periódicas.
- **`Trigger.sql`**: Disparadores para validar reglas de negocio antes de una inserción (ej. control de cupos).

### 8. Funciones Almacenadas - `funciones_por_usuarios/`
Contiene funciones personalizadas con diferentes características: determinísticas, no determinísticas, con acceso a datos SQL, uso de bucles y manejo de errores mediante `SIGNAL SQLSTATE`.

### 9. Partición de Tablas y Optimización - `particion_de_tablas/`
Técnicas para la optimización del rendimiento y la gestión dinámica de consultas.
- **`particionamiento.sql`**: Estrategia de partición de tablas por rangos.
- **`prepare.sql`, `execute.sql`, `deallocate.sql`**: Uso de sentencias preparadas para la ejecución eficiente y parametrizada de consultas.