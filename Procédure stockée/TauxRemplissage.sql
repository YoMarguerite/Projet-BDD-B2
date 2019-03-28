
CREATE PROCEDURE TauxRemplissage
	@idvol int
AS
	select (count(*)*100.00/(select Passagers from Avion a
				join Vols v on a.idAvion=v.idAvion
				where v.idVol=@idvol ))
	from Billets b 
	join Voyages_has_Vols vv 
	on b.idVoyage=vv.idVoyage 
	where vv.idVol=@idvol
GO
