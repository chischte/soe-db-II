use Abo

print 'Anrede werden eingefügt...';
go

-- Anreden erfassen
SET IDENTITY_INSERT Anrede ON;  
go

insert into Anrede (AnredeID, AnredeText)
		values	(1, 'Frau'),
				(2, 'Herr');
go
SET IDENTITY_INSERT Anrede OFF;  


-- Ortschaften erfassen:

SET IDENTITY_INSERT Ort ON;  
go
insert into Ort(OrtID, PLZ, OrtName)
	values	(1, 8000, 'Zürich'),
			(2, 8021, 'Zürich'),
			(3, 8048, 'Zürich'),
			(4, 3000, 'Bern'),
			(5, 4000, 'Basel');
go
SET IDENTITY_INSERT Ort OFF;  

-- Aboarten erfassen:

SET IDENTITY_INSERT AboArt ON;  
go
insert into AboArt(AboartID, Abobezeichnung, Abogebuehr)
		values	(1, 'Student', 500.0),
				(2, 'Monatsabo', 150.0),
				(3, 'Jahresabo', 1000.0);
go
SET IDENTITY_INSERT AboArt OFF;  
go


-- Mitglieder eintragen:


SET IDENTITY_INSERT Mitglied ON;
go

insert into Mitglied(	MitgliedID,
						AnredeID,
						OrtID,
						AboartID,
						Vorname,
						Nachname,
						Eintritt)

			values(		33,
						2,
						1,
						1,
						'Balmelli',
						'Marco',
						convert(date, '01.01.1990',104))

SET IDENTITY_INSERT Mitglied OFF
go