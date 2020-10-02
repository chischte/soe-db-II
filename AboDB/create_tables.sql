drop database aboadressen

create database aboadressen;
go

use aboadressen;
go

create table Mitglieder
(
MitgliederID int identity(1,1) not null,
AnredeID     int               not null,
Name		 varchar(50)       not null,
Adresse      varchar(50)       not null,
Gebdatum     date              null,
constraint PK_Mitglied primary key(MitgliederID)
);
go

create table Anrede
(
AnredeID     int identity(1,1) not null,
Anrede       varchar(50)    not null,
constraint PK_AnredeID primary key (AnredeID)
);
go

alter table Mitglieder
  add constraint FK_Anrede foreign key (AnredeID)
  references Anrede (AnredeID) on delete cascade;
  
