use abo

SELECT	AnredeText, Mitglied.MitgliedID, Mitglied.AnredeID, AboArt.Bezeichnung
FROM    AboArt INNER JOIN
		Mitglied ON AboArt.AboArtID = Mitglied.AboArtID INNER JOIN
		Anrede ON Mitglied.AnredeID = Anrede.AnredeID INNER JOIN
		Ort ON Mitglied.OrtID = Ort.OrtID


SELECT  Mitglied.MitgliedID, Mitglied.Nachname, Mitglied.Vorname, Anrede.AnredeText
FROM    AboArt INNER JOIN
		Mitglied ON AboArt.AboArtID = Mitglied.AboArtID INNER JOIN
		Anrede ON Mitglied.AnredeID = Anrede.AnredeID INNER JOIN
		Ort ON Mitglied.OrtID = Ort.OrtID
		WHERE  (Anrede.AnredeText = 'Herr')





