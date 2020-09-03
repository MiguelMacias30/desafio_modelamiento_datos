--caso 2
--Un alumno, con nombre y rut pertenece a un curso.
--Un curso tiene muchos alumnos.
--Un alumno realiza pruebas.
--Las pruebas las califica un profesor .
--La prueba tiene un puntaje.
--El profesor tiene nombre y departamento.
CREATE DATABASE caso2
--\c caso2
CREATE TABLE curso(id_curso SERIAL, nombre_curso VARCHAR(60) NOT NULL, PRIMARY KEY(id_curso));
CREATE TABLE alumno(rut INT NOT NULL UNIQUE, nombre VARCHAR(100) NOT NULL UNIQUE, id_curso INT, PRIMARY KEY(rut), FOREIGN KEY(id_curso) REFERENCES curso(id_curso));
CREATE TABLE departamentos(id_departamento SERIAL, nombre_departamento VARCHAR(70) NOT NULL, PRIMARY KEY(id_departamento));
CREATE TABLE profesor(id_profesor INT NOT NULL UNIQUE, nombre_profesor VARCHAR(60) NOT NULL, id_departamento INT NOT NULL, PRIMARY KEY(id_profesor), FOREIGN KEY(id_departamento) REFERENCES departamentos(id_departamento));
CREATE TABLE prueba(rut INT NOT NULL, puntaje FLOAT, id_profesor INT NOT NULL, FOREIGN KEY(rut) REFERENCES alumno(rut), FOREIGN KEY(id_profesor) REFERENCES profesor(id_profesor));
