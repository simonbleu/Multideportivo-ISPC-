
-- Insertar registros en la tabla participante
INSERT INTO participante (nombre, apellido, edad, genero) VALUES
("mario", 'valonza', 19, "hombre"),
('beatriz', 'doroa', 64, "mujer"),
('karina', 'michelin', 31, "mujer");


-- Insertar registros en la tabla evento
INSERT INTO evento (nombre_evento, fecha_inicio, fecha_cierre ) 
VALUES
('los oros', '2024-04-02', '2024-04-03'),
("los bronce", '2023-04-02', '2023-04-03'),
("ajedrecistas", '2023-05-02', "2023-05-03");

-- Insertar registros en la tabla disciplina_deportiva
INSERT INTO disciplina_deportiva (nombre_disciplina, descripcion) 
VALUES
("tenis", 'redes y raquetas'),
("futbol", 'arcos y pelotas'),
("canicas", 'bolitas de vidrio');


- Insertar registros en la tabla encuentro
INSERT INTO encuentro (fecha_encuentro,hora_encuentro, FK_Evento_id) 
VALUES
("2023-08-03", 10:10:10, 4),
("2025-06-03", 10:10:10, 2),
("2025-07-05", 10:10:10, 1);






























