USE [Projet Trans BDD]
GO

INSERT INTO [dbo].[Trajets]
           ([Reference]
           ,[Distance]
           ,[Duree_Moyenne]
           ,[Depart_idAeroport]
           ,[Arrivee_idAeroport])
     VALUES
           ('AXAZHJKDLKKJDI',1200,'02:00:00',1,2),
		   ('UGUTFJKKJJGJHBKJK',200,'02:00:00',2,3),
		   ('JGYTFYFGKGKVJKKKGV',500,'02:00:00',3,4),
		   ('JHHGFHFDZYULKJHGFDV',600,'02:00:00',4,1)
GO


