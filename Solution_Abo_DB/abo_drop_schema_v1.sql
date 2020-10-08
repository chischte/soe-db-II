-- abo_drop.sql
--
-- Autor		: Lukas M�ller
-- Projekt		: Juventus
-- Version		: 1.0
-- 
-- Change log
-- 21/12/2019	LUK	Erstellt
-- 

use Abo;

-- Constraints l�schen
alter table Mitglied
	drop constraint if exists FK_Mitglied_AboArt,
	constraint FK_Mitglied_Anrede,
	constraint FK_Mitglied_Ort;
go

-- Tabellen l�schen
drop table if exists Mitglied;
drop table if exists AboArt;
drop table if exists Anrede;
drop table if exists Ort;
go
