use abo

SELECT	Mitglied.MitgliedID, Mitglied.AnredeID, AboArt.Bezeichnung
FROM    AboArt INNER JOIN
		Mitglied ON AboArt.AboArtID = Mitglied.AboArtID INNER JOIN
        Anrede ON Mitglied.AnredeID = Anrede.AnredeID INNER JOIN
        Ort ON Mitglied.OrtID = Ort.OrtID