-- abo_insert_v1.sql
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

-- identity einfügen
SET IDENTITY_INSERT Anrede ON;  
go

insert into Anrede (AnredeID, AnredeText)
		values	(1, 'Frau'),
				(2, 'Herr');
go
SET IDENTITY_INSERT Anrede OFF;  
go

print 'Aboarten werden eingefügt...';
go

SET IDENTITY_INSERT AboArt ON;  
go
insert into AboArt(AboArtID, Bezeichnung, Gebuehr)
		values	(1, 'Student', 500.0),
				(2, 'Monatsabo', 150.0),
				(3, 'Jahresabo', 1000.0);
go
SET IDENTITY_INSERT AboArt OFF;  
go

print 'Ortschaften werden eingefügt...';
go

SET IDENTITY_INSERT Ort ON;  
go
insert into Ort(OrtID, PLZ, Ortschaft)
	values	(1, 8000, 'Zürich'),
			(2, 8021, 'Zürich'),
			(3, 8048, 'Zürich'),
			(4, 3000, 'Bern'),
			(5, 4000, 'Basel');
go
SET IDENTITY_INSERT Ort OFF;  
go

print 'Mitglieder werden eingefügt...';
go

SET IDENTITY_INSERT Mitglied ON;  
go
insert into Mitglied(	MitgliedID, 
						AnredeID, 
						AboArtID, 
						OrtID, 
						Nachname, 
						Vorname, 
						Eintritt)
				values (33,
						2,
						1,
						1,
						'Balmelli',
						'Marco',
						convert(date, '01.01.1990', 104)),

						(44,
						1,
						3,
						2,
						'Bürgin',
						'Sandra',
						convert(date, '01.05.1989', 104)),

						(55,
						2,
						2,
						3,
						'Emmenegger',
						'Reto',
						convert(date, '01.10.1994', 104)),

						(66,
						2,
						3,
						2,
						'Keller',
						'Georg',
						convert(date, '30.11.1996', 104)),	
											
						(77,
						1,
						3,
						4,
						'Müller',
						'Karina',
						convert(date, '30.08.2005', 104)),

						(88,
						2,
						1,
						5,
						'Groz',
						'Thomas',
						convert(date, '15.07.2005', 104)),

						(99,
						1,
						2,
						4,
						'Pozzi',
						'Isabelle',
						convert(date, '15.07.2005', 104));
SET IDENTITY_INSERT Mitglied OFF;  
go

print 'Alle Daten wurden eingefügt';
go
