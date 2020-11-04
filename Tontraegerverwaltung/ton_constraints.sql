use Tontraeger

-- Check constraint
alter table Titel
	add constraint CK_TitelBewertung check (TitelBewertung between 1 and 6);
go

-- Test check constraint 
insert into Titel
(
	SongTitel,
	Dauer,
	InterpretID,
	TitelBewertung
)
values
(
	'This is not a song',
	'00:03:45',
	1,
	7 -- --> Ok, gibt einen Error
);
go

insert


-- Unique constraints
alter table Anrede
	add constraint UQ_Anrede_AnredeText unique(AnredeText);

alter table Ort
	add constraint UQ_OrtName_PlzOrt unique(plz,ortname);

alter table AboArt
	add constraint UQ_Aboart_Bezeichnung unique(abobezeichnung);

-- Check constraints
alter table Ort
	add constraint CK_Ort_PLZ check (PLZ between 1000 and 9999);

-- Default constraint
alter table AboArt  
   ADD CONSTRAINT DF_AboArt_Gebuehr  
   DEFAULT 0.0 FOR AboGebuehr;  