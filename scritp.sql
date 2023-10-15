CREATE DATABASE laboratorioSQL;

use laboratorioSQL;

CREATE TABLE Profesor (
    doc_profe VARCHAR(11) NOT NULL,
    nom_prof VARCHAR(30),
    ape_prof VARCHAR(30),
    cate_prof INT,
    sal_prof INT,
    PRIMARY KEY(doc_profe)
);

CREATE TABLE Curso (
    cod_cur INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_cur VARCHAR(100),
    horas_cur INT,
    valor_cur INT
);


CREATE TABLE Estudiante(
    doc_est VARCHAR(11) NOT NULL,
    nom_est VARCHAR(30),
    ape_est VARCHAR(30),
    edad_est INT,
    PRIMARY KEY(doc_est)
);

/* Creacion de una Tabla con llaves foraneas*/


CREATE TABLE Estudiantexcurso (
    id_inscripcion INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cod_cur INT,
    doc_est VARCHAR(11),
    fec_ini_estcur DATE,
    FOREIGN KEY (cod_cur) REFERENCES Curso(cod_cur),
    FOREIGN KEY (doc_est) REFERENCES Estudiante(doc_est)
);

/* Insercion de valores */

INSERT INTO Profesor (doc_profe, nom_prof, ape_prof, cate_prof, sal_prof) VALUES (63502720,"Martha","Rojas",2,690000);
INSERT INTO Profesor (doc_profe, nom_prof, ape_prof, cate_prof, sal_prof) VALUES (91216904, "Carlos", "Pérez", 3, 950000);
INSERT INTO Profesor (doc_profe, nom_prof, ape_prof, cate_prof, sal_prof) VALUES (13826789, "Maritza", "Angarita", 1, 550000);
INSERT INTO Profesor (doc_profe, nom_prof, ape_prof, cate_prof, sal_prof) VALUES (1098765789, "Alejandra", "Torres", 4, 1100000);


INSERT INTO Curso ( cod_cur, nom_cur, horas_cur, valor_cur) VALUES (149842, "Fundamentos de bases de datos", 40, 500000);
INSERT INTO Curso ( cod_cur, nom_cur, horas_cur, valor_cur) VALUES (250067, "Fundamentos de SQL", 20, 700000);
INSERT INTO Curso ( cod_cur, nom_cur, horas_cur, valor_cur) VALUES (289011, "Manejo de Mysql", 45, 550000);
INSERT INTO Curso ( cod_cur, nom_cur, horas_cur, valor_cur) VALUES (345671, "Fundamentals of Oracle", 60, 3000000);


INSERT INTO Estudiante (doc_est, nom_est, ape_est, edad_est) VALUES (63502720, "María", "Pérez", 2);
INSERT INTO Estudiante (doc_est, nom_est, ape_est, edad_est) VALUES (91245678, "Carlos José", "López", 3);
INSERT INTO Estudiante (doc_est, nom_est, ape_est, edad_est) VALUES (1098098097, "Jonatan", "Ardila", 1);
INSERT INTO Estudiante (doc_est, nom_est, ape_est, edad_est) VALUES (1098765679, "Carlos", "Martínez", 4);


INSERT INTO Estudiantexcurso (cod_cur, doc_est, fec_ini_estcur) VALUES (289011, "1098765678", "01-02-2011");
INSERT INTO Estudiantexcurso (cod_cur, doc_est, fec_ini_estcur) VALUES (250067, "63502720", "01-03-2011");
INSERT INTO Estudiantexcurso (cod_cur, doc_est, fec_ini_estcur) VALUES (289011, "1098098097", "01-02-2011");
INSERT INTO Estudiantexcurso (cod_cur, doc_est, fec_ini_estcur) VALUES (345671, "63502720", "01-04-2011");



/*Consultas*/

SELECT * FROM Profesor;

/*Mostrar los salarios de los profesores ordenados por categoría.*/
SELECT nom_prof, ape_prof, cate_prof, sal_prof
FROM Profesor
ORDER BY cate_prof;

/*Mostrar los cursos cuyo valor sea mayor a $500.000.*/
SELECT * FROM Curso WHERE valor_cur > 500000;

/*Calcular el valor promedio de los cursos cuyas horas sean mayores a 40.*/
SELECT AVG(horas_cur) FROM Curso WHERE horas_cur > 40;

/*Mostrar todos los campos de la tabla curso en orden ascendente según el valor.*/


/*Visualizar los profesores cuyo sueldo este entre $500.000 y $700.000.*/
SELECT * FROM Profesor WHERE sal_prof BETWEEN 500000 AND  700000;