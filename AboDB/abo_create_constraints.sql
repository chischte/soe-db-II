
use aboadressen; --bei dozent "abo"

--Unique Constraints

alter table Anrede
	add constraint UQ_Anrede_AnredeText unique(AnredeText);

alter table Ort
	add constraint UQ_Ort_PlzOrt unique(plz,Ortschaft);

alter table AboArt
	add constraint UQ_Aboart_Bezeichnung unique(bezeichnung)
