CREATE SCHEMA `bdproyecto` ;
use bdproyecto;

CREATE TABLE Empleado
(
	Empleado_ID			int(15) NOT NULL,
	Empleado_PrimerNombre		text NOT NULL,
	Empleado_PrimerApellido		text NOT NULL,
	Empleado_Genero			VARCHAR(1) NOT NULL,
	Empleado_Activo			VARCHAR (1) NOT NULL,
	Empleado_GrupoPersonal		VARCHAR (20) NOT NULL,
	Empleado_NombreTrabajo	text NOT NULL,
	Usuario_ID			int(20) NOT NULL,
    estado_ID			VARCHAR(10) NOT NULL,
    cursocursado_id		varchar(40) not null,
    
    CONSTRAINT PK_Empleado PRIMARY KEY (Empleado_ID)
);


CREATE TABLE Usuario
(
	Usuario_ID			int (20) NOT NULL,
	Empleado_ID			int(15) NOT NULL,
	CONSTRAINT PK_Usuario PRIMARY KEY (Usuario_ID)
);

CREATE TABLE CursoCursado
(
	CursoCursado_ID			varchar (40) not null,
    cursocursado_nombre			text,
    CursoCursado_Calificacion 	varchar(10) ,
	CursoCursado_EstadoProgreso	VARCHAR(150) ,
    CursoCursado_FechaFin		VARCHAR(150) ,
	CursoCursado_HorasTotales	VARCHAR(50) ,
    PAIS_ID					VARCHAR(10) NOT NULL,
    Empleado_ID			int(15) NOT NULL ,
    
	CONSTRAINT PK_CursoCursado PRIMARY KEY(CursoCursado_ID)
	
);

CREATE TABLE Curso
(
	Curso_ID			varchar(100) NOT NULL,
	Curso_Activo			CHAR(1) ,
    curso_origen			varchar(100),
	Curso_DescripcionCategoriatematica		text,
	Curso_AreaConocimiento		text,
	Curso_PropositoFormacion text,
	Curso_TipoContenido		text,
	Curso_Tipoart			text,
	Curso_Tituloart			text ,
	Curso_Contenidocurso 	text,
    Curso_Descripcion		text,
	Curso_FechaCreacion		varchar(100),
	Curso_Idioma			varchar(100),
	Curso_Costo			varchar(100),
	Curso_Proovedor			VARCHAR(100)NULL,
	Curso_Responsable		VARCHAR(50)NULL,
	Curso_Duracion			varchar(100),
	Curso_HorasCredito		varchar(100),
	
	CONSTRAINT PK_Curso PRIMARY KEY(Curso_ID)
);

CREATE TABLE Area
(
	area_id					int auto_increment,
	Area_Vicepresidencia	NVARCHAR(100) NOT NULL,
	Area_NombreArea			NVARCHAR(100) NOT NULL,
	CONSTRAINT PK_Area PRIMARY KEY (area_id),
	Empleado_ID			int(15) NOT NULL
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
	Supervisor_ID			INT NOT NULL,
	Supervisor_Nombre		VARCHAR(50) NOT NULL,
	Supervisor_Apellido		VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Supervisor PRIMARY KEY(Supervisor_ID)
);


CREATE TABLE Compania
(
	Compania_ID			int auto_increment,
	Compania_Nombre			VARCHAR(50) NOT NULL,
	Area_ID					int NOT NULL,
	UbicacionPrincipal_ID		VARCHAR(20) NOT NULL,
	CONSTRAINT PK_Compania PRIMARY KEY(Compania_ID)
);


CREATE TABLE UbicacionPrincipal
(
	UbicacionPrincipal_ID		int auto_increment,
	UbicacionPrincipal_Nombre	VARCHAR(30),
	Ciudad_ID		int NOT NULL,
	CONSTRAINT PK_UbicacionPrincipal PRIMARY KEY(UbicacionPrincipal_ID)
);

CREATE TABLE Ciudad
(
	Ciudad_ID		int auto_increment,
	Estado_ID		int NOT NULL,
	Ciudad_Nombre	VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Ciudad PRIMARY KEY(Ciudad_ID)
);

CREATE TABLE Estado
(
	Estado_ID		int auto_increment,
	Pais_ID		VARCHAR(20) NOT NULL,
	Estado_Nombre		VARCHAR(30),
	CONSTRAINT PK_Estado PRIMARY KEY(Estado_ID)
	-- CONSTRAINT FK_Pais_Cod FOREIGN KEY(Pais_ID) REFERENCES Pais (Pais_ID)
);

CREATE TABLE Pais
(
	Pais_ID		VARCHAR(20) NOT NULL,
	Pais_Nombre	VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Pais PRIMARY KEY(Pais_ID)
);


-- CursoCursado
ALTER TABLE CursoCursado ADD CONSTRAINT FK_Empleado_Cod3 FOREIGN KEY (Empleado_ID) REFERENCES Empleado (Empleado_ID);
/**ALTER TABLE CursoCursado ADD CONSTRAINT FK_Curso_Cod3 FOREIGN KEY (Curso_ID) REFERENCES Curso (Curso_ID);**/

-- Compania
ALTER TABLE Compania ADD CONSTRAINT FK_Area_Cod1 FOREIGN KEY (Area_ID) REFERENCES Area (Area_id);
ALTER TABLE Compania ADD CONSTRAINT FK_UbicacionPrincipal_Cod FOREIGN KEY (UbicacionPrincipal_ID) REFERENCES UbicacionPrincipal (UbicacionPrincipal_ID);

-- UbicacionPrincipal
ALTER TABLE UbicacionPrincipal ADD CONSTRAINT FK_Ciudad_Cod FOREIGN KEY (Ciudad_ID) REFERENCES Ciudad (Ciudad_ID);

-- Ciudad
ALTER TABLE Ciudad ADD CONSTRAINT FK_Estado_Cod FOREIGN KEY (Estado_ID) REFERENCES Estado (Estado_ID);

-- Estado
ALTER TABLE Estado ADD CONSTRAINT FK_Pais_Cod FOREIGN KEY (Pais_ID) REFERENCES Pais (Pais_ID);