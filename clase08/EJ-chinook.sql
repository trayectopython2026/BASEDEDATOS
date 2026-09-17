Ejercicio 1 – Cantidad total de canciones
-- Mostrar la cantidad total de canciones que existen
-- en la tabla Track.

SELECT COUNT(*) AS cantidadCanciones
FROM track;


Ejercicio 2 – Precio promedio de las canciones
-- Calcular el precio promedio de todas las canciones.
-- Mostrar el resultado redondeado a 2 decimales.

SELECT ROUND(AVG(UnitPrice),2) AS precioPromedio
FROM track;


Ejercicio 3 – Canción más barata
-- Mostrar cuál es el precio mínimo de una canción
-- dentro de la tabla Track.


SELECT MIN(UnitPrice) AS precioMinimo 
FROM track;


Ejercicio 4 – Canción más cara
-- Mostrar cuál es el precio máximo de una canción
-- dentro de la tabla Track.

SELECT MAX(UnitPrice) AS precioMinimo 
FROM track;


Ejercicio 5 – Cantidad de clientes
-- Mostrar cuántos clientes existen registrados
-- en la base de datos Chinook.
SELECT COUNT(*) AS cantidadClientes
FROM customer;

Ejercicio 6 – Total facturado
-- Calcular cuánto dinero se facturó en total.
-- Para realizarlo utilizar la columna Total
-- de la tabla Invoice.
SELECT SUM(Total) AS total_precio
FROM invoice;


Ejercicio 8 – Factura más alta y más baja
-- Mostrar en una misma consulta:
-- 1. El valor de la factura más barata.
-- 2. El valor de la factura más cara.




GROUP BY
--Ejercicio 9 – Cantidad de clientes por país
-- Mostrar cuántos clientes existen en cada país.
-- Agrupar los registros utilizando el campo Country.
SELECT Country, COUNT(*) AS cantidadClientes
FROM customer
GROUP BY Country
ORDER BY cantidadClientes ASC;


Ejercicio 10 – Cantidad de clientes por ciudad
-- Mostrar la cantidad de clientes existentes
-- en cada ciudad.

SELECT City, COUNT(City) AS clientesxciudad
FROM customer
GROUP BY City
ORDER BY clientesxciudad;



Ejercicio 11 – Cantidad de facturas por país
-- Mostrar cuántas facturas fueron realizadas
-- en cada país.
--
-- Utilizar BillingCountry de la tabla Invoice.

SELECT BillingCountry, COUNT(InvoiceId) AS cantidad_facturas
FROM invoice
GROUP BY BillingCountry;



Ejercicio 12 – Total facturado por país
-- Mostrar cuánto dinero se facturó en cada país.
--
-- Agrupar utilizando BillingCountry
-- y sumar el campo Total.
--
-- Ordenar desde el país que más facturó
-- hasta el que menos facturó.

SELECT InvoiceId, BillingCountry , SUM(Total) AS total_pais , COUNT(BillingCountry) AS factura_por_pais 
FROM `invoice` 
GROUP BY BillingCountry
ORDER BY total_pais DESC;




Ejercicio 13 – Promedio de facturación por país
-- Mostrar el valor promedio de las facturas
-- de cada país.
--
-- Redondear el promedio a 2 decimales.

SELECT BillingCountry, ROUND(AVG(Total), 2) AS promedioFacturacion
FROM `invoice` 
GROUP BY BillingCountry
ORDER BY promedioFacturacion ASC;


Ejercicio 14 – Cantidad de canciones por género
-- Mostrar cuántas canciones pertenecen
-- a cada género.
--
-- En este ejercicio todavía no necesitamos JOIN.
-- Podemos agrupar utilizando GenreId.

SELECT GenreId, COUNT(*) AS canciones 
FROM track
GROUP BY GenreId




Ejercicio 15 – Precio promedio por género
-- Mostrar el precio promedio de las canciones
-- agrupadas por género.
--
-- Mostrar GenreId y el promedio de UnitPrice.
-- Redondear el promedio a 2 decimales.

SELECT GenreId, ROUND(AVG(UnitPrice),2) AS precio_promedio
FROM track
GROUP BY GenreId;


HAVING


Ejercicio 16 – Países con más de 5 clientes
-- Mostrar solamente aquellos países
-- que tengan más de 5 clientes registrados.
--
-- Recordar:
-- WHERE filtra registros.
-- HAVING filtra grupos.

SELECT Country, COUNT(*) AS total_clientes
FROM customer
GROUP BY Country
HAVING total_clientes >5;



Ejercicio 17 – Países con más de 10 facturas
-- Mostrar los países que tengan
-- más de 10 facturas realizadas.
--
-- Ordenar desde el país con mayor cantidad
-- de facturas hasta el menor.
SELECT BillingCountry, COUNT(*) AS paisesFacturas 
from invoice
GROUP BY BillingCountry 
HAVING paisesFacturas > 10 
ORDER BY paisesFacturas DESC




Ejercicio 18 – Países que facturaron más de $40
-- Mostrar únicamente los países cuya
-- facturación total sea superior a 40.
--
-- Agrupar por país y utilizar SUM(Total).



Ejercicio 19 – Géneros con más de 100 canciones
-- Mostrar los GenreId que tengan
-- más de 100 canciones.
--
-- Ordenar de mayor a menor según
-- la cantidad de canciones.




Ejercicio 20 – Países con promedio de factura mayor a $5
-- Mostrar los países donde el valor promedio
-- de las facturas sea superior a 5.
--
-- El promedio debe mostrarse redondeado
-- a dos decimales.




Ejercicio 21 – Clientes por país con filtros
-- Mostrar la cantidad de clientes por país,
-- pero solamente mostrar aquellos países
-- que tengan 3 o más clientes.
--
-- Ordenar de mayor a menor.




Ejercicio 22 – Facturación por ciudad
-- Mostrar cuánto dinero se facturó
-- en cada ciudad.
--
-- Mostrar únicamente las ciudades
-- cuya facturación total sea mayor a 20.
--
-- Ordenar desde la ciudad que más facturó.




Ejercicio 24 – Duración promedio de canciones por género
-- Mostrar la duración promedio de las canciones
-- según GenreId.
--
-- La duración almacenada en Track está expresada
-- en milisegundos.
--
-- Mostrar el promedio redondeado.



Ejercicio 25 – Desafío final
-- Mostrar la facturación total de cada país.
--
-- Condiciones:
--
-- 1. Agrupar las facturas por país.
-- 2. Mostrar solamente países que tengan
--    más de 5 facturas.
-- 3. Mostrar solamente aquellos cuya
--    facturación total sea superior a 30.
-- 4. Redondear el total a dos decimales.
-- 5. Ordenar desde el país que más facturó
--    hasta el que menos facturó.





