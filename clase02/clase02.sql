-- Soy un comentario 
CREATE DATABASE empresa; 

-- Creamos una tabla (plural,no ñ, no simbolos, no acentos)
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    edad INT NOT NULL,
    cargo VARCHAR(40) NOT NULL
    
);

-- insertar registros o datos a una tabla (usuarios)
INSERT INTO usuarios (nombre,edad,cargo) VALUES 
("Juan",33, "Desarrolador de Software")


-- Insertar otro valores
INSERT INTO usuarios (nombre,edad,cargo) VALUES 
("Ana",20, "Analista de Sistemas"),
("Carlos", 50 , "Jefe"),
("Raul", 24 , "Programador JR.")


-- Consultar los registros de una tabla 
SELECT * FROM usuarios;

-- Consultar los registro de una tabla, con un campo en particular
SELECT nombre, cargo FROM usuarios