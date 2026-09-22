CREATE DATABASE comercio;

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE pedidos (
	id_pedidos INT PRIMARY KEY AUTO_INCREMENT,
    fechas DATE,
    id_cliente INT,
    
    FOREIGN KEY(id_cliente)
    REFERENCES clientes(id_cliente)
 );

-- Cargamos los valores por interfaz grafica

--CONSULTA
SELECT p.id_pedidos, p.fechas, c.nombre, c.apellido
FROM pedidos p
INNER JOIN clientes c
ON p.id_cliente = c.id_cliente

