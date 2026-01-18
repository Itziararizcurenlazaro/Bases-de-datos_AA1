-- Añadir 2 nuevos campos obligatorios a la tabla alumno
ALTER TABLE alumno
ADD COLUMN dni VARCHAR(20) NOT NULL,
ADD COLUMN fecha_registro DATE NOT NULL DEFAULT CURDATE();

-- Eliminar un campo de otra tabla (departamento)
ALTER TABLE departamento
DROP COLUMN aula;

-- Cambiar un campo de cadena a número (telefono en alumno)
-- Primero se eliminan caracteres no numéricos
-- Después se modificará el tipo de dato a numérico
ALTER TABLE alumno
MODIFY COLUMN telefono BIGINT NOT NULL;

--  Hacer obligatorio un campo que no lo era (nota_final en matricula)
-- Le damos valor por defecto 0 para no romper filas existentes
ALTER TABLE matricula
MODIFY COLUMN nota_final DECIMAL(4,2) NOT NULL DEFAULT 0;
