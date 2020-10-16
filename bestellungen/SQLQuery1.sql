SELECT   dbo.Mitglied.Nachname, dbo.Mitglied.Vorname, dbo.AboArt.Bezeichnung
FROM     dbo.Mitglied INNER JOIN
         dbo.Ort ON dbo.Mitglied.OrtID = dbo.Ort.OrtID INNER JOIN
         dbo.Anrede ON dbo.Mitglied.AnredeID = dbo.Anrede.AnredeID INNER JOIN
         dbo.AboArt ON dbo.Mitglied.AboArtID = dbo.AboArt.AboArtID


SELECT   Nachname, Vorname, Bezeichnung, Ortschaft
FROM     Mitglied JOIN
         Ort ON Mitglied.OrtID = Ort.OrtID JOIN
         Anrede ON Mitglied.AnredeID = Anrede.AnredeID JOIN
         AboArt ON Mitglied.AboArtID = AboArt.AboArtID