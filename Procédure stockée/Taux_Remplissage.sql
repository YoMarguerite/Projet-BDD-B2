
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Taux_Remplissage
	@idAvion INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT SUM(vc.Taux_Remplissage)/(select Passagers from Avion where idAvion=@idAvion)
	from Vols_has_Classes vc
	where (select v.idAvion
			from Vols v
			where v.idVol=vc.idVol)=@idAvion
END
GO
