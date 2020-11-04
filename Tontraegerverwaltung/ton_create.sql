

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


-- Table SpeicherMedium
create table SpeicherMedium
(
	SpeicherMediumID	int identity(1,1)	not null,
	MediumName			varchar(50)			not null
	constraint PK_SpeicherMedium primary key (SpeicherMediumID)
);
go


-- Table Lagerort
create Table Lagerort
(
	LagerortID			int identity(1,1)	not null,
	LagerOrtBezeichnung	varchar(50)			not null
	constraint PK_Lagerort primary key (LagerortID)
);
go

-- Table Titel
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
create table Album
(
	AlbumID				int identity(1,1)	not null,
	AlbumTitel			varchar(50)			not null,
	MusikStilID			int,
	SpeicherMediumID	int					not null,
	LagerortID			int					not null,
	Albumbewertung		int
	constraint PK_Album primary key (AlbumID)
);
go
-- Table AlbumTitel
create table AlbumTitel
(
	AlbumTitelID		int identity(1,1) not null,
	AlbumID				int not null,
	TitelID				int not null
	constraint PK_AlbumTitel primary key (AlbumTitelID)
);
go


-- Table Titel
alter table Titel
	add constraint FK_InterpretID foreign key (InterpretID)
		references Interpret (InterpretID) on delete set null;

-- Table Album
alter table Album
	add constraint FK_MusikStilID foreign key (MusikStilID)
		references MusikStil (MusikStilID) on delete set null;
go

alter table Album
	add constraint FK_SpeicherMediumID foreign key (SpeicherMediumID)
		references SpeicherMedium (SpeicherMediumID) on delete cascade;
go

alter table Album
	add constraint FK_LagerortID foreign key (LagerortID)
		references Lagerort (LagerortID) on delete cascade;
go


-- Table AlbumTitel
alter table AlbumTitel
	add constraint FK_AlbumID foreign key (AlbumID)
		references Album (AlbumID) on delete cascade;
go

alter table AlbumTitel
	add constraint FK_TitelID foreign key (TitelID)
		references Titel (TitelID) on delete cascade;
go
