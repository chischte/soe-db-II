-- -------------------------------------------------------
-- Buch-Autor DB
--
-- Trigger Programmierung
-- Konkretes Beispiel
-- -------------------------------------------------------
use BuchAutorDB;

-- -------------------------------------------------------
-- A2.1
-- Die Summe der Anteile von Autoren an einem Buch darf 
-- die 100% Marke nicht überschreiten.
-- -------------------------------------------------------

-- drop if exists
if (object_id('buch.trigTblAutorBuchInsert', 'TR') is not null)
begin
	drop trigger buch.trigTblAutorBuchInsert;
end;
go

create trigger buch.trigTblAutorBuchInsert
	on buch.tblAutorBuch
	after insert
as
begin
	declare @ID smallint;
	declare @ISBN char(13);
	declare @Summe decimal(5,2);

	select @ID = ID, @ISBN = ISBN from inserted;

	select @Summe = SUM(Anteil) from tblAutorBuch
		where ISBN = @ISBN;

	if @Summe > 100
	begin
		delete from tblAutorBuch
		where ID = @ID 
			and ISBN = @ISBN;
		raiserror ('Summe der Anteile zu hoch!',16,1);
	end;
end;



-- -------------------------------------------------------
-- A2.2
-- Die Summe der Anteile von Autoren an einem Buch darf 
-- die 100% Marke nicht überschreiten.
--
-- Lösung mit INSTEAD OF Trigger
-- -------------------------------------------------------

-- drop if exists
if (object_id('buch.trigTblAutorBuchInstead', 'TR') is not null)
begin
	drop trigger buch.trigTblAutorBuchInstead;
end;
go

-- Instead of Trigger anlegen
create trigger trigTblAutorBuchInstead
	on buch.tblAutorBuch
	instead of insert
AS
begin
	declare @ISBN char(13);
	declare @Anteil decimal(5,2);
	declare @Summe decimal(5,2);

	select @ISBN = ISBN from inserted;
	select @Anteil = Anteil from inserted;
	select @Summe = SUM(Anteil) + @Anteil from tblAutorBuch
		where ISBN = @ISBN;

	if @Summe > 100
		raiserror ('Summe der Anteile zu hoch!',16,1);
	else
		insert into tblAutorBuch
			select * FROM inserted;
end
go
