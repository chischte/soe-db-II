-- abo_create.sql
--
-- Autor		: Lukas Müller
-- Projekt		: Juventus
-- Version		: 1.0
-- 
-- Change log
-- 21/12/2019	LUK	Erstellt
-- 

-- Datenbank erstellen
If(db_id(N'Abo') IS NULL)
begin
	create database Abo;
end
go;

-- DB anwählen
use Abo;
go;

-- Tabelle Anrede erstellen
create table Anrede
(
	AnredeID	int		identity(1,1)	not null,
	AnredeText	varchar(20)				not null
	CONSTRAINT PK_Anrede PRIMARY KEY (AnredeID) 
);
go;

-- Tabelle Ort erstellen
create table Ort
(
	OrtID		int	identity(1,1)	not null,
	PLZ			int					not null,
	Ortschaft	varchar(80)			not null
	CONSTRAINT PK_Ort PRIMARY KEY (OrtID) 
);
go;

-- Tabelle AboArt erstellen
create table AboArt
(
	AboArtID	int		identity(1,1)	not null,
	Bezeichnung	varchar(50)				not null,
	Gebuehr		decimal(7,2)			not null
	CONSTRAINT PK_AboArt PRIMARY KEY (AboArtID) 
);
go;

-- Tabelle Mitglied erstellen
create table Mitglied
(
	MitgliedID	int	identity(1,1)	not null,
	AnredeID	int			not null,
	OrtID		int			not null,
	AboArtID	int			not null,
	Nachname	varchar(50) not null,
	Vorname		varchar(50)	not null,
	Eintritt	Date		null
	CONSTRAINT PK_Mitglied PRIMARY KEY (MitgliedID),
	CONSTRAINT FK_Mitglied_Anrede FOREIGN KEY(AnredeID)
		REFERENCES Anrede(AnredeID),
	CONSTRAINT FK_Mitglied_Ort FOREIGN KEY(OrtID)
		REFERENCES Ort(OrtID),
	CONSTRAINT FK_Mitglied_AboArt FOREIGN KEY(AboArtID)
		REFERENCES AboArt(AboArtID)
);
go;

