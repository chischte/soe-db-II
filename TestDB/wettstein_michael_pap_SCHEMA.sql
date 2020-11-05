If(db_id('Papeterie') IS NULL)
begin
	create database Papeterie;
end
go

use Papeterie;
go

-- Ort
create table Ort
(
	OrtID	int identity(1,1) not null,
	PLZ		int,
	OrtName	varchar(50) not null
	constraint PK_Ort primary key (OrtID)
);
go
-- Rubrik
create table Rubrik
(
	RubrikID	int identity(1,1)  not null,
	RubrikName	varchar(50)			not null
	constraint PK_Rubrik primary key (RubrikID)
);
go
-- Artikel
create table Artikel
(
	ArtikelID			int identity(1,1) not null,
	Artikelbezeichnung	varchar(50)	not null,
	RubrikID			int
	constraint PK_Artikel primary key (ArtikelID)
);
go
-- Kunde
create table Kunde
(
	KdNr		int identity(1,1) not null,
	Vorname		varchar(50) not null,
	Nachname	varchar(50) not null,
	Strasse		varchar(50),
	Hausnummer	varchar(50),
	OrtID		int
	constraint PK_Kunde primary key (KdNr)
);
go
-- Bestellung
create table Bestellung
(
	BestellungsID	int identity(1,1) not null,
	KdNr			int not null,
	Bestelldatum	date,
	Rabatt			decimal (3,2)
	constraint PK_Bestellung primary key (BestellungsID)
	);
go
-- Bestellposition
create table Bestellposition
(
	BestellpositionID	int identity(1,1) not null,
	BestellungsID		int not null,
	ArtikelID			int not null,
	Anzahl				int not null
	constraint PK_Bestellposition primary key (BestellpositionID)
);
go

-- FREMDSCHLÜSSEL ---------------------

-- Artikel
alter Table Artikel
	add constraint FK_RubrikID foreign key (RubrikID)
		references Rubrik (RubrikID) on delete cascade
go

-- Kunde
alter table Kunde
	add constraint FK_OrtID foreign key (OrtID)
		references Ort (OrtID) on delete set null
go

-- Bestellung
alter table Bestellung
	add constraint FK_KdNr foreign key (KdNr)
		references Kunde (KdNr)
go
-- Bestellposition
alter table Bestellposition
	add constraint FK_BestellungsID foreign key (BestellungsID)
		references Bestellung (BestellungsID),
	constraint FK_ArtikelID foreign key (ArtikelID)
		references Artikel (ArtikelID)
go


