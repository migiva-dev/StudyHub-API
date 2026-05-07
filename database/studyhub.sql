CREATE DATABASE IF NOT EXISTS studyhub_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE studyhub_db;

CREATE TABLE IF NOT EXISTS estudios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    familia VARCHAR(100) NOT NULL,
    grado VARCHAR(50) NOT NULL,
    duracion INT NOT NULL,
    modalidad VARCHAR(50) NOT NULL,
    descripcion TEXT
);

INSERT INTO estudios (nombre, familia, grado, duracion, modalidad, descripcion) VALUES
('Desarrollo de Aplicaciones Web', 'Informática y Comunicaciones', 'Grado Superior', 2000, 'Presencial', 'Formación orientada al desarrollo de aplicaciones web, tanto en entorno cliente como servidor.'),
('Administración de Sistemas Informáticos en Red', 'Informática y Comunicaciones', 'Grado Superior', 2000, 'Presencial', 'Formación enfocada en la administración de sistemas, redes y servicios informáticos.'),
('Sistemas Microinformáticos y Redes', 'Informática y Comunicaciones', 'Grado Medio', 2000, 'Presencial', 'Formación centrada en instalación, mantenimiento y soporte de equipos y redes informáticas.'),
('Marketing y Publicidad', 'Comercio y Marketing', 'Grado Superior', 2000, 'Presencial', 'Formación orientada a la investigación comercial, comunicación y planificación de campañas publicitarias.'),
('Gestión Administrativa', 'Administración y Gestión', 'Grado Medio', 2000, 'Presencial', 'Formación enfocada en tareas administrativas, atención al cliente y gestión documental.');