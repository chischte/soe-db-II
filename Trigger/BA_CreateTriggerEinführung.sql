-- -------------------------------------------------------
-- Buch-Autor DB
--
-- Beispiel Trigger Programmierung
-- -------------------------------------------------------

use [BuchAutorDB]

-- -------------------------------------------------------- 
-- A1.1
-- Insert Trigger, Print Anweisung
-- -------------------------------------------------------- 

-- drop if exists
if (object_id('buch.trigTblBankInsert', 'TR') is not null)
begin
	drop trigger buch.trigTblBankInsert;
end;
go

create trigger buch.trigTblBankInsert
	on buch.tblBank
	after insert
as
begin
	print 'INSERT-Trigger ausgelöst';
end
go


-- -------------------------------------------------------- 
-- A1.2
-- Insert und Delete Trigger, Print Anweisung
-- -------------------------------------------------------- 

-- drop if exists
if (object_id('buch.trigTblBankInsertDelete', 'TR') is not null)
begin
	drop trigger buch.trigTblBankInsertDelete;
end;
go

-- Insert und Delete Trigger, Print Anweisung
create trigger buch.trigTblBankInsertDelete
	on buch.tblBank
	after insert, delete
as
begin
	print 'INSERT/DELETE-Trigger ausgelöst';
end


-- -------------------------------------------------------- 
-- A1.3
-- Insert, Update u. Delete Trigger, Inhalt von deleted, inserted ausgeben
-- -------------------------------------------------------- 

-- drop if exists
if (object_id('buch.trigTblBankInsertUpateDelete', 'TR') is not null)
begin
	drop trigger buch.trigTblBankInsertUpateDelete;
end;
go

create trigger buch.trigTblBankInsertUpateDelete
	on buch.tblBank
	after insert, update, delete
as
begin
	select * from inserted;
	select * from deleted;
end
go
