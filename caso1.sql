--caso 1
--Un trabajador pertenece a un departamento.
--El trabajador tiene un nombre, rut y dirección.
--El departamento tiene un nombre.
--Un trabajador posee liquidaciones.
--La liquidación se guarda en un archivo drive
CREATE DATABASE caso1;
--\c caso1
CREATE TABLE departamento(id SERIAL, nombre VARCHAR(100) NOT NULL, PRIMARY KEY(id));
CREATE TABLE trabajador(rut INT NOT NULL UNIQUE, nombre VARCHAR(100) NOT NULL, id_departamento INT, direccion VARCHAR(100), PRIMARY KEY(rut), FOREIGN KEY(id_departamento) REFERENCES departamento(id));
CREATE TABLE liquidaciones(rut_trabajador INT NOT NULL, liquidacion FLOAT, FOREIGN KEY(rut_trabajador) REFERENCES trabajador(rut));
