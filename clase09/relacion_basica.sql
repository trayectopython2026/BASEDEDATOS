CREATE DATABASE escuela;

CREATE TABLE alumnos (
	id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE libretas (
	id_libreta INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(20),
    id_alumno INT UNIQUE,
    
    FOREIGN KEY(id_alumno)
    REFERENCES alumnos(id_alumno)
    
);

INSERT INTO alumnos(nombre,apellido) VALUES
('Ana', 'Gomez'),
('Juan', 'Perez'),
('Lucia', 'Martinez')

INSERT INTO libretas(numero,id_alumno) VALUES
('LIB-001', 1),
('LIB-002', 2),
('LIB-003', 3)


-- CONSULTA JOIN

SELECT alumnos.nombre, alumnos.apellido, libretas.numero
FROM alumnos
INNER JOIN libretas
ON  alumnos.id_alumno = libretas.id_alumno 

-- ALIAS
SELECT a.nombre, a.apellido, l.numero
FROM alumnos a
INNER JOIN libretas l
ON  a.id_alumno = l.id_alumno 


/* 
    INNER JOIN : Solamente trae coincidencias
    LEFT JOIN : Todo lo de la izquierda , tenga o no coincidencia
    RIGHT JOIN : Todo lo de la derecha , tenga o no coincidencia

 */
-- alumnos sin coincidencia
SELECT a.nombre, a.apellido, l.numero
FROM alumnos a
LEFT JOIN libretas l
ON  a.id_alumno = l.id_alumno 


-- libretas sin coincidencia
SELECT a.nombre, a.apellido, l.numero
FROM alumnos a
RIGHT JOIN libretas l
ON  a.id_alumno = l.id_alumno 




