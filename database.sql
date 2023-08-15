SHOW DATABASES;

CREATE DATABASE videojuegos;

USE videojuegos;

SHOW TABLES;

CREATE TABLE perfil_juegos (
    id_registro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    anio_lanzamiento INT NOT NULL,
    genero VARCHAR(60) NOT NULL,
    nota FLOAT NOT NULL,
    desarrollador VARCHAR(60) NOT NULL,

    PRIMARY KEY (id_registro)
);

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Persona 5",2017, "RPG", 9.3, "Atlus");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Resident Evil 4",2023 , "Accion, Aventura, Survival", 9.1, "Capcom");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Grand Theft Auto V",2013, "Mundo Abierto", 9.7, "Rockstar North");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Mass effect:Andromeda ",2017, "RPG", 7.1, "BioWare");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Bioshock Infinite",2013, "Accion,Shooter, Sci-Fi", 9.4, "Irrational Games");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Cyberpunk 2077",2020, "RPG Accion", 8.6, "CD Project");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("DOOM",2016, "Shooter", 8.5, "Id Software");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Super Mario Odyssey",2017, "Accion, Plataformas", 9.7, "Nintendo");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Cuphead",2017, "Plataformas, accion", 8.8, "Studio MDHR");

INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES ("Mortal Kombat X",2015, "Pelea, Accion", 8.3, "Warner Bros Interactive");

SELECT * FROM perfil_juegos;
