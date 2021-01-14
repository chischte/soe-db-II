-- -------------------------------------------------------
-- Buch-Autor DB
--
-- Trigger Programmierung
-- Konkretes Beispiel
-- -------------------------------------------------------

-- -------------------------------------------------------
-- A2.1 (Testlauf)
-- Die Summe der Anteile von Autoren an einem Buch darf 
-- die 100% Marke nicht überschreiten.
-- -------------------------------------------------------

-- Testlauf , I.O.
insert into buch.tblAutorBuch
values (1, '3-89842-141-1', 10);

-- Testlauf, Check constraints gibt fehler
insert into buch.tblAutorBuch
values (2, '3-89842-141-1', 110);

-- Hier gibt es Fehler, Trigger
insert into buch.tblAutorBuch
values (2, '3-89842-141-1', 95);



-- -------------------------------------------------------
-- A2.2 (Testlauf)
-- Die Summe der Anteile von Autoren an einem Buch darf 
-- die 100% Marke nicht überschreiten.
--
-- Lösung mit INSTEAD OF Trigger
-- -------------------------------------------------------

-- Testlauf, I.O.?
insert into buch.tblAutorBuch
values (1, '3-89842-141-1', 10);