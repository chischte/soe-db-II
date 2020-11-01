select * from Mitglied

select * from Ort


SELECT        dbo.Aboart.*, dbo.Anrede.*, dbo.Mitglied.*, dbo.Ort.*
FROM            dbo.Aboart INNER JOIN
                         dbo.Mitglied ON dbo.Aboart.AboartID = dbo.Mitglied.AboartID INNER JOIN
                         dbo.Anrede ON dbo.Mitglied.AnredeID = dbo.Anrede.AnredeID INNER JOIN
                         dbo.Ort ON dbo.Mitglied.OrtID = dbo.Ort.OrtID