-- Eliminar un registro
DELETE FROM estudiantes
WHERE id = 4;

-- Actualizar un registro
UPDATE estudiantes
SET nombre = "Carlos"
WHERE id = 8

-- devolver todos los productos
SELECT * FROM products;

-- devolver todos los productos con las columnas id y name
SELECT id,product_name FROM products;

-- WHERE = CLAUSULA o condicion , devolver el producto con id = 14
SELECT id,product_name FROM products
WHERE id = 14;

-- AS = Alias , alias temporal para columnas
SELECT id AS identificador,product_name AS nombre_producto
FROM products 
WHERE id = 14;

-- devolver todos los productos mayor a 10.0000
SELECT id AS identificador,product_name AS nombre_producto, list_price AS precio
FROM products 
WHERE list_price >= 10.0000;

-- ORDER BY = CLAUSULA  (ORDENAR)

-- Ordenar Productos
SELECT product_name	 AS nombre , list_price AS precio
FROM products
ORDER BY list_price ASC;


-- Ordenar productos mayores a 10.0000
SELECT product_name	 AS nombre , list_price AS precio
FROM products
WHERE list_price >= 10.0000
ORDER BY list_price ASC


-- Ordenar de forma alfabetica
SELECT first_name 
FROM employees 
ORDER BY first_name DESC;

--  Random
SELECT first_name 
FROM employees 
ORDER BY rand()

-- BD NORTHWIND
-- ORDER BY

-- 1. Ordenar pedidos por fecha en forma DESC, solo mostrar id y fecha.
-- 2. Ordenar clientes por ciudad de forma ASC, solo mostrar id, nombre y ciudad.
-- 3. Ordenar empleados por ciudad de forma DESC, solo mostrar apellido, nombre y ciudad 



