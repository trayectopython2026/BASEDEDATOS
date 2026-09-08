-- Operador IN (abreviacion del operador OR)
-- OR
SELECT * 
FROM products
WHERE SupplierID = 1
OR SupplierID = 4
OR SupplierID = 5
OR SupplierID = 6;

-- IN
SELECT * 
FROM products
WHERE SupplierID IN (1,4,5,6)

-- Funciones de Agregacion o agrupacion 
-- (son funciones que solo funcionan en la clausula SELECT)

-- COUNT

SELECT COUNT(EmployeeID) AS cantidad_empleados
FROM employees;

-- SUM 

SELECT SUM(Price) AS total_precio
from products;

-- AVG

SELECT AVG(Price) AS promedio
FROM products;

-- ROUND
SELECT ROUND(AVG(Price),2) AS promedio
FROM products;


-- MAX

SELECT MAX(Price) AS PrecioMaximo
FROM products;

-- MIN

SELECT MIN(Price) AS PrecioMinimo
FROM products;

-- BD SAKILA

-- 1. Cuantos actores hay ?
SELECT COUNT(*) AS cantidad_actores
FROM actor

-- 2. Cuantos countries hay que empiezan con la letra a ?
SELECT COUNT(country) AS paises
FROM country
WHERE country LIKE "a%";

-- 3. Cual es el promedio de duracion  de peliculas con el rating PG
SELECT ROUND(AVG(length),2) AS promedio, rating
FROM film
WHERE rating = "PG"

-- GROUP BY Y HAVING

-- GROUP BY

SELECT SupplierID, AVG(Price) AS promedio
FROM products
GROUP BY SupplierID


-- Sacar el promedio de precios, pero agruparlos por categoria y redondear el precio con 2 decimales
-- HAVING

SELECT CategoryID, ROUND(AVG(Price),2) AS promedio
FROM products
WHERE CategoryID = 3
GROUP BY CategoryID
HAVING promedio > 25
ORDER BY promedio ASC
LIMIT 3;

-- RESUMEN

-- 1 - SELECT 
-- 2 - FROM 
-- 3 - WHERE
-- 4 - GROUP BY
-- 5 - HAVING
-- 6 - ORDER BY
-- 7 - LIMIT 

