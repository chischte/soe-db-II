-- abo_constraints.sql
--
-- Autor		: Lukas Müller
-- Projekt		: Juventus
-- Version		: 1.0
-- 
-- Change log
-- 21/12/2019	LUK	Erstellt
-- 

use Abo;

-- Unique constraints
alter table Anrede
	add constraint UQ_Anrede_AnredeText unique(AnredeText);

alter table Ort
	add constraint UQ_Ort_PlzOrt unique(plz,ortschaft);

alter table AboArt
	add constraint UQ_Aboart_Bezeichnung unique(bezeichnung);

-- Check constraints
alter table Ort
	add constraint CK_Ort_PLZ check (PLZ between 1000 and 9999);

-- Default constraint
alter table AboArt  
   ADD CONSTRAINT DF_AboArt_Gebuehr  
   DEFAULT 0.0 FOR Gebuehr;  
