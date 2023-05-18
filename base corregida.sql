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
	Usuario_ID			NUMERIC (15,0) NOT NULL,
	Compania_ID			VARCHAR(20) NOT NULL,
	Area_ID			VARCHAR(20) NOT NULL,
	Supervisor_ID			VARCHAR(20) NOT NULL,
	Curso_ID			NUMERIC(15,0) NOT NULL,
	Articulo_ID			NUMERIC(15,0) NOT NULL,
	

	CONSTRAINT PK_Empleado PRIMARY KEY (Empleado_ID),
	CONSTRAINT FK_Usuario_Cod FOREIGN KEY(Usuario_ID) REFERENCES Usuario (Usuario_ID),
	CONSTRAINT FK_Compañia_Cod FOREIGN KEY(Compania_ID) REFERENCES Compania (Compañia_ID),
	CONSTRAINT FK_Area_Cod FOREIGN KEY(Area_ID) REFERENCES Area (Area_ID),
	CONSTRAINT FK_Supervisor_Cod FOREIGN KEY(Supervisor_ID) REFERENCES Supervisor (Supervisor_ID),
	CONSTRAINT FK_Curso_Cod FOREIGN KEY(Curso_ID) REFERENCES Curso (Curso_ID),
	CONSTRAINT FK_Articulo_Cod FOREIGN KEY(Articulo_ID) REFERENCES Articulo (Articulo_ID)
	
);


CREATE TABLE Usuario
(
	Usuario_ID			NUMERIC (15,0) NOT NULL,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	CONSTRAINT PK_Usuario PRIMARY KEY (Usuario_ID),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID)
);


CREATE TABLE Articulo
(
	Articulo_ID			VARCHAR(30)NOT NULL,
	Articulo_Tipo 			VARCHAR(50) NOT NULL,
	Articulo_Titulo			VARCHAR(50) NOT NULL,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	Curso_ID			NUMERIC(15,0) NOT NULL,
	CategoriaTematica_ID		VARCHAR(20) NOT NULL,
		

	CONSTRAINT PK_Articulo PRIMARY KEY (Articulo_ID),
	CONSTRAINT FK_CategoriaTematica_Cod FOREIGN KEY(CategoriaTematica_ID) REFERENCES CategoriaTematica (CategoriaTematica_ID),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID),
	CONSTRAINT FK_Curso_Cod FOREIGN KEY(Curso_ID) REFERENCES Curso (Curso_ID)
);

CREATE TABLE CursoCursado
(
	CursoCursado_ID			NUMERIC(15,0) NOT NULL,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	Curso_ID			NUMERIC(15,0) NOT NULL,
    CursoCursado_Calificacion 	INT(10) ,
	CursoCursado_EstadoProgreso	VARCHAR(150) ,
    CursoCursado_FechaFin		VARCHAR(150) ,
	CursoCursado_HorasTotales	VARCHAR(50) ,
    
	CONSTRAINT PK_CursoCursado PRIMARY KEY(CursoCursado_ID),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID),
	CONSTRAINT FK_Curso_Cod FOREIGN KEY(Curso_ID) REFERENCES Curso (Curso_ID)
	
);



CREATE TABLE Curso
(
	Curso_ID			varchar(30) NOT NULL,
	Curso_Activo			CHAR(1) NOT NULL,
	Curso_Origen			VARCHAR(15),
	Curso_Descripcion		text,
	Curso_AreaConocimiento		VARCHAR(20) NOT NULL,
	Curso_PropositoFormacion	VARCHAR(20) NOT NULL,
	Curso_TipoContenido		VARCHAR(20) NOT NULL,
	Curso_Tipo			VARCHAR(20) NOT NULL,
	Curso_Titulo			VARCHAR(15) NOT NULL,
	Curso_Contenido			text,
	Curso_FechaCreacion		text,
	Curso_Idioma			text,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	Curso_Costo			NUMERIC(15,0)NULL,
	Curso_Proovedor			VARCHAR(50)NULL,
	Curso_Experto			VARCHAR(50)NULL,
	Curso_Responsable		VARCHAR(50)NULL,
	Curso_Duracion			NUMERIC(4,0)NULL,
	Curso_HorasCredito		NUMERIC(4,0)NULL,
	
	CONSTRAINT PK_Curso PRIMARY KEY(Curso_ID),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID)
);




CREATE TABLE CategoriaTematica
(
	CategoriaTematica_ID		VARCHAR(20) NOT NULL,
	CategoriaTematica_Descripcion 	VARCHAR(100) NOT NULL,
	CONSTRAINT PK_CategoriaTematica PRIMARY KEY(Categoria_ID)
);



CREATE TABLE Area
(
	Area_ID					VARCHAR(20) NOT NULL,
	Area_Vicepresidencia	NVARCHAR(250) NOT NULL,
	Area_NombreArea			NVARCHAR(250) NOT NULL,
	CONSTRAINT PK_Area PRIMARY KEY (Area_ID),
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID)
);



CREATE TABLE RecursosHumanos
(
	UsuarioHR			VARCHAR(25) NOT NULL,
	RecursosHumanos_PrimerNombre	VARCHAR(50) NOT NULL,
	RecursosHumanos_Apellido	VARCHAR(50) NOT NUll,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	CONSTRAINT PK_RecursosHumanos PRIMARY KEY(UsuarioHR),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID)
);


CREATE TABLE Supervisor
(
	Supervisor_ID			INT NOT NULL,
	Supervisor_Nombre		VARCHAR(50) NOT NULL,
	Supervisor_Apellido		VARCHAR(50) NOT NULL,
	Empleado_ID			NUMERIC(15,0) NOT NULL,
	CONSTRAINT PK_Supervisor PRIMARY KEY(Supervisor_ID),
	CONSTRAINT FK_Empleado_Cod FOREIGN KEY(Empleado_ID) REFERENCES Empleado (Empleado_ID)
);


CREATE TABLE Compania
(
	Compania_ID			VARCHAR(20) NOT NULL,
	Compania_Nombre			VARCHAR(50) NOT NULL,
	Area_ID			VARCHAR(20) NOT NULL,
	UbicacionPrincipal_ID		VARCHAR(20) NOT NULL,
	CONSTRAINT PK_Compania PRIMARY KEY(Compania_ID),
	CONSTRAINT FK_Area_Cod FOREIGN KEY(Area_ID) REFERENCES Area (Area_ID),
	CONSTRAINT FK_UbicacionPrincipal_Cod FOREIGN KEY(UbicacionPrincipal_ID) REFERENCES UbicacionPrincipal (UbicacionPrincipal_ID)
);


CREATE TABLE UbicacionPrincipal
(
	UbicacionPrincipal_ID		VARCHAR(20) NOT NULL,
	UbicacionPrincipal_Nombre	VARCHAR(30) NOT NULL,
	Ciudad_ID		VARCHAR(20) NOT NULL,
	CONSTRAINT PK_UbicacionPrincipal PRIMARY KEY(UbicacionPrincipal_ID),
	CONSTRAINT FK_Ciudad_Cod FOREIGN KEY(Ciudad_ID) REFERENCES Ciudad (Ciudad_ID)
);

CREATE TABLE Ciudad
(
	Ciudad_ID		VARCHAR(20) NOT NULL,
	Estado_ID		VARCHAR(20) NOT NULL,
	Ciudad_Nombre	VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Ciudad PRIMARY KEY(Ciudad_ID),
	CONSTRAINT FK_Estado_Cod FOREIGN KEY(Estado_ID) REFERENCES Estado (Estado_ID)
);

CREATE TABLE Estado
(
	Estado_ID		VARCHAR(20) NOT NULL,
	Pais_ID		VARCHAR(20) NOT NULL,
	Estado_Nombre		VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Estado PRIMARY KEY(Estado_ID),
	CONSTRAINT FK_Pais_Cod FOREIGN KEY(Pais_ID) REFERENCES Pais (Pais_ID)
);

CREATE TABLE Pais
(
	Pais_ID		VARCHAR(20) NOT NULL,
	Pais_Nombre	VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Pais PRIMARY KEY(Pais_ID)
);


