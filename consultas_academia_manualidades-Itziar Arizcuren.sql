-- Consulta 1: Listado de profesores con su departamento
-- Utiliza 2 tablas (profesor, departamento), JOIN y ORDER BY.
SELECT 
    p.nombre,
    p.apellidos,
    d.nombre AS departamento
FROM profesor p
JOIN departamento d ON p.id_departamento = d.id
ORDER BY d.nombre, p.apellidos;

-- Consulta 2: Cursos y profesor que los imparte
-- Utiliza 2 tablas (curso, profesor), JOIN y ORDER BY.
SELECT 
    c.nombre AS curso,
    c.nivel,
    p.nombre AS profesor,
    p.apellidos
FROM curso c
JOIN profesor p ON c.id_profesor = p.id
ORDER BY c.nombre;

-- Consulta 3: Alumnos y cursos en los que están matriculados
-- Utiliza 3 tablas (alumno, matricula, curso), relación N:M y ORDER BY.
SELECT
    a.nombre,
    a.apellidos,
    c.nombre AS curso
FROM alumno a
JOIN matricula m ON a.id = m.id_alumno
JOIN curso c ON m.id_curso = c.id
ORDER BY a.apellidos;

-- Consulta 4: Número de alumnos matriculados en cada curso
-- Utiliza 2 tablas (curso, matricula), LEFT JOIN, función agregada COUNT y ORDER BY.
SELECT
    c.nombre AS curso,
    COUNT(m.id_alumno) AS total_alumnos
FROM curso c
LEFT JOIN matricula m ON c.id = m.id_curso
GROUP BY c.nombre
ORDER BY total_alumnos DESC;

-- Consulta 5: Número de profesores por departamento
-- Utiliza 2 tablas (departamento, profesor), función agregada COUNT, GROUP BY y ORDER BY.
SELECT
    d.nombre AS departamento,
    COUNT(p.id) AS total_profesores
FROM departamento d
LEFT JOIN profesor p ON d.id = p.id_departamento
GROUP BY d.nombre
ORDER BY total_profesores DESC;

-- Consulta 6: Alumnos matriculados en más de un curso
-- Utiliza 2 tablas (alumno, matricula), subconsulta con GROUP BY, HAVING y función COUNT.
SELECT
    nombre,
    apellidos
FROM alumno
WHERE id IN (
    SELECT id_alumno
    FROM matricula
    GROUP BY id_alumno
    HAVING COUNT(id_curso) > 1
)
ORDER BY apellidos;

-- Consulta 7: Cursos impartidos por un profesor concreto
-- Utiliza 2 tablas (curso, profesor) mediante subconsulta.
SELECT
    nombre,
    nivel
FROM curso
WHERE id_profesor = (
    SELECT id
    FROM profesor
    WHERE apellidos = 'García'
    LIMIT 1
);

-- Consulta 8: Alumnos que no están matriculados en ningún curso
-- Utiliza 2 tablas (alumno, matricula), LEFT OUTER JOIN y ORDER BY.
SELECT
    a.nombre,
    a.apellidos
FROM alumno a
LEFT JOIN matricula m ON a.id = m.id_alumno
WHERE m.id_alumno IS NULL
ORDER BY a.apellidos;

-- Consulta 9: Cursos con el profesor que los imparte y su departamento
-- Utiliza 3 tablas (curso, profesor, departamento), JOIN encadenados y ORDER BY.
SELECT
    c.nombre AS curso,
    p.nombre AS profesor,
    d.nombre AS departamento
FROM curso c
JOIN profesor p ON c.id_profesor = p.id
JOIN departamento d ON p.id_departamento = d.id
ORDER BY d.nombre, c.nombre;

-- Consulta 10: Profesores y su supervisor
-- Utiliza 1 tabla (profesor) en una relación reflexiva mediante LEFT JOIN.
SELECT
    p.nombre AS profesor,
    p.apellidos AS apellidos_profesor,
    s.nombre AS supervisor,
    s.apellidos AS apellidos_supervisor
FROM profesor p
LEFT JOIN profesor s ON p.id_supervisor = s.id
ORDER BY s.apellidos, p.apellidos;

-- Consulta 11: Importe total generado por cada curso
-- Utiliza 2 tablas (curso, matricula), función agregada SUM, GROUP BY y ORDER BY.
SELECT
    c.nombre AS curso,
    SUM(m.importe_total) AS total_ingresos
FROM curso c
JOIN matricula m ON c.id = m.id_curso
GROUP BY c.nombre
ORDER BY total_ingresos DESC;

-- Consulta 12: Alumnos mayores de edad
-- Utiliza 1 tabla (alumno), funciones de fecha TIMESTAMPDIFF y CURDATE, y ORDER BY. 
SELECT
    nombre,
    apellidos,
    TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) AS edad
FROM alumno
WHERE TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) >= 18
ORDER BY edad DESC;

-- Consulta 13: Cursos activos con su profesor y departamento
-- Utiliza 3 tablas (curso, profesor, departamento), JOIN encadenados y ORDER BY.
SELECT
    c.nombre AS curso,
    p.nombre AS profesor,
    d.nombre AS departamento
FROM curso c
JOIN profesor p ON c.id_profesor = p.id
JOIN departamento d ON p.id_departamento = d.id
WHERE c.activo = TRUE
ORDER BY d.nombre, c.nombre;

-- Consulta 14: Alumnos con matrícula pagada
-- Utiliza 2 tablas (alumno, matricula) mediante subconsulta y campo booleano.
SELECT
    nombre,
    apellidos
FROM alumno
WHERE id IN (
    SELECT id_alumno
    FROM matricula
    WHERE pagado = TRUE
)
ORDER BY apellidos;

-- Consulta 15: Número de matrículas por estado
-- Utiliza 1 tabla (matricula), función agregada COUNT, GROUP BY y ORDER BY.
SELECT
    estado,
    COUNT(*) AS total_matriculas
FROM matricula
GROUP BY estado
ORDER BY total_matriculas DESC;

-- Consulta 16: Información completa de las matrículas
-- Utiliza 5 tablas (matricula, alumno, curso, profesor, departamento), JOIN encadenados y ORDER BY.
SELECT
    a.nombre AS alumno,
    a.apellidos,
    c.nombre AS curso,
    p.nombre AS profesor,
    d.nombre AS departamento
FROM matricula m
JOIN alumno a ON m.id_alumno = a.id
JOIN curso c ON m.id_curso = c.id
JOIN profesor p ON c.id_profesor = p.id
JOIN departamento d ON p.id_departamento = d.id
ORDER BY d.nombre, c.nombre, a.apellidos;


-- Consulta 17: Cursos que tienen alumnos matriculados
-- Utiliza 4 tablas (curso, profesor, departamento, matricula) mediante subconsulta y ORDER BY.
SELECT
    c.nombre AS curso,
    p.nombre AS profesor,
    d.nombre AS departamento
FROM curso c
JOIN profesor p ON c.id_profesor = p.id
JOIN departamento d ON p.id_departamento = d.id
WHERE c.id IN (
    SELECT DISTINCT id_curso
    FROM matricula
)
ORDER BY c.nombre;

-- Consulta 18: Alumnos cuya matrícula supera el importe medio
-- Utiliza 2 tablas (alumno, matricula), subconsulta y función agregada AVG.
SELECT
    a.nombre,
    a.apellidos
FROM alumno a
JOIN matricula m ON a.id = m.id_alumno
WHERE m.importe_total > (
    SELECT AVG(importe_total)
    FROM matricula
)
ORDER BY a.apellidos;

