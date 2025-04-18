-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS cofradia_agenda;
USE cofradia_agenda;

-- Tabla de COFRADIAS
CREATE TABLE IF NOT EXISTS COFRADIAS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    titular1 VARCHAR(255) NOT NULL,
    titular2 VARCHAR(255) DEFAULT NULL,
    titular3 VARCHAR(255) DEFAULT NULL,
    direccion VARCHAR(255) NOT NULL,
    direccion2 VARCHAR(255) DEFAULT NULL,
    parroquia VARCHAR(255) NOT NULL
);

-- Tabla de USUARIOS
CREATE TABLE IF NOT EXISTS USUARIOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    codigo VARCHAR(50) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL
);

-- Tabla de EVENTOS
CREATE TABLE IF NOT EXISTS EVENTOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    cofradia INT NOT NULL,
    fecha DATETIME NOT NULL,
    FOREIGN KEY (cofradia) REFERENCES COFRADIAS(id)
);

-- Tabla de ARTICULOS
CREATE TABLE IF NOT EXISTS ARTICULOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titular VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    cuerpo TEXT NOT NULL
);

-- Tabla de FAVORITOS (relación muchos a muchos entre USUARIOS y EVENTOS)
CREATE TABLE IF NOT EXISTS FAVORITOS (
    id_usuario INT NOT NULL,
    id_evento INT NOT NULL,
    PRIMARY KEY (id_usuario, id_evento),
    FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id),
    FOREIGN KEY (id_evento) REFERENCES EVENTOS(id)
);
