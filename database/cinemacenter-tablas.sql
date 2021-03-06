CREATE DATABASE IF NOT EXISTS cinemacenter;
USE cinemacenter;
CREATE TABLE DISTRIBUIDORAS (
ID_DISTRIBUIDORA INT NOT NULL,
NOMBRE VARCHAR(20) NOT NULL,

PRIMARY KEY (ID_DISTRIBUIDORA)
);


INSERT INTO DISTRIBUIDORAS VALUES(1, 'CINE TREN');
INSERT INTO DISTRIBUIDORAS VALUES(2, 'Buena Vista');
INSERT INTO DISTRIBUIDORAS VALUES(3, 'Warner Bros');
INSERT INTO DISTRIBUIDORAS VALUES(4, 'Bf + Paris films');
INSERT INTO DISTRIBUIDORAS VALUES(5, 'UIP');
INSERT INTO DISTRIBUIDORAS VALUES(6, 'UIP-SONY');
INSERT INTO DISTRIBUIDORAS VALUES(7, 'Diamond Films');


CREATE TABLE DIRECTORES (
ID_DIRECTOR INT NOT NULL,
NOMBRE VARCHAR(20),
APELLIDO VARCHAR(20),

PRIMARY KEY (ID_DIRECTOR)
);

INSERT INTO DIRECTORES VALUES(1,'Max','Minghella');
INSERT INTO DIRECTORES VALUES(2,'Brian Alexander','Jackson');
INSERT INTO DIRECTORES VALUES(3,'F. Gary','Gray');
INSERT INTO DIRECTORES VALUES(4,'Joe','Penna');
INSERT INTO DIRECTORES VALUES(5,'Elizabeth','Chomko');
INSERT INTO DIRECTORES VALUES(6,'Josh','Cooley');
INSERT INTO DIRECTORES VALUES(7,'Anthony','Maras');




CREATE TABLE PELICULAS (
ID_PELICULA INT NOT NULL,
NOMBRE VARCHAR(100) NOT NULL,
FECHAESTRENO DATE,
CLASIFICACION VARCHAR(100),
GENERO VARCHAR(100),
DURACION INT,
DISPONIBLE BIT,

ID_DIR1 INT NOT NULL,
ID_DIR2 INT,
ID_DISTRIBUIDORA INT NOT NULL,
PRIMARY KEY (ID_PELICULA),
FOREIGN KEY (ID_DISTRIBUIDORA) REFERENCES DISTRIBUIDORAS(ID_DISTRIBUIDORA),
FOREIGN KEY (ID_DIR1) REFERENCES DIRECTORES(ID_DIRECTOR),
FOREIGN KEY (ID_DIR2) REFERENCES DIRECTORES(ID_DIRECTOR)
);


INSERT INTO PELICULAS VALUES (1,'BLINDADO 2D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Drama Thriller',128, 1,1,NULL,1);

INSERT INTO PELICULAS VALUES (2,'DOLOR Y GLORIA 2D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM16','Comedia Drama',140, 1,1,NULL,1);

INSERT INTO PELICULAS VALUES (3,'MI MASCOTA ES UN LEON 2D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'ATP C/L','Familiar',140 , 1,1,NULL,2);

INSERT INTO PELICULAS VALUES (4,'X-MEN: DARK PHOENIX 2D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Ciencia Ficción',200, 1,1,NULL,2);

INSERT INTO PELICULAS VALUES (5,'X-MEN: DARK PHOENIX 2D SUB',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Ciencia Ficción',200, 1,1,NULL,2);

INSERT INTO PELICULAS VALUES (6,'X-MEN: DARK PHOENIX 3D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Ciencia Ficción',200, 1,1,NULL,2);


INSERT INTO PELICULAS VALUES (7,'GODZILLA II 3D SUB',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Ciencia Fición Aventuras',145, 1,2,NULL,2);

INSERT INTO PELICULAS VALUES (8,'GODZILLA II 2D CAST',STR_TO_DATE('06-06-2019','%d-%m-%Y'),'AM13','Acción Ciencia Fición Aventuras',145, 1,2,NULL,2);


INSERT INTO PELICULAS VALUES (9,'ALADDIN 2D CAST',STR_TO_DATE('13-06-2019','%d-%m-%Y'),'ATP C/L','Aventuras',130, 0,3,NULL,3);

INSERT INTO PELICULAS VALUES (10,'ALADDIN 3D CAST',STR_TO_DATE('13-06-2019','%d-%m-%Y'),'ATP C/L','Aventuras',130, 0,3,NULL,3);

INSERT INTO PELICULAS VALUES (11,'JOHN WICK 3 2D CAST',STR_TO_DATE('13-06-2019','%d-%m-%Y'),'AM16 C/R','Acción',158, 0,4,NULL,4);

INSERT INTO PELICULAS VALUES (12,'POKEMON 2D CAST',STR_TO_DATE('13-06-2019','%d-%m-%Y'),'ATP','Acción Ciencia Ficción',127, 0,4,NULL,4);

INSERT INTO PELICULAS VALUES (13,'GARABANDAL',STR_TO_DATE('20-06-2019','%d-%m-%Y'),'ATP C/L','Biográfica',167, 0,5,NULL,5);

INSERT INTO PELICULAS VALUES (14,'EL ARTICO',STR_TO_DATE('20-06-2019','%d-%m-%Y'),'Desconocido','Drama',129, 0,6,NULL,6);

INSERT INTO PELICULAS VALUES (15,'LO QUE FUIMOS',STR_TO_DATE('20-06-2019','%d-%m-%Y'),'Desconocido','Drama Familiar',146, 0,7,NULL,7);






CREATE TABLE SALAS (
ID_SALA INT NOT NULL,
TIPO VARCHAR(10),

PRIMARY KEY (ID_SALA)
);

INSERT INTO SALAS VALUES(1,'3D');
INSERT INTO SALAS VALUES(2,'3D');
INSERT INTO SALAS VALUES(3,'3D');
INSERT INTO SALAS VALUES(4,'2D');
INSERT INTO SALAS VALUES(5,'2D');
INSERT INTO SALAS VALUES(6,'2D');
INSERT INTO SALAS VALUES(7,'2D');



CREATE TABLE BUTACAS(
ID_BUTACA INT NOT NULL,
HILERA VARCHAR(2),

ID_SALA INT NOT NULL,

PRIMARY KEY (ID_BUTACA,HILERA,ID_SALA),
FOREIGN KEY (ID_SALA) REFERENCES SALAS(ID_SALA)
);

INSERT INTO BUTACAS VALUES(1,'A',1);
INSERT INTO BUTACAS VALUES(1,'B',1);
INSERT INTO BUTACAS VALUES(1,'C',1);
INSERT INTO BUTACAS VALUES(1,'D',1);
INSERT INTO BUTACAS VALUES(1,'E',1);
INSERT INTO BUTACAS VALUES(1,'F',1);
INSERT INTO BUTACAS VALUES(1,'G',1);
INSERT INTO BUTACAS VALUES(1,'H',1);
INSERT INTO BUTACAS VALUES(1,'I',1);
INSERT INTO BUTACAS VALUES(1,'J',1);
INSERT INTO BUTACAS VALUES(2,'A',1);
INSERT INTO BUTACAS VALUES(2,'B',1);
INSERT INTO BUTACAS VALUES(2,'C',1);
INSERT INTO BUTACAS VALUES(2,'D',1);
INSERT INTO BUTACAS VALUES(2,'E',1);
INSERT INTO BUTACAS VALUES(2,'F',1);
INSERT INTO BUTACAS VALUES(2,'G',1);
INSERT INTO BUTACAS VALUES(2,'H',1);
INSERT INTO BUTACAS VALUES(2,'I',1);
INSERT INTO BUTACAS VALUES(2,'J',1);
INSERT INTO BUTACAS VALUES(3,'A',1);
INSERT INTO BUTACAS VALUES(3,'B',1);
INSERT INTO BUTACAS VALUES(3,'C',1);
INSERT INTO BUTACAS VALUES(3,'D',1);
INSERT INTO BUTACAS VALUES(3,'E',1);
INSERT INTO BUTACAS VALUES(3,'F',1);
INSERT INTO BUTACAS VALUES(3,'G',1);
INSERT INTO BUTACAS VALUES(3,'H',1);
INSERT INTO BUTACAS VALUES(3,'I',1);
INSERT INTO BUTACAS VALUES(3,'J',1);
INSERT INTO BUTACAS VALUES(4,'A',1);
INSERT INTO BUTACAS VALUES(4,'B',1);
INSERT INTO BUTACAS VALUES(4,'C',1);
INSERT INTO BUTACAS VALUES(4,'D',1);
INSERT INTO BUTACAS VALUES(4,'E',1);
INSERT INTO BUTACAS VALUES(4,'F',1);
INSERT INTO BUTACAS VALUES(4,'G',1);
INSERT INTO BUTACAS VALUES(4,'H',1);
INSERT INTO BUTACAS VALUES(4,'I',1);
INSERT INTO BUTACAS VALUES(4,'J',1);
INSERT INTO BUTACAS VALUES(5,'A',1);
INSERT INTO BUTACAS VALUES(5,'B',1);
INSERT INTO BUTACAS VALUES(5,'C',1);
INSERT INTO BUTACAS VALUES(5,'D',1);
INSERT INTO BUTACAS VALUES(5,'E',1);
INSERT INTO BUTACAS VALUES(5,'F',1);
INSERT INTO BUTACAS VALUES(5,'G',1);
INSERT INTO BUTACAS VALUES(5,'H',1);
INSERT INTO BUTACAS VALUES(5,'I',1);
INSERT INTO BUTACAS VALUES(5,'J',1);
INSERT INTO BUTACAS VALUES(6,'A',1);
INSERT INTO BUTACAS VALUES(6,'B',1);
INSERT INTO BUTACAS VALUES(6,'C',1);
INSERT INTO BUTACAS VALUES(6,'D',1);
INSERT INTO BUTACAS VALUES(6,'E',1);
INSERT INTO BUTACAS VALUES(6,'F',1);
INSERT INTO BUTACAS VALUES(6,'G',1);
INSERT INTO BUTACAS VALUES(6,'H',1);
INSERT INTO BUTACAS VALUES(6,'I',1);
INSERT INTO BUTACAS VALUES(6,'J',1);
INSERT INTO BUTACAS VALUES(7,'A',1);
INSERT INTO BUTACAS VALUES(7,'B',1);
INSERT INTO BUTACAS VALUES(7,'C',1);
INSERT INTO BUTACAS VALUES(7,'D',1);
INSERT INTO BUTACAS VALUES(7,'E',1);
INSERT INTO BUTACAS VALUES(7,'F',1);
INSERT INTO BUTACAS VALUES(7,'G',1);
INSERT INTO BUTACAS VALUES(7,'H',1);
INSERT INTO BUTACAS VALUES(7,'I',1);
INSERT INTO BUTACAS VALUES(7,'J',1);
INSERT INTO BUTACAS VALUES(8,'A',1);
INSERT INTO BUTACAS VALUES(8,'B',1);
INSERT INTO BUTACAS VALUES(8,'C',1);
INSERT INTO BUTACAS VALUES(8,'D',1);
INSERT INTO BUTACAS VALUES(8,'E',1);
INSERT INTO BUTACAS VALUES(8,'F',1);
INSERT INTO BUTACAS VALUES(8,'G',1);
INSERT INTO BUTACAS VALUES(8,'H',1);
INSERT INTO BUTACAS VALUES(8,'I',1);
INSERT INTO BUTACAS VALUES(8,'J',1);


INSERT INTO BUTACAS VALUES(1,'A',2);
INSERT INTO BUTACAS VALUES(1,'B',2);
INSERT INTO BUTACAS VALUES(1,'C',2);
INSERT INTO BUTACAS VALUES(1,'D',2);
INSERT INTO BUTACAS VALUES(1,'E',2);
INSERT INTO BUTACAS VALUES(1,'F',2);
INSERT INTO BUTACAS VALUES(1,'G',2);
INSERT INTO BUTACAS VALUES(1,'H',2);
INSERT INTO BUTACAS VALUES(1,'I',2);
INSERT INTO BUTACAS VALUES(1,'J',2);
INSERT INTO BUTACAS VALUES(2,'A',2);
INSERT INTO BUTACAS VALUES(2,'B',2);
INSERT INTO BUTACAS VALUES(2,'C',2);
INSERT INTO BUTACAS VALUES(2,'D',2);
INSERT INTO BUTACAS VALUES(2,'E',2);
INSERT INTO BUTACAS VALUES(2,'F',2);
INSERT INTO BUTACAS VALUES(2,'G',2);
INSERT INTO BUTACAS VALUES(2,'H',2);
INSERT INTO BUTACAS VALUES(2,'I',2);
INSERT INTO BUTACAS VALUES(2,'J',2);
INSERT INTO BUTACAS VALUES(3,'A',2);
INSERT INTO BUTACAS VALUES(3,'B',2);
INSERT INTO BUTACAS VALUES(3,'C',2);
INSERT INTO BUTACAS VALUES(3,'D',2);
INSERT INTO BUTACAS VALUES(3,'E',2);
INSERT INTO BUTACAS VALUES(3,'F',2);
INSERT INTO BUTACAS VALUES(3,'G',2);
INSERT INTO BUTACAS VALUES(3,'H',2);
INSERT INTO BUTACAS VALUES(3,'I',2);
INSERT INTO BUTACAS VALUES(3,'J',2);
INSERT INTO BUTACAS VALUES(4,'A',2);
INSERT INTO BUTACAS VALUES(4,'B',2);
INSERT INTO BUTACAS VALUES(4,'C',2);
INSERT INTO BUTACAS VALUES(4,'D',2);
INSERT INTO BUTACAS VALUES(4,'E',2);
INSERT INTO BUTACAS VALUES(4,'F',2);
INSERT INTO BUTACAS VALUES(4,'G',2);
INSERT INTO BUTACAS VALUES(4,'H',2);
INSERT INTO BUTACAS VALUES(4,'I',2);
INSERT INTO BUTACAS VALUES(4,'J',2);
INSERT INTO BUTACAS VALUES(5,'A',2);
INSERT INTO BUTACAS VALUES(5,'B',2);
INSERT INTO BUTACAS VALUES(5,'C',2);
INSERT INTO BUTACAS VALUES(5,'D',2);
INSERT INTO BUTACAS VALUES(5,'E',2);
INSERT INTO BUTACAS VALUES(5,'F',2);
INSERT INTO BUTACAS VALUES(5,'G',2);
INSERT INTO BUTACAS VALUES(5,'H',2);
INSERT INTO BUTACAS VALUES(5,'I',2);
INSERT INTO BUTACAS VALUES(5,'J',2);
INSERT INTO BUTACAS VALUES(6,'A',2);
INSERT INTO BUTACAS VALUES(6,'B',2);
INSERT INTO BUTACAS VALUES(6,'C',2);
INSERT INTO BUTACAS VALUES(6,'D',2);
INSERT INTO BUTACAS VALUES(6,'E',2);
INSERT INTO BUTACAS VALUES(6,'F',2);
INSERT INTO BUTACAS VALUES(6,'G',2);
INSERT INTO BUTACAS VALUES(6,'H',2);
INSERT INTO BUTACAS VALUES(6,'I',2);
INSERT INTO BUTACAS VALUES(6,'J',2);
INSERT INTO BUTACAS VALUES(7,'A',2);
INSERT INTO BUTACAS VALUES(7,'B',2);
INSERT INTO BUTACAS VALUES(7,'C',2);
INSERT INTO BUTACAS VALUES(7,'D',2);
INSERT INTO BUTACAS VALUES(7,'E',2);
INSERT INTO BUTACAS VALUES(7,'F',2);
INSERT INTO BUTACAS VALUES(7,'G',2);
INSERT INTO BUTACAS VALUES(7,'H',2);
INSERT INTO BUTACAS VALUES(7,'I',2);
INSERT INTO BUTACAS VALUES(7,'J',2);
INSERT INTO BUTACAS VALUES(8,'A',2);
INSERT INTO BUTACAS VALUES(8,'B',2);
INSERT INTO BUTACAS VALUES(8,'C',2);
INSERT INTO BUTACAS VALUES(8,'D',2);
INSERT INTO BUTACAS VALUES(8,'E',2);
INSERT INTO BUTACAS VALUES(8,'F',2);
INSERT INTO BUTACAS VALUES(8,'G',2);
INSERT INTO BUTACAS VALUES(8,'H',2);
INSERT INTO BUTACAS VALUES(8,'I',2);
INSERT INTO BUTACAS VALUES(8,'J',2);


INSERT INTO BUTACAS VALUES(1,'A',3);
INSERT INTO BUTACAS VALUES(1,'B',3);
INSERT INTO BUTACAS VALUES(1,'C',3);
INSERT INTO BUTACAS VALUES(1,'D',3);
INSERT INTO BUTACAS VALUES(1,'E',3);
INSERT INTO BUTACAS VALUES(1,'F',3);
INSERT INTO BUTACAS VALUES(1,'G',3);
INSERT INTO BUTACAS VALUES(1,'H',3);
INSERT INTO BUTACAS VALUES(1,'I',3);
INSERT INTO BUTACAS VALUES(1,'J',3);
INSERT INTO BUTACAS VALUES(2,'A',3);
INSERT INTO BUTACAS VALUES(2,'B',3);
INSERT INTO BUTACAS VALUES(2,'C',3);
INSERT INTO BUTACAS VALUES(2,'D',3);
INSERT INTO BUTACAS VALUES(2,'E',3);
INSERT INTO BUTACAS VALUES(2,'F',3);
INSERT INTO BUTACAS VALUES(2,'G',3);
INSERT INTO BUTACAS VALUES(2,'H',3);
INSERT INTO BUTACAS VALUES(2,'I',3);
INSERT INTO BUTACAS VALUES(2,'J',3);
INSERT INTO BUTACAS VALUES(3,'A',3);
INSERT INTO BUTACAS VALUES(3,'B',3);
INSERT INTO BUTACAS VALUES(3,'C',3);
INSERT INTO BUTACAS VALUES(3,'D',3);
INSERT INTO BUTACAS VALUES(3,'E',3);
INSERT INTO BUTACAS VALUES(3,'F',3);
INSERT INTO BUTACAS VALUES(3,'G',3);
INSERT INTO BUTACAS VALUES(3,'H',3);
INSERT INTO BUTACAS VALUES(3,'I',3);
INSERT INTO BUTACAS VALUES(3,'J',3);
INSERT INTO BUTACAS VALUES(4,'A',3);
INSERT INTO BUTACAS VALUES(4,'B',3);
INSERT INTO BUTACAS VALUES(4,'C',3);
INSERT INTO BUTACAS VALUES(4,'D',3);
INSERT INTO BUTACAS VALUES(4,'E',3);
INSERT INTO BUTACAS VALUES(4,'F',3);
INSERT INTO BUTACAS VALUES(4,'G',3);
INSERT INTO BUTACAS VALUES(4,'H',3);
INSERT INTO BUTACAS VALUES(4,'I',3);
INSERT INTO BUTACAS VALUES(4,'J',3);
INSERT INTO BUTACAS VALUES(5,'A',3);
INSERT INTO BUTACAS VALUES(5,'B',3);
INSERT INTO BUTACAS VALUES(5,'C',3);
INSERT INTO BUTACAS VALUES(5,'D',3);
INSERT INTO BUTACAS VALUES(5,'E',3);
INSERT INTO BUTACAS VALUES(5,'F',3);
INSERT INTO BUTACAS VALUES(5,'G',3);
INSERT INTO BUTACAS VALUES(5,'H',3);
INSERT INTO BUTACAS VALUES(5,'I',3);
INSERT INTO BUTACAS VALUES(5,'J',3);
INSERT INTO BUTACAS VALUES(6,'A',3);
INSERT INTO BUTACAS VALUES(6,'B',3);
INSERT INTO BUTACAS VALUES(6,'C',3);
INSERT INTO BUTACAS VALUES(6,'D',3);
INSERT INTO BUTACAS VALUES(6,'E',3);
INSERT INTO BUTACAS VALUES(6,'F',3);
INSERT INTO BUTACAS VALUES(6,'G',3);
INSERT INTO BUTACAS VALUES(6,'H',3);
INSERT INTO BUTACAS VALUES(6,'I',3);
INSERT INTO BUTACAS VALUES(6,'J',3);
INSERT INTO BUTACAS VALUES(7,'A',3);
INSERT INTO BUTACAS VALUES(7,'B',3);
INSERT INTO BUTACAS VALUES(7,'C',3);
INSERT INTO BUTACAS VALUES(7,'D',3);
INSERT INTO BUTACAS VALUES(7,'E',3);
INSERT INTO BUTACAS VALUES(7,'F',3);
INSERT INTO BUTACAS VALUES(7,'G',3);
INSERT INTO BUTACAS VALUES(7,'H',3);
INSERT INTO BUTACAS VALUES(7,'I',3);
INSERT INTO BUTACAS VALUES(7,'J',3);
INSERT INTO BUTACAS VALUES(8,'A',3);
INSERT INTO BUTACAS VALUES(8,'B',3);
INSERT INTO BUTACAS VALUES(8,'C',3);
INSERT INTO BUTACAS VALUES(8,'D',3);
INSERT INTO BUTACAS VALUES(8,'E',3);
INSERT INTO BUTACAS VALUES(8,'F',3);
INSERT INTO BUTACAS VALUES(8,'G',3);
INSERT INTO BUTACAS VALUES(8,'H',3);
INSERT INTO BUTACAS VALUES(8,'I',3);
INSERT INTO BUTACAS VALUES(8,'J',3);


INSERT INTO BUTACAS VALUES(1,'A',4);
INSERT INTO BUTACAS VALUES(1,'B',4);
INSERT INTO BUTACAS VALUES(1,'C',4);
INSERT INTO BUTACAS VALUES(1,'D',4);
INSERT INTO BUTACAS VALUES(1,'E',4);
INSERT INTO BUTACAS VALUES(1,'F',4);
INSERT INTO BUTACAS VALUES(1,'G',4);
INSERT INTO BUTACAS VALUES(1,'H',4);
INSERT INTO BUTACAS VALUES(1,'I',4);
INSERT INTO BUTACAS VALUES(1,'J',4);
INSERT INTO BUTACAS VALUES(2,'A',4);
INSERT INTO BUTACAS VALUES(2,'B',4);
INSERT INTO BUTACAS VALUES(2,'C',4);
INSERT INTO BUTACAS VALUES(2,'D',4);
INSERT INTO BUTACAS VALUES(2,'E',4);
INSERT INTO BUTACAS VALUES(2,'F',4);
INSERT INTO BUTACAS VALUES(2,'G',4);
INSERT INTO BUTACAS VALUES(2,'H',4);
INSERT INTO BUTACAS VALUES(2,'I',4);
INSERT INTO BUTACAS VALUES(2,'J',4);
INSERT INTO BUTACAS VALUES(3,'A',4);
INSERT INTO BUTACAS VALUES(3,'B',4);
INSERT INTO BUTACAS VALUES(3,'C',4);
INSERT INTO BUTACAS VALUES(3,'D',4);
INSERT INTO BUTACAS VALUES(3,'E',4);
INSERT INTO BUTACAS VALUES(3,'F',4);
INSERT INTO BUTACAS VALUES(3,'G',4);
INSERT INTO BUTACAS VALUES(3,'H',4);
INSERT INTO BUTACAS VALUES(3,'I',4);
INSERT INTO BUTACAS VALUES(3,'J',4);
INSERT INTO BUTACAS VALUES(4,'A',4);
INSERT INTO BUTACAS VALUES(4,'B',4);
INSERT INTO BUTACAS VALUES(4,'C',4);
INSERT INTO BUTACAS VALUES(4,'D',4);
INSERT INTO BUTACAS VALUES(4,'E',4);
INSERT INTO BUTACAS VALUES(4,'F',4);
INSERT INTO BUTACAS VALUES(4,'G',4);
INSERT INTO BUTACAS VALUES(4,'H',4);
INSERT INTO BUTACAS VALUES(4,'I',4);
INSERT INTO BUTACAS VALUES(4,'J',4);
INSERT INTO BUTACAS VALUES(5,'A',4);
INSERT INTO BUTACAS VALUES(5,'B',4);
INSERT INTO BUTACAS VALUES(5,'C',4);
INSERT INTO BUTACAS VALUES(5,'D',4);
INSERT INTO BUTACAS VALUES(5,'E',4);
INSERT INTO BUTACAS VALUES(5,'F',4);
INSERT INTO BUTACAS VALUES(5,'G',4);
INSERT INTO BUTACAS VALUES(5,'H',4);
INSERT INTO BUTACAS VALUES(5,'I',4);
INSERT INTO BUTACAS VALUES(5,'J',4);
INSERT INTO BUTACAS VALUES(6,'A',4);
INSERT INTO BUTACAS VALUES(6,'B',4);
INSERT INTO BUTACAS VALUES(6,'C',4);
INSERT INTO BUTACAS VALUES(6,'D',4);
INSERT INTO BUTACAS VALUES(6,'E',4);
INSERT INTO BUTACAS VALUES(6,'F',4);
INSERT INTO BUTACAS VALUES(6,'G',4);
INSERT INTO BUTACAS VALUES(6,'H',4);
INSERT INTO BUTACAS VALUES(6,'I',4);
INSERT INTO BUTACAS VALUES(6,'J',4);
INSERT INTO BUTACAS VALUES(7,'A',4);
INSERT INTO BUTACAS VALUES(7,'B',4);
INSERT INTO BUTACAS VALUES(7,'C',4);
INSERT INTO BUTACAS VALUES(7,'D',4);
INSERT INTO BUTACAS VALUES(7,'E',4);
INSERT INTO BUTACAS VALUES(7,'F',4);
INSERT INTO BUTACAS VALUES(7,'G',4);
INSERT INTO BUTACAS VALUES(7,'H',4);
INSERT INTO BUTACAS VALUES(7,'I',4);
INSERT INTO BUTACAS VALUES(7,'J',4);
INSERT INTO BUTACAS VALUES(8,'A',4);
INSERT INTO BUTACAS VALUES(8,'B',4);
INSERT INTO BUTACAS VALUES(8,'C',4);
INSERT INTO BUTACAS VALUES(8,'D',4);
INSERT INTO BUTACAS VALUES(8,'E',4);
INSERT INTO BUTACAS VALUES(8,'F',4);
INSERT INTO BUTACAS VALUES(8,'G',4);
INSERT INTO BUTACAS VALUES(8,'H',4);
INSERT INTO BUTACAS VALUES(8,'I',4);
INSERT INTO BUTACAS VALUES(8,'J',4);


INSERT INTO BUTACAS VALUES(1,'A',5);
INSERT INTO BUTACAS VALUES(1,'B',5);
INSERT INTO BUTACAS VALUES(1,'C',5);
INSERT INTO BUTACAS VALUES(1,'D',5);
INSERT INTO BUTACAS VALUES(1,'E',5);
INSERT INTO BUTACAS VALUES(1,'F',5);
INSERT INTO BUTACAS VALUES(1,'G',5);
INSERT INTO BUTACAS VALUES(1,'H',5);
INSERT INTO BUTACAS VALUES(1,'I',5);
INSERT INTO BUTACAS VALUES(1,'J',5);
INSERT INTO BUTACAS VALUES(2,'A',5);
INSERT INTO BUTACAS VALUES(2,'B',5);
INSERT INTO BUTACAS VALUES(2,'C',5);
INSERT INTO BUTACAS VALUES(2,'D',5);
INSERT INTO BUTACAS VALUES(2,'E',5);
INSERT INTO BUTACAS VALUES(2,'F',5);
INSERT INTO BUTACAS VALUES(2,'G',5);
INSERT INTO BUTACAS VALUES(2,'H',5);
INSERT INTO BUTACAS VALUES(2,'I',5);
INSERT INTO BUTACAS VALUES(2,'J',5);
INSERT INTO BUTACAS VALUES(3,'A',5);
INSERT INTO BUTACAS VALUES(3,'B',5);
INSERT INTO BUTACAS VALUES(3,'C',5);
INSERT INTO BUTACAS VALUES(3,'D',5);
INSERT INTO BUTACAS VALUES(3,'E',5);
INSERT INTO BUTACAS VALUES(3,'F',5);
INSERT INTO BUTACAS VALUES(3,'G',5);
INSERT INTO BUTACAS VALUES(3,'H',5);
INSERT INTO BUTACAS VALUES(3,'I',5);
INSERT INTO BUTACAS VALUES(3,'J',5);
INSERT INTO BUTACAS VALUES(4,'A',5);
INSERT INTO BUTACAS VALUES(4,'B',5);
INSERT INTO BUTACAS VALUES(4,'C',5);
INSERT INTO BUTACAS VALUES(4,'D',5);
INSERT INTO BUTACAS VALUES(4,'E',5);
INSERT INTO BUTACAS VALUES(4,'F',5);
INSERT INTO BUTACAS VALUES(4,'G',5);
INSERT INTO BUTACAS VALUES(4,'H',5);
INSERT INTO BUTACAS VALUES(4,'I',5);
INSERT INTO BUTACAS VALUES(4,'J',5);
INSERT INTO BUTACAS VALUES(5,'A',5);
INSERT INTO BUTACAS VALUES(5,'B',5);
INSERT INTO BUTACAS VALUES(5,'C',5);
INSERT INTO BUTACAS VALUES(5,'D',5);
INSERT INTO BUTACAS VALUES(5,'E',5);
INSERT INTO BUTACAS VALUES(5,'F',5);
INSERT INTO BUTACAS VALUES(5,'G',5);
INSERT INTO BUTACAS VALUES(5,'H',5);
INSERT INTO BUTACAS VALUES(5,'I',5);
INSERT INTO BUTACAS VALUES(5,'J',5);
INSERT INTO BUTACAS VALUES(6,'A',5);
INSERT INTO BUTACAS VALUES(6,'B',5);
INSERT INTO BUTACAS VALUES(6,'C',5);
INSERT INTO BUTACAS VALUES(6,'D',5);
INSERT INTO BUTACAS VALUES(6,'E',5);
INSERT INTO BUTACAS VALUES(6,'F',5);
INSERT INTO BUTACAS VALUES(6,'G',5);
INSERT INTO BUTACAS VALUES(6,'H',5);
INSERT INTO BUTACAS VALUES(6,'I',5);
INSERT INTO BUTACAS VALUES(6,'J',5);
INSERT INTO BUTACAS VALUES(7,'A',5);
INSERT INTO BUTACAS VALUES(7,'B',5);
INSERT INTO BUTACAS VALUES(7,'C',5);
INSERT INTO BUTACAS VALUES(7,'D',5);
INSERT INTO BUTACAS VALUES(7,'E',5);
INSERT INTO BUTACAS VALUES(7,'F',5);
INSERT INTO BUTACAS VALUES(7,'G',5);
INSERT INTO BUTACAS VALUES(7,'H',5);
INSERT INTO BUTACAS VALUES(7,'I',5);
INSERT INTO BUTACAS VALUES(7,'J',5);
INSERT INTO BUTACAS VALUES(8,'A',5);
INSERT INTO BUTACAS VALUES(8,'B',5);
INSERT INTO BUTACAS VALUES(8,'C',5);
INSERT INTO BUTACAS VALUES(8,'D',5);
INSERT INTO BUTACAS VALUES(8,'E',5);
INSERT INTO BUTACAS VALUES(8,'F',5);
INSERT INTO BUTACAS VALUES(8,'G',5);
INSERT INTO BUTACAS VALUES(8,'H',5);
INSERT INTO BUTACAS VALUES(8,'I',5);
INSERT INTO BUTACAS VALUES(8,'J',5);


INSERT INTO BUTACAS VALUES(1,'A',6);
INSERT INTO BUTACAS VALUES(1,'B',6);
INSERT INTO BUTACAS VALUES(1,'C',6);
INSERT INTO BUTACAS VALUES(1,'D',6);
INSERT INTO BUTACAS VALUES(1,'E',6);
INSERT INTO BUTACAS VALUES(1,'F',6);
INSERT INTO BUTACAS VALUES(1,'G',6);
INSERT INTO BUTACAS VALUES(1,'H',6);
INSERT INTO BUTACAS VALUES(1,'I',6);
INSERT INTO BUTACAS VALUES(1,'J',6);
INSERT INTO BUTACAS VALUES(2,'A',6);
INSERT INTO BUTACAS VALUES(2,'B',6);
INSERT INTO BUTACAS VALUES(2,'C',6);
INSERT INTO BUTACAS VALUES(2,'D',6);
INSERT INTO BUTACAS VALUES(2,'E',6);
INSERT INTO BUTACAS VALUES(2,'F',6);
INSERT INTO BUTACAS VALUES(2,'G',6);
INSERT INTO BUTACAS VALUES(2,'H',6);
INSERT INTO BUTACAS VALUES(2,'I',6);
INSERT INTO BUTACAS VALUES(2,'J',6);
INSERT INTO BUTACAS VALUES(3,'A',6);
INSERT INTO BUTACAS VALUES(3,'B',6);
INSERT INTO BUTACAS VALUES(3,'C',6);
INSERT INTO BUTACAS VALUES(3,'D',6);
INSERT INTO BUTACAS VALUES(3,'E',6);
INSERT INTO BUTACAS VALUES(3,'F',6);
INSERT INTO BUTACAS VALUES(3,'G',6);
INSERT INTO BUTACAS VALUES(3,'H',6);
INSERT INTO BUTACAS VALUES(3,'I',6);
INSERT INTO BUTACAS VALUES(3,'J',6);
INSERT INTO BUTACAS VALUES(4,'A',6);
INSERT INTO BUTACAS VALUES(4,'B',6);
INSERT INTO BUTACAS VALUES(4,'C',6);
INSERT INTO BUTACAS VALUES(4,'D',6);
INSERT INTO BUTACAS VALUES(4,'E',6);
INSERT INTO BUTACAS VALUES(4,'F',6);
INSERT INTO BUTACAS VALUES(4,'G',6);
INSERT INTO BUTACAS VALUES(4,'H',6);
INSERT INTO BUTACAS VALUES(4,'I',6);
INSERT INTO BUTACAS VALUES(4,'J',6);
INSERT INTO BUTACAS VALUES(5,'A',6);
INSERT INTO BUTACAS VALUES(5,'B',6);
INSERT INTO BUTACAS VALUES(5,'C',6);
INSERT INTO BUTACAS VALUES(5,'D',6);
INSERT INTO BUTACAS VALUES(5,'E',6);
INSERT INTO BUTACAS VALUES(5,'F',6);
INSERT INTO BUTACAS VALUES(5,'G',6);
INSERT INTO BUTACAS VALUES(5,'H',6);
INSERT INTO BUTACAS VALUES(5,'I',6);
INSERT INTO BUTACAS VALUES(5,'J',6);
INSERT INTO BUTACAS VALUES(6,'A',6);
INSERT INTO BUTACAS VALUES(6,'B',6);
INSERT INTO BUTACAS VALUES(6,'C',6);
INSERT INTO BUTACAS VALUES(6,'D',6);
INSERT INTO BUTACAS VALUES(6,'E',6);
INSERT INTO BUTACAS VALUES(6,'F',6);
INSERT INTO BUTACAS VALUES(6,'G',6);
INSERT INTO BUTACAS VALUES(6,'H',6);
INSERT INTO BUTACAS VALUES(6,'I',6);
INSERT INTO BUTACAS VALUES(6,'J',6);
INSERT INTO BUTACAS VALUES(7,'A',6);
INSERT INTO BUTACAS VALUES(7,'B',6);
INSERT INTO BUTACAS VALUES(7,'C',6);
INSERT INTO BUTACAS VALUES(7,'D',6);
INSERT INTO BUTACAS VALUES(7,'E',6);
INSERT INTO BUTACAS VALUES(7,'F',6);
INSERT INTO BUTACAS VALUES(7,'G',6);
INSERT INTO BUTACAS VALUES(7,'H',6);
INSERT INTO BUTACAS VALUES(7,'I',6);
INSERT INTO BUTACAS VALUES(7,'J',6);
INSERT INTO BUTACAS VALUES(8,'A',6);
INSERT INTO BUTACAS VALUES(8,'B',6);
INSERT INTO BUTACAS VALUES(8,'C',6);
INSERT INTO BUTACAS VALUES(8,'D',6);
INSERT INTO BUTACAS VALUES(8,'E',6);
INSERT INTO BUTACAS VALUES(8,'F',6);
INSERT INTO BUTACAS VALUES(8,'G',6);
INSERT INTO BUTACAS VALUES(8,'H',6);
INSERT INTO BUTACAS VALUES(8,'I',6);
INSERT INTO BUTACAS VALUES(8,'J',6);


INSERT INTO BUTACAS VALUES(1,'A',7);
INSERT INTO BUTACAS VALUES(1,'B',7);
INSERT INTO BUTACAS VALUES(1,'C',7);
INSERT INTO BUTACAS VALUES(1,'D',7);
INSERT INTO BUTACAS VALUES(1,'E',7);
INSERT INTO BUTACAS VALUES(1,'F',7);
INSERT INTO BUTACAS VALUES(1,'G',7);
INSERT INTO BUTACAS VALUES(1,'H',7);
INSERT INTO BUTACAS VALUES(1,'I',7);
INSERT INTO BUTACAS VALUES(1,'J',7);
INSERT INTO BUTACAS VALUES(2,'A',7);
INSERT INTO BUTACAS VALUES(2,'B',7);
INSERT INTO BUTACAS VALUES(2,'C',7);
INSERT INTO BUTACAS VALUES(2,'D',7);
INSERT INTO BUTACAS VALUES(2,'E',7);
INSERT INTO BUTACAS VALUES(2,'F',7);
INSERT INTO BUTACAS VALUES(2,'G',7);
INSERT INTO BUTACAS VALUES(2,'H',7);
INSERT INTO BUTACAS VALUES(2,'I',7);
INSERT INTO BUTACAS VALUES(2,'J',7);
INSERT INTO BUTACAS VALUES(3,'A',7);
INSERT INTO BUTACAS VALUES(3,'B',7);
INSERT INTO BUTACAS VALUES(3,'C',7);
INSERT INTO BUTACAS VALUES(3,'D',7);
INSERT INTO BUTACAS VALUES(3,'E',7);
INSERT INTO BUTACAS VALUES(3,'F',7);
INSERT INTO BUTACAS VALUES(3,'G',7);
INSERT INTO BUTACAS VALUES(3,'H',7);
INSERT INTO BUTACAS VALUES(3,'I',7);
INSERT INTO BUTACAS VALUES(3,'J',7);
INSERT INTO BUTACAS VALUES(4,'A',7);
INSERT INTO BUTACAS VALUES(4,'B',7);
INSERT INTO BUTACAS VALUES(4,'C',7);
INSERT INTO BUTACAS VALUES(4,'D',7);
INSERT INTO BUTACAS VALUES(4,'E',7);
INSERT INTO BUTACAS VALUES(4,'F',7);
INSERT INTO BUTACAS VALUES(4,'G',7);
INSERT INTO BUTACAS VALUES(4,'H',7);
INSERT INTO BUTACAS VALUES(4,'I',7);
INSERT INTO BUTACAS VALUES(4,'J',7);
INSERT INTO BUTACAS VALUES(5,'A',7);
INSERT INTO BUTACAS VALUES(5,'B',7);
INSERT INTO BUTACAS VALUES(5,'C',7);
INSERT INTO BUTACAS VALUES(5,'D',7);
INSERT INTO BUTACAS VALUES(5,'E',7);
INSERT INTO BUTACAS VALUES(5,'F',7);
INSERT INTO BUTACAS VALUES(5,'G',7);
INSERT INTO BUTACAS VALUES(5,'H',7);
INSERT INTO BUTACAS VALUES(5,'I',7);
INSERT INTO BUTACAS VALUES(5,'J',7);
INSERT INTO BUTACAS VALUES(6,'A',7);
INSERT INTO BUTACAS VALUES(6,'B',7);
INSERT INTO BUTACAS VALUES(6,'C',7);
INSERT INTO BUTACAS VALUES(6,'D',7);
INSERT INTO BUTACAS VALUES(6,'E',7);
INSERT INTO BUTACAS VALUES(6,'F',7);
INSERT INTO BUTACAS VALUES(6,'G',7);
INSERT INTO BUTACAS VALUES(6,'H',7);
INSERT INTO BUTACAS VALUES(6,'I',7);
INSERT INTO BUTACAS VALUES(6,'J',7);
INSERT INTO BUTACAS VALUES(7,'A',7);
INSERT INTO BUTACAS VALUES(7,'B',7);
INSERT INTO BUTACAS VALUES(7,'C',7);
INSERT INTO BUTACAS VALUES(7,'D',7);
INSERT INTO BUTACAS VALUES(7,'E',7);
INSERT INTO BUTACAS VALUES(7,'F',7);
INSERT INTO BUTACAS VALUES(7,'G',7);
INSERT INTO BUTACAS VALUES(7,'H',7);
INSERT INTO BUTACAS VALUES(7,'I',7);
INSERT INTO BUTACAS VALUES(7,'J',7);
INSERT INTO BUTACAS VALUES(8,'A',7);
INSERT INTO BUTACAS VALUES(8,'B',7);
INSERT INTO BUTACAS VALUES(8,'C',7);
INSERT INTO BUTACAS VALUES(8,'D',7);
INSERT INTO BUTACAS VALUES(8,'E',7);
INSERT INTO BUTACAS VALUES(8,'F',7);
INSERT INTO BUTACAS VALUES(8,'G',7);
INSERT INTO BUTACAS VALUES(8,'H',7);
INSERT INTO BUTACAS VALUES(8,'I',7);
INSERT INTO BUTACAS VALUES(8,'J',7);



CREATE TABLE CARTELERAS(
FECHA_INICIO DATE NOT NULL,
FECHA_FIN DATE NOT NULL,

PRIMARY KEY (FECHA_INICIO, FECHA_FIN)
);

INSERT INTO CARTELERAS VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'));
INSERT INTO CARTELERAS VALUES (STR_TO_DATE('13-06-2019','%d-%m-%Y'), STR_TO_DATE('19-06-2019','%d-%m-%Y'));
INSERT INTO CARTELERAS VALUES (STR_TO_DATE('20-06-2019','%d-%m-%Y'), STR_TO_DATE('26-06-2019','%d-%m-%Y'));
INSERT INTO CARTELERAS VALUES (STR_TO_DATE('27-06-2019','%d-%m-%Y'), STR_TO_DATE('03-07-2019','%d-%m-%Y'));



CREATE TABLE TRANSMITEN(
ID_SALA INT NOT NULL,
ID_PELICULA INT NOT NULL,
HORARIOS VARCHAR(100),

PRIMARY KEY (ID_SALA, ID_PELICULA),
FOREIGN KEY (ID_SALA) REFERENCES SALAS(ID_SALA),
FOREIGN KEY (ID_PELICULA) REFERENCES PELICULAS(ID_PELICULA)
);

INSERT INTO TRANSMITEN VALUES(1,1,'17:30,20:30');
INSERT INTO TRANSMITEN VALUES(1,8,'15:30,23:30');
INSERT INTO TRANSMITEN VALUES(2,2,'17:30,20:30,23:30');
INSERT INTO TRANSMITEN VALUES(3,3,'17:30,20:30,23:30');
INSERT INTO TRANSMITEN VALUES(4,4,'17:30,20:30,23:30');
INSERT INTO TRANSMITEN VALUES(5,5,'17:30,20:30,23:30');
INSERT INTO TRANSMITEN VALUES(6,6,'17:30,20:30,23:30');
INSERT INTO TRANSMITEN VALUES(7,7,'17:30,20:30,23:30');



CREATE TABLE TIENEN(
FECHA_INICIO DATE NOT NULL,
FECHA_FIN DATE NOT NULL,
ID_PELICULA INT NOT NULL,

PRIMARY KEY (FECHA_INICIO, FECHA_FIN, ID_PELICULA),
FOREIGN KEY (FECHA_INICIO, FECHA_FIN) REFERENCES CARTELERAS(FECHA_INICIO, FECHA_FIN),
FOREIGN KEY (ID_PELICULA) REFERENCES PELICULAS(ID_PELICULA)
);

INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),1);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),2);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),3);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),4);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),5);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),6);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),7);
INSERT INTO TIENEN VALUES (STR_TO_DATE('06-06-2019','%d-%m-%Y'), STR_TO_DATE('12-06-2019','%d-%m-%Y'),8);

INSERT INTO TIENEN VALUES (STR_TO_DATE('13-06-2019','%d-%m-%Y'), STR_TO_DATE('19-06-2019','%d-%m-%Y'),9);
INSERT INTO TIENEN VALUES (STR_TO_DATE('13-06-2019','%d-%m-%Y'), STR_TO_DATE('19-06-2019','%d-%m-%Y'),10);
INSERT INTO TIENEN VALUES (STR_TO_DATE('13-06-2019','%d-%m-%Y'), STR_TO_DATE('19-06-2019','%d-%m-%Y'),11);
INSERT INTO TIENEN VALUES (STR_TO_DATE('13-06-2019','%d-%m-%Y'), STR_TO_DATE('19-06-2019','%d-%m-%Y'),12);

INSERT INTO TIENEN VALUES (STR_TO_DATE('20-06-2019','%d-%m-%Y'), STR_TO_DATE('26-06-2019','%d-%m-%Y'),13);
INSERT INTO TIENEN VALUES (STR_TO_DATE('20-06-2019','%d-%m-%Y'), STR_TO_DATE('26-06-2019','%d-%m-%Y'),14);
INSERT INTO TIENEN VALUES (STR_TO_DATE('20-06-2019','%d-%m-%Y'), STR_TO_DATE('26-06-2019','%d-%m-%Y'),15);




CREATE TABLE PERSONAS (
DOC INT,
TIPO_DOC VARCHAR(10),
NOMBRE VARCHAR(50),
APELLIDO VARCHAR(50),
EMAIL VARCHAR(100) NOT NULL,
FECHA_NAC DATE,
TELEFONO VARCHAR(50),
PERSONA_TIPO VARCHAR(50) NOT NULL,

PRIMARY KEY (EMAIL,PERSONA_TIPO)
);

INSERT INTO PERSONAS VALUES (41000000,'DNI','Valeria','Cuevas','cnvale1998@gmail.com',STR_TO_DATE('15-07-1998','%d-%m-%Y'),'2664301232','usuario');
INSERT INTO PERSONAS VALUES (41100000,'DNI','Manuel','Nuñez','manuelnc53@gmail.com',STR_TO_DATE('24-07-1995','%d-%m-%Y'),'2664301232','usuario');

INSERT INTO PERSONAS VALUES (41200000,'DNI','Inalen','Godoy','inag25@gmail.com',STR_TO_DATE('11-06-1997','%d-%m-%Y'),'2664301232','cumpleañero');

INSERT INTO PERSONAS VALUES (41300000,'DNI','Pedro','Ticonna Ramos','pedroltr89@gmail.com',STR_TO_DATE('12-06-1997','%d-%m-%Y'),'2664301232','solicitante');

INSERT INTO PERSONAS VALUES (41400000,'DNI','Leonel','Navarro','dismoi.leo@gmail.com',STR_TO_DATE('13-06-1997','%d-%m-%Y'),'2664301232','solicitante');

INSERT INTO PERSONAS VALUES (41500000,'DNI','Inalen','Godoy','inag25@gmail.com',STR_TO_DATE('14-06-1997','%d-%m-%Y'),'2664301232','suscriptor');

INSERT INTO PERSONAS VALUES (41000000,'DNI','Valeria','Cuevas','cnvale1998@gmail.com',STR_TO_DATE('15-07-1998','%d-%m-%Y'),'2664301232','suscriptor');

CREATE TABLE USUARIOS (
EMAIL VARCHAR(50) NOT NULL,
CONTRASENIA VARCHAR(20) NOT NULL,
CODPOSTAL INT,
DIRECCION VARCHAR(100),

PRIMARY KEY (EMAIL),
FOREIGN KEY (EMAIL) REFERENCES PERSONAS(EMAIL)

);




CREATE TABLE DIAS(
ID_DF INT NOT NULL,
DIA VARCHAR(10) NOT NULL,

PRIMARY KEY (ID_DF)
);



CREATE TABLE SUSCRIPTORES(
EMAIL VARCHAR(50) NOT NULL,
PROFESION VARCHAR(30),
ACOMPANIANTE VARCHAR(20),
ID_DF INT,
HORARIO VARCHAR(20),
GENERO VARCHAR(30),


PRIMARY KEY (EMAIL),
FOREIGN KEY (EMAIL) REFERENCES PERSONAS(EMAIL),
FOREIGN KEY (ID_DF) REFERENCES DIAS(ID_DF)
);


CREATE TABLE SOLICITANTES (
EMAIL VARCHAR(50) NOT NULL,
ESTUDIOS VARCHAR(100),
REFLABORALES TEXT,
REFPERSONALES TEXT,
GENERO VARCHAR(2),
IMAGEN LONGBLOB,

PRIMARY KEY (EMAIL),
FOREIGN KEY (EMAIL) REFERENCES PERSONAS(EMAIL)
);



CREATE TABLE TICKETS(
ID_TICKET INT NOT NULL,
TOTAL FLOAT,
IVA FLOAT,
EMAIL VARCHAR(50) NOT NULL,

PRIMARY KEY (ID_TICKET),
FOREIGN KEY (EMAIL) REFERENCES USUARIOS(EMAIL)
);



CREATE TABLE COMBOS (
ID_COMBO INT NOT NULL,
INCLUYE TEXT,
ID_TICKET INT,

PRIMARY KEY (ID_COMBO),
FOREIGN KEY (ID_TICKET) REFERENCES TICKETS(ID_TICKET)
);


CREATE TABLE BENEFICIOS (
ID_BENEFICIO INT NOT NULL,
NOMBRE VARCHAR(30) NOT NULL,
DESDE DATE,
HASTA DATE,
TIPO VARCHAR(20),
CONDGENERALES TEXT,

PRIMARY KEY (ID_BENEFICIO)
);



CREATE TABLE ENTRADAS (
ID_ENTRADA INT NOT NULL,
PRECIO FLOAT,
FECHA DATE,
MODOPAGO VARCHAR(10),
DESCUENTO FLOAT,
ID_PELICULA INT NOT NULL,
ID_TICKET INT NOT NULL,
ID_BENEFICIO INT,

PRIMARY KEY (ID_ENTRADA),
FOREIGN KEY (ID_PELICULA) REFERENCES PELICULAS(ID_PELICULA),
FOREIGN KEY (ID_TICKET) REFERENCES TICKETS(ID_TICKET),
FOREIGN KEY (ID_BENEFICIO) REFERENCES BENEFICIOS(ID_BENEFICIO)
);



CREATE TABLE PROVINCIAS (
ID_PROVINCIA INT NOT NULL,
NOMBRE_P VARCHAR(50) NOT NULL,

PRIMARY KEY (ID_PROVINCIA)
);



CREATE TABLE CIUDADES (
CIUDAD VARCHAR(100) NOT NULL,
ID_PROVINCIA INT NOT NULL,

PRIMARY KEY (CIUDAD),
FOREIGN KEY (ID_PROVINCIA) REFERENCES PROVINCIAS(ID_PROVINCIA)
);


CREATE TABLE VALIDOS (
ID_COMBO INT NOT NULL,
CIUDAD VARCHAR(100) NOT NULL,

PRIMARY KEY(ID_COMBO, CIUDAD)
);



CREATE TABLE CONSULTAS(
ID_CONSULTA INT NOT NULL,
DETALLE VARCHAR(100),
MOTIVO VARCHAR(30),
EMAIL VARCHAR(50) NOT NULL,

PRIMARY KEY(ID_CONSULTA),
FOREIGN KEY (EMAIL) REFERENCES PERSONAS(EMAIL)

);




