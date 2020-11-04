If(db_id('tontraeger') IS NULL)
begin
	create database tontraeger;
end
go

use tontraeger;
go


-- Table Interpret
create table Interpret
(
	InterpretID		int identity(1,1)	not null,
	InterpretName	varchar(50)			not null
);
go



-- Table MusikStil

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


