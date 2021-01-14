-- -------------------------------------------------------
-- Buch-Autor DB
--
-- Beispiel Datens�tze
-- 
-- -------------------------------------------------------

use BuchAutorDB;

insert into buch.tblBank (BLZ, Bank)
	values ('44050199', 'Sparkasse Dortmund');
go

insert into buch.tblBank (BLZ, Bank)
	values ('59351040', 'Sparkasse Merzig-Wadern');
go

insert into buch.tblBank (BLZ, Bank)
	values ('42050000', 'Sparkasse Gelsenkirchen');
go

-- Buch hinzuf�gen
INSERT INTO buch.tblBuch 
	VALUES ('3-89842-141-1', 'SELECT * FROM SQL Server 2000', 49.90); 
 
INSERT INTO buch.tblBuch (ISBN, Titel) 
	VALUES ('3-89842-129-5', 'VB.NET'); 
 
INSERT INTO buch.tblBuch 
	VALUES ('3-89842-662-9', 'Visual C#', NULL); 
 
INSERT INTO buch.tblBuch 
	VALUES ( '3-89842-585-X', 'Visual Basic .NET', DEFAULT); 

-- Autor hinzuf�gen 
INSERT INTO buch.tblAutor 
	VALUES ('Hans Willi', 'Kremer', NULL, NULL); 
 
INSERT INTO buch.tblAutor (Vorname, Nachname) 
	VALUES ('Andreas', 'K�hnel');

-- Hier gibt es ein Fehler
INSERT INTO buch.tblAutor (Vorname, Nachname, KontoNr) 
VALUES ('Hans', 'Meier', 'ABCDEFG');

-- Buch-Autor hinzuf�gen

select * from buch.tblAutorBuch;


-- Testlauf

-- Testlauf, Check constraints gibt fehler
INSERT INTO buch.tblAutorBuch([ID], [ISBN], [Anteil])
VALUES (2, '3-89842-141-1', 110);


INSERT INTO buch.tblAutorBuch([ID], [ISBN], [Anteil])
VALUES (1, '3-89842-141-1', 10);

-- Hier gibt es Fehler
INSERT INTO buch.tblAutorBuch([ID], [ISBN], [Anteil])
VALUES (2, '3-89842-141-1', 95);