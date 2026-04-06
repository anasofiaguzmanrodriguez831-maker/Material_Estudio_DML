CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE Empresa(
	id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    codigo_empresa VARCHAR(50) NOT NULL UNIQUE,
    nombre_empresa VARCHAR(100) NOT NULL

);
CREATE TABLE Trazabilidad(
	id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_empresa VARCHAR(45) NOT NULL,
    encargo VARCHAR(45) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    telefono INT NOT NULL,
    correo VARCHAR(45) NOT NULL,
    estado DATE NOT NULL,
    fecha_cierre DATE NOT NULL,
    
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);

