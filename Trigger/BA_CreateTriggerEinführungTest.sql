-- -------------------------------------------------------
-- Buch-Autor DB
--
-- Beispiel Trigger Programmierung
-- Testlauf
-- -------------------------------------------------------

use [BuchAutorDB]

-- -------------------------------------------------------- 
-- A1.1 (Testlauf)
-- Insert Trigger, Print Anweisung
-- -------------------------------------------------------- 
insert into buch.tblBank (BLZ, Bank)
	values ('44050199', 'Sparkasse Dortmund');
go

-- -------------------------------------------------------- 
-- A1.2 (Testlauf)
-- Insert, Delete Trigger, Print Anweisung
-- -------------------------------------------------------- 
insert into buch.tblBank (BLZ, Bank)
	values ('59351040', 'Sparkasse Merzig-Wadern');
go

-- -------------------------------------------------------- 
-- A1.3 (Testlauf)
-- Insert, Update u. Delete Trigger, Inhalt von deleted, inserted ausgeben
-- -------------------------------------------------------- 
insert into buch.tblBank (BLZ, Bank)
	values ('42050000', 'Sparkasse Gelsenkirchen');
go

-- Testlauf mit Update
update buch.tblBank
	set blz = '42050001'
	where blz = '42050000';
go

-- Testlauf mit Delete
delete from buch.tblBank
where BLZ = '42050001';
go
