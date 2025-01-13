-- Tabla Kelvia --
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,  
    codigo_cliente INT,         
    nombre_completo VARCHAR(100),      
    correo_electronico VARCHAR(100), 
    numero_telefono VARCHAR(15)                 
) ENGINE=MyISAM 
  CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

INSERT INTO clientes (codigo_cliente, nombre_completo, correo_electronico, numero_telefono) VALUES
(1, 'Juan Pérez', 'juan.perez@gmail.com', '555-1234567'),
(2, 'María Gómez', 'maria.gomez@yahoo.com', '555-2345678'),
(3, 'Luis Martínez', 'luis.martinez@hotmail.com', '555-3456789'),
(4, 'Ana Torres', 'ana.torres@gmail.com', NULL),
(5, 'Carlos Ramírez', 'carlos.ramirez@outlook.com', '555-4567890'),
(6, 'Sofía Hernández', 'sofia.hernandez@gmail.com', NULL),
(7, 'Pedro López', 'pedro.lopez@yahoo.com', '555-5678901'),
(8, 'Laura Castillo', 'laura.castillo@gmail.com', '555-6789012'),
(9, 'Diego Ruiz', 'diego.ruiz@hotmail.com', NULL),
(10, 'Valeria Mendoza', 'valeria.mendoza@gmail.com', '555-7890123');
