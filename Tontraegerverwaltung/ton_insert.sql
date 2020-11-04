use tontraeger

-- Interpret
set identity_insert Interpret on;
go
insert into Interpret
(
	InterpretID,
	InterpretName
)
values
(
	1,
	'stephan eicher'
);
go
set identity_insert Interpret off;
go



/*
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
*/
