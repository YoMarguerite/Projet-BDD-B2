USE [Projet Trans BDD]
GO

INSERT INTO [dbo].[Clients]
           ([Nom]
           ,[Prenom]
           ,[Civilite]
           ,[Naissance]
           ,[Passeport]
           ,[Mail]
           ,[Adresse]
           ,[MotDePasse])
     VALUES
           ('Stark'
           ,'Tony'
           ,0
           ,'29/05/1970'
           ,'0fdsjkfkjbsjbfbjs'
           ,'tstark@gmail.com'
           ,'Los Angeles'
           ,'000000000000'),
		   ('Harden'
           ,'James'
           ,0
           ,'29/05/1970'
           ,'0fdsjkfkjbsjbfbjs'
           ,'harden@gmail.com'
           ,'Chicago'
           ,'000000000000'),
		   ('Poulain'
           ,'Sophie'
           ,1
           ,'01/05/2016'
           ,'0fdsjkfkjbsjbfbjs'
           ,'pouline@gmail.com'
           ,'le petit marais'
           ,'000000000000'),
		   ('Anso'
           ,'Sophie'
           ,1
           ,'29/05/2012'
           ,'0fdsjkfkjbsjbfbjs'
           ,'anso@gmail.com'
           ,'Londres'
           ,'000000000000')
GO


