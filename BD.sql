-- Crear la base de datos
CREATE DATABASE TextilExportDB;

-- Seleccionar la base de datos creada
USE TextilExportDB;

-- Crear la tabla de categorías
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Insertar algunas categorías de ejemplo
INSERT INTO categorias (nombre) VALUES 
('Textil'),
('Promocional');

-- Crear la tabla de productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_producto VARCHAR(10) UNIQUE,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    categoria_id INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    existencias INT UNSIGNED NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Crear la tabla de imágenes de productos
CREATE TABLE imagenes_productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE
);
