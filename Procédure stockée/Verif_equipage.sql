CREATE PROCEDURE Verif_equipage (@idVol INT, @result TINYINT output)
as
begin

	set @result = 0

	if (SELECT count(*) FROM Vols_has_Employes
	where idVol=@idVol and Poste='Pilote') != 0

		begin

			if (SELECT count(*) FROM Vols_has_Employes
			where idVol=@idVol and Poste='Co-pilote') != 0

				begin

					if (SELECT count(*) FROM Vols_has_Employes
					where idVol=@idVol and (Poste='Steward' or Poste='Hotesse')) != 0

						begin
						set @result = 1
						end

					end
			end

			if (@result = 1)
				begin
				print 'prêt !'
				end

				else
				begin
				print 'pas prêt !'
				end
	end
return
go

-- test

use ProjetTrans_BDD

exec Verif_equipage 2, 0


--    SET NOCOUNT ON;

--    SELECT * FROM Customers ORDER BY CompanyName asc 
--    OFFSET @nbParPage*(@page-1) Rows
--        Fetch Next @nbParPage Rows ONLY; 
--END
--GO

--petit rappel :
--déclarer une variable
--declare @i int
--affecter une variable
--set @i=5
--affecter avec un select
--select @i=categoryId from category where categoryName='Beverages'
;