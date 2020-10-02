create database isa;
go --unterteilen in "batches" spezifisch von mssql, kann oft auch weggelassen werden

use isa;
go

--create tables

create table person
(
	PersonId    int identity(1,1)  not null, --start1 increment 1, primary key not null
	PersonName  varchar(50)        not null,
	Adresse     varchar(50)        not null,
	Gebdatum	date			   null,
	constraint PK_Person primary key (PersonID)
	--...erzeugt den Primary key; constraint = "zwang",
);
go

create table dozent
(
	PersonID         int		 not null, --hier ohne autoinkrement!
	Biographie		 varchar(50) not null,
	HonorarProTag    varchar(50) not null, default 0.0,
	Gebdatum	date			   null,
	constraint PK_Dozent key (PersonID)
	--...erzeugt den Primary key; constraint = "zwang",
);
go

-- create database
CREATE DATABASE ISA;
GO

USE ISA;
GO

-- create tables
CREATE TABLE Person 
(
    PersonID		INT		IDENTITY(1,1)	NOT NULL,
    PersonName		VARCHAR(50)				NOT NULL,
    Adresse			VARCHAR(50)				NOT NULL,
    Gebdatum		DATE					NULL,
    CONSTRAINT PK_Person PRIMARY KEY (PersonID)
);
GO

CREATE TABLE Dozent 
(
    PersonID		INT				NOT NULL,
    Biographie		VARCHAR(50)		NULL,
    HonorarProTag	DECIMAL(7,2)	NULL	DEFAULT 0.0,
    CONSTRAINT PK_Dozent PRIMARY KEY (PersonID)
);
GO

CREATE TABLE Kunde 
(
    PersonID		INT				NOT NULL,
    Funktion		VARCHAR(40)		NULL,
    Umsatz			DECIMAL(7,2)	NULL,
    CONSTRAINT PK_Kunde PRIMARY KEY (PersonID)
);
GO

-- Foreign Key Constraints
ALTER TABLE Dozent 
	ADD CONSTRAINT FK_PersonDozent FOREIGN KEY (PersonID) 
		REFERENCES Person (PersonID) ON DELETE CASCADE;
GO
ALTER TABLE Kunde 
	ADD CONSTRAINT FK_PersonKunde FOREIGN KEY (PersonID) 
		REFERENCES Person (PersonID) ON DELETE CASCADE;
GO
  