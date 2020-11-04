If(db_id('tontraeger') IS NULL)
begin
	create database tontraeger;
end
go

use tontraeger;
go


-- Table Interpret
--drop table interpret;
create table Interpret
(
	InterpretID		int identity(1,1)	not null,
	InterpretName	varchar(50)			not null
	constraint PK_Interpret primary key (InterpretID)
);
go



-- Table MusikStil
create table MusikStil
(
	MusikStilID		int identity(1,1)	not null,
	MusikStil		varchar(50)					,
	constraint PK_MusikStil primary key (MusikStilID)
);
go
-- Table Titel

-- Table SpeicherMedium

-- Table Lagerort


create table Titel
(
	TitelID			int	identity(1,1)	not null,
	SongTitel		varchar(50)			not null,
	Dauer			time,							--23:59:59.9999
	InterpretID		int,
	TitelBewertung	decimal
	constraint PK_Titel primary key (TitelID)
);
go

-- Table Album
-- Table AlbumTitel


