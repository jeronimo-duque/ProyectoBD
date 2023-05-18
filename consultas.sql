use bdproyecto;

#consulta 1
SELECT * FROM empleado LIMIT 10;

#consulta 2
SELECT * FROM curso LIMIT 10;

#consulta 3
SELECT c.Curso_Titulo, COUNT(e.Empleado_ID) AS total_empleados
FROM curso c
JOIN empleado e ON c.Curso_ID = e.Curso_ID
JOIN sede s ON e.sede_id = s.sede_id
WHERE A.Ciudad_Nombre = 'Panamá'
GROUP BY c.Curso_ID
ORDER BY total_empleados DESC
LIMIT 5;

#consulta 4
SELECT c.Curso_Titulo, COUNT(e.Empleado_ID) AS total_empleados
FROM curso c
JOIN empleado e ON c.Curso_ID = e.Curso_ID
JOIN sede s ON e.sede_id = s.sede_id
WHERE s.Ciudad_Nombre = 'Costa Rica'
GROUP BY c.Curso_ID
ORDER BY total_empleados DESC
LIMIT 5;

#CONSULTA 5
SELECT c.Curso_Titulo, COUNT(e.Empleado_ID) AS total_empleados
FROM curso c
JOIN empleado e ON c.Curso_ID = e.Curso_ID
JOIN sede s ON e.sede_id = s.sede_id
WHERE s.Ciudad_Nombre = 'Colombia' AND c.Modalidad = 'Virtual'
GROUP BY c.Curso_ID
ORDER BY total_empleados DESC
LIMIT 10;

#CONSULTA 6
SELECT c.Curso_Titulo, COUNT(e.Empleado_ID) AS total_empleados
FROM curso c
JOIN empleado e ON c.Curso_ID = e.Curso_ID
JOIN sede s ON e.sede_id = s.sede_id
WHERE s.Ciudad_Nombre = 'Colombia' AND c.Modalidad = 'Presencial'
GROUP BY c.Curso_ID
ORDER BY total_empleados DESC
LIMIT 10;

#CONSULTA 7
SELECT *
FROM empleados
ORDER BY Calificacion DESC
LIMIT 10;


#Consultas segunda parte

#primera
SELECT COUNT(*) AS Cantidad
FROM curso
WHERE Curso_Idioma = 'Ingl‚s';

#segunda
SELECT COUNT(*) AS Cantidad
FROM curso
WHERE Curso_Idioma = 'español';

#tercera
SELECT COUNT(*) AS Cantidad
FROM curso
WHERE Curso_Idioma = 'holandés';

#cuarta
SELECT COUNT(*) AS Cantidad
FROM curso
WHERE Curso_Idioma = 'francés';

#quinta
SELECT COUNT(*) AS Cantidad
FROM cursos
WHERE Aprobado = 'Sí';

#sexta
SELECT COUNT(*) AS Cantidad
FROM cursos
WHERE Aprobado = 'No';

#septima
SELECT AVG(Nota) AS Promedio
FROM empleados
WHERE País = 'Colombia';

#octaba
SELECT AVG(Nota) AS Promedio
FROM empleados
WHERE País = 'Costa Rica';

#novena 
SELECT AVG(Nota) AS Promedio
FROM empleados
WHERE País = 'Honduras';

#decima
SELECT AVG(Nota) AS Promedio
FROM empleados
WHERE País = 'Panamá';


