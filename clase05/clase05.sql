-- OPERADORES LOGICOS

-- SQL : AND , OR , NOT

-- AND (funciona como un entre, y se tienen que cumplir las dos condiciones)

SELECT CustomerID, CustomerName,ContactName, City
FROM customers
WHERE CustomerID >= 15 AND CustomerID <= 20 
AND City = "London";

-- OR (se tiene que cumplir una condicion)

SELECT EmployeeID, FirstName,LastName
FROM employees
WHERE FirstName = "Steven" OR FirstName = "Anne";

-- NOT (negacion)

SELECT ProductName, Price
FROM products
WHERE NOT price = 14
ORDER BY Price ASC;

-- Northwind 1

-- 1. Obtener todos los productos con un precio igual o superior a 10.0000 y la cantidad minima de pedido sea igual a 5

-- 2.Obtener todos los empleados que trabejen en la ciudad de "Seattle" o que su puesto sea "Sales Representative"

-- 3.Obtener todos los clientes que no esten en New York 
SELECT first_name, city
FROM customers 
WHERE NOT city = "New York";


-- != : NOT

SELECT first_name, city
FROM customers 
WHERE city != "New York";

-- 4.Obtener todos los productos que el precio no sea de 23.2500

-- LIMIT 

SELECT id, product_name, list_price 
FROM products
LIMIT 5;

-- Investigar y resolver el siguiente problema en la BD (northwind2)
-- Viene un cliente al local , y me indica que no le gusta la categoria Meat/Poultry(carne de ave), y que con el proveedor Mayumi's tuvo problemas, el precio que puede pagar por el producto es menor a 30 y me pide que no quiere los mismos productos siempre, y por ultimo solo quiere 3 productos, realice la consulta mysql para ayudar al cliente a encontrar esos 3 productos aleatorios.

SELECT ProductName, SupplierID, CategoryID, Price
FROM products
WHERE NOT CategoryID = 6 
AND NOT SupplierID = 6
AND Price < 30
ORDER BY rand()
LIMIT 3;

-- Operador BETWEEN (entre)

SELECT * 
FROM products 
WHERE Price > 20 AND Price < 40
ORDER BY Price ASC;

SELECT * FROM products 
WHERE Price BETWEEN 20 AND 40 
ORDER BY Price ASC;

-- NOT  BETWEEN 

SELECT * FROM products 
WHERE Price NOT BETWEEN 20 AND 40 
ORDER BY Price ASC;

-- FECHAS

SELECT * 
FROM employees
WHERE BirthDate BETWEEN "1960-01-01" AND "1970-01-01"
ORDER BY BirthDate ASC;

-- operador LIKE (busquedas)
-- tiene un comodin es el %
-- que empiece con una letra o palabra

SELECT FirstName
FROM employees
WHERE FirstName LIKE "A%";

-- que termine con una letra o palabra

SELECT FirstName
FROM employees
WHERE FirstName LIKE "%A";

-- que contenga alguna letra o palabra

SELECT FirstName
FROM employees
WHERE FirstName LIKE "%b%";


--  Ejercicios de BETWEEN Y LIKE (NORTHWIND2)

-- 1.  Seleccionar todos los productos cuyos precios esten entre 10 y 20 y ordenarlos por precio de forma descendente.

-- 2. Seleccionar todos los empleados cuyo apellido empiecen con la letra D

-- 3. Seleccionar todos los empleados nacidos entre la fecha 1 de enero de 1960 y 31 de diciembre de 1965

-- 4 - Seleccionar todos los clientes cuyo nombre de contacto contenga la letra b










