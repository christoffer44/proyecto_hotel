CREATE TABLE CLIENTE (
    cliente_id INT  PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(20),
    telefono VARCHAR(255)
    
   
    
    );

   
   CREATE table disponibilidad (
    disponibilidad_id INT  NOT NULL,
    habitacion_id INT  NOT NULL,
    fecha date,
    disponible INT
    
    );

CREATE table HOTELES (
    hotel_id INT  NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(255)
    email VARCHAR (255)

);

CREATE TABLE habitaciones (

habitacion_id INT  NOT NULL
hotel_id INT  NOT NULL
tipo VARCHAR(255) NOT NULL,
capacidad VARCHAR(255) NOT NULL,
precio_disponible VARCHAR(255) NOT NULL

);

 CREATE TABLE RESERVAS (

reservas_id INT  NOT NULL,
habitacion_id INT  NOT NULL,
cliente_id INT  NOT NULL,
fecha_checkin date NOT NULL,
fecha_checkauot date NOT NULL,
estado VARCHAR(255) NOT NULL

);
