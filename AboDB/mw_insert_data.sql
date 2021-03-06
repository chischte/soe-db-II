use Abo

print 'Anrede werden eingef�gt...';
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
	values	(1, 8000, 'Z�rich'),
			(2, 8021, 'Z�rich'),
			(3, 8048, 'Z�rich'),
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
						Nachname,
						Vorname,
						Eintritt)

			values	(	66,
						2,
						3,
						3,
						'Keller',
						'Georg',
						convert(date,'30.11.1996',104)),
					(	33,
						2,
						1,
						1,
						'Balmelli',
						'Marco',
						convert(date, '01.01.1990',104)),
					(	44,
						1,
						2,
						3,
						'B�rgin',
						'Sandra',
						convert(date, '01.05.1981',104)),
					(	55,
						2,
						3,
						2,
						'Emmenegger',
						'Reto',
						convert(date, '01.10.1994',104))


SET IDENTITY_INSERT Mitglied OFF
go

