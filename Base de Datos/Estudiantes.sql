CREATE DATABASE hogwarts_db;

USE hogwarts_db;

CREATE TABLE estudiantes (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  casa VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE materias (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE asignaturas (
  id INT(11) NOT NULL AUTO_INCREMENT,
  id_estudiante INT(11) NOT NULL,
  id_materia INT(11) NOT NULL,
  calificacion INT(11),
  PRIMARY KEY (id),
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
  FOREIGN KEY (id_materia) REFERENCES materias(id)
);

CREATE TABLE profesores (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE clases (
  id INT(11) NOT NULL AUTO_INCREMENT,
  id_materia INT(11) NOT NULL,
  id_profesor INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_materia) REFERENCES materias(id),
  FOREIGN KEY (id_profesor) REFERENCES profesores(id)
);

CREATE TABLE horarios (
  id INT(11) NOT NULL AUTO_INCREMENT,
  id_clase INT(11) NOT NULL,
  dia_semana VARCHAR(20) NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fin TIME NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_clase) REFERENCES clases(id)
);