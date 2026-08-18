-- Soy un comentario 
-- Crear una base de datos 
CREATE DATABASE empresa;

-- Crear la tabla usuario 

CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    edad INT NOT NULL,
    puesto VARCHAR(40) NOT NULL 
);
