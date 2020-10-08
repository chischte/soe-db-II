-- DropAboTables.sql
--
-- Autor		: Lukas M�ller
-- Projekt		: Juventus
-- Version		: 1.0
-- 
-- Change log
-- 09/12/2016	LUK	Erstellt
-- 

use Abo;

-- Constraints l�schen (Step 1)
alter table Mitglied
	drop constraint if exists FK_Mitglied_AboArt,
	constraint FK_Mitglied_Anrede,
	constraint FK_Mitglied_Ort;

go

-- Tabellen l�schen (Step 2)
drop table if exists AboArt;
drop table if exists Anrede;
drop table if exists Ort;
drop table if exists Mitglied;