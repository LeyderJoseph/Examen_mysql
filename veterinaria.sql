CREATE DATABASE clinica_veterinaria;
USE clinica_veterinaria;

/* TABLA PROPIETARIO */
CREATE TABLE propietario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(50),
    direccion VARCHAR(60)
);

/* TABLA VETERINARIO */
CREATE TABLE veterinario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    especialidad VARCHAR(45),
    telefono VARCHAR(20)
);

/* TABLA TRATAMIENTO */
CREATE TABLE tratamiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(55),
    precio_base DOUBLE NOT NULL
);

/* TABLA MASCOTA */
CREATE TABLE mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    especie VARCHAR(45) NOT NULL,
    raza VARCHAR(45),
    fecha_nacimiento DATE,
    propietario_fk INT NOT NULL,
    FOREIGN KEY (propietario_fk) REFERENCES propietario(id)
);

/* TABLA CONSULTA */
CREATE TABLE consulta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_fk INT NOT NULL,
    veterinario_fk INT NOT NULL,
    fecha DATETIME NOT NULL,
    motivo VARCHAR(200) NOT NULL,
    valor_consulta DOUBLE NOT NULL,
    FOREIGN KEY (mascota_fk) REFERENCES mascota(id),
    FOREIGN KEY (veterinario_fk) REFERENCES veterinario(id)
);

/* TABLA DETALLE_CONSULTA */
CREATE TABLE detalle_consulta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    consulta_fk INT NOT NULL,
    tratamiento_fk INT NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    costo DOUBLE NOT NULL,
    FOREIGN KEY (consulta_fk) REFERENCES consulta(id),
    FOREIGN KEY (tratamiento_fk) REFERENCES tratamiento(id)
);