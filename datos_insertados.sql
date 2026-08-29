USE `clinica_veterinaria`;

/* DATOS PARA PROPIETARIO */
INSERT INTO `propietario` (`id`, `nombre`, `apellido`, `telefono`, `email`, `direccion`) VALUES
(1, 'Carlos', 'Gómez', '3001234567', 'carlos.gomez@email.com', 'Calle 10 # 15-20'),
(2, 'María', 'Rodríguez', '3109876543', 'maria.rodriguez@email.com', 'Carrera 45 # 22-10'),
(3, 'Juan', 'Pérez', '3155554433', 'juan.perez@email.com', 'Avenida 6 # 8-30'),
(4, 'Ana', 'Martínez', '3201112233', 'ana.martinez@email.com', 'Calle 50 # 11-05'),
(5, 'Luis', 'Sánchez', '3019998877', 'luis.sanchez@email.com', 'Carrera 12 # 4-18');

/* DATOS PARA VETERINARIO */
INSERT INTO `veterinario` (`id`, `nombre`, `apellido`, `especialidad`, `telefono`) VALUES
(1, 'Laura', 'Morales', 'General', '3112223344'),
(2, 'Andrés', 'Castro', 'Cirugía', '3123334455'),
(3, 'Diana', 'Mendoza', 'General', '3134445566'),
(4, 'Jorge', 'Herrera', 'Dermatología', '3145556677');

/* DATOS PARA TRATAMIENTO */
INSERT INTO `tratamiento` (`id`, `nombre`, `descripcion`, `precio_base`) VALUES
(1, 'Vacunación Pentavalente', 'Vacuna múltiple para perros', 80000),
(2, 'Desparasitación Interna', 'Dosis antiparasitaria según peso', 35000),
(3, 'Limpieza Dental', 'Profilaxis con ultrasonido', 150000),
(4, 'Profilaxis Quirúrgica', 'Antiséptico pre-quirúrgico', 90000),
(5, 'Examen de Sangre General', 'Hemograma completo', 65000);

/* DATOS PARA MASCOTA */
INSERT INTO `mascota` (`id`, `nombre`, `especie`, `raza`, `fecha_nacimiento`, `propietario_fk`) VALUES
(1, 'Firulais', 'Perro', 'Labrador', '2020-05-10', 1),
(2, 'Michi', 'Gato', 'Siames', '2021-02-14', 1),
(3, 'Rocky', 'Perro', 'Bulldog', '2019-11-20', 2),
(4, 'Pelusa', 'Gato', 'Persa', '2022-08-01', 3),
(5, 'Toby', 'Perro', 'Poodle', '2018-03-15', 4),
(6, 'Bruno', 'Perro', 'Beagle', '2023-01-10', 5); 

/* DATOS PARA CONSULTA */
INSERT INTO `consulta` (`id`, `mascota_fk`, `veterinario_fk`, `fecha`, `motivo`, `valor_consulta`) VALUES
(1, 1, 1, '2026-01-10 09:00:00', 'Chequeo general y vacunas', 1200000),
(2, 2, 1, '2026-01-15 10:30:00', 'Revisión periódica', 1000000),
(3, 1, 1, '2026-02-01 11:00:00', 'Seguimiento de vacuna', 1000000),
(4, 3, 2, '2026-02-10 14:00:00', 'Procedimiento quirúrgico', 2500000),
(5, 4, 3, '2026-02-12 15:30:00', 'Consulta dermatológica', 900000),
(6, 5, 2, '2026-02-20 16:00:00', 'Evaluación prévia a cirugía', 1800000),
(7, 3, 2, '2026-02-25 10:00:00', 'Revisión post-quirúrgica', 1200000);

/* DATOS PARA DETALLE_CONSULTA */
INSERT INTO `detalle_consulta` (`id`, `consulta_fk`, `tratamiento_fk`, `cantidad`, `costo`) VALUES
(1, 1, 1, 1, 80000),
(2, 1, 2, 1, 35000),
(3, 2, 2, 1, 35000),
(4, 3, 1, 1, 80000),
(5, 4, 4, 1, 90000),
(6, 4, 3, 1, 150000),
(7, 5, 5, 1, 65000),
(8, 6, 5, 1, 65000),
(9, 7, 2, 1, 35000);