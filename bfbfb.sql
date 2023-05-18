CREATE SCHEMA `bdproyecto` ;
use bdproyecto;

CREATE TABLE Empleado
(
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	Empleado_PrimerNombre		VARCHAR(20) NOT NULL,
	Empleado_PrimerApellido		VARCHAR (20) NOT NULL,
	Empleado_Genero			CHAR(1) NOT NULL,
	Empleado_Activo			CHAR (1) NOT NULL,
	Empleado_GrupoPersonal		VARCHAR (20) NOT NULL,
	Empleado_NombreTrabajo	VARCHAR(50) NOT NULL,

	CONSTRAINT PK_Empleado PRIMARY KEY (Empleado_ID)	
);


CREATE TABLE Usuario
(
	Usuario_ID			NUMERIC (15,0) NOT NULL,
    Usuario_num			NUMERIC(15,0),
	CONSTRAINT PK_Usuario PRIMARY KEY (Usuario_ID)
);


CREATE TABLE Articulo
(
	Articulo_ID			VARCHAR(30)NOT NULL,
	Articulo_Tipo 			VARCHAR(200) NOT NULL,
	Articulo_Titulo			VARCHAR(200) NOT NULL,

	CONSTRAINT PK_Articulo PRIMARY KEY (Articulo_ID)
);

CREATE TABLE CursoCursado
(
	CursoCursado_ID			INT(15) NOT NULL,
	CursoCursado_Calificacion 	INT(10) ,
	CursoCursado_EstadoProgreso	VARCHAR(150) ,
    CursoCursado_FechaFin		VARCHAR(150) ,
	CursoCursado_HorasTotales	VARCHAR(50) ,
    
	CONSTRAINT PK_CursoCursado PRIMARY KEY(CursoCursado_ID)
);



CREATE TABLE Curso
(
	Curso_ID			varchar(30) NOT NULL,
	Curso_Activo			CHAR(1) NOT NULL,
	Curso_Origen			VARCHAR(15) ,
	Curso_Descripcion		TEXT ,
	Curso_AreaConocimiento		VARCHAR(20) ,
	Curso_PropositoFormacion	VARCHAR(20) ,
	Curso_TipoContenido		VARCHAR(20) ,
	Curso_Tipo			VARCHAR(20) ,
	Curso_Titulo			VARCHAR(140) ,
	Curso_Contenido			TEXT ,
	Curso_FechaCreacion		TEXT,
    Curso_FechaPublicacion	TEXT,
	Curso_Idioma			VARCHAR (10) ,
	Curso_Costo			varchar(15),
	Curso_Proovedor			VARCHAR(50),
	Curso_Experto			VARCHAR(50),
	Curso_Responsable		VARCHAR(50),
	Curso_Duracion			varchar(10),
	Curso_HorasCredito		varchar(10),
	
	CONSTRAINT PK_Curso PRIMARY KEY(Curso_ID)
);





CREATE TABLE CategoriaTematica
(
	CategoriaTematica_ID		VARCHAR(20) NOT NULL,
	CategoriaTematica_Descripcion 	VARCHAR(100) NOT NULL,
	CONSTRAINT PK_CategoriaTematica PRIMARY KEY(CategoriaTematica_ID)
);



CREATE TABLE Area
(
	Area_ID			VARCHAR(20) NOT NULL,
	Area_Vicepresidencia	NVARCHAR(250) NOT NULL,
	Area_NombreArea	NVARCHAR(250) NOT NULL,
	CONSTRAINT PK_Area PRIMARY KEY (Area_ID)
);



CREATE TABLE RecursosHumanos
(
	UsuarioHR			VARCHAR(25) NOT NULL,
	RecursosHumanos_PrimerNombre	VARCHAR(50) NOT NULL,
	RecursosHumanos_Apellido	VARCHAR(50) NOT NUll,
	CONSTRAINT PK_RecursosHumanos PRIMARY KEY(UsuarioHR)
);


CREATE TABLE Supervisor
(
	Supervisor_ID			VARCHAR(20) NOT NULL,
	Supervisor_Nombre		VARCHAR(50) NOT NULL,
	Supervisor_Apellido		VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Supervisor PRIMARY KEY(Supervisor_ID)
);


CREATE TABLE Compania
(
	Compania_ID			VARCHAR(20) NOT NULL,
	Compania_Nombre			VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Compania PRIMARY KEY(Compania_ID)
);


CREATE TABLE UbicacionPrincipal
(
	UbicacionPrincipal_ID		VARCHAR(20) NOT NULL,
	UbicacionPrincipal_Nombre	VARCHAR(100) NOT NULL,
	CONSTRAINT PK_UbicacionPrincipal PRIMARY KEY(UbicacionPrincipal_ID)
);

CREATE TABLE Ciudad
(
	Ciudad_ID		VARCHAR(20) NOT NULL,
	Ciudad_Nombre	VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Ciudad PRIMARY KEY(Ciudad_ID)
);

CREATE TABLE Estado
(
	Estado_ID		VARCHAR(20) NOT NULL,
	Estado_Nombre		VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Estado PRIMARY KEY(Estado_ID)
);

CREATE TABLE Pais
(
	Pais_ID		VARCHAR(20) NOT NULL,
	Pais_Nombre	VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Pais PRIMARY KEY(Pais_ID)
);


