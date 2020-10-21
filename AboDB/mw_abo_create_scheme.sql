
if(db_id('abo') is null)
begin
create database Abo;
end
go

use Abo;
go


drop table Mitglied;
go

create table Mitglied
(
    MitgliedID      int identity(1,1)   not null,
    AnredeID        int,
    OrtID           int                 not null,
    AboID           int,
    Vorname         varchar(20)         not null,
    Nachname        varchar(20)         not null,
    Eintritt        date                not null

    constraint PK_Mitglied primary key(MitgliedID)
);
go

drop table Aboart;
go

create table Aboart
(
    AboartID        int identity(1,1)   not null,
    Abobezeichnung  varchar(20)         not null,
    Abogebuehr      decimal(6,2)        
    
    constraint PK_Aboart primary key(AboartID)
);
go

create table Ort
(
    OrtID       int  identity(1,1)	not null,
    OrtName     varchar(20)			not null,
    PLZ			int,
	
	constraint PK_Ort primary key(OrtID)
);
go
			
create table Anrede
(
	AnredeID	int identity(1,1)	not null,
	AnredeText	varchar(20)			not null

	constraint PK_Anrede primary key(AnredeID)
);
go
