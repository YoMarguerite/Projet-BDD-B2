
CREATE TRIGGER EchangeAvion 
   ON  Vols
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	if((select Passagers from Avion where idAvion=
	(select idAvion from inserted))
	<
	(select count(*) from Billets b 
	join Voyages_has_Vols vv on b.idVoyage = vv.idVoyage 
	where vv.idVol=(select idVol from inserted)))
	begin
		rollback
	end

END
GO
