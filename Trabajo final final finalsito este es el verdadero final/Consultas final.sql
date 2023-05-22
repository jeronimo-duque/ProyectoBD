#consulta 1
SELECT * FROM empleado LIMIT 10;

#consulta 2
SELECT * FROM cursocursado limit 10;

#consulta 3
SELECT cc.cursocursado_nombre, COUNT(e.Empleado_ID) AS total_empleados
FROM CursoCursado cc
JOIN empleado e ON cc.Cursocursado_ID = e.cursocursado_id
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'PAN'
GROUP BY cc.CursoCursado_ID
ORDER BY total_empleados DESC
LIMIT 5;

#consulta 4
SELECT cc.cursocursado_nombre, COUNT(e.Empleado_ID) AS total_empleados
FROM CursoCursado cc
JOIN empleado e ON cc.Cursocursado_ID = e.cursocursado_id
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'CRI'
GROUP BY cc.CursoCursado_ID
ORDER BY total_empleados DESC
LIMIT 5;

#consulta 5
SELECT c.Curso_Nombre, COUNT(e.Empleado_ID) AS total_empleados
FROM cursos c
JOIN empleados e ON c.Curso_ID = e.Curso_ID
JOIN sedes s ON e.Sede_ID = s.Sede_ID
WHERE s.Pais = 'Colombia' AND c.Modalidad = 'Virtual'
GROUP BY c.Curso_ID
ORDER BY total_empleados DESC
LIMIT 10;

#consulta 6
SELECT *
FROM cursocursado
WHERE Pais_ID = 'COL' AND CursoCursado_EstadoProgreso = 'Aprobado (Virtual)'
LIMIT 10;

#consulta 7
SELECT e.*
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
WHERE cc.CursoCursado_Calificacion = "100"
ORDER BY cc.CursoCursado_Calificacion DESC
LIMIT 10;

#segunda consulta

#consulta 1
SELECT COUNT(*) AS cantidad_cursos
FROM curso
WHERE Curso_Idioma = 'Ingl‚s';

#consulta 2
SELECT COUNT(*) AS cantidad_cursos
FROM curso
WHERE Curso_Idioma = 'espanol';

#consulta 3
SELECT COUNT(*) AS cantidad_cursos
FROM curso
WHERE Curso_Idioma = 'holandes';

#consulta 4
SELECT COUNT(*) AS cantidad_cursos
FROM curso
WHERE Curso_Idioma = 'frances';

#consulta 5
SELECT COUNT(*) AS cantidad_cursos_aprobados
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
WHERE cc.CursoCursado_EstadoProgreso = 'Aprobado (Pres)' or cc.CursoCursado_EstadoProgreso = 'Aprobado (Virtual)' ;

#consulta 6
SELECT COUNT(*) AS cantidad_cursos_aprobados
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
WHERE cc.CursoCursado_EstadoProgreso = 'No Aprobado (Pres)' or cc.CursoCursado_EstadoProgreso = 'No Aprobado (Virtual)' ;

#consulta 7
SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'COL';

#consulta 8
SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'CRI';


#consulta 9
SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'HON';


#consulta 10
SELECT AVG(cc.CursoCursado_Calificacion) AS promedio_notas
FROM empleado e
JOIN cursocursado cc ON e.Empleado_ID = cc.Empleado_ID
JOIN pais p ON e.estado_ID = p.Pais_ID
WHERE p.Pais_ID = 'PAN';

