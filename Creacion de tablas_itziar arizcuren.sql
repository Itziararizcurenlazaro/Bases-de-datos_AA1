CREATE TABLE departamento (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR (50) NOT NULL,
	descripcion VARCHAR (250),
	presupuesto DECIMAL (10, 2) NOT NULL,
	fecha_creacion DATE NOT NULL,
	activo BOOLEAN NOT NULL DEFAULT TRUE,
	aula VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE profesor (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    especialidad VARCHAR(100) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    id_departamento INT UNSIGNED,
    id_supervisor INT UNSIGNED,
    FOREIGN KEY (id_departamento) REFERENCES departamento (id),
    FOREIGN KEY (id_supervisor) REFERENCES profesor (id)
);


CREATE TABLE curso (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
    tipo_manualidad VARCHAR(100) NOT NULL,
    nivel ENUM('basico', 'medio', 'avanzado') NOT NULL,
    duracion_horas INT NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    id_profesor INT UNSIGNED,
    FOREIGN KEY (id_profesor) REFERENCES profesor (id)
);

CREATE TABLE alumno (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    nivel ENUM('principiante', 'intermedio', 'avanzado') NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);


CREATE TABLE matricula (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	fecha_matricula DATE NOT NULL,
    estado ENUM('activa', 'cancelada', 'finalizada') NOT NULL,
    pagado BOOLEAN NOT NULL DEFAULT FALSE,
    nota_final DECIMAL(4,2),
    importe_total DECIMAL(8,2) NOT NULL,
    metodo_pago ENUM('efectivo', 'tarjeta', 'transferencia') NOT NULL,
    fecha_baja DATE,
    id_alumno INT UNSIGNED,
    id_curso INT UNSIGNED,
    FOREIGN KEY (id_alumno) REFERENCES alumno (id),
    FOREIGN KEY (id_curso) REFERENCES curso (id)
);