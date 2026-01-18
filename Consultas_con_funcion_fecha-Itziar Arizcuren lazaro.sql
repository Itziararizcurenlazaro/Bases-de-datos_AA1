-- Consulta 1: Matriculas reciente con fecha y hora actuales
SELECT
    id_alumno,
    id_curso,
    fecha_matricula,
    CURDATE() AS hoy,
    CURTIME() AS hora_actual,
    CURRENT_TIMESTAMP() AS ahora
FROM matricula
ORDER BY fecha_matricula DESC;

-- Consulta 2: Edad de los alumnos y días hasta su cumpleaños
SELECT 
    nombre,
    apellidos,
    TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) AS edad,
    DATE_ADD(fecha_nacimiento, INTERVAL TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) + 1 YEAR) AS proximo_cumple,
    DATE_SUB(fecha_nacimiento, INTERVAL 1 MONTH) AS un_mes_antes,  -- NUEVO: DATE_SUB
    DAY(fecha_nacimiento) AS dia,
    MONTH(fecha_nacimiento) AS mes,
    YEAR(fecha_nacimiento) AS anio
FROM alumno
ORDER BY fecha_nacimiento;


-- Consulta 3: Cursos actuales con día de la semana y número de semana
SELECT
    nombre AS curso,
    fecha_inicio,
    DAYNAME(fecha_inicio) AS dia_semana,
    WEEK(fecha_inicio) AS numero_semana,
    MONTHNAME(fecha_inicio) AS mes_nombre,
    DATE_FORMAT(fecha_inicio, '%e/%M/%Y') AS fecha_formateada,
    YEAR(fecha_inicio) AS anio
FROM curso
WHERE fecha_inicio <= CURDATE()
ORDER BY fecha_inicio DESC;

-- Consulta 4: Días desde la matricula
SELECT
    id_alumno,
    id_curso,
    fecha_matricula,
    DATEDIFF(CURDATE(), fecha_matricula) AS dias_desde_matricula,
    DATE(fecha_matricula) AS solo_fecha,
    CURRENT_TIMESTAMP() AS ahora,
    DAYOFYEAR(fecha_matricula) AS dia_del_año,
    WEEKDAY(fecha_matricula) AS numero_dia_semana
FROM matricula
ORDER BY fecha_matricula;

-- Consulta 5: Alumnos que cumplen años esta semana
SELECT
    nombre,
    apellidos,
    fecha_nacimiento,
    WEEK(fecha_nacimiento) AS semana_nacimiento,
    MONTHNAME(fecha_nacimiento) AS mes_nombre,
    DAYNAME(fecha_nacimiento) AS dia_semana
FROM alumno
WHERE WEEK(fecha_nacimiento) = WEEK(CURDATE())
ORDER BY fecha_nacimiento;

