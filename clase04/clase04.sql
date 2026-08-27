-- CLAUSULA WHERE -> FILTRO
SELECT id, product_name
FROM products
WHERE id = 3

-- 1-Obtener todos los empleados que trabajan en la ciudad de 'Seattle'
SELECT id, last_name,city
FROM employees
WHERE city = "Seattle"

-- 2-Obtener todos los pedidos realizados por el cliente que tengan el tipo de pago 'Credit Card'
SELECT id, customer_id, payment_type, order_date
FROM orders
WHERE payment_type = "Credit Card"

-- 3-Obtener todos los productos donde el precio sea menor a 10.000


-- 4- Obtener al empleado que vive en la direccion '123 4th Avenue'
SELECT id ,last_name, address
FROM employees
WHERE address = "123 4th Avenue"

-- 5- Obener al empleado que tenga el cargo de 'Vice President, Sales'
SELECT first_name, last_name, job_title
FROM employees
WHERE job_title = 'Vice President, Sales';

-- Base de datos Sakila

-- 1- Muestra todos los actores cuyo apellido sea "HACKMAN"

SELECT first_name , last_name
FROM actor
WHERE last_name = "HACKMAN"

-- 2- Muestra todas las películas cuya duración sea superior a 120 minutos.

SELECT film_id, title, length
FROM  film
WHERE length >= 120

-- ORDER BY  : odernar 

SELECT film_id, title, length
FROM  film
WHERE length >= 120
ORDER BY length DESC;

SELECT film_id, title, length
FROM  film
WHERE length >= 120
ORDER BY title DESC;

-- BD NORTHWIND
-- ORDER BY

-- 1. Ordenar pedidos por fecha en forma DESC, solo mostrar id y fecha.
SELECT id, order_date, shipped_date
FROM orders 
ORDER BY order_date DESC

-- 2. Ordenar clientes por ciudad de forma ASC, solo mostrar id, nombre y ciudad.

-- 3. Ordenar empleados por ciudad de forma DESC, solo mostrar apellido, nombre y ciudad 



