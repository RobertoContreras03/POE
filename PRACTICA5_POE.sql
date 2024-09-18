/*1. Tabla Books:
o Instrucciones:
▪ Llena la siguiente tabla con al menos 5 registros.
o Consultas:
*/



CREATE TABLE Books(
ID_LIBRO INT PRIMARY KEY,
TITULO NVARCHAR(100),
AUTOR NVARCHAR(100),
AÑO_PUBLICACION INT,
GENERO NVARCHAR(50)
);

INSERT INTO Books (ID_LIBRO , TITULO , AUTOR , AÑO_PUBLICACION , GENERO)
VALUES
(1, 'PATRIA' , 'ROBERT HARRIS' , 1989 , 'UCRONIA' )
(2, 'EL HOMBRE EN EL CASTILLO' , 'HAROLD MCMILAN' , 1948 , 'UCRONIA' ),
(3, 'FATHERLAND' , 'ANTHONY EDEN' , 2003 , 'ROMANTICO' ),
(4, 'PRISION BREAK' , 'PAUL SCHEURING' , 2007 , 'POLICIACO' ) , 
(5, 'PATRIA' , 'ROBERT HARRIS' , 1989 , 'DRAMA' );

/* ▪ Realiza un SELECT para consultar los datos la tablas. */
SELECT * FROM Books;
UPDATE Books 

/*▪ Realiza un UPDATE para modificar uno de los registros insertados. */
SET AUTOR = 'ROBERT HARRIS'
WHERE ID_LIBRO = 1;
 
/* ▪ Realiza un DELETE para eliminar uno de los registros insertados. */
 DELETE FROM Books
 WHERE ID_LIBRO = 3  ; 


/* 2. Tabla Members:
o Instrucciones:
▪ Llena la siguiente tabla con al menos 5 registros.
o Consultas:

*/


CREATE TABLE Members (
MIEMBRO_ID INT PRIMARY KEY , 
NOMBRE NVARCHAR(50),
APELLIDO NVARCHAR(50), 
FECHA_AFILIACION DATE , 
TIPO_MIEMBRO NVARCHAR(50)
)

INSERT INTO Members(MIEMBRO_ID , NOMBRE , APELLIDO , FECHA_AFILIACION , TIPO_MIEMBRO)
VALUES 
(6, 'ROBERTO' , 'CONTRERAS' , '2024-01-01' , 'ADMINISTRADOR' ) ,
(7, 'ISAIAS' , 'FLORES' , '2020-07-07' , 'ADMINISTRADOR' ),
(8, 'ERNESTO' , 'GRANADOS' , '2023-05-05' , 'GERENTE' ),
(9, 'HAYDEE' , 'AYALA' , '2021-02-02' , 'GERENTE' ) , 
(10, 'OSCAR' , 'TORRES' , '2024-02-02' , 'AUDITOR INTERNO' );

/*▪ Realiza un SELECT para consultar los datos la tablas. */
SELECT * FROM Members;

/*▪ Realiza un UPDATE para modificar uno de los registros insertados. */
UPDATE Members 
SET TIPO_MIEMBRO = 'ADMINISTRADOR'
WHERE MIEMBRO_ID = 7; 

/*▪ Realiza un DELETE para eliminar uno de los registros insertados. */

DELETE FROM Members
WHERE MIEMBRO_ID = 6;

/*

Tabla Loans:
o Instrucciones:
▪ Llena la siguiente tabla con al menos 5 registros.
o Consultas:



*/

CREATE TABLE Loans (
PRESTAMO_ID INT PRIMARY KEY , 
LIBRO_ID INT , 
MIEMBRO_ID INT ,
PRESTAMO_FECHA DATE , 
RETURN_FECHA DATE 
);
INSERT INTO Loans (PRESTAMO_ID, LIBRO_ID, MIEMBRO_ID,PRESTAMO_FECHA,RETURN_FECHA)
VALUES
(1, 1, 1, '2023-01-10', '2023-01-20'),
(2, 2, 2, '2023-02-15', '2023-02-25'),
(3, 3, 3, '2023-03-05', '2023-03-15'),
(4, 4, 4, '2023-04-10', '2023-04-20'),
(5, 5, 5, '2023-05-01', '2023-05-11');

/* ▪ Realiza un SELECT para consultar los datos la tablas. */
SELECT * FROM Loans;

/*
▪ Realiza un UPDATE para modificar uno de los registros insertados.  */ 
UPDATE Loans
SET RETURN_FECHA = '2023-01-25'
WHERE PRESTAMO_ID = 1; 

/*▪ Realiza un DELETE para eliminar uno de los registros insertados. */
DELETE FROM Loans
WHERE PRESTAMO_ID = 4;
