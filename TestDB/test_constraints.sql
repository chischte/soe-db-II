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

-- Unique constraints
alter table Interpret
	add constraint UQ_InterpretName unique(InterpretName);



-- Default constraint
--alter table AboArt  
--  ADD CONSTRAINT DF_AboArt_Gebuehr  
--   DEFAULT 0.0 FOR AboGebuehr;  