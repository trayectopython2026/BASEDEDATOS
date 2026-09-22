-- BD : Empleados - Departamentos

--8 - Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión

SELECT salEmp, comisionE,codDepto
FROM empleados
WHERE codDepto = 2000
ORDER BY comisionE ASC;

-- 13.Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado.

select nomEmp AS "Nombre", cargoE AS "Cargo"
from empleados;

-- 16. Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del
-- empleado y nombre, de aquellos empleados que tienen comisión superior a 1.000.000, ordenar el
-- informe por el número del documento de identidad

SELECT salEmp, nomEmp, comisionE, (salEmp + comisionE) AS "salarioTotal", nDIEmp
FROM empleados
WHERE comisionE > 1000000
ORDER BY nDIEmp ASC;

-- 26. Mostrar cada una de las comisiones y el número de empleados que las reciben. Solo si tiene comision.

SELECT comisionE ,COUNT(nomEmp) AS "numEmpleados"
FROM empleados
WHERE comisionE > 0
GROUP BY comisionE
ORDER BY comisionE ASC;