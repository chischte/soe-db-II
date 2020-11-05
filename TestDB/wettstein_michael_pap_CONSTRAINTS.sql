use Papeterie

-- Ort
-- Check constraints
alter table Ort
	add constraint CK_Ort_PLZ check (PLZ between 1000 and 9999);
-- Rubrik

-- Artikel

-- Kunde
alter table Kunde
	add constraint UQ_Kunde unique(Vorname,Nachname,Strasse,Hausnummer,OrtID);

-- Bestellung
alter table Bestellung
	add constraint CK_Rabatt check (Rabatt between 0 and 100);
go
-- Bestellposition


