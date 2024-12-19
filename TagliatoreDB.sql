--drop database TagliatoreDB 
-- Crear la base de datos
CREATE DATABASE TagliatoreDB;
GO

-- Usar la base de datos reci�n creada
USE TagliatoreDB;
GO

-- Tabla: Meseros
CREATE TABLE Usuario (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
	contrasena varchar(100) not null
);

-- Tabla: �rdenes
CREATE TABLE Ordenes (
    OrdenID INT IDENTITY(1,1) PRIMARY KEY,
    Mesa INT NOT NULL,
    Cliente varchar(100),
	Mesero varchar(100) not null,
	platillo varchar(100) NOT NULL,
	cantidad int not null
);

INSERT INTO Usuario (Nombre, contrasena) VALUES ('Carlos Garc�a', 'password123');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Mar�a L�pez', 'securePass456');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Juan P�rez', 'usuarioJuan789');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Sof�a Hern�ndez', 'Sofia2024');
INSERT INTO Usuario (Nombre, contrasena) VALUES ('Miguel Torres', 'TorresStrong!');



-- SELECT para Meseros
SELECT *
FROM Usuario;

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (1, 'Ana Mart�nez', 'Carlos Garc�a', 'Tacos al Pastor', 3);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (2, 'Luis Ram�rez', 'Mar�a L�pez', 'Enchiladas Verdes', 2);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (3, 'Paula Torres', 'Juan P�rez', 'Chilaquiles Rojos', 1);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (4, 'Jorge Cruz', 'Sof�a Hern�ndez', 'Pozole', 4);

INSERT INTO Ordenes (Mesa, Cliente, Mesero, platillo, cantidad) 
VALUES (5, 'Elena D�az', 'Miguel Torres', 'Tamales de Mole', 2);



-- SELECT para �rdenes
SELECT *
FROM Ordenes;


