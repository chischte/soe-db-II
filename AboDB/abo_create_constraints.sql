
use aboadressen; --bei dozent "abo"

--Unique Constraints

alter table Anrede
	add constraint UQ_Anrede_AnredeText unique(AnredeText);

alter table Ort
	add constraint UQ_Ort_PlzOrt unique(plz,Ortschaft);

alter table AboArt
	add constraint UQ_Aboart_Bezeichnung unique(bezeichnung)

-- Check constraints

alter table Ort
	add constraint CK_Ort_PLZ check (PLZ between 1000 and 9999);

-- Default constraint

alter table AboArt
	add constraint DF_AboArt_Gebuehr
	default 0.0 for Gebuehr;
