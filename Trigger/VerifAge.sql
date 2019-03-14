
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER VerifAge
   ON  Billets
   AFTER INSERT,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	if(select Tarif from Tarifs where idTarif=(select TOP 1 idTarif from inserted))='enfant'
	begin
		if(select DateDiff(YEAR, Naissance, getDate()) from Clients where idClient=(select TOP 1 idClient from Billets))>=10
		begin
			rollback
		end
	end

END
GO
