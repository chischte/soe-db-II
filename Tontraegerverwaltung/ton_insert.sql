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
),
(
	2,
	'roxette'
),
(
	3,
	'die prinzen'
),
(
	4,
	'ace of base'
),
(
	5,
	'nimm zwei'
);
go
set identity_insert Interpret off;
go

-- MusikStil
set identity_insert Musikstil on;
go
insert into MusikStil
(
	MusikStilID,
	MusikStil
)
values
(
	1,
	'pop'
),

(
	2,
	'accappella'
),
(
	3,
	'kabarett rock'
);
go
set identity_insert MusikStil off;
go

-- SpeicherMedium
set identity_insert SpeicherMedium on;
go
insert into SpeicherMedium
(
	SpeicherMediumID,
	MediumName
)
values
(
	1,
	'cd'
),
(
	2,
	'mc'
);

go
set identity_insert SpeicherMedium off;
go

-- Lagerort
set identity_insert Lagerort on;
go
insert into Lagerort
(
	LagerortID,
	LagerOrtBezeichnung
)
values
(
	1,
	'cd-ständer'
),
(
	2,
	'kasten'
);
set identity_insert Lagerort off;
go

-- Titel
set identity_insert Titel on;
go
insert into Titel
(
	TitelID,
	SongTitel,
	Dauer,
	InterpretID,
	TitelBewertung
)
values
(
	1,
	'i tell this night',
	'00:04:52',
	1,
	5
),
(
	2,
	'two people in a room',
	'00:04:08',
	1,
	5.5
),
(
	3,
	'tu tournes mon coeur',
	'00:04:43',
	1,
	4.5
);
go
set identity_insert Titel off;
go


-- Album
set identity_insert Album on;
go
insert into Album
(
	AlbumId,
	AlbumTitel,
	MusikStilID,
	SpeicherMediumID,
	LagerortID,
	Albumbewertung
	
)
values
(
	1,
	'i tell this night',
	1,
	1,
	1,
	5
);
go
set identity_insert Album off;
go


-- AlbumTitel
set identity_insert AlbumTitel on;
go
insert into AlbumTitel
(
	AlbumTitelID,
	AlbumID,
	TitelID
)
values
(
	1,
	1,
	1
),
(
	2,
	1,
	2
),
(
	3,
	1,
	3
);

go
set identity_insert AlbumTitel off;
go



