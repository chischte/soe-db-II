use abo

create index idx_mitarbeiter_name
	on Mitglied (Nachname, Vorname);

