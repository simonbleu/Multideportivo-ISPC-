
-- 1. Una sola tabla (mostrando todos los datos):

SELECT * FROM participante; -- Selecciona todos los datos de la tabla participante

-- 2. Una sola tabla (mostrando algunas columnas):

SELECT nombre, edad, genero FROM participante; -- Selecciona solo algunas columnas de la tabla participantes

-- 3. Una sola tabla con WHERE:

SELECT * FROM participante WHERE edad > 35; -- Selecciona todos los participantes mayores 35 años

-- 4. Una sola tabla con WHERE utilizando BETWEEN:

SELECT * FROM evento WHERE id_evento BETWEEN 2 AND 4; -- Selecciona todos los eventos con PK entre 2 y 4

-- 5. Una sola tabla con WHERE utilizando LIMIT:

SELECT * FROM disciplina_deportiva LIMIT 2; -- Selecciona los primeros 2 deportes

-- 6. Más de 1 tabla con INNER JOIN:

SELECT P.*, D.nombre_disciplina -- Combina datos de las tablas participante y nombre de disciplina_deportiva basado en la relación de id
FROM participante P
INNER JOIN disciplina_deportiva D ON P.id_Participante = D.id_disciplina;

-- 7. Más de 1 tabla con INNER JOIN y con filtros:

SELECT P.*, D.nombre_disciplina -- mismas tablas, pero filtra por edades superiores a los 40
FROM participante P
INNER JOIN disciplina_deportiva D ON P.id_Participante = D.id_disciplina
WHERE P.edad > 40;


-- Opcionales:


-- 8. Una sola tabla con WHERE con operador lógico:

SELECT * FROM participante WHERE genero = "mujer" AND edad < 50; -- Selecciona todas las participantes mujeres menores a 50 años

-- 9. Una sola tabla con WHERE con operador de comparación:

SELECT * FROM disciplina_deportiva WHERE id_disciplina <= 3; -- Selecciona todos los deportes con id igual o menor a 3


-- 10. Una sola tabla con GROUP BY usando alguna función agregada:

SELECT genero, MIN(edad) AS Mas_Joven -- Agrupa participantes porgenero y muestra al mas joven de cada grupo
FROM participante
GROUP BY genero;

-- 11. Más de 1 tabla sin JOIN (solo FROM):

SELECT P.*, D.* -- Combina deportes y participantes en una relacion basada en ID
FROM participante P, disciplina_deportiva D
WHERE P.id_participante = D.id_disciplina;


















