
CREATE SCHEMA HOTELES;


USE HOTELES;


CREATE TABLE CLIENTE (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    telefono VARCHAR(255),
    reserva_id INT,
    CONSTRAINT FK_reserva
    FOREIGN KEY (reserva_id) REFERENCES RESERVAS (reservas_id)  
);


CREATE TABLE DISPONIBILIDAD (
    disponibilidad_id INT PRIMARY KEY AUTO_INCREMENT, 
    habitacion_id INT NOT NULL,
    fecha DATE,
    disponible INT
);


CREATE TABLE HABITACIONES (
    habitacion_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT NOT NULL,
    CONSTRAINT FK_habitacion
    FOREIGN KEY (hotel_id) REFERENCES HOTELES (hotel_id),
    tipo VARCHAR(255) NOT NULL,
    capacidad VARCHAR(255) NOT NULL,
    precio_disponible VARCHAR(255) NOT NULL
);


CREATE TABLE HOTELES (
    hotel_id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(255),
    email VARCHAR(255)
);


CREATE TABLE RESERVAS (
    reservas_id INT NOT NULL PRIMARY KEY,
    habitacion_id INT NOT NULL,
    cliente_id INT NOT NULL,
    fecha_checkin DATE NOT NULL,
    fecha_checkout DATE NOT NULL,
    estado VARCHAR(255) NOT NULL
);
