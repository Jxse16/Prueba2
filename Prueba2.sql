-- drop database prueba2;
-- create database prueba2;
-- use prueba2;

create table Empresas (
id int auto_increment,
Nombre varchar(100),
Telefono int,
Dirección varchar(100),
Email varchar(100) unique,
Contacto_Persona varchar(100),
primary key(id)
);

create table Practicas(
id int auto_increment,
T_Parcial_tarde varchar(100),
T_Completo varchar(100),
T_Parcial_Mañana varchar(100),
Fk_id_Empresas int,
primary key(id),
        FOREIGN KEY(Fk_id_Empresas) REFERENCES Empresas(id) ON DELETE cascade
);

create table Alumnos(
id int auto_increment,
Nombre varchar(100),
Apellidos varchar(100),
Dni char(9) unique,
Empresa varchar(100),
tipo_Practicas varchar(100),
Fk_id_Empresas int,
Fk_id_Practicas int,
primary key(id),
        FOREIGN KEY(Fk_id_Empresas) REFERENCES Empresas(id) ON DELETE cascade,
        FOREIGN KEY(Fk_id_Practicas) REFERENCES Practicas(id) ON DELETE cascade
);

INSERT INTO Empresas values(Null, 'Trinexo', '671434241', 'Madrid Sur, Calle Noseque', 'empresa@gmail.com', '967919293');
INSERT INTO Empresas values(Null, 'Rockstar', '675656667', 'Albacete, Calle Francisco', 'empresa2@gmail.com', '999919293');
INSERT INTO Empresas values(Null, 'PlayStation', '692345671', 'Fuente Albilla, Calle Iniesta', 'empresa3@gmail.com', '951787970');

INSERT INTO Practicas values(Null, '15:00h a 21:00h', '9:00h a 18:00h', '9:00h a 15:00h', 1);

INSERT INTO Alumnos VALUES(NULL, 'Jose', 'Fernandez Ortiz', '12345678P', 'Trinexo','Programación', 1, 2);
INSERT INTO Alumnos VALUES(NULL, 'Juan', 'Fernandez Ortiz', '12345678t', 'Rockstar','Diseño Graficos', 2, 1);
INSERT INTO Alumnos VALUES(NULL, 'Elena', 'Mederos', '12345678O', 'Playstation','Programacion', 3, 3);