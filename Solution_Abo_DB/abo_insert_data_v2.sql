-- abo_insert_v2.sql
--
-- Autor		: Lukas Müller
-- Projekt		: Juventus
-- Version		: 1.0
-- 
-- Change log
-- 21/12/2019	LUK	Erstellt
-- 

use Abo;
go

print 'Anrede werden eingefügt...';
go

insert into Anrede (AnredeText)
		values	('Frau'),
				('Herr');
go

print 'Aboarten werden eingefügt...';
go

insert into AboArt(Bezeichnung, Gebuehr)
		values	('Student', 500.0),
				('Monatsabo', 150.0),
				('Jahresabo', 1000.0);
go

print 'Ortschaften werden eingefügt...';
go

insert into Ort(PLZ, Ortschaft)
	values	(8000, 'Zürich'),
			(8021, 'Zürich'),
			(8048, 'Zürich'),
			(3000, 'Bern'),
			(4000, 'Basel');
go
print 'Mitglieder werden eingefügt...';
go

insert into Mitglied(	MitgliedID, 
						AnredeID, 
						AboArtID, 
						OrtID, 
						Nachname, 
						Vorname, 
						Eintritt)
				values (33,
						(select AnredeID from Anrede where AnredeText = 'Herr'),
						(select AboArtID from AboArt where Bezeichnung = 'Student'),
						(select OrtID from Ort where PLZ = '8000'),
						'Balmelli',
						'Marco',
						convert(date, '01.01.1990', 104)),

						(44,
						(select AnredeID from Anrede where AnredeText = 'Frau'),
						(select AboArtID from AboArt where Bezeichnung = 'Jahresabo'),
						(select OrtID from Ort where PLZ = '8021'),
						'Bürgin',
						'Sandra',
						convert(date, '01.05.1989', 104)),

						(55,
						(select AnredeID from Anrede where AnredeText = 'Herr'),
						(select AboArtID from AboArt where Bezeichnung = 'Monatsabo'),
						(select OrtID from Ort where PLZ = '8048'),
						'Emmenegger',
						'Reto',
						convert(date, '01.10.1994', 104)),

						(66,
						(select AnredeID from Anrede where AnredeText = 'Herr'),
						(select AboArtID from AboArt where Bezeichnung = 'Jahresabo'),
						(select OrtID from Ort where PLZ = '8021'),
						'Keller',
						'Georg',
						convert(date, '30.11.1996', 104)),	
											
						(77,
						(select AnredeID from Anrede where AnredeText = 'Frau'),
						(select AboArtID from AboArt where Bezeichnung = 'Jahresabo'),
						(select OrtID from Ort where PLZ = '3000'),
						'Müller',
						'Karina',
						convert(date, '30.08.2005', 104)),

						(88,
						(select AnredeID from Anrede where AnredeText = 'Herr'),
						(select AboArtID from AboArt where Bezeichnung = 'Student'),
						(select OrtID from Ort where PLZ = '4000'),
						'Groz',
						'Thomas',
						convert(date, '15.07.2005', 104)),

						(99,
						(select AnredeID from Anrede where AnredeText = 'Frau'),
						(select AboArtID from AboArt where Bezeichnung = 'Monatsabo'),
						(select OrtID from Ort where PLZ = '3000'),
						'Pozzi',
						'Isabelle',
						convert(date, '15.07.2005', 104));
go

print 'Daten Daten wurden eingefügt';
go
