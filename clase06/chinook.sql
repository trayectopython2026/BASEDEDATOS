-- Ejercicio 1: Operador LIKE (Búsqueda por sufijo)
-- Consigna: Obtener el nombre, apellido y correo de los clientes que utilicen 
-- una cuenta de correo de Gmail.

SELECT FirstName,LastName, Email 
FROM customer 
WHERE Email LIKE "%@gmail.com"


-- Ejercicio 2: Operador BETWEEN con texto/caracteres
-- Consigna: Listar el ID, nombre y apellido de todos los empleados cuyo 
-- apellido comience con las letras entre la 'A' y la 'K'.
SELECT EmployeeId, FirstName, LastName
FROM employee
WHERE LastName BETWEEN 'A' AND 'K';

-- Ejercicio 3: Operadores AND y LIMIT
-- Consigna: Mostrar las 5 primeras pistas (TrackId, Name, Milliseconds) que 
-- pertenezcan al género Rock (GenreId = 1) y superen los 5 minutos (300.000 ms).
-- Ejercicio 3: Operadores AND y LIMIT
-- Consigna: Mostrar las 5 primeras pistas (TrackId, Name, Milliseconds) que 
-- pertenezcan al género Rock (GenreId = 1) y superen los 5 minutos (300.000 ms).

SELECT TrackId, Name ,GenreId, Milliseconds
FROM track
WHERE GenreId = 1 
AND Milliseconds > 300000
LIMIT 5;


-- Ejercicio 4: Operadores OR y LIKE
-- Consigna: Buscar los artistas cuyo nombre comience con 'The ' o contenga 'Feat.'.

SELECT ArtistId, Name
FROM artist
WHERE Name LIKE 'The %'
OR Name Like '%Feat.%'

-- Ejercicio 5: Operador NOT y LIKE
-- Consigna: Obtener los títulos de álbumes que NO contengan la palabra 'Live' ni 
-- 'Best' en su título. Limitar el resultado a los primeros 6 registros.
SELECT AlbumId, Title
FROM album
WHERE Title NOT LIKE '%Live%' AND Title NOT LIKE '%Best%' 
LIMIT 6;

-- Ejercicio 6: Operador BETWEEN numérico
-- Consigna: Obtener todas las facturas (InvoiceId, CustomerId, InvoiceDate, Total) 
-- cuyo monto total esté entre 10.00 y 15.00 inclusive.
SELECT InvoiceId, CustomerId, InvoiceDate, Total
FROM invoice
WHERE Total BETWEEN 10.00 AND 15.00;


-- Ejercicio 7: Operadores AND, OR y Paréntesis
-- Consigna: Seleccionar nombre, apellido, país y soporte asignado de los clientes 
-- que sean de 'Brazil' o 'Canada' Y cuyo SupportRepId sea 3.

-- Ejercicio 7: Operadores AND, OR y Paréntesis
-- Consigna: Seleccionar nombre, apellido, país y soporte asignado de los clientes 
-- que sean de 'Brazil' o 'Canada' Y cuyo SupportRepId sea 3.

SELECT FirstName, LastName, Country, SupportRepId
FROM customer
WHERE (Country = 'Brazil' OR Country= 'Canada')
AND SupportRepId = 3 

-- Ejercicio 8: Operador BETWEEN con Fechas
-- Consigna: Listar las facturas emitidas durante todo el primer trimestre de 2021
-- (del 1 de enero al 31 de marzo de 2021).
SELECT InvoiceId, InvoiceDate 
FROM `invoice` 
WHERE InvoiceDate BETWEEN '2021-01-01' AND '2021-03-31';

-- Ejercicio 9: NOT BETWEEN y AND
-- Consigna: Obtener pistas del género 1 (Rock) cuyo tamaño en Bytes NO esté 
-- entre 4.000.000 y 10.000.000 de bytes (muy livianas o muy pesadas). Limitar a 5.

SELECT Name, GenreId,Bytes
FROM track
WHERE GenreId = 1 AND Bytes NOT BETWEEN 4000000 AND 10000000
LIMIT 5;


-- Ejercicio 10: Combinación de NOT LIKE y AND
-- Consigna: Obtener las pistas donde el compositor esté informado, 
-- que contengan 'Santana' en el compositor pero que el título NO empiece con 'Santana'.

SELECT Name, Composer
FROM `track` 
WHERE Composer LIKE "%Santana%"
AND Name NOT LIKE "Santana%";

-- Ejercicio 11: BETWEEN y OR
-- Consigna: Obtener las facturas donde el total sea muy bajo (entre 0.99 y 2.00) 
-- O muy alto (entre 18.00 y 25.00). Limitar el listado a 6 filas.
SELECT *
FROM invoice
WHERE (Total BETWEEN 0.99 AND 2.00)
OR (Total BETWEEN 18.00 AND 25.00)
LIMIT 6;

-- Ejercicio 12: Desafío Integrador (AND, OR, NOT, LIKE, BETWEEN, LIMIT)
-- Consigna: Seleccionar las primeras 5 pistas de audio (MediaTypeId = 1) cuya duración 
-- esté entre 3 y 4 minutos (180.000 a 240.000 ms), que su nombre contenga 'War' 
-- o 'Love', pero cuyo compositor NO incluya a 'Miles Davis'.