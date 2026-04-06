CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE Trazabilidad(
id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Codigo_empresa INT NOT NULL,
encargo VARCHAR(45) NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
telefono VARCHAR(15) NULL,
correo VARCHAR(45) NULL,
estado VARCHAR(45) NOT NULL,
fecha_cierre datetime NULL
   
);

CREATE TABLE Empresa(
id_empresa INT AUTO_INCREMENT PRIMARY KEY,
nombre_empresa VARCHAR(100) NOT NULL

);

DESCRIBE Empresa;
INSERT INTO Empresa (Codigo_empresa, nombre_empresa)
VALUES('COD1', 'VASS CONSULTORIA DE SISTEMAS COLOMBIA S A S');

INSERT INTO Empresa (Codigo_empresa, nombre_empresa)
VALUES('COD2','SQDM S A S');

INSERT INTO Empresa (Codigo_Empresa, nombre_empresa)
VALUES('COD3','ELITE LOGISTICA Y RENDIMIENTO SAS');

INSERT INTO Empresa (Codigo_Empresa, nombre_empresa)
VALUE('COD4','DATAICO S.A.S');

INSERT INTO Empresa (Codigo_Empresa, nombre_empresa)
VALUE('COD5','NUEVA EMPRESA PROMOTORA DE SALUD S.A. - NUEVA EPS S.A.S');


INSERT INTO Empresa (Codigo_Empresa, nombre_empresa)
VALUES
('COD1', 'VASS CONSULTORIA DE SISTEMAS COLOMBIA S A S'),
('COD2','SQDM S A S'),
('COD3','ELITE LOGISTICA Y RENDIMIENTO SAS'),
('COD4','DATAICO S.A.S'),
('COD5','NUEVA EMPRESA PROMOTORA DE SALUD S.A. - NUEVA EPS S.A.S');

ALTER TABLE Empresa
DROP COLUMN ID_EMPRESA;

ALTER TABLE Empresa
DROP id_Empresa;

ALTER TABLE Empresa
ADD PRIMARY KEY (codigo_empresa);

DESCRIBE Empresa;

ALTER TABLE Trazabilidad
CHANGE Nombre_Empresa COD_Empresa varchar(50) not null;





