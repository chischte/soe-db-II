use Papeterie

-- Ort
set identity_insert Ort on;
go
insert into Ort
(
	OrtID,
	PLZ,
	OrtName
)
values
(
	1,
	8000,
	'Zürich'
);
go
set identity_insert Ort off;
go


-- Rubrik
set identity_insert Rubrik on;
go
insert into Rubrik
(
	RubrikID,
	RubrikName
)
values
(
	3,
	'Bedruckbares'
),
(
	5,
	'Verbrauchsmaterialien'
),
(
	2,
	'Schreibgeräte'
);
go
set identity_insert Rubrik off;
go


-- Artikel
set identity_insert Artikel on;
go
insert into Artikel
(
	ArtikelID,
	Artikelbezeichnung,
	RubrikID
)
values
(
	25,
	'Papier A4',
	3
),
(
	28,
	'Patrone',
	5
),
(
	35,
	'Stifte',
	2
);
go
set identity_insert Artikel off;
go


-- Kunde
set identity_insert Kunde on;
go
insert into Kunde
(
	KdNr,
	Vorname,
	Nachname,
	Strasse,
	Hausnummer,
	OrtID
)
values
(
	181,
	'Frank',
	'Meier',
	'Birkenalle',
	'117',
	1
);
go
set identity_insert Kunde off;
go


-- Bestellung
set identity_insert Bestellung on;
go
insert into Bestellung
(
	BestellungsID,
	KdNr,
	Bestelldatum,
	Rabatt
)
values
(
	1,
	181,
	convert(date,'15.03.2016',104),
	0.0
);
go
set identity_insert Bestellung off;
go


-- Bestellposition
set identity_insert Bestellposition on;
go
insert into Bestellposition
(
	BestellpositionID,
	BestellungsID,
	ArtikelID,
	Anzahl
)
values
(
	1,
	1,
	25,
	2
),
(
	2,
	1,
	28,
	1
),
(
	3,
	1,
	35,
	3
);
go
set identity_insert Bestellposition off;
go

