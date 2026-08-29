/* MASCOTAS Y PROPIETARIOS  Mostrar el nombre de cada mascota, su especie y el nombre completo de su propietario. */
SELECT 
    mascota.nombre AS mascota,
    mascota.especie,
    CONCAT(propietario.nombre, ' ', propietario.apellido) AS propietario
FROM mascota 
JOIN propietario  ON mascota.propietario_fk = propietario.id;


/*Veterinarios por especialidad 
Mostrar cada especialidad y la cantidad de veterinarios que pertenecen a ella.  */
SELECT 
    especialidad,
    COUNT(id) AS cantidad_veterinarios
FROM veterinario
GROUP BY especialidad;

/* Propietarios con varias mascotas 
Mostrar los propietarios que tengan más de una mascota registrada. 
Indicar nombre completo y cantidad de mascotas. */
SELECT 
    CONCAT(propietario.nombre, ' ', propietario.apellido) AS propietario,
    COUNT(mascota.id) AS total_mascotas
FROM propietario
JOIN mascota  ON propietario.id = mascota.propietario_fk
GROUP BY propietario.id, propietario.nombre, propietario.apellido
HAVING COUNT(mascota.id) > 1;


/*Mascotas sin consultas 
Mostrar las mascotas que nunca hayan sido atendidas en la clínica. 
Mostrar mascota, especie y propietario. */

SELECT 
    mascota.nombre AS mascota,
    mascota.especie,
    CONCAT(propietario.nombre, ' ', propietario.apellido) AS propietario
FROM mascota 
JOIN propietario ON mascota.propietario_fk = propietario.id
LEFT JOIN consulta  ON mascota.id = consulta.mascota_fk
WHERE consulta.id IS NULL;

/* Mascotas atendidas 
Mostrar cada mascota junto con la cantidad de consultas que ha realizado. 
Incluir también mascotas que nunca hayan tenido consultas. */

SELECT 
    mascota.nombre AS mascota,
    COUNT(consulta.id) AS total_consultas
FROM mascota 
LEFT JOIN consulta  ON mascota.id = consulta.mascota_fk
GROUP BY mascota.id, mascota.nombre;