DROP TABLE prestamos;
DROP TABLE lectores;
DROP TABLE autores_libros;
DROP TABLE autores;
DROP TABLE editoriales_libros;
DROP TABLE editoriales;
DROP TABLE libros;

CREATE TABLE libros(
    id INT PRIMARY KEY,
    titulo VARCHAR(100)
);

CREATE TABLE editoriales(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(25)
);

CREATE TABLE editoriales_libros(
    cod_libros INT,
    id_editorial INT,
    FOREIGN KEY(cod_libros) REFERENCES libros(id),
    FOREIGN KEY(id_editorial) REFERENCES editoriales(id)
);

CREATE TABLE autores(
    ID SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE autores_libros(
    id_autor INT,
    cod_libros INT,
    FOREIGN KEY(id_autor) REFERENCES autores(id),
    FOREIGN KEY(cod_libros) REFERENCES libros(id)
);

CREATE TABLE lectores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(25)
);

CREATE TABlE prestamos(
    id SERIAL,
    id_lector INT,
    id_libro INT,
    fecha_devolucion DATE,
    FOREIGN KEY(id_lector) REFERENCES lectores(id),
    FOREIGN KEY(id_libro) REFERENCES libros(id)
);

INSERT INTO libros(
    id,
    titulo

)
VAlUES
    (('515'),('Ecuaciones diferenciasles para ingenieros y ciéntificos')),
    (('540'),('Quimica')),
    (('530'),('Fisica')),
    (('519'),('Estadistica')),
    (('512'),('Algebra Lineal')
);

INSERT INTO editoriales(
    nombre
)
VAlUES
    ('UTHEA'),
    ('Reverte'),
    ('McGRaw-Hill'),
    ('Mir'
);

INSERT INTO autores(
    nombre
)
VAlUES
    ('Lambe, C.G y Tranter, C.J.'),
    ('Christen,Hans Rudolf'),
    ('Serway,Raymond A'),
    ('Murray Spiegel'),
    ('Voevodin,Valentin V'
);

INSERT INTO lectores(
    nombre
)
VAlUES
('Pérez Gómez,Juan'),
('Ortega Pereira,Margarita'),
('García Contreras,Rosa'),
('López Molina,Ana'
);

INSERT INTO prestamos(
    id_lector,
    id_libro,
    fecha_devolucion
)
VAlUES
((1),(515),('09-15-2019')),
((2),(540),('08-23-2019')),
((3),(530),('09-24-2019')),
((4),(519),('09-18-2019')),
((1),(515),('09-17-2019')
);


