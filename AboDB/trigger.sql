create trigger trgOrtInsertUpdateDelete
	on Ort
	after insert, update, delete
as
	set nocount on
	print 'Trigger ausgeführt';

	select * from inserted;
	select * from deleted;
go

	insert into ort ([PLZ], [Ortschaft])
	values (5401, 'Baden'),
			(5431, 'Wettingen');
go