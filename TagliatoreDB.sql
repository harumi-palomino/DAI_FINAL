--drop database TagliatoreDB 
-- Crear la base de datos
CREATE DATABASE TagliatoreDB;
GO

-- Usar la base de datos recién creada
USE TagliatoreDB;
GO

-- Tabla: Meseros
CREATE TABLE Usuario (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
	contrasena varchar(100) not null
);

-- Tabla: Órdenes
CREATE TABLE Ordenes (
    OrdenID INT IDENTITY(1,1) PRIMARY KEY,
    Mesa INT NOT NULL,
    Cliente varchar(100),
	Mesero varchar(100) not null,
	platillo varchar(100) NOT NULL,
	cantidad int not null
);

INSERT INTO Usuario (Nombre, contrasena) VALUES ('Carlos García', 'password123');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('María López', 'securePass456');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Juan Pérez', 'usuarioJuan789');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Sofía Hernández', 'Sofia2024');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Miguel Torres', 'TorresStrong!');



-- SELECT para Meseros
SELECT *
FROM Usuario;

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (1, 'Ana Martínez', 'Carlos García', 'Tacos al Pastor', 3);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (2, 'Luis Ramírez', 'María López', 'Enchiladas Verdes', 2);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (3, 'Paula Torres', 'Juan Pérez', 'Chilaquiles Rojos', 1);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (4, 'Jorge Cruz', 'Sofía Hernández', 'Pozole', 4);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (5, 'Elena Díaz', 'Miguel Torres', 'Tamales de Mole', 2);



-- SELECT para Órdenes
SELECT *
FROM Ordenes;


