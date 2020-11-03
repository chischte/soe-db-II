use abo

select * from Mitglied

select * from Ort
Order by OrtID


SELECT        dbo.Aboart.*, dbo.Anrede.*, dbo.Mitglied.*, dbo.Ort.*
FROM            dbo.Aboart INNER JOIN
                         dbo.Mitglied ON dbo.Aboart.AboartID = dbo.Mitglied.AboartID INNER JOIN
                         dbo.Anrede ON dbo.Mitglied.AnredeID = dbo.Anrede.AnredeID INNER JOIN
                        dbo.Ort ON dbo.Mitglied.OrtID = dbo.Ort.OrtID


-- Gleiche Liste wie XLS:

SELECT Mitglied.MitgliedID, AnredeText, Nachname, Vorname, Ort.PLZ, Ort.OrtName, Eintritt, Abobezeichnung, Abogebuehr
FROM Mitglied INNER JOIN
	Anrede ON Mitglied.AnredeID = Anrede.AnredeID INNER JOIN
	Ort ON Mitglied.OrtID = Ort.OrtID INNER JOIN
	Aboart ON Mitglied.AboartID = Aboart.AboartID
ORDER BY MitgliedID

--DELETE FROM MITGLIED
--WHERE MitgliedID='55'