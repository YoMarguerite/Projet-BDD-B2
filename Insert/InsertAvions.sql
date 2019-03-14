USE [Projet Trans BDD]
GO

INSERT INTO [dbo].[Avion]
           ([Matricule]
           ,[Modele]
           ,[Motorisation]
           ,[Type]
           ,[Passagers]
           ,[Location]
           ,[Etat]
           ,[idAeroport])
     VALUES
		   ('DJFDUKJFKF'
           ,'Airbus 420'
           ,'Motor-RALX20'
           ,'Long Courrier'
           ,200
           ,0
           ,0
		   ,1)
GO

