CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE Trazabilidad(
	id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Codigo_empresa VARCHAR(45) NOT NULL,
    encargo VARCHAR(45) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    telefono INT NOT NULL,
    correo VARCHAR(45) NOT NULL,
    estado DATE NOT NULL,
    fecha_cierre DATE NOT NULL
    
);

CREATE TABLE Empresa(
	id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL

);