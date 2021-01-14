create trigger trgOrtInsertUpdateDelete
	on Ort
	after insert, update, delete
as
	set nocount on --deaktivert die "(n rows affected)" Mitteilung
	print 'Trigger ausgeführt';

	select * from inserted;
	select * from deleted;
go
    insert into ort ([PLZ], [Ortschaft])
    values (5401, 'Baden'),
           (5431, 'Wettingen');
go

update ort
	set Ortschaft = 'Baden 2'
	where plz= 5401;
go