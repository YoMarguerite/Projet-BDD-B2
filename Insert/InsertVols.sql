USE [Projet Trans BDD]
GO

INSERT INTO [dbo].[Vols]
           ([Depart_Theorique]
           ,[Depart_Reel]
           ,[Arrivee_Theorique]
           ,[Arrivee_Reel]
           ,[Pret]
           ,[idTrajet]
           ,[Arrivee_idAeroport]
           ,[idAvion])
     VALUES
           ('12/03/2019 11:00:00'
           ,null
           ,'12/03/2019 13:00:00'
           ,null
           ,1
           ,1
           ,null
           ,3)
GO


