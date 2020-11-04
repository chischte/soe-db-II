use tontraeger

select * from Titel

select * from Interpret

select * from Musikstil

select * from SpeicherMedium

select * from Lagerort

select AlbumTitel, MusikStil, SongTitel, Dauer
from Album inner join
	MusikStil on Album.MusikStilID = MusikStil.MusikStilID inner join
	AlbumTitel on Album.AlbumID = AlbumTitel.AlbumID inner join
	Titel on AlbumTitel.TitelID = Titel.TitelID




