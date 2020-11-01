use abo

create index IX_mitglied_ort
	on Mitglied(OrtID);

create index idx_mitglied_aboID
	on Mitglied(AboArtID);

alter index all on Mitglied rebuild;

create index idx_ortort
	on ort(Ortschaft);

alter index all on ort rebuild;

--Beispiel vorname und nachname suchen

create index idx_MitgliedVornameNachname
	on Mitglied(Nachname, Vorname);


select nachname, vorname
	from mitglied	
	where nachname = 'Pozzi';

	select * from mitglied
	for xml auto

select * from mitglied
	for json auto



