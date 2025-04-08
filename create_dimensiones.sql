create database bd_gestion_proyectos_operaciones_bi;
go

CREATE TABLE dim_equipo (
    id INT identity (1,1) PRIMARY KEY,
	equipo_id int not null,
    nombre VARCHAR(100),
    descripcion VARCHAR(300),
    acnt_integrantes INT
);

CREATE TABLE dim_empleado (
    id INT IDENTITY(1,1) PRIMARY KEY,
    empleado_id INT NOT NULL,
    nombres VARCHAR(155),
    numero_documento VARCHAR(20),
    email VARCHAR(155),
    telefono VARCHAR(20),
    cargo VARCHAR(50)
);

CREATE TABLE dim_proyecto (
    id INT IDENTITY(1,1) PRIMARY KEY,
    proyecto_id INT NOT NULL, -- ID original de la tabla OLTP
    nombre VARCHAR(255),
    estado VARCHAR(55)
);

CREATE TABLE dim_cliente (
    id INT IDENTITY(1,1) PRIMARY KEY,
    cliente_id INT NOT NULL, -- ID original de la tabla OLTP
    nombre VARCHAR(100),
    contacto VARCHAR(25),
    empresa VARCHAR(30)
);
CREATE TABLE dim_estado (
    id INT IDENTITY(1,1) PRIMARY KEY,
    estado VARCHAR(55) -- Ej: 'Pendiente', 'Completada', etc.
);

CREATE TABLE dim_fecha (
    id INT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE NOT NULL,
    anio INT,
    mes INT,
    dia INT,
    nombre_mes VARCHAR(15),
    nombre_dia VARCHAR(15),
    semana INT
);
CREATE TABLE hecho_tareas (
    id INT IDENTITY(1,1) PRIMARY KEY,

    dim_empleado_id INT NOT NULL,      
    dim_equipo_id INT NOT NULL,       
    dim_proyecto_id INT NOT NULL,     
    dim_cliente_id INT NOT NULL,       
    dim_estado_id INT NOT NULL,        

    fecha_inicio_id INT NOT NULL,  
    fecha_limite_id INT NOT NULL,  

    duracion_dias INT,         
    dias_retraso INT,               
	porcentaje_avance DECIMAL(5,2) 
);

alter table hecho_tareas
ADD FOREIGN KEY (dim_empleado_id) REFERENCES dim_empleado(id),
    FOREIGN KEY (dim_equipo_id) REFERENCES dim_equipo(id),
    FOREIGN KEY (dim_proyecto_id) REFERENCES dim_proyecto(id),
    FOREIGN KEY (dim_cliente_id) REFERENCES dim_cliente(id),
    FOREIGN KEY (dim_estado_id) REFERENCES dim_estado(id),
    FOREIGN KEY (fecha_inicio_id) REFERENCES dim_fecha(id),
    FOREIGN KEY (fecha_limite_id) REFERENCES dim_fecha(id);
