-- 1. Obtener todos los productos con un precio igual o superior a 10.0000 y la cantidad minima de pedido sea igual a 5

SELECT product_name, list_price, minimum_reorder_quantity
FROM products
WHERE list_price >= 10.0000 AND minimum_reorder_quantity = 5;

-- 2.Obtener todos los empleados que trabejen en la ciudad de "Seattle" o que su puesto sea "Sales Representative"

SELECT last_name, first_name, city,job_title
FROM employees
WHERE city = "Seattle" OR job_title = "Sales Representative";

-- 4.Obtener todos los productos que el precio no sea de 23.2500
SELECT product_name, list_price
FROM products
WHERE NOT list_price >= 23.2500;


--  Ejercicios de BETWEEN Y LIKE (NORTHWIND2)

-- 1.  Seleccionar todos los productos cuyos precios esten entre 10 y 20 y ordenarlos por precio de forma descendente.
SELECT ProductName ,Price
FROM products
WHERE Price BETWEEN 10 AND 20
ORDER BY Price DESC


-- 2. Seleccionar todos los empleados cuyo apellido empiecen con la letra D

SELECT LastName 
FROM employees
WHERE LastName LIKE "D%";

-- 3. Seleccionar todos los empleados nacidos entre la fecha 1 de enero de 1960 y 31 de diciembre de 1965
SELECT FirstName , BirthDate
FROM employees
WHERE BirthDate BETWEEN "1960-01-01"AND "1965-12-31";


-- 4 - Seleccionar todos los clientes cuyo nombre de contacto contenga la letra b
