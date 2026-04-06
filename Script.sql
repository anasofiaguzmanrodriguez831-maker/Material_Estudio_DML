CREATE DATABASE tranzabilidad_sgva;
USE tranzabilidad_sgva;


CREATE TABLE Empresa (
    id_Empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_Empresa VARCHAR(100) NOT NULL,
    codigo_Empresa VARCHAR(100) NOT NULL UNIQUE 
);


CREATE TABLE Trazabilidad (
    id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    
    id_Empresa_FK INT NOT NULL, 
    
    telefono VARCHAR(100) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    Encargado VARCHAR(100) NOT NULL,
    Fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,

    CONSTRAINT fk_empresa_trazabilidad 
    FOREIGN KEY (id_Empresa_FK) REFERENCES Empresa(id_Empresa)
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('SQDM S A S', '123456');

INSERT INTO Trazabilidad (id_Empresa_FK, telefono, Correo, Estado, Encargado, Fecha_inicio, fecha_fin)
VALUES (1, '3183733929', ' JhoanaRobles@sqdm.com', 'Activo', 'JHOANA GERALDYNE ROBLES', '16/03/2026 08:00:00', '10/04/2026 18:00:00');



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






